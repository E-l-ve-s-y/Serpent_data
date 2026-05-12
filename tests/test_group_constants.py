from pathlib import Path

from scripts.extract_group_constants import parse_case_group_constants


def test_parse_group_constants(tmp_path: Path) -> None:
    case = tmp_path / "C011"
    case.mkdir(exist_ok=True)
    fixtures = Path(__file__).parent / "fixtures"
    (case / "input_dep.m").write_text((fixtures / "sample_dep.m").read_text(), encoding="utf-8")
    (case / "input_coef.m").write_text((fixtures / "sample_coef.m").read_text(), encoding="utf-8")

    df = parse_case_group_constants("C011", case)
    assert not df.empty
    assert {"INF_FLX", "INF_DIFFCOE", "INF_ABS", "INF_FISS", "INF_NSF"}.issubset(df.columns)
    assert sorted(df["group"].unique().tolist()) == [1, 2]


def test_parse_group_constants_missing_source_returns_empty(tmp_path: Path) -> None:
    case = tmp_path / "C099"
    case.mkdir(exist_ok=True)
    fixtures = Path(__file__).parent / "fixtures"
    (case / "input_dep.m").write_text((fixtures / "sample_dep.m").read_text(), encoding="utf-8")
    df = parse_case_group_constants("C099", case)
    assert df.empty
