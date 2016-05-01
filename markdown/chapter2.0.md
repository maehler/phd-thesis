# Paper summaries

This chapter will give a short summary of each paper included in the thesis.
Paper I deals with gene regulation in a cyanobacterium, while papers II--IV considers aspects of gene expression, genotype, and phenotype in the deciduous tree *Populus tremula* (European aspen).

## Paper I --- Gene regulation in a cyanobacterium

*Synechocystis* is a fresh water cyanobacterium and it is one of the most studied cyanobacteria to date, being used as a model system for nitrogen fixation and photosynthesis amongst other things.
Even though the genome of *Synechocystis* was sequenced already in 1996, most of the genes in its genome are still annotated as having unknown function.
In this paper, we created the web application *Syn*ergy to enable researchers working with *Synechocystis* to explore the gene expression and the gene regulation of this organism *in silico* in order to find potential candidate genes for e.g.\ knock-out experiments.
We collected 371 microarray experiments from public sources and constructed a co-expression network.
As mentioned in @sec:coexpression, a co-expression network is simply a manifestation of the underlying regulatory network, so in order to form a link between co-expression and co-regulation, potential regulatory motifs were identified using phylogenetic footprinting.
This method is based on the alignment of regulatory regions of orthologous genes from related organisms.
In this case, 22 genomes from the Chroococcales taxon were used for the phylogenetic footprinting, and this resulted in a set of 4,977 potential regulatory motifs.
In the paper we show that co-expression network neighbourhoods of regulatory proteins were enriched for regulatory motifs, thus providing a possible regulatory link between these regulators and the co-expressed genes.
The user of the web application can then investigate whether their gene set of interest is co-expressed, and whether this to some extent can be explained by shared regulatory motifs.
In order to make the application as useful as possible, the gene identifiers used were the well established identifiers from CyanoBase (\url{http://genome.microbedb.jp/cyanobase/}; @Nakao:2010bo).

As part of a sanity check of the integrated data, a couple of case studies were conducted where both previously published results were confirmed, and also potentially novel regulatory relationships were presented.

*Syn*ergy is publicly available at \url{http://synergy.plantgenie.org}.

## Paper II --- Two-class phenotype prediction

The majority of angiosperms are monoecious or hermaphroditic, i.e.\ each individual has both male and female flowers, or the flowers have both male and female organs, respectively.
This is not the case for about 4% of flowering plants, including the genus *Populus*, which is dioecious (with a few exceptions).
It is thought that the formation of a dioecious species evolved from hermaphrodites and thus have not yet evolved distinct sex chromosomes, as is the case in mammals.
When the sexes are separated, constraints on the phenotype are released as the individual sexes adapt to a new fitness optimum, and this would then give rise to sexual dimorphism, i.e.\ phenotypic differences between the sexes.
Previous studies in *Populus* species have shown that there is likely a sex determining region on chromosome 19, but so far no study has looked at global phenotype and gene expression patterns to look for sexual dimorphism.

In paper II we show that there are no significant phenotypic differences in a range of phenotypes in *Populus tremula*.
The phenotypes included different biomass traits such as height and diameter, and also a range of secondary metabolites involved in herbivore defence.
In addition to the more classical phenotypes, differences in gene expression were investigated by identifying differentially expressed genes. In addition, we also attempted to classify samples as male or female with a support vector machine (SVM) trained on genes inside sliding windows across the genome.
The rationale behind the sliding window approach comes from the fact that there is a consensus that there is a sex determining locus.
This locus might contain more than one gene, and individual genes might not be able to fully explain the sex division.
However, in this case the SVM analysis did not result in any gene combinations that could predict sex any better than single genes.
Only two individual genes were found to be significantly differentially expressed between the sexes, and one of those was located in a region previously linked to sex determination.
As reported by [@Pakull2015], and independently discovered by us, part of this gene is deleted in females and thus gives rise to the difference in expression between sexes.

## Paper III --- Genetic basis of gene expression variation

Natural variation is perhaps the most important aspect of biology; without variation there would be no evolution.
Some of the observed variability can be explained by environmental factors while some can be explained by genetic factors.
In paper III we take a closer look at the natural variation in gene expression in *Populus tremula* by performing eQTL mapping and constructing a co-expression network from gene expression data from a natural population of *P.
tremula* spanning the distribution range of this species in Sweden.
In total, RNA-Sequencing and DNA-Sequencing data from 81 distinct genotypes were used for the study.

One of the main goals of this study was to see whether eQTLs could explain the structure of the co-expression network.
Since the data originates from natural populations of unrelated individuals, the pairwise gene expression correlations were low, but we were still able to identify distinct co-expression modules.
Genes whose expression was associated with genetic variants (eGenes) were less central in the co-expression network than what would be expected by chance, and there was also a negative relationship between the centrality of eGenes and the eQTL effect size.
A general hypothesis when it comes to biological networks is that central genes are critical for the organism to function correctly, and that disruptions to these genes could have a negative impact on fitness.
We hypothesise that these central genes have more regulatory redundancy than genes that are peripheral in the network.
The regulation is governed by many small-effect eQTLs that in concert offers genetic buffering of the regulation of these genes.
Due to a relatively small population size, we are not able to detect these small effect size eQTLs, and a given, but practically difficult, follow-up would be to collect more data in order to test this hypothesis.

## Paper IV --- Leaf shape GWAS and data integration

In contrast to paper II and paper III where a one-gene-at-a-time (or at most, pairs of genes) approach was followed, paper IV puts more emphasis on the complexity of leaf traits as they emerge from the interaction of many genes.
Previous studies of leaf shape has shown that it serves as a good proxy for historical temperature [@Royer2005], and that leaf shape also is highly polygeneic [@Tian2011].
