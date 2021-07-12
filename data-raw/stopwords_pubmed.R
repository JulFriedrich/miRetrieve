

stopwords_pubmed <-
    openxlsx::read.xlsx("/Users/Julian/Documents/Jupyter/miRetrieve/miRetrieve/data-raw/stopwords.xlsx") %>%
    as_tibble() %>%
    rename(word = 1) %>%
    mutate(lexicon = "miRetrieve")

# Identify non-ASCII characters - otherwise R might throw an error when
# checking the package with rhub::check_on_windows()

non_ascii_ <- iconv(stopwords_pubmed$word, "UTF-8", "ASCII")

# Get indices WITH ASCII characters

index <- which(!is.na(non_ascii_))

# Subset df to ASCII characters

stopwords_pubmed <- stopwords_pubmed[index, ]

usethis::use_data(stopwords_pubmed, overwrite = TRUE)
