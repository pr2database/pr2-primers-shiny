## The PR2 primer database
---

version 2.1.0

![DOI](https://zenodo.org/badge/437795232.svg)](https://zenodo.org/badge/latestdoi/437795232)


An [interactive database](https://app.pr2-primers.org/) of eukaryotic rRNA primers and primer sets for metabarcoding studies compiled from the literature. 

### Database structure

* **Primers**. Primers have been mapped when possible onto the reference SSU sequence for _[Saccharomyces cerevisiae](http://apollo.chemistry.gatech.edu/RibosomeGallery/eukarya/S%20cerevisiae/SSU/index.html)_ ([FU970071](https://www.ncbi.nlm.nih.gov/nuccore/FU970071), 1799 nucleotides, first nucleotide mrearked as 1).  

* **Primer sets**. Primer sets for 18S rRNA have been tested against the [eukaryotic PR2 database](https://pr2-database.org/) version 5.1.1 that contains sequences from Eukaryota, Bacteria, Archaea and Eukaryota plastids. Results can be displayed interactively.

### Taxonomy

pr2-primers use a nine-level taxonomy from version [5.1.1 of the PR2 database](https://github.com/pr2database/pr2database/releases/tag/v5.1.1)

One of four "domains" can be selected:
* Archaea           
* Bacteria         
* Eukaryota      
* Eukaryota:plas - This corresponds to Eukaryota plastid sequences

### Panels

* **Primers**: table of primers that can be downloaded 
* **Primer sets**: table of primer sets that can be downloaded
* **Amplification - overview**: Give for all primer sets tested % of sequences amplified and amplicon size
* **Amplification - detail**: For one primer set tested, detail for different taxonomic levels (kingdom, supergroup, division, class)
* **Test your primer/probe**: Test a single primer or probe against PR2 version 4.12.0 and Silva seed 132
* **Test your primer set**: Test your primer set against PR2 version 4.12.0 and Silva seed 132
* **About**: Basic information on pr2-primers

### Errors

Please report errors or primer sets not listed here in the [Issues page of the PR2 primer database](https://github.com/pr2database/pr2-primers/issues).


### Citation

Vaulot, D., Mahé, F., Bass, D., & Geisen, S. (2021). [pr2-primer : An 18S rRNA primer database for protists](https://onlinelibrary.wiley.com/doi/abs/10.1111/1755-0998.13465). Molecular Ecology Resources, in press. DOI: 10.1111/1755-0998.13465

### Resources
* Website: https://app.pr2-primers.org/
* Docker: https://hub.docker.com/repository/docker/vaulot/pr2-primers
* Source code: https://github.com/pr2database/pr2-primers-shiny
* Scripts: https://pr2database.github.io/pr2-primers/PR2_Primers.html

### Maintainer
* Daniel Vaulot: vaulot@gmail.com

### Contributors to version 1

* Stefan Geisen:  stefan.geisen@wur.nl
* Fréderic Mahé: frederic.mahe@cirad.fr
* David Bass: david.bass@cefas.co.uk

---

### Versions
2.1.0 - 2025-10-10
* Use PR2 database version 5.1.1 with 9 levels

2.0.0 - 2023-04-15
* Use PR2 database version 5.0.0 with 9 levels instead of 8
* Add 24 primers and 9 primer sets
* Faster file loading using the qs R library
* Allow matches to prokaryotes and plastid sequences

1.1.1 - 2022-04-21
* Run on Google server and not on Docker anymore

1.1.0 - 2021-05-17
* Panel to test individual primer or probes.
* Add new primers and primer sets.

1.0.4 - 2021-01-26
* Add time out of 10 min: after 10 min of inactivity close browser window and stop app.

1.0.2 - 2020-12-25
* Add non-Metazoa primer and primer sets from Bass and del Campo 2020

1.0.1 - 2020-12-14
* Fix problem with V9 for bacteria

1.0.0 - 2020-11-11
* Initial version
