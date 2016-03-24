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

Some phenotypes are simple to explain from a genetic point of view. Perhaps the most famous example are the experiments by Gregor Mendel conducted between 1856 and 1863. He crossed pea plants (\textit{Pisum sativum}) having different properties; some were green, some were yellow, some were wrinkly, some were smooth. He then observed how these traits were passed down to the next generation of pea plants and thus laid the foundation for what we today refer to as the laws of Mendelian inheritance. This is something that is so fundamental in biology that it is taught already in primary school. Perhaps Mendel was just lucky, because most traits are much more complex than the ones he described [REF]. One example of a phenotype that has been notoriously difficult to explain is human height. Human height has a very high heritability, i.e.\ a large portion of the variation in human height can be explained by genetic factors, but studies that have tried to identify the factors that contribute to the variation in human height has not succeeded to explain things as well and as simple as Mendel explained the colour of his peas. In a recent study a large team of researchers managed to find 697 genetic variants that were associated with human height, but together these variants only explained 20 percent of the variation [@Wood2014]. This is the definition of a complex trait; a trait that can only be explained by the combination of a large number of small effects that individually can be very hard to detect.

<!-- Human height can also be seen as an emergent property, i.e.\ a property that is the result of many small effects that individually explain almost nothing of the emergent property, while in concert, they are able to... -->

@Fig:overview shows an overview of how information travels from the DNA via RNA to proteins and metabolites and how these interact to give rise to complex phenotypes. This introduction to this thesis will go through this figure one concept at a time and explain the underlying biology, the data we retrieve from this biology, and finally, methods used to analyse the data.

![The different types of data and the technologies used to measure/observe them.](figures/overview.pdf){#fig:overview width=100%}

In the case of Mendel's pea plants, the traits were very visible and the difference between plants was easy to assess. There is however more subtle variation in all natural populations. In humans it might be manifested as differences in height or eye colour, and in trees, this could be something so minuscule as the texture of the bark or the width of the leaves. This variability can be a result of environment, [EXAMPLE], or it can be a direct result of genotypic differences [blood type example], but it is almost always a combination of environment and genotype.

<!-- This phenotypic variation is a manifestation of one of the most fundamental requirements for evolution; without natural variation we would not have evolution. -->

<!-- The reason for this variation is that the machinery responsible for making new organisms, be it sexual or asexual reproduction, is error-prone. Whenever a cell divides, there is a possibility for errors. Over time these errors can accumulate, disappear or be fixed in a population depending on whether they are beneficial, neutral or even harmful for the organism. -->

## Genetic variation {#sec:genetic-variation}

All living organisms have at least one thing in common: they have a genome. It will not look the same in different organisms, but the fundamentals are the same; there are four nucleotides, adenine (A), cytosine (C), guanine (G) and thymine (T) that form the molecule deoxyribonucleic acid, more commonly known as DNA. The DNA is organised into larger units called chromosomes, and the number of chromosomes vary from species to species. Humans, for example, are diploid organisms with two copies of each of the 23 chromosomes. European aspen (\textit{Populus tremula}) has 19 chromosomes, and is also a diploid organism. Being diploid means that every gene (and most other pieces of DNA for that matter) exist in two copies---two alleles. Whenever a cell divides, the genetic information has to be copied so that each of the daughter cells gets their own copy of the genome. In the process of copying the genome, perhaps *the* most fundamental property of biology manifests itself---erroneous copying of DNA. Without errors in this process, life as we know it would not exist. The errors introduce variation into the genetic material, and this variation can take different shapes. One type of mutation are single nucleotide polymorphisms (SNPs). As the name implies, this type of mutation changes a single base in the genome into another, and these are the type of mutations this thesis will solely focus on.

The central dogma of biology states that information flows from DNA to protein via messenger ribonucleic acid (mRNA), and information cannot flow from protein to DNA [@Crick1958]. When we talk about genes in this context, they are the parts of DNA that get transcribed into mRNA, and eventually translated into protein. Since the DNA alphabet only contains four letters, and the protein alphabet contains twenty letters, it is not a one-to-one relationship between mRNA and protein, but units of three nucleotides define one amino acid. This unit is called a codon. Proteins then act as the workers and the building blocks of the cell. The parts of the DNA that ends up being translated into protein are referred to as coding DNA, while other parts of the DNA is referred to as non-coding. Non-coding regions of the genome can also be transcribed and mostly have regulatory functions, but also act as structural elements [REF].

The definition above is fundamentally different from that of Mendel. In the mid 19th century, traits were believed to be blended when inherited, but Mendel's experiments showed that this was not always the case. He figured out that there must be different variants of some hidden factor that give rise to the differences in traits in the offspring generation. These factors are what we today refer to as genes, and the variants of these genes are alleles.

If mutations are introduced into coding regions of the genome, one of three things might happen: no effect at all (silent mutation), a change in protein sequence (mis-sense mutation), or the introduction of a stop codon and prematurely halt the translation process (non-sense mutation). Fifteen years ago, these types of mutations were in the lime light as everything outside of genes was largely discarded as "junk DNA". Since then, with the arrival of cheap high-throughput sequencing technologies, the focus has changed. Although "junk DNA" is not expressed and translated explicitly, it does facilitate the expression of genes and controls when and at what levels genes should be expressed. Gene expression will be presented in more detail in [@sec:gene-expression].

It might sound like regulatory DNA is something that has been discovered during the past fifteen years, but this is not the case at all. Regulatory elements in non-coding regions of the genome has been know since at least the 1960's and the description of the regulation of the \textit{lac} operon by François Jacob and Jacques Monod [-@Jacob1961]. Even though these types of regulatory mechanisms have been known for a long time, it is only the developments in the past 10 years or so that has made large scale analysis of these types of regulatory mechanisms possible.

- Genome duplication?
- Talk about chimps and how the human genome is very similar, but that gene regulation is what is behind the big phenotypic differences.

![Figure zooming in on the genetic variation component of [@fig:overview].](figures/placeholder.png){#fig:genetic-variation width=100%}

### Quantifying genetic variation

With the high-throughput sequencing technologies that exist today, it has become very affordable to perform whole-genome sequencing. The $1000 human genome has been a long-time vision, and during my PhD period, this has become a reality [@CheckHayden2014]\footnote{Depending somewhat on how you count.}. It has never been this cheap or easy to get a the complete genome of an organism sequenced, and this clearly has huge potential for characterising the genetic variation in populations of individuals.

Polymorphisms can be identified by comparing the same position across all individuals in a population. Most of this thesis is focused on diploid organisms, and in diploid organisms there are two alleles per individual at each locus. The most common SNPs, at least in human populations, are biallelic, meaning that we only observe two different alleles in the whole population as opposed to the four variants that we possibly could see.

- Rare variants and information content
- Low effect variants: how many samples do you need? Human height study with 200k samples.

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

Co-expression is a manifestation of the underlying regulatory network. If two genes are regulated by the same factors, chances are that these genes also are co-expressed, i.e.\ expressed at the same level regardless of changes in e.g.\ environment. In a mathematical framework, a co-expression network can be represented as a graph structure where the vertices are genes and the edges represent the degree of co-expression (figure reference). The consensus from a large number of studies is that co-expression networks (and biological networks in general) often are scale-free. This basically means that there are few genes with many connections to other genes in the network and more genes with few connections [REFS]. The reason why this property has evolved is believed to be related to robustness against random perturbations. A gene that is central in the network, i.e.\ have many connections, is believed to be involved in many different pathways/functions, and thus to be a critical gene. If that gene is perturbed in some way, the network might collapse, while this wouldn't be the case if a peripheral gene in the network was targeted [REFS]. Co-expression networks have also been found to be modular, that is, there are sub-networks in the global network that are more tightly connected to the inside of the module than to the outside. More often than not it is the case that these modules are enriched in functional categories such as Gene Ontology [@Ashburner:2000ja] terms or Kyoto Encyclopedia of Genes and Genomes [KEGG; @Kanehisa2000] pathways [@Langfelder2008; @Langfelder2011].

Studies have shown that co-expression networks are able to capture biologically relevant gene expression signatures. One example is a study performed in lake whitefish (\textit{Coregonus cupleaformis}) where researchers found network modules that were correlated with dwarfism among these fish [@Filteau2013]. Another example is a cancer study where gene expression signatures common across tumour types were identified using a co-expression network approach [@Doig2013].

- A sentence on gene expression not being a good proxy for protein abundance

### Quantifying gene expression

- Very short on the technology.
- Improvements from microarrays.
- Computational challenges

## Association studies

Association studies, in this context, refers to the association of genetic variants with a phenotype of interest. This phenotype can range from very clear ones, such as human height, to more abstract phenotypes, such as gene expression. In the following sub-sections I will present the concept of association studies and what we have learned from those so far.

### Genome-wide association

I dare to bet that most people have come into contact with genome wide association studies (GWAS) at one time or another. Whenever you see headlines in the news such as "the obesity gene has been found", it is likely that the underlying study is a GWA study. It is also likely that the sensational headline is not quite true. What researchers have done in cases like this is to collect populations of individuals; those that have the phenotype of interest, such as a disease, and another population of healthy people. The genomes of these individuals are then sequenced or otherwise assayed for genetic variants and the researchers then ask themselves: can we identify variants that can be used to tell the difference between healthy and diseased individuals?

This is usually performed using relatively simple regression models where the disease status acts as the response variable and the genetic variants as the explanatory variable. It is not hard to imagine that this can potentially results in a huge number of tests. In humans, for example, <strong>we expect to find xxx SNPs per xxx bases in the genome [REF]</strong>, and this would result in xxx tests if one were to test the association to the phenotype of interest for each and every genetic variant. This has a few consequences, but mainly it

- Regression models: This part of the thesis should include regression models since it is a central analysis method for association studies.
- In order to connect genotypic variation with phenotypic variation.
- Some words on linkage and causal variants?
- GWAS: here there have been a lot of work done. See if there is something suitable in plants that I can refer to.
- Some words on statistical power.

### eQTL mapping

Expression quantitative trait locus (eQTL) mapping is related to the traditional GWAS in the previous section, but the phenotypes here are of the more abstract kind; something you cannot observe directly, namely gene expression. Also, the problems of GWAS get even bigger for this type of association study since not only do we have a large number of genetic variants, we also have a large number of phenotypes. The phenotypes in this case is gene expression. If we are to consider the expression of every gene in the genome together with all the genetic variants in the genome we get, for humans, approximately xxx tests have to be performed. Not only does this results in a multiple testing problem, but it also causes purely computational problems. Fifteen years ago, this problem was \textcolor{red}{infeasible to tackle}, but with the increase in computational power coupled with clever methods [@Shabalin2012] this is now relatively easy to do.

Traditionally, QTL mapping can divided into two categories: linkage mapping and association mapping. Linkage mapping is usually used when family information is available, such as in a controlled cross, and relies on known markers. By performing a cross and observing how genetic markers associate with changes in the trait of interest. This is not something that has been done during the projects associated with this thesis, due to a couple of reasons. Firstly, dealing with natural populations of plants typically means that you do not have family information, and secondly, known genetic markers are few and far between in species such as aspen. This is where association mapping, or linkage disequilibrium mapping, comes into the picture. This method is related to GWA in that a large number of genetic markers (typically SNPs) are associated to a phenotype; the phenotype in this case being gene expression levels.

![Nice figure explaining the concept of eQTLs/QTLs in a diploid organism.](figures/placeholder.png){#fig:eqtl width=100%}

eQTLs are said to act either in *cis* or in *trans*, with *cis*-eQTLs acting directly on gene expression while *trans*-eQTL act indirectly on the associated gene. An example of a *cis* mechanism could be a variant that affects the affinity for transcription factor binding to the promoter of a gene, while a *trans* effect could be something so subtle as affecting the abundance of a certain co-factor that is needed to express the associated gene. From these simple examples it is quite clear that *trans* effects are more subtle than *cis* effects, and this is something that has been observed time and time again [REFS]. In fact, most studies in human only consider *cis* acting variants, or rather, they assume that variants that are in the vicinity of the gene they are acting on are acting in *cis* [REFS]. The case is often that *cis* acting variants are local to the associated gene while *trans* effects are more distant. The decision to use only *cis* acting variants make the computational problem a bit easier since fewer tests have to be performed, and consequently, the multiple testing problem becomes slightly less of a problem since the number of markers considered for each gene is much smaller than the total number of markers in the genome.

Studies of regulatory variation have shown that...

## Integration of different types of data

From the sections on gene expression and association studies above, we see that it is possible to explain some of the variability in complex traits using these resources directly. The natural follow-up to this is whether we can gain even more from combining these sources of information. From @fig:overview it is evident GWAS and eQTL mapping represent related, but still distinct approaches. If we combine these two types of association studies, are we able to see even more in a kind of a step-wise fashion starting at the level of the genome, using the variation to explain the variation in gene expression, and finally the variation in phenotypes.

![Figure showing the different types of associations we have and what we could possibly get from combining these.](figures/placeholder.png){#fig:integration width=100%}

- Using the combination of data from the sections above to try to get an integrated view on how these phenotypes emerge.
- Are we able to explain more by using different types of data that represent different layers of the (hidden) regulatory network.
- Overlap between GWAS SNPs and eQTL SNPs
- The recent functional genomics in yeast special issue might be useful for this section: http://bfg.oxfordjournals.org/content/15/2.toc
