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

![Simple schematic of the principles of association studies (GWAS, eQTL mapping) in a diploid organism.](figures/placeholder.png){#fig:genetic-association width=100%}

### eQTL mapping

Expression quantitative trait locus (eQTL) mapping is related to the traditional GWAS in the previous section, but the phenotypes here are of the more abstract kind; something you cannot observe directly, namely gene expression. Also, the problems of GWAS get even bigger for this type of association study since not only do we have a large number of genetic variants, we also have a large number of phenotypes. The phenotypes in this case is gene expression. If we are to consider the expression of every gene in the genome together with all the genetic variants in the genome we get, for humans, approximately xxx tests have to be performed. Not only does this results in a multiple testing problem, but it also causes purely computational problems. Fifteen years ago, this problem was \textcolor{red}{infeasible to tackle}, but with the increase in computational power coupled with clever methods [@Shabalin2012] this is now relatively easy to do.

Traditionally, QTL mapping can divided into two categories: linkage mapping and association mapping. Linkage mapping is usually used when family information is available, such as in a controlled cross, and relies on known markers. By performing a cross and observing how genetic markers associate with changes in the trait of interest. This is not something that has been done during the projects associated with this thesis, due to a couple of reasons. Firstly, dealing with natural populations of plants typically means that you do not have family information, and secondly, known genetic markers are few and far between in species such as aspen. This is where association mapping, or linkage disequilibrium mapping, comes into the picture. This method is related to GWA in that a large number of genetic markers (typically SNPs) are associated to a phenotype; the phenotype in this case being gene expression levels.

eQTLs are said to act either in *cis* or in *trans*, with *cis*-eQTLs acting directly on gene expression while *trans*-eQTL act indirectly on the associated gene. An example of a *cis* mechanism could be a variant that affects the affinity for transcription factor binding to the promoter of a gene, while a *trans* effect could be something so subtle as affecting the abundance of a certain co-factor that is needed to express the associated gene. From these simple examples it is quite clear that *trans* effects are more subtle than *cis* effects, and this is something that has been observed time and time again [REFS]. In fact, most studies in human only consider *cis* acting variants, or rather, they assume that variants that are in the vicinity of the gene they are acting on are acting in *cis* [REFS]. The case is often that *cis* acting variants are local to the associated gene while *trans* effects are more distant. The decision to use only *cis* acting variants make the computational problem a bit easier since fewer tests have to be performed, and consequently, the multiple testing problem becomes slightly less of a problem since the number of markers considered for each gene is much smaller than the total number of markers in the genome.

Studies of regulatory variation have shown that...

#### Biology gets complicated quickly

As have been stated multiple times already in this thesis, complex traits are the result of the interaction of many genes and regulatory mechanisms. One way you can think of this is as a buffering effect [REF]. If a trait is complex, i.e.\ controlled by a large number of genes, then it will not be possible to modify this trait in a drastic way with a single mutation. \marginnote{This statement is a bit sketchy since I don't know if it is 100\% true. I must look into this more carefully.}Likewise, if a disease is complex, this disease most likely is rare since it is a result of many mutations spread out through the genome [REFS AND EXAMPLES].

In the case of eQTLs, the complexity can also be hidden from the conventional analysis methods. If we assume that genes that are central in a co-expression network are important, i.e.\ they have a central role in making the organism function, for example genes involved in the cell cycle, they are likely to be controlled by many eQTLs to offer buffering of the regulation of these genes.

I a way, you could think that simplicity would be bad for biology in general. If something is easy to construct, then it would be reasonable to believe that if a piece is missing the construction would then fall apart. If the process of constructing something instead is difficult, and requires a lot of small pieces, each individual piece are not that important. You can take away a few of them without impacting the outcome in a drastic way. Some parts might be more crucial than others, but on average, each single component will have a relatively small impact on the end result. Turning back to the eQTLs, this large amount of small-effect components will then be difficult to detect because of due to the small effect. In order to detect such a component, the sample size has to be huge; for human height, more than 250,000 samples were used.

- Talk about how multiple causal variants contribute to the expression of a gene with small effect and effectively obscure that the expression is genetically controlled.
- Torgeir's example of multiple eQTLs that hide the underlying mechanisms.
- Ok, so central genes have many small-effect components regulating their expression. What came first? The small-effect components or the centralness of the gene? The probably came at the same time.
