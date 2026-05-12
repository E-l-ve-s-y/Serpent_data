from pathlib import Path

import pytest

from scripts.extract_data import parse_case


@pytest.fixture
def case_dir(tmp_path: Path) -> Path:
    case = tmp_path / "C011"
    case.mkdir()
    fixtures = Path(__file__).parent / "fixtures"
    (case / "input_dep.m").write_text((fixtures / "sample_dep.m").read_text(), encoding="utf-8")
    (case / "input_res.m").write_text((fixtures / "sample_res.m").read_text(), encoding="utf-8")
    return case


def test_parse_case_reads_conversion_ratio_and_reactivity(case_dir: Path) -> None:
    df, spectra = parse_case("C011", case_dir, include_spectra=False)
    assert not df.empty
    assert spectra.empty
    assert list(df["conversion_ratio"]) == pytest.approx([0.98, 1.01, 1.03])
    expected = (1.05 - 1.0) / 1.05 * 1e5
    assert df.loc[0, "reactivity_pcm"] == pytest.approx(expected)
    assert "Mass_U233_kg" in df.columns


def test_parse_case_handles_missing_conversion_ratio(case_dir: Path) -> None:
    dep = (case_dir / "input_dep.m").read_text(encoding="utf-8")
    dep = dep.replace("CONVERSION_RATIO = [\n 9.80000E-01 0.0\n 1.01000E+00 0.0\n 1.03000E+00 0.0\n];\n\n", "")
    (case_dir / "input_dep.m").write_text(dep, encoding="utf-8")
    df, _ = parse_case("C011", case_dir, include_spectra=False)
    assert df["conversion_ratio"].isna().all()
