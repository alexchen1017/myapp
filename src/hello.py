"""簡單的問候工具。"""


def greet(name: str) -> str:
    """回傳「哈囉，<name>！」；name 為空字串時丟出 ValueError。"""
    if not name:
        raise ValueError("name 不得為空字串")
    return f"哈囉，{name}！"
