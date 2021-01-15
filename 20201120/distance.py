import math

count = 5

infile = open('point.txt', 'r')
outfile = open('distance.txt', 'r+')
outfile.truncate()
outfile.seek(0)

for i in range(count):
	name = infile.readline()
	infile.readline()
	exp = infile.readline()
	infile.readline()
	sim = infile.readline()
	infile.readline()

	exp = exp.split()
	sim = sim.split()

	distance = 0
	for j in range(6):
		exp[j] = float(exp[j])
		sim[j] = float(sim[j])
		distance += math.pow(exp[j] - sim[j], 2)

	outfile.write('{}: {} e-11\n'.format(name[:-1], math.sqrt(distance)))

infile.close()
outfile.close()
