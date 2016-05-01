## Association studies

Association studies, in this context, refers to the association of genetic variants with a phenotype of interest.
This phenotype can range from very clear ones, such as human height, to more abstract phenotypes, such as gene expression.
In the following sub-sections I will present the concept of association studies and what we have learned from those so far.

### Genome-wide association

I dare to bet that most people have come into contact with genome wide association studies (GWAS) at one time or another.
Whenever you see headlines in the news such as "the obesity gene has been found", it is likely that the underlying study is a GWA study.
It is also likely that the sensational headline is not quite true.
What researchers have done in cases like this is to collect populations of individuals; those that have the phenotype of interest, such as a disease, and another population of healthy people.
The genomes of these individuals are then sequenced or otherwise assayed for genetic variants and the researchers then ask themselves: can we identify variants that can be used to predict if an individual will be healthy or diseased?

Prediction is usually performed by way of relatively simple linear regression models where the disease status or the quantitative phenotype acts as the response variable and the genetic variant as the explanatory variable ([@fig:genetic-association]).
A straight line is then fitted to the data and represents the predicted trait value for a given genotype ([@fig:genetic-association]).
These types of linear models assume that there is an additive effect, i.e.\ the contribution of an allele adds up to explain the phenotype.
In [@fig:genetic-association], this is shown by the G allele adding to the trait value in a way that two copies of the G allele has twice the effect compared to having one copy of the G allele, in relation to having no G alleles.
It is not hard to imagine that GWA studies often require a huge number of tests.
In humans, for example, we expect to find one SNP every 1.9 kilobases in the genome [@Sachidanandam2001], and this would result in more than 1.5 million tests if one were to test the association to the phenotype of interest for each and every genetic variant.
This has a few consequences, but mainly it requires computational power that has only become widely available quite recently.
More importantly, the multiple testing burden of GWA studies often becomes quite heavy.

Multiple hypothesis testing is a statistical problem stemming from the fact that we expect to see random associations when performing a large number of tests.
In the case of GWA in humans, suppose that we are associating 1.5 million variants with a particular phenotype.
Applying the commonly used p-value threshold of 0.05 means that we would expect 75,000 false positive associations, i.e.\ associations that are due to purely random chance as a direct result of the number of tests.
To control for this the p-values can be adjusted according to the number of tests performed using approaches such as the Bonferroni correction, where the obtained p-values are multiplied by the number of tests.
Depending on the context, other less stringent methods are often preferred, like methods that control the false discovery rate (FDR) [@Benjamini1995].
In studies involving genomic and gene expression data, there is extensive correlation structures in the data.
Using relatively simple approaches such as Bonferroni or FDR correction will not take the correlation structure into account and can thus be overly conservative, and this can be overcome by using permutation tests.

In order to detect associations with a very low effect, i.e.\ a slope close to zero (see @fig:genetic-association), a large number of samples are needed.
With fewer samples, only the most obvious associations will be detected, i.e.\ those with a high effect.
For example, in the study of human height mentioned previously, more than 250,000 individuals were included in the study [@Wood2014], and a meta-analysis of almost the same magnitude was performed to find a genetic explanation to body mass index [@Speliotes2010].
In both cases the phenotypic variance explained by individual variants was very low (below 1%).
These small effects would not be detectable in a smaller study.

![A schematic example of an association study with three different individuals with three different genotypes at a particular locus (left): A/A, A/G, and G/G.
These genotypes explain the height of these individuals where the G allele is associated with higher individuals.
Associating this locus with the height of individuals in a population might yield the plot to the right.
The dashed line is then fitted to the data to minimise the distances between all data points and this line.
If the slope of this line is significantly different from zero we say that the association is significant.
The effect size is the slope of the fitted line and the variance explained by the SNP is related to the amount of variation of the data points around the line.
The closer the points are to the line, the more of the phenotypic variation is explained by the SNP.
Finally, the significance of the association is the probability of the slope of the line being different from zero.](figures/associations.pdf){#fig:genetic-association width=100%}

### eQTL mapping {#sec:eqtl-mapping}

Expression quantitative trait locus (eQTL) mapping is related to the traditional GWAS, as just described, but the phenotypes here are of the more abstract kind, namely gene expression.
The problems of GWAS get even bigger for this type of association study since not only do we have a large number of genetic variants, we also have a large number of phenotypes.
The phenotypes in this case are measures of gene expression for every transcribed gene.
If we are to consider the expression of every gene in the human genome together with all the genetic variants in the genome, we have to perform approximately 30 billion tests.
Not only does this results in a multiple testing problem, but it also causes purely computational problems.
Not too long ago, this many tests would have been practically impossible to perform due to the computational resources needed, but with the increase in computational power, coupled with clever methods [@Shabalin2012], this is now relatively easy to do.

QTL mapping is typically divided into two categories: linkage mapping and association mapping.
Linkage mapping is usually used when family information is available, such as in a controlled cross.
It relies on known markers and operates by performing a cross and observing how genetic markers associate with changes in the trait of interest.
For the work described in this thesis we have instead used natural populations of plants, for which we do not have family information and where a naturally breeding collection of individuals are considered, rather than a controlled cross between two individuals.
This approach is referred to as association mapping, or linkage disequilibrium mapping.
This method is related to GWA in that a large number of genetic markers (typically SNPs) are statistically tested to determine whether they are significantly associated with variation in a phenotype; the phenotype in this case being gene expression levels.
Linkage disequilibrium (LD) is the non-random association between different loci.
The idea is that the SNPs used for the association are in LD with the factor that is actually responsible for the phenotype. This way, the causal variant itself does not necessarily have to be included in the association, as long as a variant that is in LD with it is included.

eQTLs can be classified as either local or distant.
A local eQTL is close to the gene that it is associated with while a distant one is far away, either on the same chromosome or on a different chromosome than the associated gene.
The distance threshold where local becomes distant is however somewhat arbitrary.
In our eQTL analysis in paper III, we classify SNPs within 100 kilobases from the transcription start site to be local, based on the distance distribution of eQTL on the same chromosome as the associated gene.
The division into local and distant is a purely structural one as opposed to a functional definition.
A more functional definition also exists, where eQTLs are classified depending on *how* they act on the associated gene.
eQTLs are said to act either in *cis* or in *trans*, with *cis*-eQTLs acting directly on gene expression while *trans*-eQTL act indirectly on the associated gene.
An example of a *cis* mechanism could be a variant that modifies a transcription factor binding motif in the promoter of a gene, while a *trans* effect could be something so subtle as affecting the abundance of a certain co-factor that is required for expression of the associated gene.
Consequently, a *cis*-eQTL should act in an allele specific manner.
If a transcription factor binding site gets disrupted in only one allele, only the transcription of that allele will be affected.
Conversely, *trans*-eQTLs will have the same effect on both alleles.
Due to the indirect mechanism of *trans*-eQTL, these are generally of lower effect (remember the slope from [@fig:genetic-association]), and this is something that has been reported by numerous studies (references in [@Breitling2008; @Kliebenstein2009]), although there are exceptions [@Clement-Ziza2014].
Normally *cis* acting variants are local to the associated gene while *trans* effects are more distant.
Many studies have opted to only consider local eQTL [@Ardlie2015], and this is to some extent a tactical decision in that it makes the computational problem a bit easier since fewer tests have to be performed, and consequently, the multiple testing problem becomes slightly less of a problem since the number of markers considered for each gene is much smaller than the total number of markers.

The first study of the genetics underlying gene expression variation was performed in yeast in 2002 [@Brem2002] and included 3,312 genetic markers and 6,215 genes.
At the time this was a big feat, but today we are able to run association tests for all genes in the genome and all markers as demonstrated by the human Genotype Tissue Expression project (GTEx; [@Ardlie2015]) with a total of about 6.8 million SNPs and using both coding and non-coding genes (53,934 genes in total).

#### Biology gets complicated quickly {#sec:complexity}

![Simplified example of when eQTL effects and gene regulation is masked. A green checkmark means the regulatory link is enabled, while a red cross means it is disabled.
Green arrows indicate up-regulation of the gene while a red arrow indicates down-regulation of the gene.
In the regulatory network, the regulators R1 and R2 are always on, while regulator R3 is on as long as at least one of the eQTLs Q2 or Q3 enables the signal.
The expression of G1 only depends on Q1, and this eQTL is thus easily detected by standard eQTL mapping methods since there is a perfect relationship between the genotype and the expression.
Due to the dual regulators and eQTLs for R3, there is no perfect relationship between the eQTLs Q2 and Q3 and either R3 or G2.
The regulation of G3 is even more complicated where R3 needs to be expressed, and at the same time Q4 must enable the signal.
No perfect relationship between G3 and any of the eQTLs exist even though Q4 is *cis*-acting and Q2 and Q3 are both *trans*-acting.](figures/complexity.pdf){#fig:complexity width=100%}

Complex traits are the result of the interactions between many different factors.
When it comes to eQTLs, the most common approach is to consider pairs of genes and genetic variants one by one.
A better approach would be to analyse combinations of genetic variants and how they affect gene expression in concert.
However, it is not possible to do this in an exhaustive manner due to computational complexity and multiple testing.
In [@fig:complexity] a simple example of how the regulation could be hidden from traditional analysis methods is shown.
The gene G1 is perfectly correlated with the genotype of the eQTL Q1, and thus the traditional approach is perfectly capable of detecting this relationship.
It does not take much before this becomes too complicated though.
R3 is dependent on two eQTLs, Q2 and Q3.
The expression of R3 is not perfectly correlated with neither Q2 nor Q3, but in combination these eQTLs fully explain the expression of R3.
In other words, a model that takes all pairs of SNPs into account would be needed to detect this relationship.
Since G2 is directly regulated by R3, the dissection of G2 would need the same model as R3.
Finally, G3 could only be dissected if all triplets of SNPs were taken into account.
This is a very simplified example, but it highlights the inherent difficulties of systems genetics.
In paper III we work with about 3.2 million SNPs and about 20,000 genes resulting in about 64 billion models.
This would be able to capture the expression of G1.
In order to dissect the expression of R3 and G2 we would need to create models using all pairs of SNPs against all genes and this would result in $1.02 \times 10^{17}$ models.
The expression of G3 is explained by three eQTLs, and in order to test all SNP triplets, we would have to investigate $1.09 \times 10^{23}$ models.
Assuming that we are able to calculate 10 million models per second---which is about the same speed as we achieved in paper III---computing all models for pairs of SNPs would take more than 300 *years*, and all models of SNP triplets would take more than 34 *million* years.
Moreover, this is not even the worst part since the ridiculous number of tests would need a correspondingly strict correction for multiple testing.
In order for any effect, no matter how large, to be significant, an enormous amount of sequenced and phenotyped individuals is needed.
This can be viewed as the Catch 22 of genomics, where we have biological complexity on one side and limited data availability and computational power on the other.

As seen in [@fig:complexity], the complexity of regulation often results in redundancy in the regulatory network, redundancy that can act as a buffer for random mutations [@Rutherford2000].
Here gene duplications play a role as well since with two copies of the same gene, any detrimental mutations to one of them will most likely not affect the organism in a drastically negative way.
Not only does this protect the organism, but it can also hide the regulatory mechanism from traditional analysis methods.
One way to think of this is that simplicity would be bad for biology in general.
If something is easy to disentangle, then a very small perturbation, like a mutation, could possibly disrupt the whole system.
This is part of why we, in paper III, hypothesise that genes that are central in the co-expression network have evolved more redundancy in their regulation.
By having more redundancy, these genes will not be affected as easily by random mutations, and this is the same idea underlying the hypothesis of scale-free biological networks ([@sec:coexpression]).

### Genetic variants in an evolutionary context

- Not the main focus on the thesis.
- Put the variants described above in an evolutionary context.
- The genome is not static. The mutations we are seeing are probably going somewhere, and there are methods available for investigating this.
- Heritability, Qst? G3 in [@fig:complexity] is a nice example of a gene with potentially high heritable expression, but it is not detected by traditional eQTL mapping.

The genetic variants that are used for association mapping are not static.
From a population point of view they are going somewhere.
They could slowly be removed from the population if they have a detrimental effect on reproductive fitness, for example (negative selection), or they could be kept in the population in order to maintain genetic diversity (neutral selection).
Quantitative genetics is not the main focus of this thesis, but it is still an integral part.
It can be used to put the genetic variation into an evolutionary context that can help explain where these variants are coming from and where they are going.
