#  193. Valid Phone Numbers
#  https://leetcode.com/problems/valid-phone-numbers/description/
 sed -n '/^\([[:digit:]]\{3\}-\|([[:digit:]]\{3\}) \)[[:digit:]]\{3\}-[[:digit:]]\{4\}$/p' file.txt #optmized one
 
 grep -Po '^(\(\d{3}\) |\d{3}-)\d{3}-\d{4}$' file.txt
#-P Perl Compatible Regular Expressions (PCRE) is a regular expression library that provides a powerful and flexible set of pattern-matching tools for text processing.
