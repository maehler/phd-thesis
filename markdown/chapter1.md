---
figPrefix:
    - "figure"
    - "figures"
---

\mainmatter

# Introduction

Some phenotypes are simple to explain from a genetic point of view. Perhaps the most commonly known experiment of this kind is the one by Gregor Mendel in the 17th century\footnote{In reality, he performed quite a few experiments.}. He crossed peas having different properties; some were green, some were yellow, some were wrinkly, some were smooth. He then observed how these traits were passed down to the next generation of pea plants and thus laid the foundation for what we today refer to as Mendelian inheritance. This is something that is so fundamental in biology that it is taught already in elementary school. So, is an elementary school subject really something you want to build a PhD thesis on? I would say yes (of course), because not all phenotypes are this simple to explain. One notorious example of a phenotype that is difficult to explain is human height. Human height has a very high heritability, *i.e.* it is easy to predict the height of human if you know the heights of its parents, but from a genetic point of view there has been numerous studies trying to find genetic variants that can help explain human height. In a recent study [@Wood2014] a large team of researchers managed to find 697 genetic variants that were associated with human height, but together these variants only explained 20 percent of the variation. This is a complex trait; a trait that cannot be explained by a single gene or a single variant. It can be seen as an emergent property, *i.e.*\ a property that is the result of many small effects that individually explain almost nothing of the emergent property, while in concert, they are able to...

The main reason for seeing genetic variation is that DNA replication is not perfect. Whenever a piece of DNA is replicated, there is a certain chance for an error occurring. The effect of this error might range from no effect at all to the death of the organism.

@Fig:overview shows an overview of how information travels from the DNA via RNA to proteins and metabolites and how these interact to give rise to complex phenotypes. This introduction to this thesis will go through this figure one concept at a time and explain the underlying biology, the data we retrieve from this biology, and finally, methods used to analyse this.

![The different types of data and the technologies used to measure/observe them.](figures/overview.pdf){#fig:overview width=100%}

## Gene expression

- The concept of genes as units of DNA associated with a particular transcript/protein with a certain function. Contrast Mendel with Dawkins.

### RNA-Sequencing

- Very short on the technology.
- Improvements from microarrays.
- Computational challenges

### Explaining phenotypes with gene expression

- Examples of studies linking gene expression with phenotypes

### Co-expression networks

## Gene regulation

### Promoters and their role in gene expression

### Expression quantitative trait loci

![Nice figure explaining the concept of eQTLs.](figures/placeholder.png){#fig:eqtl width=100%}

### Regulatory motifs

## Genetic association studies

- In order to connect genotypic variation with phenotypic variation.
- Some words on linkage and causal variants?

### Genetic variation

- SNPs in a population context (is there any other context for SNPs?)

### Explaining phenotypes with genetic variation

- GWAS: here there have been a lot of work done. See if there is something suitable in plants that I can refer to.
- Some words on statistical power.

## Integration of different types of data

- Using the combination of data from the sections above to try to get an integrated view on how these phenotypes emerge.
- Are we able to explain more by using different types of data that represent different layers of the (hidden) regulatory network.

--------

## The central dogma of molecular biology

One of the most fundamental concepts of biology, and also for this thesis, is the central dogma of molecular biology. It was first declared by Francis Crick [-@Crick1958] where he states that "once 'information' has passed into protein *it cannot get out again*". In other words, information flows from deoxyribonucleic acid (DNA) via ribonucleic acid (RNA) to protein with the help of the transcriptional machinery (@fig:central-dogma).

> Go on to talk about how replication is imperfect, i.e. errors are introduced and how this relates to evolution.

## Gene expression and its regulation

### Promoters and their role in gene expression

### Regulatory motifs

### Co-expression networks

- Similarities in gene expression across conditions. For example, if two genes are both up-regulated when exposed to a cold environment, and down-regulated when exposed to a warm environment, then we can say that the two genes are co-expressed.
- Can be seen as a network structure where genes are nodes and the co-expression relationship is represented by connections (edges) between these nodes.
- Co-expression modules and how they can be identified, and more importantly, their significance.
- Characteristics of typical biological networks, e.g. scale-freeness and module enrichment analysis.

## Natural variation

In natural populations of all organisms we see phenotypic variation, i.e. variation in the appearance or behaviour of these organisms. In bacteria, this might appear as differences in viability while in humans it might be manifested as differences in height, just to mention a couple of simple examples. This variability can be a result of environment, EXAMPLE HERE, or it can be a direct result of genotypic differences. This variation in phenotype is a manifestation of one of the most fundamental requirements for evolution; without natural variation we would not have evolution. The reason for this variation is that the machinery responsible for making new organisms, be it sexual or asexual reproduction, is error-prone. Whenever a cell divides, there is a possibility for errors. Over time these errors can accumulate, disappear or be fixed in a population depending on whether they are beneficial, neutral or even harmful for the organism.

- Mention that many of the mutations will be neutral, i.e.\ have no practical effect on downstream phenotypes, be it gene expression or some higher-order phenotype.
- Talk about mutations in regulatory regions, and mutations in what previously has been labeled as junk-DNA.
- Go into a small discussion on how the view of junk-DNA has changed the last ten years, and how this is a consequence of better sequencing technologies (?).

## Genetic association studies


