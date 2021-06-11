# Update path as necessary
diabetes_pubmed <- "miRNA_diabetes_abstracts.txt"

# Load PubMed-file
df_diabetes_pubmed <- read_pubmed(diabetes_pubmed,
                      topic = "Diabetes") %>%
    # Keep abstracts of original research articles
    subset_research() %>%
    # Extract miRNA names
    extract_mir_df()

# Subset for miR-34
df_diabetes_34 <- df_diabetes_pubmed %>%
    subset_mir("miR-34")

# Sample 250 rows
df_diabetes_sample <- df_diabetes %>%
    dplyr::slice_sample(n = 250)

# Combine data frames and pick unique rows
df_diabetes <- rbind(df_diabetes_34, df_diabetes_sample) %>%
    dplyr::distinct()

usethis::use_data(df_diabetes, overwrite = TRUE)
