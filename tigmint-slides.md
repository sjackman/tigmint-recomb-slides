---
author: 'Shaun D Jackman'
date: '2018-04-19'
history: true
slideNumber: true
---

## Tigmint

### Correct Misassemblies Using Linked Reads From Large Molecules

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

![](images/sjackman.jpg)

[BCCA Genome Sciences Centre]: http://bcgsc.ca
[github.com/sjackman]: https://github.com/sjackman
[sjackman.ca]: http://sjackman.ca

----------------------------------------

![10x Genomics Chromium Linked Reads <http://www.10xgenomics.com/assembly/>](images/10xgenomics.png)

<aside class="notes">
- Large molecules of DNA (100 kbp and up) are isolated in partitions
- Each partition has its own barcode
- Reads from the same molecule share the same barcode
- One nanogram of input DNA with 10x Genomics Chromium
</aside>

## Linked Reads

- Call variants in repetitive regions
- Identify structural variants
- Phase variants

## Contigs and scaffolds come to an end due to...

- repeats
- sequencing gaps
- heterozygous variation
- misassemblies

## Misassemblies limit contiguity

particularly for highly contiguous assemblies.

Most scaffolding algorithms address repeats and gaps, but not misassemblies.

----------------------------------------

![](images/diagram-1.png)

----------------------------------------

![Correct misassemblies](images/diagram-1.png)

![](images/diagram-2.png)

----------------------------------------

![Correct misassemblies](images/diagram-1.png)

![Scaffold](images/diagram-2.png)

![](images/diagram-3.png)

----------------------------------------

![<https://github.com/bcgsc/tigmint>](images/tigmint-logo.png)

## Tigmint

- Map reads to the assembly
- Infer the start and end of each molecule
- Each *w* bp window ought to be spanned by *n* molecules
- Cut the sequence at positions with insufficient coverage

----------------------------------------

![Scatter plot of molecule start and end coordiantes](images/scatterplot.png)

----------------------------------------

[![Graph of 10 kbp segments sharing barcodes](images/segments-graph.png)](images/segments-graph.pdf)

## Menagerie of Misassemblies

- **Chimeric sequence**
- **Missing sequence** (deletion)
- Chimeric insertion
- Inversion
- Collapsed repeat

----------------------------------------

![](images/10824873:254952.png)

----------------------------------------

![Tigmint](images/jupiter.png)

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
