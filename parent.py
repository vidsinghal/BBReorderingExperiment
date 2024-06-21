import os 
import subprocess
import hashlib
import re
import statistics
import sys

INPUTS="/g/g91/singhal2/samples/"
REDUCED_FILES = "/g/g91/singhal2/REDUCED_FILES/"
SRC="/g/g91/singhal2/samples/"

if not os.path.exists(REDUCED_FILES):
    os.mkdir(REDUCED_FILES)

LLVM_CLANG="/g/g91/singhal2/llvm-project/build/bin/clang"
LLVM_OPT="/g/g91/singhal2/llvm-project/build/bin/opt"
LLVM_LLC="/g/g91/singhal2/llvm-project/build/bin/llc"

LLVM_REDUCE="/g/g91/singhal2/llvm-project/build/bin/llvm-reduce"

LLVM_DIS="/g/g91/singhal2/llvm-project/build/bin/llvm-dis"


num_iterations = 200

HASHES = []

FILE_TO_SAVE_STATS = "/g/g91/singhal2/stats_seen_so_far.txt" 

rm_stats_register = "rm " + FILE_TO_SAVE_STATS
print(rm_stats_register)
code_rm = subprocess.call(rm_stats_register, shell=True)


for i in range(1000):
    
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
            if not os.path.exists(REDUCED_FILES + "/" + str(i) + "/"):
                os.mkdir(REDUCED_FILES + "/" + str(i) + "/")

            HASHES.append(file_hash)
            gen_cpy = "cp " + "reduced.bc " + REDUCED_FILES + "/" + str(i) + "/" + file_hash + ".bc"
            print(gen_cpy)
            code_cp = subprocess.call(gen_cpy, shell=True)

            gen_cpy_ll = "cp " + "reduced.ll " + REDUCED_FILES + "/" + str(i) + "/" + file_hash + ".ll"
            print(gen_cpy_ll)
            code_cp = subprocess.call(gen_cpy_ll, shell=True)


            #diff the update register here

            #compile original using opt and llc 
            compile_original_opt = LLVM_OPT + " -O3 " +  REDUCED_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + REDUCED_FILES + "/" + str(i) + "/" + "original.bc"
            subprocess.call(compile_original_opt, shell=True)
            compile_original_llc = LLVM_LLC + " -O3 --stats --info-output-file=" + REDUCED_FILES + "/" + str(i) + "/" + "original.stats " + REDUCED_FILES + "/" + str(i) + "/" + "original.bc"
            subprocess.call(compile_original_llc, shell=True)
            
            #compile reordered using opt and llc
            compile_reordered_opt = LLVM_OPT + " --passes='default<O3>,reorder-code' " +  REDUCED_FILES + "/" + str(i) + "/" + file_hash + ".bc" + " -o " + REDUCED_FILES + "/" + str(i) + "/" + "reordered.bc"
            subprocess.call(compile_reordered_opt, shell=True)
            compile_reordered_llc = LLVM_LLC + " -O3 --stats --info-output-file=" + REDUCED_FILES + "/" + str(i) + "/" + "reordered.stats " + REDUCED_FILES + "/" + str(i) + "/" + "reordered.bc"
            subprocess.call(compile_reordered_llc, shell=True)
            

        #run python script to get the stats
        command_str_python_script = "python3 diff_stats.py " + REDUCED_FILES + "/" + str(i) + "/" + "original.stats" + " " + REDUCED_FILES + "/" + str(i) + "/" + "reordered.stats"
        print(command_str_python_script)
        code_python_script = subprocess.call(command_str_python_script, shell=True)
        print(code_python_script)
        
        #remove the reduced file 
        remove_cmd = "rm reduced.bc reduced.ll"
        print(remove_cmd)
        code_rm = subprocess.call(remove_cmd, shell=True)

        