# Update path as necessary
test_pubmed <- "pubmed_test.txt"

df_test <- read_pubmed(test_pubmed)

# Save data
usethis::use_data(df_test, overwrite = TRUE)
