## Genetic variation {#sec:genetic-variation}

### The molecule of life {#sec:molecule-of-life}

All living organisms have at least one thing in common: they have a genome.
It will not look the same in different species, or even individuals of the same species, but the fundamentals are the same; there are four nucleotides, adenine (A), cytosine (C), guanine (G) and thymine (T), that form the molecule deoxyribonucleic acid, more commonly known as DNA.
The well known double-helix structure of DNA was discovered in the 1950s, and in the paper by @Watson1953 the second sentence reads: "This structure has novel features which are of considerable biological interest." This might be one of the biggest understatements in modern science.
The DNA is organised into larger units called chromosomes, and the number of chromosomes vary from species to species.
Humans, for example, have 23 chromosomes and is a diploid organism---it has two copies of each of the chromosomes.
European aspen (\textit{Populus tremula}) has 19 chromosomes, and is also a diploid organism.
Being diploid means that every gene (and most other pieces of DNA for that matter) exist in two copies---two alleles.
Whenever a cell divides, the genetic information has to be copied so that each of the daughter cells gets their own copy of the genome.
With this process, perhaps *the* most fundamental property of biology manifests itself---erroneous copying of DNA.
Without errors in this process, life as we know it would not exist---or should we say evolve.
These errors introduce variation into the genetic material, and this variation can take different shapes.
Errors in the DNA are known as mutations, and one type of mutation are single nucleotide polymorphisms (SNPs).
As the name implies, this type of mutation changes a single base in the genome into another, and these are the type of mutations this thesis will mostly focus on. However, we will also look at more elaborate mutations such as the duplication of genes or the entire genome.

The central dogma of molecular biology states that information flows from DNA to protein via messenger ribonucleic acid (mRNA), and information cannot flow from protein to DNA [@Crick1958].
When we talk about genes in this context, they are the parts of DNA that are transcribed into mRNA, and eventually translated into protein.
Since the DNA alphabet only contains four letters, and the protein alphabet contains twenty letters, there is not a one-to-one relationship between mRNA and protein, but units of three nucleotides (codons) define one amino acid, which constitute the building blocks of proteins.
Proteins then act as the workers and the building blocks of the cell.
The parts of the DNA that are translated into proteins are referred to as coding DNA, while other parts of the DNA are referred to as non-coding.
Non-coding regions of the genome can also be transcribed and mostly have regulatory functions, but also act as structural elements, for example 16S ribosomal RNA [@Brimacombe1985].

In the mid 19th century, traits were believed to be blended when inherited, but Mendel's experiments showed that this was not always the case.
From experiments he concluded that there must be different variants of some hidden factor that give rise to the differences in traits in the offspring generation.
These factors are what we today refer to as genes, and the variants of these genes are alleles.

If mutations are introduced into coding regions of the genome, one of three things might happen: no effect at all (silent mutation), an amino acid substitution (mis-sense mutation), or the introduction of a stop codon that will prematurely halt the translation process (non-sense mutation).
Fifteen years ago, these types of mutations were the focus of biological studies as everything outside of genes was largely discarded as non-functional "junk DNA".
Since then, with the arrival of cheap and high-throughput sequencing technologies, the focus and understanding has changed.
Although the majority of "junk DNA" is not expressed and translated explicitly, it does facilitate or influence the expression of genes and can contribute to the control of when and at what levels genes are expressed.
These parts of the genome consist of, amongst other components, promoters, enhancers, and non-coding RNAs (microRNA, long non-coding RNA [lncRNA or lincRNA], transport RNA [tRNA], ribosomal RNA [rRNA], etc.) which all have different roles in regulating gene expression.
tRNA and rRNA are integral components in translation of mRNA to protein, while other types of non-coding RNA have been shown to have regulatory properties [@Gurtan2013; @Yoon2013].

It might sound as though regulatory DNA is something that has been discovered during the past fifteen years, but this is not the case at all.
Regulatory elements in non-coding regions of the genome have been known and, to some extent, elucidated since at least the 1960's with the description of the regulation of the \textit{lac} operon by François Jacob and Jacques Monod [-@Jacob1961].
Even though these types of regulatory mechanisms have been known for a long time, it is only the developments in the past 10 years or so that have made large scale analysis of these types of regulatory mechanisms possible.
This component of the genome is today commonly referred to as the regulatory genome, and a plethora of studies have emerged that identify and elucidate the biological function of this in more detail [@Istrail2007], such as the ENCODE project that has the goal of identifying all functional elements in the human genome [@Feingold2004]\footnote{One could also argue the projects like ENCODE help drive the technological development.}.
Gene expression and some more details of the regulatory genome will be presented in more detail in [@sec:gene-expression].

Given the diversity of the genome in terms of function, it is very hard to predict what effect different mutations will have on individual phenotypes.
While it is easy to predict the effect that mutations in coding regions will have on the amino-acid composition of a protein, predicting the effects that this change will have on protein function is less simple.
To then understand how that altered function will later influence phenotype is substantially harder again.
Understanding, from sequence alone, the effect of mutations that modify gene regulation are much harder still, and they usually require extensive experimental validation [@Stern2000].
New efforts, such as ENCODE, will enable researchers to more easily determine what effect mutations will have.

Humans and chimpanzees are said to share as much as 99% of the coding regions of the genome, and a lot of research has focused on discovering the genomic differences that give rise to the phenotypic differences between humans and chimpanzees.
Several studies have found that most of the differences are located in non-coding regions, i.e.\ potential regulatory regions [@Pollard2006; @Polavarapu2011].
So far, most of this variation has only been quantified; developing an understanding of how these differences determine functional effects is a challenge at least an order of magnitude more complicated.
Increasingly, efforts are being poured into the problem of predicting the effect of mutations in non-coding regions, and in the past few years we have seen the development of tools that try to predict the effect that SNPs will have on transcription factor binding affinity [@Macintyre2011; @Zuo2015] as well as general regulatory effects [@Makarov2012] based on existing databases.

Another important source of genetic variation are gene and genome duplications.
Returning to the comparison between humans and chimpanzees, studies have shown that gene duplication plays an important role in explaining phenotypic differences [@Cheng2005; @Blekhman2009].
In addition, it has been shown that that single gene and whole genome duplications play an important role in speciation in plants, i.e.\ the formation of new species [@Lynch2000; @Vallejo-Marin2015], and that they likely explain Darwin's "abominable mystery"---the explosive radiation of species in the angiosperm lineage [@Cui2006; @Friedman2009].
Approximately 15% of angiosperm speciation events are accompanied by a genome duplication event [@Wood2009], and all flowering plants share at least one genome  duplication event in their evolutionary history [@Jiao2011; @Muhlhausen2013a].
In *Populus* species (poplars, aspens, and cottonwoods), a whole genome duplication event occurred about 65 million years ago [@Tuskan2006].

![Schematic example of genetic variation.
Each of the four diploid individuals has two alleles for each locus representing intergenic sequences (blue), long-range regulatory elements (red), promoters (yellow), and genes (green).
Polymorphisms where one of the alleles does not match the reference is indicated by black lines.
A gene duplication is illustrated as well where individual three has a duplication of both alleles while individual four only has a duplication of one of the alleles.](figures/genetic_variation.pdf){#fig:genetic-variation width=100%}

### Quantifying genetic variation

Technological advancements in the past two decades have led to a revolution in biology.
Genome sequencing, i.e.\ the process of determining the order of nucleotides in the genome, has become very affordable.
The $1000 human genome has been a long-time vision, and during my PhD period, became a reality [@CheckHayden2014]\footnote{Depending somewhat on how you count.}.
It has never been this cheap or easy to obtain a the complete genome sequence of an organism, and this clearly has huge potential for characterising the genetic variation among individuals in a population.

The process of sequencing an individual involves extracting the DNA, randomly fragmenting the DNA, and then determining the sequence of nucleotides for each DNA fragment.
The sequencing is then performed until the mean number of sequenced fragments, or reads, for each position in the genome reaches a the required depth.
There are a number of ways that genomic variation can be quantified from high-throughput sequencing data, but the most common approach today is to align the sequencing reads against a reference genome, that is, a genome sequence that has already been determined.
With this approach it is possible to quantify genetic variation by comparing the read sequences with the reference sequence.
In the case of diploid organisms we expect to see two alleles for each locus.
If the locus is homozygous, i.e.\ the two alleles are identical, then the reads originating from that locus should be idential.
Conversely, if the locus is heterozygous, i.e.\ the two alleles are different, then the reads should ideally divide into two groups.
Depending on the number of reads that support the variant and the quality of the reads, the variant will be detected, or called.

Different types of prior knowledge can be incorporated in the variant calling in order to increase precision, such as known variants from databases such as dbSNP [@Sherry2001].
Working with non-model, or even non-human organisms often mean that these types of resources are not available, at least not to the same extent.

<!-- Genetic variants occur with different frequencies within a population.
In order to detect rare variants with reasonable statistical power, you need a correspondingly large sample size.
In some parts of the literature, rare variants are believed to be the largest contributors to phenotypic variance.
-->
