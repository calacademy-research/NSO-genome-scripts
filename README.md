# NSO-genome-scripts
This is a repository for scripts and files associated with the Northern Spotted Owl (*Strix occidentalis caurina*) genome project.

### vcf-coverage-calc.py
This script takes a coverage file as input where each line of the file has an integer giving the unfiltered allele depth summed across all of the alleles at the site. It then calculates the mean and standard deviation of the distribution and then outputs these values in a graph of the distribution of values.  

Usage:  
$ vcf-coverage-calc.py vcf-coverage.out  

Author: Zachary R. Hanna, zachanna@berkeley.edu  

This script relies on (other versions of these will probably also work):  
Python version 2.7.12 (Python Software Foundation, 2016)  
matplotlib version 1.5.1 (Hunter, 2007; Matplotlib Development Team, 2016)  
NumPy version 1.11.1 (NumPy Developers, 2016)  

###  calc-pi-exclude-onlySPOW.sh
This script calculates the mean number of nucleotide differences within one sample and outputs the probability of difference summed across all sites. One must divide this output value by the total length of the reference sequence in order to calculate the mean number of nucleotide differences per site within the sample.  

Usage:  
$ cat input.vcf | calc-pi-exclude-onlySPOW.sh  

Example output:  
```
total: 2687895.000000   totzero: 6790448 totone: 2687895 total 0.5:  
```  
"total" gives the probability of difference summed across all sites  
"totzero" gives the number of sites where the probability of difference = 0  
"totone" gives the number of sites where the probability of difference = 1  
"total 0.5" gives the number of sites where the probability of difference = 0.5  

Authors: Zachary R. Hanna, zachanna@berkeley.edu; James B. Henderson  

This script relies on (other versions of these will probably also work):  
GNU cut version 8.21 (Ihnat, MacKenzie & Meyering, 2015)  
GNU Awk (GAWK) version 4.0.1 (Free Software Foundation, 2012)  

### calc-pi-exclude-onlyBADO.sh
This script calculates the mean number of nucleotide differences within one sample and outputs the probability of difference summed across all sites. One must divide this output value by the total length of the reference sequence in order to calculate the mean number of nucleotide differences per site within the sample.  

Usage:  
$ cat input.vcf | calc-pi-exclude-onlyBADO.sh  

Example output:  
```
total: 2687895.000000   totzero: 6790448 totone: 2687895 total 0.5:  
```
"total" gives the probability of difference summed across all sites  
"totzero" gives the number of sites where the probability of difference = 0  
"totone" gives the number of sites where the probability of difference = 1  
"total 0.5" gives the number of sites where the probability of difference = 0.5  

Authors: Zachary R. Hanna, zachanna@berkeley.edu; James B. Henderson  

This script relies on (other versions of these will probably also work):  
GNU cut version 8.21 (Ihnat, MacKenzie & Meyering, 2015)  
GNU Awk (GAWK) version 4.0.1 (Free Software Foundation, 2012)  

### calc-pi-exclude.sh
This script calculates the mean number of nucleotide differences between two samples and outputs the probability of difference summed across all sites. One must divide this output value by the total length of the reference sequence in order to calculate the mean number of nucleotide differences per site between the samples.  

Usage:  
$ cat input.vcf | calc-pi-exclude.sh  

Example output:  
```
total: 8046106.000000   totzero:  totone: 6613869 total 0.5: 2864474  
```
"total" gives the probability of difference summed across all sites  
"totzero" gives the number of sites where the probability of difference = 0  
"totone" gives the number of sites where the probability of difference = 1  
"total 0.5" gives the number of sites where the probability of difference = 0.5  

Authors: Zachary R. Hanna, zachanna@berkeley.edu; James B. Henderson  

This script relies on (other versions of these will probably also work):  
GNU cut version 8.21 (Ihnat, MacKenzie & Meyering, 2015)  
GNU Awk (GAWK) version 4.0.1 (Free Software Foundation, 2012)  

### assemblathon-stats-ex.pl
This is a slightly modified version of the assemblathon_stats.pl script used for comparison of the Assemblathon 2 genome assemblies (Bradnam et al., 2013) that we modified to output the number of ACGT characters in the assembly instead of just the percentage of each character.  

Usage:  
$ assemblathon_stats_ex.pl assembly.fa  

Example output:  
```

---------------- Information for assembly 'assembly.fa' ----------------


                                         Number of scaffolds       8108
                                     Total size of scaffolds 1255541132
                                            Longest scaffold   15750186
                                           Shortest scaffold       1000
                                 Number of scaffolds > 1K nt       8095  99.8%
                                Number of scaffolds > 10K nt       1746  21.5%
                               Number of scaffolds > 100K nt        661   8.2%
                                 Number of scaffolds > 1M nt        303   3.7%
                                Number of scaffolds > 10M nt          9   0.1%
                                          Mean scaffold size     154852
                                        Median scaffold size       1904
                                         N50 scaffold length    3983020  L50 scaffold count         92
                                         N60 scaffold length    3012707  L60 scaffold count        129
                                         N70 scaffold length    2162240  L70 scaffold count        177
                                         N80 scaffold length    1545070  L80 scaffold count        246
                                         N90 scaffold length     618731  L90 scaffold count        372
                                                 scaffold %A      26.72  number of A         335479585
                                                 scaffold %C      18.80  number of C         236047187
                                                 scaffold %G      18.78  number of G         235796169
                                                 scaffold %T      26.70  number of T         335267593
                                                 scaffold %N       9.00  number of N         112950598
                                         scaffold %non-ACGTN       0.00
                             Number of scaffold non-ACGTN nt          0

                Percentage of assembly in scaffolded contigs      99.5%
              Percentage of assembly in unscaffolded contigs       0.5%
                      Average number of contigs per scaffold       36.2
Average length of break (>25 Ns) between contigs in scaffold        394

                                           Number of contigs     293362
                              Number of contigs in scaffolds     290120
                          Number of contigs not in scaffolds       3242
                                       Total size of contigs 1142649749
                                              Longest contig      94434
                                             Shortest contig          0
                                   Number of contigs > 1K nt     192650  65.7%
                                  Number of contigs > 10K nt      29212  10.0%
                                 Number of contigs > 100K nt          0   0.0%
                                   Number of contigs > 1M nt          0   0.0%
                                  Number of contigs > 10M nt          0   0.0%
                                            Mean contig size       3895
                                          Median contig size       2071
                                           N50 contig length       8249  L50 contig count      40724
                                           N60 contig length       6575  L60 contig count      56241
                                           N70 contig length       5096  L70 contig count      75976
                                           N80 contig length       3680  L80 contig count     102272
                                           N90 contig length       2219  L90 contig count     141646
                                                   contig %A      29.36  number of A         335479585
                                                   contig %C      20.66  number of C         236047187
                                                   contig %G      20.64  number of G         235796169
                                                   contig %T      29.34  number of T         335267593
                                                   contig %N       0.01  number of N             59215
                                           contig %non-ACGTN       0.00
                               Number of contig non-ACGTN nt          0

```
  
Author of modifications: James B. Henderson, jhenderson@calacademy.org  
Source of original script: Bradnam et al., 2013 (see References below)  
  
### make-contig-ref.sh
This script uses bioawk, awk, and fold to divide a scaffolded genome into contigs by breaking at 25 or more N characters. The script then indexes your new contig set with bwa. The script assumes that your scaffolded genome is named "asm.fa" and your output contig set will be named "contig.fa".  
  
Usage:  
$ ./make-contig-ref.sh  
  
Code author: James B. Henderson, jhenderson@calacademy.org  
  
This script relies on (other versions of these will probably also work):  
bioawk version 1.0 (Li, 2013)  
GNU fold version 8.21 (MacKenzie, 2013)  
GNU Awk (GAWK) version 4.0.1 (Free Software Foundation, 2012)  
  
### make-contig-ref.sh
This script uses bioawk to calculate the average and standard deviation of insert length for a .bam file.  
  
Usage:  
$ ./calcInsertLen.sh  
  
Code author: James B. Henderson, jhenderson@calacademy.org  
  
This script relies on (other versions will probably also work):  
bioawk version 1.0 (Li, 2013)  
  
### Citing the repository

#### Authorship
Code authors: Zachary R. Hanna, zachanna@berkeley.edu; James B. Henderson, jhenderson@calacademy.org  
README.md author: Zachary R. Hanna  

#### Version 1.0.0
[![DOI](https://zenodo.org/badge/72480558.svg)](https://zenodo.org/badge/latestdoi/72480558)  

Please cite this repository as follows:  

Hanna ZR, Henderson JB. 2017. NSO-genome-scripts Version 1.0.0. Zenodo. DOI: 10.5281/zenodo.805012  

### References
Bradnam KR., Fass JN., Alexandrov A., Baranay P., Bechner M., Birol I., Boisvert S., Chapman JA., Chapuis G., Chikhi R., Chitsaz H., Chou W-C., Corbeil J., Del Fabbro C., Docking TR., Durbin R., Earl D., Emrich S., Fedotov P., Fonseca NA., Ganapathy G., Gibbs RA., Gnerre S., Godzaridis E., Goldstein S., Haimel M., Hall G., Haussler D., Hiatt JB., Ho IY., Howard J., Hunt M., Jackman SD., Jaffe DB., Jarvis ED., Jiang H., Kazakov S., Kersey PJ., Kitzman JO., Knight JR., Koren S., Lam T-W., Lavenier D., Laviolette F., Li Y., Li Z., Liu B., Liu Y., Luo R., MacCallum I., MacManes MD., Maillet N., Melnikov S., Naquin D., Ning Z., Otto TD., Paten B., Paulo OS., Phillippy AM., Pina-Martins F., Place M., Przybylski D., Qin X., Qu C., Ribeiro FJ., Richards S., Rokhsar DS., Ruby JG., Scalabrin S., Schatz MC., Schwartz DC., Sergushichev A., Sharpe T., Shaw TI., Shendure J., Shi Y., Simpson JT., Song H., Tsarev F., Vezzi F., Vicedomini R., Vieira BM., Wang J., Worley KC., Yin S., Yiu S-M., Yuan J., Zhang G., Zhang H., Zhou S., Korf IF. 2013. Assemblathon 2: evaluating de novo methods of genome assembly in three vertebrate species. GigaScience 2:10. DOI: 10.1186/2047-217X-2-10.  
  
Free Software Foundation 2012. GNU Awk . Version 4.0.1. Available at <https://www.gnu.org/software/gawk/>.  
  
Hunter JD. 2007. Matplotlib: A 2D graphics environment. Computing In Science & Engineering. 9:90–95. doi: 10.1109/MCSE.2007.55.  
  
Ihnat DM., MacKenzie D., Meyering J. 2015. cut (GNU coreutils). Version 8.21. Available at <http://www.gnu.org/software/coreutils/coreutils.html>.  
  
Li H. 2013. bioawk. Version 1.0. Available at <https://github.com/lh3/bioawk>.  
  
MacKenzie D. 2013. fold (GNU coreutils). Version 8.21. Available at <http://www.gnu.org/software/coreutils/coreutils.html>.  
  
Matplotlib Development Team 2016. matplotlib. Version 1.5.1. Available at <http://matplotlib.org>.  
  
NumPy Developers 2016. NumPy. Version 1.11.1. Available at <http://www.numpy.org>.  
  
Python Software Foundation 2016. Python. Version 2.7.12. Available at <https://www.python.org>.  
