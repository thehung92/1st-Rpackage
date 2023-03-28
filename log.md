# log of usefull command to initialize the packages

## git repos from a new R package project

```shell
# fast sync
git add .
git commit -am "edit dependencies"
git push


# remove synced file and ignore future sync # this keep the file on local
# echo "*.Rproj" >> .gitignore # add ingore rule for future `git add .`
git rm --cached .Rhistory # only remove from remote
git rm script-git.sh # remove in local too
# git status # to check that the file is removed from the staging area
git commit -m "remove more stuff from remote repos" && git push

# remove R folder and rewrite the package
git rm -f R/*R
```

## devtools, usethis, and testthat function

```R
# the following r code will create a blank file in the R dir
library(devtools)
library(usethis)
library(testthat)
use_testthat() # add testthat to package dependencies
# create MIT license with you as the author # will create a LICENSE file and an .md file
use_mit_license("Hung TT Nguyen")
# add R version 3.6.0 dependency manually
# create blank file for function and test
use_r("ggplot_dual_yaxis")
# create test file for checking the function in separate env
use_test("ggplot_dual_yaxis")
# create dependencies with package you used
usethis::use_package("httr")
# # import specific function # deprecated
# usethis::use_import_from("package", "function1")
# import pipe from magrittr to avoid requirement of R 4.1.0
usethis::use_pipe(export = TRUE)
# create external data with accompanying documentation
usethis::use_data_raw("rbcLseq")
usethis::use_r("data")
# create external data for binary Rdata, data must appear in current env first
usethis::use_data(rbcLres)
# create automatic README file
use_readme_rmd()
## and update the readme file along with the code
devtools::build_readme()
# update version by use_version and automatic commit
usethis::use_version()
```

