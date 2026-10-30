#!/usr/bin/env bash
# 擋住修改 data/ 來源檔（exit 2 = 阻止並把訊息回給 Claude）
f=$(jq -r '.tool_input.file_path // empty')
case "$f" in
  */data/*|data/*) echo "data/ 是唯讀來源檔，請把結果寫到 output/" >&2; exit 2 ;;
esac
exit 0
