\encoding{UTF-8}
\name{DrugSpwData}
\alias{DrugSpwData}
\docType{data}
\title{drug-subpatway association data}
\description{
 drug-regulated subpathways dataset.
}
\usage{data("DrugSpwData")}
\details{
  The drug-induced transcriptome data in human cancer cell lines was downloaded from the Connectivity Map (CMap build 02). As a drug with different concentration has different therapeutical effects, instances of the same drug treated at the same concentration and its corresponding control were integrated into one data set. In total, 1409 gene expression data sets treated by the drugs with different concentration were established. For each drug-induced gene expression data set, the fold-change (FC) method was used to calculate differentially expressed levels of genes between the drug treatment and the control groups.
   The genes in each subpathway were mapped to the ranked gene list of the drug repectively. We used Gene Set Enrichment Analysis (GSEA) to identify the subpathways regulated by the drug. A subpathway with a greater positive or negative enrichment score (ES) indicates that the drug may activate or inhibit (up- or down-regulate) this subpathway more strongly. An empirical gene-based permutation test procedure was used to estimate the statistically significance (p-value) of the ES of subpathway, which reflects the extent of association between the subpathway and drug. The subpathways with p-value less than a given threshold are deemed as regulated by the drug and further used to identify subtype-specific drugs in the following. The default threshold is 0.05 in the SubtypeDrug package, and the users can select their threshold value as needed.
}
\keyword{datasets}
