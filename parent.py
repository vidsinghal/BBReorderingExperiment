import os 
import subprocess
import hashlib
import re
import statistics
import sys
import numpy as np


dir_path = os.path.dirname(os.path.realpath(__file__))

use_opt = True

INPUTS = dir_path + "/samples/"

INTERESTING_FILES = ""
if use_opt:
    INTERESTING_FILES = dir_path + "/INTERESTING_FILES_OPT/"

if (not use_opt):
    INTERESTING_FILES = dir_path + "/INTERESTING_FILES_DISABLE_STATS/"


SRC = dir_path + "/samples/"

if not os.path.exists(INTERESTING_FILES):
    os.mkdir(INTERESTING_FILES)

LLVM_CLANG= dir_path + "/llvm-project/build/bin/clang"
LLVM_OPT= dir_path + "/llvm-project/build/bin/opt"
LLVM_LLC= dir_path + "/llvm-project/build/bin/llc"

LLVM_REDUCE= dir_path + "/llvm-project/build/bin/llvm-reduce"

LLVM_DIS=dir_path + "/llvm-project/build/bin/llvm-dis"


num_iterations = 200

HASHES = []

FILE_TO_SAVE_STATS = dir_path + "/stats_seen_so_far.txt" 

rm_stats_register = "rm " + FILE_TO_SAVE_STATS
print(rm_stats_register)
code_rm = subprocess.call(rm_stats_register, shell=True)

def common_member(a, b):
    result = [i for i in a if i in b]
    return list(set(result))

def notInFirst(a, b):
    result = [i for i in a if i not in b]
    return list(set(result))

NUM_FILES = 1000
for i in range(NUM_FILES):
    
    input_to_reduce = INPUTS + str(i) + ".bc"

    print("Reducing input: ")
    print(input_to_reduce)
    print("\End.")

    rm_command_before_new_file = "rm 1 2 1.st 2.st 1.stats 2.stats reduced.bc reduced.ll"
    print(rm_command_before_new_file)
    code_rm = subprocess.call(rm_command_before_new_file, shell=True)

    #run llvm reduce
    if (not use_opt):
        command_str_llvm_reduce = LLVM_REDUCE + " " + "--test " + "script.sh " + input_to_reduce
        print(command_str_llvm_reduce)
        code_llvm_reduce = subprocess.call(command_str_llvm_reduce, shell=True)

    if (use_opt):
        command_str_llvm_reduce = LLVM_REDUCE + " " + "--test " + "script2.sh " + input_to_reduce
        print(command_str_llvm_reduce)
        code_llvm_reduce = subprocess.call(command_str_llvm_reduce, shell=True)


    print(code_llvm_reduce)

    #hash the binary and store it in a new folder 
    if (os.path.isfile("reduced.bc")):

        f = open("reduced.bc", "rb")
        data = f.read()
        file_hash = hashlib.sha256(data).hexdigest()
        
        if (file_hash not in HASHES):

            #check if the file is small sized. 
            gen_llvm_dis_cmd = LLVM_DIS + " " + "reduced.bc"
            code_gen_llvm_dis_cmd = subprocess.call(gen_llvm_dis_cmd, shell=True)
            
            ff = open("reduced.ll", "r")
            data2 = ff.readlines()


            print("Saw file with data of length: ")
            print(len(data2))
            print("End data length\n")

            #give up if file is more than 20 lines long. 
            if len(data2) > 50:
                continue

            print("Found reasonable size file, continuing...")

            # Make a directory for the reduced files to be stored     
            if not os.path.exists(INTERESTING_FILES + "/" + str(i) + "/"):
                os.mkdir(INTERESTING_FILES + "/" + str(i) + "/")

            HASHES.append(file_hash)
            gen_cpy = "cp " + "reduced.bc " + INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc"
            print(gen_cpy)
            code_cp = subprocess.call(gen_cpy, shell=True)

            gen_cpy_ll = "cp " + "reduced.ll " + INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".ll"
            print(gen_cpy_ll)
            code_cp = subprocess.call(gen_cpy_ll, shell=True)

            # --stop-before=block-placement-stats
            # --disable-block-placement
            if (not use_opt):

                #compile original using opt and llc 
                compile_original_opt = LLVM_OPT + " -O3 " +  INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc"
                subprocess.call(compile_original_opt, shell=True)
                compile_original_llc = LLVM_LLC + " -O3 --disable-block-placement --stats --info-output-file=" + INTERESTING_FILES + "/" + str(i) + "/" + "original.stats " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc"
                subprocess.call(compile_original_llc, shell=True)

                #store dis-assembly
                dis_orignal = LLVM_DIS + " " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "original.ll"
                subprocess.call(dis_orignal, shell=True)
            
                #compile reordered using opt and llc
                compile_reordered_opt = LLVM_OPT + " --passes='default<O3>,reorder-code' " +  INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc"
                subprocess.call(compile_reordered_opt, shell=True)
                compile_reordered_llc = LLVM_LLC + " -O3 --disable-block-placement --stats --info-output-file=" + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc"
                subprocess.call(compile_reordered_llc, shell=True)

                #store dis-assembly
                dis_reordered = LLVM_DIS + " " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.ll"
                subprocess.call(dis_reordered, shell=True)


            if use_opt:

                #compile original using opt and llc 
                compile_original_opt = LLVM_OPT + " -O3 --stats --info-output-file=" + INTERESTING_FILES + "/" + str(i) + "/" + "original.stats " +  INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc"
                subprocess.call(compile_original_opt, shell=True)

                #store dis-assembly
                dis_orignal = LLVM_DIS + " " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "original.ll"
                subprocess.call(dis_orignal, shell=True)
            
                #compile reordered using opt and llc
                compile_reordered_opt = LLVM_OPT + " --passes='default<O3>,reorder-code' --stats --info-output-file=" + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats " + INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc"
                subprocess.call(compile_reordered_opt, shell=True)

                #store dis-assembly
                dis_reordered = LLVM_DIS + " " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.ll"
                subprocess.call(dis_reordered, shell=True)


            #diff stats 
            f1 = INTERESTING_FILES + "/" + str(i) + "/" + "original.stats"
            f2 = INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats"
    
            f1_open = open(f1, "r")
            f2_open = open(f2, "r")
    
            f1_lines = f1_open.readlines()
            f11 = []
            f11Map = {}
            keys1 = []
            for line in f1_lines:
                split_line = line.split(" - ")

                if len(split_line) > 1:
                    print(split_line)
                    left = split_line[0].strip()
                    left_pr = left.split(" ")
                    f11Map[(split_line[1].strip(), left_pr[1])] = (left_pr[0], left_pr[1])
                    keys1.append((split_line[1].strip(), left_pr[1]))
                    f11.append(split_line[0].strip() + " - " +  split_line[1].strip())
                

            f2_lines = f2_open.readlines()
            f22 = []
            f22Map = {}
            keys2 = []
            for line in f2_lines:
                split_line = line.split(" - ")

                if len(split_line) > 1:
                    print(split_line)
                    left = split_line[0].strip()
                    left_pr = left.split(" ")
                    f22Map[(split_line[1].strip(), left_pr[1])] = (left_pr[0], left_pr[1])
                    keys2.append((split_line[1].strip(), left_pr[1]))
                    f22.append(split_line[0].strip() + " - " + split_line[1].strip())

            key1_not2 = notInFirst(keys1, keys2)
            key2_not1 = notInFirst(keys2, keys1)
            print(key1_not2)
            print(key2_not1)

            common = common_member(keys1, keys2)
            
            diff_stats = INTERESTING_FILES + "/" + str(i) + "/" + "set_difference.stats"
            diff_open = open(diff_stats, "w")
            
            diff_open.write("pass - description: <before> vs <after>\n\n")
            keys_printed = []
            for line in common:
                print(line)
                if (f11Map[line] != f22Map[line]):
                    keys_printed.append(line)
                    diff_open.write(f11Map[line][1].ljust(30, " ") + " - ")
                    diff_open.write(line[0].ljust(75, " ") + ": ".ljust(3, " "))
                    diff_open.write(f11Map[line][0].ljust(5, " "))
                    diff_open.write(" vs".ljust(5, " "))
                    diff_open.write(f22Map[line][0].ljust(5, " "))
                    diff_open.write("\n")
            
            for line in key1_not2:
                    print(line)
                    diff_open.write(f11Map[line][1].ljust(30, " ") + " - ")
                    diff_open.write(line[0].ljust(75, " ") + ": ".ljust(3, " "))
                    diff_open.write(f11Map[line][0].ljust(5, " "))
                    diff_open.write(" vs".ljust(5, " "))
                    diff_open.write("Nil".ljust(5, " "))
                    diff_open.write("\n")

            for line in key2_not1:
                    diff_open.write(f22Map[line][1].ljust(30, " ") + " - ")
                    diff_open.write(line[0].ljust(75, " ") + ": ".ljust(3, " "))
                    diff_open.write("Nil".ljust(5, " "))
                    diff_open.write(" vs".ljust(5, " "))
                    diff_open.write(f22Map[line][0].ljust(5, " "))
                    diff_open.write("\n")

            diff_open.close()

        #run python script to get the stats
        command_str_python_script = "python3 diff_stats.py " + INTERESTING_FILES + "/" + str(i) + "/" + "original.stats" + " " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats"
        print(command_str_python_script)
        code_python_script = subprocess.call(command_str_python_script, shell=True)
        print(code_python_script)
        
        #remove the reduced file 
        remove_cmd = "rm reduced.bc reduced.ll"
        print(remove_cmd)
        code_rm = subprocess.call(remove_cmd, shell=True)

        
