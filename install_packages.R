#install packages

if("data.table" %in% rownames(installed.packages()) == FALSE) 
{
  install.packages("data.table")
}

if("dplyr" %in% rownames(installed.packages()) == FALSE) 
{
  install.packages("dplyr")
}