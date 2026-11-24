#!/bin/bash
# SPDX-FileCopyrightText: 2026 Masaharu Watanabe
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "$1行目のテスト失敗" >&2
    res=1
}

res=0

# NORMAL INPUT
out=$(printf "ドライブ\n勉強\nドライブ\n" | ./wordfind ドライブ)
[ "$out" = "$(printf "1\n3")" ] || ng "$LINENO"

# NO MATCH
out=$(printf "勉強\n読書\n" | ./wordfind ドライブ)
[ "$out" = "" ] || ng "$LINENO"

# EMPTY INPUT
out=$(printf "" | ./wordfind ドライブ)
[ "$out" = "" ] || ng "$LINENO"

# NO ARGUMENT
./wordfind < /dev/null > /dev/null 2>&1
[ "$?" = 1 ] || ng "$LINENO"

# MULTIPLE ARGUMENTS
./wordfind ドライブ 勉強 < /dev/null > /dev/null 2>&1
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"


