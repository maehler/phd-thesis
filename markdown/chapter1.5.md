## Integration of different types of data

From the sections on gene expression and association studies above, we see that it is possible to explain some of the variability in complex traits using omics resources by themselves.
The natural follow-up question is to ask whether we can gain even more from combining omics data.
Between the genome and the phenotype of interest there are many regulatory steps: genes will be expressed (or not expressed), proteins might be degraded prematurely (or accumulate), and all these effects act on each other in a complex network.
A single analysis method, e.g.\ GWA, will simply not be able to capture the whole truth.
It will generate a genomic variant that is associated with your trait of interest, but everything in between will essentially be a black box.
By integrating different types of data, the black box can be illuminated.
Furthermore, combining data can constrain our search space an thus alleviate some of the problems with computational power and multiple testing discussed previously.
The approach of combining different levels of omics data is known as systems genetics [@Civelek2013],

Most GWAS variants found so far are located in non-coding regions of the genome, and it is thus hard to assign function to these variants.
One approach to annotate these non-coding variants could be to combine GWA with eQTL mapping.
This way genes can be associated with gene expression if genetic variants are shared between the two studies, and phenotypes can consequently be associated with genes through guilt by association [@Musunuru2010; @Lappalainen2013; @Locke2015].
So far, most studies have focused only on protein coding genes leaving non-coding GWA variants without functional annotation.
With RNA-Sequencing as the dominating technology for estimating gene expression together with the encouragement from the community to make data publicly available, it will be possible to revisit these studies as the annotations of the regulatory genome improve.

To gain even more understanding as to how complex traits emerge, information from even more regulatory layers must be included.
This can be done with two main approaches: multi-staged analysis or a meta-dimensional analysis [@Ritchie2015].
The multi-staged analysis is based on using data in a hierarchical manner, e.g.\ identify SNPs that are significantly associated with the phenotype of interest, and associate that subset of SNPs with gene expression levels, i.e.\ eQTL mapping.
In this way, the number of SNPs to consider is significantly decreased compared to a genome-wide eQTL mapping approach.
The expression of the genes associated with genetic variants can then be used to investigate protein expression and perhaps to examine a subset of a protein interaction network in order to obtain a more complete picture of the emergence of phenotypes.
In a meta-dimensional analysis, data from different layers are combined into a simultaneous analysis in order to consider multiple relationships at the same time, as opposed to the multi-staged analysis approach.
For an in-depth review of data integration see [@Ritchie2015].

![The different types of regulatory layers and how they can interact in order to give rise to complex traits.
Genetic information is transferred to downstream layers through transcription into RNA.
This in turn is translated into protein.
Proteins then act together in order to produce and modify metabolites, as well as interacting with RNA and the DNA to regulate transcription.
All this, together with environmental factors, give rise to phenotypes; some more complex than others.](figures/data_integration.pdf){#fig:integration width=100%}

In @sec:complexity, we mention that it is not feasible to do an exhaustive search for combinatorial effects.
This problem could get even worse when including more data, but at the same time, more data can also help mitigate these issues.
By layering the different types of data, things that most likely do not have an effect on the phenotype of interest can be excluded.
By systematically integrating different types of data, the search space can be limited drastically, and ultimately it could actually be feasible to perform an exhaustive search of this reduced space.

The dimensionality of individual data sets can also be reduced in many cases.
For example, if there are SNPs in the genome that are inherited together (i.e.\ in LD), including all SNPs in such a region will not provide any additional information, but rather take away statistical power due to an increased multiple testing burden.
If only one SNP is used as a representative for a linkage block, it is important to remember that this might very well not be the causal SNP. Again, integration of other data types such as transcription factor binding information might be used to select the likely causal SNP.
