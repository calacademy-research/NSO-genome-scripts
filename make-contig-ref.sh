#!/bin/bash
bioawk '{print $seq}' asm.fa | awk 'BEGIN{FS="N{25,}"} {for(f=1;f<=NF;f++){c++; print ">Contig_" c "\n" $f}}' | fold -w 120 >contigs.fa
bwa index contigs.fa
