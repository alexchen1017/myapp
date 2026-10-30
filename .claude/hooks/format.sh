#!/usr/bin/env bash
# 每次改完 Python 或 R 檔自動排版
f=$(jq -r '.tool_input.file_path // empty')
case "$f" in
  *.py) ruff format "$f" >/dev/null 2>&1 ;;
  *.R)  Rscript -e "styler::style_file('$f')" >/dev/null 2>&1 ;;
esac
exit 0
