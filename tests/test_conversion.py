import pandas as pd
import pytest

from scripts.analysis.conversion import calculate_cr_average, identify_crossover_burnup


def test_identify_crossover_burnup_interpolates() -> None:
    df = pd.DataFrame(
        {
            "burnup_GWd_tHM": [0.1, 0.4, 0.7],
            "conversion_ratio": [0.98, 1.01, 1.03],
        }
    )
    crossover = identify_crossover_burnup(df, target=1.0)
    assert crossover == pytest.approx(0.3)


def test_calculate_cr_average_range() -> None:
    df = pd.DataFrame(
        {
            "burnup_GWd_tHM": [0.1, 1.0, 5.0],
            "conversion_ratio": [0.9, 1.0, 1.1],
        }
    )
    assert calculate_cr_average(df, burnup_range=(0, 1.0)) == pytest.approx(0.95)
