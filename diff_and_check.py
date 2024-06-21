import os 
import sys
import numpy as np

#helper script to diff stats as we reduce new files. 
FILE1 = "1.st"
FILE2 = "2.st" 

FILE_TO_SAVE_STATS = "/g/g91/singhal2/stats_seen_so_far.txt" 

seen_stats = []
if (os.path.isfile(FILE_TO_SAVE_STATS)):
    FS = open(FILE_TO_SAVE_STATS, "r")
    seen_stats = FS.readlines()

print("We saw these stats previously\n")
print(seen_stats)
print("End\n")

F1 = open(FILE1, "r")
F2 = open(FILE2, "r")

F1_lines = F1.readlines() 
F2_lines = F2.readlines() 

#no diff seen
if (F1_lines == F2_lines):
    sys.exit(0)

dif1 = np.setdiff1d(F1_lines, F2_lines)
dif2 = np.setdiff1d(F2_lines, F1_lines)
temp3 = np.concatenate((dif1, dif2))
print(list(temp3))

if (seen_stats != []):
    for line in temp3:
        split_line = line.split(" - ")
        if split_line[1] not in seen_stats:
            print(split_line[1])
            exit(1)
    exit(0)

exit(1)



