library(tidyverse)
no_bueno <-  read_csv("~/Desktop/github/read_csv_issue_quickeg/read_csv_issue_demo.csv")# change your path, obvi
# Warning: 7630 parsing failures.
# row            col           expected actual                                file
# 28886 part_of_speech 1/0/T/F/TRUE/FALSE animal '~/Desktop/read_csv_issue_demo.csv'
# 28887 part_of_speech 1/0/T/F/TRUE/FALSE animal '~/Desktop/read_csv_issue_demo.csv'
# 28888 part_of_speech 1/0/T/F/TRUE/FALSE animal '~/Desktop/read_csv_issue_demo.csv'
# 28889 part_of_speech 1/0/T/F/TRUE/FALSE animal '~/Desktop/read_csv_issue_demo.csv'
# 28890 part_of_speech 1/0/T/F/TRUE/FALSE animal '~/Desktop/read_csv_issue_demo.csv'
# ..... .............. .................. ...... ...................................
# See problems(...) for more details.
unique(no_bueno$part_of_speech)
#[1] NA

bueno <- read_csv("~/Desktop/github/read_csv_issue_quickeg/read_csv_issue_demo.csv", guess_max = 50000)# ibid
unique(bueno$part_of_speech)
#[1] NA           "animal"     "food"       "beverage"   "object"     "outside"    "action"     "descriptor"

bueno2 <-  read.csv("~/Desktop/github/read_csv_issue_quickeg/read_csv_issue_demo.csv")

unique(bueno2$part_of_speech)