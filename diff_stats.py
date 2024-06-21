import os 
import sys
import numpy as np

#Save newly seen stats to the register.
FILE_TO_SAVE_STATS = "/g/g91/singhal2/stats_seen_so_far.txt" 

FILE1 = str(sys.argv[1])
FILE2 = str(sys.argv[2])

seen_stats = []
if (os.path.isfile(FILE_TO_SAVE_STATS)):
    FS = open(FILE_TO_SAVE_STATS, "r")
    seen_stats = FS.readlines()    

print("We have seen the following stats previously.\n")
print(seen_stats)
print("End.\n")

F1 = open(FILE1, "r")
F2 = open(FILE2, "r")

F1_lines = F1.readlines() 
F2_lines = F2.readlines() 


print("Print the difference in statistics:\n")
dif1 = np.setdiff1d(F1_lines, F2_lines)
dif2 = np.setdiff1d(F2_lines, F1_lines)
temp3 = np.concatenate((dif1, dif2))
print(list(temp3))

for line in temp3:
    split_line = line.split(" - ")
    seen_stats.append(split_line[1])

seen_stats = set(seen_stats)
#write the stats to the file:
f = open(FILE_TO_SAVE_STATS, "w")
for line in seen_stats:
    f.write(line)

f.close()






