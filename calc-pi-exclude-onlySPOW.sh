#!/bin/bash
# cutting a vcf file and calculating nucleotide diversity

cut -f10,11 $1 | awk '
BEGIN{
   nd["0/0"] = 0.0; nd["0/1"] = 1.0; nd["1/1"] = 0.0;
}

{
  split($1,a,":"); split(a[2],acov,","); split($2,b,":"); split(b[2],bcov,",");
  totcov = acov[1]+acov[2]+bcov[1]+bcov[2];
  if (totcov < 167 && a[1] != "./." && b[1] != "./." && b[1] != "1/1") {
     rnd = b[1]; val=nd[rnd]; totval += val;
     if (val==0) {totzero+=1}
     else if (val==1) totone+=1;
     else if (val==0.5) tothalf+=1;
     else print "badval on line:" NR,val
   }
}
END{printf( "total: %f\t", totval); print "totzero: " totzero, "totone: " totone, "total 0.5: " tothalf}
'
