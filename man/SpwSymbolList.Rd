\name{SpwSymbolList}
\alias{SpwSymbolList}
\docType{data}
\title{List of subpathways consisting of gene symbol}
\description{
  The subpathway data was extracted from canonical pathways of the KEGG database, and the genes contained in the subpathways are composed of gene symbol.
}
\usage{data("SpwSymbolList")}
\details{
We downloaded all pathways from the KEGG database in XML format.For each KEGG pathway map, we converted each pathway into a gene-gene network with genes as nodes and bilological relationships as edges. As metabolic and non-metabolic pathways are different in pathway structure, we used the different strategies to extract the biological relationships among genes from them. For metabolic pathways, two genes (enzymes) are connected by an edge if there is a common compound in their corresponding reaction. For non-metabolic pathways, two genes are connected by an edge if they have a relationship (such as interaction, binding or modification, etc.) indicated in the relation element of the XML file (https://www.kegg.jp/kegg/xml/docs/).  Thus, each pathway was converted to an undirected graph with genes as nodes and biological relation as edges.
 We used the k-clique algorithm in SubpathwayMiner package to detect the subpathways, in which the distance between any two nodes is no greater than k (The default parameter k of the method was used in the study) and eliminated smaller subpathways with more than 80\% overlap between subpathways that belong to the same pathway. The subpathway data is stored in a list structure.
}
\examples{
data(SpwSymbolList)
SpwSymbolList
str(SpwSymbolList[1:3])
}
\keyword{datasets}
