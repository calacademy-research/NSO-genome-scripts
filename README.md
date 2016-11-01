# NSO-genome-scripts
This is a repository for scripts and files associated with the Spotted Owl (Strix occidentalis) genome project.
  
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
total: 2687895.000000   totzero: 6790448 totone: 2687895 total 0.5:  
  
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
total: 2687895.000000   totzero: 6790448 totone: 2687895 total 0.5:  
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
total: 8046106.000000   totzero:  totone: 6613869 total 0.5: 2864474  
  
"total" gives the probability of difference summed across all sites  
"totzero" gives the number of sites where the probability of difference = 0  
"totone" gives the number of sites where the probability of difference = 1  
"total 0.5" gives the number of sites where the probability of difference = 0.5  
  
Authors: Zachary R. Hanna, zachanna@berkeley.edu; James B. Henderson  
  
This script relies on (other versions of these will probably also work):  
GNU cut version 8.21 (Ihnat, MacKenzie & Meyering, 2015)  
GNU Awk (GAWK) version 4.0.1 (Free Software Foundation, 2012)  
  
### Citing the repository
  
#### Authorship
Code authors: Zachary R. Hanna, zachanna@berkeley.edu; James B. Henderson  
README.md author: Zachary R. Hanna  
  
### References
Free Software Foundation 2012. GNU Awk . Version 4.0.1. Available at <https://www.gnu.org/software/gawk/>.  
Ihnat DM., MacKenzie D., Meyering J. 2015. cut (GNU coreutils). Version 8.21. Available at <http://www.gnu.org/software/coreutils/coreutils.html>.  
Matplotlib Development Team 2016. matplotlib. Version 1.5.1. Available at <http://matplotlib.org>.  
NumPy Developers 2016. NumPy. Version 1.11.1. Available at <http://www.numpy.org>.  
Python Software Foundation 2016. Python. Version 2.7.12. Available at <https://www.python.org>.  
