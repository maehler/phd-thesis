## Gene expression {#sec:gene-expression}

Genetic variation does not really have any significance if it does not manifest itself in a way that alters phenotype, and in an evolutionary perspective, affects survival or reproductive fitness.
One way that it can manifest itself is through gene expression.
Genes are pieces of DNA that are transcribed into messenger ribonucleic acid (mRNA), and subsequently translated into proteins.
This is a very simplified view of the biological reality involved in these processes.
At every step of the process there are different forks in the road that can be taken, and each of these forks will change the fate of that gene.
Such forks can lead to a gene eventually being translated into protein, or it might result in splicing out part of the gene before translation into a protein, therefore effectively producing an alternative protein from the same gene, or it could lead to the degradation of the mRNA, among numerous other examples.
These processes are also highly dynamic, responding to different kinds of stimuli, such as environmental changes.

![Schematic overview of gene expression.
The transcriptional machinery including the RNA polymerase (1) is recruited to the promoter of the gene to be expressed by transcription factors (2) that bind to the promoter and possibly enhancers (3) through specific motifs in the DNA (4).
The DNA is then translated to RNA by the RNA polymerase (5) and introns are spliced out (6) before the mature mRNA is translated into protein.
This is a simplified view of how coding regions are transcribed.](figures/transcription.pdf){#fig:gene-expression width=100%}

### Regulation of gene expression {#sec:regulation-of-gene-expression}

As stated in @sec:genetic-variation, the regulatory genome has received ever more attention throughout the last 15 years.
New studies increasingly identify examples where protein sequence is identical between vastly different phenotypes, but where changes in gene regulation is instead responsible for the phenotypic variation.
Examples of this are beak length [@Abzhanov2006] and beak shape [@Lamichhaney2015] in Darwin's finches, and the previously mentioned differences between humans and chimpanzees [@Pollard2006; @Polavarapu2011].
In the study of Darwin's finches by @Lamichhaney2015, one of the genes that was associated with the differences in beak shape was a transcription factor (TF).
Transcription factors are proteins that bind to promoter regions upstream of genes and that consequently recruit the transcriptional machinery involving the RNA polymerase ([@fig:gene-expression]).
The regions of a genome that transcription factors recognise are commonly referred to as motifs.
They are short DNA sequences with a specific composition that is meant to matches the binding residues in the active site of a transcription factor protein.
These motifs are often degenerate, i.e.\ some positions in the motif can have a number of different DNA bases without affecting function, and can thus be difficult to detect [@Stormo2000].
It is also very difficult to predict the effect of a single mutation in one of these binding sites.
One recent study characterised the effect on gene expression by somatic mutations in cancer tumours and found that many of the genes displayed altered regulation as a result of mutations in transcription factor binding sites [@Mathelier2015].
This study emphasises the important role that the regulatory genome plays in complex disease.

There are several approaches for identifying regulatory motifs, and perhaps the most common method is to align sequences thought to have a regulatory function and identify conserved regions among these sequences.
Sequences to consider could be groups of genes with similar expression profiles (co-expressed genes) or genes involved in the same biochemical pathway.
An approach in selecting representative sets of sequences that increases detection power involves including multiple related species in addition to the species studied, so called phylogenetic footprinting [@Tagle1988; @Blanchette2002].
The promoter regions of orthologous genes---the same gene in different species ---are aligned, and assuming that regions with a regulatory function accumulate mutations slower than surrounding, non-function, regions, conserved regions are identified.

Transcription factors play one role in the regulation of gene expression.
They can either activate or repress gene expression, and in many cases several transcription factors, both activators and repressors, are involved in determining the final regulatory output for a gene, i.e.\ how highly expressed it will be.
Combinatorial relationships make it very difficult to test, or even computationally explore, all regulatory mechanisms in order to explain the expression patterns of a gene.
In a study that attempted to dissect the combinatorial nature of gene expression regulation [@Street2011], the authors were able to explain gene expression inside transcriptional modules computationally based on the expression of the regulators.
In this case, the dimensionality of the search space was reduced by limiting the number of studied genes to those that were expressed in a particular tissue---aspen leaves.
Furthermore, the regulators considered for each module were determined in an iterative fashion, where a new regulator was only added if it increased the predictive power of the model.

Most genes are transcribed at some point in the lifetime of an organism, but this could possibly be at a single time point in a specific tissue.
Thus, it is easy to see that there must be a very complex regulatory system orchestrating transcription.
Transcription factors have to be expressed, and they in turn regulate the expression of some other gene(s) that in turn might act in a feedback loop to regulate the expression of itself.
This quickly scales to form a complex network that is not easy to disentangle.
To further complicate things, even if all factors needed to transcribe a particular gene are available, the gene might still not be expressed if the 3D structure of the DNA is not arranged in a configuration that allows access to the transcription factor binding sites, for example.
In order for e.g.\ enhancers to act properly, they need to be physically close to the gene it acts upon ([@fig:gene-expression]).
The 3D structure of DNA is part of what is known as epigenetics; the heritable changes in gene expression that are not caused by changes in DNA sequence [@Richards2006].
Another type of epigenetic modification that influences gene expression is the methylation of promoter regions which can block transcription factors from binding [@Siegfried1999a; @Medvedeva2014].

Due to this combined complexity, most studies of regulatory networks have so far been limited to smaller sets of genes [@Chai2014].

### Quantifying gene expression

Similar to genome sequencing, the estimation of gene expression received a big boost from the development of high-throughput sequencing.
In the case of gene expression, instead of extracting and sequencing the DNA, the mRNA is extracted, reverse transcribed into complementary DNA (cDNA) and this is then sequenced---a process referred to as RNA-Sequencing.
This effectively creates a snapshot of the abundance of all transcribed RNAs---the transcriptome---in a tissue of interest at the time of extraction.
The last part of this sentence is something that is very important to consider, and we will come back to this in [@sec:limitations].
With the previously very popular microarray technology, relative quantification of transcript abundance was also possible, but limited to the genes that were included on the array, among other limitations.
With RNA-Sequencing, *all* mRNA in the cell can, theoretically, be sequenced, regardless of whether the gene expressing it has previously been identified and annotated, or not.

The data from RNA-Sequencing is similar to that from DNA-Sequencing in that it consists of sequence reads based on a set of template sequences. In addition to being able to measure the expression of all genes and not only known genes, the dynamic range of RNA-Sequencing is significantly wider compared to microarrays since the signal does not get saturated, and the noise levels are lower [@Wang2009].
In order to quantify gene expression, reads are aligned to either a reference transcriptome (all known RNAs in the organisms) or a reference genome (all DNA).
Both approaches have their advantages and disadvantages, but perhaps the most obvious disadvantage of using a reference genome is that only known gene products will be detected if the reads are aligned to a reference transcriptome.
Aligning to a reference genome means that no prior information about known genes is used; if reads map to an unannotated region of the genome, then something is expressed in that region.
One problem of aligning reads to the genome is that splice junctions have to be handled.
A splice junction is the border between an exon and an intron, and these are not present in the sequenced mature mRNA ([@fig:gene-expression]).

A problem that exists for both alignment methods is multi-mapping reads---reads that map to multiple locations in the genome/transcriptome.
Duplicated genes, for example, might result in multi-mapping reads.
Even if the genes have diverged when it comes to their regulation, their coding sequences can be more or less identical, and given a read produced from either of the duplicated copies one cannot confidently say from which gene the read originated.

Another problem slightly related to multi-mapping reads is that of alternative splicing variants.
Splice variants are mRNAs that are produced by the same gene, but they have different composition of exons.
Some variants might be missing an exon that other transcripts have, for example, and these transcripts are even harder to separate than duplicated genes.
One possible way around the problem is to look at the expression of exons, and not genes or transcripts as a whole [@Anders2012].

Another more recent approach to read alignment is a collection of methods referred to as "alignment free" that are utilised in software such as sailfish [@Patro2014] and kallisto [@Bray2016].
The principle of these methods is to not care about the exact location of every read, instead to focus on which transcript the read is compatible with.
These types of methods are quite new and have yet to be thoroughly tested, but they are in any case very interesting simply due to their speed; kallisto is 150--350 times faster than software that traditionally has been used for quantifying gene expression in RNA-Seq data [@Bray2016].

We have developed our own pipeline for read processing and mapping, that was utilised throughout this thesis [@Delhomme2014].

### Co-expression networks {#sec:coexpression}

When two genes have similar expression profiles they are said to be co-expressed. By a gene's expression profile we mean its quantified expression across a number of tissues, time points, conditions, or treatments.
Co-expression can be seen as a manifestation of the underlying regulatory network---if two genes are regulated by the same factors, it is expected that these genes also are co-expressed.
In contrast to the regulatory network, the co-expression network is simple to construct, with the simplest approach being to calculate the correlation between all pairs of genes.
A co-expression network can be represented as a graph structure where the vertices are genes and the edges represent the degree of co-expression ([@fig:co-expression]).
The consensus from a large number of studies is that co-expression networks (and biological networks in general) often are scale-free.
What this means is that there are few genes with many connections to other genes (high degree centrality) in the network and more genes with few connections (low degree centrality) [@Barabasi1999].
If the network is disturbed by random perturbations, such as mutations, genes with a high degree centrality are less likely to be targeted, due to their low frequency in the network [@Whitacre2012].
Consequently, a scale-free network will be robust against random perturbations.
Another measure of centrality is betweenness centrality which is a measure of how often a node is part of the shortest paths between all pairs of nodes in the network ([@fig:co-expression]).
Co-expression networks have also been found to be modular, that is, there are sub-networks in the global network that are more tightly connected to the inside of the module than to the outside.
More often than not it is the case that these modules are enriched in functional categories such as Gene Ontology [@Ashburner:2000ja] terms or Kyoto Encyclopedia of Genes and Genomes [KEGG; @Kanehisa2000] pathways [@Langfelder2008; @Langfelder2011].

![If the expression of two genes is correlated they are said to be co-expressed.
This can be represented as a graph, or network, structure where each node represents a gene, and the edges between nodes represent significant co-expression.
Modules in the network are defined as sub-networks that have a stronger connections to genes inside the module compared to genes outside the module.
The modules are here represented by background colour.
Nodes are said to have a high degree centrality if they have many connections to other genes, and these nodes can also be referred to as hub nodes.
Nodes with a high betweenness centrality are genes that act as a connection between many other pairs of nodes in the network.
These are typcially nodes that connect modules with each other.](figures/coexpression.pdf){#fig:co-expression width=100%}

Studies have shown that co-expression networks can be useful vehicles in
capturing and describing biologically relevant gene expression signatures.
One example is a study performed in lake whitefish (\textit{Coregonus clupeaformis}) where researchers found network modules that were correlated with dwarfism [@Filteau2013].
Another study identified gene expression signatures common across cancer tumour types using a co-expression network approach [@Doig2013].

As previously stated, the co-expression network is a manifestation of the underlying regulatory network, but it is also important to remember that the co-expression network is only a very simple representation of the correlation in gene expression levels.
It only captures the state of mRNA in the cell at the time of sampling, and it is not necessarily a representation of the corresponding protein abundance, or of protein--protein interactions.
Two proteins that *can* interact *will* not necessarily interact just because their corresponding transcripts are expressed at the same time [@Vogel2012].
However, if two genes are expressed simultaneously in a sufficiently high number of different conditions, it is likely that they share at least some of their regulatory mechanisms.
One study exploring this in *Arabidopsis* used network cliques---sub-networks where all nodes are connected to all other nodes---to identify potential transcription factor binding sites [@Zheng2011Large].
They found that regulatory motifs identified in cliques that contained many genes targeted by the transcription factor E2Fa in many cases corresponded to the previously verified binding site of that transcription factor.
