import sys
import matplotlib.pyplot as plt
import numpy as np

in_file = sys.argv[1]

vals = []

with open(in_file, 'r') as infile:
    linenum = 0
    for line in infile:
        if linenum < 10000:
            line = line.strip()
            splitline = line.split()
            val = splitline[0]
            vals.append(val)
            linenum += 1
        else:
            break

x = np.asarray(vals, dtype=int)
p95 = np.percentile(x,95)
print p95

fig, ax = plt.subplots()

plt.hist(x)
plt.title("Coverage Histogram")
plt.xlabel("Coverage")
plt.ylabel("Frequency")
plt.axvline(p95, color='r')

standev = np.std(x)
standev5 = 5*standev

mu = np.mean(x)

textstr = 'mean = ' + str(mu) + '\n95th percentile = ' + str(p95) + '\n' + '$\sigma$' + " = " + str(standev) + "\n5*" + '$\sigma$' + " = " + str(standev5)
props = dict(boxstyle='round', facecolor='wheat', alpha=0.5)
ax.text(200, 4000, textstr, verticalalignment='top', bbox=props)

plt.savefig('coverage-graph.png', bbox_inches='tight')
plt.show()
