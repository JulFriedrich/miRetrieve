# Update path as necessary
crc_pubmed <- "CRC_PubMed.txt"

# Load PubMed-file
df_crc_pubmed <- read_pubmed(crc_pubmed,
                      topic = "CRC") %>%
    # Keep abstracts of original research articles
    subset_research()

# Filter for abstracts with miR-21
df_crc_21 <- df_crc_pubmed %>%
    extract_mir_df() %>%
    subset_mir("miR-21")

# Subset 250 random miRNAs
df_crc_sampled <- df_crc_pubmed %>%
    extract_mir_df() %>%
    dplyr::slice_sample(n = 250)

# Merge data frames and keep unique rows
df_crc <- rbind(df_crc_21, df_crc_sampled) %>%
    dplyr::distinct()

# Save data
usethis::use_data(df_crc, overwrite = TRUE)
