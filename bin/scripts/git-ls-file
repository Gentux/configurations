#!/bin/sh
temp="${TMPDIR:-/tmp}/@@@commit-at@@@$$"
trap "rm '$temp'" 0 1 2 3 15
git log --pretty=format:"%H%x09%at" --topo-order --reverse "$@" >"$temp"
cut -f1 "$temp" \
| git diff-tree -r --root --name-status --stdin \
| awk '
        BEGIN {FS="\t"; OFS="\t"}
        FNR==1{++f}
        f==1  {at[$1]=$2; next}
        NF==1 {commit=$1; next}
        $1=="D"{$1=""; delete last[$0]; next} # comment to also show deleted files
              {did=$1;$1=""; last[$0]=at[commit]"\t"did}
        END   {for (f in last) print last[f]f}
 ' "$temp" - \
| sort -t"`printf '\t'`" -k3
