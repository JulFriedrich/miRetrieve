

stopwords_pubmed <-
    openxlsx::read.xlsx("stopwords.xlsx") %>%
    as_tibble() %>%
    rename(word = 1) %>%
    mutate(lexicon = "miRetrieve")

usethis::use_data(stopwords_pubmed, overwrite = TRUE)
