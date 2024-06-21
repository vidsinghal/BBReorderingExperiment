import os 
import subprocess
import hashlib
import re
import statistics
import sys
import numpy as np


dir_path = os.path.dirname(os.path.realpath(__file__))

INPUTS = dir_path + "/samples/"
INTERESTING_FILES = dir_path + "/INTERESTING_FILES/"
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
    command_str_llvm_reduce = LLVM_REDUCE + " " + "--test " + "script.sh " + input_to_reduce
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
            if len(data2) > 20:
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


            #diff the update register here

            #compile original using opt and llc 
            compile_original_opt = LLVM_OPT + " -O3 " +  INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc"
            subprocess.call(compile_original_opt, shell=True)
            compile_original_llc = LLVM_LLC + " -O3 --stats --info-output-file=" + INTERESTING_FILES + "/" + str(i) + "/" + "original.stats " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc"
            subprocess.call(compile_original_llc, shell=True)

            #store dis-assembly
            dis_orignal = LLVM_DIS + " " + INTERESTING_FILES + "/" + str(i) + "/" + "original.bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "original.ll"
            subprocess.call(dis_orignal, shell=True)
            
            #compile reordered using opt and llc
            compile_reordered_opt = LLVM_OPT + " --passes='default<O3>,reorder-code' " +  INTERESTING_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc"
            subprocess.call(compile_reordered_opt, shell=True)
            compile_reordered_llc = LLVM_LLC + " -O3 --stats --info-output-file=" + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc"
            subprocess.call(compile_reordered_llc, shell=True)

            #store dis-assembly
            dis_reordered = LLVM_DIS + " " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.bc" + " -o " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.ll"
            subprocess.call(dis_reordered, shell=True)

            #diff stats 
            diff_stats = "diff " + INTERESTING_FILES + "/" + str(i) + "/" + "original.stats " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats " + "&> " + INTERESTING_FILES + "/" + str(i) + "/" + "diff.stats"
            subprocess.call(diff_stats, shell=True)

        #run python script to get the stats
        command_str_python_script = "python3 diff_stats.py " + INTERESTING_FILES + "/" + str(i) + "/" + "original.stats" + " " + INTERESTING_FILES + "/" + str(i) + "/" + "reordered.stats"
        print(command_str_python_script)
        code_python_script = subprocess.call(command_str_python_script, shell=True)
        print(code_python_script)
        
        #remove the reduced file 
        remove_cmd = "rm reduced.bc reduced.ll"
        print(remove_cmd)
        code_rm = subprocess.call(remove_cmd, shell=True)

        
