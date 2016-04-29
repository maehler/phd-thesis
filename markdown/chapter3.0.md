# Discussion

In order to decipher the emergence of complex traits, the most common approaches that are used today, such as GWAS and eQTL mapping, are not enough by themselves.
To be able to find the factors that contribute to complex traits, all layers of regulation must be taken into account in one way or another.
However, this is not a trivial task.
Firstly, the limitations for the individual data types must be taken into account.
Secondly, the data must be integrated in a way that maximises the information we are able to get out, while at the same time minimising the number of false associations.

This thesis has explored some of the strategies that can be used in order to unravel the emergence of complex traits, utilising gene expression data, genotype data, and phenotype data.
In doing this we have seen the potential in integrating data from different sources in order to get a more complete picture of gene regulation and the emergence of phenotypes, but we have also seen that there is a long way ahead of us.
In no way have we exhausted the possibilities with the data we have worked with.

## Future perspectives

The future holds much in store when it comes to the analysis of complex traits.
With sequencing costs already being low, they will probably get even lower.
Furthermore, new technologies, such as nanopore sequencing [@Schneider2012] that enables sequencing of longer reads, will enable even more accurate quantification of gene expression and identification of genetic variation.
With the short-read technologies that dominate the market today, there are a lot of ambiguities when it comes to e.g.\ the expression of splice variants
and allele-specific expression; problems that have yet to be solved.
Disruption of splicing has been associated with several human diseases [@Tazi2009], and may play an important role in environmental adaptation in plants [@Staiger2013].
If the whole mRNA molecule can be sequenced in one go, the expression of each and every splice variant could be determined with much better accuracy than any of the techniques employed today.
However, one should not underestimate the computational challenges that usually follow with new technologies.
It might be easy in theory, but just as for short-read sequencing, there will surely be some hurdles to pass on the way.

When it comes to sequencing, a high quality reference genome is a vital component in order to map genetic variation or quantify gene expression.
Up until today, reference genomes are simply a long string of characters effectively representing a single haplotype in a single individual.
Projects such as the 1000 genomes project [@Auton2015] make it possible to deviate from this path and construct reference genomes that not only represents a consensus genome sequence, but that also represent the variation present in populations of individuals.
There have been several studies to date reporting reference allele bias in RNA-Sequencing data, i.e.\ reads originating from the reference allele will map more confidently to the reference genome compared to a read originating from an allele that contains polymorphisms relative to the reference [@Degner2009; @Stevenson2013; @Panousis2014].
This could be alleviated by having a reference genome format that represents known variation together with compatible software.
The latest release of the human reference genome (GRCh38) is a step in this direction with alternative loci available for selected parts of the genome that are too complex to be represented by a single sequence.
In order to include all known genetic variation from e.g.\ the 1000 Genomes Project a number of associated challenges must be overcome, and this is something that likely will move forward slowly.

The association studies that are used today have one very obvious limitation: these are simply statistical association between a genetic variant and a trait of interest.
Due to the lack of independence among genetic variance stemming from linkage disequilibrium, the variant that is associated to the trait of interest might not be the causative variant.
Testing this could be accomplished using the relatively new and much hyped CRISPR/Cas9 technology [@Jinek2012].
Briefly, this can be seen as molecular scissors and glue that can cut and paste in the genome in order to insert, change, or delete parts of the DNA.
With this, it would be possible to test the phenotypic effect of variants on a large scale in order to find the causative variants in genome wide association studies.
Old cloning techniques are able to do the same thing, but they are very laborious, and in cases when traits are polygenic, it is often not feasible to generate anything more complex than a double mutant.
With CRISPR/Cas9 it is possible to test several variants at the same time using a multiplex strategy, i.e.\ targeting multiple loci in a single experiment [@Cong2013], which would be a direct requirement in order to verify multiple causal variants underlying complex traits.
Furthermore, it is possible to perform allele specific modifications, where a point mutation is introduced in one allele while leaving the rest of the genetic background the same [@Smith2014].
This technology is still very young, but owing to the great impact it has had on the scientific community, a wide range of publicly available tools have been developed in order to aid the community in designing CRISPR/Cas9 experiments [@Heigwer2016; @Chari2015; @Heigwer2014; @MacPherson2015; @Montague2014; @Wong2015], making this a far more accessible alternative compared to similar technologies of a more proprietary nature [@Bortesi2015].

One aspect that has not been taken into account at all in this thesis is the effect of epigenetics.
In [@sec:regulation-of-gene-expression], it is mentioned that there are a number of factors that are required in order for RNA to be transcribed from DNA.
One additional factor is epigenetics, i.e.\ modifications "on top of" the DNA that does not change the actual DNA sequence but still affect regulation.
One example of an epigenetic modification is methylation which is the addition of a methyl group to the DNA backbone.
If this methylation occurs in a transcription factor binding site, it can block the binding of the transcription factor and consequently repress the expression of the gene [@Varley2013].
Since most of the significant variants that are identified in GWAS are located in intergenic regions, not much information is provided initially by the GWA alone.
Integrating these kinds of results with epigenetic data can contribute to a better understanding of regulatory mechanisms that connect genomic variation and higher order phenotypes [@Farh2015].

In the end, these methods and technologies should be used in order to improve the situation for people and the environment.
With climate change being a very real and imminent threat to the future of our species, we will need to develop improved crop varieties that are able to grow in environments that would normally be too harsh for the crop varieties of today.
Most stress related traits are complex, and breeding strategies used are basically just trial-and-error in order to randomly identify something that will be ever so slightly more tolerant to e.g.\ drought.
If researchers instead are able to, with these new technologies, dissect the genetic background of these complex traits, new crop varieties could be generated much more rapidly with e.g.\ marker assisted selection or by simply modifying the genome using something like CRISPR/Cas9.
The ultimate goal would be to some day be able to pinpoint causal variants and be able to say that "if we change this from a C to a T we will get 5% higher yield in arid conditions".
This scenario is probably quite far away at the moment, and given the complexity of biology, it is not even certain that we will get there---but at least we will not be bored.
