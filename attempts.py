# open the file - and read all of the lines.
attempts_file = 'attempts.txt'
# use strip to strip out spaces and trim the line.

data = [line.strip() for line in open(attempts_file, 'r')]

print len(data)

attempts_output = open('attempts.csv', 'w')
attempts_output.write('course,student number,email\n')
for item in data:
    entry = {}
    columns = item.split(' ')
    line = columns[23].split('?')[1].strip('",')
    values = line.split('&')
    attempts_output.write('%s,%s,%s\n' %
            (values[0].split('=')[1], values[3].split('=')[1],
                    values[2].split('=')[1]))
	
attempts_output.close()














#my_file = open(changes_file, 'r')
#data = my_file.readlines()

#data = [line.strip() for line in open(changes_file, 'r')]

# print the number of lines read
#print(len(data))
