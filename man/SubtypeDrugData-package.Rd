\encoding{UTF-8}
\name{SubtypeDrugData-package}
\alias{SubtypeDrugData}
\alias{archdata}
\docType{data}
\title{Data sets for the SubtypeDrug package}
\description{
This package provides subpathway data, drug-subpathway association data and gene expression profile (GEO accession: GSE45827) to support the SubtypeDrug package.
}
\details{
  We used k-clique method in social network analysis to extract the subpathways from KEGG database and eliminated smaller subpathways with more than 80\% overlap of the gene between subpathways that belong to the same pathway. The subpathway data is stored in a list structure (SpwEntrezidList and SpwSymbolList).
  CMap build 02 raw data is downloaded from the CMap website [@lamb2006connectivity]. After normalizing gene expression profiles, differential expression of genes between treatment groups with drugs (distinguish different concentrations of the same drug) and control groups (treatment with dimethyl sulfoxide (DMSO)) is calculated. For each drug and different concentrations of the same drug, the genes are ranked in a ordered list according to their differential expression. The drug subpathway association score is calculated by enriching gene tags of subpathway to the gene ordered list base on Kolmogorov-Smirnov (KS) like statistic. An empirical gene-based permutation test procedure is used to estimate the significance of drug subpathway association score. The greater positive or negative drug subpathway association score of a subpathway indicate that the drug activates or inhibits this subpathway more strongly. According to the above process, each drug has a table which has SubpathwayId, drug subpathway association score (DSAS), and significance P-value as columns. The table of all drugs is stored as a list we term drug subpathway association data set (DrugSpwData).
  This data package also saves breast cancer gene expression profiles and sample phenotype files from the GSE45827 data set of the GEO database.
}
\author{
Xudong Han, Junwei Han and Chonghui Liu\cr
Maintainer: Junwei Han <hanjunwei1981@163.com>\cr
}
\keyword{datasets}
