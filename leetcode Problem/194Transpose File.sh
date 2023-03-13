#!/bin/bash
# 194. Transpose File
# https://leetcode.com/problems/transpose-file/description/
awk '
{
    for(i=1; i<=NF ;i++)
    {
        if(NR == 1)
        {
            s[i] =$i;
        }
        else
        {
            s[i] = s[i] " " $i;
        }
    }
}
END{
    for(i=1; s[i] != ""; i++)
    {
        print s[i];
    }
}
' file.txt
