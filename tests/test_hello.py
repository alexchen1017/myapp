import pytest

from hello import greet


def test_greet_returns_greeting():
    assert greet("小明") == "哈囉，小明！"


def test_greet_empty_name_raises():
    with pytest.raises(ValueError):
        greet("")
