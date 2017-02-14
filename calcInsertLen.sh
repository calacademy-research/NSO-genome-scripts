#/bin/bash
bioawk -c sam '
   function abs(v) {return v < 0 ? -v : v}
   and($flag,1) && and($flag,2) && and($flag,64) { # only look at reads paired and paired properly where this is the first read mapped
      $tlen = abs($tlen); # either this first read or the mate might be revcomped, absolute value means either case ok
      N+=1; S+=$tlen; S2+=$tlen * $tlen; # worksheet vars for mean and stddev
      #print $1, $3, $9 # testing
   }
   END {M=S/N; print "n="N", mean="M", stdev="sqrt ((S2-M*M/N)/(N-1))}
' "$@"
