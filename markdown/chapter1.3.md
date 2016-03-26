## Gene expression {#sec:gene-expression}

Genetic variation doesn't really have any significance if it is not manifested in some way. One way that it can manifest itself is through gene expression. At the time when Mendel performed his experiments, there were no notion of genes, but Mendel said that there were hiden factors that were passed down to the offspring. These hidden factors we today call genes; blocks of genetic information that is transcribed into messenger ribonucleic acid (mRNA), and eventually translated into proteins. This is a very simplified view of what is going on. In every step of the process there are different forks in the road that can be taken, and each of these forks will change the fate of that gene. Also, this is a highly dynamic process that responds to different kinds of stimuli, such as environmental changes.

![Figure zooming in on the gene expression part of [@fig:overview].](figures/placeholder.png){#fig:gene-expression width=100%}

As stated in @sec:genetic-variation, the regulatory genome has gained more and more attention in the last 15 years. New studies keep showing examples where protein sequence is identical between vastly different phenotypes, but changes in gene regulation is instead what is responsible for the phenotypic variation. Examples of this beak length [@Abzhanov2006] and beak shape [@Lamichhaney2015] in Darwin's finches, and the previously mentioned differences between humans and chimpanzees [@Pollard2006; @Polavarapu2011]. In the study of Darwin's finches by @Lamichhaney2015, one of the genes that was associated with the differences in beak shape was a transcription factor (TF). TFs bind to promoter regions upstream of genes in order to recruit the transcriptional machinery involving the RNA polymerase. The regions that transcription factors bind to are commonly referred to as motifs. They are short DNA sequences with a specific composition that is meant to match the binding residues of a transcription factor. These motifs are often degenerate and can thus be difficult to detect [@Stormo2000], and it is very difficult to predict the effect of a single mutation in one of these binding sites.

Since the vast majority of genes get transcribed at one point, it is easy to see that there must be a very complex regulatory network behind this. Transcription factors have to be expressed, and they in turn regulate the expression of some other gene that in turn might act in a feedback loop to regulate the expression of itself. This quickly explodes into a complex mess that is not easy to disentangle.

- Take some examples of regulatory network studies from @Lynch2016 and @Chuong2016.

- So far studies have focused on very small part of the regulatory network that can help explain a detail of interest, such as xxx in \textit{Arabidopsis thaliana}.

- The regulatory genome consists of a wide range of regulatory elements that have been discovered to date. The ones that have been known the longest are the promoters; genes upstream from genes that regulates the gene directly, i.e.\ in *cis*.

- Explaining phenotypes based on gene expression: combinatorics, machine learning, overfitting, etc.

### Regulation of gene expression {#sec:regulation-of-gene-expression}

- Should I really have this sub-section?
- Transcription factor binding sites/regulatory motifs
- Long range regulatory elements
- Direct and indirect effects on gene expression

### Co-expression networks

Co-expression is a manifestation of the underlying regulatory network. If two genes are regulated by the same factors, chances are that these genes also are co-expressed, i.e.\ expressed at the same level regardless of changes in e.g.\ environment. In a mathematical framework, a co-expression network can be represented as a graph structure where the vertices are genes and the edges represent the degree of co-expression (\textcolor{red}{figure reference}). The consensus from a large number of studies is that co-expression networks (and biological networks in general) often are scale-free. What this means is that there are few genes with many connections to other genes (high degree) in the network and more genes with few connections (low degree) [@Barabasi1999].
If the network is disturbed by random permutations, such as mutations, genes with a high degree are less likely to be targeted, due to their low frequency in the network [@Whitacre2012]. Consequently, a scale-free network will be robust against random permutations.
<!-- A gene that is central in the network, i.e.\ have high degree, is believed to be involved in many different pathways/functions, and thus to be a critical gene. If that gene is perturbed in some way, the network might collapse, while this wouldn't be the case if a peripheral gene in the network was targeted [@Whitacre2012]. -->
Co-expression networks have also been found to be modular, that is, there are sub-networks in the global network that are more tightly connected to the inside of the module than to the outside. More often than not it is the case that these modules are enriched in functional categories such as Gene Ontology [@Ashburner:2000ja] terms or Kyoto Encyclopedia of Genes and Genomes [KEGG; @Kanehisa2000] pathways [@Langfelder2008; @Langfelder2011].

Studies have shown that co-expression networks are able to capture biologically relevant gene expression signatures. One example is a study performed in lake whitefish (\textit{Coregonus cupleaformis}) where researchers found network modules that were correlated with dwarfism among these fish [@Filteau2013]. Another example is a cancer study where gene expression signatures common across tumour types were identified using a co-expression network approach [@Doig2013].

- A sentence on gene expression not being a good proxy for protein abundance

### Quantifying gene expression

Similarly to genome sequencing, the estimation of gene expression has gotten a big boost by the development of high-throughput sequencing. In the case of gene expression, instead of extracting and sequencing the DNA, the mRNA is extracted and sequenced---RNA-Sequencing. This effectively creates a snapshot of the total mRNA abundance---the transcriptome---in the tissue of interest at the time of extraction. With the previously very popular microarray technology, this was also possible, but limited to the genes that were included on the array. With RNA-Sequencing, *all* mRNA in the cell can, theoretically, be sequenced, regardless of whether the gene is known or not.

The data from RNA-Sequencing is similar to that from DNA-Sequencing; reads originating from the sequenced molecules. In order to quantify gene expression these reads are aligned to either a reference genome, or a reference transcriptome. In addition to being able to measure the expression of all genes and not only known genes, the dynamic range is significantly wider in RNA-Sequencing compared to microarrays since the signal does not get saturated, and the noise levels are lower [@Wang2009].

- Computational challenges
