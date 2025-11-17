
if ( requireNamespace("tinytest", quietly = TRUE) ){
  # To skip running the tests on CRAN make them run only on the developer version 
  home <- length(unclass(packageVersion("StealLikeBayes"))[[1]]) == 4
  tinytest::test_package("StealLikeBayes", at_home = home)
}
