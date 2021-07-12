# miRetrieve 1.3.0

* Added miRTarBase 8.0 to miRetrieve. miRTarBase 8.0 can now be queried
with miRetrieve using `join_mirtarbase()`.
If you use miRetrieve to visualize miRNA-mRNA interactions based on miRTarBase, please 
make sure to cite *Hsi-Yuan Huang, Yang-Chi-Dung Lin, Jing Li, et al.,
miRTarBase 2020: updates to the experimentally validated microRNA–target
interaction database, Nucleic Acids Research, Volume 48, Issue D1,
08 January 2020, Pages D148–D154, https://doi.org/10.1093/nar/gkz896.*

* Converts miRNA names of older miRBase versions to the newest miRBase version 22 
when extracted (e.g. miR-97, miR-102, miR-180(a/b) become miR-30a, miR-29a, 
and miR-172(a/b))

* Renamed `read_pubmed_xml()` to `read_pubmed_jats()`

* Added unit tests

# miRetrieve 1.1.0

* Fixed a bug in `read_pubmed()` to adapt the function to the newest 
R version

# miRetrieve 1.0.0

Welcome to miRetrieve! 
miRetrieve is designed for microRNA text mining in abstracts. 
By extracting, counting, and analyzing miRNA names from literature, miRetrieve 
aims at providing biological insights from a large amount of text within a short 
period of time.
