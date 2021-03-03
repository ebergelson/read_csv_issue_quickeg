# read_csv_issue_quickeg

realized that using tidyverse's read_csv() --which is generally awesome and preferred over read.csv for my use cases-- you have to really watch out if you have rarely occuring values deep down your sheet bc guess_max() won't find them, and you, er, me, will probably ignore its warnings. 
read.csv() does this right, fwiw

## read_csv_demo.R
* script highlighting the issue with using read_csv() without setting guess_max to something appropriate

## read_csv_issue_demo.csv
* a csv that has said issue (from a research project but all identifying info all stripped away)
