; ModuleID = 'samples/640.bc'
source_filename = ".././../src/gsnap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.List_T = type { ptr, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.Except_Frame_T = type { ptr, [1 x %struct.__jmp_buf_tag], ptr, i32, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.Uintlist_T = type { i32, ptr }
%struct.Pathpair_T = type { float, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr }

@optind = external global i32, align 4
@exception_raise_p = internal global i8 1, align 1
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [109 x i8] c"Allowing signals and exceptions to pass through.  If using shared memory, need to remove segments manually.\0A\00", align 1
@whitelist_file = internal global ptr null, align 8
@read_files_command = internal global ptr null, align 8
@gunzip_p = internal global i8 0, align 1
@bunzip2_p = internal global i8 0, align 1
@paired_end_p = internal global i8 0, align 1
@interleavedp = internal global i8 0, align 1
@fastq_format_p = internal global i8 0, align 1
@mode = internal global i32 0, align 4
@acc_fieldi_start = internal global i32 0, align 4
@acc_fieldi_end = internal global i32 0, align 4
@force_single_end_p = internal global i8 0, align 1
@filter_chastity_p = internal global i8 0, align 1
@keep_chastity_p = internal global i8 0, align 1
@allow_paired_end_mismatch_p = internal global i8 0, align 1
@barcode_length = internal global i32 0, align 4
@endtrim_length = internal global i32 0, align 4
@invert_first_p = internal global i8 0, align 1
@invert_second_p = internal global i8 1, align 1
@chop_poly_at_first_p = internal global i8 1, align 1
@chop_poly_at_second_p = internal global i8 1, align 1
@single_cell_p = internal global i8 0, align 1
@filter_if_both_p = internal global i8 0, align 1
@input_buffer_size = internal global i32 10000, align 4
@part_modulus = internal global i32 0, align 4
@part_interval = internal global i32 1, align 4
@inbuffer = internal global ptr null, align 8
@multiple_sequences_p = internal global i8 0, align 1
@preload_shared_memory_p = internal global i8 0, align 1
@unload_shared_memory_p = internal global i8 0, align 1
@expand_offsets_p = internal global i8 0, align 1
@offsetsstrm_access = internal global i32 0, align 4
@positions_access = internal global i32 0, align 4
@genome_access = internal global i32 0, align 4
@locoffsetsstrm_access = internal global i32 0, align 4
@locpositions_access = internal global i32 0, align 4
@user_genomedir = internal global ptr null, align 8
@genome_dbroot = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c".././../src/gsnap.c\00", align 1
@genomelength = internal global i32 0, align 4
@nchromosomes = internal global i32 0, align 4
@circular_typeint = internal global i32 -1, align 4
@any_circular_p = internal global i8 0, align 1
@circularp = internal global ptr null, align 8
@chromosome_iit = internal global ptr null, align 8
@chromosome_ef64 = internal global ptr null, align 8
@chrsubset_file = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to open --chrsubset file %s\0A\00", align 1
@chrsubsetp = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Unable to find chromosome %s in --chrsubset file\0A\00", align 1
@transcriptome_dbroot = internal global ptr null, align 8
@transcriptome_align_p = internal global i8 1, align 1
@user_transcriptomedir = internal global ptr null, align 8
@transcriptomelength = internal global i32 0, align 4
@ntranscripts = internal global i32 0, align 4
@transcript_iit = internal global ptr null, align 8
@transcript_ef64 = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"%s/%s.transcripts/%s.genes.iit\00", align 1
@transcript_map_iit = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"Transcript map file %s not found\0A\00", align 1
@sharedp = internal global i8 0, align 1
@transcriptome = internal global ptr null, align 8
@index1part_tr = internal global i32 15, align 4
@index1interval_tr = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@tr_indexdb = internal global ptr null, align 8
@nalignments = internal global i32 0, align 4
@knownsplicing = internal global ptr null, align 8
@knownsplicingp = internal global i8 0, align 1
@stopwatch = internal global ptr null, align 8
@two_pass_p = internal global i8 0, align 1
@output_buffer_size = internal global i32 1000, align 4
@outbuffer = internal global ptr null, align 8
@pass1_lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@pass = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [146 x i8] c"Starting pass 1.  Learning defect rate, splice sites, introns, and insert lengths (alignments are being analyzed internally, without any output)\0A\00", align 1
@donor_table = internal global ptr null, align 8
@acceptor_table = internal global ptr null, align 8
@antidonor_table = internal global ptr null, align 8
@antiacceptor_table = internal global ptr null, align 8
@indel_table = internal global ptr null, align 8
@nthreads = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"ERROR: pthread_attr_setdetachstate returned %d\0A\00", align 1
@worker_thread_ids = internal global ptr null, align 8
@global_request_key = internal global i32 0, align 4
@output_thread_id = internal global i64 0, align 8
@.str.10 = private unnamed_addr constant [65 x i8] c"Pass 1: Processed %u queries in %.2f seconds (%.2f queries/sec)\0A\00", align 1
@total_mismatches = internal global i64 0, align 8
@total_querylength = internal global i64 0, align 8
@defect_rate = internal global double 1.000000e-02, align 8
@.str.11 = private unnamed_addr constant [51 x i8] c"%llu mismatches/%llu aligned bp => %f defect rate\0A\00", align 1
@donor_startpoints = internal global ptr null, align 8
@donor_partners = internal global ptr null, align 8
@acceptor_startpoints = internal global ptr null, align 8
@acceptor_partners = internal global ptr null, align 8
@antidonor_startpoints = internal global ptr null, align 8
@antidonor_partners = internal global ptr null, align 8
@antiacceptor_startpoints = internal global ptr null, align 8
@antiacceptor_partners = internal global ptr null, align 8
@dump_splices_fp = internal global ptr null, align 8
@dump_indels_fp = internal global ptr null, align 8
@knownindels = internal global ptr null, align 8
@expected_pairlength = internal global i32 200, align 4
@pairlength_deviation = internal global i32 10, align 4
@insertlengths = internal global ptr null, align 8
@split_simple_p = internal global i8 0, align 1
@orderedp = internal global i8 0, align 1
@output_type = internal global i32 0, align 4
@sam_headers_p = internal global i8 1, align 1
@sam_read_group_id = internal global ptr null, align 8
@sam_read_group_name = internal global ptr null, align 8
@sam_read_group_library = internal global ptr null, align 8
@sam_read_group_platform = internal global ptr null, align 8
@quiet_if_excessive_p = internal global i8 0, align 1
@appendp = internal global i8 0, align 1
@output_file = internal global ptr null, align 8
@split_output_root = internal global ptr null, align 8
@failedinput_root = internal global ptr null, align 8
@.str.12 = private unnamed_addr constant [44 x i8] c"Starting alignment.  Writing results to %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Starting alignment.  Writing results to %s.*\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Starting alignment\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Pass 2: Aligned %u queries in %.2f seconds (%.2f queries/sec)\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Aligned %u queries in %.2f seconds (%.2f queries/sec)\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"GSNAP version %s called with args:\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"2023-07-20\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"C:c:D:d:k:q:o:a:N:M:m:i:y:Y:z:Z:w:e:J:s:E:V:v:B:t:A:j:0n:QO\00", align 1
@long_options = internal global [134 x %struct.option] [%struct.option { ptr @.str.214, i32 1, ptr null, i32 67 }, %struct.option { ptr @.str.215, i32 1, ptr null, i32 99 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.216, i32 1, ptr null, i32 68 }, %struct.option { ptr @.str.217, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.30, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.31, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.218, i32 1, ptr null, i32 107 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.219, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.99, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.81, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.97, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.43, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.220, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.44, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.114, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.115, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.116, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.117, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.120, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.221, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.222, i32 1, ptr null, i32 97 }, %struct.option { ptr @.str.126, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.128, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.130, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.132, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.223, i32 1, ptr null, i32 78 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.224, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.118, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.225, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.121, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.226, i32 1, ptr null, i32 121 }, %struct.option { ptr @.str.227, i32 1, ptr null, i32 122 }, %struct.option { ptr @.str.228, i32 1, ptr null, i32 89 }, %struct.option { ptr @.str.229, i32 1, ptr null, i32 90 }, %struct.option { ptr @.str.230, i32 1, ptr null, i32 77 }, %struct.option { ptr @.str.231, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.232, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.123, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.133, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.134, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.233, i32 1, ptr null, i32 69 }, %struct.option { ptr @.str.136, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.137, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.135, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.122, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.125, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.234, i32 1, ptr null, i32 101 }, %struct.option { ptr @.str.235, i32 1, ptr null, i32 86 }, %struct.option { ptr @.str.236, i32 1, ptr null, i32 118 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.74, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.75, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.76, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.77, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.237, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.153, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.238, i32 1, ptr null, i32 74 }, %struct.option { ptr @.str.239, i32 1, ptr null, i32 106 }, %struct.option { ptr @.str.147, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.143, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.148, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.149, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.150, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.151, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.152, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.168, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.169, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.170, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.171, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.138, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.159, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.160, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.161, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.162, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.240, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.49, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.241, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.144, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.145, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.242, i32 0, ptr null, i32 81 }, %struct.option { ptr @.str.243, i32 0, ptr null, i32 79 }, %struct.option { ptr @.str.140, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.141, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.142, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.139, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.172, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.173, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.175, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.176, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.244, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.106, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.107, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.108, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.109, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.110, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.177, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.178, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.179, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.180, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.26, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.28, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.24, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.23, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.25, i32 0, ptr null, i32 0 }, %struct.option zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"use-sarray\00", align 1
@.str.27 = private unnamed_addr constant [88 x i8] c"Ignoring the --use-sarray flag, since this version of GSNAP does not use suffix arrays\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"terminal-threshold\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"Ignoring the --terminal-threshold flag, which is obsolete\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"two-pass\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"use-localdb\00", align 1
@optarg = external global ptr, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@user_localdb_p = internal global i8 0, align 1
@use_localdb_p = internal global i8 0, align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"--use-localdb flag must be 0 or 1\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"transcriptome-mode\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"assist\00", align 1
@genome_align_p = internal global i8 1, align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"annotate\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"--transcriptome-mode flag must be assist, only, or annotate\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"use-shared-memory\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"--use-shared-memory flag must be 0 or 1\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"preload-shared-memory\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"unload-shared-memory\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"expand-offsets\00", align 1
@.str.45 = private unnamed_addr constant [132 x i8] c"Note: --expand-offsets flag is no longer supported.  With the latest algorithms, it doesn't improve speed much.  Ignoring this flag\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"sampling\00", align 1
@required_index1interval = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@timingp = internal global i8 0, align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@unloadp = internal global i8 0, align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"maxsearch\00", align 1
@maxpaths_search = internal global i32 1000, align 4
@.str.50 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"cmet-stranded\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"cmet-nonstranded\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"atoi-stranded\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"atoi-nonstranded\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"ttoc-stranded\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"ttoc-nonstranded\00", align 1
@.str.58 = private unnamed_addr constant [127 x i8] c"--mode must be standard, cmet-stranded, cmet-nonstranded, atoi-stranded, atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded\0A\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"cmetdir\00", align 1
@user_modedir = internal global ptr null, align 8
@.str.60 = private unnamed_addr constant [8 x i8] c"atoidir\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"novelend-splicedist\00", align 1
@shortsplicedist_novelend = internal global i32 60000, align 4
@.str.62 = private unnamed_addr constant [78 x i8] c"For --novelend-splicedist, the maximum value is 65536, so setting it to that\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"splicingdir\00", align 1
@user_splicingdir = internal global ptr null, align 8
@.str.64 = private unnamed_addr constant [13 x i8] c"splices-dump\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"Cannot write to --splices-dump file %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"splices-read\00", align 1
@splices_file = internal global ptr null, align 8
@.str.68 = private unnamed_addr constant [12 x i8] c"indels-dump\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Cannot write to --indels-dump file %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"indels-read\00", align 1
@indels_file = internal global ptr null, align 8
@.str.71 = private unnamed_addr constant [18 x i8] c"find-dna-chimeras\00", align 1
@user_find_dna_chimeras_p = internal global i8 0, align 1
@find_dna_chimeras_p = internal global i8 0, align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"--find-dna-chimeras flag must be 0 or 1\0A\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"tallydir\00", align 1
@user_tallydir = internal global ptr null, align 8
@.str.74 = private unnamed_addr constant [10 x i8] c"use-tally\00", align 1
@tally_root = internal global ptr null, align 8
@.str.75 = private unnamed_addr constant [13 x i8] c"runlengthdir\00", align 1
@user_runlengthdir = internal global ptr null, align 8
@.str.76 = private unnamed_addr constant [14 x i8] c"use-runlength\00", align 1
@runlength_root = internal global ptr null, align 8
@.str.77 = private unnamed_addr constant [12 x i8] c"max-anchors\00", align 1
@max_anchors = internal global i32 10, align 4
@.str.78 = private unnamed_addr constant [18 x i8] c"input-buffer-size\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"output-buffer-size\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"barcode-length\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"endtrim-length\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"fastq-id-start\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"Value for fastq-id-start must be 1 or greater\0A\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"fastq-id-end\00", align 1
@.str.85 = private unnamed_addr constant [45 x i8] c"Value for fastq-id-end must be 1 or greater\0A\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"force-single-end\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"filter-chastity\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.91 = private unnamed_addr constant [53 x i8] c"--filter-chastity values allowed: off, either, both\0A\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"allow-pe-name-mismatch\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"10x-whitelist\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"10x-well-position\00", align 1
@wellpos = internal global i32 4, align 4
@.str.95 = private unnamed_addr constant [19 x i8] c"read-files-command\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"gunzip\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"bunzip2\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"interleaved\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"FR\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"10X\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"10x\00", align 1
@.str.105 = private unnamed_addr constant [107 x i8] c"Currently allowed values for orientation: FR (fwd-rev), RF (rev-fwd), FF (fwd-fwd), or 10x (barcodes-rev)\0A\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"split-output\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"split-simple\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"failed-input\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"append-output\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"order-among-best\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"genomic\00", align 1
@want_random_p = internal global i8 1, align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.113 = private unnamed_addr constant [62 x i8] c"--order-among-best values allowed: genomic, random (default)\0A\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"pairmax-dna\00", align 1
@pairmax_dna = internal global i32 2000, align 4
@.str.115 = private unnamed_addr constant [12 x i8] c"pairmax-rna\00", align 1
@pairmax_rna = internal global i32 200000, align 4
@.str.116 = private unnamed_addr constant [11 x i8] c"pairexpect\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"pairdev\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"min-coverage\00", align 1
@user_mincoverage_filter_float = internal global double 5.000000e-01, align 8
@.str.119 = private unnamed_addr constant [82 x i8] c"Cannot specify fractional value %f for --min-coverage except between 0.0 and 1.0\0A\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"pass1-min-support\00", align 1
@pass1_min_support = internal global i32 20, align 4
@.str.121 = private unnamed_addr constant [16 x i8] c"indel-endlength\00", align 1
@min_indel_end_matches = internal global i32 4, align 4
@allow_end_indels_p = internal global i8 1, align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"antistranded-penalty\00", align 1
@antistranded_penalty = internal global i32 0, align 4
@.str.123 = private unnamed_addr constant [11 x i8] c"end-detail\00", align 1
@.str.124 = private unnamed_addr constant [78 x i8] c"--end-detail is now deprecated.  GSNAP is now tuned to trim well at the ends\0A\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"merge-distant-samechr\00", align 1
@merge_samechr_p = internal global i8 0, align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"query-unk-mismatch\00", align 1
@query_unk_mismatch_p = internal global i8 0, align 1
@.str.127 = private unnamed_addr constant [42 x i8] c"--query-unk-mismatch flag must be 0 or 1\0A\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"genome-unk-mismatch\00", align 1
@genome_unk_mismatch_p = internal global i8 1, align 1
@.str.129 = private unnamed_addr constant [43 x i8] c"--genome-unk-mismatch flag must be 0 or 1\0A\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"trim-mismatch-score\00", align 1
@.str.131 = private unnamed_addr constant [87 x i8] c"--trim-mismatch-score is now deprecated.  GSNAP is now tuned to trim well at the ends\0A\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"trim-indel-score\00", align 1
@trim_indel_score = internal global i32 -2, align 4
@user_trim_indel_score_p = internal global i8 0, align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"fusion-sensitivity\00", align 1
@fusion_sensitivity = internal global i32 2, align 4
@.str.134 = private unnamed_addr constant [21 x i8] c"local-splice-penalty\00", align 1
@localsplicing_penalty = internal global i32 0, align 4
@.str.135 = private unnamed_addr constant [24 x i8] c"distant-splice-identity\00", align 1
@min_distantsplicing_identity = internal global double 0x3FEE666666666666, align 8
@.str.136 = private unnamed_addr constant [25 x i8] c"distant-splice-endlength\00", align 1
@min_distantsplicing_end_matches = internal global i32 20, align 4
@.str.137 = private unnamed_addr constant [26 x i8] c"shortend-splice-endlength\00", align 1
@min_shortend = internal global i32 2, align 4
@.str.138 = private unnamed_addr constant [13 x i8] c"force-xs-dir\00", align 1
@force_xs_direction_p = internal global i8 0, align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"show-refdiff\00", align 1
@show_refdiff_p = internal global i8 0, align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"clip-overlap\00", align 1
@clip_overlap_p = internal global i8 0, align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"merge-overlap\00", align 1
@merge_overlap_p = internal global i8 0, align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"show-method\00", align 1
@method_print_p = internal global i8 0, align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"no-sam-headers\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"add-paired-nomappers\00", align 1
@add_paired_nomappers_p = internal global i8 0, align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"paired-flag-means-concordant\00", align 1
@paired_flag_means_concordant_p = internal global i8 0, align 1
@.str.146 = private unnamed_addr constant [52 x i8] c"--paired-flag-means-concordant flag must be 0 or 1\0A\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"sam-headers-batch\00", align 1
@sam_headers_batch = internal global i32 -1, align 4
@.str.148 = private unnamed_addr constant [19 x i8] c"sam-hardclip-use-S\00", align 1
@sam_hardclip_use_S_p = internal global i8 0, align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"sam-use-0M\00", align 1
@sam_insert_0M_p = internal global i8 0, align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"sam-extended-cigar\00", align 1
@sam_cigar_extended_p = internal global i8 0, align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"sam-multiple-primaries\00", align 1
@sam_multiple_primaries_p = internal global i8 0, align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"sam-sparse-secondaries\00", align 1
@sam_sparse_secondaries_p = internal global i8 0, align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"quality-protocol\00", align 1
@user_quality_score_adj = internal global i8 0, align 1
@.str.154 = private unnamed_addr constant [70 x i8] c"Cannot specify both -J (--quality-zero-score) and --quality-protocol\0A\00", align 1
@user_quality_shift = internal global i8 0, align 1
@.str.155 = private unnamed_addr constant [71 x i8] c"Cannot specify both -j (--quality-print-shift) and --quality-protocol\0A\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"illumina\00", align 1
@quality_shift = internal global i32 0, align 4
@.str.157 = private unnamed_addr constant [7 x i8] c"sanger\00", align 1
@.str.158 = private unnamed_addr constant [71 x i8] c"The only values allowed for --quality-protocol are illumina or sanger\0A\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"md-report-snps\00", align 1
@md_report_snps_p = internal global i8 0, align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"no-soft-clips\00", align 1
@allow_soft_clips_p = internal global i8 1, align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"extend-soft-clips\00", align 1
@extend_soft_clips_p = internal global i8 0, align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"action-if-cigar-error\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@cigar_action = internal global i32 1, align 4
@.str.164 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"noprint\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.167 = private unnamed_addr constant [89 x i8] c"The only values allowed for --action-if-cigar-error are ignore, warning, noprint, abort\0A\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"read-group-id\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"read-group-name\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"read-group-library\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"read-group-platform\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"print-snps\00", align 1
@print_snplabels_p = internal global i8 0, align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"failsonly\00", align 1
@nofailsp = internal global i8 0, align 1
@.str.174 = private unnamed_addr constant [47 x i8] c"Cannot specify both --nofails and --failsonly\0A\00", align 1
@failsonlyp = internal global i8 0, align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"nofails\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"chrsubset\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"only-concordant\00", align 1
@only_concordant_p = internal global i8 0, align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"omit-concordant-uniq\00", align 1
@omit_concordant_uniq_p = internal global i8 0, align 1
@.str.179 = private unnamed_addr constant [21 x i8] c"omit-concordant-mult\00", align 1
@omit_concordant_mult_p = internal global i8 0, align 1
@.str.180 = private unnamed_addr constant [17 x i8] c"omit-softclipped\00", align 1
@omit_softclipped_p = internal global i8 0, align 1
@.str.181 = private unnamed_addr constant [58 x i8] c"Don't recognize option %s.  For usage, run 'gsnap --help'\00", align 1
@required_index1part = internal global i32 0, align 4
@.str.182 = private unnamed_addr constant [45 x i8] c"The value for k-mer size must be %d or less\0A\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"paired\00", align 1
@chop_primers_p = internal global i8 0, align 1
@.str.184 = private unnamed_addr constant [66 x i8] c"Currently allowed values for adapter stripping (-a): off, paired\0A\00", align 1
@novelsplicingp = internal global i8 0, align 1
@.str.185 = private unnamed_addr constant [41 x i8] c"Novel splicing (-N flag) must be 0 or 1\0A\00", align 1
@subopt_levels = internal global i32 0, align 4
@user_nmismatches_filter_float = internal global double -1.000000e+00, align 8
@.str.186 = private unnamed_addr constant [84 x i8] c"Cannot specify fractional value %f for --max-mismatches except between 0.0 and 1.0\0A\00", align 1
@indel_penalty_end = internal global i32 2, align 4
@indel_penalty_middle = internal global i32 2, align 4
@max_middle_insertions_float = internal global double 2.000000e-01, align 8
@.str.187 = private unnamed_addr constant [91 x i8] c"Cannot specify fractional value %f for --max-middle-insertions except between 0.0 and 1.0\0A\00", align 1
@max_middle_deletions_float = internal global double 2.000000e-01, align 8
@.str.188 = private unnamed_addr constant [90 x i8] c"Cannot specify fractional value %f for --max-middle-deletions except between 0.0 and 1.0\0A\00", align 1
@max_end_insertions = internal global i32 3, align 4
@max_end_deletions = internal global i32 6, align 4
@shortsplicedist = internal global i32 200000, align 4
@splicing_file = internal global ptr null, align 8
@masked_suffix = internal global ptr null, align 8
@maskedp = internal global i8 0, align 1
@print_nsnpdiffs_p = internal global i8 0, align 1
@.str.189 = private unnamed_addr constant [91 x i8] c"In the future, please use --distant-splice-penalty instead of -E, which may be reassigned\0A\00", align 1
@distantsplicing_penalty = internal global i32 1, align 4
@user_snpsdir = internal global ptr null, align 8
@snps_root = internal global ptr null, align 8
@.str.190 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.191 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.192 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.194 = private unnamed_addr constant [90 x i8] c"Batch mode %s not recognized.  Only allow 0-5.  Run 'gsnap --help' for more information.\0A\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"sam\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c"m8\00", align 1
@.str.197 = private unnamed_addr constant [79 x i8] c"Output format %s not recognized.  Allowed values: standard (default), sam, m8\0A\00", align 1
@maxpaths_report = internal global i32 100, align 4
@.str.198 = private unnamed_addr constant [31 x i8] c"For usage, run 'gsnap --help'\0A\00", align 1
@.str.199 = private unnamed_addr constant [61 x i8] c"Need to specify the -d flag.  For usage, run 'gsnap --help'\0A\00", align 1
@.str.200 = private unnamed_addr constant [64 x i8] c"--10x-whitelist was given, so assuming that orientation is 10x\0A\00", align 1
@.str.201 = private unnamed_addr constant [66 x i8] c"--fastq-id-end must be equal to or greater than --fastq-id-start\0A\00", align 1
@.str.202 = private unnamed_addr constant [77 x i8] c"Cannot specify both --clip-overlap and --merge-overlap.  Please choose one.\0A\00", align 1
@.str.203 = private unnamed_addr constant [82 x i8] c"Transcriptome specified => assume reads are RNA-Seq.  Turning on novel splicing.\0A\00", align 1
@.str.204 = private unnamed_addr constant [53 x i8] c"Transcriptome specified => assume reads are RNA-Seq\0A\00", align 1
@pairmax_transcriptome = internal global i32 0, align 4
@pairmax_linear = internal global i32 0, align 4
@pairmax_circular = internal global i32 0, align 4
@shortsplicedist_known = internal global i32 0, align 4
@.str.205 = private unnamed_addr constant [88 x i8] c"Novel splicing (-N) and known splicing (-s) both turned on => assume reads are RNA-Seq\0A\00", align 1
@default_localdb_p = internal global i8 1, align 1
@.str.206 = private unnamed_addr constant [59 x i8] c"Known splicing (-s) turned on => assume reads are RNA-Seq\0A\00", align 1
@.str.207 = private unnamed_addr constant [59 x i8] c"Novel splicing (-N) turned on => assume reads are RNA-Seq\0A\00", align 1
@.str.208 = private unnamed_addr constant [101 x i8] c"Neither novel splicing (-N) nor known splicing (-s) turned on => assume reads are DNA-Seq (genomic)\0A\00", align 1
@.str.209 = private unnamed_addr constant [108 x i8] c"The novelend-splicedist %d is greater than the localsplicedist %d.  Resetting novelend-splicedist to be %d\0A\00", align 1
@.str.210 = private unnamed_addr constant [79 x i8] c"The distant splicing penalty %d cannot be less than local splicing penalty %d\0A\00", align 1
@.str.211 = private unnamed_addr constant [65 x i8] c"Cannot specify --split-simple without specifying --split-output\0A\00", align 1
@.str.212 = private unnamed_addr constant [67 x i8] c"Adapter stripping not currently implemented for given orientation\0A\00", align 1
@.str.213 = private unnamed_addr constant [93 x i8] c"Value for --maxsearch (%d) is less than --npaths (%d), so raising --maxsearch to be %d also\0A\00", align 1
@.str.214 = private unnamed_addr constant [14 x i8] c"transcriptdir\00", align 1
@.str.215 = private unnamed_addr constant [13 x i8] c"transcriptdb\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"db\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"kmer\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"nthreads\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c"adapter-strip\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"novelsplicing\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"max-mismatches\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"indel-penalty\00", align 1
@.str.226 = private unnamed_addr constant [22 x i8] c"max-middle-insertions\00", align 1
@.str.227 = private unnamed_addr constant [21 x i8] c"max-middle-deletions\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"max-end-insertions\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"max-end-deletions\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"suboptimal-levels\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"localsplicedist\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"use-splicing\00", align 1
@.str.233 = private unnamed_addr constant [23 x i8] c"distant-splice-penalty\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"use-mask\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"snpsdir\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"use-snps\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"quality-zero-score\00", align 1
@.str.239 = private unnamed_addr constant [20 x i8] c"quality-print-shift\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"noexceptions\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"npaths\00", align 1
@.str.242 = private unnamed_addr constant [19 x i8] c"quiet-if-excessive\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"output-file\00", align 1
@stdout = external global ptr, align 8
@.str.245 = private unnamed_addr constant [51 x i8] c"GSNAP: Genomic Short Nucleotide Alignment Program\0A\00", align 1
@.str.246 = private unnamed_addr constant [34 x i8] c"Part of GMAP package, version %s\0A\00", align 1
@.str.247 = private unnamed_addr constant [18 x i8] c"Build target: %s\0A\00", align 1
@.str.248 = private unnamed_addr constant [20 x i8] c"x86_64-pc-linux-gnu\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"Features: \00", align 1
@.str.250 = private unnamed_addr constant [19 x i8] c"pthreads enabled, \00", align 1
@.str.251 = private unnamed_addr constant [12 x i8] c"no alloca, \00", align 1
@.str.252 = private unnamed_addr constant [17 x i8] c"zlib available, \00", align 1
@.str.253 = private unnamed_addr constant [17 x i8] c"mmap available, \00", align 1
@.str.254 = private unnamed_addr constant [15 x i8] c"littleendian, \00", align 1
@.str.255 = private unnamed_addr constant [22 x i8] c"sigaction available, \00", align 1
@.str.256 = private unnamed_addr constant [18 x i8] c"64 bits available\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"Popcnt:\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c" mm_popcnt\00", align 1
@.str.259 = private unnamed_addr constant [19 x i8] c"Builtin functions:\00", align 1
@.str.260 = private unnamed_addr constant [25 x i8] c"SIMD functions compiled:\00", align 1
@.str.261 = private unnamed_addr constant [6 x i8] c" SSE2\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c" SSSE3\00", align 1
@.str.263 = private unnamed_addr constant [8 x i8] c" SSE4.1\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c" SSE4.2\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c" AVX2\00", align 1
@.str.266 = private unnamed_addr constant [86 x i8] c"Sizes: off_t (%d), size_t (%d), unsigned int (%d), long int (%d), long long int (%d)\0A\00", align 1
@.str.267 = private unnamed_addr constant [39 x i8] c"Default gmap directory (compiled): %s\0A\00", align 1
@.str.268 = private unnamed_addr constant [610 x i8] c"/local-ssd/gmap-gsnap-x6brtjmmflky4jx44d3o4gwdd2bqjkzt-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/gmap-gsnap-2023-07-20-x6brtjmmflky4jx44d3o4gwdd2bqjkzt/share\00", align 1
@.str.269 = private unnamed_addr constant [42 x i8] c"Default gmap directory (environment): %s\0A\00", align 1
@.str.270 = private unnamed_addr constant [31 x i8] c"Thomas D. Wu, Genentech, Inc.\0A\00", align 1
@.str.271 = private unnamed_addr constant [23 x i8] c"Contact: twu@gene.com\0A\00", align 1
@.str.272 = private unnamed_addr constant [89 x i8] c"Usage: gsnap [OPTIONS...] <FASTA file>, or\0A       cat <FASTA file> | gmap [OPTIONS...]\0A\0A\00", align 1
@.str.273 = private unnamed_addr constant [33 x i8] c"Input options (must include -d)\0A\00", align 1
@.str.274 = private unnamed_addr constant [159 x i8] c"  -D, --dir=directory            Genome directory.  Default (as specified by --with-gmapdb to the configure program) is\0A                                   %s\0A\00", align 1
@.str.275 = private unnamed_addr constant [508 x i8] c"  -d, --db=STRING                Genome database\0A  --two-pass                     Two-pass mode, in which the sequences are processed first to identify splice sites\0A                                   and introns, and then aligned using this splicing information\0A  --use-localdb=INT              Whether to use the local suffix arrays, which help with finding extensions to the ends\0A                                   of alignments in the presence of splicing or indels (0=no, 1=yes if available (default))\0A\0A\00", align 1
@.str.276 = private unnamed_addr constant [41 x i8] c"Transcriptome-guided options (optional)\0A\00", align 1
@.str.277 = private unnamed_addr constant [803 x i8] c"  -C, --transcriptdir=directory  Transcriptome directory.  Default is the value for --dir above\0A  -c, --transcriptdb=STRING      Transcriptome database\0A  --transcriptome-mode=STRING    Options: assist, only, annotate (default).  The option assist means\0A                                   to try transcriptome alignment first, but then use genomic alignment\0A                                   if nothing is found.  The option only means to try transcriptome\0A                                   alignment only.  The option annotate means to try only genomic\0A                                   alignment, to use the transcriptome only for annotation; this is\0A                                   the fastest option.  In the other two options, annotation is also\0A                                   performed\0A\0A\00", align 1
@.str.278 = private unnamed_addr constant [21 x i8] c"Computation options\0A\00", align 1
@.str.279 = private unnamed_addr constant [755 x i8] c"  -k, --kmer=INT                 kmer size to use in genome database (allowed values: 16 or less)\0A                                   If not specified, the program will find the highest available\0A                                   kmer size in the genome database\0A  --sampling=INT                 Sampling to use in genome database.  If not specified, the program\0A                                   will find the smallest available sampling value in the genome database\0A                                   within selected k-mer size\0A  -q, --part=INT/INT             Process only the i-th out of every n sequences\0A                                   e.g., 0/100 or 99/100 (useful for distributing jobs\0A                                   to a computer farm).\0A\00", align 1
@.str.280 = private unnamed_addr constant [164 x i8] c"  --input-buffer-size=INT        Size of input buffer (program reads this many sequences\0A                                   at a time for efficiency) (default %d)\0A\00", align 1
@.str.281 = private unnamed_addr constant [152 x i8] c"  --barcode-length=INT           Amount of barcode to remove from start of every read before alignment\0A                                   (default %d)\0A\00", align 1
@.str.282 = private unnamed_addr constant [151 x i8] c"  --endtrim-length=INT           Amount of trim to remove from the end of every read before alignment\0A                                   (default %d)\0A\00", align 1
@.str.283 = private unnamed_addr constant [2938 x i8] c"  --orientation=STRING           Orientation of paired-end reads\0A                                   Allowed values: FR (fwd-rev, or typical Illumina; default),\0A                                   RF (rev-fwd, for circularized inserts), or FF (fwd-fwd, same strand),\0A                                   or 10X (single-cell where read 1 has barcode information; read 2 is rev)\0A  --10x-whitelist=FILE           Whitelist of 10X Genomics GEM bead barcodes, needed to perform correction of\0A                                   cellular barcodes.  This file can be obtained at\0A                                   cellranger-x.y.z/lib/python/cellranger/barcodes (for Cell Ranger version >= 4)\0A                                   cellranger-x.y.z/lib/cellranger-cs/x.y.z/lib/python/cellranger/barcodes (<= 3)\0A  --10x-well-position=INT        Position of well information in the accession, when separated by colons\0A                                   If set to 0, then no well information will be printed in the CB field (default: 4)\0A  --fastq-id-start=INT           Starting position of identifier in FASTQ header, space-delimited (>= 1)\0A  --fastq-id-end=INT             Ending position of identifier in FASTQ header, space-delimited (>= 1)\0A                                 Examples:\0A                                   @HWUSI-EAS100R:6:73:941:1973#0/1\0A                                      start=1, end=1 (default) => identifier is HWUSI-EAS100R:6:73:941:1973#0\0A                                   @SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345 length=36\0A                                      start=1, end=1  => identifier is SRR001666.1\0A                                      start=2, end=2  => identifier is 071112_SLXA-EAS1_s_7:5:1:817:345\0A                                      start=1, end=2  => identifier is SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345\0A  --force-single-end             When multiple FASTQ files are provided on the command line, GSNAP assumes\0A                                    they are matching paired-end files.  This flag treats each file as single-end.\0A  --filter-chastity=STRING       Skips reads marked by the Illumina chastity program.  Expecting a string\0A                                   after the accession having a 'Y' after the first colon, like this:\0A                                         @accession 1:Y:0:CTTGTA\0A                                   where the 'Y' signifies filtering by chastity.\0A                                   Values: off (default), either, both.  For 'either', a 'Y' on either end\0A                                   of a paired-end read will be filtered.  For 'both', a 'Y' is required\0A                                   on both ends of a paired-end read (or on the only end of a single-end read).\0A  --allow-pe-name-mismatch       Allows accession names of reads to mismatch in paired-end files\0A  --interleaved                  Input is in interleaved format (one read per line, tab-delimited\0A\00", align 1
@.str.284 = private unnamed_addr constant [65 x i8] c"  --gunzip                       Uncompress gzipped input files\0A\00", align 1
@.str.285 = private unnamed_addr constant [74 x i8] c"  --bunzip2                      Uncompress bzip2-compressed input files\0A\00", align 1
@.str.286 = private unnamed_addr constant [977 x i8] c"  -B, --batch=INT                Batch mode (default = 2)\0A                                 Mode     Hash offsets  Hash positions  Genome          Local hash offsets  Local hash positions\0A                                   0      allocate      mmap            mmap            allocate            mmap\0A                                   1      allocate      mmap & preload  mmap            allocate            mmap & preload\0A                                   2      allocate      mmap & preload  mmap & preload  allocate            mmap & preload\0A                                   3      allocate      allocate        mmap & preload  allocate            allocate\0A                      (default)    4      allocate      allocate        allocate        allocate            allocate\0A                           Note: For a single sequence, all data structures use mmap\0A                           A batch level of 5 means the same as 4, and is kept only for backward compatibility\0A\00", align 1
@.str.287 = private unnamed_addr constant [707 x i8] c"  --use-shared-memory=INT        If 1, then allocated memory is shared among all processes on this node\0A                                   If 0 (default), then each process has private allocated memory\0A  --preload-shared-memory        Load files indicated by --batch mode into shared memory for use by other\0A                                   GMAP/GSNAP processes on this node, and then exit.  Ignore any input files.\0A  --unload-shared-memory         Unload files indicated by --batch mode into shared memory, or allow them\0A                                   to be unloaded when existing GMAP/GSNAP processes on this node are finished\0A                                   with them.  Ignore any input files.\0A\00", align 1
@.str.288 = private unnamed_addr constant [893 x i8] c"  -m, --max-mismatches=FLOAT     Maximum number of mismatches allowed (if not specified, then\0A                                   GSNAP tries to find the best possible match in the genome)\0A                                   If specified between 0.0 and 1.0, then treated as a fraction\0A                                   of each read length.  Otherwise, treated as an integral number\0A                                   of mismatches (including indel and splicing penalties).\0A                                   Default is 0.3\0A  --query-unk-mismatch=INT       Whether to count unknown (N) characters in the query as a mismatch\0A                                   (0=no (default), 1=yes)\0A  --genome-unk-mismatch=INT      Whether to count unknown (N) characters in the genome as a mismatch\0A                                   (0=no, 1=yes).  If --use-mask is specified, default is no, otherwise yes.\0A\00", align 1
@.str.289 = private unnamed_addr constant [385 x i8] c"  --maxsearch=INT                Maximum number of alignments to find (default %d).\0A                                   Should be larger than --npaths, which is the number to report.\0A                                   Keeping this number large will allow for random selection among multiple alignments.\0A                                   Reducing this number can speed up the program.\0A\00", align 1
@.str.290 = private unnamed_addr constant [336 x i8] c"  -i, --indel-penalty=INT        Penalty for an indel (default %d).\0A                                   Counts against mismatches allowed.  To find indels, make\0A                                   indel-penalty less than or equal to max-mismatches.\0A                                   A value < 2 can lead to false positives at read ends\0A\00", align 1
@.str.291 = private unnamed_addr constant [99 x i8] c"  --indel-endlength=INT          Minimum length at end required for indel alignments (default %d)\0A\00", align 1
@.str.292 = private unnamed_addr constant [349 x i8] c"  -y, --max-middle-insertions=FLOAT  Maximum number of middle insertions allowed (default is %.1f)\0A                                     If specified between 0.0 and 1.0, then treated as a fraction\0A                                     of each read length.  Otherwise, treated as an integral number\0A                                     of base pairs\0A\00", align 1
@.str.293 = private unnamed_addr constant [345 x i8] c"  -z, --max-middle-deletions=FLOAT   Maximum number of middle deletions allowed (default %.1f)\0A                                     If specified between 0.0 and 1.0, then treated as a fraction\0A                                     of each read length.  Otherwise, treated as an integral number\0A                                     of base pairs\0A\00", align 1
@.str.294 = private unnamed_addr constant [88 x i8] c"  -Y, --max-end-insertions=INT   Maximum number of end insertions allowed (default %d)\0A\00", align 1
@.str.295 = private unnamed_addr constant [87 x i8] c"  -Z, --max-end-deletions=INT    Maximum number of end deletions allowed (default %d)\0A\00", align 1
@.str.296 = private unnamed_addr constant [251 x i8] c"  -M, --suboptimal-levels=INT    Report suboptimal hits beyond best hit (default %d)\0A                                   All hits with best score plus suboptimal-levels are reported\0A                                   (Note: Not currently implemented)\0A\00", align 1
@.str.297 = private unnamed_addr constant [309 x i8] c"  -a, --adapter-strip=STRING     Method for removing adapters from reads.  Currently allowed values: off, paired.\0A                                   Default is \22off\22.  To turn on, specify \22paired\22, which removes adapters\0A                                   from paired-end reads if they appear to be present.\0A\00", align 1
@.str.298 = private unnamed_addr constant [359 x i8] c"  --trim-indel-score=INT         Score to use for indels when trimming at ends.  To turn off trimming,\0A                                   specify 0.  Default is %d for both RNA-Seq and DNA-Seq.  Warning:\0A                                   Turning trimming off in RNA-Seq can give false positive indels\0A                                   at the ends of reads\0A\00", align 1
@.str.299 = private unnamed_addr constant [1319 x i8] c"  -e, --use-mask=STRING          Use genome containing masks (e.g. for non-exons) for scoring preference\0A  -V, --snpsdir=STRING           Directory for SNPs index files (created using snpindex) (default is\0A                                   location of genome index files specified using -D and -d)\0A   -v, --use-snps=STRING          Use database containing known SNPs (in <STRING>.iit, built\0A                                   previously using snpindex) for tolerance to SNPs\0A  --cmetdir=STRING               Directory for methylcytosine index files (created using cmetindex)\0A                                   (default is location of genome index files specified using -D, -V, and -d)\0A  --atoidir=STRING               Directory for A-to-I RNA editing index files (created using atoiindex)\0A                                   (default is location of genome index files specified using -D, -V, and -d)\0A  --mode=STRING                  Alignment mode: standard (default), cmet-stranded, cmet-nonstranded,\0A                                    atoi-stranded, atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded.\0A                                    Non-standard modes requires you to have previously run the cmetindex\0A                                    or atoiindex programs (which also cover the ttoc modes) on the genome\0A\00", align 1
@.str.300 = private unnamed_addr constant [59 x i8] c"  -t, --nthreads=INT             Number of worker threads\0A\00", align 1
@.str.301 = private unnamed_addr constant [606 x i8] c"  --max-anchors=INT              Controls number of candidate segments returned by the complete set algorithm\0A                                   Default is 10.  Can be increased to higher values to solve alignments with\0A                                   evenly spaced mismatches at close distances.  However, higher values will\0A                                   cause GSNAP to run more slowly.  A value of 1000, for example, slows down\0A                                   the program by a factor of 10 or so.  Therefore, change this value only if\0A                                   absolutely necessary.\0A\00", align 1
@.str.302 = private unnamed_addr constant [30 x i8] c"Splicing options for DNA-Seq\0A\00", align 1
@.str.303 = private unnamed_addr constant [328 x i8] c"  --find-dna-chimeras=INT              Look for distant splicing involving poor splice sites (0=no, 1=yes)\0A                                         If not specified, then default is to be on unless only known splicing\0A                                         is desired (--use-splicing is specified and --novelsplicing is off)\0A\00", align 1
@.str.304 = private unnamed_addr constant [30 x i8] c"Splicing options for RNA-Seq\0A\00", align 1
@.str.305 = private unnamed_addr constant [819 x i8] c"  -N, --novelsplicing=INT              Look for novel splicing (0=no (default), 1=yes)\0A  --splicingdir=STRING                 Directory for splicing involving known sites or known introns,\0A                                         as specified by the -s or --use-splicing flag (default is\0A                                         directory computed from -D and -d flags).  Note: can\0A                                         just give full pathname to the -s flag instead.\0A  -s, --use-splicing=STRING            Look for splicing involving known sites or known introns\0A                                         (in <STRING>.iit), at short or long distances\0A                                         See README instructions for the distinction between known sites\0A                                         and known introns\0A\00", align 1
@.str.306 = private unnamed_addr constant [94 x i8] c"  -w, --localsplicedist=INT            Definition of local novel splicing event (default %d)\0A\00", align 1
@.str.307 = private unnamed_addr constant [109 x i8] c"  --novelend-splicedist=INT            Distance to look for novel splices at the ends of reads (default %d)\0A\00", align 1
@.str.308 = private unnamed_addr constant [112 x i8] c"  --local-splice-penalty=INT       Penalty for a local splice (default %d).  Counts against mismatches allowed\0A\00", align 1
@.str.309 = private unnamed_addr constant [68 x i8] c"  --fusion-sensitivity=INT         Sensitivity for finding fusions\0A\00", align 1
@.str.310 = private unnamed_addr constant [413 x i8] c"  --distant-splice-penalty=INT     Penalty for a distant splice (default %d).  A distant splice is one where\0A                                         the intron length exceeds the value of -w, or --localsplicedist, or is an\0A                                         inversion, scramble, or translocation between two different chromosomes\0A                                         Counts against mismatches allowed\0A\00", align 1
@.str.311 = private unnamed_addr constant [198 x i8] c"  --distant-splice-endlength=INT   Minimum length at end required for distant spliced alignments (default %d, min\0A                                         allowed is the value of -k, or kmer size)\0A\00", align 1
@.str.312 = private unnamed_addr constant [351 x i8] c"  --shortend-splice-endlength=INT  Minimum length at end required for short-end spliced alignments (default %d,\0A                                         but unless known splice sites are provided with the -s flag, GSNAP may still\0A                                         need the end length to be the value of -k, or kmer size to find a given splice\0A\00", align 1
@.str.313 = private unnamed_addr constant [119 x i8] c"  --distant-splice-identity=FLOAT      Minimum identity at end required for distant spliced alignments (default %.2f)\0A\00", align 1
@.str.314 = private unnamed_addr constant [821 x i8] c"  --antistranded-penalty=INT           (Not currently implemented, since it leads to poor results)\0A                                         Penalty for antistranded splicing when using stranded RNA-Seq protocols.\0A                                         A positive value, such as 1, expects antisense on the first read\0A                                         and sense on the second read.  Default is 0, which treats sense and antisense\0A                                         equally well\0A  --merge-distant-samechr              Report distant splices on the same chromosome as a single splice, if possible.\0A                                         Will produce a single SAM line instead of two SAM lines, which is also done\0A                                         for translocations, inversions, and scramble events\0A\00", align 1
@.str.315 = private unnamed_addr constant [30 x i8] c"Options for paired-end reads\0A\00", align 1
@.str.316 = private unnamed_addr constant [368 x i8] c"  --pairmax-dna=INT              Max total genomic length for DNA-Seq paired reads, or other reads\0A                                   without splicing (default %d).  Used if -N or -s is not specified.\0A                                   This value is also used for circular chromosomes when splicing in\0A                                   linear chromosomes is allowed\0A\00", align 1
@.str.317 = private unnamed_addr constant [300 x i8] c"  --pairmax-rna=INT              Max total genomic length for RNA-Seq paired reads, or other reads\0A                                   that could have a splice (default %d).  Used if -N or -s is specified.\0A                                   Should probably match the value for -w, --localsplicedist.\0A\00", align 1
@.str.318 = private unnamed_addr constant [161 x i8] c"  --pass1-min-support=INT        Threshold read support for learning an intron during pass 1 of --two-pass mode\0A                                   (default %d)\0A\00", align 1
@.str.319 = private unnamed_addr constant [28 x i8] c"Options for quality scores\0A\00", align 1
@.str.320 = private unnamed_addr constant [943 x i8] c"  --quality-protocol=STRING      Protocol for input quality scores.  Allowed values:\0A                                   illumina (ASCII 64-126) (equivalent to -J 64 -j -31)\0A                                   sanger   (ASCII 33-126) (equivalent to -J 33 -j 0)\0A                                 Default is sanger (no quality print shift)\0A                                 SAM output files should have quality scores in sanger protocol\0A\0A                                 Or you can customize this behavior with these flags:\0A  -J, --quality-zero-score=INT   FASTQ quality scores are zero at this ASCII value\0A                                   (default is 33 for sanger protocol; for Illumina, select 64)\0A  -j, --quality-print-shift=INT  Shift FASTQ quality scores by this amount in output\0A                                   (default is 0 for sanger protocol; to change Illumina input\0A                                   to Sanger output, select -31)\0A\00", align 1
@.str.321 = private unnamed_addr constant [16 x i8] c"Output options\0A\00", align 1
@.str.322 = private unnamed_addr constant [81 x i8] c"  -n, --npaths=INT               Maximum number of paths to print (default %d).\0A\00", align 1
@.str.323 = private unnamed_addr constant [1541 x i8] c"  -Q, --quiet-if-excessive       If more than maximum number of paths are found,\0A                                   then nothing is printed.\0A  -O, --ordered                  Print output in same order as input (relevant\0A                                   only if there is more than one worker thread)\0A  --show-refdiff                 For GSNAP output in SNP-tolerant alignment, shows all differences\0A                                   relative to the reference genome as lower case (otherwise, it shows\0A                                   all differences relative to both the reference and alternate genome)\0A  --clip-overlap                 For paired-end reads whose alignments overlap, clip the overlapping region.\0A  --merge-overlap                For paired-end reads whose alignments overlap, merge the two ends into a single end (beta implementation)\0A  --print-snps                   Print detailed information about SNPs in reads (works only if -v also selected)\0A                                   (not fully implemented yet)\0A  --failsonly                    Print only failed alignments, those with no results\0A  --nofails                      Exclude printing of failed alignments\0A  --only-concordant              Print only concordant alignments (concordant_uniq, concordant_mult, concordant_circular)\0A  --omit-concordant-uniq         Do not print any concordant_uniq alignments\0A  --omit-concordant-mult         Do not print any concordant_mult alignments\0A  --omit-softclipped             Do not allow any alignments with soft clips\0A\00", align 1
@.str.324 = private unnamed_addr constant [164 x i8] c"  -A, --format=STRING            Another format type, other than default.\0A                                   Currently implemented: sam, m8 (BLAST tabular format)\0A\00", align 1
@.str.325 = private unnamed_addr constant [1176 x i8] c"  --split-output=STRING          Basename for multiple-file output, separately for nomapping,\0A                                   halfmapping_uniq, halfmapping_mult, unpaired_uniq, unpaired_mult,\0A                                   paired_uniq, paired_mult, concordant_uniq, and concordant_mult results\0A  -o, --output-file=STRING       File name for a single stream of output results.\0A  --failed-input=STRING          Print completely failed alignments as input FASTA or FASTQ format,\0A                                    to the given file, appending .1 or .2, for paired-end data.\0A                                    If the --split-output flag is also given, this file is generated\0A                                    in addition to the output in the .nomapping file.\0A  --append-output                When --split-output or --failed-input is given, this flag will append output\0A                                    to the existing files.  Otherwise, the default is to create new files.\0A  --order-among-best=STRING      Among alignments tied with the best score, order those alignments in this order.\0A                                    Allowed values: genomic, random (default)\0A\00", align 1
@.str.326 = private unnamed_addr constant [271 x i8] c"  --output-buffer-size=INT       Buffer size, in queries, for output thread (default %d).  When the number\0A                                   of results to be printed exceeds this size, worker threads wait\0A                                   until the backlog is cleared\0A\00", align 1
@.str.327 = private unnamed_addr constant [24 x i8] c"Options for SAM output\0A\00", align 1
@.str.328 = private unnamed_addr constant [3263 x i8] c"  --no-sam-headers               Do not print headers beginning with '@'\0A  --add-paired-nomappers         Add nomapper lines as needed to make all paired-end results alternate\0A                                   between first end and second end\0A  --paired-flag-means-concordant=INT  Whether the paired bit in the SAM flags means concordant only (1)\0A                                 or paired plus concordant (0, default)\0A  --sam-headers-batch=INT        Print headers only for this batch, as specified by -q\0A  --sam-hardclip-use-S           Use S instead of H for hardclips\0A  --sam-use-0M                   Insert 0M in CIGAR between adjacent insertions, deletions, and introns\0A                                   Picard disallows 0M, other tools may require it\0A  --sam-extended-cigar           Use extended CIGAR format (using X and = symbols instead of M,\0A                                   to indicate matches and mismatches, respectively\0A  --sam-multiple-primaries       Allows multiple alignments to be marked as primary if they\0A                                   have equally good mapping scores\0A  --sam-sparse-secondaries       For secondary alignments (in multiple mappings), uses '*' for SEQ\0A                                   and QUAL fields, to give smaller file sizes.  However, the output\0A                                   will give warnings in Picard to give warnings and may not work\0A                                   with downstream tools\0A  --force-xs-dir                 For RNA-Seq alignments, disallows XS:A:? when the sense direction\0A                                   is unclear, and replaces this value arbitrarily with XS:A:+.\0A                                   May be useful for some programs, such as Cufflinks, that cannot\0A                                   handle XS:A:?.  However, if you use this flag, the reported value\0A                                   of XS:A:+ in these cases will not be meaningful.\0A  --md-report-snps               In MD string, when known SNPs are given by the -v flag,\0A                                   prints difference nucleotides when they differ\0A                                   from reference but match a known alternate allele\0A  --no-soft-clips                Does not allow soft clips at ends.  Mismatches will be counted over the entire query\0A  --extend-soft-clips            Extends alignments through soft clipped regions.  CIGAR string and coordinates\0A                                   will be revised, but mismatches and the MD string will reflect the clipped CIGAR\0A  --action-if-cigar-error        Action to take if there is a disagreement between CIGAR length and sequence length\0A                                   Allowed values: ignore, warning (default), noprint, abort\0A                                   Note that the noprint option does not print the CIGAR string at all if there\0A                                   is an error, so it may break a SAM parser\0A  --read-group-id=STRING         Value to put into read-group id (RG-ID) field\0A  --read-group-name=STRING       Value to put into read-group name (RG-SM) field\0A  --read-group-library=STRING    Value to put into read-group library (RG-LB) field\0A  --read-group-platform=STRING   Value to put into read-group library (RG-PL) field\0A\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"Help options\0A\00", align 1
@.str.330 = private unnamed_addr constant [163 x i8] c"  --check                        Check compiler assumptions\0A  --version                      Show version\0A  --help                         Show this help message\0A\00", align 1
@.str.331 = private unnamed_addr constant [29 x i8] c"value %s is not a valid int\0A\00", align 1
@.str.332 = private unnamed_addr constant [31 x i8] c"value %s is not a valid float\0A\00", align 1
@.str.333 = private unnamed_addr constant [51 x i8] c"Value for option %s should be between 0.0 and 1.0\0A\00", align 1
@.str.334 = private unnamed_addr constant [45 x i8] c"Value %s for option %s is not a valid float\0A\00", align 1
@.str.335 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.336 = private unnamed_addr constant [36 x i8] c"Cannot parse first integer from %s\0A\00", align 1
@.str.337 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.338 = private unnamed_addr constant [67 x i8] c"In %s, batch number %u must be less than the number of batches %u\0A\00", align 1
@.str.339 = private unnamed_addr constant [58 x i8] c"Bad batch specification %s.  Batch interval cannot be 0.\0A\00", align 1
@.str.340 = private unnamed_addr constant [41 x i8] c"Checking compiler assumptions for SSE2: \00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"%08X %08X\00", align 1
@.str.342 = private unnamed_addr constant [11 x i8] c" xor=%08X\0A\00", align 1
@.str.343 = private unnamed_addr constant [43 x i8] c"Checking compiler assumptions for SSE4.1: \00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.345 = private unnamed_addr constant [12 x i8] c" max=%d => \00", align 1
@.str.346 = private unnamed_addr constant [23 x i8] c"compiler sign extends\0A\00", align 1
@.str.347 = private unnamed_addr constant [23 x i8] c"compiler zero extends\0A\00", align 1
@.str.348 = private unnamed_addr constant [51 x i8] c"Checking compiler assumptions for SSE4.2 options: \00", align 1
@.str.349 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"_mm_popcnt_u32=%d \00", align 1
@.str.351 = private unnamed_addr constant [40 x i8] c"Finished checking compiler assumptions\0A\00", align 1
@.str.352 = private unnamed_addr constant [26 x i8] c"Signal received: SIGABRT\0A\00", align 1
@.str.353 = private unnamed_addr constant [25 x i8] c"Signal received: SIGFPE\0A\00", align 1
@.str.354 = private unnamed_addr constant [25 x i8] c"Signal received: SIGHUP\0A\00", align 1
@.str.355 = private unnamed_addr constant [25 x i8] c"Signal received: SIGILL\0A\00", align 1
@.str.356 = private unnamed_addr constant [75 x i8] c"An illegal instruction means that this program is being run on a computer\0A\00", align 1
@.str.357 = private unnamed_addr constant [73 x i8] c"  with different features than the computer used to compile the program\0A\00", align 1
@.str.358 = private unnamed_addr constant [88 x i8] c"You may need to re-compile the program on the same computer type as the target machine\0A\00", align 1
@.str.359 = private unnamed_addr constant [61 x i8] c"  or re-compile with fewer features by doing something like\0A\00", align 1
@.str.360 = private unnamed_addr constant [30 x i8] c"  ./configure --disable-simd\0A\00", align 1
@.str.361 = private unnamed_addr constant [25 x i8] c"Signal received: SIGINT\0A\00", align 1
@.str.362 = private unnamed_addr constant [26 x i8] c"Signal received: SIGPIPE\0A\00", align 1
@.str.363 = private unnamed_addr constant [26 x i8] c"Signal received: SIGQUIT\0A\00", align 1
@.str.364 = private unnamed_addr constant [26 x i8] c"Signal received: SIGSEGV\0A\00", align 1
@.str.365 = private unnamed_addr constant [25 x i8] c"Signal received: SIGSYS\0A\00", align 1
@.str.366 = private unnamed_addr constant [26 x i8] c"Signal received: SIGTERM\0A\00", align 1
@.str.367 = private unnamed_addr constant [26 x i8] c"Signal received: SIGTRAP\0A\00", align 1
@.str.368 = private unnamed_addr constant [26 x i8] c"Signal received: SIGXCPU\0A\00", align 1
@.str.369 = private unnamed_addr constant [26 x i8] c"Signal received: SIGXFSZ\0A\00", align 1
@.str.370 = private unnamed_addr constant [41 x i8] c"Unable to retrieve queryseq for request\0A\00", align 1
@.str.371 = private unnamed_addr constant [19 x i8] c"Problem sequence: \00", align 1
@.str.372 = private unnamed_addr constant [12 x i8] c"%s (%d bp)\0A\00", align 1
@stdin = external global ptr, align 8
@.str.373 = private unnamed_addr constant [20 x i8] c"Reading from stdin\0A\00", align 1
@.str.374 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.375 = private unnamed_addr constant [29 x i8] c"Cannot open gzipped file %s\0A\00", align 1
@.str.376 = private unnamed_addr constant [29 x i8] c"Cannot open bzipped file %s\0A\00", align 1
@.str.377 = private unnamed_addr constant [22 x i8] c"Unable to read input\0A\00", align 1
@.str.378 = private unnamed_addr constant [25 x i8] c"Warning: input is empty\0A\00", align 1
@.str.379 = private unnamed_addr constant [27 x i8] c"Cannot open bzip2 file %s\0A\00", align 1
@.str.380 = private unnamed_addr constant [114 x i8] c"First char is %c.  Expecting either '>' for FASTA or '@' for FASTQ format.  If file is gzipped, specify --gunzip\0A\00", align 1
@.str.381 = private unnamed_addr constant [21 x i8] c"%s/%s.chromosome.iit\00", align 1
@.str.382 = private unnamed_addr constant [26 x i8] c"IIT file %s is not valid\0A\00", align 1
@.str.383 = private unnamed_addr constant [9 x i8] c"circular\00", align 1
@.str.384 = private unnamed_addr constant [22 x i8] c"%s/%s.altscaffold.iit\00", align 1
@altlocp = internal global ptr null, align 8
@alias_starts = internal global ptr null, align 8
@alias_ends = internal global ptr null, align 8
@.str.385 = private unnamed_addr constant [30 x i8] c"Found altscaffold file found\0A\00", align 1
@transcriptomebits = internal global ptr null, align 8
@genomealt = internal global ptr null, align 8
@genome = internal global ptr null, align 8
@genomebits = internal global ptr null, align 8
@genomebits_alt = internal global ptr null, align 8
@transcriptomebits_alt = internal global ptr null, align 8
@.str.386 = private unnamed_addr constant [6 x i8] c"metct\00", align 1
@.str.387 = private unnamed_addr constant [6 x i8] c"metga\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"a2iag\00", align 1
@.str.389 = private unnamed_addr constant [6 x i8] c"a2itc\00", align 1
@index1part = internal global i32 15, align 4
@index1interval = internal global i32 0, align 4
@indexdb = internal global ptr null, align 8
@.str.390 = private unnamed_addr constant [57 x i8] c"Cannot find %s index file.  Need to run cmetindex first\0A\00", align 1
@.str.391 = private unnamed_addr constant [57 x i8] c"Cannot find %s index file.  Need to run atoiindex first\0A\00", align 1
@.str.392 = private unnamed_addr constant [27 x i8] c"Cannot find %s index file\0A\00", align 1
@indexdb_nonstd = internal global ptr null, align 8
@.str.393 = private unnamed_addr constant [119 x i8] c"Not loading localdb files, either because reads are DNA-seq (without -N, -s, or -c flags) or because of --use-local=0\0A\00", align 1
@localdb = internal global ptr null, align 8
@localdb_access = internal global i32 1, align 4
@.str.394 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.395 = private unnamed_addr constant [27 x i8] c"Reading SNPs file %s/%s...\00", align 1
@snps_iit = internal global ptr null, align 8
@.str.396 = private unnamed_addr constant [35 x i8] c"SNPs file %s.iit not found in %s.\0A\00", align 1
@.str.397 = private unnamed_addr constant [18 x i8] c"Available files:\0A\00", align 1
@.str.398 = private unnamed_addr constant [68 x i8] c"Either install file %s.iit or specify a directory for the IIT file\0A\00", align 1
@.str.399 = private unnamed_addr constant [20 x i8] c"using the -M flag.\0A\00", align 1
@snps_divint_crosstable = internal global ptr null, align 8
@.str.400 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.401 = private unnamed_addr constant [79 x i8] c"Minimum value for distant-splice-endlength is the value for -k (kmer size) %d\0A\00", align 1
@indexdb_size_threshold = internal global i32 0, align 4
@splicing_iit = internal global ptr null, align 8
@.str.402 = private unnamed_addr constant [36 x i8] c"Reading splicing file %s locally...\00", align 1
@.str.403 = private unnamed_addr constant [28 x i8] c"Reading splicing file %s...\00", align 1
@.str.404 = private unnamed_addr constant [68 x i8] c"Splicing file %s.iit not found locally or in %s.  Available files:\0A\00", align 1
@.str.405 = private unnamed_addr constant [57 x i8] c"Either install file %s or specify a full directory path\0A\00", align 1
@splicing_divint_crosstable = internal global ptr null, align 8
@.str.406 = private unnamed_addr constant [6 x i8] c"donor\00", align 1
@donor_typeint = internal global i32 -1, align 4
@.str.407 = private unnamed_addr constant [9 x i8] c"acceptor\00", align 1
@acceptor_typeint = internal global i32 -1, align 4
@.str.408 = private unnamed_addr constant [127 x i8] c"found donor and acceptor tags, so treating as splicesites file.  Note: intron-level splicing information gives better results\0A\00", align 1
@intron_level_p = internal global i8 0, align 1
@.str.409 = private unnamed_addr constant [147 x i8] c"\0AWarning: No splicesites observed for genome %s.  Are you sure this splicesite file was built for this genome?  Please compare chromosomes below:\0A\00", align 1
@.str.410 = private unnamed_addr constant [28 x i8] c"Chromosomes in the genome: \00", align 1
@.str.411 = private unnamed_addr constant [42 x i8] c"Chromosomes in the splicesites IIT file: \00", align 1
@.str.412 = private unnamed_addr constant [69 x i8] c"did not find donor and acceptor tags, so treating as an intron file\0A\00", align 1
@.str.413 = private unnamed_addr constant [13 x i8] c"unloading...\00", align 1
@.str.414 = private unnamed_addr constant [29 x i8] c"Cannot open splices file %s\0A\00", align 1
@.str.415 = private unnamed_addr constant [28 x i8] c"Cannot open indels file %s\0A\00", align 1
@splicingp = internal global i8 0, align 1
@tally_iit = internal global ptr null, align 8
@.str.416 = private unnamed_addr constant [37 x i8] c"Reading tally file %s.iit locally...\00", align 1
@.str.417 = private unnamed_addr constant [25 x i8] c"Reading tally file %s...\00", align 1
@.str.418 = private unnamed_addr constant [36 x i8] c"Tally file %s.iit not found locally\00", align 1
@.str.419 = private unnamed_addr constant [10 x i8] c" or in %s\00", align 1
@.str.420 = private unnamed_addr constant [11 x i8] c" or in %s\0A\00", align 1
@tally_divint_crosstable = internal global ptr null, align 8
@runlength_iit = internal global ptr null, align 8
@.str.421 = private unnamed_addr constant [41 x i8] c"Reading runlength file %s.iit locally...\00", align 1
@.str.422 = private unnamed_addr constant [29 x i8] c"Reading runlength file %s...\00", align 1
@.str.423 = private unnamed_addr constant [40 x i8] c"Runlength file %s.iit not found locally\00", align 1
@runlength_divint_crosstable = internal global ptr null, align 8
@min_intronlength = internal global i32 9, align 4
@repetitive_ef64 = internal global ptr null, align 8
@.str.424 = private unnamed_addr constant [67 x i8] c"This version of GSNAP requires the genomefwdh file for the genome\0A\00", align 1
@min_querylength = internal global i32 0, align 4
@.str.425 = private unnamed_addr constant [17 x i8] c"Unknown pass %d\0A\00", align 1
@.str.426 = private unnamed_addr constant [9 x i8] c"%s\09%.6f\0A\00", align 1
@.str.427 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.428 = private unnamed_addr constant [16 x i8] c"unnamed (%d bp)\00", align 1
@.str.429 = private unnamed_addr constant [11 x i8] c"%s (%d bp)\00", align 1
@.str.430 = private unnamed_addr constant [83 x i8] c"To obtain a core dump, re-run program on problem sequence with the -0 [zero] flag\0A\00", align 1
@.str.431 = private unnamed_addr constant [12 x i8] c"Exiting...\0A\00", align 1
@.str.432 = private unnamed_addr constant [23 x i8] c".././../src/uintlist.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #14
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.17, i32 noundef 66)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 0
  store ptr %0, ptr %first, align 8, !tbaa !9
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !11
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #14
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_out(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #14
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.17, i32 noundef 75)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 0
  store ptr %0, ptr %first, align 8, !tbaa !9
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !11
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #14
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_pop_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #14
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %head, align 8, !tbaa !5
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %first, align 8, !tbaa !9
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !5
  store ptr %4, ptr %5, align 8, !tbaa !5
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %6, ptr noundef @.str.17, i32 noundef 137)
  store ptr null, ptr %list.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #14
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %nchars1 = alloca i32, align 4
  %nchars2 = alloca i32, align 4
  %cmdline_status = alloca i32, align 4
  %transcriptomesubdir = alloca ptr, align 8
  %genomesubdir = alloca ptr, align 8
  %transcriptome_fileroot = alloca ptr, align 8
  %genome_fileroot = alloca ptr, align 8
  %dbversion = alloca ptr, align 8
  %iitfile = alloca ptr, align 8
  %files = alloca ptr, align 8
  %nfiles = alloca i32, align 4
  %line = alloca ptr, align 8
  %chr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca i8, align 1
  %length = alloca i32, align 4
  %chrnum = alloca i32, align 4
  %fp = alloca ptr, align 8
  %input = alloca ptr, align 8
  %input2 = alloca ptr, align 8
  %gzipped = alloca ptr, align 8
  %gzipped2 = alloca ptr, align 8
  %bzipped = alloca ptr, align 8
  %bzipped2 = alloca ptr, align 8
  %worker_id = alloca i64, align 8
  %nread = alloca i32, align 4
  %nextchar = alloca i32, align 4
  %runtime = alloca double, align 8
  %ret = alloca i32, align 4
  %thread_attr_join = alloca %union.pthread_attr_t, align 8
  %signal_action = alloca %struct.sigaction, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !12
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchars1) #14
  store i32 0, ptr %nchars1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchars2) #14
  store i32 0, ptr %nchars2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmdline_status) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcriptomesubdir) #14
  store ptr null, ptr %transcriptomesubdir, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %genomesubdir) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcriptome_fileroot) #14
  store ptr null, ptr %transcriptome_fileroot, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %genome_fileroot) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbversion) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %iitfile) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %files) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfiles) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %chr) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %chrnum) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %input2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %gzipped) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %gzipped2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %bzipped) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %bzipped2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker_id) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nread) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextchar) #14
  store i32 0, ptr %nextchar, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %runtime) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr %thread_attr_join) #14
  call void @llvm.lifetime.start.p0(i64 152, ptr %signal_action) #14
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %2 = load i32, ptr @optind, align 4, !tbaa !12
  %call = call i32 @parse_command_line(i32 noundef %0, ptr noundef %1, i32 noundef %2)
  store i32 %call, ptr %cmdline_status, align 4, !tbaa !12
  %3 = load i32, ptr @optind, align 4, !tbaa !12
  %4 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %4, %3
  store i32 %sub, ptr %argc.addr, align 4, !tbaa !12
  %5 = load i32, ptr @optind, align 4, !tbaa !12
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %argv.addr, align 8, !tbaa !5
  %7 = load i32, ptr %cmdline_status, align 4, !tbaa !12
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, ptr %cmdline_status, align 4, !tbaa !12
  %cmp1 = icmp eq i32 %8, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  call void @exit(i32 noundef 0) #15
  unreachable

if.else3:                                         ; preds = %if.else
  %9 = load i32, ptr %cmdline_status, align 4, !tbaa !12
  call void @exit(i32 noundef %9) #15
  unreachable

if.end:                                           ; preds = %if.then
  call void @check_compiler_assumptions()
  %10 = load i8, ptr @exception_raise_p, align 1, !tbaa !14
  %conv = zext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str)
  call void (...) @Except_inactivate()
  br label %if.end24

if.else8:                                         ; preds = %if.end
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, ptr %signal_action, i32 0, i32 0
  store ptr @signal_handler, ptr %__sigaction_handler, align 8, !tbaa !14
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %signal_action, i32 0, i32 2
  store i32 0, ptr %sa_flags, align 8, !tbaa !15
  %sa_mask = getelementptr inbounds %struct.sigaction, ptr %signal_action, i32 0, i32 1
  %call9 = call i32 @sigfillset(ptr noundef %sa_mask) #14
  %call10 = call i32 @sigaction(i32 noundef 6, ptr noundef %signal_action, ptr noundef null) #14
  %call11 = call i32 @sigaction(i32 noundef 7, ptr noundef %signal_action, ptr noundef null) #14
  %call12 = call i32 @sigaction(i32 noundef 8, ptr noundef %signal_action, ptr noundef null) #14
  %call13 = call i32 @sigaction(i32 noundef 1, ptr noundef %signal_action, ptr noundef null) #14
  %call14 = call i32 @sigaction(i32 noundef 4, ptr noundef %signal_action, ptr noundef null) #14
  %call15 = call i32 @sigaction(i32 noundef 2, ptr noundef %signal_action, ptr noundef null) #14
  %call16 = call i32 @sigaction(i32 noundef 13, ptr noundef %signal_action, ptr noundef null) #14
  %call17 = call i32 @sigaction(i32 noundef 3, ptr noundef %signal_action, ptr noundef null) #14
  %call18 = call i32 @sigaction(i32 noundef 11, ptr noundef %signal_action, ptr noundef null) #14
  %call19 = call i32 @sigaction(i32 noundef 31, ptr noundef %signal_action, ptr noundef null) #14
  %call20 = call i32 @sigaction(i32 noundef 15, ptr noundef %signal_action, ptr noundef null) #14
  %call21 = call i32 @sigaction(i32 noundef 5, ptr noundef %signal_action, ptr noundef null) #14
  %call22 = call i32 @sigaction(i32 noundef 24, ptr noundef %signal_action, ptr noundef null) #14
  %call23 = call i32 @sigaction(i32 noundef 25, ptr noundef %signal_action, ptr noundef null) #14
  br label %if.end24

if.end24:                                         ; preds = %if.else8, %if.then6
  %12 = load ptr, ptr @whitelist_file, align 8, !tbaa !5
  %cmp25 = icmp ne ptr %12, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %13 = load ptr, ptr @whitelist_file, align 8, !tbaa !5
  %14 = load ptr, ptr @read_files_command, align 8, !tbaa !5
  %15 = load i8, ptr @gunzip_p, align 1, !tbaa !14
  %16 = load i8, ptr @bunzip2_p, align 1, !tbaa !14
  %17 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %18 = load i32, ptr %argc.addr, align 4, !tbaa !12
  call void @Single_cell_compute_priors(ptr noundef %13, ptr noundef %14, i8 noundef zeroext %15, i8 noundef zeroext %16, ptr noundef %17, i32 noundef %18)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %19 = load ptr, ptr @read_files_command, align 8, !tbaa !5
  %20 = load i8, ptr @gunzip_p, align 1, !tbaa !14
  %21 = load i8, ptr @bunzip2_p, align 1, !tbaa !14
  %22 = load i8, ptr @interleavedp, align 1, !tbaa !14
  %23 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %call29 = call zeroext i8 @open_input_streams_parser(ptr noundef %nextchar, ptr noundef %nchars1, ptr noundef %nchars2, ptr noundef @paired_end_p, ptr noundef %files, ptr noundef %nfiles, ptr noundef %input, ptr noundef %input2, ptr noundef %gzipped, ptr noundef %gzipped2, ptr noundef %bzipped, ptr noundef %bzipped2, ptr noundef %19, i8 noundef zeroext %20, i8 noundef zeroext %21, i8 noundef zeroext %22, i32 noundef %23, ptr noundef %24)
  store i8 %call29, ptr @fastq_format_p, align 1, !tbaa !14
  %25 = load i32, ptr @mode, align 4, !tbaa !14
  call void @Oligo_setup(i32 noundef %25)
  %26 = load i32, ptr @acc_fieldi_start, align 4, !tbaa !12
  %27 = load i32, ptr @acc_fieldi_end, align 4, !tbaa !12
  %28 = load i8, ptr @force_single_end_p, align 1, !tbaa !14
  %29 = load i8, ptr @filter_chastity_p, align 1, !tbaa !14
  %30 = load i8, ptr @keep_chastity_p, align 1, !tbaa !14
  %31 = load i8, ptr @allow_paired_end_mismatch_p, align 1, !tbaa !14
  %32 = load i8, ptr @fastq_format_p, align 1, !tbaa !14
  %33 = load i32, ptr @barcode_length, align 4, !tbaa !12
  %34 = load i32, ptr @endtrim_length, align 4, !tbaa !12
  %35 = load i8, ptr @invert_first_p, align 1, !tbaa !14
  %36 = load i8, ptr @invert_second_p, align 1, !tbaa !14
  %37 = load i8, ptr @chop_poly_at_first_p, align 1, !tbaa !14
  %38 = load i8, ptr @chop_poly_at_second_p, align 1, !tbaa !14
  call void @Shortread_setup(i32 noundef %26, i32 noundef %27, i8 noundef zeroext %28, i8 noundef zeroext %29, i8 noundef zeroext %30, i8 noundef zeroext %31, i8 noundef zeroext %32, i32 noundef %33, i32 noundef %34, i8 noundef zeroext %35, i8 noundef zeroext %36, i8 noundef zeroext %37, i8 noundef zeroext %38)
  %39 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %40 = load i8, ptr @filter_if_both_p, align 1, !tbaa !14
  call void @Inbuffer_setup(i8 noundef zeroext %39, i8 noundef zeroext %40)
  %41 = load i32, ptr %nextchar, align 4, !tbaa !12
  %42 = load ptr, ptr %input, align 8, !tbaa !5
  %43 = load ptr, ptr %input2, align 8, !tbaa !5
  %44 = load ptr, ptr %gzipped, align 8, !tbaa !5
  %45 = load ptr, ptr %gzipped2, align 8, !tbaa !5
  %46 = load ptr, ptr %bzipped, align 8, !tbaa !5
  %47 = load ptr, ptr %bzipped2, align 8, !tbaa !5
  %48 = load i8, ptr @interleavedp, align 1, !tbaa !14
  %49 = load ptr, ptr @read_files_command, align 8, !tbaa !5
  %50 = load ptr, ptr %files, align 8, !tbaa !5
  %51 = load i32, ptr %nfiles, align 4, !tbaa !12
  %52 = load i32, ptr @input_buffer_size, align 4, !tbaa !12
  %53 = load i32, ptr @part_modulus, align 4, !tbaa !12
  %54 = load i32, ptr @part_interval, align 4, !tbaa !12
  %call30 = call ptr @Inbuffer_new(i32 noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, i8 noundef zeroext %48, ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54)
  store ptr %call30, ptr @inbuffer, align 8, !tbaa !5
  %55 = load ptr, ptr @inbuffer, align 8, !tbaa !5
  %call31 = call i32 @Inbuffer_fill_init(ptr noundef %55)
  store i32 %call31, ptr %nread, align 4, !tbaa !12
  %cmp32 = icmp sgt i32 %call31, 1
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end28
  store i8 1, ptr @multiple_sequences_p, align 1, !tbaa !14
  br label %if.end36

if.else35:                                        ; preds = %if.end28
  store i8 0, ptr @multiple_sequences_p, align 1, !tbaa !14
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  %56 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %conv37 = zext i8 %56 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %57 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %conv40 = zext i8 %57 to i32
  %cmp41 = icmp eq i32 %conv40, 1
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %lor.lhs.false, %if.end36
  br label %if.end51

if.else44:                                        ; preds = %lor.lhs.false
  %58 = load i8, ptr @multiple_sequences_p, align 1, !tbaa !14
  %conv45 = zext i8 %58 to i32
  %cmp46 = icmp eq i32 %conv45, 1
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else44
  br label %if.end50

if.else49:                                        ; preds = %if.else44
  store i8 0, ptr @expand_offsets_p, align 1, !tbaa !14
  store i32 1, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 1, ptr @positions_access, align 4, !tbaa !14
  store i32 1, ptr @genome_access, align 4, !tbaa !14
  store i32 1, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 1, ptr @locpositions_access, align 4, !tbaa !14
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then43
  %59 = load ptr, ptr @user_genomedir, align 8, !tbaa !5
  %60 = load ptr, ptr @genome_dbroot, align 8, !tbaa !5
  %call52 = call ptr @Datadir_find_genomesubdir(ptr noundef %genome_fileroot, ptr noundef %dbversion, ptr noundef %59, ptr noundef %60)
  store ptr %call52, ptr %genomesubdir, align 8, !tbaa !5
  %61 = load ptr, ptr %dbversion, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %61, ptr noundef @.str.1, i32 noundef 4114)
  store ptr null, ptr %dbversion, align 8, !tbaa !5
  %62 = load ptr, ptr %genomesubdir, align 8, !tbaa !5
  %63 = load ptr, ptr %genome_fileroot, align 8, !tbaa !5
  %call53 = call ptr @chromosome_iit_setup(ptr noundef @genomelength, ptr noundef @nchromosomes, ptr noundef @circular_typeint, ptr noundef @any_circular_p, ptr noundef @circularp, ptr noundef %62, ptr noundef %63)
  store ptr %call53, ptr @chromosome_iit, align 8, !tbaa !5
  %64 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  %call54 = call ptr @EF64_new_from_chromosome_iit(ptr noundef %64)
  store ptr %call54, ptr @chromosome_ef64, align 8, !tbaa !5
  %65 = load ptr, ptr @chrsubset_file, align 8, !tbaa !5
  %cmp55 = icmp eq ptr %65, null
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.end51
  br label %if.end99

if.else58:                                        ; preds = %if.end51
  %66 = load ptr, ptr @chrsubset_file, align 8, !tbaa !5
  %call59 = call noalias ptr @fopen(ptr noundef %66, ptr noundef @.str.2)
  store ptr %call59, ptr %fp, align 8, !tbaa !5
  %cmp60 = icmp eq ptr %call59, null
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.else58
  %67 = load ptr, ptr @stderr, align 8, !tbaa !5
  %68 = load ptr, ptr @chrsubset_file, align 8, !tbaa !5
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.3, ptr noundef %68)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else64:                                        ; preds = %if.else58
  %69 = load i32, ptr @nchromosomes, align 4, !tbaa !12
  %add = add nsw i32 %69, 1
  %conv65 = sext i32 %add to i64
  %call66 = call ptr @Mem_calloc(i64 noundef %conv65, i64 noundef 1, ptr noundef @.str.1, i32 noundef 4125)
  store ptr %call66, ptr @chrsubsetp, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end95, %if.else64
  %70 = load ptr, ptr %fp, align 8, !tbaa !5
  %call67 = call ptr @Getline(ptr noundef %70)
  store ptr %call67, ptr %line, align 8, !tbaa !5
  %cmp68 = icmp ne ptr %call67, null
  br i1 %cmp68, label %while.body, label %while.end96

while.body:                                       ; preds = %while.cond
  %71 = load ptr, ptr %line, align 8, !tbaa !5
  store ptr %71, ptr %p, align 8, !tbaa !5
  br label %while.cond70

while.cond70:                                     ; preds = %while.body77, %while.body
  %72 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  %73 = load i8, ptr %72, align 1, !tbaa !14
  store i8 %73, ptr %c, align 1, !tbaa !14
  %conv71 = sext i8 %73 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond70
  %call74 = call ptr @__ctype_b_loc() #16
  %74 = load ptr, ptr %call74, align 8, !tbaa !5
  %75 = load i8, ptr %c, align 1, !tbaa !14
  %conv75 = sext i8 %75 to i32
  %idxprom = sext i32 %conv75 to i64
  %arrayidx = getelementptr inbounds i16, ptr %74, i64 %idxprom
  %76 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %conv76 = zext i16 %76 to i32
  %and = and i32 %conv76, 8192
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond70
  %77 = phi i1 [ false, %while.cond70 ], [ %lnot, %land.rhs ]
  br i1 %77, label %while.body77, label %while.end

while.body77:                                     ; preds = %land.end
  br label %while.cond70, !llvm.loop !20

while.end:                                        ; preds = %land.end
  %78 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr78 = getelementptr inbounds i8, ptr %78, i64 -1
  %79 = load ptr, ptr %line, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr78 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv79 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv79, ptr %length, align 4, !tbaa !12
  %80 = load i32, ptr %length, align 4, !tbaa !12
  %add80 = add nsw i32 %80, 1
  %conv81 = sext i32 %add80 to i64
  %mul = mul i64 %conv81, 1
  %call82 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str.1, i32 noundef 4131)
  store ptr %call82, ptr %chr, align 8, !tbaa !5
  %81 = load ptr, ptr %chr, align 8, !tbaa !5
  %82 = load ptr, ptr %line, align 8, !tbaa !5
  %83 = load i32, ptr %length, align 4, !tbaa !12
  %conv83 = sext i32 %83 to i64
  %call84 = call ptr @strncpy(ptr noundef %81, ptr noundef %82, i64 noundef %conv83) #14
  %84 = load ptr, ptr %chr, align 8, !tbaa !5
  %85 = load i32, ptr %length, align 4, !tbaa !12
  %idxprom85 = sext i32 %85 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %84, i64 %idxprom85
  store i8 0, ptr %arrayidx86, align 1, !tbaa !14
  %86 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  %87 = load ptr, ptr %chr, align 8, !tbaa !5
  %call87 = call i32 @Univ_IIT_find_one(ptr noundef %86, ptr noundef %87)
  store i32 %call87, ptr %chrnum, align 4, !tbaa !12
  %cmp88 = icmp sle i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.else92

if.then90:                                        ; preds = %while.end
  %88 = load ptr, ptr @stderr, align 8, !tbaa !5
  %89 = load ptr, ptr %line, align 8, !tbaa !5
  %call91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.4, ptr noundef %89)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else92:                                        ; preds = %while.end
  %90 = load ptr, ptr @chrsubsetp, align 8, !tbaa !5
  %91 = load i32, ptr %chrnum, align 4, !tbaa !12
  %idxprom93 = sext i32 %91 to i64
  %arrayidx94 = getelementptr inbounds i8, ptr %90, i64 %idxprom93
  store i8 1, ptr %arrayidx94, align 1, !tbaa !14
  br label %if.end95

if.end95:                                         ; preds = %if.else92
  %92 = load ptr, ptr %chr, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %92, ptr noundef @.str.1, i32 noundef 4141)
  store ptr null, ptr %chr, align 8, !tbaa !5
  %93 = load ptr, ptr %line, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %93, ptr noundef @.str.1, i32 noundef 4142)
  store ptr null, ptr %line, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !22

while.end96:                                      ; preds = %while.cond
  %94 = load ptr, ptr %fp, align 8, !tbaa !5
  %call97 = call i32 @fclose(ptr noundef %94)
  br label %if.end98

if.end98:                                         ; preds = %while.end96
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then57
  %95 = load ptr, ptr @transcriptome_dbroot, align 8, !tbaa !5
  %cmp100 = icmp eq ptr %95, null
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.end99
  store i8 0, ptr @transcriptome_align_p, align 1, !tbaa !14
  br label %if.end135

if.else103:                                       ; preds = %if.end99
  %96 = load ptr, ptr @user_transcriptomedir, align 8, !tbaa !5
  %cmp104 = icmp eq ptr %96, null
  br i1 %cmp104, label %land.lhs.true, label %if.end109

land.lhs.true:                                    ; preds = %if.else103
  %97 = load ptr, ptr @user_genomedir, align 8, !tbaa !5
  %cmp106 = icmp ne ptr %97, null
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %land.lhs.true
  %98 = load ptr, ptr @user_genomedir, align 8, !tbaa !5
  store ptr %98, ptr @user_transcriptomedir, align 8, !tbaa !5
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %land.lhs.true, %if.else103
  %99 = load ptr, ptr @user_transcriptomedir, align 8, !tbaa !5
  %100 = load ptr, ptr @transcriptome_dbroot, align 8, !tbaa !5
  %call110 = call ptr @Datadir_find_genomesubdir(ptr noundef %transcriptome_fileroot, ptr noundef %dbversion, ptr noundef %99, ptr noundef %100)
  store ptr %call110, ptr %transcriptomesubdir, align 8, !tbaa !5
  %101 = load ptr, ptr %dbversion, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %101, ptr noundef @.str.1, i32 noundef 4156)
  store ptr null, ptr %dbversion, align 8, !tbaa !5
  %102 = load ptr, ptr %transcriptomesubdir, align 8, !tbaa !5
  %103 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %call111 = call ptr @transcript_iit_setup(ptr noundef @transcriptomelength, ptr noundef @ntranscripts, ptr noundef %102, ptr noundef %103)
  store ptr %call111, ptr @transcript_iit, align 8, !tbaa !5
  %104 = load ptr, ptr @transcript_iit, align 8, !tbaa !5
  %call112 = call ptr @EF64_new_from_chromosome_iit(ptr noundef %104)
  store ptr %call112, ptr @transcript_ef64, align 8, !tbaa !5
  %105 = load ptr, ptr %genomesubdir, align 8, !tbaa !5
  %call113 = call i64 @strlen(ptr noundef %105) #17
  %add114 = add i64 %call113, 1
  %106 = load ptr, ptr %genome_fileroot, align 8, !tbaa !5
  %call115 = call i64 @strlen(ptr noundef %106) #17
  %add116 = add i64 %add114, %call115
  %add117 = add i64 %add116, 13
  %107 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %call118 = call i64 @strlen(ptr noundef %107) #17
  %add119 = add i64 %add117, %call118
  %add120 = add i64 %add119, 10
  %add121 = add i64 %add120, 1
  %call122 = call ptr @Mem_calloc(i64 noundef %add121, i64 noundef 1, ptr noundef @.str.1, i32 noundef 4166)
  store ptr %call122, ptr %iitfile, align 8, !tbaa !5
  %108 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %109 = load ptr, ptr %genomesubdir, align 8, !tbaa !5
  %110 = load ptr, ptr %genome_fileroot, align 8, !tbaa !5
  %111 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %call123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %108, ptr noundef @.str.5, ptr noundef %109, ptr noundef %110, ptr noundef %111) #14
  %112 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %113 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %call124 = call ptr @IIT_read(ptr noundef %112, ptr noundef %113, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0)
  store ptr %call124, ptr @transcript_map_iit, align 8, !tbaa !5
  %cmp125 = icmp eq ptr %call124, null
  br i1 %cmp125, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.end109
  %114 = load ptr, ptr @stderr, align 8, !tbaa !5
  %115 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.6, ptr noundef %115)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else129:                                       ; preds = %if.end109
  %116 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %116, ptr noundef @.str.1, i32 noundef 4174)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.else129
  %117 = load ptr, ptr %genomesubdir, align 8, !tbaa !5
  %118 = load ptr, ptr %genome_fileroot, align 8, !tbaa !5
  %119 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %120 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call131 = call ptr @Transcriptome_new(ptr noundef %117, ptr noundef %118, ptr noundef %119, i8 noundef zeroext %120)
  store ptr %call131, ptr @transcriptome, align 8, !tbaa !5
  %121 = load ptr, ptr %transcriptomesubdir, align 8, !tbaa !5
  %122 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %123 = load i32, ptr @offsetsstrm_access, align 4, !tbaa !14
  %124 = load i32, ptr @positions_access, align 4, !tbaa !14
  %125 = load i8, ptr @sharedp, align 1, !tbaa !14
  %126 = load i8, ptr @multiple_sequences_p, align 1, !tbaa !14
  %127 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %128 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %call132 = call ptr @Indexdb_new_transcriptome(ptr noundef @index1part_tr, ptr noundef @index1interval_tr, ptr noundef %121, ptr noundef %122, ptr noundef @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %123, i32 noundef %124, i8 noundef zeroext %125, i8 noundef zeroext %126, i8 noundef zeroext %127, i8 noundef zeroext %128)
  store ptr %call132, ptr @tr_indexdb, align 8, !tbaa !5
  %129 = load ptr, ptr @transcript_map_iit, align 8, !tbaa !5
  %call133 = call i32 @IIT_total_nintervals(ptr noundef %129)
  store i32 %call133, ptr @nalignments, align 4, !tbaa !12
  %130 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %131 = load i32, ptr @nalignments, align 4, !tbaa !12
  %132 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %133 = load i32, ptr @genomelength, align 4, !tbaa !12
  %call134 = call ptr @Knownsplicing_from_transcriptome(ptr noundef %130, i32 noundef %131, ptr noundef %132, i32 noundef %133, i8 noundef zeroext 1)
  store ptr %call134, ptr @knownsplicing, align 8, !tbaa !5
  store i8 1, ptr @knownsplicingp, align 1, !tbaa !14
  br label %if.end135

if.end135:                                        ; preds = %if.end130, %if.then102
  %134 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %135 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  call void @Access_setup(i8 noundef zeroext %134, i8 noundef zeroext %135)
  %136 = load ptr, ptr %transcriptomesubdir, align 8, !tbaa !5
  %137 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %138 = load ptr, ptr %genomesubdir, align 8, !tbaa !5
  %139 = load ptr, ptr %genome_fileroot, align 8, !tbaa !5
  %140 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  call void @worker_setup(ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, ptr noundef %140)
  %141 = load ptr, ptr %transcriptomesubdir, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %141, ptr noundef @.str.1, i32 noundef 4192)
  store ptr null, ptr %transcriptomesubdir, align 8, !tbaa !5
  %142 = load ptr, ptr %transcriptome_fileroot, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %142, ptr noundef @.str.1, i32 noundef 4193)
  store ptr null, ptr %transcriptome_fileroot, align 8, !tbaa !5
  %143 = load ptr, ptr %genomesubdir, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %143, ptr noundef @.str.1, i32 noundef 4194)
  store ptr null, ptr %genomesubdir, align 8, !tbaa !5
  %144 = load ptr, ptr %genome_fileroot, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %144, ptr noundef @.str.1, i32 noundef 4195)
  store ptr null, ptr %genome_fileroot, align 8, !tbaa !5
  %145 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %conv136 = zext i8 %145 to i32
  %cmp137 = icmp eq i32 %conv136, 1
  br i1 %cmp137, label %if.then143, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %if.end135
  %146 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %conv140 = zext i8 %146 to i32
  %cmp141 = icmp eq i32 %conv140, 1
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %lor.lhs.false139, %if.end135
  call void @worker_cleanup()
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %lor.lhs.false139
  %call145 = call ptr (...) @Stopwatch_new()
  store ptr %call145, ptr @stopwatch, align 8, !tbaa !5
  %147 = load i8, ptr @two_pass_p, align 1, !tbaa !14
  %conv146 = zext i8 %147 to i32
  %cmp147 = icmp eq i32 %conv146, 1
  br i1 %cmp147, label %if.then149, label %if.end226

if.then149:                                       ; preds = %if.end144
  %148 = load ptr, ptr @stopwatch, align 8, !tbaa !5
  call void @Stopwatch_start(ptr noundef %148)
  %149 = load i32, ptr @output_buffer_size, align 4, !tbaa !12
  %150 = load i32, ptr %nread, align 4, !tbaa !12
  %call150 = call ptr @Outbuffer_new(i32 noundef %149, i32 noundef %150)
  store ptr %call150, ptr @outbuffer, align 8, !tbaa !5
  %151 = load ptr, ptr @inbuffer, align 8, !tbaa !5
  %152 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  call void @Inbuffer_set_outbuffer(ptr noundef %151, ptr noundef %152)
  %call151 = call i32 @pthread_mutex_init(ptr noundef @pass1_lock, ptr noundef null) #14
  store i32 0, ptr @pass, align 4, !tbaa !14
  %153 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef @.str.8)
  %call153 = call ptr @Uinttableuint_new(i32 noundef 500000)
  store ptr %call153, ptr @donor_table, align 8, !tbaa !5
  %call154 = call ptr @Uinttableuint_new(i32 noundef 500000)
  store ptr %call154, ptr @acceptor_table, align 8, !tbaa !5
  %call155 = call ptr @Uinttableuint_new(i32 noundef 500000)
  store ptr %call155, ptr @antidonor_table, align 8, !tbaa !5
  %call156 = call ptr @Uinttableuint_new(i32 noundef 500000)
  store ptr %call156, ptr @antiacceptor_table, align 8, !tbaa !5
  %call157 = call ptr @Uinttable_new(i32 noundef 500000)
  store ptr %call157, ptr @indel_table, align 8, !tbaa !5
  %154 = load i32, ptr @nthreads, align 4, !tbaa !12
  %cmp158 = icmp eq i32 %154, 0
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.then149
  call void @single_thread()
  br label %if.end190

if.else161:                                       ; preds = %if.then149
  %call162 = call i32 @pthread_attr_init(ptr noundef %thread_attr_join) #14
  %call163 = call i32 @pthread_attr_setdetachstate(ptr noundef %thread_attr_join, i32 noundef 0) #14
  store i32 %call163, ptr %ret, align 4, !tbaa !12
  %cmp164 = icmp ne i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.else161
  %155 = load ptr, ptr @stderr, align 8, !tbaa !5
  %156 = load i32, ptr %ret, align 4, !tbaa !12
  %call167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.9, i32 noundef %156)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end168:                                        ; preds = %if.else161
  %157 = load i32, ptr @nthreads, align 4, !tbaa !12
  %conv169 = sext i32 %157 to i64
  %call170 = call ptr @Mem_calloc(i64 noundef %conv169, i64 noundef 8, ptr noundef @.str.1, i32 noundef 4243)
  store ptr %call170, ptr @worker_thread_ids, align 8, !tbaa !5
  call void (...) @Except_init_pthread()
  %call171 = call i32 @pthread_key_create(ptr noundef @global_request_key, ptr noundef null) #14
  %158 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %call172 = call i32 @pthread_create(ptr noundef @output_thread_id, ptr noundef %thread_attr_join, ptr noundef @Outbuffer_thread_pass1, ptr noundef %158) #14
  store i64 0, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end168
  %159 = load i64, ptr %worker_id, align 8, !tbaa !23
  %160 = load i32, ptr @nthreads, align 4, !tbaa !12
  %conv173 = sext i32 %160 to i64
  %cmp174 = icmp slt i64 %159, %conv173
  br i1 %cmp174, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %161 = load ptr, ptr @worker_thread_ids, align 8, !tbaa !5
  %162 = load i64, ptr %worker_id, align 8, !tbaa !23
  %arrayidx176 = getelementptr inbounds i64, ptr %161, i64 %162
  %163 = load i64, ptr %worker_id, align 8, !tbaa !23
  %164 = inttoptr i64 %163 to ptr
  %call177 = call i32 @pthread_create(ptr noundef %arrayidx176, ptr noundef %thread_attr_join, ptr noundef @worker_thread, ptr noundef %164) #14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %165 = load i64, ptr %worker_id, align 8, !tbaa !23
  %inc = add nsw i64 %165, 1
  store i64 %inc, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %166 = load i64, ptr @output_thread_id, align 8, !tbaa !23
  %call178 = call i32 @pthread_join(i64 noundef %166, ptr noundef null)
  store i64 0, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond179

for.cond179:                                      ; preds = %for.inc186, %for.end
  %167 = load i64, ptr %worker_id, align 8, !tbaa !23
  %168 = load i32, ptr @nthreads, align 4, !tbaa !12
  %conv180 = sext i32 %168 to i64
  %cmp181 = icmp slt i64 %167, %conv180
  br i1 %cmp181, label %for.body183, label %for.end188

for.body183:                                      ; preds = %for.cond179
  %169 = load ptr, ptr @worker_thread_ids, align 8, !tbaa !5
  %170 = load i64, ptr %worker_id, align 8, !tbaa !23
  %arrayidx184 = getelementptr inbounds i64, ptr %169, i64 %170
  %171 = load i64, ptr %arrayidx184, align 8, !tbaa !23
  %call185 = call i32 @pthread_join(i64 noundef %171, ptr noundef null)
  br label %for.inc186

for.inc186:                                       ; preds = %for.body183
  %172 = load i64, ptr %worker_id, align 8, !tbaa !23
  %inc187 = add nsw i64 %172, 1
  store i64 %inc187, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond179, !llvm.loop !26

for.end188:                                       ; preds = %for.cond179
  %173 = load i32, ptr @global_request_key, align 4, !tbaa !12
  %call189 = call i32 @pthread_key_delete(i32 noundef %173) #14
  %174 = load ptr, ptr @worker_thread_ids, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %174, ptr noundef @.str.1, i32 noundef 4265)
  store ptr null, ptr @worker_thread_ids, align 8, !tbaa !5
  br label %if.end190

if.end190:                                        ; preds = %for.end188, %if.then160
  %175 = load ptr, ptr @stopwatch, align 8, !tbaa !5
  %call191 = call double @Stopwatch_stop(ptr noundef %175)
  store double %call191, ptr %runtime, align 8, !tbaa !27
  %176 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %call192 = call i32 @Outbuffer_nread(ptr noundef %176)
  store i32 %call192, ptr %nread, align 4, !tbaa !12
  %177 = load ptr, ptr @stderr, align 8, !tbaa !5
  %178 = load i32, ptr %nread, align 4, !tbaa !12
  %179 = load double, ptr %runtime, align 8, !tbaa !27
  %180 = load i32, ptr %nread, align 4, !tbaa !12
  %conv193 = sitofp i32 %180 to double
  %181 = load double, ptr %runtime, align 8, !tbaa !27
  %div = fdiv double %conv193, %181
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.10, i32 noundef %178, double noundef %179, double noundef %div)
  %call195 = call i32 @pthread_mutex_destroy(ptr noundef @pass1_lock) #14
  %182 = load i64, ptr @total_mismatches, align 8, !tbaa !29
  %conv196 = uitofp i64 %182 to double
  %183 = load i64, ptr @total_querylength, align 8, !tbaa !29
  %conv197 = uitofp i64 %183 to double
  %div198 = fdiv double %conv196, %conv197
  store double %div198, ptr @defect_rate, align 8, !tbaa !27
  %184 = load ptr, ptr @stderr, align 8, !tbaa !5
  %185 = load i64, ptr @total_mismatches, align 8, !tbaa !29
  %186 = load i64, ptr @total_querylength, align 8, !tbaa !29
  %187 = load double, ptr @defect_rate, align 8, !tbaa !27
  %call199 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef @.str.11, i64 noundef %185, i64 noundef %186, double noundef %187)
  %188 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %cmp200 = icmp ne ptr %188, null
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.end190
  call void @Knownsplicing_free(ptr noundef @knownsplicing)
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %if.end190
  %189 = load ptr, ptr @donor_startpoints, align 8, !tbaa !5
  %190 = load ptr, ptr @donor_partners, align 8, !tbaa !5
  %191 = load ptr, ptr @acceptor_startpoints, align 8, !tbaa !5
  %192 = load ptr, ptr @acceptor_partners, align 8, !tbaa !5
  %193 = load ptr, ptr @antidonor_startpoints, align 8, !tbaa !5
  %194 = load ptr, ptr @antidonor_partners, align 8, !tbaa !5
  %195 = load ptr, ptr @antiacceptor_startpoints, align 8, !tbaa !5
  %196 = load ptr, ptr @antiacceptor_partners, align 8, !tbaa !5
  %197 = load ptr, ptr @donor_table, align 8, !tbaa !5
  %198 = load ptr, ptr @acceptor_table, align 8, !tbaa !5
  %199 = load ptr, ptr @antidonor_table, align 8, !tbaa !5
  %200 = load ptr, ptr @antiacceptor_table, align 8, !tbaa !5
  %201 = load i32, ptr @genomelength, align 4, !tbaa !12
  %202 = load ptr, ptr @dump_splices_fp, align 8, !tbaa !5
  %203 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  %204 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %call204 = call ptr @Knownsplicing_new(ptr noundef %189, ptr noundef %190, ptr noundef %191, ptr noundef %192, ptr noundef %193, ptr noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197, ptr noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef %201, ptr noundef %202, ptr noundef %203, ptr noundef %204, i8 noundef zeroext 1)
  store ptr %call204, ptr @knownsplicing, align 8, !tbaa !5
  %205 = load ptr, ptr @dump_splices_fp, align 8, !tbaa !5
  %cmp205 = icmp ne ptr %205, null
  br i1 %cmp205, label %if.then207, label %if.end209

if.then207:                                       ; preds = %if.end203
  %206 = load ptr, ptr @dump_splices_fp, align 8, !tbaa !5
  %call208 = call i32 @fclose(ptr noundef %206)
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.end203
  %207 = load ptr, ptr @indel_table, align 8, !tbaa !5
  %208 = load i32, ptr @genomelength, align 4, !tbaa !12
  %209 = load ptr, ptr @dump_indels_fp, align 8, !tbaa !5
  %210 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  %211 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %call210 = call ptr @Knownindels_new(ptr noundef %207, i32 noundef %208, ptr noundef %209, ptr noundef %210, ptr noundef %211)
  store ptr %call210, ptr @knownindels, align 8, !tbaa !5
  %212 = load ptr, ptr @dump_indels_fp, align 8, !tbaa !5
  %cmp211 = icmp ne ptr %212, null
  br i1 %cmp211, label %if.then213, label %if.end215

if.then213:                                       ; preds = %if.end209
  %213 = load ptr, ptr @dump_indels_fp, align 8, !tbaa !5
  %call214 = call i32 @fclose(ptr noundef %213)
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %if.end209
  %214 = load ptr, ptr @insertlengths, align 8, !tbaa !5
  call void @Pathpair_analyze_insertlengths(ptr noundef @expected_pairlength, ptr noundef @pairlength_deviation, ptr noundef %214)
  %215 = load i32, ptr @expected_pairlength, align 4, !tbaa !12
  %216 = load i32, ptr @pairlength_deviation, align 4, !tbaa !12
  call void @Pathpair_pass2_setup(i32 noundef %215, i32 noundef %216)
  %217 = load i32, ptr @expected_pairlength, align 4, !tbaa !12
  %conv216 = sitofp i32 %217 to double
  %218 = load i32, ptr @pairlength_deviation, align 4, !tbaa !12
  %conv217 = sitofp i32 %218 to double
  call void @Concordance_pass2_setup(double noundef %conv216, double noundef %conv217)
  call void @Uintlist_free(ptr noundef @insertlengths)
  call void @Uinttable_free(ptr noundef @indel_table)
  call void @Uinttableuint_free(ptr noundef @antiacceptor_table)
  call void @Uinttableuint_free(ptr noundef @antidonor_table)
  call void @Uinttableuint_free(ptr noundef @acceptor_table)
  call void @Uinttableuint_free(ptr noundef @donor_table)
  call void @Outbuffer_free(ptr noundef @outbuffer)
  call void @Inbuffer_free(ptr noundef @inbuffer)
  store i32 1, ptr @pass, align 4, !tbaa !14
  %219 = load ptr, ptr @read_files_command, align 8, !tbaa !5
  %220 = load i8, ptr @gunzip_p, align 1, !tbaa !14
  %221 = load i8, ptr @bunzip2_p, align 1, !tbaa !14
  %222 = load i8, ptr @interleavedp, align 1, !tbaa !14
  %223 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %224 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %call218 = call zeroext i8 @open_input_streams_parser(ptr noundef %nextchar, ptr noundef %nchars1, ptr noundef %nchars2, ptr noundef @paired_end_p, ptr noundef %files, ptr noundef %nfiles, ptr noundef %input, ptr noundef %input2, ptr noundef %gzipped, ptr noundef %gzipped2, ptr noundef %bzipped, ptr noundef %bzipped2, ptr noundef %219, i8 noundef zeroext %220, i8 noundef zeroext %221, i8 noundef zeroext %222, i32 noundef %223, ptr noundef %224)
  store i8 %call218, ptr @fastq_format_p, align 1, !tbaa !14
  %225 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %226 = load i8, ptr @filter_if_both_p, align 1, !tbaa !14
  call void @Inbuffer_setup(i8 noundef zeroext %225, i8 noundef zeroext %226)
  %227 = load i32, ptr %nextchar, align 4, !tbaa !12
  %228 = load ptr, ptr %input, align 8, !tbaa !5
  %229 = load ptr, ptr %input2, align 8, !tbaa !5
  %230 = load ptr, ptr %gzipped, align 8, !tbaa !5
  %231 = load ptr, ptr %gzipped2, align 8, !tbaa !5
  %232 = load ptr, ptr %bzipped, align 8, !tbaa !5
  %233 = load ptr, ptr %bzipped2, align 8, !tbaa !5
  %234 = load i8, ptr @interleavedp, align 1, !tbaa !14
  %235 = load ptr, ptr @read_files_command, align 8, !tbaa !5
  %236 = load ptr, ptr %files, align 8, !tbaa !5
  %237 = load i32, ptr %nfiles, align 4, !tbaa !12
  %238 = load i32, ptr @input_buffer_size, align 4, !tbaa !12
  %239 = load i32, ptr @part_modulus, align 4, !tbaa !12
  %240 = load i32, ptr @part_interval, align 4, !tbaa !12
  %call219 = call ptr @Inbuffer_new(i32 noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %230, ptr noundef %231, ptr noundef %232, ptr noundef %233, i8 noundef zeroext %234, ptr noundef %235, ptr noundef %236, i32 noundef %237, i32 noundef %238, i32 noundef %239, i32 noundef %240)
  store ptr %call219, ptr @inbuffer, align 8, !tbaa !5
  %241 = load ptr, ptr @inbuffer, align 8, !tbaa !5
  %call220 = call i32 @Inbuffer_fill_init(ptr noundef %241)
  store i32 %call220, ptr %nread, align 4, !tbaa !12
  %cmp221 = icmp sgt i32 %call220, 1
  br i1 %cmp221, label %if.then223, label %if.else224

if.then223:                                       ; preds = %if.end215
  store i8 1, ptr @multiple_sequences_p, align 1, !tbaa !14
  br label %if.end225

if.else224:                                       ; preds = %if.end215
  store i8 0, ptr @multiple_sequences_p, align 1, !tbaa !14
  br label %if.end225

if.end225:                                        ; preds = %if.else224, %if.then223
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.end144
  %242 = load i8, ptr @split_simple_p, align 1, !tbaa !14
  call void @Filestring_setup(i8 noundef zeroext %242)
  %243 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %244 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %245 = load i32, ptr @optind, align 4, !tbaa !12
  %246 = load i32, ptr @nthreads, align 4, !tbaa !12
  %247 = load i8, ptr @orderedp, align 1, !tbaa !14
  %248 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  %249 = load i32, ptr @output_type, align 4, !tbaa !14
  %250 = load i8, ptr @sam_headers_p, align 1, !tbaa !14
  %251 = load ptr, ptr @sam_read_group_id, align 8, !tbaa !5
  %252 = load ptr, ptr @sam_read_group_name, align 8, !tbaa !5
  %253 = load ptr, ptr @sam_read_group_library, align 8, !tbaa !5
  %254 = load ptr, ptr @sam_read_group_platform, align 8, !tbaa !5
  call void @SAM_header_setup(i32 noundef %243, ptr noundef %244, i32 noundef %245, i32 noundef %246, i8 noundef zeroext %247, ptr noundef %248, i32 noundef %249, i8 noundef zeroext %250, ptr noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254)
  %255 = load i8, ptr @any_circular_p, align 1, !tbaa !14
  %256 = load i8, ptr @quiet_if_excessive_p, align 1, !tbaa !14
  %257 = load i8, ptr @paired_end_p, align 1, !tbaa !14
  %258 = load i8, ptr @appendp, align 1, !tbaa !14
  %259 = load ptr, ptr @output_file, align 8, !tbaa !5
  %260 = load i8, ptr @split_simple_p, align 1, !tbaa !14
  %261 = load ptr, ptr @split_output_root, align 8, !tbaa !5
  %262 = load ptr, ptr @failedinput_root, align 8, !tbaa !5
  call void @Outbuffer_setup(i8 noundef zeroext %255, i8 noundef zeroext %256, i8 noundef zeroext %257, i8 noundef zeroext %258, ptr noundef %259, i8 noundef zeroext %260, ptr noundef %261, ptr noundef %262)
  %263 = load ptr, ptr @stopwatch, align 8, !tbaa !5
  call void @Stopwatch_start(ptr noundef %263)
  %264 = load i32, ptr @output_buffer_size, align 4, !tbaa !12
  %265 = load i32, ptr %nread, align 4, !tbaa !12
  %call227 = call ptr @Outbuffer_new(i32 noundef %264, i32 noundef %265)
  store ptr %call227, ptr @outbuffer, align 8, !tbaa !5
  %266 = load ptr, ptr @inbuffer, align 8, !tbaa !5
  %267 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  call void @Inbuffer_set_outbuffer(ptr noundef %266, ptr noundef %267)
  %268 = load ptr, ptr @output_file, align 8, !tbaa !5
  %cmp228 = icmp ne ptr %268, null
  br i1 %cmp228, label %if.then230, label %if.else232

if.then230:                                       ; preds = %if.end226
  %269 = load ptr, ptr @stderr, align 8, !tbaa !5
  %270 = load ptr, ptr @output_file, align 8, !tbaa !5
  %call231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef @.str.12, ptr noundef %270)
  br label %if.end240

if.else232:                                       ; preds = %if.end226
  %271 = load ptr, ptr @split_output_root, align 8, !tbaa !5
  %cmp233 = icmp ne ptr %271, null
  br i1 %cmp233, label %if.then235, label %if.else237

if.then235:                                       ; preds = %if.else232
  %272 = load ptr, ptr @stderr, align 8, !tbaa !5
  %273 = load ptr, ptr @split_output_root, align 8, !tbaa !5
  %call236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef @.str.13, ptr noundef %273)
  br label %if.end239

if.else237:                                       ; preds = %if.else232
  %274 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %274, ptr noundef @.str.14)
  br label %if.end239

if.end239:                                        ; preds = %if.else237, %if.then235
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.then230
  %275 = load i32, ptr @nthreads, align 4, !tbaa !12
  %cmp241 = icmp eq i32 %275, 0
  br i1 %cmp241, label %if.then243, label %if.else244

if.then243:                                       ; preds = %if.end240
  call void @single_thread()
  br label %if.end295

if.else244:                                       ; preds = %if.end240
  %276 = load i8, ptr @two_pass_p, align 1, !tbaa !14
  %conv245 = zext i8 %276 to i32
  %cmp246 = icmp eq i32 %conv245, 0
  br i1 %cmp246, label %land.lhs.true248, label %if.else253

land.lhs.true248:                                 ; preds = %if.else244
  %277 = load i8, ptr @multiple_sequences_p, align 1, !tbaa !14
  %conv249 = zext i8 %277 to i32
  %cmp250 = icmp eq i32 %conv249, 0
  br i1 %cmp250, label %if.then252, label %if.else253

if.then252:                                       ; preds = %land.lhs.true248
  call void @single_thread()
  br label %if.end294

if.else253:                                       ; preds = %land.lhs.true248, %if.else244
  %call254 = call i32 @pthread_attr_init(ptr noundef %thread_attr_join) #14
  %call255 = call i32 @pthread_attr_setdetachstate(ptr noundef %thread_attr_join, i32 noundef 0) #14
  store i32 %call255, ptr %ret, align 4, !tbaa !12
  %cmp256 = icmp ne i32 %call255, 0
  br i1 %cmp256, label %if.then258, label %if.end260

if.then258:                                       ; preds = %if.else253
  %278 = load ptr, ptr @stderr, align 8, !tbaa !5
  %279 = load i32, ptr %ret, align 4, !tbaa !12
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef @.str.9, i32 noundef %279)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end260:                                        ; preds = %if.else253
  %280 = load i32, ptr @nthreads, align 4, !tbaa !12
  %conv261 = sext i32 %280 to i64
  %call262 = call ptr @Mem_calloc(i64 noundef %conv261, i64 noundef 8, ptr noundef @.str.1, i32 noundef 4388)
  store ptr %call262, ptr @worker_thread_ids, align 8, !tbaa !5
  call void (...) @Except_init_pthread()
  %call263 = call i32 @pthread_key_create(ptr noundef @global_request_key, ptr noundef null) #14
  %281 = load i8, ptr @orderedp, align 1, !tbaa !14
  %conv264 = zext i8 %281 to i32
  %cmp265 = icmp eq i32 %conv264, 1
  br i1 %cmp265, label %if.then267, label %if.else269

if.then267:                                       ; preds = %if.end260
  %282 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %call268 = call i32 @pthread_create(ptr noundef @output_thread_id, ptr noundef %thread_attr_join, ptr noundef @Outbuffer_thread_ordered, ptr noundef %282) #14
  br label %if.end271

if.else269:                                       ; preds = %if.end260
  %283 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %call270 = call i32 @pthread_create(ptr noundef @output_thread_id, ptr noundef %thread_attr_join, ptr noundef @Outbuffer_thread_anyorder, ptr noundef %283) #14
  br label %if.end271

if.end271:                                        ; preds = %if.else269, %if.then267
  store i64 0, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond272

for.cond272:                                      ; preds = %for.inc279, %if.end271
  %284 = load i64, ptr %worker_id, align 8, !tbaa !23
  %285 = load i32, ptr @nthreads, align 4, !tbaa !12
  %conv273 = sext i32 %285 to i64
  %cmp274 = icmp slt i64 %284, %conv273
  br i1 %cmp274, label %for.body276, label %for.end281

for.body276:                                      ; preds = %for.cond272
  %286 = load ptr, ptr @worker_thread_ids, align 8, !tbaa !5
  %287 = load i64, ptr %worker_id, align 8, !tbaa !23
  %arrayidx277 = getelementptr inbounds i64, ptr %286, i64 %287
  %288 = load i64, ptr %worker_id, align 8, !tbaa !23
  %289 = inttoptr i64 %288 to ptr
  %call278 = call i32 @pthread_create(ptr noundef %arrayidx277, ptr noundef %thread_attr_join, ptr noundef @worker_thread, ptr noundef %289) #14
  br label %for.inc279

for.inc279:                                       ; preds = %for.body276
  %290 = load i64, ptr %worker_id, align 8, !tbaa !23
  %inc280 = add nsw i64 %290, 1
  store i64 %inc280, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond272, !llvm.loop !31

for.end281:                                       ; preds = %for.cond272
  %291 = load i64, ptr @output_thread_id, align 8, !tbaa !23
  %call282 = call i32 @pthread_join(i64 noundef %291, ptr noundef null)
  store i64 0, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc290, %for.end281
  %292 = load i64, ptr %worker_id, align 8, !tbaa !23
  %293 = load i32, ptr @nthreads, align 4, !tbaa !12
  %conv284 = sext i32 %293 to i64
  %cmp285 = icmp slt i64 %292, %conv284
  br i1 %cmp285, label %for.body287, label %for.end292

for.body287:                                      ; preds = %for.cond283
  %294 = load ptr, ptr @worker_thread_ids, align 8, !tbaa !5
  %295 = load i64, ptr %worker_id, align 8, !tbaa !23
  %arrayidx288 = getelementptr inbounds i64, ptr %294, i64 %295
  %296 = load i64, ptr %arrayidx288, align 8, !tbaa !23
  %call289 = call i32 @pthread_join(i64 noundef %296, ptr noundef null)
  br label %for.inc290

for.inc290:                                       ; preds = %for.body287
  %297 = load i64, ptr %worker_id, align 8, !tbaa !23
  %inc291 = add nsw i64 %297, 1
  store i64 %inc291, ptr %worker_id, align 8, !tbaa !23
  br label %for.cond283, !llvm.loop !32

for.end292:                                       ; preds = %for.cond283
  %298 = load i32, ptr @global_request_key, align 4, !tbaa !12
  %call293 = call i32 @pthread_key_delete(i32 noundef %298) #14
  %299 = load ptr, ptr @worker_thread_ids, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %299, ptr noundef @.str.1, i32 noundef 4414)
  store ptr null, ptr @worker_thread_ids, align 8, !tbaa !5
  br label %if.end294

if.end294:                                        ; preds = %for.end292, %if.then252
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.then243
  %300 = load ptr, ptr @stopwatch, align 8, !tbaa !5
  %call296 = call double @Stopwatch_stop(ptr noundef %300)
  store double %call296, ptr %runtime, align 8, !tbaa !27
  %301 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %call297 = call i32 @Outbuffer_nread(ptr noundef %301)
  store i32 %call297, ptr %nread, align 4, !tbaa !12
  %302 = load i8, ptr @two_pass_p, align 1, !tbaa !14
  %conv298 = zext i8 %302 to i32
  %cmp299 = icmp eq i32 %conv298, 1
  br i1 %cmp299, label %if.then301, label %if.else305

if.then301:                                       ; preds = %if.end295
  %303 = load ptr, ptr @stderr, align 8, !tbaa !5
  %304 = load i32, ptr %nread, align 4, !tbaa !12
  %305 = load double, ptr %runtime, align 8, !tbaa !27
  %306 = load i32, ptr %nread, align 4, !tbaa !12
  %conv302 = sitofp i32 %306 to double
  %307 = load double, ptr %runtime, align 8, !tbaa !27
  %div303 = fdiv double %conv302, %307
  %call304 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %303, ptr noundef @.str.15, i32 noundef %304, double noundef %305, double noundef %div303)
  br label %if.end309

if.else305:                                       ; preds = %if.end295
  %308 = load ptr, ptr @stderr, align 8, !tbaa !5
  %309 = load i32, ptr %nread, align 4, !tbaa !12
  %310 = load double, ptr %runtime, align 8, !tbaa !27
  %311 = load i32, ptr %nread, align 4, !tbaa !12
  %conv306 = sitofp i32 %311 to double
  %312 = load double, ptr %runtime, align 8, !tbaa !27
  %div307 = fdiv double %conv306, %312
  %call308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef @.str.16, i32 noundef %309, double noundef %310, double noundef %div307)
  br label %if.end309

if.end309:                                        ; preds = %if.else305, %if.then301
  call void @Stopwatch_free(ptr noundef @stopwatch)
  call void @Outbuffer_free(ptr noundef @outbuffer)
  call void @Inbuffer_free(ptr noundef @inbuffer)
  call void (...) @Outbuffer_close_files()
  call void (...) @Outbuffer_cleanup()
  call void @worker_cleanup()
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end309, %if.then143
  call void @llvm.lifetime.end.p0(i64 152, ptr %signal_action) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr %thread_attr_join) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %runtime) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextchar) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %nread) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker_id) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %bzipped2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %bzipped) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %gzipped2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %gzipped) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %input2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %chrnum) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %chr) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfiles) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %files) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %iitfile) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbversion) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %genome_fileroot) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcriptome_fileroot) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %genomesubdir) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcriptomesubdir) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmdline_status) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchars2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchars1) #14
  %313 = load i32, ptr %retval, align 4
  ret i32 %313
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_command_line(i32 noundef %argc, ptr noundef %argv, i32 noundef %optind) #1 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optind.addr = alloca i32, align 4
  %opt = alloca i32, align 4
  %c = alloca i32, align 4
  %long_option_index = alloca i32, align 4
  %long_name = alloca ptr, align 8
  %argstart = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !12
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !5
  store i32 %optind, ptr %optind.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %long_option_index) #14
  store i32 0, ptr %long_option_index, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %long_name) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %argstart) #14
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.18, ptr noundef @.str.19)
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %2 = load i32, ptr %optind.addr, align 4, !tbaa !12
  %sub = sub nsw i32 0, %2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %argstart, align 8, !tbaa !5
  store i32 1, ptr %c, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %c, align 4, !tbaa !12
  %4 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %5 = load i32, ptr %optind.addr, align 4, !tbaa !12
  %add = add nsw i32 %4, %5
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = load ptr, ptr %argstart, align 8, !tbaa !5
  %8 = load i32, ptr %c, align 4, !tbaa !12
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %7, i64 %idxprom1
  %9 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.20, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %c, align 4, !tbaa !12
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %c, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.21)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.end
  %12 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %13 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %call5 = call i32 @getopt_long(i32 noundef %12, ptr noundef %13, ptr noundef @.str.22, ptr noundef @long_options, ptr noundef %long_option_index)
  store i32 %call5, ptr %opt, align 4, !tbaa !12
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %opt, align 4, !tbaa !12
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 67, label %sw.bb839
    i32 99, label %sw.bb840
    i32 68, label %sw.bb841
    i32 100, label %sw.bb842
    i32 107, label %sw.bb843
    i32 113, label %sw.bb851
    i32 111, label %sw.bb852
    i32 97, label %sw.bb853
    i32 78, label %sw.bb865
    i32 77, label %sw.bb877
    i32 109, label %sw.bb880
    i32 105, label %sw.bb891
    i32 121, label %sw.bb894
    i32 122, label %sw.bb905
    i32 89, label %sw.bb916
    i32 90, label %sw.bb919
    i32 119, label %sw.bb922
    i32 115, label %sw.bb925
    i32 101, label %sw.bb926
    i32 69, label %sw.bb927
    i32 86, label %sw.bb931
    i32 118, label %sw.bb932
    i32 66, label %sw.bb933
    i32 116, label %sw.bb965
    i32 65, label %sw.bb968
    i32 106, label %sw.bb985
    i32 74, label %sw.bb995
    i32 48, label %sw.bb1005
    i32 110, label %sw.bb1006
    i32 81, label %sw.bb1009
    i32 79, label %sw.bb1010
    i32 63, label %sw.bb1011
  ]

sw.bb:                                            ; preds = %while.body
  %15 = load i32, ptr %long_option_index, align 4, !tbaa !12
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [134 x %struct.option], ptr @long_options, i64 0, i64 %idxprom7
  %name = getelementptr inbounds %struct.option, ptr %arrayidx8, i32 0, i32 0
  %16 = load ptr, ptr %name, align 16, !tbaa !34
  store ptr %16, ptr %long_name, align 8, !tbaa !5
  %17 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call9 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.23) #17
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @print_program_version()
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %18 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call10 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.24) #17
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @check_compiler_assumptions()
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.else
  %19 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call14 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.25) #17
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.else13
  call void @print_program_usage()
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.else13
  %20 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call18 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.26) #17
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.else17
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.27)
  br label %if.end835

if.else22:                                        ; preds = %if.else17
  %22 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call23 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.28) #17
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else22
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.29)
  br label %if.end834

if.else27:                                        ; preds = %if.else22
  %24 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call28 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str.30) #17
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else31, label %if.then30

if.then30:                                        ; preds = %if.else27
  store i8 1, ptr @two_pass_p, align 1, !tbaa !14
  br label %if.end833

if.else31:                                        ; preds = %if.else27
  %25 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call32 = call i32 @strcmp(ptr noundef %25, ptr noundef @.str.31) #17
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else45, label %if.then34

if.then34:                                        ; preds = %if.else31
  %26 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call35 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str.32) #17
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.then34
  store i8 1, ptr @user_localdb_p, align 1, !tbaa !14
  store i8 1, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end44

if.else38:                                        ; preds = %if.then34
  %27 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call39 = call i32 @strcmp(ptr noundef %27, ptr noundef @.str.33) #17
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.else38
  store i8 1, ptr @user_localdb_p, align 1, !tbaa !14
  store i8 0, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end

if.else42:                                        ; preds = %if.else38
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.34)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then41
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then37
  br label %if.end832

if.else45:                                        ; preds = %if.else31
  %29 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call46 = call i32 @strcmp(ptr noundef %29, ptr noundef @.str.35) #17
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else65, label %if.then48

if.then48:                                        ; preds = %if.else45
  %30 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call49 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.36) #17
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.then48
  store i8 1, ptr @genome_align_p, align 1, !tbaa !14
  store i8 1, ptr @transcriptome_align_p, align 1, !tbaa !14
  br label %if.end64

if.else52:                                        ; preds = %if.then48
  %31 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call53 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.37) #17
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.else52
  store i8 0, ptr @genome_align_p, align 1, !tbaa !14
  store i8 1, ptr @transcriptome_align_p, align 1, !tbaa !14
  br label %if.end63

if.else56:                                        ; preds = %if.else52
  %32 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call57 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str.38) #17
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else60, label %if.then59

if.then59:                                        ; preds = %if.else56
  store i8 1, ptr @genome_align_p, align 1, !tbaa !14
  store i8 0, ptr @transcriptome_align_p, align 1, !tbaa !14
  br label %if.end62

if.else60:                                        ; preds = %if.else56
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.39)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.then59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then55
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then51
  br label %if.end831

if.else65:                                        ; preds = %if.else45
  %34 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call66 = call i32 @strcmp(ptr noundef %34, ptr noundef @.str.40) #17
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.else80, label %if.then68

if.then68:                                        ; preds = %if.else65
  %35 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call69 = call i32 @strcmp(ptr noundef %35, ptr noundef @.str.32) #17
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else72, label %if.then71

if.then71:                                        ; preds = %if.then68
  store i8 1, ptr @sharedp, align 1, !tbaa !14
  br label %if.end79

if.else72:                                        ; preds = %if.then68
  %36 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call73 = call i32 @strcmp(ptr noundef %36, ptr noundef @.str.33) #17
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.else76, label %if.then75

if.then75:                                        ; preds = %if.else72
  store i8 0, ptr @sharedp, align 1, !tbaa !14
  br label %if.end78

if.else76:                                        ; preds = %if.else72
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.41)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.then75
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then71
  br label %if.end830

if.else80:                                        ; preds = %if.else65
  %38 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call81 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.42) #17
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.else80
  store i8 1, ptr @preload_shared_memory_p, align 1, !tbaa !14
  br label %if.end829

if.else84:                                        ; preds = %if.else80
  %39 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call85 = call i32 @strcmp(ptr noundef %39, ptr noundef @.str.43) #17
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.else88, label %if.then87

if.then87:                                        ; preds = %if.else84
  store i8 1, ptr @unload_shared_memory_p, align 1, !tbaa !14
  br label %if.end828

if.else88:                                        ; preds = %if.else84
  %40 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call89 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.44) #17
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.else93, label %if.then91

if.then91:                                        ; preds = %if.else88
  %41 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.45)
  br label %if.end827

if.else93:                                        ; preds = %if.else88
  %42 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call94 = call i32 @strcmp(ptr noundef %42, ptr noundef @.str.46) #17
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.else99, label %if.then96

if.then96:                                        ; preds = %if.else93
  %43 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call97 = call ptr @check_valid_int(ptr noundef %43)
  %call98 = call i32 @atoi(ptr noundef %call97) #17
  store i32 %call98, ptr @required_index1interval, align 4, !tbaa !12
  br label %if.end826

if.else99:                                        ; preds = %if.else93
  %44 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call100 = call i32 @strcmp(ptr noundef %44, ptr noundef @.str.47) #17
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.else103, label %if.then102

if.then102:                                       ; preds = %if.else99
  store i8 1, ptr @timingp, align 1, !tbaa !14
  br label %if.end825

if.else103:                                       ; preds = %if.else99
  %45 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call104 = call i32 @strcmp(ptr noundef %45, ptr noundef @.str.48) #17
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.else107, label %if.then106

if.then106:                                       ; preds = %if.else103
  store i8 1, ptr @unloadp, align 1, !tbaa !14
  br label %if.end824

if.else107:                                       ; preds = %if.else103
  %46 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call108 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.49) #17
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.else113, label %if.then110

if.then110:                                       ; preds = %if.else107
  %47 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call111 = call ptr @check_valid_int(ptr noundef %47)
  %call112 = call i32 @atoi(ptr noundef %call111) #17
  store i32 %call112, ptr @maxpaths_search, align 4, !tbaa !12
  br label %sw.epilog

if.else113:                                       ; preds = %if.else107
  %48 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call114 = call i32 @strcmp(ptr noundef %48, ptr noundef @.str.50) #17
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.else153, label %if.then116

if.then116:                                       ; preds = %if.else113
  %49 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call117 = call i32 @strcmp(ptr noundef %49, ptr noundef @.str.51) #17
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.else120, label %if.then119

if.then119:                                       ; preds = %if.then116
  store i32 0, ptr @mode, align 4, !tbaa !14
  br label %if.end152

if.else120:                                       ; preds = %if.then116
  %50 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call121 = call i32 @strcmp(ptr noundef %50, ptr noundef @.str.52) #17
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.else124, label %if.then123

if.then123:                                       ; preds = %if.else120
  store i32 1, ptr @mode, align 4, !tbaa !14
  br label %if.end151

if.else124:                                       ; preds = %if.else120
  %51 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call125 = call i32 @strcmp(ptr noundef %51, ptr noundef @.str.53) #17
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.else128, label %if.then127

if.then127:                                       ; preds = %if.else124
  store i32 2, ptr @mode, align 4, !tbaa !14
  br label %if.end150

if.else128:                                       ; preds = %if.else124
  %52 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call129 = call i32 @strcmp(ptr noundef %52, ptr noundef @.str.54) #17
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.else132, label %if.then131

if.then131:                                       ; preds = %if.else128
  store i32 3, ptr @mode, align 4, !tbaa !14
  br label %if.end149

if.else132:                                       ; preds = %if.else128
  %53 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call133 = call i32 @strcmp(ptr noundef %53, ptr noundef @.str.55) #17
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.else136, label %if.then135

if.then135:                                       ; preds = %if.else132
  store i32 4, ptr @mode, align 4, !tbaa !14
  br label %if.end148

if.else136:                                       ; preds = %if.else132
  %54 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call137 = call i32 @strcmp(ptr noundef %54, ptr noundef @.str.56) #17
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.else140, label %if.then139

if.then139:                                       ; preds = %if.else136
  store i32 5, ptr @mode, align 4, !tbaa !14
  br label %if.end147

if.else140:                                       ; preds = %if.else136
  %55 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call141 = call i32 @strcmp(ptr noundef %55, ptr noundef @.str.57) #17
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.else144, label %if.then143

if.then143:                                       ; preds = %if.else140
  store i32 6, ptr @mode, align 4, !tbaa !14
  br label %if.end146

if.else144:                                       ; preds = %if.else140
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.58)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end146:                                        ; preds = %if.then143
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then139
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.then135
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.then131
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then127
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then123
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then119
  br label %if.end822

if.else153:                                       ; preds = %if.else113
  %57 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call154 = call i32 @strcmp(ptr noundef %57, ptr noundef @.str.59) #17
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.else157, label %if.then156

if.then156:                                       ; preds = %if.else153
  %58 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %58, ptr @user_modedir, align 8, !tbaa !5
  br label %if.end821

if.else157:                                       ; preds = %if.else153
  %59 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call158 = call i32 @strcmp(ptr noundef %59, ptr noundef @.str.60) #17
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.else161, label %if.then160

if.then160:                                       ; preds = %if.else157
  %60 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %60, ptr @user_modedir, align 8, !tbaa !5
  br label %if.end820

if.else161:                                       ; preds = %if.else157
  %61 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call162 = call i32 @strcmp(ptr noundef %61, ptr noundef @.str.61) #17
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.else171, label %if.then164

if.then164:                                       ; preds = %if.else161
  %62 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call165 = call i64 @strtoul(ptr noundef %62, ptr noundef null, i32 noundef 10) #14
  %conv = trunc i64 %call165 to i32
  store i32 %conv, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %63 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %cmp166 = icmp ugt i32 %63, 65536
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.then164
  %64 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.62)
  store i32 65536, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.then164
  br label %if.end819

if.else171:                                       ; preds = %if.else161
  %65 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call172 = call i32 @strcmp(ptr noundef %65, ptr noundef @.str.63) #17
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.else175, label %if.then174

if.then174:                                       ; preds = %if.else171
  %66 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %66, ptr @user_splicingdir, align 8, !tbaa !5
  br label %if.end818

if.else175:                                       ; preds = %if.else171
  %67 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call176 = call i32 @strcmp(ptr noundef %67, ptr noundef @.str.64) #17
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.else185, label %if.then178

if.then178:                                       ; preds = %if.else175
  %68 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call179 = call noalias ptr @fopen(ptr noundef %68, ptr noundef @.str.65)
  store ptr %call179, ptr @dump_splices_fp, align 8, !tbaa !5
  %cmp180 = icmp eq ptr %call179, null
  br i1 %cmp180, label %if.then182, label %if.end184

if.then182:                                       ; preds = %if.then178
  %69 = load ptr, ptr @stderr, align 8, !tbaa !5
  %70 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.66, ptr noundef %70)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end184:                                        ; preds = %if.then178
  br label %if.end817

if.else185:                                       ; preds = %if.else175
  %71 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call186 = call i32 @strcmp(ptr noundef %71, ptr noundef @.str.67) #17
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.else189, label %if.then188

if.then188:                                       ; preds = %if.else185
  %72 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %72, ptr @splices_file, align 8, !tbaa !5
  br label %if.end816

if.else189:                                       ; preds = %if.else185
  %73 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call190 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.68) #17
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.else199, label %if.then192

if.then192:                                       ; preds = %if.else189
  %74 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call193 = call noalias ptr @fopen(ptr noundef %74, ptr noundef @.str.65)
  store ptr %call193, ptr @dump_indels_fp, align 8, !tbaa !5
  %cmp194 = icmp eq ptr %call193, null
  br i1 %cmp194, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.then192
  %75 = load ptr, ptr @stderr, align 8, !tbaa !5
  %76 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.69, ptr noundef %76)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end198:                                        ; preds = %if.then192
  br label %if.end815

if.else199:                                       ; preds = %if.else189
  %77 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call200 = call i32 @strcmp(ptr noundef %77, ptr noundef @.str.70) #17
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.else203, label %if.then202

if.then202:                                       ; preds = %if.else199
  %78 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %78, ptr @indels_file, align 8, !tbaa !5
  br label %if.end814

if.else203:                                       ; preds = %if.else199
  %79 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call204 = call i32 @strcmp(ptr noundef %79, ptr noundef @.str.71) #17
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.else218, label %if.then206

if.then206:                                       ; preds = %if.else203
  %80 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call207 = call i32 @strcmp(ptr noundef %80, ptr noundef @.str.32) #17
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %if.else210, label %if.then209

if.then209:                                       ; preds = %if.then206
  store i8 1, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  store i8 1, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end217

if.else210:                                       ; preds = %if.then206
  %81 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call211 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.33) #17
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.else214, label %if.then213

if.then213:                                       ; preds = %if.else210
  store i8 1, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  store i8 0, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end216

if.else214:                                       ; preds = %if.else210
  %82 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.72)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end216:                                        ; preds = %if.then213
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.then209
  br label %if.end813

if.else218:                                       ; preds = %if.else203
  %83 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call219 = call i32 @strcmp(ptr noundef %83, ptr noundef @.str.73) #17
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.else222, label %if.then221

if.then221:                                       ; preds = %if.else218
  %84 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %84, ptr @user_tallydir, align 8, !tbaa !5
  br label %if.end812

if.else222:                                       ; preds = %if.else218
  %85 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call223 = call i32 @strcmp(ptr noundef %85, ptr noundef @.str.74) #17
  %tobool224 = icmp ne i32 %call223, 0
  br i1 %tobool224, label %if.else226, label %if.then225

if.then225:                                       ; preds = %if.else222
  %86 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %86, ptr @tally_root, align 8, !tbaa !5
  br label %if.end811

if.else226:                                       ; preds = %if.else222
  %87 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call227 = call i32 @strcmp(ptr noundef %87, ptr noundef @.str.75) #17
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.else230, label %if.then229

if.then229:                                       ; preds = %if.else226
  %88 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %88, ptr @user_runlengthdir, align 8, !tbaa !5
  br label %if.end810

if.else230:                                       ; preds = %if.else226
  %89 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call231 = call i32 @strcmp(ptr noundef %89, ptr noundef @.str.76) #17
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.else234, label %if.then233

if.then233:                                       ; preds = %if.else230
  %90 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %90, ptr @runlength_root, align 8, !tbaa !5
  br label %if.end809

if.else234:                                       ; preds = %if.else230
  %91 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call235 = call i32 @strcmp(ptr noundef %91, ptr noundef @.str.77) #17
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.else240, label %if.then237

if.then237:                                       ; preds = %if.else234
  %92 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call238 = call ptr @check_valid_int(ptr noundef %92)
  %call239 = call i32 @atoi(ptr noundef %call238) #17
  store i32 %call239, ptr @max_anchors, align 4, !tbaa !12
  br label %if.end808

if.else240:                                       ; preds = %if.else234
  %93 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call241 = call i32 @strcmp(ptr noundef %93, ptr noundef @.str.78) #17
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.else246, label %if.then243

if.then243:                                       ; preds = %if.else240
  %94 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call244 = call ptr @check_valid_int(ptr noundef %94)
  %call245 = call i32 @atoi(ptr noundef %call244) #17
  store i32 %call245, ptr @input_buffer_size, align 4, !tbaa !12
  br label %if.end807

if.else246:                                       ; preds = %if.else240
  %95 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call247 = call i32 @strcmp(ptr noundef %95, ptr noundef @.str.79) #17
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.else252, label %if.then249

if.then249:                                       ; preds = %if.else246
  %96 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call250 = call ptr @check_valid_int(ptr noundef %96)
  %call251 = call i32 @atoi(ptr noundef %call250) #17
  store i32 %call251, ptr @output_buffer_size, align 4, !tbaa !12
  br label %if.end806

if.else252:                                       ; preds = %if.else246
  %97 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call253 = call i32 @strcmp(ptr noundef %97, ptr noundef @.str.80) #17
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.else258, label %if.then255

if.then255:                                       ; preds = %if.else252
  %98 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call256 = call ptr @check_valid_int(ptr noundef %98)
  %call257 = call i32 @atoi(ptr noundef %call256) #17
  store i32 %call257, ptr @barcode_length, align 4, !tbaa !12
  br label %if.end805

if.else258:                                       ; preds = %if.else252
  %99 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call259 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.81) #17
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.else264, label %if.then261

if.then261:                                       ; preds = %if.else258
  %100 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call262 = call ptr @check_valid_int(ptr noundef %100)
  %call263 = call i32 @atoi(ptr noundef %call262) #17
  store i32 %call263, ptr @endtrim_length, align 4, !tbaa !12
  br label %if.end804

if.else264:                                       ; preds = %if.else258
  %101 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call265 = call i32 @strcmp(ptr noundef %101, ptr noundef @.str.82) #17
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.else276, label %if.then267

if.then267:                                       ; preds = %if.else264
  %102 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call268 = call ptr @check_valid_int(ptr noundef %102)
  %call269 = call i32 @atoi(ptr noundef %call268) #17
  %sub270 = sub nsw i32 %call269, 1
  store i32 %sub270, ptr @acc_fieldi_start, align 4, !tbaa !12
  %103 = load i32, ptr @acc_fieldi_start, align 4, !tbaa !12
  %cmp271 = icmp slt i32 %103, 0
  br i1 %cmp271, label %if.then273, label %if.end275

if.then273:                                       ; preds = %if.then267
  %104 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str.83)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end275:                                        ; preds = %if.then267
  br label %if.end803

if.else276:                                       ; preds = %if.else264
  %105 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call277 = call i32 @strcmp(ptr noundef %105, ptr noundef @.str.84) #17
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.else288, label %if.then279

if.then279:                                       ; preds = %if.else276
  %106 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call280 = call ptr @check_valid_int(ptr noundef %106)
  %call281 = call i32 @atoi(ptr noundef %call280) #17
  %sub282 = sub nsw i32 %call281, 1
  store i32 %sub282, ptr @acc_fieldi_end, align 4, !tbaa !12
  %107 = load i32, ptr @acc_fieldi_end, align 4, !tbaa !12
  %cmp283 = icmp slt i32 %107, 0
  br i1 %cmp283, label %if.then285, label %if.end287

if.then285:                                       ; preds = %if.then279
  %108 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call286 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef @.str.85)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end287:                                        ; preds = %if.then279
  br label %if.end802

if.else288:                                       ; preds = %if.else276
  %109 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call289 = call i32 @strcmp(ptr noundef %109, ptr noundef @.str.86) #17
  %tobool290 = icmp ne i32 %call289, 0
  br i1 %tobool290, label %if.else292, label %if.then291

if.then291:                                       ; preds = %if.else288
  store i8 1, ptr @force_single_end_p, align 1, !tbaa !14
  br label %if.end801

if.else292:                                       ; preds = %if.else288
  %110 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call293 = call i32 @strcmp(ptr noundef %110, ptr noundef @.str.87) #17
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.else312, label %if.then295

if.then295:                                       ; preds = %if.else292
  %111 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call296 = call i32 @strcmp(ptr noundef %111, ptr noundef @.str.88) #17
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.else299, label %if.then298

if.then298:                                       ; preds = %if.then295
  store i8 0, ptr @filter_chastity_p, align 1, !tbaa !14
  store i8 0, ptr @filter_if_both_p, align 1, !tbaa !14
  br label %if.end311

if.else299:                                       ; preds = %if.then295
  %112 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call300 = call i32 @strcmp(ptr noundef %112, ptr noundef @.str.89) #17
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.else303, label %if.then302

if.then302:                                       ; preds = %if.else299
  store i8 1, ptr @filter_chastity_p, align 1, !tbaa !14
  store i8 0, ptr @filter_if_both_p, align 1, !tbaa !14
  br label %if.end310

if.else303:                                       ; preds = %if.else299
  %113 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call304 = call i32 @strcmp(ptr noundef %113, ptr noundef @.str.90) #17
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.else307, label %if.then306

if.then306:                                       ; preds = %if.else303
  store i8 1, ptr @filter_chastity_p, align 1, !tbaa !14
  store i8 1, ptr @filter_if_both_p, align 1, !tbaa !14
  br label %if.end309

if.else307:                                       ; preds = %if.else303
  %114 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.91)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end309:                                        ; preds = %if.then306
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.then302
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.then298
  br label %if.end800

if.else312:                                       ; preds = %if.else292
  %115 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call313 = call i32 @strcmp(ptr noundef %115, ptr noundef @.str.92) #17
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.else316, label %if.then315

if.then315:                                       ; preds = %if.else312
  store i8 1, ptr @allow_paired_end_mismatch_p, align 1, !tbaa !14
  br label %if.end799

if.else316:                                       ; preds = %if.else312
  %116 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call317 = call i32 @strcmp(ptr noundef %116, ptr noundef @.str.93) #17
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.else320, label %if.then319

if.then319:                                       ; preds = %if.else316
  %117 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %117, ptr @whitelist_file, align 8, !tbaa !5
  br label %if.end798

if.else320:                                       ; preds = %if.else316
  %118 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call321 = call i32 @strcmp(ptr noundef %118, ptr noundef @.str.94) #17
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.else326, label %if.then323

if.then323:                                       ; preds = %if.else320
  %119 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call324 = call ptr @check_valid_int(ptr noundef %119)
  %call325 = call i32 @atoi(ptr noundef %call324) #17
  store i32 %call325, ptr @wellpos, align 4, !tbaa !12
  br label %if.end797

if.else326:                                       ; preds = %if.else320
  %120 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call327 = call i32 @strcmp(ptr noundef %120, ptr noundef @.str.95) #17
  %tobool328 = icmp ne i32 %call327, 0
  br i1 %tobool328, label %if.else330, label %if.then329

if.then329:                                       ; preds = %if.else326
  %121 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %121, ptr @read_files_command, align 8, !tbaa !5
  br label %if.end796

if.else330:                                       ; preds = %if.else326
  %122 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call331 = call i32 @strcmp(ptr noundef %122, ptr noundef @.str.96) #17
  %tobool332 = icmp ne i32 %call331, 0
  br i1 %tobool332, label %if.else334, label %if.then333

if.then333:                                       ; preds = %if.else330
  store i8 1, ptr @gunzip_p, align 1, !tbaa !14
  br label %if.end795

if.else334:                                       ; preds = %if.else330
  %123 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call335 = call i32 @strcmp(ptr noundef %123, ptr noundef @.str.97) #17
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %if.else338, label %if.then337

if.then337:                                       ; preds = %if.else334
  store i8 1, ptr @bunzip2_p, align 1, !tbaa !14
  br label %if.end794

if.else338:                                       ; preds = %if.else334
  %124 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call339 = call i32 @strcmp(ptr noundef %124, ptr noundef @.str.98) #17
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.else342, label %if.then341

if.then341:                                       ; preds = %if.else338
  store i8 1, ptr @interleavedp, align 1, !tbaa !14
  br label %if.end793

if.else342:                                       ; preds = %if.else338
  %125 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call343 = call i32 @strcmp(ptr noundef %125, ptr noundef @.str.99) #17
  %tobool344 = icmp ne i32 %call343, 0
  br i1 %tobool344, label %if.else369, label %if.then345

if.then345:                                       ; preds = %if.else342
  %126 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call346 = call i32 @strcmp(ptr noundef %126, ptr noundef @.str.100) #17
  %tobool347 = icmp ne i32 %call346, 0
  br i1 %tobool347, label %if.else349, label %if.then348

if.then348:                                       ; preds = %if.then345
  store i8 0, ptr @invert_first_p, align 1, !tbaa !14
  store i8 1, ptr @invert_second_p, align 1, !tbaa !14
  br label %if.end368

if.else349:                                       ; preds = %if.then345
  %127 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call350 = call i32 @strcmp(ptr noundef %127, ptr noundef @.str.101) #17
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %if.else353, label %if.then352

if.then352:                                       ; preds = %if.else349
  store i8 1, ptr @invert_first_p, align 1, !tbaa !14
  store i8 0, ptr @invert_second_p, align 1, !tbaa !14
  br label %if.end367

if.else353:                                       ; preds = %if.else349
  %128 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call354 = call i32 @strcmp(ptr noundef %128, ptr noundef @.str.102) #17
  %tobool355 = icmp ne i32 %call354, 0
  br i1 %tobool355, label %if.else357, label %if.then356

if.then356:                                       ; preds = %if.else353
  store i8 0, ptr @invert_second_p, align 1, !tbaa !14
  store i8 0, ptr @invert_first_p, align 1, !tbaa !14
  br label %if.end366

if.else357:                                       ; preds = %if.else353
  %129 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call358 = call i32 @strcmp(ptr noundef %129, ptr noundef @.str.103) #17
  %tobool359 = icmp ne i32 %call358, 0
  br i1 %tobool359, label %lor.lhs.false, label %if.then362

lor.lhs.false:                                    ; preds = %if.else357
  %130 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call360 = call i32 @strcmp(ptr noundef %130, ptr noundef @.str.104) #17
  %tobool361 = icmp ne i32 %call360, 0
  br i1 %tobool361, label %if.else363, label %if.then362

if.then362:                                       ; preds = %lor.lhs.false, %if.else357
  store i8 1, ptr @single_cell_p, align 1, !tbaa !14
  store i8 0, ptr @invert_first_p, align 1, !tbaa !14
  store i8 1, ptr @invert_second_p, align 1, !tbaa !14
  store i8 0, ptr @keep_chastity_p, align 1, !tbaa !14
  br label %if.end365

if.else363:                                       ; preds = %lor.lhs.false
  %131 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call364 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.105)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end365:                                        ; preds = %if.then362
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.then356
  br label %if.end367

if.end367:                                        ; preds = %if.end366, %if.then352
  br label %if.end368

if.end368:                                        ; preds = %if.end367, %if.then348
  br label %if.end792

if.else369:                                       ; preds = %if.else342
  %132 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call370 = call i32 @strcmp(ptr noundef %132, ptr noundef @.str.106) #17
  %tobool371 = icmp ne i32 %call370, 0
  br i1 %tobool371, label %if.else373, label %if.then372

if.then372:                                       ; preds = %if.else369
  %133 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %133, ptr @split_output_root, align 8, !tbaa !5
  br label %if.end791

if.else373:                                       ; preds = %if.else369
  %134 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call374 = call i32 @strcmp(ptr noundef %134, ptr noundef @.str.107) #17
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.else377, label %if.then376

if.then376:                                       ; preds = %if.else373
  store i8 1, ptr @split_simple_p, align 1, !tbaa !14
  br label %if.end790

if.else377:                                       ; preds = %if.else373
  %135 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call378 = call i32 @strcmp(ptr noundef %135, ptr noundef @.str.108) #17
  %tobool379 = icmp ne i32 %call378, 0
  br i1 %tobool379, label %if.else381, label %if.then380

if.then380:                                       ; preds = %if.else377
  %136 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %136, ptr @failedinput_root, align 8, !tbaa !5
  br label %if.end789

if.else381:                                       ; preds = %if.else377
  %137 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call382 = call i32 @strcmp(ptr noundef %137, ptr noundef @.str.109) #17
  %tobool383 = icmp ne i32 %call382, 0
  br i1 %tobool383, label %if.else385, label %if.then384

if.then384:                                       ; preds = %if.else381
  store i8 1, ptr @appendp, align 1, !tbaa !14
  br label %if.end788

if.else385:                                       ; preds = %if.else381
  %138 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call386 = call i32 @strcmp(ptr noundef %138, ptr noundef @.str.110) #17
  %tobool387 = icmp ne i32 %call386, 0
  br i1 %tobool387, label %if.else400, label %if.then388

if.then388:                                       ; preds = %if.else385
  %139 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call389 = call i32 @strcmp(ptr noundef %139, ptr noundef @.str.111) #17
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.else392, label %if.then391

if.then391:                                       ; preds = %if.then388
  store i8 0, ptr @want_random_p, align 1, !tbaa !14
  br label %if.end399

if.else392:                                       ; preds = %if.then388
  %140 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call393 = call i32 @strcmp(ptr noundef %140, ptr noundef @.str.112) #17
  %tobool394 = icmp ne i32 %call393, 0
  br i1 %tobool394, label %if.else396, label %if.then395

if.then395:                                       ; preds = %if.else392
  store i8 1, ptr @want_random_p, align 1, !tbaa !14
  br label %if.end398

if.else396:                                       ; preds = %if.else392
  %141 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call397 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.113)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end398:                                        ; preds = %if.then395
  br label %if.end399

if.end399:                                        ; preds = %if.end398, %if.then391
  br label %if.end787

if.else400:                                       ; preds = %if.else385
  %142 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call401 = call i32 @strcmp(ptr noundef %142, ptr noundef @.str.114) #17
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.else406, label %if.then403

if.then403:                                       ; preds = %if.else400
  %143 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call404 = call ptr @check_valid_int(ptr noundef %143)
  %call405 = call i32 @atoi(ptr noundef %call404) #17
  store i32 %call405, ptr @pairmax_dna, align 4, !tbaa !12
  br label %if.end786

if.else406:                                       ; preds = %if.else400
  %144 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call407 = call i32 @strcmp(ptr noundef %144, ptr noundef @.str.115) #17
  %tobool408 = icmp ne i32 %call407, 0
  br i1 %tobool408, label %if.else412, label %if.then409

if.then409:                                       ; preds = %if.else406
  %145 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call410 = call ptr @check_valid_int(ptr noundef %145)
  %call411 = call i32 @atoi(ptr noundef %call410) #17
  store i32 %call411, ptr @pairmax_rna, align 4, !tbaa !12
  br label %if.end785

if.else412:                                       ; preds = %if.else406
  %146 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call413 = call i32 @strcmp(ptr noundef %146, ptr noundef @.str.116) #17
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.else418, label %if.then415

if.then415:                                       ; preds = %if.else412
  %147 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call416 = call ptr @check_valid_int(ptr noundef %147)
  %call417 = call i32 @atoi(ptr noundef %call416) #17
  store i32 %call417, ptr @expected_pairlength, align 4, !tbaa !12
  br label %if.end784

if.else418:                                       ; preds = %if.else412
  %148 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call419 = call i32 @strcmp(ptr noundef %148, ptr noundef @.str.117) #17
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.else424, label %if.then421

if.then421:                                       ; preds = %if.else418
  %149 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call422 = call ptr @check_valid_int(ptr noundef %149)
  %call423 = call i32 @atoi(ptr noundef %call422) #17
  store i32 %call423, ptr @pairlength_deviation, align 4, !tbaa !12
  br label %if.end783

if.else424:                                       ; preds = %if.else418
  %150 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call425 = call i32 @strcmp(ptr noundef %150, ptr noundef @.str.118) #17
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.else437, label %if.then427

if.then427:                                       ; preds = %if.else424
  %151 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call428 = call ptr @check_valid_float_or_int(ptr noundef %151)
  %call429 = call double @atof(ptr noundef %call428) #17
  store double %call429, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %152 = load double, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %cmp430 = fcmp ogt double %152, 1.000000e+00
  br i1 %cmp430, label %land.lhs.true, label %if.end436

land.lhs.true:                                    ; preds = %if.then427
  %153 = load double, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %154 = load double, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %155 = call double @llvm.rint.f64(double %154)
  %cmp432 = fcmp une double %153, %155
  br i1 %cmp432, label %if.then434, label %if.end436

if.then434:                                       ; preds = %land.lhs.true
  %156 = load ptr, ptr @stderr, align 8, !tbaa !5
  %157 = load double, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %call435 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.119, double noundef %157)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end436:                                        ; preds = %land.lhs.true, %if.then427
  br label %if.end782

if.else437:                                       ; preds = %if.else424
  %158 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call438 = call i32 @strcmp(ptr noundef %158, ptr noundef @.str.120) #17
  %tobool439 = icmp ne i32 %call438, 0
  br i1 %tobool439, label %if.else443, label %if.then440

if.then440:                                       ; preds = %if.else437
  %159 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call441 = call ptr @check_valid_int(ptr noundef %159)
  %call442 = call i32 @atoi(ptr noundef %call441) #17
  store i32 %call442, ptr @pass1_min_support, align 4, !tbaa !12
  br label %if.end781

if.else443:                                       ; preds = %if.else437
  %160 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call444 = call i32 @strcmp(ptr noundef %160, ptr noundef @.str.121) #17
  %tobool445 = icmp ne i32 %call444, 0
  br i1 %tobool445, label %if.else453, label %if.then446

if.then446:                                       ; preds = %if.else443
  %161 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call447 = call ptr @check_valid_int(ptr noundef %161)
  %call448 = call i32 @atoi(ptr noundef %call447) #17
  store i32 %call448, ptr @min_indel_end_matches, align 4, !tbaa !12
  %162 = load i32, ptr @min_indel_end_matches, align 4, !tbaa !12
  %cmp449 = icmp sgt i32 %162, 14
  br i1 %cmp449, label %if.then451, label %if.end452

if.then451:                                       ; preds = %if.then446
  store i8 0, ptr @allow_end_indels_p, align 1, !tbaa !14
  br label %if.end452

if.end452:                                        ; preds = %if.then451, %if.then446
  br label %if.end780

if.else453:                                       ; preds = %if.else443
  %163 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call454 = call i32 @strcmp(ptr noundef %163, ptr noundef @.str.122) #17
  %tobool455 = icmp ne i32 %call454, 0
  br i1 %tobool455, label %if.else459, label %if.then456

if.then456:                                       ; preds = %if.else453
  %164 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call457 = call ptr @check_valid_int(ptr noundef %164)
  %call458 = call i32 @atoi(ptr noundef %call457) #17
  store i32 %call458, ptr @antistranded_penalty, align 4, !tbaa !12
  br label %if.end779

if.else459:                                       ; preds = %if.else453
  %165 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call460 = call i32 @strcmp(ptr noundef %165, ptr noundef @.str.123) #17
  %tobool461 = icmp ne i32 %call460, 0
  br i1 %tobool461, label %if.else464, label %if.then462

if.then462:                                       ; preds = %if.else459
  %166 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call463 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.124)
  br label %if.end778

if.else464:                                       ; preds = %if.else459
  %167 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call465 = call i32 @strcmp(ptr noundef %167, ptr noundef @.str.125) #17
  %tobool466 = icmp ne i32 %call465, 0
  br i1 %tobool466, label %if.else468, label %if.then467

if.then467:                                       ; preds = %if.else464
  store i8 1, ptr @merge_samechr_p, align 1, !tbaa !14
  br label %if.end777

if.else468:                                       ; preds = %if.else464
  %168 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call469 = call i32 @strcmp(ptr noundef %168, ptr noundef @.str.126) #17
  %tobool470 = icmp ne i32 %call469, 0
  br i1 %tobool470, label %if.else483, label %if.then471

if.then471:                                       ; preds = %if.else468
  %169 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call472 = call i32 @strcmp(ptr noundef %169, ptr noundef @.str.32) #17
  %tobool473 = icmp ne i32 %call472, 0
  br i1 %tobool473, label %if.else475, label %if.then474

if.then474:                                       ; preds = %if.then471
  store i8 1, ptr @query_unk_mismatch_p, align 1, !tbaa !14
  br label %if.end482

if.else475:                                       ; preds = %if.then471
  %170 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call476 = call i32 @strcmp(ptr noundef %170, ptr noundef @.str.33) #17
  %tobool477 = icmp ne i32 %call476, 0
  br i1 %tobool477, label %if.else479, label %if.then478

if.then478:                                       ; preds = %if.else475
  store i8 0, ptr @query_unk_mismatch_p, align 1, !tbaa !14
  br label %if.end481

if.else479:                                       ; preds = %if.else475
  %171 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call480 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.127)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end481:                                        ; preds = %if.then478
  br label %if.end482

if.end482:                                        ; preds = %if.end481, %if.then474
  br label %if.end776

if.else483:                                       ; preds = %if.else468
  %172 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call484 = call i32 @strcmp(ptr noundef %172, ptr noundef @.str.128) #17
  %tobool485 = icmp ne i32 %call484, 0
  br i1 %tobool485, label %if.else498, label %if.then486

if.then486:                                       ; preds = %if.else483
  %173 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call487 = call i32 @strcmp(ptr noundef %173, ptr noundef @.str.32) #17
  %tobool488 = icmp ne i32 %call487, 0
  br i1 %tobool488, label %if.else490, label %if.then489

if.then489:                                       ; preds = %if.then486
  store i8 1, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  br label %if.end497

if.else490:                                       ; preds = %if.then486
  %174 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call491 = call i32 @strcmp(ptr noundef %174, ptr noundef @.str.33) #17
  %tobool492 = icmp ne i32 %call491, 0
  br i1 %tobool492, label %if.else494, label %if.then493

if.then493:                                       ; preds = %if.else490
  store i8 0, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  br label %if.end496

if.else494:                                       ; preds = %if.else490
  %175 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call495 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.129)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end496:                                        ; preds = %if.then493
  br label %if.end497

if.end497:                                        ; preds = %if.end496, %if.then489
  br label %if.end775

if.else498:                                       ; preds = %if.else483
  %176 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call499 = call i32 @strcmp(ptr noundef %176, ptr noundef @.str.130) #17
  %tobool500 = icmp ne i32 %call499, 0
  br i1 %tobool500, label %if.else503, label %if.then501

if.then501:                                       ; preds = %if.else498
  %177 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call502 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.131)
  br label %if.end774

if.else503:                                       ; preds = %if.else498
  %178 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call504 = call i32 @strcmp(ptr noundef %178, ptr noundef @.str.132) #17
  %tobool505 = icmp ne i32 %call504, 0
  br i1 %tobool505, label %if.else509, label %if.then506

if.then506:                                       ; preds = %if.else503
  %179 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call507 = call ptr @check_valid_int(ptr noundef %179)
  %call508 = call i32 @atoi(ptr noundef %call507) #17
  store i32 %call508, ptr @trim_indel_score, align 4, !tbaa !12
  store i8 1, ptr @user_trim_indel_score_p, align 1, !tbaa !14
  br label %if.end773

if.else509:                                       ; preds = %if.else503
  %180 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call510 = call i32 @strcmp(ptr noundef %180, ptr noundef @.str.133) #17
  %tobool511 = icmp ne i32 %call510, 0
  br i1 %tobool511, label %if.else515, label %if.then512

if.then512:                                       ; preds = %if.else509
  %181 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call513 = call ptr @check_valid_int(ptr noundef %181)
  %call514 = call i32 @atoi(ptr noundef %call513) #17
  store i32 %call514, ptr @fusion_sensitivity, align 4, !tbaa !12
  br label %if.end772

if.else515:                                       ; preds = %if.else509
  %182 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call516 = call i32 @strcmp(ptr noundef %182, ptr noundef @.str.134) #17
  %tobool517 = icmp ne i32 %call516, 0
  br i1 %tobool517, label %if.else521, label %if.then518

if.then518:                                       ; preds = %if.else515
  %183 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call519 = call ptr @check_valid_int(ptr noundef %183)
  %call520 = call i32 @atoi(ptr noundef %call519) #17
  store i32 %call520, ptr @localsplicing_penalty, align 4, !tbaa !12
  br label %if.end771

if.else521:                                       ; preds = %if.else515
  %184 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call522 = call i32 @strcmp(ptr noundef %184, ptr noundef @.str.135) #17
  %tobool523 = icmp ne i32 %call522, 0
  br i1 %tobool523, label %if.else526, label %if.then524

if.then524:                                       ; preds = %if.else521
  %185 = load ptr, ptr @optarg, align 8, !tbaa !5
  %186 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call525 = call double @check_valid_float(ptr noundef %185, ptr noundef %186)
  store double %call525, ptr @min_distantsplicing_identity, align 8, !tbaa !27
  br label %if.end770

if.else526:                                       ; preds = %if.else521
  %187 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call527 = call i32 @strcmp(ptr noundef %187, ptr noundef @.str.136) #17
  %tobool528 = icmp ne i32 %call527, 0
  br i1 %tobool528, label %if.else532, label %if.then529

if.then529:                                       ; preds = %if.else526
  %188 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call530 = call ptr @check_valid_int(ptr noundef %188)
  %call531 = call i32 @atoi(ptr noundef %call530) #17
  store i32 %call531, ptr @min_distantsplicing_end_matches, align 4, !tbaa !12
  br label %if.end769

if.else532:                                       ; preds = %if.else526
  %189 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call533 = call i32 @strcmp(ptr noundef %189, ptr noundef @.str.137) #17
  %tobool534 = icmp ne i32 %call533, 0
  br i1 %tobool534, label %if.else538, label %if.then535

if.then535:                                       ; preds = %if.else532
  %190 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call536 = call ptr @check_valid_int(ptr noundef %190)
  %call537 = call i32 @atoi(ptr noundef %call536) #17
  store i32 %call537, ptr @min_shortend, align 4, !tbaa !12
  br label %sw.epilog

if.else538:                                       ; preds = %if.else532
  %191 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call539 = call i32 @strcmp(ptr noundef %191, ptr noundef @.str.138) #17
  %tobool540 = icmp ne i32 %call539, 0
  br i1 %tobool540, label %if.else542, label %if.then541

if.then541:                                       ; preds = %if.else538
  store i8 1, ptr @force_xs_direction_p, align 1, !tbaa !14
  br label %if.end767

if.else542:                                       ; preds = %if.else538
  %192 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call543 = call i32 @strcmp(ptr noundef %192, ptr noundef @.str.139) #17
  %tobool544 = icmp ne i32 %call543, 0
  br i1 %tobool544, label %if.else546, label %if.then545

if.then545:                                       ; preds = %if.else542
  store i8 1, ptr @show_refdiff_p, align 1, !tbaa !14
  br label %if.end766

if.else546:                                       ; preds = %if.else542
  %193 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call547 = call i32 @strcmp(ptr noundef %193, ptr noundef @.str.140) #17
  %tobool548 = icmp ne i32 %call547, 0
  br i1 %tobool548, label %if.else550, label %if.then549

if.then549:                                       ; preds = %if.else546
  store i8 1, ptr @clip_overlap_p, align 1, !tbaa !14
  br label %if.end765

if.else550:                                       ; preds = %if.else546
  %194 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call551 = call i32 @strcmp(ptr noundef %194, ptr noundef @.str.141) #17
  %tobool552 = icmp ne i32 %call551, 0
  br i1 %tobool552, label %if.else554, label %if.then553

if.then553:                                       ; preds = %if.else550
  store i8 1, ptr @merge_overlap_p, align 1, !tbaa !14
  br label %if.end764

if.else554:                                       ; preds = %if.else550
  %195 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call555 = call i32 @strcmp(ptr noundef %195, ptr noundef @.str.142) #17
  %tobool556 = icmp ne i32 %call555, 0
  br i1 %tobool556, label %if.else558, label %if.then557

if.then557:                                       ; preds = %if.else554
  store i8 1, ptr @method_print_p, align 1, !tbaa !14
  br label %if.end763

if.else558:                                       ; preds = %if.else554
  %196 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call559 = call i32 @strcmp(ptr noundef %196, ptr noundef @.str.143) #17
  %tobool560 = icmp ne i32 %call559, 0
  br i1 %tobool560, label %if.else562, label %if.then561

if.then561:                                       ; preds = %if.else558
  store i8 0, ptr @sam_headers_p, align 1, !tbaa !14
  br label %if.end762

if.else562:                                       ; preds = %if.else558
  %197 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call563 = call i32 @strcmp(ptr noundef %197, ptr noundef @.str.144) #17
  %tobool564 = icmp ne i32 %call563, 0
  br i1 %tobool564, label %if.else566, label %if.then565

if.then565:                                       ; preds = %if.else562
  store i8 1, ptr @add_paired_nomappers_p, align 1, !tbaa !14
  br label %if.end761

if.else566:                                       ; preds = %if.else562
  %198 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call567 = call i32 @strcmp(ptr noundef %198, ptr noundef @.str.145) #17
  %tobool568 = icmp ne i32 %call567, 0
  br i1 %tobool568, label %if.else581, label %if.then569

if.then569:                                       ; preds = %if.else566
  %199 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call570 = call i32 @strcmp(ptr noundef %199, ptr noundef @.str.32) #17
  %tobool571 = icmp ne i32 %call570, 0
  br i1 %tobool571, label %if.else573, label %if.then572

if.then572:                                       ; preds = %if.then569
  store i8 1, ptr @paired_flag_means_concordant_p, align 1, !tbaa !14
  br label %if.end580

if.else573:                                       ; preds = %if.then569
  %200 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call574 = call i32 @strcmp(ptr noundef %200, ptr noundef @.str.33) #17
  %tobool575 = icmp ne i32 %call574, 0
  br i1 %tobool575, label %if.else577, label %if.then576

if.then576:                                       ; preds = %if.else573
  store i8 0, ptr @paired_flag_means_concordant_p, align 1, !tbaa !14
  br label %if.end579

if.else577:                                       ; preds = %if.else573
  %201 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call578 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef @.str.146)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end579:                                        ; preds = %if.then576
  br label %if.end580

if.end580:                                        ; preds = %if.end579, %if.then572
  br label %if.end760

if.else581:                                       ; preds = %if.else566
  %202 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call582 = call i32 @strcmp(ptr noundef %202, ptr noundef @.str.147) #17
  %tobool583 = icmp ne i32 %call582, 0
  br i1 %tobool583, label %if.else587, label %if.then584

if.then584:                                       ; preds = %if.else581
  %203 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call585 = call ptr @check_valid_int(ptr noundef %203)
  %call586 = call i32 @atoi(ptr noundef %call585) #17
  store i32 %call586, ptr @sam_headers_batch, align 4, !tbaa !12
  br label %if.end759

if.else587:                                       ; preds = %if.else581
  %204 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call588 = call i32 @strcmp(ptr noundef %204, ptr noundef @.str.148) #17
  %tobool589 = icmp ne i32 %call588, 0
  br i1 %tobool589, label %if.else591, label %if.then590

if.then590:                                       ; preds = %if.else587
  store i8 1, ptr @sam_hardclip_use_S_p, align 1, !tbaa !14
  br label %if.end758

if.else591:                                       ; preds = %if.else587
  %205 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call592 = call i32 @strcmp(ptr noundef %205, ptr noundef @.str.149) #17
  %tobool593 = icmp ne i32 %call592, 0
  br i1 %tobool593, label %if.else595, label %if.then594

if.then594:                                       ; preds = %if.else591
  store i8 1, ptr @sam_insert_0M_p, align 1, !tbaa !14
  br label %if.end757

if.else595:                                       ; preds = %if.else591
  %206 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call596 = call i32 @strcmp(ptr noundef %206, ptr noundef @.str.150) #17
  %tobool597 = icmp ne i32 %call596, 0
  br i1 %tobool597, label %if.else599, label %if.then598

if.then598:                                       ; preds = %if.else595
  store i8 1, ptr @sam_cigar_extended_p, align 1, !tbaa !14
  br label %if.end756

if.else599:                                       ; preds = %if.else595
  %207 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call600 = call i32 @strcmp(ptr noundef %207, ptr noundef @.str.151) #17
  %tobool601 = icmp ne i32 %call600, 0
  br i1 %tobool601, label %if.else603, label %if.then602

if.then602:                                       ; preds = %if.else599
  store i8 1, ptr @sam_multiple_primaries_p, align 1, !tbaa !14
  br label %if.end755

if.else603:                                       ; preds = %if.else599
  %208 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call604 = call i32 @strcmp(ptr noundef %208, ptr noundef @.str.152) #17
  %tobool605 = icmp ne i32 %call604, 0
  br i1 %tobool605, label %if.else607, label %if.then606

if.then606:                                       ; preds = %if.else603
  store i8 1, ptr @sam_sparse_secondaries_p, align 1, !tbaa !14
  br label %if.end754

if.else607:                                       ; preds = %if.else603
  %209 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call608 = call i32 @strcmp(ptr noundef %209, ptr noundef @.str.153) #17
  %tobool609 = icmp ne i32 %call608, 0
  br i1 %tobool609, label %if.else636, label %if.then610

if.then610:                                       ; preds = %if.else607
  %210 = load i8, ptr @user_quality_score_adj, align 1, !tbaa !14
  %conv611 = zext i8 %210 to i32
  %cmp612 = icmp eq i32 %conv611, 1
  br i1 %cmp612, label %if.then614, label %if.else616

if.then614:                                       ; preds = %if.then610
  %211 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call615 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef @.str.154)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else616:                                       ; preds = %if.then610
  %212 = load i8, ptr @user_quality_shift, align 1, !tbaa !14
  %conv617 = zext i8 %212 to i32
  %cmp618 = icmp eq i32 %conv617, 1
  br i1 %cmp618, label %if.then620, label %if.else622

if.then620:                                       ; preds = %if.else616
  %213 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call621 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str.155)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else622:                                       ; preds = %if.else616
  %214 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call623 = call i32 @strcmp(ptr noundef %214, ptr noundef @.str.156) #17
  %tobool624 = icmp ne i32 %call623, 0
  br i1 %tobool624, label %if.else626, label %if.then625

if.then625:                                       ; preds = %if.else622
  call void @MAPQ_init(i32 noundef 64)
  store i8 1, ptr @user_quality_score_adj, align 1, !tbaa !14
  store i32 -31, ptr @quality_shift, align 4, !tbaa !12
  store i8 1, ptr @user_quality_shift, align 1, !tbaa !14
  br label %if.end633

if.else626:                                       ; preds = %if.else622
  %215 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call627 = call i32 @strcmp(ptr noundef %215, ptr noundef @.str.157) #17
  %tobool628 = icmp ne i32 %call627, 0
  br i1 %tobool628, label %if.else630, label %if.then629

if.then629:                                       ; preds = %if.else626
  call void @MAPQ_init(i32 noundef 33)
  store i8 1, ptr @user_quality_score_adj, align 1, !tbaa !14
  store i32 0, ptr @quality_shift, align 4, !tbaa !12
  store i8 1, ptr @user_quality_shift, align 1, !tbaa !14
  br label %if.end632

if.else630:                                       ; preds = %if.else626
  %216 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call631 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef @.str.158)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end632:                                        ; preds = %if.then629
  br label %if.end633

if.end633:                                        ; preds = %if.end632, %if.then625
  br label %if.end634

if.end634:                                        ; preds = %if.end633
  br label %if.end635

if.end635:                                        ; preds = %if.end634
  br label %if.end753

if.else636:                                       ; preds = %if.else607
  %217 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call637 = call i32 @strcmp(ptr noundef %217, ptr noundef @.str.159) #17
  %tobool638 = icmp ne i32 %call637, 0
  br i1 %tobool638, label %if.else640, label %if.then639

if.then639:                                       ; preds = %if.else636
  store i8 1, ptr @md_report_snps_p, align 1, !tbaa !14
  br label %if.end752

if.else640:                                       ; preds = %if.else636
  %218 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call641 = call i32 @strcmp(ptr noundef %218, ptr noundef @.str.160) #17
  %tobool642 = icmp ne i32 %call641, 0
  br i1 %tobool642, label %if.else644, label %if.then643

if.then643:                                       ; preds = %if.else640
  store i8 0, ptr @allow_soft_clips_p, align 1, !tbaa !14
  br label %if.end751

if.else644:                                       ; preds = %if.else640
  %219 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call645 = call i32 @strcmp(ptr noundef %219, ptr noundef @.str.161) #17
  %tobool646 = icmp ne i32 %call645, 0
  br i1 %tobool646, label %if.else648, label %if.then647

if.then647:                                       ; preds = %if.else644
  store i8 1, ptr @extend_soft_clips_p, align 1, !tbaa !14
  br label %if.end750

if.else648:                                       ; preds = %if.else644
  %220 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call649 = call i32 @strcmp(ptr noundef %220, ptr noundef @.str.162) #17
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.else673, label %if.then651

if.then651:                                       ; preds = %if.else648
  %221 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call652 = call i32 @strcmp(ptr noundef %221, ptr noundef @.str.163) #17
  %tobool653 = icmp ne i32 %call652, 0
  br i1 %tobool653, label %if.else655, label %if.then654

if.then654:                                       ; preds = %if.then651
  store i32 0, ptr @cigar_action, align 4, !tbaa !14
  br label %if.end672

if.else655:                                       ; preds = %if.then651
  %222 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call656 = call i32 @strcmp(ptr noundef %222, ptr noundef @.str.164) #17
  %tobool657 = icmp ne i32 %call656, 0
  br i1 %tobool657, label %if.else659, label %if.then658

if.then658:                                       ; preds = %if.else655
  store i32 1, ptr @cigar_action, align 4, !tbaa !14
  br label %if.end671

if.else659:                                       ; preds = %if.else655
  %223 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call660 = call i32 @strcmp(ptr noundef %223, ptr noundef @.str.165) #17
  %tobool661 = icmp ne i32 %call660, 0
  br i1 %tobool661, label %if.else663, label %if.then662

if.then662:                                       ; preds = %if.else659
  store i32 2, ptr @cigar_action, align 4, !tbaa !14
  br label %if.end670

if.else663:                                       ; preds = %if.else659
  %224 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call664 = call i32 @strcmp(ptr noundef %224, ptr noundef @.str.166) #17
  %tobool665 = icmp ne i32 %call664, 0
  br i1 %tobool665, label %if.else667, label %if.then666

if.then666:                                       ; preds = %if.else663
  store i32 3, ptr @cigar_action, align 4, !tbaa !14
  br label %if.end669

if.else667:                                       ; preds = %if.else663
  %225 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call668 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.167)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end669:                                        ; preds = %if.then666
  br label %if.end670

if.end670:                                        ; preds = %if.end669, %if.then662
  br label %if.end671

if.end671:                                        ; preds = %if.end670, %if.then658
  br label %if.end672

if.end672:                                        ; preds = %if.end671, %if.then654
  br label %if.end749

if.else673:                                       ; preds = %if.else648
  %226 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call674 = call i32 @strcmp(ptr noundef %226, ptr noundef @.str.168) #17
  %tobool675 = icmp ne i32 %call674, 0
  br i1 %tobool675, label %if.else677, label %if.then676

if.then676:                                       ; preds = %if.else673
  %227 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %227, ptr @sam_read_group_id, align 8, !tbaa !5
  br label %if.end748

if.else677:                                       ; preds = %if.else673
  %228 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call678 = call i32 @strcmp(ptr noundef %228, ptr noundef @.str.169) #17
  %tobool679 = icmp ne i32 %call678, 0
  br i1 %tobool679, label %if.else681, label %if.then680

if.then680:                                       ; preds = %if.else677
  %229 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %229, ptr @sam_read_group_name, align 8, !tbaa !5
  br label %if.end747

if.else681:                                       ; preds = %if.else677
  %230 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call682 = call i32 @strcmp(ptr noundef %230, ptr noundef @.str.170) #17
  %tobool683 = icmp ne i32 %call682, 0
  br i1 %tobool683, label %if.else685, label %if.then684

if.then684:                                       ; preds = %if.else681
  %231 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %231, ptr @sam_read_group_library, align 8, !tbaa !5
  br label %if.end746

if.else685:                                       ; preds = %if.else681
  %232 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call686 = call i32 @strcmp(ptr noundef %232, ptr noundef @.str.171) #17
  %tobool687 = icmp ne i32 %call686, 0
  br i1 %tobool687, label %if.else689, label %if.then688

if.then688:                                       ; preds = %if.else685
  %233 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %233, ptr @sam_read_group_platform, align 8, !tbaa !5
  br label %if.end745

if.else689:                                       ; preds = %if.else685
  %234 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call690 = call i32 @strcmp(ptr noundef %234, ptr noundef @.str.172) #17
  %tobool691 = icmp ne i32 %call690, 0
  br i1 %tobool691, label %if.else693, label %if.then692

if.then692:                                       ; preds = %if.else689
  store i8 1, ptr @print_snplabels_p, align 1, !tbaa !14
  br label %if.end744

if.else693:                                       ; preds = %if.else689
  %235 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call694 = call i32 @strcmp(ptr noundef %235, ptr noundef @.str.173) #17
  %tobool695 = icmp ne i32 %call694, 0
  br i1 %tobool695, label %if.else704, label %if.then696

if.then696:                                       ; preds = %if.else693
  %236 = load i8, ptr @nofailsp, align 1, !tbaa !14
  %conv697 = zext i8 %236 to i32
  %cmp698 = icmp eq i32 %conv697, 1
  br i1 %cmp698, label %if.then700, label %if.else702

if.then700:                                       ; preds = %if.then696
  %237 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call701 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef @.str.174)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else702:                                       ; preds = %if.then696
  store i8 1, ptr @failsonlyp, align 1, !tbaa !14
  br label %if.end703

if.end703:                                        ; preds = %if.else702
  br label %if.end743

if.else704:                                       ; preds = %if.else693
  %238 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call705 = call i32 @strcmp(ptr noundef %238, ptr noundef @.str.175) #17
  %tobool706 = icmp ne i32 %call705, 0
  br i1 %tobool706, label %if.else715, label %if.then707

if.then707:                                       ; preds = %if.else704
  %239 = load i8, ptr @failsonlyp, align 1, !tbaa !14
  %conv708 = zext i8 %239 to i32
  %cmp709 = icmp eq i32 %conv708, 1
  br i1 %cmp709, label %if.then711, label %if.else713

if.then711:                                       ; preds = %if.then707
  %240 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call712 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.174)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else713:                                       ; preds = %if.then707
  store i8 1, ptr @nofailsp, align 1, !tbaa !14
  br label %if.end714

if.end714:                                        ; preds = %if.else713
  br label %if.end742

if.else715:                                       ; preds = %if.else704
  %241 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call716 = call i32 @strcmp(ptr noundef %241, ptr noundef @.str.176) #17
  %tobool717 = icmp ne i32 %call716, 0
  br i1 %tobool717, label %if.else719, label %if.then718

if.then718:                                       ; preds = %if.else715
  %242 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %242, ptr @chrsubset_file, align 8, !tbaa !5
  br label %if.end741

if.else719:                                       ; preds = %if.else715
  %243 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call720 = call i32 @strcmp(ptr noundef %243, ptr noundef @.str.177) #17
  %tobool721 = icmp ne i32 %call720, 0
  br i1 %tobool721, label %if.else723, label %if.then722

if.then722:                                       ; preds = %if.else719
  store i8 1, ptr @only_concordant_p, align 1, !tbaa !14
  br label %if.end740

if.else723:                                       ; preds = %if.else719
  %244 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call724 = call i32 @strcmp(ptr noundef %244, ptr noundef @.str.178) #17
  %tobool725 = icmp ne i32 %call724, 0
  br i1 %tobool725, label %if.else727, label %if.then726

if.then726:                                       ; preds = %if.else723
  store i8 1, ptr @omit_concordant_uniq_p, align 1, !tbaa !14
  br label %if.end739

if.else727:                                       ; preds = %if.else723
  %245 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call728 = call i32 @strcmp(ptr noundef %245, ptr noundef @.str.179) #17
  %tobool729 = icmp ne i32 %call728, 0
  br i1 %tobool729, label %if.else731, label %if.then730

if.then730:                                       ; preds = %if.else727
  store i8 1, ptr @omit_concordant_mult_p, align 1, !tbaa !14
  br label %if.end738

if.else731:                                       ; preds = %if.else727
  %246 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call732 = call i32 @strcmp(ptr noundef %246, ptr noundef @.str.180) #17
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.else735, label %if.then734

if.then734:                                       ; preds = %if.else731
  store i8 0, ptr @omit_softclipped_p, align 1, !tbaa !14
  br label %if.end737

if.else735:                                       ; preds = %if.else731
  %247 = load ptr, ptr @stderr, align 8, !tbaa !5
  %248 = load ptr, ptr %long_name, align 8, !tbaa !5
  %call736 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef @.str.181, ptr noundef %248)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end737:                                        ; preds = %if.then734
  br label %if.end738

if.end738:                                        ; preds = %if.end737, %if.then730
  br label %if.end739

if.end739:                                        ; preds = %if.end738, %if.then726
  br label %if.end740

if.end740:                                        ; preds = %if.end739, %if.then722
  br label %if.end741

if.end741:                                        ; preds = %if.end740, %if.then718
  br label %if.end742

if.end742:                                        ; preds = %if.end741, %if.end714
  br label %if.end743

if.end743:                                        ; preds = %if.end742, %if.end703
  br label %if.end744

if.end744:                                        ; preds = %if.end743, %if.then692
  br label %if.end745

if.end745:                                        ; preds = %if.end744, %if.then688
  br label %if.end746

if.end746:                                        ; preds = %if.end745, %if.then684
  br label %if.end747

if.end747:                                        ; preds = %if.end746, %if.then680
  br label %if.end748

if.end748:                                        ; preds = %if.end747, %if.then676
  br label %if.end749

if.end749:                                        ; preds = %if.end748, %if.end672
  br label %if.end750

if.end750:                                        ; preds = %if.end749, %if.then647
  br label %if.end751

if.end751:                                        ; preds = %if.end750, %if.then643
  br label %if.end752

if.end752:                                        ; preds = %if.end751, %if.then639
  br label %if.end753

if.end753:                                        ; preds = %if.end752, %if.end635
  br label %if.end754

if.end754:                                        ; preds = %if.end753, %if.then606
  br label %if.end755

if.end755:                                        ; preds = %if.end754, %if.then602
  br label %if.end756

if.end756:                                        ; preds = %if.end755, %if.then598
  br label %if.end757

if.end757:                                        ; preds = %if.end756, %if.then594
  br label %if.end758

if.end758:                                        ; preds = %if.end757, %if.then590
  br label %if.end759

if.end759:                                        ; preds = %if.end758, %if.then584
  br label %if.end760

if.end760:                                        ; preds = %if.end759, %if.end580
  br label %if.end761

if.end761:                                        ; preds = %if.end760, %if.then565
  br label %if.end762

if.end762:                                        ; preds = %if.end761, %if.then561
  br label %if.end763

if.end763:                                        ; preds = %if.end762, %if.then557
  br label %if.end764

if.end764:                                        ; preds = %if.end763, %if.then553
  br label %if.end765

if.end765:                                        ; preds = %if.end764, %if.then549
  br label %if.end766

if.end766:                                        ; preds = %if.end765, %if.then545
  br label %if.end767

if.end767:                                        ; preds = %if.end766, %if.then541
  br label %if.end768

if.end768:                                        ; preds = %if.end767
  br label %if.end769

if.end769:                                        ; preds = %if.end768, %if.then529
  br label %if.end770

if.end770:                                        ; preds = %if.end769, %if.then524
  br label %if.end771

if.end771:                                        ; preds = %if.end770, %if.then518
  br label %if.end772

if.end772:                                        ; preds = %if.end771, %if.then512
  br label %if.end773

if.end773:                                        ; preds = %if.end772, %if.then506
  br label %if.end774

if.end774:                                        ; preds = %if.end773, %if.then501
  br label %if.end775

if.end775:                                        ; preds = %if.end774, %if.end497
  br label %if.end776

if.end776:                                        ; preds = %if.end775, %if.end482
  br label %if.end777

if.end777:                                        ; preds = %if.end776, %if.then467
  br label %if.end778

if.end778:                                        ; preds = %if.end777, %if.then462
  br label %if.end779

if.end779:                                        ; preds = %if.end778, %if.then456
  br label %if.end780

if.end780:                                        ; preds = %if.end779, %if.end452
  br label %if.end781

if.end781:                                        ; preds = %if.end780, %if.then440
  br label %if.end782

if.end782:                                        ; preds = %if.end781, %if.end436
  br label %if.end783

if.end783:                                        ; preds = %if.end782, %if.then421
  br label %if.end784

if.end784:                                        ; preds = %if.end783, %if.then415
  br label %if.end785

if.end785:                                        ; preds = %if.end784, %if.then409
  br label %if.end786

if.end786:                                        ; preds = %if.end785, %if.then403
  br label %if.end787

if.end787:                                        ; preds = %if.end786, %if.end399
  br label %if.end788

if.end788:                                        ; preds = %if.end787, %if.then384
  br label %if.end789

if.end789:                                        ; preds = %if.end788, %if.then380
  br label %if.end790

if.end790:                                        ; preds = %if.end789, %if.then376
  br label %if.end791

if.end791:                                        ; preds = %if.end790, %if.then372
  br label %if.end792

if.end792:                                        ; preds = %if.end791, %if.end368
  br label %if.end793

if.end793:                                        ; preds = %if.end792, %if.then341
  br label %if.end794

if.end794:                                        ; preds = %if.end793, %if.then337
  br label %if.end795

if.end795:                                        ; preds = %if.end794, %if.then333
  br label %if.end796

if.end796:                                        ; preds = %if.end795, %if.then329
  br label %if.end797

if.end797:                                        ; preds = %if.end796, %if.then323
  br label %if.end798

if.end798:                                        ; preds = %if.end797, %if.then319
  br label %if.end799

if.end799:                                        ; preds = %if.end798, %if.then315
  br label %if.end800

if.end800:                                        ; preds = %if.end799, %if.end311
  br label %if.end801

if.end801:                                        ; preds = %if.end800, %if.then291
  br label %if.end802

if.end802:                                        ; preds = %if.end801, %if.end287
  br label %if.end803

if.end803:                                        ; preds = %if.end802, %if.end275
  br label %if.end804

if.end804:                                        ; preds = %if.end803, %if.then261
  br label %if.end805

if.end805:                                        ; preds = %if.end804, %if.then255
  br label %if.end806

if.end806:                                        ; preds = %if.end805, %if.then249
  br label %if.end807

if.end807:                                        ; preds = %if.end806, %if.then243
  br label %if.end808

if.end808:                                        ; preds = %if.end807, %if.then237
  br label %if.end809

if.end809:                                        ; preds = %if.end808, %if.then233
  br label %if.end810

if.end810:                                        ; preds = %if.end809, %if.then229
  br label %if.end811

if.end811:                                        ; preds = %if.end810, %if.then225
  br label %if.end812

if.end812:                                        ; preds = %if.end811, %if.then221
  br label %if.end813

if.end813:                                        ; preds = %if.end812, %if.end217
  br label %if.end814

if.end814:                                        ; preds = %if.end813, %if.then202
  br label %if.end815

if.end815:                                        ; preds = %if.end814, %if.end198
  br label %if.end816

if.end816:                                        ; preds = %if.end815, %if.then188
  br label %if.end817

if.end817:                                        ; preds = %if.end816, %if.end184
  br label %if.end818

if.end818:                                        ; preds = %if.end817, %if.then174
  br label %if.end819

if.end819:                                        ; preds = %if.end818, %if.end170
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %if.then160
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.then156
  br label %if.end822

if.end822:                                        ; preds = %if.end821, %if.end152
  br label %if.end823

if.end823:                                        ; preds = %if.end822
  br label %if.end824

if.end824:                                        ; preds = %if.end823, %if.then106
  br label %if.end825

if.end825:                                        ; preds = %if.end824, %if.then102
  br label %if.end826

if.end826:                                        ; preds = %if.end825, %if.then96
  br label %if.end827

if.end827:                                        ; preds = %if.end826, %if.then91
  br label %if.end828

if.end828:                                        ; preds = %if.end827, %if.then87
  br label %if.end829

if.end829:                                        ; preds = %if.end828, %if.then83
  br label %if.end830

if.end830:                                        ; preds = %if.end829, %if.end79
  br label %if.end831

if.end831:                                        ; preds = %if.end830, %if.end64
  br label %if.end832

if.end832:                                        ; preds = %if.end831, %if.end44
  br label %if.end833

if.end833:                                        ; preds = %if.end832, %if.then30
  br label %if.end834

if.end834:                                        ; preds = %if.end833, %if.then25
  br label %if.end835

if.end835:                                        ; preds = %if.end834, %if.then20
  br label %if.end836

if.end836:                                        ; preds = %if.end835
  br label %if.end837

if.end837:                                        ; preds = %if.end836
  br label %if.end838

if.end838:                                        ; preds = %if.end837
  br label %sw.epilog

sw.bb839:                                         ; preds = %while.body
  %249 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %249, ptr @user_transcriptomedir, align 8, !tbaa !5
  br label %sw.epilog

sw.bb840:                                         ; preds = %while.body
  %250 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %250, ptr @transcriptome_dbroot, align 8, !tbaa !5
  br label %sw.epilog

sw.bb841:                                         ; preds = %while.body
  %251 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %251, ptr @user_genomedir, align 8, !tbaa !5
  br label %sw.epilog

sw.bb842:                                         ; preds = %while.body
  %252 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %252, ptr @genome_dbroot, align 8, !tbaa !5
  br label %sw.epilog

sw.bb843:                                         ; preds = %while.body
  %253 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call844 = call ptr @check_valid_int(ptr noundef %253)
  %call845 = call i32 @atoi(ptr noundef %call844) #17
  store i32 %call845, ptr @required_index1part, align 4, !tbaa !12
  %254 = load i32, ptr @required_index1part, align 4, !tbaa !12
  %cmp846 = icmp sgt i32 %254, 18
  br i1 %cmp846, label %if.then848, label %if.end850

if.then848:                                       ; preds = %sw.bb843
  %255 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call849 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str.182, i32 noundef 18)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end850:                                        ; preds = %sw.bb843
  br label %sw.epilog

sw.bb851:                                         ; preds = %while.body
  %256 = load ptr, ptr @optarg, align 8, !tbaa !5
  call void @parse_part(ptr noundef @part_modulus, ptr noundef @part_interval, ptr noundef %256)
  br label %sw.epilog

sw.bb852:                                         ; preds = %while.body
  %257 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %257, ptr @output_file, align 8, !tbaa !5
  br label %sw.epilog

sw.bb853:                                         ; preds = %while.body
  %258 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call854 = call i32 @strcmp(ptr noundef %258, ptr noundef @.str.183) #17
  %tobool855 = icmp ne i32 %call854, 0
  br i1 %tobool855, label %if.else857, label %if.then856

if.then856:                                       ; preds = %sw.bb853
  store i8 1, ptr @chop_primers_p, align 1, !tbaa !14
  br label %if.end864

if.else857:                                       ; preds = %sw.bb853
  %259 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call858 = call i32 @strcmp(ptr noundef %259, ptr noundef @.str.88) #17
  %tobool859 = icmp ne i32 %call858, 0
  br i1 %tobool859, label %if.else861, label %if.then860

if.then860:                                       ; preds = %if.else857
  store i8 0, ptr @chop_primers_p, align 1, !tbaa !14
  br label %if.end863

if.else861:                                       ; preds = %if.else857
  %260 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call862 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef @.str.184)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end863:                                        ; preds = %if.then860
  br label %if.end864

if.end864:                                        ; preds = %if.end863, %if.then856
  br label %sw.epilog

sw.bb865:                                         ; preds = %while.body
  %261 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call866 = call i32 @strcmp(ptr noundef %261, ptr noundef @.str.32) #17
  %tobool867 = icmp ne i32 %call866, 0
  br i1 %tobool867, label %if.else869, label %if.then868

if.then868:                                       ; preds = %sw.bb865
  store i8 1, ptr @novelsplicingp, align 1, !tbaa !14
  br label %if.end876

if.else869:                                       ; preds = %sw.bb865
  %262 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call870 = call i32 @strcmp(ptr noundef %262, ptr noundef @.str.33) #17
  %tobool871 = icmp ne i32 %call870, 0
  br i1 %tobool871, label %if.else873, label %if.then872

if.then872:                                       ; preds = %if.else869
  store i8 0, ptr @novelsplicingp, align 1, !tbaa !14
  br label %if.end875

if.else873:                                       ; preds = %if.else869
  %263 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call874 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %263, ptr noundef @.str.185)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end875:                                        ; preds = %if.then872
  br label %if.end876

if.end876:                                        ; preds = %if.end875, %if.then868
  br label %sw.epilog

sw.bb877:                                         ; preds = %while.body
  %264 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call878 = call ptr @check_valid_int(ptr noundef %264)
  %call879 = call i32 @atoi(ptr noundef %call878) #17
  store i32 %call879, ptr @subopt_levels, align 4, !tbaa !12
  br label %sw.epilog

sw.bb880:                                         ; preds = %while.body
  %265 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call881 = call ptr @check_valid_float_or_int(ptr noundef %265)
  %call882 = call double @atof(ptr noundef %call881) #17
  store double %call882, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %266 = load double, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %cmp883 = fcmp ogt double %266, 1.000000e+00
  br i1 %cmp883, label %land.lhs.true885, label %if.end890

land.lhs.true885:                                 ; preds = %sw.bb880
  %267 = load double, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %268 = load double, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %269 = call double @llvm.rint.f64(double %268)
  %cmp886 = fcmp une double %267, %269
  br i1 %cmp886, label %if.then888, label %if.end890

if.then888:                                       ; preds = %land.lhs.true885
  %270 = load ptr, ptr @stderr, align 8, !tbaa !5
  %271 = load double, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %call889 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef @.str.186, double noundef %271)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end890:                                        ; preds = %land.lhs.true885, %sw.bb880
  br label %sw.epilog

sw.bb891:                                         ; preds = %while.body
  %272 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call892 = call ptr @check_valid_int(ptr noundef %272)
  %call893 = call i32 @atoi(ptr noundef %call892) #17
  store i32 %call893, ptr @indel_penalty_end, align 4, !tbaa !12
  store i32 %call893, ptr @indel_penalty_middle, align 4, !tbaa !12
  br label %sw.epilog

sw.bb894:                                         ; preds = %while.body
  %273 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call895 = call ptr @check_valid_float_or_int(ptr noundef %273)
  %call896 = call double @atof(ptr noundef %call895) #17
  store double %call896, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %274 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %cmp897 = fcmp ogt double %274, 1.000000e+00
  br i1 %cmp897, label %land.lhs.true899, label %if.end904

land.lhs.true899:                                 ; preds = %sw.bb894
  %275 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %276 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %277 = call double @llvm.rint.f64(double %276)
  %cmp900 = fcmp une double %275, %277
  br i1 %cmp900, label %if.then902, label %if.end904

if.then902:                                       ; preds = %land.lhs.true899
  %278 = load ptr, ptr @stderr, align 8, !tbaa !5
  %279 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %call903 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef @.str.187, double noundef %279)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end904:                                        ; preds = %land.lhs.true899, %sw.bb894
  br label %sw.epilog

sw.bb905:                                         ; preds = %while.body
  %280 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call906 = call ptr @check_valid_float_or_int(ptr noundef %280)
  %call907 = call double @atof(ptr noundef %call906) #17
  store double %call907, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %281 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %cmp908 = fcmp ogt double %281, 1.000000e+00
  br i1 %cmp908, label %land.lhs.true910, label %if.end915

land.lhs.true910:                                 ; preds = %sw.bb905
  %282 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %283 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %284 = call double @llvm.rint.f64(double %283)
  %cmp911 = fcmp une double %282, %284
  br i1 %cmp911, label %if.then913, label %if.end915

if.then913:                                       ; preds = %land.lhs.true910
  %285 = load ptr, ptr @stderr, align 8, !tbaa !5
  %286 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %call914 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %285, ptr noundef @.str.188, double noundef %286)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end915:                                        ; preds = %land.lhs.true910, %sw.bb905
  br label %sw.epilog

sw.bb916:                                         ; preds = %while.body
  %287 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call917 = call ptr @check_valid_int(ptr noundef %287)
  %call918 = call i32 @atoi(ptr noundef %call917) #17
  store i32 %call918, ptr @max_end_insertions, align 4, !tbaa !12
  br label %sw.epilog

sw.bb919:                                         ; preds = %while.body
  %288 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call920 = call ptr @check_valid_int(ptr noundef %288)
  %call921 = call i32 @atoi(ptr noundef %call920) #17
  store i32 %call921, ptr @max_end_deletions, align 4, !tbaa !12
  br label %sw.epilog

sw.bb922:                                         ; preds = %while.body
  %289 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call923 = call i64 @strtoul(ptr noundef %289, ptr noundef null, i32 noundef 10) #14
  %conv924 = trunc i64 %call923 to i32
  store i32 %conv924, ptr @shortsplicedist, align 4, !tbaa !12
  br label %sw.epilog

sw.bb925:                                         ; preds = %while.body
  %290 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %290, ptr @splicing_file, align 8, !tbaa !5
  store i8 1, ptr @knownsplicingp, align 1, !tbaa !14
  br label %sw.epilog

sw.bb926:                                         ; preds = %while.body
  %291 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %291, ptr @masked_suffix, align 8, !tbaa !5
  store i8 1, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  store i8 1, ptr @maskedp, align 1, !tbaa !14
  store i8 1, ptr @print_nsnpdiffs_p, align 1, !tbaa !14
  br label %sw.epilog

sw.bb927:                                         ; preds = %while.body
  %292 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call928 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef @.str.189)
  %293 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call929 = call ptr @check_valid_int(ptr noundef %293)
  %call930 = call i32 @atoi(ptr noundef %call929) #17
  store i32 %call930, ptr @distantsplicing_penalty, align 4, !tbaa !12
  br label %sw.epilog

sw.bb931:                                         ; preds = %while.body
  %294 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %294, ptr @user_snpsdir, align 8, !tbaa !5
  br label %sw.epilog

sw.bb932:                                         ; preds = %while.body
  %295 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %295, ptr @snps_root, align 8, !tbaa !5
  br label %sw.epilog

sw.bb933:                                         ; preds = %while.body
  %296 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call934 = call i32 @strcmp(ptr noundef %296, ptr noundef @.str.190) #17
  %tobool935 = icmp ne i32 %call934, 0
  br i1 %tobool935, label %if.else937, label %if.then936

if.then936:                                       ; preds = %sw.bb933
  store i32 0, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 0, ptr @positions_access, align 4, !tbaa !14
  store i32 0, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 0, ptr @locpositions_access, align 4, !tbaa !14
  store i32 0, ptr @genome_access, align 4, !tbaa !14
  br label %if.end964

if.else937:                                       ; preds = %sw.bb933
  %297 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call938 = call i32 @strcmp(ptr noundef %297, ptr noundef @.str.191) #17
  %tobool939 = icmp ne i32 %call938, 0
  br i1 %tobool939, label %if.else941, label %if.then940

if.then940:                                       ; preds = %if.else937
  store i32 0, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 0, ptr @positions_access, align 4, !tbaa !14
  store i32 0, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 0, ptr @locpositions_access, align 4, !tbaa !14
  store i32 0, ptr @genome_access, align 4, !tbaa !14
  br label %if.end963

if.else941:                                       ; preds = %if.else937
  %298 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call942 = call i32 @strcmp(ptr noundef %298, ptr noundef @.str.192) #17
  %tobool943 = icmp ne i32 %call942, 0
  br i1 %tobool943, label %if.else945, label %if.then944

if.then944:                                       ; preds = %if.else941
  store i32 0, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 0, ptr @positions_access, align 4, !tbaa !14
  store i32 0, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 0, ptr @locpositions_access, align 4, !tbaa !14
  store i32 2, ptr @genome_access, align 4, !tbaa !14
  br label %if.end962

if.else945:                                       ; preds = %if.else941
  %299 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call946 = call i32 @strcmp(ptr noundef %299, ptr noundef @.str.193) #17
  %tobool947 = icmp ne i32 %call946, 0
  br i1 %tobool947, label %if.else949, label %if.then948

if.then948:                                       ; preds = %if.else945
  store i32 0, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 2, ptr @positions_access, align 4, !tbaa !14
  store i32 0, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 2, ptr @locpositions_access, align 4, !tbaa !14
  store i32 2, ptr @genome_access, align 4, !tbaa !14
  br label %if.end961

if.else949:                                       ; preds = %if.else945
  %300 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call950 = call i32 @strcmp(ptr noundef %300, ptr noundef @.str.32) #17
  %tobool951 = icmp ne i32 %call950, 0
  br i1 %tobool951, label %if.else953, label %if.then952

if.then952:                                       ; preds = %if.else949
  store i32 0, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 2, ptr @positions_access, align 4, !tbaa !14
  store i32 0, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 2, ptr @locpositions_access, align 4, !tbaa !14
  store i32 1, ptr @genome_access, align 4, !tbaa !14
  br label %if.end960

if.else953:                                       ; preds = %if.else949
  %301 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call954 = call i32 @strcmp(ptr noundef %301, ptr noundef @.str.33) #17
  %tobool955 = icmp ne i32 %call954, 0
  br i1 %tobool955, label %if.else957, label %if.then956

if.then956:                                       ; preds = %if.else953
  store i32 0, ptr @offsetsstrm_access, align 4, !tbaa !14
  store i32 1, ptr @positions_access, align 4, !tbaa !14
  store i32 0, ptr @locoffsetsstrm_access, align 4, !tbaa !14
  store i32 1, ptr @locpositions_access, align 4, !tbaa !14
  store i32 1, ptr @genome_access, align 4, !tbaa !14
  br label %if.end959

if.else957:                                       ; preds = %if.else953
  %302 = load ptr, ptr @stderr, align 8, !tbaa !5
  %303 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call958 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef @.str.194, ptr noundef %303)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end959:                                        ; preds = %if.then956
  br label %if.end960

if.end960:                                        ; preds = %if.end959, %if.then952
  br label %if.end961

if.end961:                                        ; preds = %if.end960, %if.then948
  br label %if.end962

if.end962:                                        ; preds = %if.end961, %if.then944
  br label %if.end963

if.end963:                                        ; preds = %if.end962, %if.then940
  br label %if.end964

if.end964:                                        ; preds = %if.end963, %if.then936
  br label %sw.epilog

sw.bb965:                                         ; preds = %while.body
  %304 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call966 = call ptr @check_valid_int(ptr noundef %304)
  %call967 = call i32 @atoi(ptr noundef %call966) #17
  store i32 %call967, ptr @nthreads, align 4, !tbaa !12
  br label %sw.epilog

sw.bb968:                                         ; preds = %while.body
  %305 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call969 = call i32 @strcmp(ptr noundef %305, ptr noundef @.str.51) #17
  %tobool970 = icmp ne i32 %call969, 0
  br i1 %tobool970, label %if.else972, label %if.then971

if.then971:                                       ; preds = %sw.bb968
  store i32 0, ptr @output_type, align 4, !tbaa !14
  br label %if.end984

if.else972:                                       ; preds = %sw.bb968
  %306 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call973 = call i32 @strcmp(ptr noundef %306, ptr noundef @.str.195) #17
  %tobool974 = icmp ne i32 %call973, 0
  br i1 %tobool974, label %if.else976, label %if.then975

if.then975:                                       ; preds = %if.else972
  store i32 1, ptr @output_type, align 4, !tbaa !14
  br label %if.end983

if.else976:                                       ; preds = %if.else972
  %307 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call977 = call i32 @strcmp(ptr noundef %307, ptr noundef @.str.196) #17
  %tobool978 = icmp ne i32 %call977, 0
  br i1 %tobool978, label %if.else980, label %if.then979

if.then979:                                       ; preds = %if.else976
  store i32 2, ptr @output_type, align 4, !tbaa !14
  br label %if.end982

if.else980:                                       ; preds = %if.else976
  %308 = load ptr, ptr @stderr, align 8, !tbaa !5
  %309 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call981 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef @.str.197, ptr noundef %309)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end982:                                        ; preds = %if.then979
  br label %if.end983

if.end983:                                        ; preds = %if.end982, %if.then975
  br label %if.end984

if.end984:                                        ; preds = %if.end983, %if.then971
  br label %sw.epilog

sw.bb985:                                         ; preds = %while.body
  %310 = load i8, ptr @user_quality_shift, align 1, !tbaa !14
  %conv986 = zext i8 %310 to i32
  %cmp987 = icmp eq i32 %conv986, 1
  br i1 %cmp987, label %if.then989, label %if.else991

if.then989:                                       ; preds = %sw.bb985
  %311 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call990 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef @.str.155)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else991:                                       ; preds = %sw.bb985
  %312 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call992 = call ptr @check_valid_int(ptr noundef %312)
  %call993 = call i32 @atoi(ptr noundef %call992) #17
  store i32 %call993, ptr @quality_shift, align 4, !tbaa !12
  store i8 1, ptr @user_quality_shift, align 1, !tbaa !14
  br label %if.end994

if.end994:                                        ; preds = %if.else991
  br label %sw.epilog

sw.bb995:                                         ; preds = %while.body
  %313 = load i8, ptr @user_quality_score_adj, align 1, !tbaa !14
  %conv996 = zext i8 %313 to i32
  %cmp997 = icmp eq i32 %conv996, 1
  br i1 %cmp997, label %if.then999, label %if.else1001

if.then999:                                       ; preds = %sw.bb995
  %314 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1000 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %314, ptr noundef @.str.154)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else1001:                                      ; preds = %sw.bb995
  %315 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call1002 = call ptr @check_valid_int(ptr noundef %315)
  %call1003 = call i32 @atoi(ptr noundef %call1002) #17
  call void @MAPQ_init(i32 noundef %call1003)
  store i8 1, ptr @user_quality_score_adj, align 1, !tbaa !14
  br label %if.end1004

if.end1004:                                       ; preds = %if.else1001
  br label %sw.epilog

sw.bb1005:                                        ; preds = %while.body
  store i8 0, ptr @exception_raise_p, align 1, !tbaa !14
  br label %sw.epilog

sw.bb1006:                                        ; preds = %while.body
  %316 = load ptr, ptr @optarg, align 8, !tbaa !5
  %call1007 = call ptr @check_valid_int(ptr noundef %316)
  %call1008 = call i32 @atoi(ptr noundef %call1007) #17
  store i32 %call1008, ptr @maxpaths_report, align 4, !tbaa !12
  br label %sw.epilog

sw.bb1009:                                        ; preds = %while.body
  store i8 1, ptr @quiet_if_excessive_p, align 1, !tbaa !14
  br label %sw.epilog

sw.bb1010:                                        ; preds = %while.body
  store i8 1, ptr @orderedp, align 1, !tbaa !14
  br label %sw.epilog

sw.bb1011:                                        ; preds = %while.body
  %317 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1012 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef @.str.198)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %while.body
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1010, %sw.bb1009, %sw.bb1006, %sw.bb1005, %if.end1004, %if.end994, %if.end984, %sw.bb965, %if.end964, %sw.bb932, %sw.bb931, %sw.bb927, %sw.bb926, %sw.bb925, %sw.bb922, %sw.bb919, %sw.bb916, %if.end915, %if.end904, %sw.bb891, %if.end890, %sw.bb877, %if.end876, %if.end864, %sw.bb852, %sw.bb851, %if.end850, %sw.bb842, %sw.bb841, %sw.bb840, %sw.bb839, %if.end838, %if.then535, %if.then110
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  %318 = load ptr, ptr @genome_dbroot, align 8, !tbaa !5
  %cmp1013 = icmp eq ptr %318, null
  br i1 %cmp1013, label %if.then1015, label %if.end1017

if.then1015:                                      ; preds = %while.end
  %319 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1016 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %319, ptr noundef @.str.199)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end1017:                                       ; preds = %while.end
  %320 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %conv1018 = zext i8 %320 to i32
  %cmp1019 = icmp eq i32 %conv1018, 1
  br i1 %cmp1019, label %if.then1021, label %if.else1022

if.then1021:                                      ; preds = %if.end1017
  store i8 0, ptr @chop_poly_at_first_p, align 1, !tbaa !14
  store i8 1, ptr @chop_poly_at_second_p, align 1, !tbaa !14
  br label %if.end1023

if.else1022:                                      ; preds = %if.end1017
  store i8 1, ptr @chop_poly_at_first_p, align 1, !tbaa !14
  store i8 1, ptr @chop_poly_at_second_p, align 1, !tbaa !14
  br label %if.end1023

if.end1023:                                       ; preds = %if.else1022, %if.then1021
  %321 = load ptr, ptr @whitelist_file, align 8, !tbaa !5
  %cmp1024 = icmp ne ptr %321, null
  br i1 %cmp1024, label %land.lhs.true1026, label %if.end1032

land.lhs.true1026:                                ; preds = %if.end1023
  %322 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %conv1027 = zext i8 %322 to i32
  %cmp1028 = icmp eq i32 %conv1027, 0
  br i1 %cmp1028, label %if.then1030, label %if.end1032

if.then1030:                                      ; preds = %land.lhs.true1026
  %323 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1031 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef @.str.200)
  store i8 1, ptr @single_cell_p, align 1, !tbaa !14
  store i8 0, ptr @invert_first_p, align 1, !tbaa !14
  store i8 1, ptr @invert_second_p, align 1, !tbaa !14
  store i8 0, ptr @keep_chastity_p, align 1, !tbaa !14
  br label %if.end1032

if.end1032:                                       ; preds = %if.then1030, %land.lhs.true1026, %if.end1023
  %324 = load i32, ptr @acc_fieldi_end, align 4, !tbaa !12
  %325 = load i32, ptr @acc_fieldi_start, align 4, !tbaa !12
  %cmp1033 = icmp slt i32 %324, %325
  br i1 %cmp1033, label %if.then1035, label %if.end1037

if.then1035:                                      ; preds = %if.end1032
  %326 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1036 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef @.str.201)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end1037:                                       ; preds = %if.end1032
  %327 = load i8, ptr @clip_overlap_p, align 1, !tbaa !14
  %conv1038 = zext i8 %327 to i32
  %cmp1039 = icmp eq i32 %conv1038, 1
  br i1 %cmp1039, label %land.lhs.true1041, label %if.end1047

land.lhs.true1041:                                ; preds = %if.end1037
  %328 = load i8, ptr @merge_overlap_p, align 1, !tbaa !14
  %conv1042 = zext i8 %328 to i32
  %cmp1043 = icmp eq i32 %conv1042, 1
  br i1 %cmp1043, label %if.then1045, label %if.end1047

if.then1045:                                      ; preds = %land.lhs.true1041
  %329 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1046 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef @.str.202)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end1047:                                       ; preds = %land.lhs.true1041, %if.end1037
  %330 = load ptr, ptr @transcriptome_dbroot, align 8, !tbaa !5
  %cmp1048 = icmp eq ptr %330, null
  br i1 %cmp1048, label %if.then1050, label %if.end1051

if.then1050:                                      ; preds = %if.end1047
  store i8 0, ptr @transcriptome_align_p, align 1, !tbaa !14
  br label %if.end1051

if.end1051:                                       ; preds = %if.then1050, %if.end1047
  %331 = load ptr, ptr @transcriptome_dbroot, align 8, !tbaa !5
  %cmp1052 = icmp ne ptr %331, null
  br i1 %cmp1052, label %if.then1054, label %if.else1073

if.then1054:                                      ; preds = %if.end1051
  %332 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %conv1055 = zext i8 %332 to i32
  %cmp1056 = icmp eq i32 %conv1055, 0
  br i1 %cmp1056, label %if.then1058, label %if.else1060

if.then1058:                                      ; preds = %if.then1054
  %333 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1059 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %333, ptr noundef @.str.203)
  store i8 1, ptr @novelsplicingp, align 1, !tbaa !14
  br label %if.end1062

if.else1060:                                      ; preds = %if.then1054
  %334 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1061 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %334, ptr noundef @.str.204)
  br label %if.end1062

if.end1062:                                       ; preds = %if.else1060, %if.then1058
  %335 = load i8, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  %conv1063 = zext i8 %335 to i32
  %cmp1064 = icmp eq i32 %conv1063, 0
  br i1 %cmp1064, label %if.then1066, label %if.end1067

if.then1066:                                      ; preds = %if.end1062
  store i8 1, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end1067

if.end1067:                                       ; preds = %if.then1066, %if.end1062
  %336 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %336, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %337 = load i32, ptr @pairmax_rna, align 4, !tbaa !12
  store i32 %337, ptr @pairmax_linear, align 4, !tbaa !12
  %338 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %338, ptr @pairmax_circular, align 4, !tbaa !12
  %339 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  store i32 %339, ptr @shortsplicedist_known, align 4, !tbaa !12
  %340 = load i8, ptr @user_localdb_p, align 1, !tbaa !14
  %conv1068 = zext i8 %340 to i32
  %cmp1069 = icmp eq i32 %conv1068, 0
  br i1 %cmp1069, label %if.then1071, label %if.end1072

if.then1071:                                      ; preds = %if.end1067
  store i8 1, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end1072

if.end1072:                                       ; preds = %if.then1071, %if.end1067
  br label %if.end1140

if.else1073:                                      ; preds = %if.end1051
  %341 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %conv1074 = zext i8 %341 to i32
  %cmp1075 = icmp eq i32 %conv1074, 1
  br i1 %cmp1075, label %land.lhs.true1077, label %if.else1093

land.lhs.true1077:                                ; preds = %if.else1073
  %342 = load i8, ptr @knownsplicingp, align 1, !tbaa !14
  %conv1078 = zext i8 %342 to i32
  %cmp1079 = icmp eq i32 %conv1078, 1
  br i1 %cmp1079, label %if.then1081, label %if.else1093

if.then1081:                                      ; preds = %land.lhs.true1077
  %343 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1082 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef @.str.205)
  %344 = load i8, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  %conv1083 = zext i8 %344 to i32
  %cmp1084 = icmp eq i32 %conv1083, 0
  br i1 %cmp1084, label %if.then1086, label %if.end1087

if.then1086:                                      ; preds = %if.then1081
  store i8 1, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end1087

if.end1087:                                       ; preds = %if.then1086, %if.then1081
  store i32 0, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %345 = load i32, ptr @pairmax_rna, align 4, !tbaa !12
  store i32 %345, ptr @pairmax_linear, align 4, !tbaa !12
  %346 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %346, ptr @pairmax_circular, align 4, !tbaa !12
  %347 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  store i32 %347, ptr @shortsplicedist_known, align 4, !tbaa !12
  %348 = load i8, ptr @user_localdb_p, align 1, !tbaa !14
  %conv1088 = zext i8 %348 to i32
  %cmp1089 = icmp eq i32 %conv1088, 0
  br i1 %cmp1089, label %if.then1091, label %if.end1092

if.then1091:                                      ; preds = %if.end1087
  %349 = load i8, ptr @default_localdb_p, align 1, !tbaa !14
  store i8 %349, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end1092

if.end1092:                                       ; preds = %if.then1091, %if.end1087
  br label %if.end1139

if.else1093:                                      ; preds = %land.lhs.true1077, %if.else1073
  %350 = load i8, ptr @knownsplicingp, align 1, !tbaa !14
  %conv1094 = zext i8 %350 to i32
  %cmp1095 = icmp eq i32 %conv1094, 1
  br i1 %cmp1095, label %if.then1097, label %if.else1109

if.then1097:                                      ; preds = %if.else1093
  %351 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1098 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef @.str.206)
  %352 = load i8, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  %conv1099 = zext i8 %352 to i32
  %cmp1100 = icmp eq i32 %conv1099, 0
  br i1 %cmp1100, label %if.then1102, label %if.end1103

if.then1102:                                      ; preds = %if.then1097
  store i8 0, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end1103

if.end1103:                                       ; preds = %if.then1102, %if.then1097
  store i32 0, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %353 = load i32, ptr @pairmax_rna, align 4, !tbaa !12
  store i32 %353, ptr @pairmax_linear, align 4, !tbaa !12
  %354 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %354, ptr @pairmax_circular, align 4, !tbaa !12
  %355 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  store i32 %355, ptr @shortsplicedist_known, align 4, !tbaa !12
  %356 = load i8, ptr @user_localdb_p, align 1, !tbaa !14
  %conv1104 = zext i8 %356 to i32
  %cmp1105 = icmp eq i32 %conv1104, 0
  br i1 %cmp1105, label %if.then1107, label %if.end1108

if.then1107:                                      ; preds = %if.end1103
  %357 = load i8, ptr @default_localdb_p, align 1, !tbaa !14
  store i8 %357, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end1108

if.end1108:                                       ; preds = %if.then1107, %if.end1103
  br label %if.end1138

if.else1109:                                      ; preds = %if.else1093
  %358 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %conv1110 = zext i8 %358 to i32
  %cmp1111 = icmp eq i32 %conv1110, 1
  br i1 %cmp1111, label %if.then1113, label %if.else1125

if.then1113:                                      ; preds = %if.else1109
  %359 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %359, ptr noundef @.str.207)
  %360 = load i8, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  %conv1115 = zext i8 %360 to i32
  %cmp1116 = icmp eq i32 %conv1115, 0
  br i1 %cmp1116, label %if.then1118, label %if.end1119

if.then1118:                                      ; preds = %if.then1113
  store i8 1, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end1119

if.end1119:                                       ; preds = %if.then1118, %if.then1113
  store i32 0, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %361 = load i32, ptr @pairmax_rna, align 4, !tbaa !12
  store i32 %361, ptr @pairmax_linear, align 4, !tbaa !12
  %362 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %362, ptr @pairmax_circular, align 4, !tbaa !12
  store i32 0, ptr @shortsplicedist_known, align 4, !tbaa !12
  %363 = load i8, ptr @user_localdb_p, align 1, !tbaa !14
  %conv1120 = zext i8 %363 to i32
  %cmp1121 = icmp eq i32 %conv1120, 0
  br i1 %cmp1121, label %if.then1123, label %if.end1124

if.then1123:                                      ; preds = %if.end1119
  %364 = load i8, ptr @default_localdb_p, align 1, !tbaa !14
  store i8 %364, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end1124

if.end1124:                                       ; preds = %if.then1123, %if.end1119
  br label %if.end1137

if.else1125:                                      ; preds = %if.else1109
  %365 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %365, ptr noundef @.str.208)
  %366 = load i8, ptr @user_find_dna_chimeras_p, align 1, !tbaa !14
  %conv1127 = zext i8 %366 to i32
  %cmp1128 = icmp eq i32 %conv1127, 0
  br i1 %cmp1128, label %if.then1130, label %if.end1131

if.then1130:                                      ; preds = %if.else1125
  store i8 1, ptr @find_dna_chimeras_p, align 1, !tbaa !14
  br label %if.end1131

if.end1131:                                       ; preds = %if.then1130, %if.else1125
  store i32 0, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %367 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %367, ptr @pairmax_linear, align 4, !tbaa !12
  %368 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  store i32 %368, ptr @pairmax_circular, align 4, !tbaa !12
  store i32 0, ptr @shortsplicedist_known, align 4, !tbaa !12
  store i32 0, ptr @shortsplicedist, align 4, !tbaa !12
  store i32 0, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %369 = load i8, ptr @user_localdb_p, align 1, !tbaa !14
  %conv1132 = zext i8 %369 to i32
  %cmp1133 = icmp eq i32 %conv1132, 0
  br i1 %cmp1133, label %if.then1135, label %if.end1136

if.then1135:                                      ; preds = %if.end1131
  store i8 1, ptr @use_localdb_p, align 1, !tbaa !14
  br label %if.end1136

if.end1136:                                       ; preds = %if.then1135, %if.end1131
  br label %if.end1137

if.end1137:                                       ; preds = %if.end1136, %if.end1124
  br label %if.end1138

if.end1138:                                       ; preds = %if.end1137, %if.end1108
  br label %if.end1139

if.end1139:                                       ; preds = %if.end1138, %if.end1092
  br label %if.end1140

if.end1140:                                       ; preds = %if.end1139, %if.end1072
  %370 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %371 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %cmp1141 = icmp ugt i32 %370, %371
  br i1 %cmp1141, label %if.then1143, label %if.end1145

if.then1143:                                      ; preds = %if.end1140
  %372 = load ptr, ptr @stderr, align 8, !tbaa !5
  %373 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %374 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %375 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %call1144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %372, ptr noundef @.str.209, i32 noundef %373, i32 noundef %374, i32 noundef %375)
  %376 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  store i32 %376, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  br label %if.end1145

if.end1145:                                       ; preds = %if.then1143, %if.end1140
  %377 = load i32, ptr @distantsplicing_penalty, align 4, !tbaa !12
  %378 = load i32, ptr @localsplicing_penalty, align 4, !tbaa !12
  %cmp1146 = icmp slt i32 %377, %378
  br i1 %cmp1146, label %if.then1148, label %if.end1150

if.then1148:                                      ; preds = %if.end1145
  %379 = load ptr, ptr @stderr, align 8, !tbaa !5
  %380 = load i32, ptr @distantsplicing_penalty, align 4, !tbaa !12
  %381 = load i32, ptr @localsplicing_penalty, align 4, !tbaa !12
  %call1149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %379, ptr noundef @.str.210, i32 noundef %380, i32 noundef %381)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end1150:                                       ; preds = %if.end1145
  %382 = load i8, ptr @split_simple_p, align 1, !tbaa !14
  %conv1151 = zext i8 %382 to i32
  %cmp1152 = icmp eq i32 %conv1151, 1
  br i1 %cmp1152, label %land.lhs.true1154, label %if.end1159

land.lhs.true1154:                                ; preds = %if.end1150
  %383 = load ptr, ptr @split_output_root, align 8, !tbaa !5
  %cmp1155 = icmp eq ptr %383, null
  br i1 %cmp1155, label %if.then1157, label %if.end1159

if.then1157:                                      ; preds = %land.lhs.true1154
  %384 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef @.str.211)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end1159:                                       ; preds = %land.lhs.true1154, %if.end1150
  %385 = load i32, ptr @sam_headers_batch, align 4, !tbaa !12
  %cmp1160 = icmp sge i32 %385, 0
  br i1 %cmp1160, label %if.then1162, label %if.end1168

if.then1162:                                      ; preds = %if.end1159
  %386 = load i32, ptr @part_modulus, align 4, !tbaa !12
  %387 = load i32, ptr @sam_headers_batch, align 4, !tbaa !12
  %cmp1163 = icmp eq i32 %386, %387
  br i1 %cmp1163, label %if.then1165, label %if.else1166

if.then1165:                                      ; preds = %if.then1162
  store i8 1, ptr @sam_headers_p, align 1, !tbaa !14
  br label %if.end1167

if.else1166:                                      ; preds = %if.then1162
  store i8 0, ptr @sam_headers_p, align 1, !tbaa !14
  br label %if.end1167

if.end1167:                                       ; preds = %if.else1166, %if.then1165
  br label %if.end1168

if.end1168:                                       ; preds = %if.end1167, %if.end1159
  %388 = load ptr, ptr @sam_read_group_id, align 8, !tbaa !5
  %cmp1169 = icmp eq ptr %388, null
  br i1 %cmp1169, label %land.lhs.true1171, label %if.else1175

land.lhs.true1171:                                ; preds = %if.end1168
  %389 = load ptr, ptr @sam_read_group_name, align 8, !tbaa !5
  %cmp1172 = icmp ne ptr %389, null
  br i1 %cmp1172, label %if.then1174, label %if.else1175

if.then1174:                                      ; preds = %land.lhs.true1171
  %390 = load ptr, ptr @sam_read_group_name, align 8, !tbaa !5
  store ptr %390, ptr @sam_read_group_id, align 8, !tbaa !5
  br label %if.end1183

if.else1175:                                      ; preds = %land.lhs.true1171, %if.end1168
  %391 = load ptr, ptr @sam_read_group_id, align 8, !tbaa !5
  %cmp1176 = icmp ne ptr %391, null
  br i1 %cmp1176, label %land.lhs.true1178, label %if.end1182

land.lhs.true1178:                                ; preds = %if.else1175
  %392 = load ptr, ptr @sam_read_group_name, align 8, !tbaa !5
  %cmp1179 = icmp eq ptr %392, null
  br i1 %cmp1179, label %if.then1181, label %if.end1182

if.then1181:                                      ; preds = %land.lhs.true1178
  %393 = load ptr, ptr @sam_read_group_id, align 8, !tbaa !5
  store ptr %393, ptr @sam_read_group_name, align 8, !tbaa !5
  br label %if.end1182

if.end1182:                                       ; preds = %if.then1181, %land.lhs.true1178, %if.else1175
  br label %if.end1183

if.end1183:                                       ; preds = %if.end1182, %if.then1174
  %394 = load i8, ptr @chop_primers_p, align 1, !tbaa !14
  %conv1184 = zext i8 %394 to i32
  %cmp1185 = icmp eq i32 %conv1184, 1
  br i1 %cmp1185, label %if.then1187, label %if.end1199

if.then1187:                                      ; preds = %if.end1183
  %395 = load i8, ptr @invert_first_p, align 1, !tbaa !14
  %conv1188 = zext i8 %395 to i32
  %cmp1189 = icmp eq i32 %conv1188, 0
  br i1 %cmp1189, label %land.lhs.true1191, label %if.else1196

land.lhs.true1191:                                ; preds = %if.then1187
  %396 = load i8, ptr @invert_second_p, align 1, !tbaa !14
  %conv1192 = zext i8 %396 to i32
  %cmp1193 = icmp eq i32 %conv1192, 1
  br i1 %cmp1193, label %if.then1195, label %if.else1196

if.then1195:                                      ; preds = %land.lhs.true1191
  br label %if.end1198

if.else1196:                                      ; preds = %land.lhs.true1191, %if.then1187
  %397 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %397, ptr noundef @.str.212)
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end1198:                                       ; preds = %if.then1195
  br label %if.end1199

if.end1199:                                       ; preds = %if.end1198, %if.end1183
  %398 = load i32, ptr @maxpaths_search, align 4, !tbaa !12
  %399 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %cmp1200 = icmp slt i32 %398, %399
  br i1 %cmp1200, label %if.then1202, label %if.end1204

if.then1202:                                      ; preds = %if.end1199
  %400 = load ptr, ptr @stderr, align 8, !tbaa !5
  %401 = load i32, ptr @maxpaths_search, align 4, !tbaa !12
  %402 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %403 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %call1203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef @.str.213, i32 noundef %401, i32 noundef %402, i32 noundef %403)
  %404 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  store i32 %404, ptr @maxpaths_search, align 4, !tbaa !12
  br label %if.end1204

if.end1204:                                       ; preds = %if.then1202, %if.end1199
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1204, %if.else1196, %if.then1157, %if.then1148, %if.then1045, %if.then1035, %if.then1015, %sw.default, %sw.bb1011, %if.then999, %if.then989, %if.else980, %if.else957, %if.then913, %if.then902, %if.then888, %if.else873, %if.else861, %if.then848, %if.else735, %if.then711, %if.then700, %if.else667, %if.else630, %if.then620, %if.then614, %if.else577, %if.else494, %if.else479, %if.then434, %if.else396, %if.else363, %if.else307, %if.then285, %if.then273, %if.else144, %if.else76, %if.else60, %if.else42, %if.then16, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %argstart) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %long_name) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %long_option_index) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt) #14
  %405 = load i32, ptr %retval, align 4
  ret i32 %405
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

declare void @Except_inactivate(...) #4

; Function Attrs: nounwind uwtable
define internal void @signal_handler(i32 noundef %sig) #1 {
entry:
  %sig.addr = alloca i32, align 4
  %request = alloca ptr, align 8
  %queryseq1 = alloca ptr, align 8
  %queryseq2 = alloca ptr, align 8
  store i32 %sig, ptr %sig.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq2) #14
  %0 = load i32, ptr %sig.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %0, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #14
  ret void

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %sig.addr, align 4, !tbaa !12
  switch i32 %1, label %sw.epilog [
    i32 6, label %sw.bb
    i32 8, label %sw.bb1
    i32 1, label %sw.bb3
    i32 4, label %sw.bb5
    i32 2, label %sw.bb12
    i32 13, label %sw.bb14
    i32 3, label %sw.bb16
    i32 11, label %sw.bb18
    i32 31, label %sw.bb20
    i32 15, label %sw.bb22
    i32 5, label %sw.bb24
    i32 24, label %sw.bb26
    i32 25, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.352)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.353)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.354)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.355)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.356)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.357)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.358)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.359)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.360)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.361)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.362)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.363)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.364)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.365)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.366)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.367)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.368)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.369)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  call void (...) @Access_emergency_cleanup()
  %20 = load i32, ptr @global_request_key, align 4, !tbaa !12
  %call30 = call ptr @pthread_getspecific(i32 noundef %20) #14
  store ptr %call30, ptr %request, align 8, !tbaa !5
  %21 = load ptr, ptr %request, align 8, !tbaa !5
  %cmp31 = icmp eq ptr %21, null
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %sw.epilog
  br label %if.end48

if.else:                                          ; preds = %sw.epilog
  %22 = load ptr, ptr %request, align 8, !tbaa !5
  %call33 = call ptr @Request_queryseq1(ptr noundef %22)
  store ptr %call33, ptr %queryseq1, align 8, !tbaa !5
  %23 = load ptr, ptr %request, align 8, !tbaa !5
  %call34 = call ptr @Request_queryseq2(ptr noundef %23)
  store ptr %call34, ptr %queryseq2, align 8, !tbaa !5
  %24 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %cmp35 = icmp eq ptr %24, null
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.370)
  br label %if.end47

if.else38:                                        ; preds = %if.else
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.371)
  %27 = load ptr, ptr @stderr, align 8, !tbaa !5
  %28 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call40 = call ptr @Shortread_accession(ptr noundef %28)
  %29 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call41 = call i32 @Shortread_fulllength(ptr noundef %29)
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.372, ptr noundef %call40, i32 noundef %call41)
  %30 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %cmp43 = icmp eq ptr %30, null
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else38
  %31 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %32 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  call void @Shortread_stderr_query_singleend_fasta(ptr noundef %31, ptr noundef %32)
  br label %if.end46

if.else45:                                        ; preds = %if.else38
  %33 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %34 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %35 = load i8, ptr @invert_first_p, align 1, !tbaa !14
  %36 = load i8, ptr @invert_second_p, align 1, !tbaa !14
  call void @Shortread_stderr_query_pairedend_fasta(ptr noundef %33, ptr noundef %34, i8 noundef zeroext %35, i8 noundef zeroext %36)
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then36
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then32
  call void @exit(i32 noundef 9) #15
  unreachable
}

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #5

declare void @Single_cell_compute_priors(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal zeroext i8 @open_input_streams_parser(ptr noundef %nextchar, ptr noundef %nchars1, ptr noundef %nchars2, ptr noundef %paired_end_p, ptr noundef %files, ptr noundef %nfiles, ptr noundef %input, ptr noundef %input2, ptr noundef %gzipped, ptr noundef %gzipped2, ptr noundef %bzipped, ptr noundef %bzipped2, ptr noundef %read_files_command, i8 noundef zeroext %gunzip_p, i8 noundef zeroext %bunzip2_p, i8 noundef zeroext %interleavedp, i32 noundef %argc, ptr noundef %argv) #1 {
entry:
  %retval = alloca i8, align 1
  %nextchar.addr = alloca ptr, align 8
  %nchars1.addr = alloca ptr, align 8
  %nchars2.addr = alloca ptr, align 8
  %paired_end_p.addr = alloca ptr, align 8
  %files.addr = alloca ptr, align 8
  %nfiles.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %input2.addr = alloca ptr, align 8
  %gzipped.addr = alloca ptr, align 8
  %gzipped2.addr = alloca ptr, align 8
  %bzipped.addr = alloca ptr, align 8
  %bzipped2.addr = alloca ptr, align 8
  %read_files_command.addr = alloca ptr, align 8
  %gunzip_p.addr = alloca i8, align 1
  %bunzip2_p.addr = alloca i8, align 1
  %interleavedp.addr = alloca i8, align 1
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %fastq_format_p = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %nchars1, ptr %nchars1.addr, align 8, !tbaa !5
  store ptr %nchars2, ptr %nchars2.addr, align 8, !tbaa !5
  store ptr %paired_end_p, ptr %paired_end_p.addr, align 8, !tbaa !5
  store ptr %files, ptr %files.addr, align 8, !tbaa !5
  store ptr %nfiles, ptr %nfiles.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store ptr %input2, ptr %input2.addr, align 8, !tbaa !5
  store ptr %gzipped, ptr %gzipped.addr, align 8, !tbaa !5
  store ptr %gzipped2, ptr %gzipped2.addr, align 8, !tbaa !5
  store ptr %bzipped, ptr %bzipped.addr, align 8, !tbaa !5
  store ptr %bzipped2, ptr %bzipped2.addr, align 8, !tbaa !5
  store ptr %read_files_command, ptr %read_files_command.addr, align 8, !tbaa !5
  store i8 %gunzip_p, ptr %gunzip_p.addr, align 1, !tbaa !14
  store i8 %bunzip2_p, ptr %bunzip2_p.addr, align 1, !tbaa !14
  store i8 %interleavedp, ptr %interleavedp.addr, align 1, !tbaa !14
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !12
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %fastq_format_p) #14
  store i8 0, ptr %fastq_format_p, align 1, !tbaa !14
  %0 = load ptr, ptr %input2.addr, align 8, !tbaa !5
  store ptr null, ptr %0, align 8, !tbaa !5
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr null, ptr %1, align 8, !tbaa !5
  %2 = load ptr, ptr %paired_end_p.addr, align 8, !tbaa !5
  store i8 1, ptr %2, align 1, !tbaa !14
  %3 = load ptr, ptr %gzipped2.addr, align 8, !tbaa !5
  store ptr null, ptr %3, align 8, !tbaa !5
  %4 = load ptr, ptr %gzipped.addr, align 8, !tbaa !5
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = load ptr, ptr %bzipped2.addr, align 8, !tbaa !5
  store ptr null, ptr %5, align 8, !tbaa !5
  %6 = load ptr, ptr %bzipped.addr, align 8, !tbaa !5
  store ptr null, ptr %6, align 8, !tbaa !5
  %7 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %conv2 = zext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr @stdin, align 8, !tbaa !5
  %10 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %9, ptr %10, align 8, !tbaa !5
  %11 = load ptr, ptr %files.addr, align 8, !tbaa !5
  store ptr null, ptr %11, align 8, !tbaa !5
  %12 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  store i32 0, ptr %12, align 4, !tbaa !12
  %13 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %13, align 4, !tbaa !12
  %14 = load ptr, ptr %paired_end_p.addr, align 8, !tbaa !5
  store i8 0, ptr %14, align 1, !tbaa !14
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %15 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.else
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.373)
  %17 = load ptr, ptr @stdin, align 8, !tbaa !5
  %18 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %17, ptr %18, align 8, !tbaa !5
  %19 = load ptr, ptr %files.addr, align 8, !tbaa !5
  store ptr null, ptr %19, align 8, !tbaa !5
  %20 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  store i32 0, ptr %20, align 4, !tbaa !12
  %21 = load i8, ptr %interleavedp.addr, align 1, !tbaa !14
  %conv8 = zext i8 %21 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.then7
  %22 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 0, ptr %22, align 4, !tbaa !12
  br label %if.end

if.else12:                                        ; preds = %if.then7
  %23 = load ptr, ptr %nchars1.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %call13 = call i32 @Shortread_input_init(ptr noundef %23, ptr noundef %25)
  %26 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call13, ptr %26, align 4, !tbaa !12
  %27 = load ptr, ptr %paired_end_p.addr, align 8, !tbaa !5
  store i8 0, ptr %27, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end74

if.else14:                                        ; preds = %if.else
  %28 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %files.addr, align 8, !tbaa !5
  store ptr %28, ptr %29, align 8, !tbaa !5
  %30 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %31 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  store i32 %30, ptr %31, align 4, !tbaa !12
  %32 = load i8, ptr %gunzip_p.addr, align 1, !tbaa !14
  %conv15 = zext i8 %32 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.else14
  %33 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds ptr, ptr %34, i64 0
  %35 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call19 = call ptr @gzopen(ptr noundef %35, ptr noundef @.str.374)
  %36 = load ptr, ptr %gzipped.addr, align 8, !tbaa !5
  store ptr %call19, ptr %36, align 8, !tbaa !5
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %38 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds ptr, ptr %39, i64 0
  %40 = load ptr, ptr %arrayidx23, align 8, !tbaa !5
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.375, ptr noundef %40)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else25:                                        ; preds = %if.then18
  %41 = load ptr, ptr %gzipped.addr, align 8, !tbaa !5
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %call26 = call i32 @gzbuffer(ptr noundef %42, i32 noundef 131072)
  %43 = load i8, ptr %interleavedp.addr, align 1, !tbaa !14
  %conv27 = zext i8 %43 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else25
  %44 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 0, ptr %44, align 4, !tbaa !12
  br label %if.end33

if.else31:                                        ; preds = %if.else25
  %45 = load ptr, ptr %gzipped.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %call32 = call i32 @Shortread_input_init_gzip(ptr noundef %46)
  %47 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call32, ptr %47, align 4, !tbaa !12
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  br label %if.end73

if.else35:                                        ; preds = %if.else14
  %48 = load i8, ptr %bunzip2_p.addr, align 1, !tbaa !14
  %conv36 = zext i8 %48 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %if.then39, label %if.else56

if.then39:                                        ; preds = %if.else35
  %49 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds ptr, ptr %50, i64 0
  %51 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  %call41 = call ptr @Bzip2_new(ptr noundef %51)
  %52 = load ptr, ptr %bzipped.addr, align 8, !tbaa !5
  store ptr %call41, ptr %52, align 8, !tbaa !5
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then44, label %if.else47

if.then44:                                        ; preds = %if.then39
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %54 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds ptr, ptr %55, i64 0
  %56 = load ptr, ptr %arrayidx45, align 8, !tbaa !5
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.376, ptr noundef %56)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else47:                                        ; preds = %if.then39
  %57 = load i8, ptr %interleavedp.addr, align 1, !tbaa !14
  %conv48 = zext i8 %57 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else47
  %58 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 0, ptr %58, align 4, !tbaa !12
  br label %if.end54

if.else52:                                        ; preds = %if.else47
  %59 = load ptr, ptr %bzipped.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %call53 = call i32 @Shortread_input_init_bzip2(ptr noundef %60)
  %61 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call53, ptr %61, align 4, !tbaa !12
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then51
  br label %if.end55

if.end55:                                         ; preds = %if.end54
  br label %if.end72

if.else56:                                        ; preds = %if.else35
  %62 = load ptr, ptr %read_files_command.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds ptr, ptr %64, i64 0
  %65 = load ptr, ptr %arrayidx57, align 8, !tbaa !5
  %call58 = call ptr @Fopen_read_text(ptr noundef %62, ptr noundef %65)
  %66 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %call58, ptr %66, align 8, !tbaa !5
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else56
  %67 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.377)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else63:                                        ; preds = %if.else56
  %68 = load i8, ptr %interleavedp.addr, align 1, !tbaa !14
  %conv64 = zext i8 %68 to i32
  %cmp65 = icmp eq i32 %conv64, 1
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else63
  %69 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 0, ptr %69, align 4, !tbaa !12
  br label %if.end70

if.else68:                                        ; preds = %if.else63
  %70 = load ptr, ptr %nchars1.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %call69 = call i32 @Shortread_input_init(ptr noundef %70, ptr noundef %72)
  %73 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call69, ptr %73, align 4, !tbaa !12
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then67
  br label %if.end71

if.end71:                                         ; preds = %if.end70
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end55
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end34
  %74 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds ptr, ptr %75, i32 1
  store ptr %incdec.ptr, ptr %74, align 8, !tbaa !5
  %76 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %77 = load i32, ptr %76, align 4, !tbaa !12
  %dec = add nsw i32 %77, -1
  store i32 %dec, ptr %76, align 4, !tbaa !12
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  %78 = load i8, ptr %interleavedp.addr, align 1, !tbaa !14
  %conv76 = zext i8 %78 to i32
  %cmp77 = icmp eq i32 %conv76, 1
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.end75
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else80:                                        ; preds = %if.end75
  %79 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %80 = load i32, ptr %79, align 4, !tbaa !12
  %cmp81 = icmp eq i32 %80, -1
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.else80
  %81 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.378)
  call void @exit(i32 noundef 0) #15
  unreachable

if.else85:                                        ; preds = %if.else80
  %82 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %83 = load i32, ptr %82, align 4, !tbaa !12
  %cmp86 = icmp eq i32 %83, 64
  br i1 %cmp86, label %if.then88, label %if.else142

if.then88:                                        ; preds = %if.else85
  %84 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %85 = load i32, ptr %84, align 4, !tbaa !12
  %cmp89 = icmp eq i32 %85, 0
  br i1 %cmp89, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.then88
  %86 = load i8, ptr @force_single_end_p, align 1, !tbaa !14
  %conv92 = zext i8 %86 to i32
  %cmp93 = icmp eq i32 %conv92, 1
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %lor.lhs.false91, %if.then88
  %87 = load ptr, ptr %gzipped2.addr, align 8, !tbaa !5
  store ptr null, ptr %87, align 8, !tbaa !5
  %88 = load ptr, ptr %bzipped2.addr, align 8, !tbaa !5
  store ptr null, ptr %88, align 8, !tbaa !5
  %89 = load ptr, ptr %input2.addr, align 8, !tbaa !5
  store ptr null, ptr %89, align 8, !tbaa !5
  %90 = load ptr, ptr %paired_end_p.addr, align 8, !tbaa !5
  store i8 0, ptr %90, align 1, !tbaa !14
  br label %if.end141

if.else96:                                        ; preds = %lor.lhs.false91
  %91 = load i8, ptr %gunzip_p.addr, align 1, !tbaa !14
  %conv97 = zext i8 %91 to i32
  %cmp98 = icmp eq i32 %conv97, 1
  br i1 %cmp98, label %if.then100, label %if.else112

if.then100:                                       ; preds = %if.else96
  %92 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %arrayidx101 = getelementptr inbounds ptr, ptr %93, i64 0
  %94 = load ptr, ptr %arrayidx101, align 8, !tbaa !5
  %call102 = call ptr @gzopen(ptr noundef %94, ptr noundef @.str.374)
  %95 = load ptr, ptr %gzipped2.addr, align 8, !tbaa !5
  store ptr %call102, ptr %95, align 8, !tbaa !5
  %cmp103 = icmp eq ptr %call102, null
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %if.then100
  %96 = load ptr, ptr @stderr, align 8, !tbaa !5
  %97 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %arrayidx106 = getelementptr inbounds ptr, ptr %98, i64 0
  %99 = load ptr, ptr %arrayidx106, align 8, !tbaa !5
  %call107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.375, ptr noundef %99)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else108:                                       ; preds = %if.then100
  %100 = load ptr, ptr %gzipped2.addr, align 8, !tbaa !5
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  %call109 = call i32 @gzbuffer(ptr noundef %101, i32 noundef 131072)
  %102 = load ptr, ptr %gzipped2.addr, align 8, !tbaa !5
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %call110 = call i32 @Shortread_input_init_gzip(ptr noundef %103)
  br label %if.end111

if.end111:                                        ; preds = %if.else108
  br label %if.end138

if.else112:                                       ; preds = %if.else96
  %104 = load i8, ptr %bunzip2_p.addr, align 1, !tbaa !14
  %conv113 = zext i8 %104 to i32
  %cmp114 = icmp eq i32 %conv113, 1
  br i1 %cmp114, label %if.then116, label %if.else127

if.then116:                                       ; preds = %if.else112
  %105 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %arrayidx117 = getelementptr inbounds ptr, ptr %106, i64 0
  %107 = load ptr, ptr %arrayidx117, align 8, !tbaa !5
  %call118 = call ptr @Bzip2_new(ptr noundef %107)
  %108 = load ptr, ptr %bzipped2.addr, align 8, !tbaa !5
  store ptr %call118, ptr %108, align 8, !tbaa !5
  %cmp119 = icmp eq ptr %call118, null
  br i1 %cmp119, label %if.then121, label %if.else124

if.then121:                                       ; preds = %if.then116
  %109 = load ptr, ptr @stderr, align 8, !tbaa !5
  %110 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %arrayidx122 = getelementptr inbounds ptr, ptr %111, i64 0
  %112 = load ptr, ptr %arrayidx122, align 8, !tbaa !5
  %call123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.379, ptr noundef %112)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else124:                                       ; preds = %if.then116
  %113 = load ptr, ptr %bzipped2.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %call125 = call i32 @Shortread_input_init_bzip2(ptr noundef %114)
  br label %if.end126

if.end126:                                        ; preds = %if.else124
  br label %if.end137

if.else127:                                       ; preds = %if.else112
  %115 = load ptr, ptr %read_files_command.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %arrayidx128 = getelementptr inbounds ptr, ptr %117, i64 0
  %118 = load ptr, ptr %arrayidx128, align 8, !tbaa !5
  %call129 = call ptr @Fopen_read_text(ptr noundef %115, ptr noundef %118)
  %119 = load ptr, ptr %input2.addr, align 8, !tbaa !5
  store ptr %call129, ptr %119, align 8, !tbaa !5
  %cmp130 = icmp eq ptr %call129, null
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %if.else127
  %120 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.377)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else134:                                       ; preds = %if.else127
  %121 = load ptr, ptr %nchars2.addr, align 8, !tbaa !5
  %122 = load ptr, ptr %input2.addr, align 8, !tbaa !5
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %call135 = call i32 @Shortread_input_init(ptr noundef %121, ptr noundef %123)
  br label %if.end136

if.end136:                                        ; preds = %if.else134
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end126
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end111
  %124 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %incdec.ptr139 = getelementptr inbounds ptr, ptr %125, i32 1
  store ptr %incdec.ptr139, ptr %124, align 8, !tbaa !5
  %126 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %127 = load i32, ptr %126, align 4, !tbaa !12
  %dec140 = add nsw i32 %127, -1
  store i32 %dec140, ptr %126, align 4, !tbaa !12
  br label %if.end141

if.end141:                                        ; preds = %if.end138, %if.then95
  store i8 1, ptr %fastq_format_p, align 1, !tbaa !14
  br label %if.end149

if.else142:                                       ; preds = %if.else85
  %128 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %129 = load i32, ptr %128, align 4, !tbaa !12
  %cmp143 = icmp eq i32 %129, 62
  br i1 %cmp143, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.else142
  %130 = load ptr, ptr %paired_end_p.addr, align 8, !tbaa !5
  store i8 0, ptr %130, align 1, !tbaa !14
  br label %if.end148

if.else146:                                       ; preds = %if.else142
  %131 = load ptr, ptr @stderr, align 8, !tbaa !5
  %132 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %133 = load i32, ptr %132, align 4, !tbaa !12
  %call147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.380, i32 noundef %133)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end148:                                        ; preds = %if.then145
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end141
  br label %if.end150

if.end150:                                        ; preds = %if.end149
  br label %if.end151

if.end151:                                        ; preds = %if.end150
  %134 = load i8, ptr %fastq_format_p, align 1, !tbaa !14
  store i8 %134, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.then79, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %fastq_format_p) #14
  %135 = load i8, ptr %retval, align 1
  ret i8 %135
}

declare void @Oligo_setup(i32 noundef) #4

declare void @Shortread_setup(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Inbuffer_setup(i8 noundef zeroext, i8 noundef zeroext) #4

declare ptr @Inbuffer_new(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @Inbuffer_fill_init(ptr noundef) #4

declare ptr @Datadir_find_genomesubdir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @chromosome_iit_setup(ptr noundef %genomelength, ptr noundef %nchromosomes, ptr noundef %circular_typeint, ptr noundef %any_circular_p, ptr noundef %circularp, ptr noundef %genomesubdir, ptr noundef %fileroot) #1 {
entry:
  %genomelength.addr = alloca ptr, align 8
  %nchromosomes.addr = alloca ptr, align 8
  %circular_typeint.addr = alloca ptr, align 8
  %any_circular_p.addr = alloca ptr, align 8
  %circularp.addr = alloca ptr, align 8
  %genomesubdir.addr = alloca ptr, align 8
  %fileroot.addr = alloca ptr, align 8
  %chromosome_iit = alloca ptr, align 8
  %altscaffold_iit = alloca ptr, align 8
  %iitfile = alloca ptr, align 8
  store ptr %genomelength, ptr %genomelength.addr, align 8, !tbaa !5
  store ptr %nchromosomes, ptr %nchromosomes.addr, align 8, !tbaa !5
  store ptr %circular_typeint, ptr %circular_typeint.addr, align 8, !tbaa !5
  store ptr %any_circular_p, ptr %any_circular_p.addr, align 8, !tbaa !5
  store ptr %circularp, ptr %circularp.addr, align 8, !tbaa !5
  store ptr %genomesubdir, ptr %genomesubdir.addr, align 8, !tbaa !5
  store ptr %fileroot, ptr %fileroot.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %chromosome_iit) #14
  store ptr null, ptr %chromosome_iit, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %altscaffold_iit) #14
  store ptr null, ptr %altscaffold_iit, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iitfile) #14
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  %0 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #17
  %add = add i64 %call, 1
  %1 = load ptr, ptr %fileroot.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %1) #17
  %add2 = add i64 %add, %call1
  %add3 = add i64 %add2, 15
  %add4 = add i64 %add3, 1
  %call5 = call ptr @Mem_calloc(i64 noundef %add4, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3288)
  store ptr %call5, ptr %iitfile, align 8, !tbaa !5
  %2 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %3 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %fileroot.addr, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.381, ptr noundef %3, ptr noundef %4) #14
  %5 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call7 = call ptr @Univ_IIT_read(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0)
  store ptr %call7, ptr %chromosome_iit, align 8, !tbaa !5
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.382, ptr noundef %7)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %8, ptr noundef @.str.1, i32 noundef 3300)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  %9 = load ptr, ptr %chromosome_iit, align 8, !tbaa !5
  %call9 = call i32 @Univ_IIT_total_nintervals(ptr noundef %9)
  %10 = load ptr, ptr %nchromosomes.addr, align 8, !tbaa !5
  store i32 %call9, ptr %10, align 4, !tbaa !12
  %11 = load ptr, ptr %chromosome_iit, align 8, !tbaa !5
  %call10 = call i32 @Univ_IIT_typeint(ptr noundef %11, ptr noundef @.str.383)
  %12 = load ptr, ptr %circular_typeint.addr, align 8, !tbaa !5
  store i32 %call10, ptr %12, align 4, !tbaa !12
  %13 = load ptr, ptr %any_circular_p.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %chromosome_iit, align 8, !tbaa !5
  %call11 = call ptr @Univ_IIT_circularp(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %circularp.addr, align 8, !tbaa !5
  store ptr %call11, ptr %15, align 8, !tbaa !5
  %16 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %call12 = call i64 @strlen(ptr noundef %16) #17
  %add13 = add i64 %call12, 1
  %17 = load ptr, ptr %fileroot.addr, align 8, !tbaa !5
  %call14 = call i64 @strlen(ptr noundef %17) #17
  %add15 = add i64 %add13, %call14
  %add16 = add i64 %add15, 16
  %add17 = add i64 %add16, 1
  %call18 = call ptr @Mem_calloc(i64 noundef %add17, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3306)
  store ptr %call18, ptr %iitfile, align 8, !tbaa !5
  %18 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %19 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %fileroot.addr, align 8, !tbaa !5
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef @.str.384, ptr noundef %19, ptr noundef %20) #14
  %21 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call20 = call ptr @Univ_IIT_read(ptr noundef %21, i8 noundef zeroext 1, i8 noundef zeroext 0)
  store ptr %call20, ptr %altscaffold_iit, align 8, !tbaa !5
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then22, label %if.else31

if.then22:                                        ; preds = %if.else
  %22 = load ptr, ptr %nchromosomes.addr, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %add23 = add nsw i32 %23, 1
  %conv = sext i32 %add23 to i64
  %call24 = call ptr @Mem_calloc(i64 noundef %conv, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3310)
  store ptr %call24, ptr @altlocp, align 8, !tbaa !5
  %24 = load ptr, ptr %nchromosomes.addr, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 4, !tbaa !12
  %add25 = add nsw i32 %25, 1
  %conv26 = sext i32 %add25 to i64
  %call27 = call ptr @Mem_calloc(i64 noundef %conv26, i64 noundef 4, ptr noundef @.str.1, i32 noundef 3311)
  store ptr %call27, ptr @alias_starts, align 8, !tbaa !5
  %26 = load ptr, ptr %nchromosomes.addr, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 4, !tbaa !12
  %add28 = add nsw i32 %27, 1
  %conv29 = sext i32 %add28 to i64
  %call30 = call ptr @Mem_calloc(i64 noundef %conv29, i64 noundef 4, ptr noundef @.str.1, i32 noundef 3312)
  store ptr %call30, ptr @alias_ends, align 8, !tbaa !5
  br label %if.end

if.else31:                                        ; preds = %if.else
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.385)
  %29 = load ptr, ptr %chromosome_iit, align 8, !tbaa !5
  %30 = load ptr, ptr %altscaffold_iit, align 8, !tbaa !5
  %call33 = call ptr @Univ_IIT_altlocp(ptr noundef @alias_starts, ptr noundef @alias_ends, ptr noundef %29, ptr noundef %30)
  store ptr %call33, ptr @altlocp, align 8, !tbaa !5
  call void @Univ_IIT_free(ptr noundef %altscaffold_iit)
  br label %if.end

if.end:                                           ; preds = %if.else31, %if.then22
  %31 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %31, ptr noundef @.str.1, i32 noundef 3320)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.end
  %32 = load ptr, ptr %chromosome_iit, align 8, !tbaa !5
  %call35 = call i32 @Univ_IIT_genomelength(ptr noundef %32, i8 noundef zeroext 1)
  %33 = load ptr, ptr %genomelength.addr, align 8, !tbaa !5
  store i32 %call35, ptr %33, align 4, !tbaa !12
  %34 = load ptr, ptr %chromosome_iit, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iitfile) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %altscaffold_iit) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %chromosome_iit) #14
  ret ptr %34
}

declare ptr @EF64_new_from_chromosome_iit(ptr noundef) #4

declare noalias ptr @fopen(ptr noundef, ptr noundef) #4

declare ptr @Mem_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

declare ptr @Getline(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

declare i32 @Univ_IIT_find_one(ptr noundef, ptr noundef) #4

declare i32 @fclose(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @transcript_iit_setup(ptr noundef %transcriptomelength, ptr noundef %ntranscripts, ptr noundef %transcriptomesubdir, ptr noundef %fileroot) #1 {
entry:
  %transcriptomelength.addr = alloca ptr, align 8
  %ntranscripts.addr = alloca ptr, align 8
  %transcriptomesubdir.addr = alloca ptr, align 8
  %fileroot.addr = alloca ptr, align 8
  %transcript_iit = alloca ptr, align 8
  %iitfile = alloca ptr, align 8
  store ptr %transcriptomelength, ptr %transcriptomelength.addr, align 8, !tbaa !5
  store ptr %ntranscripts, ptr %ntranscripts.addr, align 8, !tbaa !5
  store ptr %transcriptomesubdir, ptr %transcriptomesubdir.addr, align 8, !tbaa !5
  store ptr %fileroot, ptr %fileroot.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript_iit) #14
  store ptr null, ptr %transcript_iit, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iitfile) #14
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  %0 = load ptr, ptr %transcriptomesubdir.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #17
  %add = add i64 %call, 1
  %1 = load ptr, ptr %fileroot.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %1) #17
  %add2 = add i64 %add, %call1
  %add3 = add i64 %add2, 15
  %add4 = add i64 %add3, 1
  %call5 = call ptr @Mem_calloc(i64 noundef %add4, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3262)
  store ptr %call5, ptr %iitfile, align 8, !tbaa !5
  %2 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %3 = load ptr, ptr %transcriptomesubdir.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %fileroot.addr, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.381, ptr noundef %3, ptr noundef %4) #14
  %5 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call7 = call ptr @Univ_IIT_read(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0)
  store ptr %call7, ptr %transcript_iit, align 8, !tbaa !5
  %cmp = icmp eq ptr %call7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.382, ptr noundef %7)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %8, ptr noundef @.str.1, i32 noundef 3268)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  %9 = load ptr, ptr %transcript_iit, align 8, !tbaa !5
  %call9 = call i32 @Univ_IIT_total_nintervals(ptr noundef %9)
  %10 = load ptr, ptr %ntranscripts.addr, align 8, !tbaa !5
  store i32 %call9, ptr %10, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else
  %11 = load ptr, ptr %transcript_iit, align 8, !tbaa !5
  %call10 = call i32 @Univ_IIT_genomelength(ptr noundef %11, i8 noundef zeroext 0)
  %12 = load ptr, ptr %transcriptomelength.addr, align 8, !tbaa !5
  store i32 %call10, ptr %12, align 4, !tbaa !12
  %13 = load ptr, ptr %transcript_iit, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iitfile) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript_iit) #14
  ret ptr %13
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

declare ptr @IIT_read(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext) #4

declare ptr @Transcriptome_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #4

declare ptr @Indexdb_new_transcriptome(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #4

declare i32 @IIT_total_nintervals(ptr noundef) #4

declare ptr @Knownsplicing_from_transcriptome(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #4

declare void @Access_setup(i8 noundef zeroext, i8 noundef zeroext) #4

; Function Attrs: nounwind uwtable
define internal void @worker_setup(ptr noundef %transcriptomesubdir, ptr noundef %transcriptome_fileroot, ptr noundef %genomesubdir, ptr noundef %genome_fileroot, ptr noundef %chromosome_iit) #1 {
entry:
  %transcriptomesubdir.addr = alloca ptr, align 8
  %transcriptome_fileroot.addr = alloca ptr, align 8
  %genomesubdir.addr = alloca ptr, align 8
  %genome_fileroot.addr = alloca ptr, align 8
  %chromosome_iit.addr = alloca ptr, align 8
  %snpsdir = alloca ptr, align 8
  %modedir = alloca ptr, align 8
  %mapdir = alloca ptr, align 8
  %iitfile = alloca ptr, align 8
  %idx_filesuffix1 = alloca ptr, align 8
  %idx_filesuffix2 = alloca ptr, align 8
  %dump_fp = alloca ptr, align 8
  store ptr %transcriptomesubdir, ptr %transcriptomesubdir.addr, align 8, !tbaa !5
  store ptr %transcriptome_fileroot, ptr %transcriptome_fileroot.addr, align 8, !tbaa !5
  store ptr %genomesubdir, ptr %genomesubdir.addr, align 8, !tbaa !5
  store ptr %genome_fileroot, ptr %genome_fileroot.addr, align 8, !tbaa !5
  store ptr %chromosome_iit, ptr %chromosome_iit.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %snpsdir) #14
  store ptr null, ptr %snpsdir, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %modedir) #14
  store ptr null, ptr %modedir, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapdir) #14
  store ptr null, ptr %mapdir, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iitfile) #14
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx_filesuffix1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx_filesuffix2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %dump_fp) #14
  %0 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @maskedp, align 1, !tbaa !14
  %conv = zext i8 %1 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %transcriptome_fileroot.addr, align 8, !tbaa !5
  %cmp3 = icmp ne ptr %2, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %3 = load ptr, ptr %transcriptomesubdir.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %transcriptome_fileroot.addr, align 8, !tbaa !5
  %5 = load i32, ptr @genome_access, align 4, !tbaa !14
  %6 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call = call ptr @Genomebits_new(ptr noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext 0)
  store ptr %call, ptr @transcriptomebits, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %7 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %10 = load i32, ptr @genome_access, align 4, !tbaa !14
  %11 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call6 = call ptr @Genome_new(ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9, i32 noundef %10, i8 noundef zeroext %11, i8 noundef zeroext 0)
  store ptr %call6, ptr @genomealt, align 8, !tbaa !5
  store ptr %call6, ptr @genome, align 8, !tbaa !5
  %12 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %14 = load i32, ptr @genome_access, align 4, !tbaa !14
  %15 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call7 = call ptr @Genomebits_new(ptr noundef %12, ptr noundef %13, ptr noundef null, i32 noundef %14, i8 noundef zeroext %15, i8 noundef zeroext 0)
  store ptr %call7, ptr @genomebits, align 8, !tbaa !5
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load i8, ptr @maskedp, align 1, !tbaa !14
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else
  %17 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %20 = load i32, ptr @genome_access, align 4, !tbaa !14
  %21 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call12 = call ptr @Genome_new(ptr noundef %17, ptr noundef %18, ptr noundef null, ptr noundef %19, i32 noundef %20, i8 noundef zeroext %21, i8 noundef zeroext 0)
  store ptr %call12, ptr @genome, align 8, !tbaa !5
  %22 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %24 = load i32, ptr @genome_access, align 4, !tbaa !14
  %25 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call13 = call ptr @Genomebits_new(ptr noundef %22, ptr noundef %23, ptr noundef null, i32 noundef %24, i8 noundef zeroext %25, i8 noundef zeroext 0)
  store ptr %call13, ptr @genomebits, align 8, !tbaa !5
  %26 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %28 = load ptr, ptr @masked_suffix, align 8, !tbaa !5
  %29 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %30 = load i32, ptr @genome_access, align 4, !tbaa !14
  %31 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call14 = call ptr @Genome_new(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30, i8 noundef zeroext %31, i8 noundef zeroext 0)
  store ptr %call14, ptr @genomealt, align 8, !tbaa !5
  %32 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %33 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %34 = load ptr, ptr @masked_suffix, align 8, !tbaa !5
  %35 = load i32, ptr @genome_access, align 4, !tbaa !14
  %36 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call15 = call ptr @Genomebits_new(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35, i8 noundef zeroext %36, i8 noundef zeroext 0)
  store ptr %call15, ptr @genomebits_alt, align 8, !tbaa !5
  br label %if.end33

if.else16:                                        ; preds = %if.else
  %37 = load ptr, ptr @user_snpsdir, align 8, !tbaa !5
  %cmp17 = icmp eq ptr %37, null
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else16
  %38 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  store ptr %38, ptr %snpsdir, align 8, !tbaa !5
  %39 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %call20 = call ptr @Datadir_find_mapdir(ptr noundef null, ptr noundef %39, ptr noundef %40)
  store ptr %call20, ptr %mapdir, align 8, !tbaa !5
  br label %if.end22

if.else21:                                        ; preds = %if.else16
  %41 = load ptr, ptr @user_snpsdir, align 8, !tbaa !5
  store ptr %41, ptr %snpsdir, align 8, !tbaa !5
  %42 = load ptr, ptr @user_snpsdir, align 8, !tbaa !5
  store ptr %42, ptr %mapdir, align 8, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then19
  %43 = load ptr, ptr %transcriptome_fileroot.addr, align 8, !tbaa !5
  %cmp23 = icmp ne ptr %43, null
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end22
  %44 = load ptr, ptr %transcriptomesubdir.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %transcriptome_fileroot.addr, align 8, !tbaa !5
  %46 = load i32, ptr @genome_access, align 4, !tbaa !14
  %47 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call26 = call ptr @Genomebits_new(ptr noundef %44, ptr noundef %45, ptr noundef null, i32 noundef %46, i8 noundef zeroext %47, i8 noundef zeroext 0)
  store ptr %call26, ptr @transcriptomebits, align 8, !tbaa !5
  %48 = load ptr, ptr %snpsdir, align 8, !tbaa !5
  %49 = load ptr, ptr %transcriptome_fileroot.addr, align 8, !tbaa !5
  %50 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %51 = load i32, ptr @genome_access, align 4, !tbaa !14
  %52 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call27 = call ptr @Genomebits_new(ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef %51, i8 noundef zeroext %52, i8 noundef zeroext 0)
  store ptr %call27, ptr @transcriptomebits_alt, align 8, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22
  %53 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %56 = load i32, ptr @genome_access, align 4, !tbaa !14
  %57 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call29 = call ptr @Genome_new(ptr noundef %53, ptr noundef %54, ptr noundef null, ptr noundef %55, i32 noundef %56, i8 noundef zeroext %57, i8 noundef zeroext 0)
  store ptr %call29, ptr @genome, align 8, !tbaa !5
  %58 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %60 = load i32, ptr @genome_access, align 4, !tbaa !14
  %61 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call30 = call ptr @Genomebits_new(ptr noundef %58, ptr noundef %59, ptr noundef null, i32 noundef %60, i8 noundef zeroext %61, i8 noundef zeroext 0)
  store ptr %call30, ptr @genomebits, align 8, !tbaa !5
  %62 = load ptr, ptr %snpsdir, align 8, !tbaa !5
  %63 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %64 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %65 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %66 = load i32, ptr @genome_access, align 4, !tbaa !14
  %67 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call31 = call ptr @Genome_new(ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef %66, i8 noundef zeroext %67, i8 noundef zeroext 0)
  store ptr %call31, ptr @genomealt, align 8, !tbaa !5
  %68 = load ptr, ptr %snpsdir, align 8, !tbaa !5
  %69 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %70 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %71 = load i32, ptr @genome_access, align 4, !tbaa !14
  %72 = load i8, ptr @sharedp, align 1, !tbaa !14
  %call32 = call ptr @Genomebits_new(ptr noundef %68, ptr noundef %69, ptr noundef %70, i32 noundef %71, i8 noundef zeroext %72, i8 noundef zeroext 0)
  store ptr %call32, ptr @genomebits_alt, align 8, !tbaa !5
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.then11
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  %73 = load ptr, ptr @genome, align 8, !tbaa !5
  %74 = load ptr, ptr @genomealt, align 8, !tbaa !5
  %75 = load i32, ptr @circular_typeint, align 4, !tbaa !12
  call void @Genome_setup(ptr noundef %73, ptr noundef %74, i32 noundef %75)
  %76 = load ptr, ptr @user_modedir, align 8, !tbaa !5
  %cmp35 = icmp eq ptr %76, null
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.end34
  %77 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  store ptr %77, ptr %modedir, align 8, !tbaa !5
  br label %if.end39

if.else38:                                        ; preds = %if.end34
  %78 = load ptr, ptr @user_modedir, align 8, !tbaa !5
  store ptr %78, ptr %modedir, align 8, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  %79 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp40 = icmp eq i32 %79, 1
  br i1 %cmp40, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39
  %80 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp42 = icmp eq i32 %80, 2
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %lor.lhs.false, %if.end39
  store ptr @.str.386, ptr %idx_filesuffix1, align 8, !tbaa !5
  store ptr @.str.387, ptr %idx_filesuffix2, align 8, !tbaa !5
  br label %if.end62

if.else45:                                        ; preds = %lor.lhs.false
  %81 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp46 = icmp eq i32 %81, 3
  br i1 %cmp46, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.else45
  %82 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp49 = icmp eq i32 %82, 4
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %lor.lhs.false48, %if.else45
  store ptr @.str.388, ptr %idx_filesuffix1, align 8, !tbaa !5
  store ptr @.str.389, ptr %idx_filesuffix2, align 8, !tbaa !5
  br label %if.end61

if.else52:                                        ; preds = %lor.lhs.false48
  %83 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp53 = icmp eq i32 %83, 5
  br i1 %cmp53, label %if.then58, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.else52
  %84 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp56 = icmp eq i32 %84, 6
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %lor.lhs.false55, %if.else52
  store ptr @.str.389, ptr %idx_filesuffix1, align 8, !tbaa !5
  store ptr @.str.388, ptr %idx_filesuffix2, align 8, !tbaa !5
  br label %if.end60

if.else59:                                        ; preds = %lor.lhs.false55
  store ptr @.str.7, ptr %idx_filesuffix1, align 8, !tbaa !5
  store ptr null, ptr %idx_filesuffix2, align 8, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then51
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then44
  %85 = load ptr, ptr %modedir, align 8, !tbaa !5
  %86 = load ptr, ptr %snpsdir, align 8, !tbaa !5
  %87 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %88 = load ptr, ptr %idx_filesuffix1, align 8, !tbaa !5
  %89 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %90 = load i32, ptr @required_index1part, align 4, !tbaa !12
  %91 = load i32, ptr @required_index1interval, align 4, !tbaa !12
  %92 = load i32, ptr @offsetsstrm_access, align 4, !tbaa !14
  %93 = load i32, ptr @positions_access, align 4, !tbaa !14
  %94 = load i8, ptr @sharedp, align 1, !tbaa !14
  %95 = load i8, ptr @multiple_sequences_p, align 1, !tbaa !14
  %96 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %97 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %call63 = call ptr @Indexdb_new_genome(ptr noundef @index1part, ptr noundef @index1interval, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92, i32 noundef %93, i8 noundef zeroext %94, i8 noundef zeroext %95, i8 noundef zeroext %96, i8 noundef zeroext %97)
  store ptr %call63, ptr @indexdb, align 8, !tbaa !5
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %if.then66, label %if.end92

if.then66:                                        ; preds = %if.end62
  %98 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp67 = icmp eq i32 %98, 1
  br i1 %cmp67, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.then66
  %99 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp70 = icmp eq i32 %99, 2
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %lor.lhs.false69, %if.then66
  %100 = load ptr, ptr @stderr, align 8, !tbaa !5
  %101 = load ptr, ptr %idx_filesuffix1, align 8, !tbaa !5
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.390, ptr noundef %101)
  br label %if.end91

if.else74:                                        ; preds = %lor.lhs.false69
  %102 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp75 = icmp eq i32 %102, 3
  br i1 %cmp75, label %if.then86, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.else74
  %103 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp78 = icmp eq i32 %103, 4
  br i1 %cmp78, label %if.then86, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %104 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp81 = icmp eq i32 %104, 5
  br i1 %cmp81, label %if.then86, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %105 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp84 = icmp eq i32 %105, 6
  br i1 %cmp84, label %if.then86, label %if.else88

if.then86:                                        ; preds = %lor.lhs.false83, %lor.lhs.false80, %lor.lhs.false77, %if.else74
  %106 = load ptr, ptr @stderr, align 8, !tbaa !5
  %107 = load ptr, ptr %idx_filesuffix1, align 8, !tbaa !5
  %call87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.391, ptr noundef %107)
  br label %if.end90

if.else88:                                        ; preds = %lor.lhs.false83
  %108 = load ptr, ptr @stderr, align 8, !tbaa !5
  %109 = load ptr, ptr %idx_filesuffix1, align 8, !tbaa !5
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef @.str.392, ptr noundef %109)
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then86
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then72
  call void @exit(i32 noundef 9) #15
  unreachable

if.end92:                                         ; preds = %if.end62
  %110 = load ptr, ptr %idx_filesuffix2, align 8, !tbaa !5
  %cmp93 = icmp eq ptr %110, null
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.end92
  %111 = load ptr, ptr @indexdb, align 8, !tbaa !5
  store ptr %111, ptr @indexdb_nonstd, align 8, !tbaa !5
  br label %if.end112

if.else96:                                        ; preds = %if.end92
  %112 = load ptr, ptr %modedir, align 8, !tbaa !5
  %113 = load ptr, ptr %snpsdir, align 8, !tbaa !5
  %114 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %idx_filesuffix2, align 8, !tbaa !5
  %116 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %117 = load i32, ptr @required_index1part, align 4, !tbaa !12
  %118 = load i32, ptr @required_index1interval, align 4, !tbaa !12
  %119 = load i32, ptr @offsetsstrm_access, align 4, !tbaa !14
  %120 = load i32, ptr @positions_access, align 4, !tbaa !14
  %121 = load i8, ptr @sharedp, align 1, !tbaa !14
  %122 = load i8, ptr @multiple_sequences_p, align 1, !tbaa !14
  %123 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %124 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %call97 = call ptr @Indexdb_new_genome(ptr noundef @index1part, ptr noundef @index1interval, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116, i32 noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef %120, i8 noundef zeroext %121, i8 noundef zeroext %122, i8 noundef zeroext %123, i8 noundef zeroext %124)
  store ptr %call97, ptr @indexdb_nonstd, align 8, !tbaa !5
  %cmp98 = icmp eq ptr %call97, null
  br i1 %cmp98, label %if.then100, label %if.end111

if.then100:                                       ; preds = %if.else96
  %125 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp101 = icmp eq i32 %125, 1
  br i1 %cmp101, label %if.then106, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.then100
  %126 = load i32, ptr @mode, align 4, !tbaa !14
  %cmp104 = icmp eq i32 %126, 2
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %lor.lhs.false103, %if.then100
  %127 = load ptr, ptr @stderr, align 8, !tbaa !5
  %128 = load ptr, ptr %idx_filesuffix2, align 8, !tbaa !5
  %call107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.390, ptr noundef %128)
  br label %if.end110

if.else108:                                       ; preds = %lor.lhs.false103
  %129 = load ptr, ptr @stderr, align 8, !tbaa !5
  %130 = load ptr, ptr %idx_filesuffix2, align 8, !tbaa !5
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.391, ptr noundef %130)
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then106
  call void @exit(i32 noundef 9) #15
  unreachable

if.end111:                                        ; preds = %if.else96
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then95
  %131 = load i8, ptr @use_localdb_p, align 1, !tbaa !14
  %conv113 = zext i8 %131 to i32
  %cmp114 = icmp eq i32 %conv113, 0
  br i1 %cmp114, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.end112
  %132 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.393)
  store ptr null, ptr @localdb, align 8, !tbaa !5
  br label %if.end120

if.else118:                                       ; preds = %if.end112
  %133 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %135 = load i32, ptr @localdb_access, align 4, !tbaa !14
  %136 = load i8, ptr @sharedp, align 1, !tbaa !14
  %137 = load i8, ptr @multiple_sequences_p, align 1, !tbaa !14
  %138 = load i8, ptr @preload_shared_memory_p, align 1, !tbaa !14
  %139 = load i8, ptr @unload_shared_memory_p, align 1, !tbaa !14
  %call119 = call ptr @Localdb_new(ptr noundef %133, ptr noundef %134, i32 noundef %135, i8 noundef zeroext %136, i8 noundef zeroext %137, i8 noundef zeroext %138, i8 noundef zeroext %139)
  store ptr %call119, ptr @localdb, align 8, !tbaa !5
  br label %if.end120

if.end120:                                        ; preds = %if.else118, %if.then116
  %140 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %cmp121 = icmp ne ptr %140, null
  br i1 %cmp121, label %if.then123, label %if.end150

if.then123:                                       ; preds = %if.end120
  %141 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %call124 = call i64 @strlen(ptr noundef %141) #17
  %add = add i64 %call124, 1
  %142 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %call125 = call i64 @strlen(ptr noundef %142) #17
  %add126 = add i64 %add, %call125
  %add127 = add i64 %add126, 1
  %call128 = call ptr @Mem_calloc(i64 noundef %add127, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3460)
  store ptr %call128, ptr %iitfile, align 8, !tbaa !5
  %143 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %144 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %145 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %call129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %143, ptr noundef @.str.394, ptr noundef %144, ptr noundef %145) #14
  %146 = load ptr, ptr @stderr, align 8, !tbaa !5
  %147 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %148 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.395, ptr noundef %147, ptr noundef %148)
  %149 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call131 = call ptr @IIT_read(ptr noundef %149, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call131, ptr @snps_iit, align 8, !tbaa !5
  %cmp132 = icmp eq ptr %call131, null
  br i1 %cmp132, label %if.then134, label %if.end143

if.then134:                                       ; preds = %if.then123
  %150 = load ptr, ptr @stderr, align 8, !tbaa !5
  %151 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %152 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.396, ptr noundef %151, ptr noundef %152)
  %153 = load ptr, ptr @user_snpsdir, align 8, !tbaa !5
  %cmp136 = icmp eq ptr %153, null
  br i1 %cmp136, label %if.then138, label %if.end142

if.then138:                                       ; preds = %if.then134
  %154 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.397)
  %155 = load ptr, ptr @stderr, align 8, !tbaa !5
  %156 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  call void @Datadir_list_directory(ptr noundef %155, ptr noundef %156)
  %157 = load ptr, ptr @stderr, align 8, !tbaa !5
  %158 = load ptr, ptr @snps_root, align 8, !tbaa !5
  %call140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.398, ptr noundef %158)
  %159 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.399)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end142:                                        ; preds = %if.then134
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then123
  store i8 1, ptr @print_nsnpdiffs_p, align 1, !tbaa !14
  %160 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %161 = load ptr, ptr @snps_iit, align 8, !tbaa !5
  %call144 = call ptr @Univ_IIT_divint_crosstable(ptr noundef %160, ptr noundef %161)
  store ptr %call144, ptr @snps_divint_crosstable, align 8, !tbaa !5
  %162 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.400)
  %163 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %163, ptr noundef @.str.1, i32 noundef 3479)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  %164 = load ptr, ptr @user_snpsdir, align 8, !tbaa !5
  %cmp146 = icmp eq ptr %164, null
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end143
  %165 = load ptr, ptr %mapdir, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %165, ptr noundef @.str.1, i32 noundef 3481)
  store ptr null, ptr %mapdir, align 8, !tbaa !5
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end143
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.end120
  %166 = load i32, ptr @min_distantsplicing_end_matches, align 4, !tbaa !12
  %167 = load i32, ptr @index1part, align 4, !tbaa !12
  %cmp151 = icmp slt i32 %166, %167
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end150
  %168 = load ptr, ptr @stderr, align 8, !tbaa !5
  %169 = load i32, ptr @index1part, align 4, !tbaa !12
  %call154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.401, i32 noundef %169)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end155:                                        ; preds = %if.end150
  %170 = load ptr, ptr @indexdb, align 8, !tbaa !5
  %171 = load i32, ptr @mode, align 4, !tbaa !14
  %172 = load i32, ptr @index1part, align 4, !tbaa !12
  %call156 = call double @Indexdb_mean_size(ptr noundef %170, i32 noundef %171, i32 noundef %172)
  %mul = fmul double 1.000000e+01, %call156
  %conv157 = fptosi double %mul to i32
  store i32 %conv157, ptr @indexdb_size_threshold, align 4, !tbaa !12
  %173 = load i32, ptr @indexdb_size_threshold, align 4, !tbaa !12
  %cmp158 = icmp slt i32 %173, 1000
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end155
  store i32 1000, ptr @indexdb_size_threshold, align 4, !tbaa !12
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end155
  %174 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %cmp162 = icmp ne ptr %174, null
  br i1 %cmp162, label %if.then164, label %if.end248

if.then164:                                       ; preds = %if.end161
  %175 = load ptr, ptr @user_splicingdir, align 8, !tbaa !5
  %cmp165 = icmp eq ptr %175, null
  br i1 %cmp165, label %if.then167, label %if.else174

if.then167:                                       ; preds = %if.then164
  %176 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call168 = call ptr @IIT_read(ptr noundef %176, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call168, ptr @splicing_iit, align 8, !tbaa !5
  %cmp169 = icmp ne ptr %call168, null
  br i1 %cmp169, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.then167
  %177 = load ptr, ptr @stderr, align 8, !tbaa !5
  %178 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.402, ptr noundef %178)
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %if.then167
  br label %if.end188

if.else174:                                       ; preds = %if.then164
  %179 = load ptr, ptr @user_splicingdir, align 8, !tbaa !5
  %call175 = call i64 @strlen(ptr noundef %179) #17
  %add176 = add i64 %call175, 1
  %180 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call177 = call i64 @strlen(ptr noundef %180) #17
  %add178 = add i64 %add176, %call177
  %add179 = add i64 %add178, 1
  %call180 = call ptr @Mem_calloc(i64 noundef %add179, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3531)
  store ptr %call180, ptr %iitfile, align 8, !tbaa !5
  %181 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %182 = load ptr, ptr @user_splicingdir, align 8, !tbaa !5
  %183 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call181 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %181, ptr noundef @.str.394, ptr noundef %182, ptr noundef %183) #14
  %184 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call182 = call ptr @IIT_read(ptr noundef %184, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call182, ptr @splicing_iit, align 8, !tbaa !5
  %cmp183 = icmp ne ptr %call182, null
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %if.else174
  %185 = load ptr, ptr @stderr, align 8, !tbaa !5
  %186 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.403, ptr noundef %186)
  %187 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %187, ptr noundef @.str.1, i32 noundef 3536)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.else174
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end173
  %188 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %cmp189 = icmp eq ptr %188, null
  br i1 %cmp189, label %if.then191, label %if.end209

if.then191:                                       ; preds = %if.end188
  %189 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %190 = load ptr, ptr %genome_fileroot.addr, align 8, !tbaa !5
  %call192 = call ptr @Datadir_find_mapdir(ptr noundef null, ptr noundef %189, ptr noundef %190)
  store ptr %call192, ptr %mapdir, align 8, !tbaa !5
  %191 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %call193 = call i64 @strlen(ptr noundef %191) #17
  %add194 = add i64 %call193, 1
  %192 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call195 = call i64 @strlen(ptr noundef %192) #17
  %add196 = add i64 %add194, %call195
  %add197 = add i64 %add196, 1
  %call198 = call ptr @Mem_calloc(i64 noundef %add197, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3543)
  store ptr %call198, ptr %iitfile, align 8, !tbaa !5
  %193 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %194 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %195 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call199 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %193, ptr noundef @.str.394, ptr noundef %194, ptr noundef %195) #14
  %196 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call200 = call ptr @IIT_read(ptr noundef %196, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call200, ptr @splicing_iit, align 8, !tbaa !5
  %cmp201 = icmp ne ptr %call200, null
  br i1 %cmp201, label %if.then203, label %if.else205

if.then203:                                       ; preds = %if.then191
  %197 = load ptr, ptr @stderr, align 8, !tbaa !5
  %198 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.403, ptr noundef %198)
  %199 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %199, ptr noundef @.str.1, i32 noundef 3548)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  %200 = load ptr, ptr %mapdir, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %200, ptr noundef @.str.1, i32 noundef 3549)
  store ptr null, ptr %mapdir, align 8, !tbaa !5
  br label %if.end208

if.else205:                                       ; preds = %if.then191
  %201 = load ptr, ptr @stderr, align 8, !tbaa !5
  %202 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %203 = load ptr, ptr %mapdir, align 8, !tbaa !5
  %call206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef @.str.404, ptr noundef %202, ptr noundef %203)
  %204 = load ptr, ptr @stderr, align 8, !tbaa !5
  %205 = load ptr, ptr %mapdir, align 8, !tbaa !5
  call void @Datadir_list_directory(ptr noundef %204, ptr noundef %205)
  %206 = load ptr, ptr @stderr, align 8, !tbaa !5
  %207 = load ptr, ptr @splicing_file, align 8, !tbaa !5
  %call207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str.405, ptr noundef %207)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end208:                                        ; preds = %if.then203
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end188
  %208 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %209 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %call210 = call ptr @Univ_IIT_divint_crosstable(ptr noundef %208, ptr noundef %209)
  store ptr %call210, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  %210 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %call211 = call i32 @IIT_typeint(ptr noundef %210, ptr noundef @.str.406)
  store i32 %call211, ptr @donor_typeint, align 4, !tbaa !12
  %cmp212 = icmp sge i32 %call211, 0
  br i1 %cmp212, label %land.lhs.true214, label %if.else229

land.lhs.true214:                                 ; preds = %if.end209
  %211 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %call215 = call i32 @IIT_typeint(ptr noundef %211, ptr noundef @.str.407)
  store i32 %call215, ptr @acceptor_typeint, align 4, !tbaa !12
  %cmp216 = icmp sge i32 %call215, 0
  br i1 %cmp216, label %if.then218, label %if.else229

if.then218:                                       ; preds = %land.lhs.true214
  %212 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.408)
  store i8 0, ptr @intron_level_p, align 1, !tbaa !14
  %213 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %214 = load ptr, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  %215 = load i32, ptr @donor_typeint, align 4, !tbaa !12
  %216 = load i32, ptr @acceptor_typeint, align 4, !tbaa !12
  %217 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %call220 = call ptr @Knownsplicing_from_splicing_iit(ptr noundef %213, ptr noundef %214, i32 noundef %215, i32 noundef %216, ptr noundef %217, i8 noundef zeroext 0)
  store ptr %call220, ptr @knownsplicing, align 8, !tbaa !5
  %218 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %call221 = call i32 @Knownsplicing_nintervals(ptr noundef %218)
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.end228

if.then224:                                       ; preds = %if.then218
  %219 = load ptr, ptr @stderr, align 8, !tbaa !5
  %220 = load ptr, ptr @genome_dbroot, align 8, !tbaa !5
  %call225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.409, ptr noundef %220)
  %221 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef @.str.410)
  %222 = load ptr, ptr @stderr, align 8, !tbaa !5
  %223 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  call void @Univ_IIT_dump_labels(ptr noundef %222, ptr noundef %223)
  %224 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.411)
  %225 = load ptr, ptr @stderr, align 8, !tbaa !5
  %226 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  call void @IIT_dump_divstrings(ptr noundef %225, ptr noundef %226)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end228:                                        ; preds = %if.then218
  br label %if.end240

if.else229:                                       ; preds = %land.lhs.true214, %if.end209
  %227 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef @.str.412)
  store i8 1, ptr @intron_level_p, align 1, !tbaa !14
  %228 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %229 = load ptr, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  %230 = load i32, ptr @donor_typeint, align 4, !tbaa !12
  %231 = load i32, ptr @acceptor_typeint, align 4, !tbaa !12
  %232 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %call231 = call ptr @Knownsplicing_from_splicing_iit(ptr noundef %228, ptr noundef %229, i32 noundef %230, i32 noundef %231, ptr noundef %232, i8 noundef zeroext 1)
  store ptr %call231, ptr @knownsplicing, align 8, !tbaa !5
  %233 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %call232 = call i32 @Knownsplicing_nintervals(ptr noundef %233)
  %cmp233 = icmp eq i32 %call232, 0
  br i1 %cmp233, label %if.then235, label %if.end239

if.then235:                                       ; preds = %if.else229
  %234 = load ptr, ptr @stderr, align 8, !tbaa !5
  %235 = load ptr, ptr @genome_dbroot, align 8, !tbaa !5
  %call236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef @.str.409, ptr noundef %235)
  %236 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str.410)
  %237 = load ptr, ptr @stderr, align 8, !tbaa !5
  %238 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  call void @Univ_IIT_dump_labels(ptr noundef %237, ptr noundef %238)
  %239 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef @.str.411)
  %240 = load ptr, ptr @stderr, align 8, !tbaa !5
  %241 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  call void @IIT_dump_divstrings(ptr noundef %240, ptr noundef %241)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end239:                                        ; preds = %if.else229
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end228
  %242 = load i8, ptr @unloadp, align 1, !tbaa !14
  %conv241 = zext i8 %242 to i32
  %cmp242 = icmp eq i32 %conv241, 1
  br i1 %cmp242, label %if.then244, label %if.end246

if.then244:                                       ; preds = %if.end240
  %243 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef @.str.413)
  %244 = load ptr, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %244, ptr noundef @.str.1, i32 noundef 3598)
  store ptr null, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  call void @IIT_free(ptr noundef @splicing_iit)
  store ptr null, ptr @splicing_iit, align 8, !tbaa !5
  store i8 0, ptr @knownsplicingp, align 1, !tbaa !14
  store ptr null, ptr @splicing_file, align 8, !tbaa !5
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.end240
  %245 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call247 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef @.str.400)
  br label %if.end248

if.end248:                                        ; preds = %if.end246, %if.end161
  %246 = load ptr, ptr @splices_file, align 8, !tbaa !5
  %cmp249 = icmp eq ptr %246, null
  br i1 %cmp249, label %if.then251, label %if.else252

if.then251:                                       ; preds = %if.end248
  br label %if.end262

if.else252:                                       ; preds = %if.end248
  %247 = load ptr, ptr @splices_file, align 8, !tbaa !5
  %call253 = call noalias ptr @fopen(ptr noundef %247, ptr noundef @.str.2)
  store ptr %call253, ptr %dump_fp, align 8, !tbaa !5
  %cmp254 = icmp eq ptr %call253, null
  br i1 %cmp254, label %if.then256, label %if.else258

if.then256:                                       ; preds = %if.else252
  %248 = load ptr, ptr @stderr, align 8, !tbaa !5
  %249 = load ptr, ptr @splices_file, align 8, !tbaa !5
  %call257 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef @.str.414, ptr noundef %249)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else258:                                       ; preds = %if.else252
  %250 = load ptr, ptr %dump_fp, align 8, !tbaa !5
  %251 = load i32, ptr @genomelength, align 4, !tbaa !12
  %call259 = call ptr @Knownsplicing_new_from_dump(ptr noundef %250, i32 noundef %251)
  store ptr %call259, ptr @knownsplicing, align 8, !tbaa !5
  %252 = load ptr, ptr %dump_fp, align 8, !tbaa !5
  %call260 = call i32 @fclose(ptr noundef %252)
  br label %if.end261

if.end261:                                        ; preds = %if.else258
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then251
  %253 = load ptr, ptr @indels_file, align 8, !tbaa !5
  %cmp263 = icmp eq ptr %253, null
  br i1 %cmp263, label %if.then265, label %if.else266

if.then265:                                       ; preds = %if.end262
  br label %if.end276

if.else266:                                       ; preds = %if.end262
  %254 = load ptr, ptr @indels_file, align 8, !tbaa !5
  %call267 = call noalias ptr @fopen(ptr noundef %254, ptr noundef @.str.2)
  store ptr %call267, ptr %dump_fp, align 8, !tbaa !5
  %cmp268 = icmp eq ptr %call267, null
  br i1 %cmp268, label %if.then270, label %if.else272

if.then270:                                       ; preds = %if.else266
  %255 = load ptr, ptr @stderr, align 8, !tbaa !5
  %256 = load ptr, ptr @indels_file, align 8, !tbaa !5
  %call271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str.415, ptr noundef %256)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else272:                                       ; preds = %if.else266
  %257 = load ptr, ptr %dump_fp, align 8, !tbaa !5
  %258 = load i32, ptr @genomelength, align 4, !tbaa !12
  %call273 = call ptr @Knownindels_new_from_dump(ptr noundef %257, i32 noundef %258)
  store ptr %call273, ptr @knownindels, align 8, !tbaa !5
  %259 = load ptr, ptr %dump_fp, align 8, !tbaa !5
  %call274 = call i32 @fclose(ptr noundef %259)
  br label %if.end275

if.end275:                                        ; preds = %if.else272
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.then265
  %260 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %conv277 = zext i8 %260 to i32
  %cmp278 = icmp eq i32 %conv277, 1
  br i1 %cmp278, label %if.then284, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %if.end276
  %261 = load i8, ptr @knownsplicingp, align 1, !tbaa !14
  %conv281 = zext i8 %261 to i32
  %cmp282 = icmp eq i32 %conv281, 1
  br i1 %cmp282, label %if.then284, label %if.else285

if.then284:                                       ; preds = %lor.lhs.false280, %if.end276
  store i8 1, ptr @splicingp, align 1, !tbaa !14
  br label %if.end286

if.else285:                                       ; preds = %lor.lhs.false280
  store i8 0, ptr @splicingp, align 1, !tbaa !14
  br label %if.end286

if.end286:                                        ; preds = %if.else285, %if.then284
  %262 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %cmp287 = icmp ne ptr %262, null
  br i1 %cmp287, label %if.then289, label %if.end341

if.then289:                                       ; preds = %if.end286
  %263 = load ptr, ptr @user_tallydir, align 8, !tbaa !5
  %cmp290 = icmp eq ptr %263, null
  br i1 %cmp290, label %if.then292, label %if.else299

if.then292:                                       ; preds = %if.then289
  %264 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call293 = call ptr @IIT_read(ptr noundef %264, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call293, ptr @tally_iit, align 8, !tbaa !5
  %cmp294 = icmp ne ptr %call293, null
  br i1 %cmp294, label %if.then296, label %if.end298

if.then296:                                       ; preds = %if.then292
  %265 = load ptr, ptr @stderr, align 8, !tbaa !5
  %266 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef @.str.416, ptr noundef %266)
  br label %if.end298

if.end298:                                        ; preds = %if.then296, %if.then292
  br label %if.end313

if.else299:                                       ; preds = %if.then289
  %267 = load ptr, ptr @user_tallydir, align 8, !tbaa !5
  %call300 = call i64 @strlen(ptr noundef %267) #17
  %add301 = add i64 %call300, 1
  %268 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call302 = call i64 @strlen(ptr noundef %268) #17
  %add303 = add i64 %add301, %call302
  %add304 = add i64 %add303, 1
  %call305 = call ptr @Mem_calloc(i64 noundef %add304, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3645)
  store ptr %call305, ptr %iitfile, align 8, !tbaa !5
  %269 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %270 = load ptr, ptr @user_tallydir, align 8, !tbaa !5
  %271 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call306 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %269, ptr noundef @.str.394, ptr noundef %270, ptr noundef %271) #14
  %272 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call307 = call ptr @IIT_read(ptr noundef %272, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call307, ptr @tally_iit, align 8, !tbaa !5
  %cmp308 = icmp ne ptr %call307, null
  br i1 %cmp308, label %if.then310, label %if.end312

if.then310:                                       ; preds = %if.else299
  %273 = load ptr, ptr @stderr, align 8, !tbaa !5
  %274 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call311 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef @.str.417, ptr noundef %274)
  %275 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %275, ptr noundef @.str.1, i32 noundef 3650)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end312

if.end312:                                        ; preds = %if.then310, %if.else299
  br label %if.end313

if.end313:                                        ; preds = %if.end312, %if.end298
  %276 = load ptr, ptr @tally_iit, align 8, !tbaa !5
  %cmp314 = icmp eq ptr %276, null
  br i1 %cmp314, label %if.then316, label %if.end338

if.then316:                                       ; preds = %if.end313
  %277 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %call317 = call i64 @strlen(ptr noundef %277) #17
  %add318 = add i64 %call317, 1
  %278 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call319 = call i64 @strlen(ptr noundef %278) #17
  %add320 = add i64 %add318, %call319
  %add321 = add i64 %add320, 1
  %call322 = call ptr @Mem_calloc(i64 noundef %add321, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3655)
  store ptr %call322, ptr %iitfile, align 8, !tbaa !5
  %279 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %280 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %281 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call323 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %279, ptr noundef @.str.394, ptr noundef %280, ptr noundef %281) #14
  %282 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call324 = call ptr @IIT_read(ptr noundef %282, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call324, ptr @tally_iit, align 8, !tbaa !5
  %cmp325 = icmp ne ptr %call324, null
  br i1 %cmp325, label %if.then327, label %if.else329

if.then327:                                       ; preds = %if.then316
  %283 = load ptr, ptr @stderr, align 8, !tbaa !5
  %284 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call328 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef @.str.417, ptr noundef %284)
  %285 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %285, ptr noundef @.str.1, i32 noundef 3660)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end337

if.else329:                                       ; preds = %if.then316
  %286 = load ptr, ptr @stderr, align 8, !tbaa !5
  %287 = load ptr, ptr @tally_root, align 8, !tbaa !5
  %call330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef @.str.418, ptr noundef %287)
  %288 = load ptr, ptr @user_tallydir, align 8, !tbaa !5
  %cmp331 = icmp ne ptr %288, null
  br i1 %cmp331, label %if.then333, label %if.end335

if.then333:                                       ; preds = %if.else329
  %289 = load ptr, ptr @stderr, align 8, !tbaa !5
  %290 = load ptr, ptr @user_tallydir, align 8, !tbaa !5
  %call334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef @.str.419, ptr noundef %290)
  br label %if.end335

if.end335:                                        ; preds = %if.then333, %if.else329
  %291 = load ptr, ptr @stderr, align 8, !tbaa !5
  %292 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %call336 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %291, ptr noundef @.str.420, ptr noundef %292)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end337:                                        ; preds = %if.then327
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.end313
  %293 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %294 = load ptr, ptr @tally_iit, align 8, !tbaa !5
  %call339 = call ptr @Univ_IIT_divint_crosstable(ptr noundef %293, ptr noundef %294)
  store ptr %call339, ptr @tally_divint_crosstable, align 8, !tbaa !5
  %295 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.400)
  br label %if.end341

if.end341:                                        ; preds = %if.end338, %if.end286
  %296 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %cmp342 = icmp ne ptr %296, null
  br i1 %cmp342, label %if.then344, label %if.end396

if.then344:                                       ; preds = %if.end341
  %297 = load ptr, ptr @user_runlengthdir, align 8, !tbaa !5
  %cmp345 = icmp eq ptr %297, null
  br i1 %cmp345, label %if.then347, label %if.else354

if.then347:                                       ; preds = %if.then344
  %298 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call348 = call ptr @IIT_read(ptr noundef %298, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call348, ptr @runlength_iit, align 8, !tbaa !5
  %cmp349 = icmp ne ptr %call348, null
  br i1 %cmp349, label %if.then351, label %if.end353

if.then351:                                       ; preds = %if.then347
  %299 = load ptr, ptr @stderr, align 8, !tbaa !5
  %300 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call352 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef @.str.421, ptr noundef %300)
  br label %if.end353

if.end353:                                        ; preds = %if.then351, %if.then347
  br label %if.end368

if.else354:                                       ; preds = %if.then344
  %301 = load ptr, ptr @user_runlengthdir, align 8, !tbaa !5
  %call355 = call i64 @strlen(ptr noundef %301) #17
  %add356 = add i64 %call355, 1
  %302 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call357 = call i64 @strlen(ptr noundef %302) #17
  %add358 = add i64 %add356, %call357
  %add359 = add i64 %add358, 1
  %call360 = call ptr @Mem_calloc(i64 noundef %add359, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3683)
  store ptr %call360, ptr %iitfile, align 8, !tbaa !5
  %303 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %304 = load ptr, ptr @user_runlengthdir, align 8, !tbaa !5
  %305 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call361 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %303, ptr noundef @.str.394, ptr noundef %304, ptr noundef %305) #14
  %306 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call362 = call ptr @IIT_read(ptr noundef %306, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call362, ptr @runlength_iit, align 8, !tbaa !5
  %cmp363 = icmp ne ptr %call362, null
  br i1 %cmp363, label %if.then365, label %if.end367

if.then365:                                       ; preds = %if.else354
  %307 = load ptr, ptr @stderr, align 8, !tbaa !5
  %308 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call366 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.422, ptr noundef %308)
  %309 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %309, ptr noundef @.str.1, i32 noundef 3688)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end367

if.end367:                                        ; preds = %if.then365, %if.else354
  br label %if.end368

if.end368:                                        ; preds = %if.end367, %if.end353
  %310 = load ptr, ptr @runlength_iit, align 8, !tbaa !5
  %cmp369 = icmp eq ptr %310, null
  br i1 %cmp369, label %if.then371, label %if.end393

if.then371:                                       ; preds = %if.end368
  %311 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %call372 = call i64 @strlen(ptr noundef %311) #17
  %add373 = add i64 %call372, 1
  %312 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call374 = call i64 @strlen(ptr noundef %312) #17
  %add375 = add i64 %add373, %call374
  %add376 = add i64 %add375, 1
  %call377 = call ptr @Mem_calloc(i64 noundef %add376, i64 noundef 1, ptr noundef @.str.1, i32 noundef 3693)
  store ptr %call377, ptr %iitfile, align 8, !tbaa !5
  %313 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %314 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %315 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call378 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %313, ptr noundef @.str.394, ptr noundef %314, ptr noundef %315) #14
  %316 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call379 = call ptr @IIT_read(ptr noundef %316, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, i8 noundef zeroext 1)
  store ptr %call379, ptr @runlength_iit, align 8, !tbaa !5
  %cmp380 = icmp ne ptr %call379, null
  br i1 %cmp380, label %if.then382, label %if.else384

if.then382:                                       ; preds = %if.then371
  %317 = load ptr, ptr @stderr, align 8, !tbaa !5
  %318 = load ptr, ptr %iitfile, align 8, !tbaa !5
  %call383 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef @.str.422, ptr noundef %318)
  %319 = load ptr, ptr %iitfile, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %319, ptr noundef @.str.1, i32 noundef 3698)
  store ptr null, ptr %iitfile, align 8, !tbaa !5
  br label %if.end392

if.else384:                                       ; preds = %if.then371
  %320 = load ptr, ptr @stderr, align 8, !tbaa !5
  %321 = load ptr, ptr @runlength_root, align 8, !tbaa !5
  %call385 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef @.str.423, ptr noundef %321)
  %322 = load ptr, ptr @user_runlengthdir, align 8, !tbaa !5
  %cmp386 = icmp ne ptr %322, null
  br i1 %cmp386, label %if.then388, label %if.end390

if.then388:                                       ; preds = %if.else384
  %323 = load ptr, ptr @stderr, align 8, !tbaa !5
  %324 = load ptr, ptr @user_runlengthdir, align 8, !tbaa !5
  %call389 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef @.str.419, ptr noundef %324)
  br label %if.end390

if.end390:                                        ; preds = %if.then388, %if.else384
  %325 = load ptr, ptr @stderr, align 8, !tbaa !5
  %326 = load ptr, ptr %genomesubdir.addr, align 8, !tbaa !5
  %call391 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef @.str.420, ptr noundef %326)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end392:                                        ; preds = %if.then382
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.end368
  %327 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %328 = load ptr, ptr @runlength_iit, align 8, !tbaa !5
  %call394 = call ptr @Univ_IIT_divint_crosstable(ptr noundef %327, ptr noundef %328)
  store ptr %call394, ptr @runlength_divint_crosstable, align 8, !tbaa !5
  %329 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call395 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef @.str.400)
  br label %if.end396

if.end396:                                        ; preds = %if.end393, %if.end341
  %330 = load ptr, ptr @circularp, align 8, !tbaa !5
  %331 = load ptr, ptr @altlocp, align 8, !tbaa !5
  call void @Path_setup(ptr noundef %330, ptr noundef %331)
  %332 = load i32, ptr @output_type, align 4, !tbaa !14
  %333 = load i32, ptr @expected_pairlength, align 4, !tbaa !12
  %334 = load i32, ptr @pairlength_deviation, align 4, !tbaa !12
  call void @Pathpair_setup(i32 noundef %332, i32 noundef %333, i32 noundef %334)
  %335 = load ptr, ptr @circularp, align 8, !tbaa !5
  %336 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %337 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %338 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %339 = load i32, ptr @genomelength, align 4, !tbaa !12
  %340 = load ptr, ptr @localdb, align 8, !tbaa !5
  %341 = load i32, ptr @min_intronlength, align 4, !tbaa !12
  %342 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %343 = load i8, ptr @knownsplicingp, align 1, !tbaa !14
  call void @Path_solve_setup(ptr noundef %335, ptr noundef %336, ptr noundef %337, ptr noundef %338, i32 noundef %339, ptr noundef %340, i32 noundef %341, i8 noundef zeroext %342, i8 noundef zeroext %343)
  %344 = load ptr, ptr @circularp, align 8, !tbaa !5
  %345 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %346 = load i32, ptr @genomelength, align 4, !tbaa !12
  %347 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %348 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  call void @Path_fusion_setup(ptr noundef %344, ptr noundef %345, i32 noundef %346, i32 noundef %347, ptr noundef %348)
  %349 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %350 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  call void @Path_trim_setup(ptr noundef %349, ptr noundef %350)
  %351 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %352 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %353 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %354 = load ptr, ptr @circularp, align 8, !tbaa !5
  %355 = load ptr, ptr @chrsubsetp, align 8, !tbaa !5
  %356 = load ptr, ptr @altlocp, align 8, !tbaa !5
  %357 = load i32, ptr @index1part, align 4, !tbaa !12
  %358 = load i32, ptr @index1interval, align 4, !tbaa !12
  %359 = load i32, ptr @output_type, align 4, !tbaa !14
  %360 = load i8, ptr @md_report_snps_p, align 1, !tbaa !14
  %361 = load i8, ptr @want_random_p, align 1, !tbaa !14
  call void @Path_eval_setup(ptr noundef %351, ptr noundef %352, ptr noundef %353, ptr noundef %354, ptr noundef %355, ptr noundef %356, i32 noundef %357, i32 noundef %358, i32 noundef %359, i8 noundef zeroext %360, i8 noundef zeroext %361)
  %362 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %363 = load ptr, ptr @circularp, align 8, !tbaa !5
  %364 = load ptr, ptr @chrsubsetp, align 8, !tbaa !5
  %365 = load ptr, ptr @altlocp, align 8, !tbaa !5
  %366 = load i32, ptr @output_type, align 4, !tbaa !14
  %367 = load i8, ptr @splicingp, align 1, !tbaa !14
  %368 = load i8, ptr @want_random_p, align 1, !tbaa !14
  call void @Pathpair_eval_setup(ptr noundef %362, ptr noundef %363, ptr noundef %364, ptr noundef %365, i32 noundef %366, i8 noundef zeroext %367, i8 noundef zeroext %368)
  %369 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  call void @Path_print_alignment_setup(ptr noundef %369)
  %370 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  call void @Path_print_m8_setup(ptr noundef %370)
  %371 = load i8, ptr @add_paired_nomappers_p, align 1, !tbaa !14
  %372 = load i8, ptr @paired_flag_means_concordant_p, align 1, !tbaa !14
  %373 = load i8, ptr @quiet_if_excessive_p, align 1, !tbaa !14
  %374 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %375 = load ptr, ptr @failedinput_root, align 8, !tbaa !5
  %376 = load i8, ptr @fastq_format_p, align 1, !tbaa !14
  %377 = load i8, ptr @extend_soft_clips_p, align 1, !tbaa !14
  %378 = load i8, ptr @method_print_p, align 1, !tbaa !14
  %379 = load i8, ptr @only_concordant_p, align 1, !tbaa !14
  %380 = load i8, ptr @omit_concordant_uniq_p, align 1, !tbaa !14
  %381 = load i8, ptr @omit_concordant_mult_p, align 1, !tbaa !14
  %382 = load ptr, ptr @circularp, align 8, !tbaa !5
  %383 = load i8, ptr @clip_overlap_p, align 1, !tbaa !14
  %384 = load i8, ptr @merge_overlap_p, align 1, !tbaa !14
  %385 = load i8, ptr @merge_samechr_p, align 1, !tbaa !14
  %386 = load i8, ptr @sam_multiple_primaries_p, align 1, !tbaa !14
  %387 = load i8, ptr @sam_sparse_secondaries_p, align 1, !tbaa !14
  %388 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %389 = load ptr, ptr @transcript_iit, align 8, !tbaa !5
  %390 = load ptr, ptr @snps_iit, align 8, !tbaa !5
  %391 = load i8, ptr @maskedp, align 1, !tbaa !14
  call void @Path_print_sam_setup(i8 noundef zeroext %371, i8 noundef zeroext %372, i8 noundef zeroext %373, i32 noundef %374, ptr noundef %375, i8 noundef zeroext %376, i8 noundef zeroext %377, i8 noundef zeroext %378, i8 noundef zeroext %379, i8 noundef zeroext %380, i8 noundef zeroext %381, ptr noundef %382, i8 noundef zeroext %383, i8 noundef zeroext %384, i8 noundef zeroext %385, i8 noundef zeroext %386, i8 noundef zeroext %387, ptr noundef %388, ptr noundef %389, ptr noundef %390, i8 noundef zeroext %391)
  %392 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %393 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %394 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  call void @Trpath_solve_setup(ptr noundef %392, ptr noundef %393, ptr noundef %394)
  %395 = load i32, ptr @index1part, align 4, !tbaa !12
  %396 = load i32, ptr @index1interval, align 4, !tbaa !12
  %397 = load i32, ptr @index1part_tr, align 4, !tbaa !12
  %398 = load ptr, ptr @tr_indexdb, align 8, !tbaa !5
  %399 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %400 = load ptr, ptr @transcript_ef64, align 8, !tbaa !5
  %401 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %402 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %403 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  call void @Transcriptome_search_setup(i32 noundef %395, i32 noundef %396, i32 noundef %397, ptr noundef %398, ptr noundef %399, ptr noundef %400, ptr noundef %401, ptr noundef %402, ptr noundef %403)
  %404 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %405 = load i32, ptr @transcriptomelength, align 4, !tbaa !12
  %406 = load ptr, ptr @transcript_ef64, align 8, !tbaa !5
  %407 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %408 = load ptr, ptr @tr_indexdb, align 8, !tbaa !5
  %409 = load i32, ptr @index1part_tr, align 4, !tbaa !12
  %410 = load i32, ptr @maxpaths_search, align 4, !tbaa !12
  call void @Tr_extension_search_setup(ptr noundef %404, i32 noundef %405, ptr noundef %406, ptr noundef %407, ptr noundef %408, i32 noundef %409, i32 noundef %410)
  %411 = load i32, ptr @index1part, align 4, !tbaa !12
  %412 = load i32, ptr @index1interval, align 4, !tbaa !12
  %413 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %414 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %415 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %416 = load i32, ptr @genomelength, align 4, !tbaa !12
  %417 = load i8, ptr @splicingp, align 1, !tbaa !14
  call void @Kmer_search_setup(i32 noundef %411, i32 noundef %412, ptr noundef %413, ptr noundef %414, ptr noundef %415, i32 noundef %416, i8 noundef zeroext %417)
  %418 = load i32, ptr @mode, align 4, !tbaa !14
  %419 = load i32, ptr @genomelength, align 4, !tbaa !12
  %420 = load i32, ptr @circular_typeint, align 4, !tbaa !12
  %421 = load ptr, ptr @circularp, align 8, !tbaa !5
  %422 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %423 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %424 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %425 = load ptr, ptr @indexdb, align 8, !tbaa !5
  %426 = load ptr, ptr @indexdb_nonstd, align 8, !tbaa !5
  %427 = load i32, ptr @index1part, align 4, !tbaa !12
  %428 = load i32, ptr @index1interval, align 4, !tbaa !12
  %429 = load i32, ptr @maxpaths_search, align 4, !tbaa !12
  call void @Extension_search_setup(i32 noundef %418, i32 noundef %419, i32 noundef %420, ptr noundef %421, ptr noundef %422, ptr noundef %423, ptr noundef %424, ptr noundef %425, ptr noundef %426, i32 noundef %427, i32 noundef %428, i32 noundef %429)
  %430 = load i32, ptr @index1part, align 4, !tbaa !12
  %call397 = call ptr @Repetitive_setup(i32 noundef %430)
  store ptr %call397, ptr @repetitive_ef64, align 8, !tbaa !5
  %431 = load i32, ptr @index1part, align 4, !tbaa !12
  %432 = load i32, ptr @index1interval, align 4, !tbaa !12
  %433 = load i32, ptr @max_anchors, align 4, !tbaa !12
  %434 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %435 = load i32, ptr @nchromosomes, align 4, !tbaa !12
  %436 = load i32, ptr @circular_typeint, align 4, !tbaa !12
  %437 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %438 = load i32, ptr @mode, align 4, !tbaa !14
  call void @Segment_search_setup(i32 noundef %431, i32 noundef %432, i32 noundef %433, ptr noundef %434, i32 noundef %435, i32 noundef %436, ptr noundef %437, i32 noundef %438)
  %439 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %cmp398 = icmp eq ptr %439, null
  br i1 %cmp398, label %if.then400, label %if.else402

if.then400:                                       ; preds = %if.end396
  %440 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call401 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %440, ptr noundef @.str.424)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else402:                                       ; preds = %if.end396
  %441 = load i8, ptr @query_unk_mismatch_p, align 1, !tbaa !14
  %442 = load i8, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  %443 = load i32, ptr @mode, align 4, !tbaa !14
  call void @Genomebits_consec_setup(i8 noundef zeroext %441, i8 noundef zeroext %442, i32 noundef %443)
  %444 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %445 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %tobool = icmp ne ptr %445, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else402
  %446 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.else402
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %446, %cond.true ], [ null, %cond.false ]
  %447 = load i8, ptr @query_unk_mismatch_p, align 1, !tbaa !14
  %448 = load i8, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  %449 = load i32, ptr @mode, align 4, !tbaa !14
  %450 = load i8, ptr @md_report_snps_p, align 1, !tbaa !14
  %451 = load i8, ptr @maskedp, align 1, !tbaa !14
  call void @Genomebits_count_setup(ptr noundef %444, ptr noundef %cond, i8 noundef zeroext %447, i8 noundef zeroext %448, i32 noundef %449, i8 noundef zeroext %450, i8 noundef zeroext %451)
  %452 = load i8, ptr @query_unk_mismatch_p, align 1, !tbaa !14
  %453 = load i8, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  %454 = load i32, ptr @mode, align 4, !tbaa !14
  %455 = load i8, ptr @maskedp, align 1, !tbaa !14
  call void @Genomebits_mismatches_setup(i8 noundef zeroext %452, i8 noundef zeroext %453, i32 noundef %454, i8 noundef zeroext %455)
  %456 = load i8, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  %457 = load i32, ptr @mode, align 4, !tbaa !14
  call void @Genomebits_kmer_setup(i8 noundef zeroext %456, i32 noundef %457)
  %458 = load i32, ptr @max_end_insertions, align 4, !tbaa !12
  %459 = load i32, ptr @max_end_deletions, align 4, !tbaa !12
  %460 = load i8, ptr @query_unk_mismatch_p, align 1, !tbaa !14
  %461 = load i8, ptr @genome_unk_mismatch_p, align 1, !tbaa !14
  %462 = load i32, ptr @mode, align 4, !tbaa !14
  %463 = load i8, ptr @maskedp, align 1, !tbaa !14
  call void @Genomebits_indel_setup(i32 noundef %458, i32 noundef %459, i8 noundef zeroext %460, i8 noundef zeroext %461, i32 noundef %462, i8 noundef zeroext %463)
  br label %if.end403

if.end403:                                        ; preds = %cond.end
  %464 = load ptr, ptr @genome, align 8, !tbaa !5
  %465 = load ptr, ptr @genomealt, align 8, !tbaa !5
  call void @Genome_sites_setup(ptr noundef %464, ptr noundef %465)
  %466 = load ptr, ptr @genome, align 8, !tbaa !5
  %467 = load ptr, ptr @genomealt, align 8, !tbaa !5
  call void @Maxent_hr_setup(ptr noundef %466, ptr noundef %467)
  %468 = load i8, ptr @splicingp, align 1, !tbaa !14
  %469 = load ptr, ptr @transcript_iit, align 8, !tbaa !5
  %470 = load i8, ptr @sam_insert_0M_p, align 1, !tbaa !14
  %471 = load ptr, ptr @snps_iit, align 8, !tbaa !5
  %tobool404 = icmp ne ptr %471, null
  %472 = zext i1 %tobool404 to i64
  %cond405 = select i1 %tobool404, i32 1, i32 0
  %conv406 = trunc i32 %cond405 to i8
  %473 = load i8, ptr @sam_cigar_extended_p, align 1, !tbaa !14
  %474 = load i32, ptr @cigar_action, align 4, !tbaa !14
  call void @Simplepair_setup(i8 noundef zeroext %468, ptr noundef %469, i8 noundef zeroext %470, i8 noundef zeroext 0, i8 noundef zeroext %conv406, i8 noundef zeroext %473, i32 noundef %474)
  %475 = load i32, ptr @index1part, align 4, !tbaa !12
  %476 = load i32, ptr @index1interval, align 4, !tbaa !12
  %add407 = add nsw i32 %475, %476
  %sub = sub nsw i32 %add407, 1
  store i32 %sub, ptr @min_querylength, align 4, !tbaa !12
  %477 = load i32, ptr @index1part, align 4, !tbaa !12
  call void @Indexdb_setup(i32 noundef %477)
  %478 = load ptr, ptr @genome, align 8, !tbaa !5
  %479 = load i32, ptr @genomelength, align 4, !tbaa !12
  %480 = load i32, ptr @index1part, align 4, !tbaa !12
  %481 = load i32, ptr @index1interval, align 4, !tbaa !12
  call void @Localdb_setup(ptr noundef %478, i32 noundef %479, i32 noundef %480, i32 noundef %481)
  %482 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %483 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %484 = load i8, ptr @novelsplicingp, align 1, !tbaa !14
  %485 = load i32, ptr @min_shortend, align 4, !tbaa !12
  call void @Splice_setup(ptr noundef %482, ptr noundef %483, i8 noundef zeroext %484, i32 noundef %485)
  %486 = load ptr, ptr @circularp, align 8, !tbaa !5
  %487 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %488 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %489 = load i32, ptr @genomelength, align 4, !tbaa !12
  %490 = load ptr, ptr @localdb, align 8, !tbaa !5
  %491 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %492 = load i8, ptr @allow_soft_clips_p, align 1, !tbaa !14
  call void @Spliceends_setup(ptr noundef %486, ptr noundef %487, ptr noundef %488, i32 noundef %489, ptr noundef %490, i32 noundef %491, i8 noundef zeroext %492)
  %493 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %494 = load ptr, ptr @genomebits_alt, align 8, !tbaa !5
  %495 = load i32, ptr @max_end_insertions, align 4, !tbaa !12
  %496 = load i32, ptr @max_end_deletions, align 4, !tbaa !12
  %497 = load i32, ptr @min_indel_end_matches, align 4, !tbaa !12
  %498 = load i32, ptr @indel_penalty_middle, align 4, !tbaa !12
  %499 = load i8, ptr @maskedp, align 1, !tbaa !14
  call void @Indel_setup(ptr noundef %493, ptr noundef %494, i32 noundef %495, i32 noundef %496, i32 noundef %497, i32 noundef %498, i8 noundef zeroext %499)
  %500 = load i32, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %501 = load i32, ptr @output_type, align 4, !tbaa !14
  %502 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %503 = load ptr, ptr @transcript_iit, align 8, !tbaa !5
  call void @Transcript_setup(i32 noundef %500, i32 noundef %501, ptr noundef %502, ptr noundef %503)
  %504 = load ptr, ptr @circularp, align 8, !tbaa !5
  %505 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %506 = load ptr, ptr @transcript_map_iit, align 8, !tbaa !5
  call void @Transcript_remap_setup(ptr noundef %504, ptr noundef %505, ptr noundef %506)
  %507 = load i32, ptr @wellpos, align 4, !tbaa !12
  call void @Single_cell_setup(i32 noundef %507)
  %508 = load ptr, ptr @indexdb, align 8, !tbaa !5
  %509 = load ptr, ptr @indexdb_nonstd, align 8, !tbaa !5
  %510 = load ptr, ptr @tr_indexdb, align 8, !tbaa !5
  %511 = load i32, ptr @index1part_tr, align 4, !tbaa !12
  %512 = load i32, ptr @index1part, align 4, !tbaa !12
  %513 = load i32, ptr @index1interval, align 4, !tbaa !12
  %514 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %515 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  call void @Stage1hr_setup(ptr noundef %508, ptr noundef %509, ptr noundef %510, i32 noundef %511, i32 noundef %512, i32 noundef %513, i32 noundef %514, ptr noundef %515)
  %516 = load i32, ptr @mode, align 4, !tbaa !14
  %517 = load i32, ptr @index1part, align 4, !tbaa !12
  %518 = load i32, ptr @index1interval, align 4, !tbaa !12
  %519 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %520 = load i8, ptr @genome_align_p, align 1, !tbaa !14
  %521 = load i8, ptr @transcriptome_align_p, align 1, !tbaa !14
  %522 = load double, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %523 = load double, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %524 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %525 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %526 = load i8, ptr @splicingp, align 1, !tbaa !14
  %527 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %528 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  call void @Stage1hr_single_setup(i32 noundef %516, i32 noundef %517, i32 noundef %518, ptr noundef %519, i8 noundef zeroext %520, i8 noundef zeroext %521, double noundef %522, double noundef %523, double noundef %524, double noundef %525, i8 noundef zeroext %526, i32 noundef %527, i32 noundef %528)
  %529 = load i32, ptr @mode, align 4, !tbaa !14
  %530 = load i32, ptr @index1part, align 4, !tbaa !12
  %531 = load i32, ptr @index1interval, align 4, !tbaa !12
  %532 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %533 = load double, ptr @user_nmismatches_filter_float, align 8, !tbaa !27
  %534 = load double, ptr @user_mincoverage_filter_float, align 8, !tbaa !27
  %535 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %536 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %537 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %538 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %539 = load i8, ptr @splicingp, align 1, !tbaa !14
  %540 = load i32, ptr @maxpaths_search, align 4, !tbaa !12
  %541 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %542 = load ptr, ptr @circularp, align 8, !tbaa !5
  %543 = load i32, ptr @pairmax_linear, align 4, !tbaa !12
  %544 = load i32, ptr @pairmax_circular, align 4, !tbaa !12
  call void @Stage1hr_paired_setup(i32 noundef %529, i32 noundef %530, i32 noundef %531, ptr noundef %532, double noundef %533, double noundef %534, double noundef %535, double noundef %536, i32 noundef %537, i32 noundef %538, i8 noundef zeroext %539, i32 noundef %540, i32 noundef %541, ptr noundef %542, i32 noundef %543, i32 noundef %544)
  %545 = load i32, ptr @subopt_levels, align 4, !tbaa !12
  %546 = load i32, ptr @pairmax_transcriptome, align 4, !tbaa !12
  %547 = load i32, ptr @pairmax_linear, align 4, !tbaa !12
  %548 = load i32, ptr @pairmax_circular, align 4, !tbaa !12
  %549 = load ptr, ptr @circularp, align 8, !tbaa !5
  %550 = load i8, ptr @merge_samechr_p, align 1, !tbaa !14
  %551 = load i8, ptr @two_pass_p, align 1, !tbaa !14
  call void @Concordance_setup(i32 noundef %545, i32 noundef %546, i32 noundef %547, i32 noundef %548, ptr noundef %549, i8 noundef zeroext %550, i8 noundef zeroext %551)
  %552 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %553 = load i8, ptr @nofailsp, align 1, !tbaa !14
  %554 = load i8, ptr @failsonlyp, align 1, !tbaa !14
  %555 = load i8, ptr @quiet_if_excessive_p, align 1, !tbaa !14
  %556 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %557 = load ptr, ptr @failedinput_root, align 8, !tbaa !5
  %558 = load i32, ptr @quality_shift, align 4, !tbaa !12
  %559 = load i32, ptr @output_type, align 4, !tbaa !14
  %560 = load i8, ptr @invert_first_p, align 1, !tbaa !14
  %561 = load i8, ptr @invert_second_p, align 1, !tbaa !14
  %562 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %563 = load ptr, ptr @sam_read_group_id, align 8, !tbaa !5
  call void @Output_setup(ptr noundef %552, i8 noundef zeroext %553, i8 noundef zeroext %554, i8 noundef zeroext %555, i32 noundef %556, ptr noundef %557, i32 noundef %558, i32 noundef %559, i8 noundef zeroext %560, i8 noundef zeroext %561, i8 noundef zeroext %562, ptr noundef %563)
  call void @llvm.lifetime.end.p0(i64 8, ptr %dump_fp) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx_filesuffix2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx_filesuffix1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %iitfile) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapdir) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %modedir) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %snpsdir) #14
  ret void
}

declare ptr @Stopwatch_new(...) #4

declare void @Stopwatch_start(ptr noundef) #4

declare ptr @Outbuffer_new(i32 noundef, i32 noundef) #4

declare void @Inbuffer_set_outbuffer(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #5

declare ptr @Uinttableuint_new(i32 noundef) #4

declare ptr @Uinttable_new(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #5

declare void @Except_init_pthread(...) #4

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @Outbuffer_thread_pass1(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @worker_thread(ptr noundef %data) #1 {
entry:
  %data.addr = alloca ptr, align 8
  %request = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %fp_failedinput = alloca ptr, align 8
  %fp_failedinput_1 = alloca ptr, align 8
  %fp_failedinput_2 = alloca ptr, align 8
  %queryseq1 = alloca ptr, align 8
  %worker_stopwatch = alloca ptr, align 8
  %trdiagpool = alloca ptr, align 8
  %univdiagpool = alloca ptr, align 8
  %intlistpool = alloca ptr, align 8
  %uintlistpool = alloca ptr, align 8
  %univcoordlistpool = alloca ptr, align 8
  %listpool = alloca ptr, align 8
  %trpathpool = alloca ptr, align 8
  %pathpool = alloca ptr, align 8
  %hitlistpool = alloca ptr, align 8
  %transcriptpool = alloca ptr, align 8
  %vectorpool = alloca ptr, align 8
  %spliceendsgen = alloca ptr, align 8
  %spliceendsgen5 = alloca ptr, align 8
  %spliceendsgen3 = alloca ptr, align 8
  %worker_jobid = alloca i32, align 4
  %worker_runtime = alloca double, align 8
  %except_flag = alloca i32, align 4
  %frame = alloca %struct.Except_Frame_T, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_failedinput) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_failedinput_1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_failedinput_2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker_stopwatch) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %trdiagpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %univdiagpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %intlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %uintlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %univcoordlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %listpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %trpathpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %hitlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcriptpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %vectorpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceendsgen) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceendsgen5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceendsgen3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %worker_jobid) #14
  store i32 0, ptr %worker_jobid, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker_runtime) #14
  %call = call ptr @Trdiagpool_new()
  store ptr %call, ptr %trdiagpool, align 8, !tbaa !5
  %0 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  call void @Trdiagpool_init(ptr noundef %0)
  %call1 = call ptr @Univdiagpool_new()
  store ptr %call1, ptr %univdiagpool, align 8, !tbaa !5
  %1 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  call void @Univdiagpool_init(ptr noundef %1)
  %call2 = call ptr @Intlistpool_new()
  store ptr %call2, ptr %intlistpool, align 8, !tbaa !5
  %2 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  call void @Intlistpool_init(ptr noundef %2)
  %call3 = call ptr @Uintlistpool_new()
  store ptr %call3, ptr %uintlistpool, align 8, !tbaa !5
  %3 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  call void @Uintlistpool_init(ptr noundef %3)
  %call4 = call ptr @Uintlistpool_new()
  store ptr %call4, ptr %univcoordlistpool, align 8, !tbaa !5
  %4 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  call void @Uintlistpool_init(ptr noundef %4)
  %call5 = call ptr @Listpool_new()
  store ptr %call5, ptr %listpool, align 8, !tbaa !5
  %5 = load ptr, ptr %listpool, align 8, !tbaa !5
  call void @Listpool_init(ptr noundef %5)
  %call6 = call ptr @Trpathpool_new()
  store ptr %call6, ptr %trpathpool, align 8, !tbaa !5
  %6 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  call void @Trpathpool_init(ptr noundef %6)
  %call7 = call ptr @Pathpool_new()
  store ptr %call7, ptr %pathpool, align 8, !tbaa !5
  %7 = load ptr, ptr %pathpool, align 8, !tbaa !5
  call void @Pathpool_init(ptr noundef %7)
  %call8 = call ptr @Hitlistpool_new()
  store ptr %call8, ptr %hitlistpool, align 8, !tbaa !5
  %8 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  call void @Hitlistpool_init(ptr noundef %8)
  %call9 = call ptr @Transcriptpool_new()
  store ptr %call9, ptr %transcriptpool, align 8, !tbaa !5
  %9 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  call void @Transcriptpool_init(ptr noundef %9)
  %call10 = call ptr @Vectorpool_new()
  store ptr %call10, ptr %vectorpool, align 8, !tbaa !5
  %10 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  call void @Vectorpool_init(ptr noundef %10)
  %call11 = call ptr (...) @Spliceendsgen_new()
  store ptr %call11, ptr %spliceendsgen, align 8, !tbaa !5
  %call12 = call ptr (...) @Spliceendsgen_new()
  store ptr %call12, ptr %spliceendsgen5, align 8, !tbaa !5
  %call13 = call ptr (...) @Spliceendsgen_new()
  store ptr %call13, ptr %spliceendsgen3, align 8, !tbaa !5
  %11 = load i8, ptr @timingp, align 1, !tbaa !14
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call15 = call ptr (...) @Stopwatch_new()
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call15, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %worker_stopwatch, align 8, !tbaa !5
  call void (...) @Except_stack_create()
  br label %while.cond

while.cond:                                       ; preds = %if.end108, %cond.end
  %12 = load ptr, ptr @inbuffer, align 8, !tbaa !5
  %call16 = call ptr @Inbuffer_get_request(ptr noundef %12)
  store ptr %call16, ptr %request, align 8, !tbaa !5
  %cmp17 = icmp ne ptr %call16, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, ptr @global_request_key, align 4, !tbaa !12
  %14 = load ptr, ptr %request, align 8, !tbaa !5
  %call19 = call i32 @pthread_setspecific(i32 noundef %13, ptr noundef %14) #14
  br label %do.body

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %except_flag) #14
  call void @llvm.lifetime.start.p0(i64 232, ptr %frame) #14
  call void @Except_link_stack(ptr noundef %frame)
  %env = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], ptr %env, i64 0, i64 0
  %call20 = call i32 @_setjmp(ptr noundef %arraydecay) #18
  store volatile i32 %call20, ptr %except_flag, align 4, !tbaa !12
  %15 = load volatile i32, ptr %except_flag, align 4, !tbaa !12
  %cmp21 = icmp eq i32 %15, 0
  br i1 %cmp21, label %if.then, label %if.else46

if.then:                                          ; preds = %do.body
  %16 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp23 = icmp eq i32 %16, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then
  %17 = load ptr, ptr %request, align 8, !tbaa !5
  %18 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  %19 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  %20 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  %21 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  %22 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  %23 = load ptr, ptr %listpool, align 8, !tbaa !5
  %24 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  %25 = load ptr, ptr %pathpool, align 8, !tbaa !5
  %26 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  %27 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  %28 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  %29 = load ptr, ptr %spliceendsgen, align 8, !tbaa !5
  %30 = load ptr, ptr %spliceendsgen5, align 8, !tbaa !5
  %31 = load ptr, ptr %spliceendsgen3, align 8, !tbaa !5
  call void @process_request_pass1(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31)
  br label %if.end32

if.else:                                          ; preds = %if.then
  %32 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp26 = icmp eq i32 %32, 1
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else
  %33 = load ptr, ptr %request, align 8, !tbaa !5
  %34 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  %35 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  %36 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  %37 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  %38 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  %39 = load ptr, ptr %listpool, align 8, !tbaa !5
  %40 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  %41 = load ptr, ptr %pathpool, align 8, !tbaa !5
  %42 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  %43 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  %44 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  %45 = load ptr, ptr %spliceendsgen, align 8, !tbaa !5
  %46 = load ptr, ptr %spliceendsgen5, align 8, !tbaa !5
  %47 = load ptr, ptr %spliceendsgen3, align 8, !tbaa !5
  %48 = load ptr, ptr %worker_stopwatch, align 8, !tbaa !5
  %call29 = call ptr @process_request_pass2(ptr noundef %fp_failedinput, ptr noundef %fp_failedinput_1, ptr noundef %fp_failedinput_2, ptr noundef %worker_runtime, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48)
  store ptr %call29, ptr %fp, align 8, !tbaa !5
  br label %if.end

if.else30:                                        ; preds = %if.else
  %49 = load ptr, ptr @stderr, align 8, !tbaa !5
  %50 = load i32, ptr @pass, align 4, !tbaa !14
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.425, i32 noundef %50)
  call void @abort() #15
  unreachable

if.end:                                           ; preds = %if.then28
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then25
  %51 = load i8, ptr @timingp, align 1, !tbaa !14
  %conv33 = zext i8 %51 to i32
  %cmp34 = icmp eq i32 %conv33, 1
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end32
  %52 = load ptr, ptr %request, align 8, !tbaa !5
  %call37 = call ptr @Request_queryseq1(ptr noundef %52)
  store ptr %call37, ptr %queryseq1, align 8, !tbaa !5
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %54 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call38 = call ptr @Shortread_accession(ptr noundef %54)
  %55 = load double, ptr %worker_runtime, align 8, !tbaa !27
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.426, ptr noundef %call38, double noundef %55)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end32
  %56 = load volatile i32, ptr %except_flag, align 4, !tbaa !12
  %cmp41 = icmp eq i32 %56, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %call44 = call ptr (...) @Except_advance_stack()
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  br label %if.end77

if.else46:                                        ; preds = %do.body
  store volatile i32 2, ptr %except_flag, align 4, !tbaa !12
  %57 = load ptr, ptr %request, align 8, !tbaa !5
  %call47 = call ptr @Request_queryseq1(ptr noundef %57)
  store ptr %call47, ptr %queryseq1, align 8, !tbaa !5
  %58 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %cmp48 = icmp eq ptr %58, null
  br i1 %cmp48, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.else46
  %59 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.427)
  br label %if.end65

if.else52:                                        ; preds = %if.else46
  %60 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call53 = call ptr @Shortread_accession(ptr noundef %60)
  %cmp54 = icmp eq ptr %call53, null
  br i1 %cmp54, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.else52
  %61 = load ptr, ptr @stderr, align 8, !tbaa !5
  %62 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call57 = call i32 @Shortread_fulllength(ptr noundef %62)
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.428, i32 noundef %call57)
  br label %if.end64

if.else59:                                        ; preds = %if.else52
  %63 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.371)
  %64 = load ptr, ptr @stderr, align 8, !tbaa !5
  %65 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call61 = call ptr @Shortread_accession(ptr noundef %65)
  %66 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call62 = call i32 @Shortread_fulllength(ptr noundef %66)
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.429, ptr noundef %call61, i32 noundef %call62)
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.then56
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then50
  %67 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.21)
  %68 = load ptr, ptr %request, align 8, !tbaa !5
  %call67 = call ptr @Request_queryseq2(ptr noundef %68)
  %cmp68 = icmp eq ptr %call67, null
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end65
  %69 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %70 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  call void @Shortread_stderr_query_singleend_fasta(ptr noundef %69, ptr noundef %70)
  br label %if.end73

if.else71:                                        ; preds = %if.end65
  %71 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %72 = load ptr, ptr %request, align 8, !tbaa !5
  %call72 = call ptr @Request_queryseq2(ptr noundef %72)
  %73 = load i8, ptr @invert_first_p, align 1, !tbaa !14
  %74 = load i8, ptr @invert_second_p, align 1, !tbaa !14
  call void @Shortread_stderr_query_pairedend_fasta(ptr noundef %71, ptr noundef %call72, i8 noundef zeroext %73, i8 noundef zeroext %74)
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then70
  %75 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.21)
  %76 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.430)
  %77 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.431)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end77:                                         ; preds = %if.end45
  %78 = load volatile i32, ptr %except_flag, align 4, !tbaa !12
  %cmp78 = icmp eq i32 %78, 1
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end77
  %exception = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 4
  %79 = load ptr, ptr %exception, align 8, !tbaa !37
  %file = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 2
  %80 = load ptr, ptr %file, align 8, !tbaa !39
  %line = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 3
  %81 = load i32, ptr %line, align 8, !tbaa !40
  call void @Except_raise(ptr noundef %79, ptr noundef %80, i32 noundef %81)
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end77
  call void @llvm.lifetime.end.p0(i64 232, ptr %frame) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %except_flag) #14
  br label %do.cond

do.cond:                                          ; preds = %if.end81
  br label %do.end

do.end:                                           ; preds = %do.cond
  %82 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp82 = icmp eq i32 %82, 0
  br i1 %cmp82, label %if.then84, label %if.else86

if.then84:                                        ; preds = %do.end
  %83 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %84 = load ptr, ptr %request, align 8, !tbaa !5
  %call85 = call i32 @Request_id(ptr noundef %84)
  call void @Outbuffer_put_pass1(ptr noundef %83, i32 noundef %call85)
  br label %if.end104

if.else86:                                        ; preds = %do.end
  %85 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp87 = icmp eq i32 %85, 1
  br i1 %cmp87, label %if.then89, label %if.end103

if.then89:                                        ; preds = %if.else86
  %86 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %86)
  %87 = load ptr, ptr %fp_failedinput, align 8, !tbaa !5
  %cmp90 = icmp ne ptr %87, null
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.then89
  %88 = load ptr, ptr %fp_failedinput, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %88)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.then89
  %89 = load ptr, ptr %fp_failedinput_1, align 8, !tbaa !5
  %cmp94 = icmp ne ptr %89, null
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  %90 = load ptr, ptr %fp_failedinput_1, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %90)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93
  %91 = load ptr, ptr %fp_failedinput_2, align 8, !tbaa !5
  %cmp98 = icmp ne ptr %91, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end97
  %92 = load ptr, ptr %fp_failedinput_2, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %92)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end97
  %93 = load ptr, ptr @outbuffer, align 8, !tbaa !5
  %94 = load ptr, ptr %request, align 8, !tbaa !5
  %call102 = call i32 @Request_id(ptr noundef %94)
  %95 = load ptr, ptr %fp, align 8, !tbaa !5
  %96 = load ptr, ptr %fp_failedinput, align 8, !tbaa !5
  %97 = load ptr, ptr %fp_failedinput_1, align 8, !tbaa !5
  %98 = load ptr, ptr %fp_failedinput_2, align 8, !tbaa !5
  call void @Outbuffer_put_filestrings(ptr noundef %93, i32 noundef %call102, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %98)
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.else86
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then84
  %99 = load i32, ptr %worker_jobid, align 4, !tbaa !12
  %rem = srem i32 %99, 1
  %cmp105 = icmp eq i32 %rem, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  %100 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  call void @Trdiagpool_reset_memory(ptr noundef %100)
  %101 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  call void @Univdiagpool_reset_memory(ptr noundef %101)
  %102 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  call void @Intlistpool_reset_memory(ptr noundef %102)
  %103 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  call void @Uintlistpool_reset_memory(ptr noundef %103)
  %104 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  call void @Uintlistpool_reset_memory(ptr noundef %104)
  %105 = load ptr, ptr %listpool, align 8, !tbaa !5
  call void @Listpool_reset_memory(ptr noundef %105)
  %106 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  call void @Trpathpool_reset_memory(ptr noundef %106)
  %107 = load ptr, ptr %pathpool, align 8, !tbaa !5
  call void @Pathpool_reset_memory(ptr noundef %107)
  %108 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  call void @Hitlistpool_reset_memory(ptr noundef %108)
  %109 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  call void @Transcriptpool_reset_memory(ptr noundef %109)
  %110 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  call void @Vectorpool_reset_memory(ptr noundef %110)
  %111 = load ptr, ptr %spliceendsgen, align 8, !tbaa !5
  call void @Spliceendsgen_free_memory(ptr noundef %111)
  %112 = load ptr, ptr %spliceendsgen5, align 8, !tbaa !5
  call void @Spliceendsgen_free_memory(ptr noundef %112)
  %113 = load ptr, ptr %spliceendsgen3, align 8, !tbaa !5
  call void @Spliceendsgen_free_memory(ptr noundef %113)
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end104
  call void @Request_free(ptr noundef %request)
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %while.cond
  call void (...) @Except_stack_destroy()
  %114 = load ptr, ptr %worker_stopwatch, align 8, !tbaa !5
  %cmp109 = icmp ne ptr %114, null
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %while.end
  call void @Stopwatch_free(ptr noundef %worker_stopwatch)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %while.end
  call void @Spliceendsgen_free(ptr noundef %spliceendsgen3)
  call void @Spliceendsgen_free(ptr noundef %spliceendsgen5)
  call void @Spliceendsgen_free(ptr noundef %spliceendsgen)
  call void @Vectorpool_free(ptr noundef %vectorpool)
  call void @Transcriptpool_free(ptr noundef %transcriptpool)
  call void @Hitlistpool_free(ptr noundef %hitlistpool)
  call void @Trpathpool_free(ptr noundef %trpathpool)
  call void @Pathpool_free(ptr noundef %pathpool)
  call void @Listpool_free(ptr noundef %listpool)
  call void @Uintlistpool_free(ptr noundef %univcoordlistpool)
  call void @Uintlistpool_free(ptr noundef %uintlistpool)
  call void @Intlistpool_free(ptr noundef %intlistpool)
  call void @Univdiagpool_free(ptr noundef %univdiagpool)
  call void @Trdiagpool_free(ptr noundef %trdiagpool)
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker_runtime) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %worker_jobid) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceendsgen3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceendsgen5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceendsgen) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %vectorpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcriptpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %hitlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %trpathpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %listpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %univcoordlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %uintlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %intlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %univdiagpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %trdiagpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker_stopwatch) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_failedinput_2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_failedinput_1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_failedinput) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #14
  ret ptr null
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32 noundef) #5

declare double @Stopwatch_stop(ptr noundef) #4

declare i32 @Outbuffer_nread(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #5

declare void @Knownsplicing_free(ptr noundef) #4

declare ptr @Knownsplicing_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #4

declare ptr @Knownindels_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Pathpair_analyze_insertlengths(ptr noundef, ptr noundef, ptr noundef) #4

declare void @Pathpair_pass2_setup(i32 noundef, i32 noundef) #4

declare void @Concordance_pass2_setup(double noundef, double noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Uintlist_free(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %prev, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %prev, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Uintlist_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !42
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %3, ptr %4, align 8, !tbaa !5
  %5 = load ptr, ptr %prev, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %5, ptr noundef @.str.432, i32 noundef 81)
  store ptr null, ptr %prev, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #14
  ret void
}

declare void @Uinttable_free(ptr noundef) #4

declare void @Uinttableuint_free(ptr noundef) #4

declare void @Outbuffer_free(ptr noundef) #4

declare void @Inbuffer_free(ptr noundef) #4

declare void @Filestring_setup(i8 noundef zeroext) #4

declare void @SAM_header_setup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Outbuffer_setup(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) #4

declare ptr @Outbuffer_thread_ordered(ptr noundef) #4

declare ptr @Outbuffer_thread_anyorder(ptr noundef) #4

declare void @Stopwatch_free(ptr noundef) #4

declare void @Outbuffer_close_files(...) #4

declare void @Outbuffer_cleanup(...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #8 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !5
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #14
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal ptr @check_valid_int(ptr noundef %string) #1 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = call ptr @__ctype_b_loc() #16
  %6 = load ptr, ptr %call, align 8, !tbaa !5
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %conv5 = sext i8 %8 to i32
  %idxprom = sext i32 %conv5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %idxprom
  %9 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %conv6 = zext i16 %9 to i32
  %and = and i32 %conv6, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.331, ptr noundef %11)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end9:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %12 = load ptr, ptr %p, align 8, !tbaa !5
  %13 = load i8, ptr %12, align 1, !tbaa !14
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call13 = call ptr @__ctype_b_loc() #16
  %14 = load ptr, ptr %call13, align 8, !tbaa !5
  %15 = load ptr, ptr %p, align 8, !tbaa !5
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %conv14 = sext i8 %16 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %14, i64 %idxprom15
  %17 = load i16, ptr %arrayidx16, align 2, !tbaa !18
  %conv17 = zext i16 %17 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool19, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr20, ptr %p, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %p, align 8, !tbaa !5
  %21 = load i8, ptr %20, align 1, !tbaa !14
  %conv21 = sext i8 %21 to i32
  %cmp22 = icmp eq i32 %conv21, 101
  br i1 %cmp22, label %if.then24, label %if.end57

if.then24:                                        ; preds = %while.end
  %22 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr25 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr25, ptr %p, align 8, !tbaa !5
  %23 = load ptr, ptr %p, align 8, !tbaa !5
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 43
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then24
  %25 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr30 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr30, ptr %p, align 8, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then24
  %call32 = call ptr @__ctype_b_loc() #16
  %26 = load ptr, ptr %call32, align 8, !tbaa !5
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %conv33 = sext i8 %28 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %26, i64 %idxprom34
  %29 = load i16, ptr %arrayidx35, align 2, !tbaa !18
  %conv36 = zext i16 %29 to i32
  %and37 = and i32 %conv36, 2048
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end31
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  br label %while.cond41

while.cond41:                                     ; preds = %while.body54, %if.end40
  %30 = load ptr, ptr %p, align 8, !tbaa !5
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp ne i32 %conv42, 0
  br i1 %cmp43, label %land.rhs45, label %land.end53

land.rhs45:                                       ; preds = %while.cond41
  %call46 = call ptr @__ctype_b_loc() #16
  %32 = load ptr, ptr %call46, align 8, !tbaa !5
  %33 = load ptr, ptr %p, align 8, !tbaa !5
  %34 = load i8, ptr %33, align 1, !tbaa !14
  %conv47 = sext i8 %34 to i32
  %idxprom48 = sext i32 %conv47 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %32, i64 %idxprom48
  %35 = load i16, ptr %arrayidx49, align 2, !tbaa !18
  %conv50 = zext i16 %35 to i32
  %and51 = and i32 %conv50, 2048
  %tobool52 = icmp ne i32 %and51, 0
  br label %land.end53

land.end53:                                       ; preds = %land.rhs45, %while.cond41
  %36 = phi i1 [ false, %while.cond41 ], [ %tobool52, %land.rhs45 ]
  br i1 %36, label %while.body54, label %while.end56

while.body54:                                     ; preds = %land.end53
  %37 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr55 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr55, ptr %p, align 8, !tbaa !5
  br label %while.cond41, !llvm.loop !46

while.end56:                                      ; preds = %land.end53
  br label %if.end57

if.end57:                                         ; preds = %while.end56, %while.end
  %38 = load ptr, ptr %p, align 8, !tbaa !5
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %conv58 = sext i8 %39 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end57
  %40 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %40, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end57
  %41 = load ptr, ptr @stderr, align 8, !tbaa !5
  %42 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.331, ptr noundef %42)
  call void @exit(i32 noundef 9) #15
  unreachable

cleanup:                                          ; preds = %if.then61, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally double @atof(ptr noundef nonnull %__nptr) #8 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !5
  %call = call double @strtod(ptr noundef %0, ptr noundef null) #14
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal ptr @check_valid_float_or_int(ptr noundef %string) #1 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #16
  %8 = load ptr, ptr %call, align 8, !tbaa !5
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %conv8 = sext i8 %10 to i32
  %idxprom = sext i32 %conv8 to i64
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %11 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %conv9 = zext i16 %11 to i32
  %and = and i32 %conv9, 2048
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr10 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr10, ptr %p, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %p, align 8, !tbaa !5
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  %16 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %while.end
  %17 = load ptr, ptr %p, align 8, !tbaa !5
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp eq i32 %conv16, 46
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %19 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr20, ptr %p, align 8, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15
  %call22 = call ptr @__ctype_b_loc() #16
  %20 = load ptr, ptr %call22, align 8, !tbaa !5
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %conv23 = sext i8 %22 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %20, i64 %idxprom24
  %23 = load i16, ptr %arrayidx25, align 2, !tbaa !18
  %conv26 = zext i16 %23 to i32
  %and27 = and i32 %conv26, 2048
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end21
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %25 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.332, ptr noundef %25)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end31:                                         ; preds = %if.end21
  br label %while.cond32

while.cond32:                                     ; preds = %while.body45, %if.end31
  %26 = load ptr, ptr %p, align 8, !tbaa !5
  %27 = load i8, ptr %26, align 1, !tbaa !14
  %conv33 = sext i8 %27 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %land.rhs36, label %land.end44

land.rhs36:                                       ; preds = %while.cond32
  %call37 = call ptr @__ctype_b_loc() #16
  %28 = load ptr, ptr %call37, align 8, !tbaa !5
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %30 = load i8, ptr %29, align 1, !tbaa !14
  %conv38 = sext i8 %30 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %28, i64 %idxprom39
  %31 = load i16, ptr %arrayidx40, align 2, !tbaa !18
  %conv41 = zext i16 %31 to i32
  %and42 = and i32 %conv41, 2048
  %tobool43 = icmp ne i32 %and42, 0
  br label %land.end44

land.end44:                                       ; preds = %land.rhs36, %while.cond32
  %32 = phi i1 [ false, %while.cond32 ], [ %tobool43, %land.rhs36 ]
  br i1 %32, label %while.body45, label %while.end47

while.body45:                                     ; preds = %land.end44
  %33 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr46 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr46, ptr %p, align 8, !tbaa !5
  br label %while.cond32, !llvm.loop !48

while.end47:                                      ; preds = %land.end44
  %34 = load ptr, ptr %p, align 8, !tbaa !5
  %35 = load i8, ptr %34, align 1, !tbaa !14
  %conv48 = sext i8 %35 to i32
  %cmp49 = icmp eq i32 %conv48, 101
  br i1 %cmp49, label %if.then51, label %if.end89

if.then51:                                        ; preds = %while.end47
  %36 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr52 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8, !tbaa !5
  %37 = load ptr, ptr %p, align 8, !tbaa !5
  %38 = load i8, ptr %37, align 1, !tbaa !14
  %conv53 = sext i8 %38 to i32
  %cmp54 = icmp eq i32 %conv53, 43
  br i1 %cmp54, label %if.then60, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.then51
  %39 = load ptr, ptr %p, align 8, !tbaa !5
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %conv57 = sext i8 %40 to i32
  %cmp58 = icmp eq i32 %conv57, 45
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %lor.lhs.false56, %if.then51
  %41 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr61 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr61, ptr %p, align 8, !tbaa !5
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %lor.lhs.false56
  %call63 = call ptr @__ctype_b_loc() #16
  %42 = load ptr, ptr %call63, align 8, !tbaa !5
  %43 = load ptr, ptr %p, align 8, !tbaa !5
  %44 = load i8, ptr %43, align 1, !tbaa !14
  %conv64 = sext i8 %44 to i32
  %idxprom65 = sext i32 %conv64 to i64
  %arrayidx66 = getelementptr inbounds i16, ptr %42, i64 %idxprom65
  %45 = load i16, ptr %arrayidx66, align 2, !tbaa !18
  %conv67 = zext i16 %45 to i32
  %and68 = and i32 %conv67, 2048
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.end72, label %if.then70

if.then70:                                        ; preds = %if.end62
  %46 = load ptr, ptr @stderr, align 8, !tbaa !5
  %47 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.332, ptr noundef %47)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end72:                                         ; preds = %if.end62
  br label %while.cond73

while.cond73:                                     ; preds = %while.body86, %if.end72
  %48 = load ptr, ptr %p, align 8, !tbaa !5
  %49 = load i8, ptr %48, align 1, !tbaa !14
  %conv74 = sext i8 %49 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %land.rhs77, label %land.end85

land.rhs77:                                       ; preds = %while.cond73
  %call78 = call ptr @__ctype_b_loc() #16
  %50 = load ptr, ptr %call78, align 8, !tbaa !5
  %51 = load ptr, ptr %p, align 8, !tbaa !5
  %52 = load i8, ptr %51, align 1, !tbaa !14
  %conv79 = sext i8 %52 to i32
  %idxprom80 = sext i32 %conv79 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %50, i64 %idxprom80
  %53 = load i16, ptr %arrayidx81, align 2, !tbaa !18
  %conv82 = zext i16 %53 to i32
  %and83 = and i32 %conv82, 2048
  %tobool84 = icmp ne i32 %and83, 0
  br label %land.end85

land.end85:                                       ; preds = %land.rhs77, %while.cond73
  %54 = phi i1 [ false, %while.cond73 ], [ %tobool84, %land.rhs77 ]
  br i1 %54, label %while.body86, label %while.end88

while.body86:                                     ; preds = %land.end85
  %55 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr87 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr87, ptr %p, align 8, !tbaa !5
  br label %while.cond73, !llvm.loop !49

while.end88:                                      ; preds = %land.end85
  br label %if.end89

if.end89:                                         ; preds = %while.end88, %while.end47
  %56 = load ptr, ptr %p, align 8, !tbaa !5
  %57 = load i8, ptr %56, align 1, !tbaa !14
  %conv90 = sext i8 %57 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %if.then93, label %if.else

if.then93:                                        ; preds = %if.end89
  %58 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %58, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end89
  %59 = load ptr, ptr @stderr, align 8, !tbaa !5
  %60 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.332, ptr noundef %60)
  call void @exit(i32 noundef 9) #15
  unreachable

cleanup:                                          ; preds = %if.then93, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14
  %61 = load ptr, ptr %retval, align 8
  ret ptr %61
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #9

; Function Attrs: nounwind uwtable
define internal double @check_valid_float(ptr noundef %string, ptr noundef %option) #1 {
entry:
  %retval = alloca double, align 8
  %string.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  %value = alloca double, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8, !tbaa !5
  store ptr %option, ptr %option.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #16
  %8 = load ptr, ptr %call, align 8, !tbaa !5
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %conv8 = sext i8 %10 to i32
  %idxprom = sext i32 %conv8 to i64
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %11 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %conv9 = zext i16 %11 to i32
  %and = and i32 %conv9, 2048
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr10 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr10, ptr %p, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !50

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %p, align 8, !tbaa !5
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end23

if.then14:                                        ; preds = %while.end
  %16 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call15 = call double @atof(ptr noundef %16) #17
  store double %call15, ptr %value, align 8, !tbaa !27
  %cmp16 = fcmp ogt double %call15, 1.000000e+00
  br i1 %cmp16, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.then14
  %17 = load double, ptr %value, align 8, !tbaa !27
  %cmp19 = fcmp olt double %17, 0.000000e+00
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %lor.lhs.false18, %if.then14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = load ptr, ptr %option.addr, align 8, !tbaa !5
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.333, ptr noundef %19)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else:                                          ; preds = %lor.lhs.false18
  %20 = load double, ptr %value, align 8, !tbaa !27
  store double %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %while.end
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %22 = load i8, ptr %21, align 1, !tbaa !14
  %conv24 = sext i8 %22 to i32
  %cmp25 = icmp eq i32 %conv24, 46
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %23 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr28 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr28, ptr %p, align 8, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23
  %call30 = call ptr @__ctype_b_loc() #16
  %24 = load ptr, ptr %call30, align 8, !tbaa !5
  %25 = load ptr, ptr %p, align 8, !tbaa !5
  %26 = load i8, ptr %25, align 1, !tbaa !14
  %conv31 = sext i8 %26 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %24, i64 %idxprom32
  %27 = load i16, ptr %arrayidx33, align 2, !tbaa !18
  %conv34 = zext i16 %27 to i32
  %and35 = and i32 %conv34, 2048
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end29
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %option.addr, align 8, !tbaa !5
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.334, ptr noundef %29, ptr noundef %30)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end39:                                         ; preds = %if.end29
  br label %while.cond40

while.cond40:                                     ; preds = %while.body53, %if.end39
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %conv41 = sext i8 %32 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  br i1 %cmp42, label %land.rhs44, label %land.end52

land.rhs44:                                       ; preds = %while.cond40
  %call45 = call ptr @__ctype_b_loc() #16
  %33 = load ptr, ptr %call45, align 8, !tbaa !5
  %34 = load ptr, ptr %p, align 8, !tbaa !5
  %35 = load i8, ptr %34, align 1, !tbaa !14
  %conv46 = sext i8 %35 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %33, i64 %idxprom47
  %36 = load i16, ptr %arrayidx48, align 2, !tbaa !18
  %conv49 = zext i16 %36 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br label %land.end52

land.end52:                                       ; preds = %land.rhs44, %while.cond40
  %37 = phi i1 [ false, %while.cond40 ], [ %tobool51, %land.rhs44 ]
  br i1 %37, label %while.body53, label %while.end55

while.body53:                                     ; preds = %land.end52
  %38 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr54 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr54, ptr %p, align 8, !tbaa !5
  br label %while.cond40, !llvm.loop !51

while.end55:                                      ; preds = %land.end52
  %39 = load ptr, ptr %p, align 8, !tbaa !5
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %conv56 = sext i8 %40 to i32
  %cmp57 = icmp eq i32 %conv56, 101
  br i1 %cmp57, label %if.then59, label %if.end97

if.then59:                                        ; preds = %while.end55
  %41 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr60 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr60, ptr %p, align 8, !tbaa !5
  %42 = load ptr, ptr %p, align 8, !tbaa !5
  %43 = load i8, ptr %42, align 1, !tbaa !14
  %conv61 = sext i8 %43 to i32
  %cmp62 = icmp eq i32 %conv61, 43
  br i1 %cmp62, label %if.then68, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.then59
  %44 = load ptr, ptr %p, align 8, !tbaa !5
  %45 = load i8, ptr %44, align 1, !tbaa !14
  %conv65 = sext i8 %45 to i32
  %cmp66 = icmp eq i32 %conv65, 45
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %lor.lhs.false64, %if.then59
  %46 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr69 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr69, ptr %p, align 8, !tbaa !5
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %lor.lhs.false64
  %call71 = call ptr @__ctype_b_loc() #16
  %47 = load ptr, ptr %call71, align 8, !tbaa !5
  %48 = load ptr, ptr %p, align 8, !tbaa !5
  %49 = load i8, ptr %48, align 1, !tbaa !14
  %conv72 = sext i8 %49 to i32
  %idxprom73 = sext i32 %conv72 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %47, i64 %idxprom73
  %50 = load i16, ptr %arrayidx74, align 2, !tbaa !18
  %conv75 = zext i16 %50 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.end80, label %if.then78

if.then78:                                        ; preds = %if.end70
  %51 = load ptr, ptr @stderr, align 8, !tbaa !5
  %52 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %option.addr, align 8, !tbaa !5
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.334, ptr noundef %52, ptr noundef %53)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end80:                                         ; preds = %if.end70
  br label %while.cond81

while.cond81:                                     ; preds = %while.body94, %if.end80
  %54 = load ptr, ptr %p, align 8, !tbaa !5
  %55 = load i8, ptr %54, align 1, !tbaa !14
  %conv82 = sext i8 %55 to i32
  %cmp83 = icmp ne i32 %conv82, 0
  br i1 %cmp83, label %land.rhs85, label %land.end93

land.rhs85:                                       ; preds = %while.cond81
  %call86 = call ptr @__ctype_b_loc() #16
  %56 = load ptr, ptr %call86, align 8, !tbaa !5
  %57 = load ptr, ptr %p, align 8, !tbaa !5
  %58 = load i8, ptr %57, align 1, !tbaa !14
  %conv87 = sext i8 %58 to i32
  %idxprom88 = sext i32 %conv87 to i64
  %arrayidx89 = getelementptr inbounds i16, ptr %56, i64 %idxprom88
  %59 = load i16, ptr %arrayidx89, align 2, !tbaa !18
  %conv90 = zext i16 %59 to i32
  %and91 = and i32 %conv90, 2048
  %tobool92 = icmp ne i32 %and91, 0
  br label %land.end93

land.end93:                                       ; preds = %land.rhs85, %while.cond81
  %60 = phi i1 [ false, %while.cond81 ], [ %tobool92, %land.rhs85 ]
  br i1 %60, label %while.body94, label %while.end96

while.body94:                                     ; preds = %land.end93
  %61 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr95 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr95, ptr %p, align 8, !tbaa !5
  br label %while.cond81, !llvm.loop !52

while.end96:                                      ; preds = %land.end93
  br label %if.end97

if.end97:                                         ; preds = %while.end96, %while.end55
  %62 = load ptr, ptr %p, align 8, !tbaa !5
  %63 = load i8, ptr %62, align 1, !tbaa !14
  %conv98 = sext i8 %63 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then101, label %if.else111

if.then101:                                       ; preds = %if.end97
  %64 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call102 = call double @atof(ptr noundef %64) #17
  store double %call102, ptr %value, align 8, !tbaa !27
  %cmp103 = fcmp ogt double %call102, 1.000000e+00
  br i1 %cmp103, label %if.then108, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.then101
  %65 = load double, ptr %value, align 8, !tbaa !27
  %cmp106 = fcmp olt double %65, 0.000000e+00
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %lor.lhs.false105, %if.then101
  %66 = load ptr, ptr @stderr, align 8, !tbaa !5
  %67 = load ptr, ptr %option.addr, align 8, !tbaa !5
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.333, ptr noundef %67)
  call void @exit(i32 noundef 9) #15
  unreachable

if.else110:                                       ; preds = %lor.lhs.false105
  %68 = load double, ptr %value, align 8, !tbaa !27
  store double %68, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else111:                                       ; preds = %if.end97
  %69 = load ptr, ptr @stderr, align 8, !tbaa !5
  %70 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %option.addr, align 8, !tbaa !5
  %call112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.334, ptr noundef %70, ptr noundef %71)
  call void @exit(i32 noundef 9) #15
  unreachable

cleanup:                                          ; preds = %if.else110, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14
  %72 = load double, ptr %retval, align 8
  ret double %72
}

declare void @MAPQ_init(i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal void @parse_part(ptr noundef %part_modulus, ptr noundef %part_interval, ptr noundef %string) #1 {
entry:
  %part_modulus.addr = alloca ptr, align 8
  %part_interval.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %part_modulus, ptr %part_modulus.addr, align 8, !tbaa !5
  store ptr %part_interval, ptr %part_interval.addr, align 8, !tbaa !5
  store ptr %string, ptr %string.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load ptr, ptr %part_modulus.addr, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef @.str.335, ptr noundef %2) #14
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.336, ptr noundef %4)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %conv = sext i8 %6 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call4 = call ptr @__ctype_b_loc() #16
  %7 = load ptr, ptr %call4, align 8, !tbaa !5
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %conv5 = sext i8 %9 to i32
  %idxprom = sext i32 %conv5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %conv6 = zext i16 %10 to i32
  %and = and i32 %conv6, 2048
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !53

while.end:                                        ; preds = %land.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body20, %while.end
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %conv8 = sext i8 %14 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %land.rhs11, label %land.end19

land.rhs11:                                       ; preds = %while.cond7
  %call12 = call ptr @__ctype_b_loc() #16
  %15 = load ptr, ptr %call12, align 8, !tbaa !5
  %16 = load ptr, ptr %p, align 8, !tbaa !5
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %conv13 = sext i8 %17 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %15, i64 %idxprom14
  %18 = load i16, ptr %arrayidx15, align 2, !tbaa !18
  %conv16 = zext i16 %18 to i32
  %and17 = and i32 %conv16, 2048
  %tobool18 = icmp ne i32 %and17, 0
  %lnot = xor i1 %tobool18, true
  br label %land.end19

land.end19:                                       ; preds = %land.rhs11, %while.cond7
  %19 = phi i1 [ false, %while.cond7 ], [ %lnot, %land.rhs11 ]
  br i1 %19, label %while.body20, label %while.end22

while.body20:                                     ; preds = %land.end19
  %20 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr21 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %p, align 8, !tbaa !5
  br label %while.cond7, !llvm.loop !54

while.end22:                                      ; preds = %land.end19
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %22 = load ptr, ptr %part_interval.addr, align 8, !tbaa !5
  %call23 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %21, ptr noundef @.str.337, ptr noundef %22) #14
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.end22
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %24 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.336, ptr noundef %24)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end28:                                         ; preds = %while.end22
  %25 = load ptr, ptr %part_modulus.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = load ptr, ptr %part_interval.addr, align 8, !tbaa !5
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %cmp29 = icmp uge i32 %26, %28
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %30 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %part_modulus.addr, align 8, !tbaa !5
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %33 = load ptr, ptr %part_interval.addr, align 8, !tbaa !5
  %34 = load i32, ptr %33, align 4, !tbaa !12
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.338, ptr noundef %30, i32 noundef %32, i32 noundef %34)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end33:                                         ; preds = %if.end28
  %35 = load ptr, ptr %part_interval.addr, align 8, !tbaa !5
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %cmp34 = icmp eq i32 %36, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %38 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.339, ptr noundef %38)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end38:                                         ; preds = %if.end33
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_program_version() #1 {
entry:
  %genomedir = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %genomedir) #14
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.21)
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.245)
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.246, ptr noundef @.str.19)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.247, ptr noundef @.str.248)
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.249)
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.250)
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.251)
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.252)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.253)
  %9 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.254)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.255)
  %11 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.256)
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.21)
  %13 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.257)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.258)
  %15 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.21)
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.259)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.21)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.260)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.261)
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.262)
  %21 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.263)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.264)
  %23 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.265)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.21)
  %25 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.266, i32 noundef 8, i32 noundef 8, i32 noundef 4, i32 noundef 8, i32 noundef 8)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.267, ptr noundef @.str.268)
  %call27 = call ptr @Datadir_find_genomedir(ptr noundef null)
  store ptr %call27, ptr %genomedir, align 8, !tbaa !5
  %27 = load ptr, ptr @stdout, align 8, !tbaa !5
  %28 = load ptr, ptr %genomedir, align 8, !tbaa !5
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.269, ptr noundef %28)
  %29 = load ptr, ptr %genomedir, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %29, ptr noundef @.str.1, i32 noundef 856)
  store ptr null, ptr %genomedir, align 8, !tbaa !5
  %30 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.270)
  %31 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.271)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.21)
  call void @llvm.lifetime.end.p0(i64 8, ptr %genomedir) #14
  ret void
}

declare ptr @Datadir_find_genomedir(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @print_program_usage() #1 {
entry:
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.272)
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.273)
  %2 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.274, ptr noundef @.str.268)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.275)
  %4 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.276)
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.277)
  %6 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.278)
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.279)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %9 = load i32, ptr @input_buffer_size, align 4, !tbaa !12
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.280, i32 noundef %9)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !5
  %11 = load i32, ptr @barcode_length, align 4, !tbaa !12
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.281, i32 noundef %11)
  %12 = load ptr, ptr @stdout, align 8, !tbaa !5
  %13 = load i32, ptr @endtrim_length, align 4, !tbaa !12
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.282, i32 noundef %13)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.283)
  %15 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.284)
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.285)
  %17 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.21)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.278)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.286)
  %20 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.287)
  %21 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.288)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !5
  %23 = load i32, ptr @maxpaths_search, align 4, !tbaa !12
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.289, i32 noundef %23)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !5
  %25 = load i32, ptr @indel_penalty_middle, align 4, !tbaa !12
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.290, i32 noundef %25)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !5
  %27 = load i32, ptr @min_indel_end_matches, align 4, !tbaa !12
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.291, i32 noundef %27)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !5
  %29 = load double, ptr @max_middle_insertions_float, align 8, !tbaa !27
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.292, double noundef %29)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !5
  %31 = load double, ptr @max_middle_deletions_float, align 8, !tbaa !27
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.293, double noundef %31)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !5
  %33 = load i32, ptr @max_end_insertions, align 4, !tbaa !12
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.294, i32 noundef %33)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = load i32, ptr @max_end_deletions, align 4, !tbaa !12
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.295, i32 noundef %35)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !5
  %37 = load i32, ptr @subopt_levels, align 4, !tbaa !12
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.296, i32 noundef %37)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.297)
  %39 = load ptr, ptr @stdout, align 8, !tbaa !5
  %40 = load i32, ptr @trim_indel_score, align 4, !tbaa !12
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.298, i32 noundef %40)
  %41 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.299)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.300)
  %43 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.301)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.302)
  %45 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.303)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.21)
  %47 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.304)
  %48 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.305)
  %49 = load ptr, ptr @stdout, align 8, !tbaa !5
  %50 = load i32, ptr @shortsplicedist, align 4, !tbaa !12
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.306, i32 noundef %50)
  %51 = load ptr, ptr @stdout, align 8, !tbaa !5
  %52 = load i32, ptr @shortsplicedist_novelend, align 4, !tbaa !12
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.307, i32 noundef %52)
  %53 = load ptr, ptr @stdout, align 8, !tbaa !5
  %54 = load i32, ptr @localsplicing_penalty, align 4, !tbaa !12
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.308, i32 noundef %54)
  %55 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.309)
  %56 = load ptr, ptr @stdout, align 8, !tbaa !5
  %57 = load i32, ptr @distantsplicing_penalty, align 4, !tbaa !12
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.310, i32 noundef %57)
  %58 = load ptr, ptr @stdout, align 8, !tbaa !5
  %59 = load i32, ptr @min_distantsplicing_end_matches, align 4, !tbaa !12
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.311, i32 noundef %59)
  %60 = load ptr, ptr @stdout, align 8, !tbaa !5
  %61 = load i32, ptr @min_shortend, align 4, !tbaa !12
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.312, i32 noundef %61)
  %62 = load ptr, ptr @stdout, align 8, !tbaa !5
  %63 = load double, ptr @min_distantsplicing_identity, align 8, !tbaa !27
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.313, double noundef %63)
  %64 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.314)
  %65 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.21)
  %66 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.315)
  %67 = load ptr, ptr @stdout, align 8, !tbaa !5
  %68 = load i32, ptr @pairmax_dna, align 4, !tbaa !12
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.316, i32 noundef %68)
  %69 = load ptr, ptr @stdout, align 8, !tbaa !5
  %70 = load i32, ptr @pairmax_rna, align 4, !tbaa !12
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.317, i32 noundef %70)
  %71 = load ptr, ptr @stdout, align 8, !tbaa !5
  %72 = load i32, ptr @pass1_min_support, align 4, !tbaa !12
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.318, i32 noundef %72)
  %73 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.319)
  %74 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.320)
  %75 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.321)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !5
  %77 = load i32, ptr @maxpaths_report, align 4, !tbaa !12
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.322, i32 noundef %77)
  %78 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef @.str.323)
  %79 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef @.str.324)
  %80 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str.325)
  %81 = load ptr, ptr @stdout, align 8, !tbaa !5
  %82 = load i32, ptr @output_buffer_size, align 4, !tbaa !12
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.326, i32 noundef %82)
  %83 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.21)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.327)
  %85 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.328)
  %86 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.21)
  %87 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.329)
  %88 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.330)
  ret void
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind uwtable
define internal void @check_compiler_assumptions() #10 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %negx = alloca i8, align 1
  %negy = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #14
  %call = call i32 @rand() #14
  store i32 %call, ptr %x, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #14
  %call1 = call i32 @rand() #14
  store i32 %call1, ptr %y, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr %negx) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr %negy) #14
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.340)
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load i32, ptr %x, align 4, !tbaa !12
  %3 = load i32, ptr %y, align 4, !tbaa !12
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.341, i32 noundef %2, i32 noundef %3)
  %4 = load i32, ptr %x, align 4, !tbaa !12
  %call4 = call <2 x i64> @_mm_set1_epi32(i32 noundef %4)
  %5 = load i32, ptr %y, align 4, !tbaa !12
  %call5 = call <2 x i64> @_mm_set1_epi32(i32 noundef %5)
  %call6 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %call4, <2 x i64> noundef %call5)
  store <2 x i64> %call6, ptr %a, align 16, !tbaa !14
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !14
  %call7 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %6)
  store i32 %call7, ptr %z, align 4, !tbaa !12
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = load i32, ptr %z, align 4, !tbaa !12
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.342, i32 noundef %8)
  %9 = load i32, ptr %x, align 4, !tbaa !12
  %conv = trunc i32 %9 to i8
  store i8 %conv, ptr %negx, align 1, !tbaa !14
  %conv9 = sext i8 %conv to i32
  %cmp = icmp sgt i32 %conv9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8, ptr %negx, align 1, !tbaa !14
  %conv11 = sext i8 %10 to i32
  %sub = sub nsw i32 0, %conv11
  %conv12 = trunc i32 %sub to i8
  store i8 %conv12, ptr %negx, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %y, align 4, !tbaa !12
  %conv13 = trunc i32 %11 to i8
  store i8 %conv13, ptr %negy, align 1, !tbaa !14
  %conv14 = sext i8 %conv13 to i32
  %cmp15 = icmp sgt i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end
  %12 = load i8, ptr %negy, align 1, !tbaa !14
  %conv18 = sext i8 %12 to i32
  %sub19 = sub nsw i32 0, %conv18
  %conv20 = trunc i32 %sub19 to i8
  store i8 %conv20, ptr %negy, align 1, !tbaa !14
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.343)
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = load i8, ptr %negx, align 1, !tbaa !14
  %conv23 = sext i8 %15 to i32
  %16 = load i8, ptr %negy, align 1, !tbaa !14
  %conv24 = sext i8 %16 to i32
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.344, i32 noundef %conv23, i32 noundef %conv24)
  %17 = load i8, ptr %negx, align 1, !tbaa !14
  %call26 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %17)
  %18 = load i8, ptr %negy, align 1, !tbaa !14
  %call27 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %18)
  %call28 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %call26, <2 x i64> noundef %call27)
  store <2 x i64> %call28, ptr %a, align 16, !tbaa !14
  %19 = load <2 x i64>, ptr %a, align 16, !tbaa !14
  %20 = bitcast <2 x i64> %19 to <16 x i8>
  %21 = extractelement <16 x i8> %20, i64 0
  %conv29 = zext i8 %21 to i32
  store i32 %conv29, ptr %z, align 4, !tbaa !12
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %23 = load i32, ptr %z, align 4, !tbaa !12
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.345, i32 noundef %23)
  %24 = load i8, ptr %negx, align 1, !tbaa !14
  %conv31 = sext i8 %24 to i32
  %25 = load i8, ptr %negy, align 1, !tbaa !14
  %conv32 = sext i8 %25 to i32
  %cmp33 = icmp sgt i32 %conv31, %conv32
  br i1 %cmp33, label %if.then35, label %if.else43

if.then35:                                        ; preds = %if.end21
  %26 = load i32, ptr %z, align 4, !tbaa !12
  %27 = load i8, ptr %negx, align 1, !tbaa !14
  %conv36 = sext i8 %27 to i32
  %cmp37 = icmp eq i32 %26, %conv36
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then35
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.346)
  br label %if.end42

if.else:                                          ; preds = %if.then35
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.347)
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then39
  br label %if.end52

if.else43:                                        ; preds = %if.end21
  %30 = load i32, ptr %z, align 4, !tbaa !12
  %31 = load i8, ptr %negy, align 1, !tbaa !14
  %conv44 = sext i8 %31 to i32
  %cmp45 = icmp eq i32 %30, %conv44
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else43
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.346)
  br label %if.end51

if.else49:                                        ; preds = %if.else43
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.347)
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end42
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.348)
  %35 = load ptr, ptr @stderr, align 8, !tbaa !5
  %36 = load i32, ptr %x, align 4, !tbaa !12
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.349, i32 noundef %36)
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %38 = load i32, ptr %x, align 4, !tbaa !12
  %call55 = call i32 @_mm_popcnt_u32(i32 noundef %38)
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.350, i32 noundef %call55)
  %39 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.21)
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.351)
  call void @llvm.lifetime.end.p0(i64 1, ptr %negy) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr %negx) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #14
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #5

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_xor_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #11 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !14
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !14
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !14
  %xor = xor <2 x i64> %0, %1
  ret <2 x i64> %xor
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set1_epi32(i32 noundef %__i) #11 {
entry:
  %__i.addr = alloca i32, align 4
  store i32 %__i, ptr %__i.addr, align 4, !tbaa !12
  %0 = load i32, ptr %__i.addr, align 4, !tbaa !12
  %1 = load i32, ptr %__i.addr, align 4, !tbaa !12
  %2 = load i32, ptr %__i.addr, align 4, !tbaa !12
  %3 = load i32, ptr %__i.addr, align 4, !tbaa !12
  %call = call <2 x i64> @_mm_set_epi32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #11 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !14
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !14
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !14
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #14
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #11 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !14
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !14
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !14
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !14
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set1_epi8(i8 noundef signext %__b) #11 {
entry:
  %__b.addr = alloca i8, align 1
  store i8 %__b, ptr %__b.addr, align 1, !tbaa !14
  %0 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %1 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %2 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %3 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %4 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %5 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %6 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %7 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %8 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %9 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %10 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %11 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %12 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %13 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %14 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %15 = load i8, ptr %__b.addr, align 1, !tbaa !14
  %call = call <2 x i64> @_mm_set_epi8(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, i8 noundef signext %11, i8 noundef signext %12, i8 noundef signext %13, i8 noundef signext %14, i8 noundef signext %15)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_popcnt_u32(i32 noundef %__A) #12 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !12
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !12
  %1 = call i32 @llvm.ctpop.i32(i32 %0)
  ret i32 %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi32(i32 noundef %__i3, i32 noundef %__i2, i32 noundef %__i1, i32 noundef %__i0) #11 {
entry:
  %__i3.addr = alloca i32, align 4
  %__i2.addr = alloca i32, align 4
  %__i1.addr = alloca i32, align 4
  %__i0.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__i3, ptr %__i3.addr, align 4, !tbaa !12
  store i32 %__i2, ptr %__i2.addr, align 4, !tbaa !12
  store i32 %__i1, ptr %__i1.addr, align 4, !tbaa !12
  store i32 %__i0, ptr %__i0.addr, align 4, !tbaa !12
  %0 = load i32, ptr %__i0.addr, align 4, !tbaa !12
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__i1.addr, align 4, !tbaa !12
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__i2.addr, align 4, !tbaa !12
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__i3.addr, align 4, !tbaa !12
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !14
  %4 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !14
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #9

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi8(i8 noundef signext %__b15, i8 noundef signext %__b14, i8 noundef signext %__b13, i8 noundef signext %__b12, i8 noundef signext %__b11, i8 noundef signext %__b10, i8 noundef signext %__b9, i8 noundef signext %__b8, i8 noundef signext %__b7, i8 noundef signext %__b6, i8 noundef signext %__b5, i8 noundef signext %__b4, i8 noundef signext %__b3, i8 noundef signext %__b2, i8 noundef signext %__b1, i8 noundef signext %__b0) #11 {
entry:
  %__b15.addr = alloca i8, align 1
  %__b14.addr = alloca i8, align 1
  %__b13.addr = alloca i8, align 1
  %__b12.addr = alloca i8, align 1
  %__b11.addr = alloca i8, align 1
  %__b10.addr = alloca i8, align 1
  %__b9.addr = alloca i8, align 1
  %__b8.addr = alloca i8, align 1
  %__b7.addr = alloca i8, align 1
  %__b6.addr = alloca i8, align 1
  %__b5.addr = alloca i8, align 1
  %__b4.addr = alloca i8, align 1
  %__b3.addr = alloca i8, align 1
  %__b2.addr = alloca i8, align 1
  %__b1.addr = alloca i8, align 1
  %__b0.addr = alloca i8, align 1
  %.compoundliteral = alloca <16 x i8>, align 16
  store i8 %__b15, ptr %__b15.addr, align 1, !tbaa !14
  store i8 %__b14, ptr %__b14.addr, align 1, !tbaa !14
  store i8 %__b13, ptr %__b13.addr, align 1, !tbaa !14
  store i8 %__b12, ptr %__b12.addr, align 1, !tbaa !14
  store i8 %__b11, ptr %__b11.addr, align 1, !tbaa !14
  store i8 %__b10, ptr %__b10.addr, align 1, !tbaa !14
  store i8 %__b9, ptr %__b9.addr, align 1, !tbaa !14
  store i8 %__b8, ptr %__b8.addr, align 1, !tbaa !14
  store i8 %__b7, ptr %__b7.addr, align 1, !tbaa !14
  store i8 %__b6, ptr %__b6.addr, align 1, !tbaa !14
  store i8 %__b5, ptr %__b5.addr, align 1, !tbaa !14
  store i8 %__b4, ptr %__b4.addr, align 1, !tbaa !14
  store i8 %__b3, ptr %__b3.addr, align 1, !tbaa !14
  store i8 %__b2, ptr %__b2.addr, align 1, !tbaa !14
  store i8 %__b1, ptr %__b1.addr, align 1, !tbaa !14
  store i8 %__b0, ptr %__b0.addr, align 1, !tbaa !14
  %0 = load i8, ptr %__b0.addr, align 1, !tbaa !14
  %vecinit = insertelement <16 x i8> undef, i8 %0, i32 0
  %1 = load i8, ptr %__b1.addr, align 1, !tbaa !14
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %__b2.addr, align 1, !tbaa !14
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %__b3.addr, align 1, !tbaa !14
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %__b4.addr, align 1, !tbaa !14
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %__b5.addr, align 1, !tbaa !14
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %__b6.addr, align 1, !tbaa !14
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %__b7.addr, align 1, !tbaa !14
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %__b8.addr, align 1, !tbaa !14
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %__b9.addr, align 1, !tbaa !14
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %__b10.addr, align 1, !tbaa !14
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %__b11.addr, align 1, !tbaa !14
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %__b12.addr, align 1, !tbaa !14
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %__b13.addr, align 1, !tbaa !14
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %__b14.addr, align 1, !tbaa !14
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %__b15.addr, align 1, !tbaa !14
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %15, i32 15
  store <16 x i8> %vecinit15, ptr %.compoundliteral, align 16, !tbaa !14
  %16 = load <16 x i8>, ptr %.compoundliteral, align 16, !tbaa !14
  %17 = bitcast <16 x i8> %16 to <2 x i64>
  ret <2 x i64> %17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

declare void @Access_emergency_cleanup(...) #4

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #5

declare ptr @Request_queryseq1(ptr noundef) #4

declare ptr @Request_queryseq2(ptr noundef) #4

declare ptr @Shortread_accession(ptr noundef) #4

declare i32 @Shortread_fulllength(ptr noundef) #4

declare void @Shortread_stderr_query_singleend_fasta(ptr noundef, ptr noundef) #4

declare void @Shortread_stderr_query_pairedend_fasta(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare i32 @Shortread_input_init(ptr noundef, ptr noundef) #4

declare ptr @gzopen(ptr noundef, ptr noundef) #4

declare i32 @gzbuffer(ptr noundef, i32 noundef) #4

declare i32 @Shortread_input_init_gzip(ptr noundef) #4

declare ptr @Bzip2_new(ptr noundef) #4

declare i32 @Shortread_input_init_bzip2(ptr noundef) #4

declare ptr @Fopen_read_text(ptr noundef, ptr noundef) #4

declare ptr @Univ_IIT_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare i32 @Univ_IIT_total_nintervals(ptr noundef) #4

declare i32 @Univ_IIT_typeint(ptr noundef, ptr noundef) #4

declare ptr @Univ_IIT_circularp(ptr noundef, ptr noundef) #4

declare ptr @Univ_IIT_altlocp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Univ_IIT_free(ptr noundef) #4

declare i32 @Univ_IIT_genomelength(ptr noundef, i8 noundef zeroext) #4

declare ptr @Genomebits_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare ptr @Genome_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare ptr @Datadir_find_mapdir(ptr noundef, ptr noundef, ptr noundef) #4

declare void @Genome_setup(ptr noundef, ptr noundef, i32 noundef) #4

declare ptr @Indexdb_new_genome(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #4

declare ptr @Localdb_new(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Datadir_list_directory(ptr noundef, ptr noundef) #4

declare ptr @Univ_IIT_divint_crosstable(ptr noundef, ptr noundef) #4

declare double @Indexdb_mean_size(ptr noundef, i32 noundef, i32 noundef) #4

declare i32 @IIT_typeint(ptr noundef, ptr noundef) #4

declare ptr @Knownsplicing_from_splicing_iit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #4

declare i32 @Knownsplicing_nintervals(ptr noundef) #4

declare void @Univ_IIT_dump_labels(ptr noundef, ptr noundef) #4

declare void @IIT_dump_divstrings(ptr noundef, ptr noundef) #4

declare void @IIT_free(ptr noundef) #4

declare ptr @Knownsplicing_new_from_dump(ptr noundef, i32 noundef) #4

declare ptr @Knownindels_new_from_dump(ptr noundef, i32 noundef) #4

declare void @Path_setup(ptr noundef, ptr noundef) #4

declare void @Pathpair_setup(i32 noundef, i32 noundef, i32 noundef) #4

declare void @Path_solve_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Path_fusion_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare void @Path_trim_setup(ptr noundef, ptr noundef) #4

declare void @Path_eval_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Pathpair_eval_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Path_print_alignment_setup(ptr noundef) #4

declare void @Path_print_m8_setup(ptr noundef) #4

declare void @Path_print_sam_setup(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #4

declare void @Trpath_solve_setup(ptr noundef, ptr noundef, ptr noundef) #4

declare void @Transcriptome_search_setup(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Tr_extension_search_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

declare void @Kmer_search_setup(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #4

declare void @Extension_search_setup(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare ptr @Repetitive_setup(i32 noundef) #4

declare void @Segment_search_setup(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

declare void @Genomebits_consec_setup(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #4

declare void @Genomebits_count_setup(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Genomebits_mismatches_setup(i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) #4

declare void @Genomebits_kmer_setup(i8 noundef zeroext, i32 noundef) #4

declare void @Genomebits_indel_setup(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) #4

declare void @Genome_sites_setup(ptr noundef, ptr noundef) #4

declare void @Maxent_hr_setup(ptr noundef, ptr noundef) #4

declare void @Simplepair_setup(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #4

declare void @Indexdb_setup(i32 noundef) #4

declare void @Localdb_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare void @Splice_setup(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #4

declare void @Spliceends_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #4

declare void @Indel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #4

declare void @Transcript_setup(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

declare void @Transcript_remap_setup(ptr noundef, ptr noundef, ptr noundef) #4

declare void @Single_cell_setup(i32 noundef) #4

declare void @Stage1hr_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare void @Stage1hr_single_setup(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, double noundef, double noundef, double noundef, double noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #4

declare void @Stage1hr_paired_setup(i32 noundef, i32 noundef, i32 noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #4

declare void @Concordance_setup(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #4

declare void @Output_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @worker_cleanup() #1 {
entry:
  %0 = load ptr, ptr @whitelist_file, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (...) @Single_cell_cleanup()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void (...) @Segment_search_cleanup()
  call void @EF64_free(ptr noundef @repetitive_ef64)
  %1 = load ptr, ptr @localdb, align 8, !tbaa !5
  %cmp1 = icmp ne ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @Localdb_free(ptr noundef @localdb)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %cmp4 = icmp ne ptr %2, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @Knownindels_free(ptr noundef @knownindels)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %cmp7 = icmp ne ptr %3, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @Knownsplicing_free(ptr noundef @knownsplicing)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %4 = load ptr, ptr @indexdb_nonstd, align 8, !tbaa !5
  %5 = load ptr, ptr @indexdb, align 8, !tbaa !5
  %cmp10 = icmp ne ptr %4, %5
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @Indexdb_free(ptr noundef @indexdb_nonstd)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %6 = load ptr, ptr @indexdb, align 8, !tbaa !5
  %cmp13 = icmp ne ptr %6, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @Indexdb_free(ptr noundef @indexdb)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %7 = load ptr, ptr @transcriptomebits_alt, align 8, !tbaa !5
  %cmp16 = icmp ne ptr %7, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @Genomebits_free(ptr noundef @transcriptomebits_alt)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %8 = load ptr, ptr @transcriptomebits, align 8, !tbaa !5
  %cmp19 = icmp ne ptr %8, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @Genomebits_free(ptr noundef @transcriptomebits)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %9 = load ptr, ptr @genomealt, align 8, !tbaa !5
  %cmp22 = icmp ne ptr %9, null
  br i1 %cmp22, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end21
  %10 = load ptr, ptr @genomealt, align 8, !tbaa !5
  %11 = load ptr, ptr @genome, align 8, !tbaa !5
  %cmp23 = icmp ne ptr %10, %11
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  call void @Genome_free(ptr noundef @genomealt)
  call void @Genomebits_free(ptr noundef @genomebits_alt)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true, %if.end21
  %12 = load ptr, ptr @genomebits, align 8, !tbaa !5
  %cmp26 = icmp ne ptr %12, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @Genomebits_free(ptr noundef @genomebits)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %13 = load ptr, ptr @genome, align 8, !tbaa !5
  %cmp29 = icmp ne ptr %13, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @Genome_free(ptr noundef @genome)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %14 = load ptr, ptr @runlength_iit, align 8, !tbaa !5
  %cmp32 = icmp ne ptr %14, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %15 = load ptr, ptr @runlength_divint_crosstable, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %15, ptr noundef @.str.1, i32 noundef 3879)
  store ptr null, ptr @runlength_divint_crosstable, align 8, !tbaa !5
  call void @IIT_free(ptr noundef @runlength_iit)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %16 = load ptr, ptr @tally_iit, align 8, !tbaa !5
  %cmp35 = icmp ne ptr %16, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %17 = load ptr, ptr @tally_divint_crosstable, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %17, ptr noundef @.str.1, i32 noundef 3884)
  store ptr null, ptr @tally_divint_crosstable, align 8, !tbaa !5
  call void @IIT_free(ptr noundef @tally_iit)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %18 = load ptr, ptr @splicing_iit, align 8, !tbaa !5
  %cmp38 = icmp ne ptr %18, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  %19 = load ptr, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %19, ptr noundef @.str.1, i32 noundef 3889)
  store ptr null, ptr @splicing_divint_crosstable, align 8, !tbaa !5
  call void @IIT_free(ptr noundef @splicing_iit)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37
  %20 = load ptr, ptr @snps_iit, align 8, !tbaa !5
  %cmp41 = icmp ne ptr %20, null
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  %21 = load ptr, ptr @snps_divint_crosstable, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %21, ptr noundef @.str.1, i32 noundef 3902)
  store ptr null, ptr @snps_divint_crosstable, align 8, !tbaa !5
  call void @IIT_free(ptr noundef @snps_iit)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40
  %22 = load ptr, ptr @altlocp, align 8, !tbaa !5
  %cmp44 = icmp ne ptr %22, null
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  %23 = load ptr, ptr @alias_ends, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %23, ptr noundef @.str.1, i32 noundef 3907)
  store ptr null, ptr @alias_ends, align 8, !tbaa !5
  %24 = load ptr, ptr @alias_starts, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %24, ptr noundef @.str.1, i32 noundef 3908)
  store ptr null, ptr @alias_starts, align 8, !tbaa !5
  %25 = load ptr, ptr @altlocp, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %25, ptr noundef @.str.1, i32 noundef 3909)
  store ptr null, ptr @altlocp, align 8, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  %26 = load ptr, ptr @chrsubsetp, align 8, !tbaa !5
  %cmp47 = icmp ne ptr %26, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end46
  %27 = load ptr, ptr @chrsubsetp, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %27, ptr noundef @.str.1, i32 noundef 3913)
  store ptr null, ptr @chrsubsetp, align 8, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46
  %28 = load ptr, ptr @circularp, align 8, !tbaa !5
  %cmp50 = icmp ne ptr %28, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %29 = load ptr, ptr @circularp, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %29, ptr noundef @.str.1, i32 noundef 3917)
  store ptr null, ptr @circularp, align 8, !tbaa !5
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  %30 = load ptr, ptr @tr_indexdb, align 8, !tbaa !5
  %cmp53 = icmp ne ptr %30, null
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end52
  call void @Indexdb_free(ptr noundef @tr_indexdb)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end52
  %31 = load ptr, ptr @transcriptome, align 8, !tbaa !5
  %cmp56 = icmp ne ptr %31, null
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end55
  call void @Transcriptome_free(ptr noundef @transcriptome)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end55
  %32 = load ptr, ptr @transcript_map_iit, align 8, !tbaa !5
  %cmp59 = icmp ne ptr %32, null
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @IIT_free(ptr noundef @transcript_map_iit)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58
  %33 = load ptr, ptr @transcript_ef64, align 8, !tbaa !5
  %cmp62 = icmp ne ptr %33, null
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end61
  call void @EF64_free(ptr noundef @transcript_ef64)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61
  %34 = load ptr, ptr @transcript_iit, align 8, !tbaa !5
  %cmp65 = icmp ne ptr %34, null
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end64
  call void @Univ_IIT_free(ptr noundef @transcript_iit)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end64
  %35 = load ptr, ptr @chromosome_ef64, align 8, !tbaa !5
  %cmp68 = icmp ne ptr %35, null
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @EF64_free(ptr noundef @chromosome_ef64)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  %36 = load ptr, ptr @chromosome_iit, align 8, !tbaa !5
  %cmp71 = icmp ne ptr %36, null
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @Univ_IIT_free(ptr noundef @chromosome_iit)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  call void (...) @Access_controlled_cleanup()
  ret void
}

declare void @Single_cell_cleanup(...) #4

declare void @Segment_search_cleanup(...) #4

declare void @EF64_free(ptr noundef) #4

declare void @Localdb_free(ptr noundef) #4

declare void @Knownindels_free(ptr noundef) #4

declare void @Indexdb_free(ptr noundef) #4

declare void @Genomebits_free(ptr noundef) #4

declare void @Genome_free(ptr noundef) #4

declare void @Transcriptome_free(ptr noundef) #4

declare void @Access_controlled_cleanup(...) #4

; Function Attrs: nounwind uwtable
define internal void @single_thread() #1 {
entry:
  %request = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %fp_failedinput = alloca ptr, align 8
  %fp_failedinput_1 = alloca ptr, align 8
  %fp_failedinput_2 = alloca ptr, align 8
  %queryseq1 = alloca ptr, align 8
  %worker_stopwatch = alloca ptr, align 8
  %trdiagpool = alloca ptr, align 8
  %univdiagpool = alloca ptr, align 8
  %intlistpool = alloca ptr, align 8
  %uintlistpool = alloca ptr, align 8
  %univcoordlistpool = alloca ptr, align 8
  %listpool = alloca ptr, align 8
  %trpathpool = alloca ptr, align 8
  %pathpool = alloca ptr, align 8
  %hitlistpool = alloca ptr, align 8
  %transcriptpool = alloca ptr, align 8
  %vectorpool = alloca ptr, align 8
  %spliceendsgen = alloca ptr, align 8
  %spliceendsgen5 = alloca ptr, align 8
  %spliceendsgen3 = alloca ptr, align 8
  %jobid = alloca i32, align 4
  %worker_runtime = alloca double, align 8
  %except_flag = alloca i32, align 4
  %frame = alloca %struct.Except_Frame_T, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_failedinput) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_failedinput_1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_failedinput_2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker_stopwatch) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %trdiagpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %univdiagpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %intlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %uintlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %univcoordlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %listpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %trpathpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %hitlistpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcriptpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %vectorpool) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceendsgen) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceendsgen5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %spliceendsgen3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobid) #14
  store i32 0, ptr %jobid, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker_runtime) #14
  %call = call ptr @Trdiagpool_new()
  store ptr %call, ptr %trdiagpool, align 8, !tbaa !5
  %0 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  call void @Trdiagpool_init(ptr noundef %0)
  %call1 = call ptr @Univdiagpool_new()
  store ptr %call1, ptr %univdiagpool, align 8, !tbaa !5
  %1 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  call void @Univdiagpool_init(ptr noundef %1)
  %call2 = call ptr @Intlistpool_new()
  store ptr %call2, ptr %intlistpool, align 8, !tbaa !5
  %2 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  call void @Intlistpool_init(ptr noundef %2)
  %call3 = call ptr @Uintlistpool_new()
  store ptr %call3, ptr %uintlistpool, align 8, !tbaa !5
  %3 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  call void @Uintlistpool_init(ptr noundef %3)
  %call4 = call ptr @Uintlistpool_new()
  store ptr %call4, ptr %univcoordlistpool, align 8, !tbaa !5
  %4 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  call void @Uintlistpool_init(ptr noundef %4)
  %call5 = call ptr @Listpool_new()
  store ptr %call5, ptr %listpool, align 8, !tbaa !5
  %5 = load ptr, ptr %listpool, align 8, !tbaa !5
  call void @Listpool_init(ptr noundef %5)
  %call6 = call ptr @Trpathpool_new()
  store ptr %call6, ptr %trpathpool, align 8, !tbaa !5
  %6 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  call void @Trpathpool_init(ptr noundef %6)
  %call7 = call ptr @Pathpool_new()
  store ptr %call7, ptr %pathpool, align 8, !tbaa !5
  %7 = load ptr, ptr %pathpool, align 8, !tbaa !5
  call void @Pathpool_init(ptr noundef %7)
  %call8 = call ptr @Hitlistpool_new()
  store ptr %call8, ptr %hitlistpool, align 8, !tbaa !5
  %8 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  call void @Hitlistpool_init(ptr noundef %8)
  %call9 = call ptr @Transcriptpool_new()
  store ptr %call9, ptr %transcriptpool, align 8, !tbaa !5
  %9 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  call void @Transcriptpool_init(ptr noundef %9)
  %call10 = call ptr @Vectorpool_new()
  store ptr %call10, ptr %vectorpool, align 8, !tbaa !5
  %10 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  call void @Vectorpool_init(ptr noundef %10)
  %call11 = call ptr (...) @Spliceendsgen_new()
  store ptr %call11, ptr %spliceendsgen, align 8, !tbaa !5
  %call12 = call ptr (...) @Spliceendsgen_new()
  store ptr %call12, ptr %spliceendsgen5, align 8, !tbaa !5
  %call13 = call ptr (...) @Spliceendsgen_new()
  store ptr %call13, ptr %spliceendsgen3, align 8, !tbaa !5
  %11 = load i8, ptr @timingp, align 1, !tbaa !14
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call15 = call ptr (...) @Stopwatch_new()
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call15, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %worker_stopwatch, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end105, %cond.end
  %12 = load ptr, ptr @inbuffer, align 8, !tbaa !5
  %call16 = call ptr @Inbuffer_get_request(ptr noundef %12)
  store ptr %call16, ptr %request, align 8, !tbaa !5
  %cmp17 = icmp ne ptr %call16, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %except_flag) #14
  call void @llvm.lifetime.start.p0(i64 232, ptr %frame) #14
  call void @Except_link_stack(ptr noundef %frame)
  %env = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], ptr %env, i64 0, i64 0
  %call19 = call i32 @_setjmp(ptr noundef %arraydecay) #18
  store volatile i32 %call19, ptr %except_flag, align 4, !tbaa !12
  %13 = load volatile i32, ptr %except_flag, align 4, !tbaa !12
  %cmp20 = icmp eq i32 %13, 0
  br i1 %cmp20, label %if.then, label %if.else45

if.then:                                          ; preds = %do.body
  %14 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp22 = icmp eq i32 %14, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then
  %15 = load ptr, ptr %request, align 8, !tbaa !5
  %16 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  %17 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  %18 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  %19 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  %20 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  %21 = load ptr, ptr %listpool, align 8, !tbaa !5
  %22 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  %23 = load ptr, ptr %pathpool, align 8, !tbaa !5
  %24 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  %25 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  %26 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  %27 = load ptr, ptr %spliceendsgen, align 8, !tbaa !5
  %28 = load ptr, ptr %spliceendsgen5, align 8, !tbaa !5
  %29 = load ptr, ptr %spliceendsgen3, align 8, !tbaa !5
  call void @process_request_pass1(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29)
  br label %if.end31

if.else:                                          ; preds = %if.then
  %30 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp25 = icmp eq i32 %30, 1
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  %31 = load ptr, ptr %request, align 8, !tbaa !5
  %32 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  %33 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  %34 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  %35 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  %36 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  %37 = load ptr, ptr %listpool, align 8, !tbaa !5
  %38 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  %39 = load ptr, ptr %pathpool, align 8, !tbaa !5
  %40 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  %41 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  %42 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  %43 = load ptr, ptr %spliceendsgen, align 8, !tbaa !5
  %44 = load ptr, ptr %spliceendsgen5, align 8, !tbaa !5
  %45 = load ptr, ptr %spliceendsgen3, align 8, !tbaa !5
  %46 = load ptr, ptr %worker_stopwatch, align 8, !tbaa !5
  %call28 = call ptr @process_request_pass2(ptr noundef %fp_failedinput, ptr noundef %fp_failedinput_1, ptr noundef %fp_failedinput_2, ptr noundef %worker_runtime, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46)
  store ptr %call28, ptr %fp, align 8, !tbaa !5
  br label %if.end

if.else29:                                        ; preds = %if.else
  %47 = load ptr, ptr @stderr, align 8, !tbaa !5
  %48 = load i32, ptr @pass, align 4, !tbaa !14
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.425, i32 noundef %48)
  call void @abort() #15
  unreachable

if.end:                                           ; preds = %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then24
  %49 = load i8, ptr @timingp, align 1, !tbaa !14
  %conv32 = zext i8 %49 to i32
  %cmp33 = icmp eq i32 %conv32, 1
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end31
  %50 = load ptr, ptr %request, align 8, !tbaa !5
  %call36 = call ptr @Request_queryseq1(ptr noundef %50)
  store ptr %call36, ptr %queryseq1, align 8, !tbaa !5
  %51 = load ptr, ptr @stderr, align 8, !tbaa !5
  %52 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call37 = call ptr @Shortread_accession(ptr noundef %52)
  %53 = load double, ptr %worker_runtime, align 8, !tbaa !27
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.426, ptr noundef %call37, double noundef %53)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end31
  %54 = load volatile i32, ptr %except_flag, align 4, !tbaa !12
  %cmp40 = icmp eq i32 %54, 0
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  %call43 = call ptr (...) @Except_advance_stack()
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39
  br label %if.end76

if.else45:                                        ; preds = %do.body
  store volatile i32 2, ptr %except_flag, align 4, !tbaa !12
  %55 = load ptr, ptr %request, align 8, !tbaa !5
  %call46 = call ptr @Request_queryseq1(ptr noundef %55)
  store ptr %call46, ptr %queryseq1, align 8, !tbaa !5
  %56 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %cmp47 = icmp eq ptr %56, null
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else45
  %57 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.427)
  br label %if.end64

if.else51:                                        ; preds = %if.else45
  %58 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call52 = call ptr @Shortread_accession(ptr noundef %58)
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.else51
  %59 = load ptr, ptr @stderr, align 8, !tbaa !5
  %60 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call56 = call i32 @Shortread_fulllength(ptr noundef %60)
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.428, i32 noundef %call56)
  br label %if.end63

if.else58:                                        ; preds = %if.else51
  %61 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.371)
  %62 = load ptr, ptr @stderr, align 8, !tbaa !5
  %63 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call60 = call ptr @Shortread_accession(ptr noundef %63)
  %64 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call61 = call i32 @Shortread_fulllength(ptr noundef %64)
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.429, ptr noundef %call60, i32 noundef %call61)
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %if.then55
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then49
  %65 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.21)
  %66 = load ptr, ptr %request, align 8, !tbaa !5
  %call66 = call ptr @Request_queryseq2(ptr noundef %66)
  %cmp67 = icmp eq ptr %call66, null
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.end64
  %67 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %68 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  call void @Shortread_stderr_query_singleend_fasta(ptr noundef %67, ptr noundef %68)
  br label %if.end72

if.else70:                                        ; preds = %if.end64
  %69 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %70 = load ptr, ptr %request, align 8, !tbaa !5
  %call71 = call ptr @Request_queryseq2(ptr noundef %70)
  %71 = load i8, ptr @invert_first_p, align 1, !tbaa !14
  %72 = load i8, ptr @invert_second_p, align 1, !tbaa !14
  call void @Shortread_stderr_query_pairedend_fasta(ptr noundef %69, ptr noundef %call71, i8 noundef zeroext %71, i8 noundef zeroext %72)
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then69
  %73 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.21)
  %74 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.430)
  %75 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.431)
  call void @exit(i32 noundef 9) #15
  unreachable

if.end76:                                         ; preds = %if.end44
  %76 = load volatile i32, ptr %except_flag, align 4, !tbaa !12
  %cmp77 = icmp eq i32 %76, 1
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  %exception = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 4
  %77 = load ptr, ptr %exception, align 8, !tbaa !37
  %file = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 2
  %78 = load ptr, ptr %file, align 8, !tbaa !39
  %line = getelementptr inbounds %struct.Except_Frame_T, ptr %frame, i32 0, i32 3
  %79 = load i32, ptr %line, align 8, !tbaa !40
  call void @Except_raise(ptr noundef %77, ptr noundef %78, i32 noundef %79)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76
  call void @llvm.lifetime.end.p0(i64 232, ptr %frame) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %except_flag) #14
  br label %do.cond

do.cond:                                          ; preds = %if.end80
  br label %do.end

do.end:                                           ; preds = %do.cond
  %80 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp81 = icmp eq i32 %80, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %do.end
  br label %if.end101

if.else84:                                        ; preds = %do.end
  %81 = load i32, ptr @pass, align 4, !tbaa !14
  %cmp85 = icmp eq i32 %81, 1
  br i1 %cmp85, label %if.then87, label %if.end100

if.then87:                                        ; preds = %if.else84
  %82 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %82)
  %83 = load ptr, ptr %fp_failedinput, align 8, !tbaa !5
  %cmp88 = icmp ne ptr %83, null
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then87
  %84 = load ptr, ptr %fp_failedinput, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %84)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.then87
  %85 = load ptr, ptr %fp_failedinput_1, align 8, !tbaa !5
  %cmp92 = icmp ne ptr %85, null
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end91
  %86 = load ptr, ptr %fp_failedinput_1, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %86)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91
  %87 = load ptr, ptr %fp_failedinput_2, align 8, !tbaa !5
  %cmp96 = icmp ne ptr %87, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end95
  %88 = load ptr, ptr %fp_failedinput_2, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %88)
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end95
  %89 = load ptr, ptr %fp, align 8, !tbaa !5
  %90 = load ptr, ptr %fp_failedinput, align 8, !tbaa !5
  %91 = load ptr, ptr %fp_failedinput_1, align 8, !tbaa !5
  %92 = load ptr, ptr %fp_failedinput_2, align 8, !tbaa !5
  call void @Outbuffer_print_filestrings(ptr noundef %89, ptr noundef %90, ptr noundef %91, ptr noundef %92)
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.else84
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then83
  %93 = load i32, ptr %jobid, align 4, !tbaa !12
  %rem = srem i32 %93, 1
  %cmp102 = icmp eq i32 %rem, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end101
  %94 = load ptr, ptr %trdiagpool, align 8, !tbaa !5
  call void @Trdiagpool_reset_memory(ptr noundef %94)
  %95 = load ptr, ptr %univdiagpool, align 8, !tbaa !5
  call void @Univdiagpool_reset_memory(ptr noundef %95)
  %96 = load ptr, ptr %intlistpool, align 8, !tbaa !5
  call void @Intlistpool_reset_memory(ptr noundef %96)
  %97 = load ptr, ptr %uintlistpool, align 8, !tbaa !5
  call void @Uintlistpool_reset_memory(ptr noundef %97)
  %98 = load ptr, ptr %univcoordlistpool, align 8, !tbaa !5
  call void @Uintlistpool_reset_memory(ptr noundef %98)
  %99 = load ptr, ptr %listpool, align 8, !tbaa !5
  call void @Listpool_reset_memory(ptr noundef %99)
  %100 = load ptr, ptr %trpathpool, align 8, !tbaa !5
  call void @Trpathpool_reset_memory(ptr noundef %100)
  %101 = load ptr, ptr %pathpool, align 8, !tbaa !5
  call void @Pathpool_reset_memory(ptr noundef %101)
  %102 = load ptr, ptr %hitlistpool, align 8, !tbaa !5
  call void @Hitlistpool_reset_memory(ptr noundef %102)
  %103 = load ptr, ptr %transcriptpool, align 8, !tbaa !5
  call void @Transcriptpool_reset_memory(ptr noundef %103)
  %104 = load ptr, ptr %vectorpool, align 8, !tbaa !5
  call void @Vectorpool_reset_memory(ptr noundef %104)
  %105 = load ptr, ptr %spliceendsgen, align 8, !tbaa !5
  call void @Spliceendsgen_free_memory(ptr noundef %105)
  %106 = load ptr, ptr %spliceendsgen5, align 8, !tbaa !5
  call void @Spliceendsgen_free_memory(ptr noundef %106)
  %107 = load ptr, ptr %spliceendsgen3, align 8, !tbaa !5
  call void @Spliceendsgen_free_memory(ptr noundef %107)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end101
  call void @Request_free(ptr noundef %request)
  br label %while.cond, !llvm.loop !55

while.end:                                        ; preds = %while.cond
  %108 = load ptr, ptr %worker_stopwatch, align 8, !tbaa !5
  %cmp106 = icmp ne ptr %108, null
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %while.end
  call void @Stopwatch_free(ptr noundef %worker_stopwatch)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %while.end
  call void @Spliceendsgen_free(ptr noundef %spliceendsgen3)
  call void @Spliceendsgen_free(ptr noundef %spliceendsgen5)
  call void @Spliceendsgen_free(ptr noundef %spliceendsgen)
  call void @Trpathpool_free(ptr noundef %trpathpool)
  call void @Pathpool_free(ptr noundef %pathpool)
  call void @Hitlistpool_free(ptr noundef %hitlistpool)
  call void @Transcriptpool_free(ptr noundef %transcriptpool)
  call void @Vectorpool_free(ptr noundef %vectorpool)
  call void @Listpool_free(ptr noundef %listpool)
  call void @Uintlistpool_free(ptr noundef %univcoordlistpool)
  call void @Uintlistpool_free(ptr noundef %uintlistpool)
  call void @Intlistpool_free(ptr noundef %intlistpool)
  call void @Univdiagpool_free(ptr noundef %univdiagpool)
  call void @Trdiagpool_free(ptr noundef %trdiagpool)
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker_runtime) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobid) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceendsgen3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceendsgen5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %spliceendsgen) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %vectorpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcriptpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %hitlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %trpathpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %listpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %univcoordlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %uintlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %intlistpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %univdiagpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %trdiagpool) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker_stopwatch) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_failedinput_2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_failedinput_1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_failedinput) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #14
  ret void
}

declare ptr @Trdiagpool_new() #4

declare void @Trdiagpool_init(ptr noundef) #4

declare ptr @Univdiagpool_new() #4

declare void @Univdiagpool_init(ptr noundef) #4

declare ptr @Intlistpool_new() #4

declare void @Intlistpool_init(ptr noundef) #4

declare ptr @Uintlistpool_new() #4

declare void @Uintlistpool_init(ptr noundef) #4

declare ptr @Listpool_new() #4

declare void @Listpool_init(ptr noundef) #4

declare ptr @Trpathpool_new() #4

declare void @Trpathpool_init(ptr noundef) #4

declare ptr @Pathpool_new() #4

declare void @Pathpool_init(ptr noundef) #4

declare ptr @Hitlistpool_new() #4

declare void @Hitlistpool_init(ptr noundef) #4

declare ptr @Transcriptpool_new() #4

declare void @Transcriptpool_init(ptr noundef) #4

declare ptr @Vectorpool_new() #4

declare void @Vectorpool_init(ptr noundef) #4

declare ptr @Spliceendsgen_new(...) #4

declare ptr @Inbuffer_get_request(ptr noundef) #4

declare void @Except_link_stack(ptr noundef) #4

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) #13

; Function Attrs: nounwind uwtable
define internal void @process_request_pass1(ptr noundef %request, ptr noundef %trdiagpool, ptr noundef %univdiagpool, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %trpathpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %transcriptpool, ptr noundef %spliceendsgen, ptr noundef %spliceendsgen5, ptr noundef %spliceendsgen3) #1 {
entry:
  %request.addr = alloca ptr, align 8
  %trdiagpool.addr = alloca ptr, align 8
  %univdiagpool.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %trpathpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %spliceendsgen5.addr = alloca ptr, align 8
  %spliceendsgen3.addr = alloca ptr, align 8
  %queryseq1 = alloca ptr, align 8
  %queryseq2 = alloca ptr, align 8
  %patharray = alloca ptr, align 8
  %patharray5 = alloca ptr, align 8
  %patharray3 = alloca ptr, align 8
  %path5 = alloca ptr, align 8
  %path3 = alloca ptr, align 8
  %pathpairarray = alloca ptr, align 8
  %pathpair = alloca ptr, align 8
  %npaths_primary = alloca i32, align 4
  %npaths_altloc = alloca i32, align 4
  %npaths5_primary = alloca i32, align 4
  %npaths5_altloc = alloca i32, align 4
  %npaths3_primary = alloca i32, align 4
  %npaths3_altloc = alloca i32, align 4
  %i = alloca i32, align 4
  %first_absmq = alloca i32, align 4
  %second_absmq = alloca i32, align 4
  %first_absmq5 = alloca i32, align 4
  %second_absmq5 = alloca i32, align 4
  %first_absmq3 = alloca i32, align 4
  %second_absmq3 = alloca i32, align 4
  %final_pairtype = alloca i32, align 4
  store ptr %request, ptr %request.addr, align 8, !tbaa !5
  store ptr %trdiagpool, ptr %trdiagpool.addr, align 8, !tbaa !5
  store ptr %univdiagpool, ptr %univdiagpool.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %trpathpool, ptr %trpathpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %spliceendsgen5, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  store ptr %spliceendsgen3, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %patharray) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %patharray5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %patharray3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %path3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathpairarray) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathpair) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths_primary) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths_altloc) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths5_primary) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths5_altloc) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths3_primary) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths3_altloc) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_absmq) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %second_absmq) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_absmq5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %second_absmq5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_absmq3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %second_absmq3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %final_pairtype) #14
  %0 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %call = call ptr @Request_queryseq1(ptr noundef %0)
  store ptr %call, ptr %queryseq1, align 8, !tbaa !5
  %1 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %call1 = call ptr @Request_queryseq2(ptr noundef %1)
  store ptr %call1, ptr %queryseq2, align 8, !tbaa !5
  %2 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %3)
  %4 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %5 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %6 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %7 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %8 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call3 = call ptr @Stage1_single_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, i8 noundef zeroext 1, i32 noundef 0)
  store ptr %call3, ptr %patharray, align 8, !tbaa !5
  %20 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %21 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add = add nsw i32 %20, %21
  %cmp4 = icmp eq i32 %add, 1
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %22 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %23, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %24 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds ptr, ptr %24, i64 0
  %25 = load ptr, ptr %arrayidx8, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %25, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %26 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds ptr, ptr %26, i64 0
  %27 = load ptr, ptr %arrayidx9, align 8, !tbaa !5
  %28 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %27, ptr noundef %28)
  %call10 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, ptr %i, align 4, !tbaa !12
  %30 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %31 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add11 = add nsw i32 %30, %31
  %cmp12 = icmp slt i32 %29, %add11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %patharray, align 8, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %33 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %32, i64 %idxprom
  %34 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx14, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %patharray, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %40, ptr noundef @.str.1, i32 noundef 1005)
  store ptr null, ptr %patharray, align 8, !tbaa !5
  br label %if.end171

if.else:                                          ; preds = %entry
  %41 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %cmp15 = icmp eq ptr %41, null
  br i1 %cmp15, label %if.then17, label %if.else39

if.then17:                                        ; preds = %if.else
  %42 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %42)
  %43 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %44 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %45 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %46 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %47 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %50 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %57 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %58 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call18 = call ptr @Stage1_single_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, i8 noundef zeroext 0, i32 noundef 0)
  store ptr %call18, ptr %patharray, align 8, !tbaa !5
  %59 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %60 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add19 = add nsw i32 %59, %60
  %cmp20 = icmp eq i32 %add19, 1
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.then17
  %call23 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %61 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds ptr, ptr %61, i64 0
  %62 = load ptr, ptr %arrayidx24, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %62, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %63 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds ptr, ptr %63, i64 0
  %64 = load ptr, ptr %arrayidx25, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %64, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %65 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds ptr, ptr %65, i64 0
  %66 = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %67 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %66, ptr noundef %67)
  %call27 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.then17
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc36, %if.end28
  %68 = load i32, ptr %i, align 4, !tbaa !12
  %69 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %70 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add30 = add nsw i32 %69, %70
  %cmp31 = icmp slt i32 %68, %add30
  br i1 %cmp31, label %for.body33, label %for.end38

for.body33:                                       ; preds = %for.cond29
  %71 = load ptr, ptr %patharray, align 8, !tbaa !5
  %72 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom34 = sext i32 %72 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %71, i64 %idxprom34
  %73 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %74 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %75 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %76 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %77 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx35, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %78 = load i32, ptr %i, align 4, !tbaa !12
  %inc37 = add nsw i32 %78, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !12
  br label %for.cond29, !llvm.loop !57

for.end38:                                        ; preds = %for.cond29
  %79 = load ptr, ptr %patharray, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %79, ptr noundef @.str.1, i32 noundef 1033)
  store ptr null, ptr %patharray, align 8, !tbaa !5
  br label %if.end170

if.else39:                                        ; preds = %if.else
  %80 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call40 = call i32 @Shortread_fulllength(ptr noundef %80)
  %81 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp41 = icmp slt i32 %call40, %81
  br i1 %cmp41, label %land.lhs.true, label %if.else47

land.lhs.true:                                    ; preds = %if.else39
  %82 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %call43 = call i32 @Shortread_fulllength(ptr noundef %82)
  %83 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp44 = icmp slt i32 %call43, %83
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %land.lhs.true
  br label %if.end169

if.else47:                                        ; preds = %land.lhs.true, %if.else39
  %84 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call48 = call i32 @Shortread_fulllength(ptr noundef %84)
  %85 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp49 = icmp slt i32 %call48, %85
  br i1 %cmp49, label %if.then51, label %if.else73

if.then51:                                        ; preds = %if.else47
  %86 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %86)
  %87 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %88 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %89 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %90 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %91 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %92 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %93 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %94 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %96 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %97 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %98 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %99 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %100 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %101 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call52 = call ptr @Stage1_single_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %98, ptr noundef %99, ptr noundef %100, ptr noundef %101, ptr noundef %102, i8 noundef zeroext 0, i32 noundef 0)
  store ptr %call52, ptr %patharray, align 8, !tbaa !5
  %103 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %104 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add53 = add nsw i32 %103, %104
  %cmp54 = icmp eq i32 %add53, 1
  br i1 %cmp54, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.then51
  %call57 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %105 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds ptr, ptr %105, i64 0
  %106 = load ptr, ptr %arrayidx58, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %106, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %107 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds ptr, ptr %107, i64 0
  %108 = load ptr, ptr %arrayidx59, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %108, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %109 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds ptr, ptr %109, i64 0
  %110 = load ptr, ptr %arrayidx60, align 8, !tbaa !5
  %111 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %110, ptr noundef %111)
  %call61 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.then51
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc70, %if.end62
  %112 = load i32, ptr %i, align 4, !tbaa !12
  %113 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %114 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add64 = add nsw i32 %113, %114
  %cmp65 = icmp slt i32 %112, %add64
  br i1 %cmp65, label %for.body67, label %for.end72

for.body67:                                       ; preds = %for.cond63
  %115 = load ptr, ptr %patharray, align 8, !tbaa !5
  %116 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom68 = sext i32 %116 to i64
  %arrayidx69 = getelementptr inbounds ptr, ptr %115, i64 %idxprom68
  %117 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %118 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %119 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %120 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %121 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx69, ptr noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %121)
  br label %for.inc70

for.inc70:                                        ; preds = %for.body67
  %122 = load i32, ptr %i, align 4, !tbaa !12
  %inc71 = add nsw i32 %122, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !12
  br label %for.cond63, !llvm.loop !58

for.end72:                                        ; preds = %for.cond63
  %123 = load ptr, ptr %patharray, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %123, ptr noundef @.str.1, i32 noundef 1064)
  store ptr null, ptr %patharray, align 8, !tbaa !5
  br label %if.end168

if.else73:                                        ; preds = %if.else47
  %124 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %call74 = call i32 @Shortread_fulllength(ptr noundef %124)
  %125 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp75 = icmp slt i32 %call74, %125
  br i1 %cmp75, label %if.then77, label %if.else99

if.then77:                                        ; preds = %if.else73
  %126 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %126)
  %127 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %128 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %129 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %130 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %131 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %136 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %137 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %138 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %139 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %140 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call78 = call ptr @Stage1_single_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, i8 noundef zeroext 0, i32 noundef 0)
  store ptr %call78, ptr %patharray, align 8, !tbaa !5
  %143 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %144 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add79 = add nsw i32 %143, %144
  %cmp80 = icmp eq i32 %add79, 1
  br i1 %cmp80, label %if.then82, label %if.end88

if.then82:                                        ; preds = %if.then77
  %call83 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %145 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx84 = getelementptr inbounds ptr, ptr %145, i64 0
  %146 = load ptr, ptr %arrayidx84, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %146, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %147 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx85 = getelementptr inbounds ptr, ptr %147, i64 0
  %148 = load ptr, ptr %arrayidx85, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %148, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %149 = load ptr, ptr %patharray, align 8, !tbaa !5
  %arrayidx86 = getelementptr inbounds ptr, ptr %149, i64 0
  %150 = load ptr, ptr %arrayidx86, align 8, !tbaa !5
  %151 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %150, ptr noundef %151)
  %call87 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.then77
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc96, %if.end88
  %152 = load i32, ptr %i, align 4, !tbaa !12
  %153 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %154 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add90 = add nsw i32 %153, %154
  %cmp91 = icmp slt i32 %152, %add90
  br i1 %cmp91, label %for.body93, label %for.end98

for.body93:                                       ; preds = %for.cond89
  %155 = load ptr, ptr %patharray, align 8, !tbaa !5
  %156 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom94 = sext i32 %156 to i64
  %arrayidx95 = getelementptr inbounds ptr, ptr %155, i64 %idxprom94
  %157 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %160 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %161 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx95, ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160, ptr noundef %161)
  br label %for.inc96

for.inc96:                                        ; preds = %for.body93
  %162 = load i32, ptr %i, align 4, !tbaa !12
  %inc97 = add nsw i32 %162, 1
  store i32 %inc97, ptr %i, align 4, !tbaa !12
  br label %for.cond89, !llvm.loop !59

for.end98:                                        ; preds = %for.cond89
  %163 = load ptr, ptr %patharray, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %163, ptr noundef @.str.1, i32 noundef 1091)
  store ptr null, ptr %patharray, align 8, !tbaa !5
  br label %if.end167

if.else99:                                        ; preds = %if.else73
  %164 = load ptr, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %164)
  %165 = load ptr, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %165)
  %166 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %167 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %168 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %169 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %170 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %171 = load i32, ptr @pairmax_linear, align 4, !tbaa !12
  %172 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %176 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %178 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %179 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %180 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %181 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %182 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %183 = load ptr, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  %184 = load ptr, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  %call100 = call ptr @Stage1_paired_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %final_pairtype, ptr noundef %patharray5, ptr noundef %npaths5_primary, ptr noundef %npaths5_altloc, ptr noundef %first_absmq5, ptr noundef %second_absmq5, ptr noundef %patharray3, ptr noundef %npaths3_primary, ptr noundef %npaths3_altloc, ptr noundef %first_absmq3, ptr noundef %second_absmq3, ptr noundef %166, ptr noundef %167, ptr noundef %168, ptr noundef %169, ptr noundef %170, i32 noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %179, ptr noundef %180, ptr noundef %181, ptr noundef %182, ptr noundef %183, ptr noundef %184, i32 noundef 0)
  store ptr %call100, ptr %pathpairarray, align 8, !tbaa !5
  %cmp101 = icmp ne ptr %call100, null
  br i1 %cmp101, label %if.then103, label %if.else125

if.then103:                                       ; preds = %if.else99
  %185 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %186 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add104 = add nsw i32 %185, %186
  %cmp105 = icmp eq i32 %add104, 1
  br i1 %cmp105, label %if.then107, label %if.end114

if.then107:                                       ; preds = %if.then103
  %187 = load ptr, ptr %pathpairarray, align 8, !tbaa !5
  %arrayidx108 = getelementptr inbounds ptr, ptr %187, i64 0
  %188 = load ptr, ptr %arrayidx108, align 8, !tbaa !5
  store ptr %188, ptr %pathpair, align 8, !tbaa !5
  %189 = load ptr, ptr %pathpair, align 8, !tbaa !5
  %path5109 = getelementptr inbounds %struct.Pathpair_T, ptr %189, i32 0, i32 8
  %190 = load ptr, ptr %path5109, align 8, !tbaa !60
  store ptr %190, ptr %path5, align 8, !tbaa !5
  %191 = load ptr, ptr %pathpair, align 8, !tbaa !5
  %path3110 = getelementptr inbounds %struct.Pathpair_T, ptr %191, i32 0, i32 9
  %192 = load ptr, ptr %path3110, align 8, !tbaa !63
  store ptr %192, ptr %path3, align 8, !tbaa !5
  %call111 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %193 = load ptr, ptr %pathpairarray, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds ptr, ptr %193, i64 0
  %194 = load ptr, ptr %arrayidx112, align 8, !tbaa !5
  call void @Pathpair_learn_insertlengths(ptr noundef %194, ptr noundef @insertlengths)
  %195 = load ptr, ptr %path5, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %195, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %196 = load ptr, ptr %path3, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %196, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %197 = load ptr, ptr %path5, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %197, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %198 = load ptr, ptr %path5, align 8, !tbaa !5
  %199 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %198, ptr noundef %199)
  %200 = load ptr, ptr %path3, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %200, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %201 = load ptr, ptr %path3, align 8, !tbaa !5
  %202 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %201, ptr noundef %202)
  %call113 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %if.then103
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc122, %if.end114
  %203 = load i32, ptr %i, align 4, !tbaa !12
  %204 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %205 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %add116 = add nsw i32 %204, %205
  %cmp117 = icmp slt i32 %203, %add116
  br i1 %cmp117, label %for.body119, label %for.end124

for.body119:                                      ; preds = %for.cond115
  %206 = load ptr, ptr %pathpairarray, align 8, !tbaa !5
  %207 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom120 = sext i32 %207 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %206, i64 %idxprom120
  %208 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %209 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %210 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %211 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %212 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Pathpair_free(ptr noundef %arrayidx121, ptr noundef %208, ptr noundef %209, ptr noundef %210, ptr noundef %211, ptr noundef %212)
  br label %for.inc122

for.inc122:                                       ; preds = %for.body119
  %213 = load i32, ptr %i, align 4, !tbaa !12
  %inc123 = add nsw i32 %213, 1
  store i32 %inc123, ptr %i, align 4, !tbaa !12
  br label %for.cond115, !llvm.loop !64

for.end124:                                       ; preds = %for.cond115
  %214 = load ptr, ptr %pathpairarray, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %214, ptr noundef @.str.1, i32 noundef 1138)
  store ptr null, ptr %pathpairarray, align 8, !tbaa !5
  br label %if.end166

if.else125:                                       ; preds = %if.else99
  %215 = load i32, ptr %npaths5_primary, align 4, !tbaa !12
  %216 = load i32, ptr %npaths5_altloc, align 4, !tbaa !12
  %add126 = add nsw i32 %215, %216
  %cmp127 = icmp eq i32 %add126, 1
  br i1 %cmp127, label %if.then129, label %if.end135

if.then129:                                       ; preds = %if.else125
  %call130 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %217 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %arrayidx131 = getelementptr inbounds ptr, ptr %217, i64 0
  %218 = load ptr, ptr %arrayidx131, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %218, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %219 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %arrayidx132 = getelementptr inbounds ptr, ptr %219, i64 0
  %220 = load ptr, ptr %arrayidx132, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %220, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %221 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %arrayidx133 = getelementptr inbounds ptr, ptr %221, i64 0
  %222 = load ptr, ptr %arrayidx133, align 8, !tbaa !5
  %223 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %222, ptr noundef %223)
  %call134 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end135

if.end135:                                        ; preds = %if.then129, %if.else125
  %224 = load i32, ptr %npaths3_primary, align 4, !tbaa !12
  %225 = load i32, ptr %npaths3_altloc, align 4, !tbaa !12
  %add136 = add nsw i32 %224, %225
  %cmp137 = icmp eq i32 %add136, 1
  br i1 %cmp137, label %if.then139, label %if.end145

if.then139:                                       ; preds = %if.end135
  %call140 = call i32 @pthread_mutex_lock(ptr noundef @pass1_lock) #14
  %226 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %arrayidx141 = getelementptr inbounds ptr, ptr %226, i64 0
  %227 = load ptr, ptr %arrayidx141, align 8, !tbaa !5
  call void @Path_learn_defect_rate(ptr noundef %227, ptr noundef @total_mismatches, ptr noundef @total_querylength)
  %228 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %arrayidx142 = getelementptr inbounds ptr, ptr %228, i64 0
  %229 = load ptr, ptr %arrayidx142, align 8, !tbaa !5
  call void @Path_learn_introns(ptr noundef %229, ptr noundef @donor_startpoints, ptr noundef @donor_partners, ptr noundef @acceptor_startpoints, ptr noundef @acceptor_partners, ptr noundef @antidonor_startpoints, ptr noundef @antidonor_partners, ptr noundef @antiacceptor_startpoints, ptr noundef @antiacceptor_partners)
  %230 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %arrayidx143 = getelementptr inbounds ptr, ptr %230, i64 0
  %231 = load ptr, ptr %arrayidx143, align 8, !tbaa !5
  %232 = load ptr, ptr @indel_table, align 8, !tbaa !5
  call void @Path_learn_indels(ptr noundef %231, ptr noundef %232)
  %call144 = call i32 @pthread_mutex_unlock(ptr noundef @pass1_lock) #14
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %if.end135
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc153, %if.end145
  %233 = load i32, ptr %i, align 4, !tbaa !12
  %234 = load i32, ptr %npaths5_primary, align 4, !tbaa !12
  %235 = load i32, ptr %npaths5_altloc, align 4, !tbaa !12
  %add147 = add nsw i32 %234, %235
  %cmp148 = icmp slt i32 %233, %add147
  br i1 %cmp148, label %for.body150, label %for.end155

for.body150:                                      ; preds = %for.cond146
  %236 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %237 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom151 = sext i32 %237 to i64
  %arrayidx152 = getelementptr inbounds ptr, ptr %236, i64 %idxprom151
  %238 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %239 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %240 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %241 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %242 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx152, ptr noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %241, ptr noundef %242)
  br label %for.inc153

for.inc153:                                       ; preds = %for.body150
  %243 = load i32, ptr %i, align 4, !tbaa !12
  %inc154 = add nsw i32 %243, 1
  store i32 %inc154, ptr %i, align 4, !tbaa !12
  br label %for.cond146, !llvm.loop !65

for.end155:                                       ; preds = %for.cond146
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc163, %for.end155
  %244 = load i32, ptr %i, align 4, !tbaa !12
  %245 = load i32, ptr %npaths3_primary, align 4, !tbaa !12
  %246 = load i32, ptr %npaths3_altloc, align 4, !tbaa !12
  %add157 = add nsw i32 %245, %246
  %cmp158 = icmp slt i32 %244, %add157
  br i1 %cmp158, label %for.body160, label %for.end165

for.body160:                                      ; preds = %for.cond156
  %247 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %248 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom161 = sext i32 %248 to i64
  %arrayidx162 = getelementptr inbounds ptr, ptr %247, i64 %idxprom161
  %249 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %250 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %251 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %252 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx162, ptr noundef %249, ptr noundef %250, ptr noundef %251, ptr noundef %252, ptr noundef %253)
  br label %for.inc163

for.inc163:                                       ; preds = %for.body160
  %254 = load i32, ptr %i, align 4, !tbaa !12
  %inc164 = add nsw i32 %254, 1
  store i32 %inc164, ptr %i, align 4, !tbaa !12
  br label %for.cond156, !llvm.loop !66

for.end165:                                       ; preds = %for.cond156
  %255 = load ptr, ptr %patharray3, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %255, ptr noundef @.str.1, i32 noundef 1178)
  store ptr null, ptr %patharray3, align 8, !tbaa !5
  %256 = load ptr, ptr %patharray5, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %256, ptr noundef @.str.1, i32 noundef 1179)
  store ptr null, ptr %patharray5, align 8, !tbaa !5
  br label %if.end166

if.end166:                                        ; preds = %for.end165, %for.end124
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %for.end98
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %for.end72
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.then46
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %for.end38
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %final_pairtype) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %second_absmq3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_absmq3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %second_absmq5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_absmq5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %second_absmq) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_absmq) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths3_altloc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths3_primary) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths5_altloc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths5_primary) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths_altloc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths_primary) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathpair) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathpairarray) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %path3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %path5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %patharray3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %patharray5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %patharray) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @process_request_pass2(ptr noundef %fp_failedinput, ptr noundef %fp_failedinput_1, ptr noundef %fp_failedinput_2, ptr noundef %worker_runtime, ptr noundef %request, ptr noundef %trdiagpool, ptr noundef %univdiagpool, ptr noundef %intlistpool, ptr noundef %uintlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %trpathpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %hitlistpool, ptr noundef %transcriptpool, ptr noundef %spliceendsgen, ptr noundef %spliceendsgen5, ptr noundef %spliceendsgen3, ptr noundef %worker_stopwatch) #1 {
entry:
  %retval = alloca ptr, align 8
  %fp_failedinput.addr = alloca ptr, align 8
  %fp_failedinput_1.addr = alloca ptr, align 8
  %fp_failedinput_2.addr = alloca ptr, align 8
  %worker_runtime.addr = alloca ptr, align 8
  %request.addr = alloca ptr, align 8
  %trdiagpool.addr = alloca ptr, align 8
  %univdiagpool.addr = alloca ptr, align 8
  %intlistpool.addr = alloca ptr, align 8
  %uintlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %trpathpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %hitlistpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %spliceendsgen.addr = alloca ptr, align 8
  %spliceendsgen5.addr = alloca ptr, align 8
  %spliceendsgen3.addr = alloca ptr, align 8
  %worker_stopwatch.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %result = alloca ptr, align 8
  %jobid = alloca i32, align 4
  %queryseq1 = alloca ptr, align 8
  %queryseq2 = alloca ptr, align 8
  %patharray = alloca ptr, align 8
  %patharray5 = alloca ptr, align 8
  %patharray3 = alloca ptr, align 8
  %pathpairarray = alloca ptr, align 8
  %npaths_primary = alloca i32, align 4
  %npaths_altloc = alloca i32, align 4
  %npaths5_primary = alloca i32, align 4
  %npaths5_altloc = alloca i32, align 4
  %npaths3_primary = alloca i32, align 4
  %npaths3_altloc = alloca i32, align 4
  %i = alloca i32, align 4
  %first_absmq = alloca i32, align 4
  %second_absmq = alloca i32, align 4
  %first_absmq5 = alloca i32, align 4
  %second_absmq5 = alloca i32, align 4
  %first_absmq3 = alloca i32, align 4
  %second_absmq3 = alloca i32, align 4
  %final_pairtype = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp_failedinput, ptr %fp_failedinput.addr, align 8, !tbaa !5
  store ptr %fp_failedinput_1, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  store ptr %fp_failedinput_2, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  store ptr %worker_runtime, ptr %worker_runtime.addr, align 8, !tbaa !5
  store ptr %request, ptr %request.addr, align 8, !tbaa !5
  store ptr %trdiagpool, ptr %trdiagpool.addr, align 8, !tbaa !5
  store ptr %univdiagpool, ptr %univdiagpool.addr, align 8, !tbaa !5
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %uintlistpool, ptr %uintlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %trpathpool, ptr %trpathpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %hitlistpool, ptr %hitlistpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %spliceendsgen, ptr %spliceendsgen.addr, align 8, !tbaa !5
  store ptr %spliceendsgen5, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  store ptr %spliceendsgen3, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  store ptr %worker_stopwatch, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobid) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %patharray) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %patharray5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %patharray3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathpairarray) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths_primary) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths_altloc) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths5_primary) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths5_altloc) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths3_primary) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %npaths3_altloc) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_absmq) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %second_absmq) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_absmq5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %second_absmq5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_absmq3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %second_absmq3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr %final_pairtype) #14
  %0 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %call = call i32 @Request_id(ptr noundef %0)
  store i32 %call, ptr %jobid, align 4, !tbaa !12
  %1 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %call1 = call ptr @Request_queryseq1(ptr noundef %1)
  store ptr %call1, ptr %queryseq1, align 8, !tbaa !5
  %2 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %call2 = call ptr @Request_queryseq2(ptr noundef %2)
  store ptr %call2, ptr %queryseq2, align 8, !tbaa !5
  %3 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  call void @Stopwatch_start(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr @single_cell_p, align 1, !tbaa !14
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %6)
  %7 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %8 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %9 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %10 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %11 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call6 = call ptr @Stage1_single_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, i8 noundef zeroext 1, i32 noundef 1)
  store ptr %call6, ptr %patharray, align 8, !tbaa !5
  %23 = load i32, ptr %jobid, align 4, !tbaa !12
  %24 = load ptr, ptr %patharray, align 8, !tbaa !5
  %25 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %26 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %27 = load i32, ptr %first_absmq, align 4, !tbaa !12
  %28 = load i32, ptr %second_absmq, align 4, !tbaa !12
  %call7 = call ptr @Result_single_read_new(i32 noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  store ptr %call7, ptr %result, align 8, !tbaa !5
  %29 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %result, align 8, !tbaa !5
  %33 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call8 = call ptr @Output_filestring_fromresult(ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34)
  store ptr %call8, ptr %fp, align 8, !tbaa !5
  %35 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp9 = icmp eq ptr %35, null
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %36 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call11 = call double @Stopwatch_stop(ptr noundef %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call11, %cond.false ]
  %37 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond, ptr %37, align 8, !tbaa !27
  %38 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %42 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42)
  %43 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %43, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %44 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %cmp12 = icmp eq ptr %44, null
  br i1 %cmp12, label %if.then14, label %if.else25

if.then14:                                        ; preds = %if.else
  %45 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %45)
  %46 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %47 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %48 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %49 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %50 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %51 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %53 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %54 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %56 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %57 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %58 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %61 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call15 = call ptr @Stage1_single_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, i8 noundef zeroext 0, i32 noundef 1)
  store ptr %call15, ptr %patharray, align 8, !tbaa !5
  %62 = load i32, ptr %jobid, align 4, !tbaa !12
  %63 = load ptr, ptr %patharray, align 8, !tbaa !5
  %64 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %65 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %66 = load i32, ptr %first_absmq, align 4, !tbaa !12
  %67 = load i32, ptr %second_absmq, align 4, !tbaa !12
  %call16 = call ptr @Result_single_read_new(i32 noundef %62, ptr noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67)
  store ptr %call16, ptr %result, align 8, !tbaa !5
  %68 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %69 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %70 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %71 = load ptr, ptr %result, align 8, !tbaa !5
  %72 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %73 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call17 = call ptr @Output_filestring_fromresult(ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73)
  store ptr %call17, ptr %fp, align 8, !tbaa !5
  %74 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp18 = icmp eq ptr %74, null
  br i1 %cmp18, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.then14
  br label %cond.end23

cond.false21:                                     ; preds = %if.then14
  %75 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call22 = call double @Stopwatch_stop(ptr noundef %75)
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true20
  %cond24 = phi double [ 0.000000e+00, %cond.true20 ], [ %call22, %cond.false21 ]
  %76 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond24, ptr %76, align 8, !tbaa !27
  %77 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %78 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %79 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %80 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81)
  %82 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %82, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.else
  %83 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call26 = call i32 @Shortread_fulllength(ptr noundef %83)
  %84 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp27 = icmp slt i32 %call26, %84
  br i1 %cmp27, label %land.lhs.true, label %if.else42

land.lhs.true:                                    ; preds = %if.else25
  %85 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %call29 = call i32 @Shortread_fulllength(ptr noundef %85)
  %86 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp30 = icmp slt i32 %call29, %86
  br i1 %cmp30, label %if.then32, label %if.else42

if.then32:                                        ; preds = %land.lhs.true
  store ptr null, ptr %patharray5, align 8, !tbaa !5
  store ptr null, ptr %patharray3, align 8, !tbaa !5
  %87 = load i32, ptr %jobid, align 4, !tbaa !12
  %88 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %89 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %call33 = call ptr @Result_paired_as_singles_new(i32 noundef %87, ptr noundef %88, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %89, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store ptr %call33, ptr %result, align 8, !tbaa !5
  %90 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %91 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %92 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %93 = load ptr, ptr %result, align 8, !tbaa !5
  %94 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %95 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call34 = call ptr @Output_filestring_fromresult(ptr noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95)
  store ptr %call34, ptr %fp, align 8, !tbaa !5
  %96 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp35 = icmp eq ptr %96, null
  br i1 %cmp35, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %if.then32
  br label %cond.end40

cond.false38:                                     ; preds = %if.then32
  %97 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call39 = call double @Stopwatch_stop(ptr noundef %97)
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false38, %cond.true37
  %cond41 = phi double [ 0.000000e+00, %cond.true37 ], [ %call39, %cond.false38 ]
  %98 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond41, ptr %98, align 8, !tbaa !27
  %99 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %100 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %101 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %102 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %103 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %99, ptr noundef %100, ptr noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %104, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else42:                                        ; preds = %land.lhs.true, %if.else25
  %105 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %call43 = call i32 @Shortread_fulllength(ptr noundef %105)
  %106 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp44 = icmp slt i32 %call43, %106
  br i1 %cmp44, label %if.then46, label %if.else57

if.then46:                                        ; preds = %if.else42
  %107 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %107)
  store ptr null, ptr %patharray5, align 8, !tbaa !5
  %108 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %109 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %110 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %111 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %112 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %113 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %114 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %116 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %117 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %118 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %119 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %120 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %121 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %122 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %123 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call47 = call ptr @Stage1_single_read(ptr noundef %npaths3_primary, ptr noundef %npaths3_altloc, ptr noundef %first_absmq3, ptr noundef %second_absmq3, ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, i8 noundef zeroext 0, i32 noundef 1)
  store ptr %call47, ptr %patharray3, align 8, !tbaa !5
  %124 = load i32, ptr %jobid, align 4, !tbaa !12
  %125 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %126 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %127 = load i32, ptr %npaths3_primary, align 4, !tbaa !12
  %128 = load i32, ptr %npaths3_altloc, align 4, !tbaa !12
  %129 = load i32, ptr %first_absmq3, align 4, !tbaa !12
  %130 = load i32, ptr %second_absmq3, align 4, !tbaa !12
  %call48 = call ptr @Result_paired_as_singles_new(i32 noundef %124, ptr noundef %125, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130)
  store ptr %call48, ptr %result, align 8, !tbaa !5
  %131 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %132 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %133 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %134 = load ptr, ptr %result, align 8, !tbaa !5
  %135 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %136 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call49 = call ptr @Output_filestring_fromresult(ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136)
  store ptr %call49, ptr %fp, align 8, !tbaa !5
  %137 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp50 = icmp eq ptr %137, null
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %if.then46
  br label %cond.end55

cond.false53:                                     ; preds = %if.then46
  %138 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call54 = call double @Stopwatch_stop(ptr noundef %138)
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false53, %cond.true52
  %cond56 = phi double [ 0.000000e+00, %cond.true52 ], [ %call54, %cond.false53 ]
  %139 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond56, ptr %139, align 8, !tbaa !27
  %140 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %143 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %144 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %144)
  %145 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %145, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else57:                                        ; preds = %if.else42
  %146 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %call58 = call i32 @Shortread_fulllength(ptr noundef %146)
  %147 = load i32, ptr @min_querylength, align 4, !tbaa !12
  %cmp59 = icmp slt i32 %call58, %147
  br i1 %cmp59, label %if.then61, label %if.else72

if.then61:                                        ; preds = %if.else57
  %148 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %148)
  store ptr null, ptr %patharray3, align 8, !tbaa !5
  %149 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %150 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %151 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %152 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %153 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %154 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %155 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %156 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %157 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %159 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %160 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %161 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %162 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %163 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %164 = load ptr, ptr %spliceendsgen.addr, align 8, !tbaa !5
  %call62 = call ptr @Stage1_single_read(ptr noundef %npaths5_primary, ptr noundef %npaths5_altloc, ptr noundef %first_absmq5, ptr noundef %second_absmq5, ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, i8 noundef zeroext 0, i32 noundef 1)
  store ptr %call62, ptr %patharray5, align 8, !tbaa !5
  %165 = load i32, ptr %jobid, align 4, !tbaa !12
  %166 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %167 = load i32, ptr %npaths5_primary, align 4, !tbaa !12
  %168 = load i32, ptr %npaths5_altloc, align 4, !tbaa !12
  %169 = load i32, ptr %first_absmq5, align 4, !tbaa !12
  %170 = load i32, ptr %second_absmq5, align 4, !tbaa !12
  %171 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %call63 = call ptr @Result_paired_as_singles_new(i32 noundef %165, ptr noundef %166, i32 noundef %167, i32 noundef %168, i32 noundef %169, i32 noundef %170, ptr noundef %171, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store ptr %call63, ptr %result, align 8, !tbaa !5
  %172 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %173 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %174 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %175 = load ptr, ptr %result, align 8, !tbaa !5
  %176 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %177 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call64 = call ptr @Output_filestring_fromresult(ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %177)
  store ptr %call64, ptr %fp, align 8, !tbaa !5
  %178 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp65 = icmp eq ptr %178, null
  br i1 %cmp65, label %cond.true67, label %cond.false68

cond.true67:                                      ; preds = %if.then61
  br label %cond.end70

cond.false68:                                     ; preds = %if.then61
  %179 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call69 = call double @Stopwatch_stop(ptr noundef %179)
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false68, %cond.true67
  %cond71 = phi double [ 0.000000e+00, %cond.true67 ], [ %call69, %cond.false68 ]
  %180 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond71, ptr %180, align 8, !tbaa !27
  %181 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %182 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %183 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %184 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %185 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %181, ptr noundef %182, ptr noundef %183, ptr noundef %184, ptr noundef %185)
  %186 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %186, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else72:                                        ; preds = %if.else57
  %187 = load ptr, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %187)
  %188 = load ptr, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  call void @Spliceendsgen_reset(ptr noundef %188)
  %189 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %190 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %191 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %192 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %193 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %194 = load i32, ptr @pairmax_linear, align 4, !tbaa !12
  %195 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %196 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %197 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %198 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %199 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %200 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %201 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %202 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %203 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %204 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %205 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %206 = load ptr, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  %207 = load ptr, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  %call73 = call ptr @Stage1_paired_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %final_pairtype, ptr noundef %patharray5, ptr noundef %npaths5_primary, ptr noundef %npaths5_altloc, ptr noundef %first_absmq5, ptr noundef %second_absmq5, ptr noundef %patharray3, ptr noundef %npaths3_primary, ptr noundef %npaths3_altloc, ptr noundef %first_absmq3, ptr noundef %second_absmq3, ptr noundef %189, ptr noundef %190, ptr noundef %191, ptr noundef %192, ptr noundef %193, i32 noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197, ptr noundef %198, ptr noundef %199, ptr noundef %200, ptr noundef %201, ptr noundef %202, ptr noundef %203, ptr noundef %204, ptr noundef %205, ptr noundef %206, ptr noundef %207, i32 noundef 1)
  store ptr %call73, ptr %pathpairarray, align 8, !tbaa !5
  %cmp74 = icmp ne ptr %call73, null
  br i1 %cmp74, label %if.then76, label %if.else86

if.then76:                                        ; preds = %if.else72
  %208 = load i32, ptr %jobid, align 4, !tbaa !12
  %209 = load ptr, ptr %pathpairarray, align 8, !tbaa !5
  %210 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %211 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %212 = load i32, ptr %first_absmq, align 4, !tbaa !12
  %213 = load i32, ptr %second_absmq, align 4, !tbaa !12
  %214 = load i32, ptr %final_pairtype, align 4, !tbaa !14
  %call77 = call ptr @Result_paired_read_new(i32 noundef %208, ptr noundef %209, i32 noundef %210, i32 noundef %211, i32 noundef %212, i32 noundef %213, i32 noundef %214)
  store ptr %call77, ptr %result, align 8, !tbaa !5
  %215 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %216 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %217 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %218 = load ptr, ptr %result, align 8, !tbaa !5
  %219 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %220 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call78 = call ptr @Output_filestring_fromresult(ptr noundef %215, ptr noundef %216, ptr noundef %217, ptr noundef %218, ptr noundef %219, ptr noundef %220)
  store ptr %call78, ptr %fp, align 8, !tbaa !5
  %221 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp79 = icmp eq ptr %221, null
  br i1 %cmp79, label %cond.true81, label %cond.false82

cond.true81:                                      ; preds = %if.then76
  br label %cond.end84

cond.false82:                                     ; preds = %if.then76
  %222 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call83 = call double @Stopwatch_stop(ptr noundef %222)
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false82, %cond.true81
  %cond85 = phi double [ 0.000000e+00, %cond.true81 ], [ %call83, %cond.false82 ]
  %223 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond85, ptr %223, align 8, !tbaa !27
  %224 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %225 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %226 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %227 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %224, ptr noundef %225, ptr noundef %226, ptr noundef %227, ptr noundef %228)
  %229 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %229, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else86:                                        ; preds = %if.else72
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else86
  %230 = load i32, ptr %i, align 4, !tbaa !12
  %231 = load i32, ptr %npaths5_primary, align 4, !tbaa !12
  %232 = load i32, ptr %npaths5_altloc, align 4, !tbaa !12
  %add = add nsw i32 %231, %232
  %cmp87 = icmp slt i32 %230, %add
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %233 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %234 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %234 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %233, i64 %idxprom
  %235 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %236 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %237 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %238 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %239 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx, ptr noundef %235, ptr noundef %236, ptr noundef %237, ptr noundef %238, ptr noundef %239)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %240 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add nsw i32 %240, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %241 = load ptr, ptr %patharray5, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %241, ptr noundef @.str.1, i32 noundef 1344)
  store ptr null, ptr %patharray5, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc96, %for.end
  %242 = load i32, ptr %i, align 4, !tbaa !12
  %243 = load i32, ptr %npaths3_primary, align 4, !tbaa !12
  %244 = load i32, ptr %npaths3_altloc, align 4, !tbaa !12
  %add90 = add nsw i32 %243, %244
  %cmp91 = icmp slt i32 %242, %add90
  br i1 %cmp91, label %for.body93, label %for.end98

for.body93:                                       ; preds = %for.cond89
  %245 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %246 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom94 = sext i32 %246 to i64
  %arrayidx95 = getelementptr inbounds ptr, ptr %245, i64 %idxprom94
  %247 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %248 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %249 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %250 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %251 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %arrayidx95, ptr noundef %247, ptr noundef %248, ptr noundef %249, ptr noundef %250, ptr noundef %251)
  br label %for.inc96

for.inc96:                                        ; preds = %for.body93
  %252 = load i32, ptr %i, align 4, !tbaa !12
  %inc97 = add nsw i32 %252, 1
  store i32 %inc97, ptr %i, align 4, !tbaa !12
  br label %for.cond89, !llvm.loop !68

for.end98:                                        ; preds = %for.cond89
  %253 = load ptr, ptr %patharray3, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %253, ptr noundef @.str.1, i32 noundef 1349)
  store ptr null, ptr %patharray3, align 8, !tbaa !5
  %254 = load ptr, ptr %queryseq1, align 8, !tbaa !5
  %255 = load ptr, ptr %queryseq2, align 8, !tbaa !5
  %256 = load ptr, ptr @repetitive_ef64, align 8, !tbaa !5
  %257 = load ptr, ptr @knownsplicing, align 8, !tbaa !5
  %258 = load ptr, ptr @knownindels, align 8, !tbaa !5
  %259 = load i32, ptr @pairmax_linear, align 4, !tbaa !12
  %260 = load ptr, ptr %trdiagpool.addr, align 8, !tbaa !5
  %261 = load ptr, ptr %univdiagpool.addr, align 8, !tbaa !5
  %262 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %263 = load ptr, ptr %uintlistpool.addr, align 8, !tbaa !5
  %264 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %265 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %266 = load ptr, ptr %trpathpool.addr, align 8, !tbaa !5
  %267 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %268 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %269 = load ptr, ptr %hitlistpool.addr, align 8, !tbaa !5
  %270 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %271 = load ptr, ptr %spliceendsgen5.addr, align 8, !tbaa !5
  %272 = load ptr, ptr %spliceendsgen3.addr, align 8, !tbaa !5
  %call99 = call ptr @Stage1_paired_read(ptr noundef %npaths_primary, ptr noundef %npaths_altloc, ptr noundef %first_absmq, ptr noundef %second_absmq, ptr noundef %final_pairtype, ptr noundef %patharray5, ptr noundef %npaths5_primary, ptr noundef %npaths5_altloc, ptr noundef %first_absmq5, ptr noundef %second_absmq5, ptr noundef %patharray3, ptr noundef %npaths3_primary, ptr noundef %npaths3_altloc, ptr noundef %first_absmq3, ptr noundef %second_absmq3, ptr noundef %254, ptr noundef %255, ptr noundef %256, ptr noundef %257, ptr noundef %258, i32 noundef %259, ptr noundef %260, ptr noundef %261, ptr noundef %262, ptr noundef %263, ptr noundef %264, ptr noundef %265, ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %269, ptr noundef %270, ptr noundef %271, ptr noundef %272, i32 noundef 1)
  store ptr %call99, ptr %pathpairarray, align 8, !tbaa !5
  %cmp100 = icmp ne ptr %call99, null
  br i1 %cmp100, label %if.then102, label %if.else104

if.then102:                                       ; preds = %for.end98
  %273 = load i32, ptr %jobid, align 4, !tbaa !12
  %274 = load ptr, ptr %pathpairarray, align 8, !tbaa !5
  %275 = load i32, ptr %npaths_primary, align 4, !tbaa !12
  %276 = load i32, ptr %npaths_altloc, align 4, !tbaa !12
  %277 = load i32, ptr %first_absmq, align 4, !tbaa !12
  %278 = load i32, ptr %second_absmq, align 4, !tbaa !12
  %279 = load i32, ptr %final_pairtype, align 4, !tbaa !14
  %call103 = call ptr @Result_paired_read_new(i32 noundef %273, ptr noundef %274, i32 noundef %275, i32 noundef %276, i32 noundef %277, i32 noundef %278, i32 noundef %279)
  store ptr %call103, ptr %result, align 8, !tbaa !5
  br label %if.end106

if.else104:                                       ; preds = %for.end98
  %280 = load i32, ptr %jobid, align 4, !tbaa !12
  %281 = load ptr, ptr %patharray5, align 8, !tbaa !5
  %282 = load i32, ptr %npaths5_primary, align 4, !tbaa !12
  %283 = load i32, ptr %npaths5_altloc, align 4, !tbaa !12
  %284 = load i32, ptr %first_absmq5, align 4, !tbaa !12
  %285 = load i32, ptr %second_absmq5, align 4, !tbaa !12
  %286 = load ptr, ptr %patharray3, align 8, !tbaa !5
  %287 = load i32, ptr %npaths3_primary, align 4, !tbaa !12
  %288 = load i32, ptr %npaths3_altloc, align 4, !tbaa !12
  %289 = load i32, ptr %first_absmq3, align 4, !tbaa !12
  %290 = load i32, ptr %second_absmq3, align 4, !tbaa !12
  %call105 = call ptr @Result_paired_as_singles_new(i32 noundef %280, ptr noundef %281, i32 noundef %282, i32 noundef %283, i32 noundef %284, i32 noundef %285, ptr noundef %286, i32 noundef %287, i32 noundef %288, i32 noundef %289, i32 noundef %290)
  store ptr %call105, ptr %result, align 8, !tbaa !5
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then102
  %291 = load ptr, ptr %fp_failedinput.addr, align 8, !tbaa !5
  %292 = load ptr, ptr %fp_failedinput_1.addr, align 8, !tbaa !5
  %293 = load ptr, ptr %fp_failedinput_2.addr, align 8, !tbaa !5
  %294 = load ptr, ptr %result, align 8, !tbaa !5
  %295 = load ptr, ptr %request.addr, align 8, !tbaa !5
  %296 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call107 = call ptr @Output_filestring_fromresult(ptr noundef %291, ptr noundef %292, ptr noundef %293, ptr noundef %294, ptr noundef %295, ptr noundef %296)
  store ptr %call107, ptr %fp, align 8, !tbaa !5
  %297 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %cmp108 = icmp eq ptr %297, null
  br i1 %cmp108, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %if.end106
  br label %cond.end113

cond.false111:                                    ; preds = %if.end106
  %298 = load ptr, ptr %worker_stopwatch.addr, align 8, !tbaa !5
  %call112 = call double @Stopwatch_stop(ptr noundef %298)
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true110
  %cond114 = phi double [ 0.000000e+00, %cond.true110 ], [ %call112, %cond.false111 ]
  %299 = load ptr, ptr %worker_runtime.addr, align 8, !tbaa !5
  store double %cond114, ptr %299, align 8, !tbaa !27
  %300 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %301 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %302 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %303 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %304 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Result_free(ptr noundef %result, ptr noundef %300, ptr noundef %301, ptr noundef %302, ptr noundef %303, ptr noundef %304)
  %305 = load ptr, ptr %fp, align 8, !tbaa !5
  store ptr %305, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end113, %cond.end84, %cond.end70, %cond.end55, %cond.end40, %cond.end23, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %final_pairtype) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %second_absmq3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_absmq3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %second_absmq5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_absmq5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %second_absmq) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_absmq) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths3_altloc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths3_primary) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths5_altloc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths5_primary) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths_altloc) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %npaths_primary) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathpairarray) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %patharray3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %patharray5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %patharray) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobid) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14
  %306 = load ptr, ptr %retval, align 8
  ret ptr %306
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare ptr @Except_advance_stack(...) #4

declare void @Except_raise(ptr noundef, ptr noundef, i32 noundef) #4

declare void @Filestring_stringify(ptr noundef) #4

declare void @Outbuffer_print_filestrings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Trdiagpool_reset_memory(ptr noundef) #4

declare void @Univdiagpool_reset_memory(ptr noundef) #4

declare void @Intlistpool_reset_memory(ptr noundef) #4

declare void @Uintlistpool_reset_memory(ptr noundef) #4

declare void @Listpool_reset_memory(ptr noundef) #4

declare void @Trpathpool_reset_memory(ptr noundef) #4

declare void @Pathpool_reset_memory(ptr noundef) #4

declare void @Hitlistpool_reset_memory(ptr noundef) #4

declare void @Transcriptpool_reset_memory(ptr noundef) #4

declare void @Vectorpool_reset_memory(ptr noundef) #4

declare void @Spliceendsgen_free_memory(ptr noundef) #4

declare void @Request_free(ptr noundef) #4

declare void @Spliceendsgen_free(ptr noundef) #4

declare void @Trpathpool_free(ptr noundef) #4

declare void @Pathpool_free(ptr noundef) #4

declare void @Hitlistpool_free(ptr noundef) #4

declare void @Transcriptpool_free(ptr noundef) #4

declare void @Vectorpool_free(ptr noundef) #4

declare void @Listpool_free(ptr noundef) #4

declare void @Uintlistpool_free(ptr noundef) #4

declare void @Intlistpool_free(ptr noundef) #4

declare void @Univdiagpool_free(ptr noundef) #4

declare void @Trdiagpool_free(ptr noundef) #4

declare void @Spliceendsgen_reset(ptr noundef) #4

declare ptr @Stage1_single_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #5

declare void @Path_learn_defect_rate(ptr noundef, ptr noundef, ptr noundef) #4

declare void @Path_learn_introns(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Path_learn_indels(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #5

declare void @Path_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @Stage1_paired_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

declare void @Pathpair_learn_insertlengths(ptr noundef, ptr noundef) #4

declare void @Pathpair_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @Request_id(ptr noundef) #4

declare ptr @Result_single_read_new(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare ptr @Output_filestring_fromresult(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Result_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @Result_paired_as_singles_new(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare ptr @Result_paired_read_new(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare void @Except_stack_create(...) #4

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #5

declare void @Outbuffer_put_pass1(ptr noundef, i32 noundef) #4

declare void @Outbuffer_put_filestrings(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @Except_stack_destroy(...) #4

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"List_T", !6, i64 0, !6, i64 8}
!11 = !{!10, !6, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !13, i64 136}
!16 = !{!"sigaction", !7, i64 0, !17, i64 8, !13, i64 136, !6, i64 144}
!17 = !{!"", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !7, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"long long", !7, i64 0}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = !{!35, !6, i64 0}
!35 = !{!"option", !6, i64 0, !13, i64 8, !6, i64 16, !13, i64 24}
!36 = distinct !{!36, !21}
!37 = !{!38, !6, i64 224}
!38 = !{!"Except_Frame_T", !6, i64 0, !7, i64 8, !6, i64 208, !13, i64 216, !6, i64 224}
!39 = !{!38, !6, i64 208}
!40 = !{!38, !13, i64 216}
!41 = distinct !{!41, !21}
!42 = !{!43, !6, i64 8}
!43 = !{!"Uintlist_T", !13, i64 0, !6, i64 8}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = !{!61, !6, i64 32}
!61 = !{!"Pathpair_T", !62, i64 0, !13, i64 4, !13, i64 8, !7, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !7, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!62 = !{!"float", !7, i64 0}
!63 = !{!61, !6, i64 40}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
