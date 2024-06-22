import os 
import sys
import numpy as np

dir_path = os.path.dirname(os.path.realpath(__file__))

#Save newly seen stats to the register.
FILE_TO_SAVE_STATS = dir_path + "/stats_seen_so_far.txt" 

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

f1_lines = F1.readlines() 
f2_lines = F2.readlines() 

f11 = [] 
f22 = []

for line in f1_lines:
    split_line = line.split(" - ")
    
    if len(split_line) > 1:
        print(split_line)
        f11.append(split_line[0].strip() + " - " +  split_line[1].strip() + "\n")
                

for line in f2_lines:
    split_line = line.split(" - ")
    
    if len(split_line) > 1:
        print(split_line)
        f22.append(split_line[0].strip() + " - " + split_line[1].strip() + "\n")

dif1 = np.setdiff1d(f11, f22)
dif2 = np.setdiff1d(f22, f11)
temp3 = np.concatenate((dif1, dif2))
print("Print the difference in statistics:\n")
print(list(temp3))

for line in temp3:
    seen_stats.append(line)

seen_stats = set(seen_stats)
#write the stats to the file:
f = open(FILE_TO_SAVE_STATS, "w")
for line in seen_stats:
    f.write(line)

f.close()






