#!/usr/bin/env Rscript
library(devtools)
library(roxygen2)
# load lib
load_all(".")
# unload lib
detach("package:SCCTempConverter", unload=TRUE)
# make help file
roxygenise()
devtools::document()
# making binary data available
x <- c(1:10)
usethis::use_data(x)
# making raw data available
# mkdir -p inst/extdata/
data("iris")
data.table::fwrite(iris, file="inst/extdata/raw-1.tsv", quote=FALSE, sep="\t")
