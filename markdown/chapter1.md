---
figPrefix:
    - "figure"
    - "figures"
secPrefix:
	- "section"
	- "sections"
---

\mainmatter

# Introduction

The aim of this thesis is to shed light on the complex matter that is complex traits, and how these traits emerge from networks of interacting genes.

## Background

Some phenotypes are simple to explain from a genetic point of view. Perhaps the most famous example of this kind are the experiments by Gregor Mendel conducted between 1856 and 1863. He crossed peas having different properties; some were green, some were yellow, some were wrinkly, some were smooth. He then observed how these traits were passed down to the next generation of pea plants and thus laid the foundation for what we today refer to as the laws of Mendelian inheritance. This is something that is so fundamental in biology that it is taught already in primary school. So, is a primary school subject really something you want to build a PhD thesis on? I would say yes (of course; I am not going to invalidate my work), because not all phenotypes are this simple to explain. Perhaps Mendel was just lucky. One notorious example of a phenotype that is difficult to explain is human height. Human height has a very high heritability, i.e.\ a large portion of the variation in human height can be explained by genetic factors, but from a genetic point of view there has been numerous studies trying to find genetic variants that can help explain human height. In a recent study [@Wood2014] a large team of researchers managed to find 697 genetic variants that were associated with human height, but together these variants only explained 20 percent of the variation. This is the definition of a complex trait; a trait that can only be explained by the combination of a large number of small effects that individually can be very hard to detect.

Human height can also be seen as an emergent property, i.e.\ a property that is the result of many small effects that individually explain almost nothing of the emergent property, while in concert, they are able to...

The main reason for seeing genetic variation is that DNA replication is not perfect. Whenever a piece of DNA is replicated, there is a certain chance of an error occurring. The effect of this error might range from no effect at all to the death of the organism.

@Fig:overview shows an overview of how information travels from the DNA via RNA to proteins and metabolites and how these interact to give rise to complex phenotypes. This introduction to this thesis will go through this figure one concept at a time and explain the underlying biology, the data we retrieve from this biology, and finally, methods used to analyse this.

![The different types of data and the technologies used to measure/observe them.](figures/overview.pdf){#fig:overview width=100%}

In natural populations of all organisms we see phenotypic variation, i.e. variation in the appearance or behaviour of these organisms. In bacteria, this might appear as differences in viability while in humans it might be manifested as differences in height, just to mention a couple of simple examples. This variability can be a result of environment, EXAMPLE HERE, or it can be a direct result of genotypic differences. This variation in phenotype is a manifestation of one of the most fundamental requirements for evolution; without natural variation we would not have evolution. The reason for this variation is that the machinery responsible for making new organisms, be it sexual or asexual reproduction, is error-prone. Whenever a cell divides, there is a possibility for errors. Over time these errors can accumulate, disappear or be fixed in a population depending on whether they are beneficial, neutral or even harmful for the organism.

## Genetic variation {#sec:genetic-variation}

One of the most fundamental properties of biology is that replication of DNA is not perfect. Each time a cell is divided, the genetic material must be copied, and the machinery that copies the DNA makes mistakes. This introduces variation in the DNA sequence, and if these changes are introduced in the meiosis, i.e. in the production of gametes, the change might be passed down to the next generation. A mutation can take many different forms; everything from having no effect at all to being beneficial to be responsible for the death of the organism. The change of a single nucleotide in the genome is called a single nucleotide polymorphism (SNP) and can be observed by comparing the same position, or locus, in a population of individuals. If the population has different variants, or alleles, at this locus, we observe a SNP. The different alleles of the SNP occur with a certain frequency (allele frequency) in the population. In order to detect the most rare variants, a very large population of individuals is needed [REF].

![Figure zooming in on the genetic variation component of [@fig:overview].](figures/placeholder.png){#fig:genetic-variation width=100%}

Mutations in coding regions of the genome, that is, genomic sequences that eventually gets translated into proteins, can have different effects. They can be silent, i.e.\ not cause any change to the protein sequence, they can be mis-sense mutations, i.e.\ they change the amino acid composition of the protein, or they can be non-sense mutations, i.e.\ they will cause the translation to be terminated prematurely. In the past, a lot of focus has been directed towards variants in the coding regions of the genome [REF], but in the past 10-15 years, there has been a paradigm shift. The arrival of high-throughput sequencing technologies has made it possible to sequence complete genomes in shorter time with less money than what was previously possible. What this also enabled was the possibility to not only focus on a narrow region of interest, or a region where prior information was available; the *whole* genome could be sequenced for *whole* populations. With these possibilities, a plethora of studies have shown that the regions of the genome that previously were considered to be junk-DNA are actually part of the regulatory genome. Instead of being expressed and translated explicitly, these parts of the genome facilitate the expression of genes and controls when and in what abundance genes should be expressed. Gene expression will be presented in more detail in [@sec:gene-expression].

### Quantifying genetic variation

With the high-throughput sequencing technologies that exist today, it has become very affordable to perform whole-genome sequencing. The USD 1000 genome\footnote{This refers to the human genome, and a lot of efforts are skewed towards human studies, more or less ignoring applications in other organisms.} has been a long-time vision, and it is (soon?) reality. However, this refers to the complete sequencing and assembly of a genome. If a resequencing instead is performed, i.e.\ the genome of the organism has already been sequenced, then the cost is vastly lower.

Polymorphisms can be identified by comparing the same position across all individuals in a population. Most of this thesis is focused on diploid organisms, and in diploid organisms there are two alleles per individual at each locus. The most common SNPs, at least in human populations, are biallelic, meaning that we only observe two different alleles in the whole population. Multi-allelic SNPs exist as well [@Hodgkinson2010], but only considering biallelic SNPs results in that a number of assumptions can be made in the actual SNP calling process [examples and REFS] since there are only three possible genotypes for each locus: homozygous for the first allele, heterozygous, or homozygous for the second allele.

## Gene expression {#sec:gene-expression}

Genetic variation doesn't really have any significance if it is not manifested in some way. One way that it can manifest itself is through gene expression. At the time when Mendel performed his experiments, there were no notion of genes, but Mendel said that there were hiden factors that were passed down to the offspring. These hidden factors we today call genes; blocks of genetic information that is transcribed into messenger ribonucleic acid (mRNA), and eventually translated into proteins. This is a very simplified view of what is going on. In every step of the process there are different forks in the road that can be taken, and each of these forks will change the fate of that gene. Also, this is a highly dynamic process that responds to different kinds of stimuli, such as environmental changes.

![Figure zooming in on the gene expression part of [@fig:overview].](figures/placeholder.png){#fig:gene-expression width=100%}

As stated in @sec:genetic-variation, the regulatory genome has gained more and more attention in the last 15 years. New studies keep showing examples where protein sequence is identical between vastly different phenotypes, but changes in gene regulation is instead what is responsible for the phenotypic variation. Examples of this beak length [@Abzhanov2006] and beak shape [@Lamichhaney2015] in Darwin's finches. In the study by @Lamichhaney2015, one of the genes that were associated with the differences in beak shape was a transcription factor (TF). TFs bind to promoter regions upstream of genes in order to recruit the transcriptional machinery involving the RNA polymerase. The binding sites of transcription factors are very/often specific [REF], and a change in a single nucleotide can affect the binding affinity, or even completely disrupt the binding of the TF [REF]. The regions that transcription factors bind to are called motifs. They are short DNA sequences with a specific composition that is meant to match the binding residues of a transcription factor. These motifs are often degenerate [REF] and can thus be difficult to detect. Strategies for identifying these motifs include, among other approaches, aligning sequences from related species and identify regions that are conserved across these species. This method is called phylogenetic footprinting, and has generated...

- Talk about gene expression being self-regulatory. That is, transcription factors must also be expressed, and so does repressors of gene expression, giving rise to a very complex regulatory network. This network is difficult to observe owing its complexity, and so far studies have focused on very small part of the regulatory network that can help explain a detail of interest, such as xxx in \textit{Arabidopsis thaliana}.

- Explaining phenotypes based on gene expression: combinatorics, machine learning, overfitting, etc.

### Regulation of gene expression {#sec:regulation-of-gene-expression}

- Should I really have this sub-section?
- Transcription factor binding sites/regulatory motifs
- Long range regulatory elements
- Direct and indirect effects on gene expression

### Co-expression networks

Co-expression is a manifestation of the underlying regulatory network. If two genes are regulated by the same factors, chances are that these genes also are co-expressed, i.e.\ expressed at the same level regardless of changes in e.g.\ environment. In a mathematical framework, a co-expression network can be represented as a graph structure where the vertices are genes and the edges represent the degree of co-expression (figure reference). The consensus from a large number of studies is that co-expression networks (and biological networks in general) often are scale-free. This basically means that there are few genes with many connections to other genes in the network and more genes with few connections [REFS]. The reason behind this is believed to be related to robustness against random perturbations. A gene that is central in the network, i.e.\ have many connections, are believed to be involved in many different pathways/functions, and also a critical gene. If that gene is perturbed in some way, the network might collapse, while this wouldn't be the case if a peripheral gene in the network was targeted [REFS]. Co-expression networks have also been found to be modular, that is, there are sub-networks in the global network that have are more tightly connected to the inside of the module than to the outside. More often than not it is the case that these modules are enriched in functional categories such as Gene Ontology [@Ashburner:2000ja] terms or Kyoto Encyclopedia of Genes and Genomes [KEGG; @Kanehisa2000] pathways [@Langfelder2008; @Langfelder2011].

Studies have shown that co-expression networks are able to capture biologically relevant gene expression signatures. One example is a study performed in lake whitefish (\textit{Coregonus cupleaformis}) where researchers found network modules that were correlated with dwarfism among these fish [@Filteau2013]. Another example is a cancer study where gene expression signatures common across tumour types were identified using a co-expression network approach [@Doig2013].

- A sentence on gene expression not being a good proxy for protein abundance

### Quantifying gene expression

- Very short on the technology.
- Improvements from microarrays.
- Computational challenges

## Association studies

Association studies, in this context, refers to the association of genetic variants with a phenotype of interest. This phenotype can range from very clear ones, such as human height, but also more abstract phenotypes, such as gene expression. In the following sub-sections I will present the concept of association studies and what we have learned from those so far.

### Genome-wide association

I dare to bet that most people have come into contact with genome wide association studies (GWAS) at one time or another. Whenever you see headlines in the news such as "the obesity gene has been found", it is likely that the underlying study is a GWA study. It is also likely that the sensational headline is not quite true. What researchers have done in cases like this is to collect populations of individuals; those that have the phenotype of interest, such as a disease, and another population of healthy people. The genomes of these individuals are then sequenced or otherwise assayed for genetic variants which and the researchers then ask themselves: can we identify variants that can be used to tell the difference between healthy and diseased individuals?

This is usually performed using relatively simple regression models where the disease status acts as the response variable and the genetic variants as the explanatory variable. It is not hard to imagine that this can potentially results in a huge number of tests. In humans, for example, <strong>we expect to find xxx SNPs per xxx bases in the genome [REF]</strong>, and this would result in xxx tests if one were to test the association to the phenotype of interest for each and every genetic variant. This has a few consequences, but mainly it

- In order to connect genotypic variation with phenotypic variation.
- Some words on linkage and causal variants?
- GWAS: here there have been a lot of work done. See if there is something suitable in plants that I can refer to.
- Some words on statistical power.

### eQTL mapping

Expression quantitative trait locus (eQTL) mapping is related to the traditional GWAS in the previous section, but the phenotypes here are of the more abstract kind; something you cannot observe directly, namely gene expression. Also, the problems of GWAS get even bigger for this type of association study since not only do we have a large number of genetic variants, we also have a large number of phenotypes. The phenotypes in this case is gene expression. If we are to consider the expression of every gene in the genome together with all the genetic variants in the genome we get, for humans, approximately xxx tests that we have to perform. Not only does this results in a multiple testing problem, but it also causes purely computational problems. Fifteen years ago, this problem was infeasible to tackle, but with the increase in computational power coupled with clever methods [@Shabalin2012] this is now relatively easy to do.

Traditionally, QTL mapping can divided into two categories: linkage mapping and association mapping. Linkage mapping is usually used when family information is available, such as in a controlled cross, and relies on known markers. By performing a cross and observing how genetic markers associate with changes in the trait of interest. This is not something that has been done during the projects associated with this thesis, due to a couple of reasons. Firstly, dealing with natural populations of plants typically means that you do not have family information, and secondly, known genetic markers are few and far between in species such as aspen. This is where association mapping, or linkage disequilibrium mapping, comes into the picture. This method is related to GWA in that a large number of genetic markers (typically SNPs) are associated to a phenotype; the phenotype in this case being gene expression levels.

![Nice figure explaining the concept of eQTLs/QTLs in a diploid organism.](figures/placeholder.png){#fig:eqtl width=100%}

eQTLs are said to act either in *cis* or in *trans*, with *cis*-eQTLs acting directly on gene expression while *trans*-eQTL act indirectly on the associated gene. An example of a *cis* mechanism could be a variant that affects the affinity for transcription factor binding to the promoter of a gene, while a *trans* effect could be something so subtle as affecting the abundance of a certain co-factor that is needed to express the associated gene. From these simple examples it is quite clear that *trans* effects are more subtle compared to *cis* effects, and this is something that has been observed time and time again [REFS]. In fact, most studies in human only consider *cis* acting variants, or rather, they assume that variants that are in the vicinity of the gene they are acting on are acting in *cis* [REFS]. The case is often that *cis* acting variants are local to the associated gene while *trans* effects are more distant. The decision to use only *cis* acting variants results in making the computational problem a bit easier since fewer tests have to be performed, and consequently, the multiple testing problem becomes slightly less of a problem since the number of markers considered for each gene is much smaller than the total number of markers in the genome.

Studies of regulatory variation have shown that...

## Integration of different types of data

From the sections on gene expression and association studies above, we see that it is possible to explain some of the variability in complex traits using these resources directly. The natural follow-up to this is whether we can gain even more from combining these sources of information. From @fig:overview it is evident GWAS and eQTL mapping represent related, but still distinct approaches. If we combine these two types of association studies, are we able to see even more in a kind of a step-wise fashion starting at the level of the genome, using the variation to explain the variation in gene expression, and finally the variation in phenotypes.

![Figure showing the different types of associations we have and what we could possibly get from combining these.](figures/placeholder.png){#fig:integration width=100%}

- Using the combination of data from the sections above to try to get an integrated view on how these phenotypes emerge.
- Are we able to explain more by using different types of data that represent different layers of the (hidden) regulatory network.
- Overlap between GWAS SNPs and eQTL SNPs
- The recent functional genomics in yeast special issue might be useful for this section: http://bfg.oxfordjournals.org/content/15/2.toc
