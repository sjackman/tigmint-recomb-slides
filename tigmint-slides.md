---
pagetitle: 'Tigmint: Correcting Misassemblies Using Linked Reads From Large Molecules'
author: 'Shaun D Jackman'
date: '2018-04-19'
history: true
slideNumber: true
---

## Tigmint

### Correcting Misassemblies Using Linked Reads From Large Molecules

**Shaun Jackman** [\@sjackman][]

Lauren Coombe, Justin Chu, Rene L Warren, Benjamin P Vandervalk, Sarah Yeo, Zhuyi Xue, Hamid Mohamadi, Joerg Bohlmann, Steven JM Jones, Inanc Birol

| RECOMB-Seq 2018-04-19
| <https://sjackman.ca/tigmint-recomb-slides>
| Funded by Genome Canada &middot; Genome BC &middot; NIH &middot; NSERC
| [![Creative Commons Attribution License](images/cc-by.png)][cc-by]

[\@sjackman]: http://twitter.com/sjackman
[cc-by]: http://creativecommons.org/licenses/by/4.0/

## Shaun Jackman

| [Birol Bioinformatics Technology Lab](http://www.birollab.ca)
| [BC Cancer Genome Sciences Centre](http://bcgsc.ca) &middot; Vancouver, Canada
| [\@sjackman][] &middot; [github.com/sjackman](https://github.com/sjackman) &middot; [sjackman.ca](http://sjackman.ca)
| ![Shaun's head shot](images/sjackman.jpg)

----------------------------------------

![10x Genomics Chromium Linked Reads <http://www.10xgenomics.com/assembly/>](images/10xgenomics.png)

## Linked Reads

- Call variants in repetitive regions
- Identify structural variants
- Phase variants
- Genome sequence assembly
- Scaffolding

## Contigs and scaffolds come to an end due to...

- repeats
- sequencing gaps
- structural variation
- misassemblies

## Misassemblies limit contiguity

particularly for highly contiguous assemblies.

Most scaffolding tools do not correct misassemblies.

----------------------------------------

| ![Misassembled](images/diagram-1.png)

----------------------------------------

| ![Misassembled](images/diagram-1.png)
| Correct misassemblies
| ![Correct misassemblies](images/diagram-2.png)

----------------------------------------

| ![Misassembled](images/diagram-1.png)
| Correct misassemblies
| ![Correct misassemblies](images/diagram-2.png)
| Scaffold
| ![Scaffold](images/diagram-3.png)

----------------------------------------

![<https://github.com/bcgsc/tigmint>](images/tigmint-logo.png)

## Method

::: incremental

- Map reads to the assembly
- Group reads within *d* bp of each other (*d* = 50 kbp)
- Infer start and end coordinates of molecules
- Construct an interval tree of the molecules
- Each *w* bp region ought to be spanned by *n* molecules \
  (*w* = 1 kbp, *n* = 20)
- Identify regions with fewer than *n* spanning molecules
- Cut sequences at regions with insufficient coverage

:::

----------------------------------------

| ![IGV screen shot](images/10824873:254952.png)

----------------------------------------

| ![Jupiter plot](images/jupiter.png)

## Results

- Assembly of human HG004 with PE, MP, and linked reads
- Scaffolding with ARCS improved NGA50 from 3 to 8 Mbp
- Tigmint reduced misassemblies by 216 (27% reduction)
- Tigmint + ARCS improved NGA50 over five-fold to 16 Mbp
- Improves long read assemblies too! (see poster)

## Conclusion

- Scaffolding after correcting with Tigmint yields an assembly both more correct and more contiguous
- Linked reads permit cost-effective assembly of large genomes using high-throughput sequencing

fin
================================================================================

## Shaun Jackman

| [Birol Bioinformatics Technology Lab](http://www.birollab.ca)
| [BC Cancer Genome Sciences Centre](http://bcgsc.ca) &middot; Vancouver, Canada
| Vancouver, Canada
| [\@sjackman][] &middot; [github.com/sjackman](https://github.com/sjackman) &middot; [sjackman.ca](http://sjackman.ca)

**Tigmint** \
<https://github.com/bcgsc/tigmint>

**Slides** \
<https://sjackman.ca/tigmint-recomb-slides>

**Markdown source code** \
<https://github.com/sjackman/tigmint-recomb-slides>

Supplementary Slides
================================================================================

----------------------------------------

![Assemblies of HG004](images/metrics.png)

Supernova uses linked reads only.
Other use PE + MP + linked reads.

----------------------------------------

![Long read assemblies of HG004](images/metrics-sms.png)

----------------------------------------

| ![Scatter plot of molecule start and end coordiantes](images/scatterplot.png)

## Graph of 10 kbp segments sharing barcodes

[![Graph of 10 kbp segments sharing barcodes](images/segments-graph.png)](images/segments-graph.pdf)
