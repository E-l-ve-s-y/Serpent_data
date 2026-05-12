"""Joblib cache helpers."""

from __future__ import annotations

from pathlib import Path
from typing import Callable

from joblib import Memory

from scripts.serpent_utils import load_config


def get_cache() -> Memory:
    """Return configured joblib memory cache."""
    cfg = load_config()["cache"]
    root = Path(__file__).resolve().parent.parent
    directory = root / cfg["directory"]
    directory.mkdir(parents=True, exist_ok=True)
    return Memory(location=directory, verbose=0)


def cached(func: Callable) -> Callable:
    """Decorator applying repository cache policy."""
    return get_cache().cache(func)
