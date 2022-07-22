#!/usr/bin/env Rscript
#
#devtools::install_github("thehung92/miscRpackage")
#
#library(ggplot2)
library(miscRpackage)
#
df <- data.frame(dose=c("D0.5", "D1", "D2"), len=c(4.2, 10, 29.5))
p <- ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity")
p + theme_misc()
