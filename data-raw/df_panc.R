# Path to PubMed-file
panc_pubmed <- "Pancreas_PubMed.txt"

# Load PubMed-file
df_panc <- read_pubmed(panc_pubmed,
                       topic = "Pancreas") %>%
    # Keep original research articles
    subset_research() %>%
    # Extract miRNA names
    extract_mir_df()

usethis::use_data(df_panc, overwrite = TRUE)
