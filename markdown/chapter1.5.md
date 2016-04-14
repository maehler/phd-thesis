## Integration of different types of data

From the sections on gene expression and association studies above, we see that it is possible to explain some of the variability in complex traits using these resources directly. The natural follow-up to this is whether we can gain even more from combining these sources of information. Between the genome and the phenotype of interest there are many regulatory steps: genes will be expressed (or not expressed), proteins might be degraded prematurely (or accumulate), and all these things act on each other in a complex network. A single analysis method, e.g.\ GWA, will simply not be able to capture the whole truth. You will get a genomic variant that is associated with your trait of interest, but everything in between will essentially be a black box. By integrating different types of data some more light can be shed on this matter.

Most GWAS variants found so far are located in non-coding regions of the genome, and it is thus hard to assign function to these variants. By combining GWA results with eQTL mapping results, genes can be assigned to these variants, and thus the phenotype, through guilt by association [@Musunuru2010; @Lappalainen2013; @Locke2015]. So far, most studies have focused only on protein coding genes which will result in non-coding GWA variants with no gene association. With RNA-Sequencing as the dominating technology for estimating gene expression together with the encouragement from the community to make data publicly available, there is however the possibility of redoing these studies when annotations of the regulatory genome improve.

To gain even more understanding as to how complex traits emerge, information from even more regulatory layers must be included. One

![Figure showing the different types of associations we have and what we could possibly get from combining these.](figures/placeholder.png){#fig:integration width=100%}

- Using the combination of data from the sections above to try to get an integrated view on how these phenotypes emerge.
- Are we able to explain more by using different types of data that represent different layers of the (hidden) regulatory network.
- The recent functional genomics in yeast special issue might be useful for this section: http://bfg.oxfordjournals.org/content/15/2.toc
- Difficult enough to get high quality information from a single data set. Each data set has their own issues such as confounding factors, and normalisation and dimensionality issues [@Ritchie2015].
