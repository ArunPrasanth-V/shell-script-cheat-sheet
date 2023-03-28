cat number.txt | awk 'NR>1 && $2 <= prev_num {print prev_line; print} {prev_num=$2; prev_line=$0}'
