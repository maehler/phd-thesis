## Association studies

Association studies, in this context, refers to the association of genetic variants with a phenotype of interest. This phenotype can range from very clear ones, such as human height, to more abstract phenotypes, such as gene expression. In the following sub-sections I will present the concept of association studies and what we have learned from those so far.

### Genome-wide association

I dare to bet that most people have come into contact with genome wide association studies (GWAS) at one time or another. Whenever you see headlines in the news such as "the obesity gene has been found", it is likely that the underlying study is a GWA study. It is also likely that the sensational headline is not quite true. What researchers have done in cases like this is to collect populations of individuals; those that have the phenotype of interest, such as a disease, and another population of healthy people. The genomes of these individuals are then sequenced or otherwise assayed for genetic variants and the researchers then ask themselves: can we identify variants that can be used to tell the difference between healthy and diseased individuals?

This is usually performed using relatively simple regression models where the disease status or the quantitative phenotype acts as the response variable and the genetic variants as the explanatory variable. It is not hard to imagine that this can potentially results in a huge number of tests. In humans, for example, we expect to find xxx SNPs per xxx bases in the genome [REF], and this would result in xxx tests if one were to test the association to the phenotype of interest for each and every genetic variant. This has a few consequences, but mainly it

For example, in the study of human height mentioned previously, more than 250,000 individuals were included in the study [@Wood2014], and a meta-analysis of almost the same magnitude was performed to find a genetic explanation to body mass index [@Speliotes2010], and in both cases the phenotypic variance explained by individual variants was very low (below 1%).

- Regression models: This part of the thesis should include regression models since it is a central analysis method for association studies.
- In order to connect genotypic variation with phenotypic variation.
- Some words on linkage and causal variants?
- GWAS: here there have been a lot of work done. See if there is something suitable in plants that I can refer to.
- Some words on statistical power.
- Common disease---common variant hypothesis
- Infinitesimal model
	- Diseases are caused by a large number of variants with small effect.
- Some words on sample sizes and small effects: how do you avoid picking up spurious associations?

### eQTL mapping

Expression quantitative trait locus (eQTL) mapping is related to the traditional GWAS in the previous section, but the phenotypes here are of the more abstract kind; something you cannot observe directly, namely gene expression. Also, the problems of GWAS get even bigger for this type of association study since not only do we have a large number of genetic variants, we also have a large number of phenotypes. The phenotypes in this case is gene expression. If we are to consider the expression of every gene in the genome together with all the genetic variants in the genome we get, for humans, approximately xxx tests have to be performed. Not only does this results in a multiple testing problem, but it also causes purely computational problems. Fifteen years ago, this problem was \textcolor{red}{infeasible to tackle}, but with the increase in computational power coupled with clever methods [@Shabalin2012] this is now relatively easy to do.

Traditionally, QTL mapping can divided into two categories: linkage mapping and association mapping. Linkage mapping is usually used when family information is available, such as in a controlled cross, and relies on known markers. By performing a cross and observing how genetic markers associate with changes in the trait of interest. This is not something that has been done during the projects associated with this thesis, due to a couple of reasons. Firstly, dealing with natural populations of plants typically means that you do not have family information, and secondly, known genetic markers are few and far between in species such as aspen. This is where association mapping, or linkage disequilibrium mapping, comes into the picture. This method is related to GWA in that a large number of genetic markers (typically SNPs) are associated to a phenotype; the phenotype in this case being gene expression levels.

![Nice figure explaining the concept of eQTLs/QTLs in a diploid organism.](figures/placeholder.png){#fig:eqtl width=100%}

eQTLs are said to act either in *cis* or in *trans*, with *cis*-eQTLs acting directly on gene expression while *trans*-eQTL act indirectly on the associated gene. An example of a *cis* mechanism could be a variant that affects the affinity for transcription factor binding to the promoter of a gene, while a *trans* effect could be something so subtle as affecting the abundance of a certain co-factor that is needed to express the associated gene. From these simple examples it is quite clear that *trans* effects are more subtle than *cis* effects, and this is something that has been observed time and time again [REFS]. In fact, most studies in human only consider *cis* acting variants, or rather, they assume that variants that are in the vicinity of the gene they are acting on are acting in *cis* [REFS]. The case is often that *cis* acting variants are local to the associated gene while *trans* effects are more distant. The decision to use only *cis* acting variants make the computational problem a bit easier since fewer tests have to be performed, and consequently, the multiple testing problem becomes slightly less of a problem since the number of markers considered for each gene is much smaller than the total number of markers in the genome.

Studies of regulatory variation have shown that...

#### Biology gets complicated quickly

- Talk about how multiple causal variants contribute to the expression of a gene with small effect and effectively obscure that the expression is genetically controlled.
- Torgeir's example of multiple eQTLs that hide the underlying mechanisms.

### Limitations {#sec:limitations}

- Limited range of populations, e.g. we look at Sweden, which is only a small part of the global aspen population.
- Gene expression and phenotypic sampling is limited to the moment that you sample. The half-life of mRNA is relatively short, and it varies throughout the year, and even throughout the day. If you sample at the wrong time, you might miss the signals that are of significant for the particular trait you are interested in.
- Rare variants and information content
- Low effect variants: how many samples do you need? Human height study with 200k samples.
