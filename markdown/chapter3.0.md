# Discussion

In order to decipher the emergence of complex traits, the most common approaches that are used today, such as GWAS and eQTL mapping, are not enough by themselves. To be able to find the factors that contribute to complex traits, all layers of regulation must be taken into account in one way or another. However, this in not a trivial task. Firstly, the limitations for the individual data types must be taken into account. Secondly, the data must be integrated in a way that maximises the information we are able to get out, while at the same time minimising the number of false associations.

This thesis has explored some of the strategies that can be used in order to unravel the emergence of complex traits, utilising gene expression data, genotype data, and phenotype data.

## Future perspectives

The future holds much in store when it comes to the analysis of complex traits. With sequencing costs already being low, they will probably get even lower. Furthermore, with new technologies on the way, such as Nanopore sequencing [REF] that enables researchers to obtain even longer reads, enabling them to even more accurately estimate gene expression. With the short-read technologies that dominate the market today, there are a lot of ambiguities when it comes to e.g.\ the expression of splice variants; a problem that has not been solved yet. Splice variants have been shown to have biological significance in xxx [EXAMPLE AND REF]. If the whole mRNA molecule can be sequenced in one go, the expression of each and every splice variant could be determined with a much better accuracy than any of the techniques employed today. However, one should not underestimate the computational challenges that usually follow with new technologies. It might be easy in theory, but just as for short-read sequencing, there will surely be some hurdles to pass on the way.

The association studies that are used today have one huge limitation: these are simply statistical association between a genetic variant and a trait of interest. Due to the non-independence among genetic variance due to linkage disequilibrium, the variant that is associated might not be the causative variant. In order to test this, there is great promise with the newly developed, and very hyped, CRISPR/Cas9 technology [REF]. Briefly, this can be seen as molecular scissors that can cut and paste in the genome with unprecedented accuracy [REF]. With this, it would be possible to test variants on a large scale in order to find the causative variants in genome wide association studies. Old cloning techniques are able to do the same thing, but they are very laborious, and in cases when traits are polygenic, it is not feasible to generate anything more complex than a double mutant.

- CRISPR/Cas9: The possibility to edit the genome in order to track down the causal variants, and also the possibility to verify potential regulatory variants.
	- GWASs are limited. They are simply statistical associations.
	- Gene by gene approaches will not be feasible/possible when a trait is epistatically controlled. This will be possible using CRISPR/Cas9.
	- Another possibility with this is to perfom allele specific changes.
	- There is already software available for designing guide RNAs that are used for the actual genome editing process (?) [@Heigwer2016; @Chari2015; @Heigwer2014; @MacPherson2015; @Montague2014; @Wong2015].
	- Great resource on the history and the possibilities with CRISPR/Cas9 on https://www.addgene.org/crispr/guide/.
- The ultimate goal would be to be able to say that if we change this base from an A to a G, we will modify the regulation of thisnthat and get the exact phenotype that we want.
- With this comes an avalanche of ethical dilemmas.

- Populations and a single reference genome. There is no ground truth. Reference genomes must become more flexible and allow for genetic variants. Today, we see bias in gene expression quantification where reads from RNA-Seq reads are aligned to a reference genome [REF]. If there is a polymorphism in the studied sample that is not present in the reference genome, the expression of that gene will be underestimated [REFS]. Reference allele bias.

- Catch 22 when it comes to small effects. We need large sample sizes in order to detect them, and when we have detected them, we instead have a huge combinatorics problem that we simply cannot solve without any prior information.

- How can these types of studies help understand the emergence of natural variation?
- Talk about the potential for applications for this technology, i.e.\ new tree/crop varieties that can handle climate change; drought, salinity, improved traits
	- With this the mandatory discussion about GMO resistance comes as well. I should say a few words about it, but don't linger on it.

- Mention briefly that the role of epigenetics hasn't been included at all in the thesis, and that this is something that can have a huge impact [@Farh2015].

- These are exciting times that we are living in. On the other hand, looking back at the historical examples in this thesis, I am sure that this sentence has been uttered in each and every one of these. In short, biology is exciting!
