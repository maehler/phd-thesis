## Gene expression {#sec:gene-expression}

Genetic variation doesn't really have any significance if it is not manifested in some way. One way that it can manifest itself is through gene expression. At the time when Mendel performed his experiments, there were no notion of genes, but Mendel said that there were hiden factors that were passed down to the offspring. These hidden factors we today call genes; blocks of genetic information that is transcribed into messenger ribonucleic acid (mRNA), and eventually translated into proteins. This is a very simplified view of what is going on. In every step of the process there are different forks in the road that can be taken, and each of these forks will change the fate of that gene. Also, this is a highly dynamic process that responds to different kinds of stimuli, such as environmental changes.

![Figure zooming in on the gene expression part of [@fig:overview].](figures/placeholder.png){#fig:gene-expression width=100%}

As stated in @sec:genetic-variation, the regulatory genome has gained more and more attention in the last 15 years. New studies keep showing examples where protein sequence is identical between vastly different phenotypes, but changes in gene regulation is instead what is responsible for the phenotypic variation. Examples of this beak length [@Abzhanov2006] and beak shape [@Lamichhaney2015] in Darwin's finches. In the study by @Lamichhaney2015, one of the genes that were associated with the differences in beak shape was a transcription factor (TF). TFs bind to promoter regions upstream of genes in order to recruit the transcriptional machinery involving the RNA polymerase. The binding sites of transcription factors are very/often specific [REF], and a change in a single nucleotide can affect the binding affinity, or even completely disrupt the binding of the TF [REF]. The regions that transcription factors bind to are called motifs. They are short DNA sequences with a specific composition that is meant to match the binding residues of a transcription factor. These motifs are often degenerate [REF] and can thus be difficult to detect. Strategies for identifying these motifs include, among other approaches, aligning sequences from related species and identify regions that are conserved across these species. This method is called phylogenetic footprinting, and has generated...

- Talk about gene expression being self-regulatory. That is, transcription factors must also be expressed, and so does repressors of gene expression, giving rise to a very complex regulatory network. This network is difficult to observe owing its complexity, and so far studies have focused on very small part of the regulatory network that can help explain a detail of interest, such as xxx in \textit{Arabidopsis thaliana}.

- The regulatory genome consists of a wide range of regulatory elements that have been discovered to date. The ones that have been known the longest are the promoters; genes upstream from genes that regulates the gene directly, i.e.\ in *cis*.

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
