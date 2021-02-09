# Update path as necessary
crc_pubmed <- "CRC_PubMed.txt"

# Load PubMed-file
df_crc <- read_pubmed(crc_pubmed,
                      topic = "CRC") %>%
    # Keep abstracts of original research articles
    subset_research() %>%
    # Extract miRNA names
    extract_mir_df()

usethis::use_data(df_crc, overwrite = TRUE)
