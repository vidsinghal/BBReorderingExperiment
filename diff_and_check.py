import os 
import sys
import numpy as np

#helper script to diff stats as we reduce new files. 

dir_path = os.path.dirname(os.path.realpath(__file__))

FILE1 = dir_path + "/1.st"
FILE2 = dir_path + "/2.st" 

FILE_TO_SAVE_STATS = dir_path + "/stats_seen_so_far.txt" 

seen_stats = []
if (os.path.isfile(FILE_TO_SAVE_STATS)):
    FS = open(FILE_TO_SAVE_STATS, "r")
    seen_stats = FS.readlines()

print("We saw these stats previously\n")
print(seen_stats)
print("End\n")

F1 = open(FILE1, "r")
F2 = open(FILE2, "r")

f1_lines = F1.readlines() 
f2_lines = F2.readlines() 

#no diff seen
if (f1_lines == f2_lines):
    sys.exit(0)

f11 = [] 
f22 = []

for line in f1_lines:
    split_line = line.split(" - ")
    
    if len(split_line) > 1:
        print(split_line)
        f11.append(split_line[0].strip() + " - " +  split_line[1].strip())
                

for line in f2_lines:
    split_line = line.split(" - ")
    
    if len(split_line) > 1:
        print(split_line)
        f22.append(split_line[0].strip() + " - " + split_line[1].strip())


dif1 = np.setdiff1d(f11, f22)
dif2 = np.setdiff1d(f22, f11)
temp3 = np.concatenate((dif1, dif2))
print(list(temp3))

temp3_with_new_line = []

for line in temp3:
    temp3_with_new_line.append(line + "\n")


if (seen_stats != []):
    for line in temp3_with_new_line:
        if line not in seen_stats:
            print("Found a new stat!")
            print(line)
            exit(1)
    exit(0)

exit(1)



