# Update path as necessary
test_pubmed <- "/Users/Julian/Documents/Jupyter/miRetrieve/miRetrieve/tests/testthat/pubmed_test.txt"

df_test <- read_pubmed(test_pubmed)

# R thre an error when using certain rows of df_test as these included
# non-ASCII characters; this is a try to reduce the table to
# ASCII characters only
index_ascii <- c(2, 4, 6, 7, 8, 10, 13, 15, 17, 19, 20)

df_test <- df_test[index_ascii, ]


# Save data
usethis::use_data(df_test, overwrite = TRUE)
