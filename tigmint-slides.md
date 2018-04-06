---
author: 'Shaun D Jackman'
date: '2018-04-19'
history: true
slideNumber: true
---

## Tigmint

### Correcting Misassemblies Using Linked Reads From Large Molecules

**Shaun Jackman** [\@sjackman][]

Benjamin P Vandervalk, Rene L Warren, Hamid Mohamadi, Justin Chu, Sarah Yeo, Lauren Coombe, Joerg Bohlmann, Steven JM Jones, Inanc Birol

| RECOMB-Seq 2018-04-19
| <https://sjackman.ca/tigmint-recomb-slides>
| [![Creative Commons Attribution License](images/cc-by.png)][cc-by]

[\@sjackman]: http://twitter.com/sjackman
[cc-by]: http://creativecommons.org/licenses/by/4.0/

## Shaun Jackman

| [BCCA Genome Sciences Centre][]
| Vancouver, Canada
| [\@sjackman][] &middot; [github.com/sjackman][] &middot; [sjackman.ca][]

| ![Shaun's head shot](images/sjackman.jpg)

[BCCA Genome Sciences Centre]: http://bcgsc.ca
[github.com/sjackman]: https://github.com/sjackman
[sjackman.ca]: http://sjackman.ca

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

## Tigmint

- Map reads to the assembly
- Group reads within *d* bp of each other (*d* = 50 kbp)
- Infer start and end coordinates of molecules
- Construct an interval tree of the molecules
- Each *w* bp region ought to be spanned by *n* molecules \
  (*w* = 1 kbp, *n* = 20)
- Identify regions with fewer than *n* spanning molecules
- Cut sequences at regions with insufficient coverage

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

| [BCCA Genome Sciences Centre][]
| Vancouver, Canada
| [\@sjackman][] &middot; [github.com/sjackman][] &middot; [sjackman.ca][]

**Tigmint** \
<https://github.com/bcgsc/tigmint>

**Slides** \
<https://sjackman.ca/tigmint-recomb-slides>

**Markdown source code** \
<https://github.com/sjackman/tigmint-recomb-slides>

Supplementary Slides
================================================================================

----------------------------------------

| ![Scatter plot of molecule start and end coordiantes](images/scatterplot.png)

## Graph of 10 kbp segments sharing barcodes

[![Graph of 10 kbp segments sharing barcodes](images/segments-graph.png)](images/segments-graph.pdf)
