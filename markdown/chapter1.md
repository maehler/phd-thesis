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

## Genetic variation

One of the most fundamental properties of biology is that replication of DNA is not perfect. Each time a cell is divided, the genetic material must be copied, and the machinery that copies the DNA makes mistakes. This introduces variation in the DNA sequence, and if these changes are introduced in the meiosis, i.e. in the production of gametes, the change might be passed down to the next generation. A mutation can take many different forms; everything from having no effect at all to being beneficial to be responsible for the death of the organism.

- SNPs in a population context (is there any other context for SNPs?)

- Mention that many of the mutations will be neutral, i.e.\ have no practical effect on downstream phenotypes, be it gene expression or some higher-order phenotype.
- Talk about mutations in regulatory regions, and mutations in what previously has been labeled as junk-DNA.
- Go into a small discussion on how the view of junk-DNA has changed the last ten years, and how this is a consequence of better sequencing technologies (?).

### Quantifying genetic variation

## Gene expression

All living organism have the four nucleotides adenine (A), cytosine (C), guanine (G) and thymine (T) that constitutes the genome in common. The genome can be seen as the recipe for an organism where each gene is an ingredient. Gene expression is then the manufacturing process for each ingredient. Genes are transcribed into molecules of messenger-ribonucleic acid (mRNA) by the transcriptional machinery, and the mRNA is later translated into protein by the ribosome. This is a very simplified view of what is going on. In every step of the process there are different forks in the road that can be taken, and each of these forks will change what that particular gene will give rise to. These forks will be presented in [@sec:regulation-of-gene-expression].

- The concept of genes as units of DNA associated with a particular transcript/protein with a certain function. Contrast Mendel with Dawkins.

### Regulation of gene expression {#sec:regulation-of-gene-expression}

#### Regulatory motifs

### Co-expression networks

- Similarities in gene expression across conditions. For example, if two genes are both up-regulated when exposed to a cold environment, and down-regulated when exposed to a warm environment, then we can say that the two genes are co-expressed.
- Can be seen as a network structure where genes are nodes and the co-expression relationship is represented by connections (edges) between these nodes.
- Co-expression modules and how they can be identified, and more importantly, their significance.
- Characteristics of typical biological networks, e.g. scale-freeness and module enrichment analysis.

### Quantifying gene expression

- Very short on the technology.
- Improvements from microarrays.
- Computational challenges

## Association studies

### Genetic association studies

- In order to connect genotypic variation with phenotypic variation.
- Some words on linkage and causal variants?
- GWAS: here there have been a lot of work done. See if there is something suitable in plants that I can refer to.
- Some words on statistical power.

### eQTL mapping

![Nice figure explaining the concept of eQTLs.](figures/placeholder.png){#fig:eqtl width=100%}

## Integration of different types of data

- Using the combination of data from the sections above to try to get an integrated view on how these phenotypes emerge.
- Are we able to explain more by using different types of data that represent different layers of the (hidden) regulatory network.
