; ModuleID = 'samples/955.bc'
source_filename = "src/tools/gt_seqcorrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtSeqcorrectArguments = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i8, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"src/tools/gt_seqcorrect.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1, !dbg !12
@__func__.gt_seqcorrect_option_parser_new = private unnamed_addr constant [32 x i8] c"gt_seqcorrect_option_parser_new\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [61 x i8] c"(-ii <indexname>|-db <filenames>) -k <kmersize> [option ...]\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [33 x i8] c"K-mer based sequence correction.\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [3 x i8] c"db\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [400 x i8] c"specify a list of input libraries (Fasta/FastQ); for single-end libraries use the filename (which is not allowed to contain ':' symbols); for paired-end libraries with reads interleaved (f,r,f,r,...) in a single file use the notation <filename>:<insertlength>[,<stdev>] (stdev may be omitted); for paired-end with reads in two files (f, r) use the notation <file_f>:<file_r>:<insertlength>[,<stdev>]\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [10 x i8] c"indexname\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [85 x i8] c"specify the indexname to use for the input\0Adefault: first argument of the -db option\00", align 1, !dbg !45
@.str.9 = private unnamed_addr constant [3 x i8] c"ii\00", align 1, !dbg !50
@.str.10 = private unnamed_addr constant [30 x i8] c"specify the input enseq index\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [2 x i8] c"k\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [51 x i8] c"specify the kmer size for the correction algorithm\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [36 x i8] c"specify the trusted count threshold\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [12 x i8] c"find-seldom\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [81 x i8] c"do not try to correct, only prepare a list of all reads containing seldom k-mers\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [5 x i8] c"iter\00", align 1, !dbg !84
@.str.18 = private unnamed_addr constant [33 x i8] c"specify the number of iterations\00", align 1, !dbg !89
@.str.19 = private unnamed_addr constant [3 x i8] c"sf\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [28 x i8] c"specify the sampling factor\00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [6 x i8] c"parts\00", align 1, !dbg !98
@.str.22 = private unnamed_addr constant [28 x i8] c"specify the number of parts\00", align 1, !dbg !103
@.str.23 = private unnamed_addr constant [9 x i8] c"memlimit\00", align 1, !dbg !105
@.str.24 = private unnamed_addr constant [121 x i8] c"specify maximal amount of memory to be used during index construction (in bytes, the keywords 'MB' and 'GB' are allowed)\00", align 1, !dbg !110
@.str.25 = private unnamed_addr constant [7 x i8] c"forcek\00", align 1, !dbg !115
@.str.26 = private unnamed_addr constant [41 x i8] c"specify the kmersize for the bucket keys\00", align 1, !dbg !120
@.str.27 = private unnamed_addr constant [14 x i8] c"usefirstcodes\00", align 1, !dbg !125
@.str.28 = private unnamed_addr constant [48 x i8] c"use first codes instead of random sampled codes\00", align 1, !dbg !130
@.str.29 = private unnamed_addr constant [2 x i8] c"q\00", align 1, !dbg !135
@.str.30 = private unnamed_addr constant [34 x i8] c"suppress standard output messages\00", align 1, !dbg !137
@.str.31 = private unnamed_addr constant [7 x i8] c"maxlow\00", align 1, !dbg !142
@.str.32 = private unnamed_addr constant [68 x i8] c"maximal number of low-quality positions in a read\0Adefault: infinite\00", align 1, !dbg !144
@.str.33 = private unnamed_addr constant [8 x i8] c"lowqual\00", align 1, !dbg !149
@.str.34 = private unnamed_addr constant [60 x i8] c"maximal quality for a position to be considered low-quality\00", align 1, !dbg !154
@.str.35 = private unnamed_addr constant [8 x i8] c"phred64\00", align 1, !dbg !159
@.str.36 = private unnamed_addr constant [36 x i8] c"use phred64 scores for FastQ format\00", align 1, !dbg !161
@.str.37 = private unnamed_addr constant [12 x i8] c"usemaxdepth\00", align 1, !dbg !163
@.str.38 = private unnamed_addr constant [30 x i8] c"use maxdepth in sortremaining\00", align 1, !dbg !165
@.str.39 = private unnamed_addr constant [12 x i8] c"checksuftab\00", align 1, !dbg !167
@.str.40 = private unnamed_addr constant [23 x i8] c"check the suffix table\00", align 1, !dbg !169
@.str.41 = private unnamed_addr constant [10 x i8] c"onlyaccum\00", align 1, !dbg !174
@.str.42 = private unnamed_addr constant [22 x i8] c"only accumulate codes\00", align 1, !dbg !176
@.str.43 = private unnamed_addr constant [19 x i8] c"onlyallrandomcodes\00", align 1, !dbg !181
@.str.44 = private unnamed_addr constant [25 x i8] c"only determines allcodes\00", align 1, !dbg !186
@.str.45 = private unnamed_addr constant [16 x i8] c"addbscachedepth\00", align 1, !dbg !191
@.str.46 = private unnamed_addr constant [11 x i8] c"radixlarge\00", align 1, !dbg !196
@.str.47 = private unnamed_addr constant [31 x i8] c"use large tables for radixsort\00", align 1, !dbg !201
@.str.48 = private unnamed_addr constant [11 x i8] c"radixparts\00", align 1, !dbg !206
@.str.49 = private unnamed_addr constant [42 x i8] c"specify the number of parts for radixsort\00", align 1, !dbg !208
@.str.50 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !213
@__func__.gt_seqcorrect_arguments_check = private unnamed_addr constant [30 x i8] c"gt_seqcorrect_arguments_check\00", align 1, !dbg !215
@.str.51 = private unnamed_addr constant [44 x i8] c"The '-find-seldom' option implies '-iter 1'\00", align 1, !dbg !218
@__func__.gt_seqcorrect_runner = private unnamed_addr constant [21 x i8] c"gt_seqcorrect_runner\00", align 1, !dbg !223
@.str.52 = private unnamed_addr constant [19 x i8] c"for initialization\00", align 1, !dbg !228
@.str.53 = private unnamed_addr constant [3 x i8] c"# \00", align 1, !dbg !230
@stdout = external global ptr, align 8
@.str.54 = private unnamed_addr constant [14 x i8] c"gt seqcorrect\00", align 1, !dbg !232
@.str.55 = private unnamed_addr constant [23 x i8] c"verbose output enabled\00", align 1, !dbg !234
@.str.56 = private unnamed_addr constant [23 x i8] c"input is an encseq: %s\00", align 1, !dbg !236
@.str.57 = private unnamed_addr constant [5 x i8] c".md5\00", align 1, !dbg !238
@.str.58 = private unnamed_addr constant [115 x i8] c"the input encseq %s had MD5 support, however sequence invalidates the MD5 table, thus MD5 support will be disabled\00", align 1, !dbg !240
@.str.59 = private unnamed_addr constant [29 x i8] c"input is a list of libraries\00", align 1, !dbg !245
@.str.60 = private unnamed_addr constant [19 x i8] c"indexname: %s [%s]\00", align 1, !dbg !250
@.str.61 = private unnamed_addr constant [20 x i8] c"first input library\00", align 1, !dbg !252
@.str.62 = private unnamed_addr constant [15 x i8] c"user-specified\00", align 1, !dbg !257
@.str.63 = private unnamed_addr constant [43 x i8] c"gt_str_length(arguments->encseqinput) == 0\00", align 1, !dbg !262
@__func__.gt_seqcorrect_encode = private unnamed_addr constant [21 x i8] c"gt_seqcorrect_encode\00", align 1, !dbg !267
@.str.64 = private unnamed_addr constant [43 x i8] c"number of reads in original read set = %lu\00", align 1, !dbg !269
@.str.65 = private unnamed_addr constant [34 x i8] c"read length = variable [%lu..%lu]\00", align 1, !dbg !271
@.str.66 = private unnamed_addr constant [18 x i8] c"read length = %lu\00", align 1, !dbg !273
@.str.67 = private unnamed_addr constant [40 x i8] c"total length of original read set = %lu\00", align 1, !dbg !278
@.str.68 = private unnamed_addr constant [43 x i8] c"low-quality reads = %lu [%.2f %% of input]\00", align 1, !dbg !283
@.str.69 = private unnamed_addr constant [24 x i8] c"low-quality reads = %lu\00", align 1, !dbg !285
@.str.70 = private unnamed_addr constant [41 x i8] c"number of reads in output read set = %lu\00", align 1, !dbg !290
@.str.71 = private unnamed_addr constant [38 x i8] c"total length of output read set = %lu\00", align 1, !dbg !292
@.str.72 = private unnamed_addr constant [34 x i8] c"read set saved as GtEncseq: %s.%s\00", align 1, !dbg !297
@.str.73 = private unnamed_addr constant [10 x i8] c"(esq|ssp)\00", align 1, !dbg !299
@.str.74 = private unnamed_addr constant [4 x i8] c"esq\00", align 1, !dbg !301
@gt_jobs = external global i32, align 4
@.str.75 = private unnamed_addr constant [23 x i8] c"correction kmersize=%u\00", align 1, !dbg !306
@.str.76 = private unnamed_addr constant [24 x i8] c"%u threads will be used\00", align 1, !dbg !308
@.str.77 = private unnamed_addr constant [26 x i8] c"%u iterations will be run\00", align 1, !dbg !310
@.str.78 = private unnamed_addr constant [31 x i8] c"iteration %u will now start...\00", align 1, !dbg !312
@.str.79 = private unnamed_addr constant [5 x i8] c".cor\00", align 1, !dbg !314
@.str.80 = private unnamed_addr constant [43 x i8] c"[iteration %u] total number of k-mers: %lu\00", align 1, !dbg !316
@.str.81 = private unnamed_addr constant [47 x i8] c"[iteration %u] number of different k-mers: %lu\00", align 1, !dbg !318
@.str.82 = private unnamed_addr constant [49 x i8] c"[iteration %u] number of different k-1-mers: %lu\00", align 1, !dbg !323
@.str.83 = private unnamed_addr constant [47 x i8] c"[iteration %u] number of kmer corrections: %lu\00", align 1, !dbg !328
@.str.84 = private unnamed_addr constant [36 x i8] c"[iteration %u] apply corrections...\00", align 1, !dbg !330
@.str.85 = private unnamed_addr constant [23 x i8] c"total corrections: %lu\00", align 1, !dbg !332
@.str.86 = private unnamed_addr constant [17 x i8] c"kmersize != NULL\00", align 1, !dbg !334
@__func__.gt_seqcorrect_bucketkey_kmersize = private unnamed_addr constant [33 x i8] c"gt_seqcorrect_bucketkey_kmersize\00", align 1, !dbg !339
@.str.87 = private unnamed_addr constant [65 x i8] c"argument %u to option -forcek must be < correction kmersize (-k)\00", align 1, !dbg !342
@.str.88 = private unnamed_addr constant [57 x i8] c"argument %u to option -forcek > %u (machine word size/2)\00", align 1, !dbg !347
@.str.89 = private unnamed_addr constant [36 x i8] c"arguments->correction_kmersize > 1U\00", align 1, !dbg !352
@.str.90 = private unnamed_addr constant [22 x i8] c"bucketkey kmersize=%u\00", align 1, !dbg !354
@.str.91 = private unnamed_addr constant [14 x i8] c"*kmersize > 0\00", align 1, !dbg !356
@.str.92 = private unnamed_addr constant [31 x i8] c"number of correction lists: %u\00", align 1, !dbg !358
@.str.93 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !360
@.str.94 = private unnamed_addr constant [31 x i8] c"apply corrections list %s.%u%s\00", align 1, !dbg !362
@.str.95 = private unnamed_addr constant [25 x i8] c"error by reading file %s\00", align 1, !dbg !364
@.str.96 = private unnamed_addr constant [26 x i8] c"seldom finder kmersize=%u\00", align 1, !dbg !366
@.str.97 = private unnamed_addr constant [25 x i8] c"total seldom k-mers: %lu\00", align 1, !dbg !368
@.str.98 = private unnamed_addr constant [5 x i8] c".sld\00", align 1, !dbg !370

; Function Attrs: nounwind uwtable
define ptr @gt_seqcorrect() #0 !dbg !392 {
entry:
  %call = call ptr @gt_tool_new(ptr noundef @gt_seqcorrect_arguments_new, ptr noundef @gt_seqcorrect_arguments_delete, ptr noundef @gt_seqcorrect_option_parser_new, ptr noundef @gt_seqcorrect_arguments_check, ptr noundef @gt_seqcorrect_runner), !dbg !399
  ret ptr %call, !dbg !400
}

declare !dbg !401 ptr @gt_tool_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @gt_seqcorrect_arguments_new() #0 !dbg !434 {
entry:
  %arguments = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !479
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !436, metadata !DIExpression()), !dbg !480
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 120, ptr noundef @.str, i32 noundef 79), !dbg !481
  store ptr %call, ptr %arguments, align 8, !dbg !480, !tbaa !482
  %0 = load ptr, ptr %arguments, align 8, !dbg !486, !tbaa !482
  %radixlarge = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %0, i32 0, i32 5, !dbg !487
  store i8 0, ptr %radixlarge, align 1, !dbg !488, !tbaa !489
  %1 = load ptr, ptr %arguments, align 8, !dbg !494, !tbaa !482
  %numofparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %1, i32 0, i32 12, !dbg !495
  store i32 0, ptr %numofparts, align 8, !dbg !496, !tbaa !497
  %2 = load ptr, ptr %arguments, align 8, !dbg !498, !tbaa !482
  %radixparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %2, i32 0, i32 13, !dbg !499
  store i32 1, ptr %radixparts, align 4, !dbg !500, !tbaa !501
  %call1 = call ptr @gt_str_new(), !dbg !502
  %3 = load ptr, ptr %arguments, align 8, !dbg !503, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %3, i32 0, i32 18, !dbg !504
  store ptr %call1, ptr %encseqinput, align 8, !dbg !505, !tbaa !506
  %call2 = call ptr @gt_str_new(), !dbg !507
  %4 = load ptr, ptr %arguments, align 8, !dbg !508, !tbaa !482
  %indexname = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %4, i32 0, i32 20, !dbg !509
  store ptr %call2, ptr %indexname, align 8, !dbg !510, !tbaa !511
  %call3 = call ptr @gt_str_new(), !dbg !512
  %5 = load ptr, ptr %arguments, align 8, !dbg !513, !tbaa !482
  %memlimitarg = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %5, i32 0, i32 19, !dbg !514
  store ptr %call3, ptr %memlimitarg, align 8, !dbg !515, !tbaa !516
  %6 = load ptr, ptr %arguments, align 8, !dbg !517, !tbaa !482
  %maximumspace = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %6, i32 0, i32 17, !dbg !518
  store i64 0, ptr %maximumspace, align 8, !dbg !519, !tbaa !520
  %call4 = call ptr @gt_str_array_new(), !dbg !521
  %7 = load ptr, ptr %arguments, align 8, !dbg !522, !tbaa !482
  %db = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %7, i32 0, i32 22, !dbg !523
  store ptr %call4, ptr %db, align 8, !dbg !524, !tbaa !525
  %8 = load ptr, ptr %arguments, align 8, !dbg !526, !tbaa !482
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !527
  ret ptr %8, !dbg !528
}

; Function Attrs: nounwind uwtable
define internal void @gt_seqcorrect_arguments_delete(ptr noundef %tool_arguments) #0 !dbg !529 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !531, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !534
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !532, metadata !DIExpression()), !dbg !535
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !536, !tbaa !482
  store ptr %0, ptr %arguments, align 8, !dbg !535, !tbaa !482
  %1 = load ptr, ptr %arguments, align 8, !dbg !537, !tbaa !482
  %tobool = icmp ne ptr %1, null, !dbg !537
  br i1 %tobool, label %if.end, label %if.then, !dbg !539

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arguments, align 8, !dbg !541, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %2, i32 0, i32 18, !dbg !542
  %3 = load ptr, ptr %encseqinput, align 8, !dbg !542, !tbaa !506
  call void @gt_str_delete(ptr noundef %3), !dbg !543
  %4 = load ptr, ptr %arguments, align 8, !dbg !544, !tbaa !482
  %indexname = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %4, i32 0, i32 20, !dbg !545
  %5 = load ptr, ptr %indexname, align 8, !dbg !545, !tbaa !511
  call void @gt_str_delete(ptr noundef %5), !dbg !546
  %6 = load ptr, ptr %arguments, align 8, !dbg !547, !tbaa !482
  %refoptionmemlimit = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %6, i32 0, i32 21, !dbg !548
  %7 = load ptr, ptr %refoptionmemlimit, align 8, !dbg !548, !tbaa !549
  call void @gt_option_delete(ptr noundef %7), !dbg !550
  %8 = load ptr, ptr %arguments, align 8, !dbg !551, !tbaa !482
  %memlimitarg = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %8, i32 0, i32 19, !dbg !552
  %9 = load ptr, ptr %memlimitarg, align 8, !dbg !552, !tbaa !516
  call void @gt_str_delete(ptr noundef %9), !dbg !553
  %10 = load ptr, ptr %arguments, align 8, !dbg !554, !tbaa !482
  %db = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %10, i32 0, i32 22, !dbg !555
  %11 = load ptr, ptr %db, align 8, !dbg !555, !tbaa !525
  call void @gt_str_array_delete(ptr noundef %11), !dbg !556
  %12 = load ptr, ptr %arguments, align 8, !dbg !557, !tbaa !482
  call void @gt_free_mem(ptr noundef %12, ptr noundef @.str, i32 noundef 100), !dbg !557
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !558
  br label %cleanup, !dbg !558

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !558
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !558

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_seqcorrect_option_parser_new(ptr noundef %tool_arguments) #0 !dbg !559 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %op = alloca ptr, align 8
  %option = alloca ptr, align 8
  %optionparts = alloca ptr, align 8
  %optionmemlimit = alloca ptr, align 8
  %q_option = alloca ptr, align 8
  %v_option = alloca ptr, align 8
  %db_option = alloca ptr, align 8
  %maxlow_option = alloca ptr, align 8
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !561, metadata !DIExpression()), !dbg !571
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !572
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !562, metadata !DIExpression()), !dbg !573
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !574, !tbaa !482
  store ptr %0, ptr %arguments, align 8, !dbg !573, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #7, !dbg !575
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !563, metadata !DIExpression()), !dbg !576
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !564, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionparts) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %optionparts, metadata !565, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionmemlimit) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %optionmemlimit, metadata !566, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_option) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %q_option, metadata !567, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_option) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %v_option, metadata !568, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %db_option) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %db_option, metadata !569, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxlow_option) #7, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %maxlow_option, metadata !570, metadata !DIExpression()), !dbg !584
  br label %do.body, !dbg !585

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %arguments, align 8, !dbg !586, !tbaa !482
  %tobool = icmp ne ptr %1, null, !dbg !586
  br i1 %tobool, label %if.end, label %if.then, !dbg !589

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !590, !tbaa !482
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_seqcorrect_option_parser_new, ptr noundef @.str, i32 noundef 110), !dbg !590
  call void @abort() #8, !dbg !590
  unreachable, !dbg !590

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !589

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !589

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @gt_option_parser_new(ptr noundef @.str.3, ptr noundef @.str.4), !dbg !592
  store ptr %call1, ptr %op, align 8, !dbg !593, !tbaa !482
  %3 = load ptr, ptr %arguments, align 8, !dbg !594, !tbaa !482
  %db = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %3, i32 0, i32 22, !dbg !595
  %4 = load ptr, ptr %db, align 8, !dbg !595, !tbaa !525
  %call2 = call ptr @gt_option_new_filename_array(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %4), !dbg !596
  store ptr %call2, ptr %db_option, align 8, !dbg !597, !tbaa !482
  %5 = load ptr, ptr %db_option, align 8, !dbg !598, !tbaa !482
  call void @gt_option_hide_default(ptr noundef %5), !dbg !599
  %6 = load ptr, ptr %op, align 8, !dbg !600, !tbaa !482
  %7 = load ptr, ptr %db_option, align 8, !dbg !601, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %6, ptr noundef %7), !dbg !602
  %8 = load ptr, ptr %arguments, align 8, !dbg !603, !tbaa !482
  %indexname = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %8, i32 0, i32 20, !dbg !604
  %9 = load ptr, ptr %indexname, align 8, !dbg !604, !tbaa !511
  %call3 = call ptr @gt_option_new_string(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %9, ptr noundef null), !dbg !605
  store ptr %call3, ptr %option, align 8, !dbg !606, !tbaa !482
  %10 = load ptr, ptr %option, align 8, !dbg !607, !tbaa !482
  call void @gt_option_hide_default(ptr noundef %10), !dbg !608
  %11 = load ptr, ptr %op, align 8, !dbg !609, !tbaa !482
  %12 = load ptr, ptr %option, align 8, !dbg !610, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %11, ptr noundef %12), !dbg !611
  %13 = load ptr, ptr %arguments, align 8, !dbg !612, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %13, i32 0, i32 18, !dbg !613
  %14 = load ptr, ptr %encseqinput, align 8, !dbg !613, !tbaa !506
  %call4 = call ptr @gt_option_new_string(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef %14, ptr noundef null), !dbg !614
  store ptr %call4, ptr %option, align 8, !dbg !615, !tbaa !482
  %15 = load ptr, ptr %option, align 8, !dbg !616, !tbaa !482
  %16 = load ptr, ptr %db_option, align 8, !dbg !617, !tbaa !482
  call void @gt_option_is_mandatory_either(ptr noundef %15, ptr noundef %16), !dbg !618
  %17 = load ptr, ptr %option, align 8, !dbg !619, !tbaa !482
  %18 = load ptr, ptr %db_option, align 8, !dbg !620, !tbaa !482
  call void @gt_option_exclude(ptr noundef %17, ptr noundef %18), !dbg !621
  %19 = load ptr, ptr %op, align 8, !dbg !622, !tbaa !482
  %20 = load ptr, ptr %option, align 8, !dbg !623, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %19, ptr noundef %20), !dbg !624
  %21 = load ptr, ptr %arguments, align 8, !dbg !625, !tbaa !482
  %correction_kmersize = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %21, i32 0, i32 9, !dbg !626
  %call5 = call ptr @gt_option_new_uint_min(ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef %correction_kmersize, i32 noundef 31, i32 noundef 2), !dbg !627
  store ptr %call5, ptr %option, align 8, !dbg !628, !tbaa !482
  %22 = load ptr, ptr %op, align 8, !dbg !629, !tbaa !482
  %23 = load ptr, ptr %option, align 8, !dbg !630, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %22, ptr noundef %23), !dbg !631
  %24 = load ptr, ptr %option, align 8, !dbg !632, !tbaa !482
  call void @gt_option_is_mandatory(ptr noundef %24), !dbg !633
  %25 = load ptr, ptr %arguments, align 8, !dbg !634, !tbaa !482
  %trusted_count = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %25, i32 0, i32 11, !dbg !635
  %call6 = call ptr @gt_option_new_uint_min(ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef %trusted_count, i32 noundef 3, i32 noundef 2), !dbg !636
  store ptr %call6, ptr %option, align 8, !dbg !637, !tbaa !482
  %26 = load ptr, ptr %op, align 8, !dbg !638, !tbaa !482
  %27 = load ptr, ptr %option, align 8, !dbg !639, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %26, ptr noundef %27), !dbg !640
  %28 = load ptr, ptr %arguments, align 8, !dbg !641, !tbaa !482
  %find_seldom = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %28, i32 0, i32 8, !dbg !642
  %call7 = call ptr @gt_option_new_bool(ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %find_seldom, i1 noundef zeroext false), !dbg !643
  store ptr %call7, ptr %option, align 8, !dbg !644, !tbaa !482
  %29 = load ptr, ptr %op, align 8, !dbg !645, !tbaa !482
  %30 = load ptr, ptr %option, align 8, !dbg !646, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %29, ptr noundef %30), !dbg !647
  %31 = load ptr, ptr %arguments, align 8, !dbg !648, !tbaa !482
  %iterations = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %31, i32 0, i32 16, !dbg !649
  %call8 = call ptr @gt_option_new_uint_min(ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef %iterations, i32 noundef 1, i32 noundef 1), !dbg !650
  store ptr %call8, ptr %option, align 8, !dbg !651, !tbaa !482
  %32 = load ptr, ptr %op, align 8, !dbg !652, !tbaa !482
  %33 = load ptr, ptr %option, align 8, !dbg !653, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %32, ptr noundef %33), !dbg !654
  %34 = load ptr, ptr %arguments, align 8, !dbg !655, !tbaa !482
  %samplingfactor = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %34, i32 0, i32 10, !dbg !656
  %call9 = call ptr @gt_option_new_uint_min(ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef %samplingfactor, i32 noundef 50, i32 noundef 1), !dbg !657
  store ptr %call9, ptr %option, align 8, !dbg !658, !tbaa !482
  %35 = load ptr, ptr %op, align 8, !dbg !659, !tbaa !482
  %36 = load ptr, ptr %option, align 8, !dbg !660, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %35, ptr noundef %36), !dbg !661
  %37 = load ptr, ptr %option, align 8, !dbg !662, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %37), !dbg !663
  %38 = load ptr, ptr %arguments, align 8, !dbg !664, !tbaa !482
  %numofparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %38, i32 0, i32 12, !dbg !665
  %call10 = call ptr @gt_option_new_uint(ptr noundef @.str.21, ptr noundef @.str.22, ptr noundef %numofparts, i32 noundef 0), !dbg !666
  store ptr %call10, ptr %optionparts, align 8, !dbg !667, !tbaa !482
  %39 = load ptr, ptr %op, align 8, !dbg !668, !tbaa !482
  %40 = load ptr, ptr %optionparts, align 8, !dbg !669, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %39, ptr noundef %40), !dbg !670
  %41 = load ptr, ptr %arguments, align 8, !dbg !671, !tbaa !482
  %memlimitarg = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %41, i32 0, i32 19, !dbg !672
  %42 = load ptr, ptr %memlimitarg, align 8, !dbg !672, !tbaa !516
  %call11 = call ptr @gt_option_new_string(ptr noundef @.str.23, ptr noundef @.str.24, ptr noundef %42, ptr noundef null), !dbg !673
  store ptr %call11, ptr %optionmemlimit, align 8, !dbg !674, !tbaa !482
  %43 = load ptr, ptr %op, align 8, !dbg !675, !tbaa !482
  %44 = load ptr, ptr %optionmemlimit, align 8, !dbg !676, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %43, ptr noundef %44), !dbg !677
  %45 = load ptr, ptr %optionmemlimit, align 8, !dbg !678, !tbaa !482
  %46 = load ptr, ptr %optionparts, align 8, !dbg !679, !tbaa !482
  call void @gt_option_exclude(ptr noundef %45, ptr noundef %46), !dbg !680
  %47 = load ptr, ptr %optionmemlimit, align 8, !dbg !681, !tbaa !482
  %call12 = call ptr @gt_option_ref(ptr noundef %47), !dbg !682
  %48 = load ptr, ptr %arguments, align 8, !dbg !683, !tbaa !482
  %refoptionmemlimit = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %48, i32 0, i32 21, !dbg !684
  store ptr %call12, ptr %refoptionmemlimit, align 8, !dbg !685, !tbaa !549
  %49 = load ptr, ptr %arguments, align 8, !dbg !686, !tbaa !482
  %forcek = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %49, i32 0, i32 15, !dbg !687
  %call13 = call ptr @gt_option_new_uint(ptr noundef @.str.25, ptr noundef @.str.26, ptr noundef %forcek, i32 noundef 0), !dbg !688
  store ptr %call13, ptr %option, align 8, !dbg !689, !tbaa !482
  %50 = load ptr, ptr %option, align 8, !dbg !690, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %50), !dbg !691
  %51 = load ptr, ptr %op, align 8, !dbg !692, !tbaa !482
  %52 = load ptr, ptr %option, align 8, !dbg !693, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %51, ptr noundef %52), !dbg !694
  %53 = load ptr, ptr %arguments, align 8, !dbg !695, !tbaa !482
  %usefirstcodes = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %53, i32 0, i32 0, !dbg !696
  %call14 = call ptr @gt_option_new_bool(ptr noundef @.str.27, ptr noundef @.str.28, ptr noundef %usefirstcodes, i1 noundef zeroext false), !dbg !697
  store ptr %call14, ptr %option, align 8, !dbg !698, !tbaa !482
  %54 = load ptr, ptr %op, align 8, !dbg !699, !tbaa !482
  %55 = load ptr, ptr %option, align 8, !dbg !700, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %54, ptr noundef %55), !dbg !701
  %56 = load ptr, ptr %option, align 8, !dbg !702, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %56), !dbg !703
  %57 = load ptr, ptr %arguments, align 8, !dbg !704, !tbaa !482
  %verbose = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %57, i32 0, i32 1, !dbg !705
  %call15 = call ptr @gt_option_new_verbose(ptr noundef %verbose), !dbg !706
  store ptr %call15, ptr %v_option, align 8, !dbg !707, !tbaa !482
  %58 = load ptr, ptr %op, align 8, !dbg !708, !tbaa !482
  %59 = load ptr, ptr %v_option, align 8, !dbg !709, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %58, ptr noundef %59), !dbg !710
  %60 = load ptr, ptr %arguments, align 8, !dbg !711, !tbaa !482
  %quiet = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %60, i32 0, i32 2, !dbg !712
  %call16 = call ptr @gt_option_new_bool(ptr noundef @.str.29, ptr noundef @.str.30, ptr noundef %quiet, i1 noundef zeroext false), !dbg !713
  store ptr %call16, ptr %q_option, align 8, !dbg !714, !tbaa !482
  %61 = load ptr, ptr %q_option, align 8, !dbg !715, !tbaa !482
  %62 = load ptr, ptr %v_option, align 8, !dbg !716, !tbaa !482
  call void @gt_option_exclude(ptr noundef %61, ptr noundef %62), !dbg !717
  %63 = load ptr, ptr %op, align 8, !dbg !718, !tbaa !482
  %64 = load ptr, ptr %q_option, align 8, !dbg !719, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %63, ptr noundef %64), !dbg !720
  %65 = load ptr, ptr %arguments, align 8, !dbg !721, !tbaa !482
  %maxlow = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %65, i32 0, i32 24, !dbg !722
  %call17 = call ptr @gt_option_new_uword(ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef %maxlow, i64 noundef -1), !dbg !723
  store ptr %call17, ptr %maxlow_option, align 8, !dbg !724, !tbaa !482
  %66 = load ptr, ptr %maxlow_option, align 8, !dbg !725, !tbaa !482
  call void @gt_option_hide_default(ptr noundef %66), !dbg !726
  %67 = load ptr, ptr %maxlow_option, align 8, !dbg !727, !tbaa !482
  call void @gt_option_is_extended_option(ptr noundef %67), !dbg !728
  %68 = load ptr, ptr %op, align 8, !dbg !729, !tbaa !482
  %69 = load ptr, ptr %maxlow_option, align 8, !dbg !730, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %68, ptr noundef %69), !dbg !731
  %70 = load ptr, ptr %arguments, align 8, !dbg !732, !tbaa !482
  %lowqual = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %70, i32 0, i32 25, !dbg !733
  %call18 = call ptr @gt_option_new_uint_max(ptr noundef @.str.33, ptr noundef @.str.34, ptr noundef %lowqual, i32 noundef 3, i32 noundef 127), !dbg !734
  store ptr %call18, ptr %option, align 8, !dbg !735, !tbaa !482
  %71 = load ptr, ptr %option, align 8, !dbg !736, !tbaa !482
  call void @gt_option_is_extended_option(ptr noundef %71), !dbg !737
  %72 = load ptr, ptr %option, align 8, !dbg !738, !tbaa !482
  %73 = load ptr, ptr %maxlow_option, align 8, !dbg !739, !tbaa !482
  call void @gt_option_imply(ptr noundef %72, ptr noundef %73), !dbg !740
  %74 = load ptr, ptr %op, align 8, !dbg !741, !tbaa !482
  %75 = load ptr, ptr %option, align 8, !dbg !742, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %74, ptr noundef %75), !dbg !743
  %76 = load ptr, ptr %arguments, align 8, !dbg !744, !tbaa !482
  %phred64 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %76, i32 0, i32 23, !dbg !745
  %call19 = call ptr @gt_option_new_bool(ptr noundef @.str.35, ptr noundef @.str.36, ptr noundef %phred64, i1 noundef zeroext false), !dbg !746
  store ptr %call19, ptr %option, align 8, !dbg !747, !tbaa !482
  %77 = load ptr, ptr %option, align 8, !dbg !748, !tbaa !482
  call void @gt_option_is_extended_option(ptr noundef %77), !dbg !749
  %78 = load ptr, ptr %op, align 8, !dbg !750, !tbaa !482
  %79 = load ptr, ptr %option, align 8, !dbg !751, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %78, ptr noundef %79), !dbg !752
  %80 = load ptr, ptr %arguments, align 8, !dbg !753, !tbaa !482
  %usemaxdepth = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %80, i32 0, i32 7, !dbg !754
  %call20 = call ptr @gt_option_new_bool(ptr noundef @.str.37, ptr noundef @.str.38, ptr noundef %usemaxdepth, i1 noundef zeroext true), !dbg !755
  store ptr %call20, ptr %option, align 8, !dbg !756, !tbaa !482
  %81 = load ptr, ptr %op, align 8, !dbg !757, !tbaa !482
  %82 = load ptr, ptr %option, align 8, !dbg !758, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %81, ptr noundef %82), !dbg !759
  %83 = load ptr, ptr %option, align 8, !dbg !760, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %83), !dbg !761
  %84 = load ptr, ptr %arguments, align 8, !dbg !762, !tbaa !482
  %checksuftab = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %84, i32 0, i32 6, !dbg !763
  %call21 = call ptr @gt_option_new_bool(ptr noundef @.str.39, ptr noundef @.str.40, ptr noundef %checksuftab, i1 noundef zeroext false), !dbg !764
  store ptr %call21, ptr %option, align 8, !dbg !765, !tbaa !482
  %85 = load ptr, ptr %op, align 8, !dbg !766, !tbaa !482
  %86 = load ptr, ptr %option, align 8, !dbg !767, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %85, ptr noundef %86), !dbg !768
  %87 = load ptr, ptr %option, align 8, !dbg !769, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %87), !dbg !770
  %88 = load ptr, ptr %arguments, align 8, !dbg !771, !tbaa !482
  %onlyaccum = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %88, i32 0, i32 3, !dbg !772
  %call22 = call ptr @gt_option_new_bool(ptr noundef @.str.41, ptr noundef @.str.42, ptr noundef %onlyaccum, i1 noundef zeroext false), !dbg !773
  store ptr %call22, ptr %option, align 8, !dbg !774, !tbaa !482
  %89 = load ptr, ptr %op, align 8, !dbg !775, !tbaa !482
  %90 = load ptr, ptr %option, align 8, !dbg !776, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %89, ptr noundef %90), !dbg !777
  %91 = load ptr, ptr %option, align 8, !dbg !778, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %91), !dbg !779
  %92 = load ptr, ptr %arguments, align 8, !dbg !780, !tbaa !482
  %onlyallrandomcodes = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %92, i32 0, i32 4, !dbg !781
  %call23 = call ptr @gt_option_new_bool(ptr noundef @.str.43, ptr noundef @.str.44, ptr noundef %onlyallrandomcodes, i1 noundef zeroext false), !dbg !782
  store ptr %call23, ptr %option, align 8, !dbg !783, !tbaa !482
  %93 = load ptr, ptr %op, align 8, !dbg !784, !tbaa !482
  %94 = load ptr, ptr %option, align 8, !dbg !785, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %93, ptr noundef %94), !dbg !786
  %95 = load ptr, ptr %option, align 8, !dbg !787, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %95), !dbg !788
  %96 = load ptr, ptr %arguments, align 8, !dbg !789, !tbaa !482
  %addbscache_depth = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %96, i32 0, i32 14, !dbg !790
  %call24 = call ptr @gt_option_new_uint(ptr noundef @.str.45, ptr noundef @.str.44, ptr noundef %addbscache_depth, i32 noundef 5), !dbg !791
  store ptr %call24, ptr %option, align 8, !dbg !792, !tbaa !482
  %97 = load ptr, ptr %op, align 8, !dbg !793, !tbaa !482
  %98 = load ptr, ptr %option, align 8, !dbg !794, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %97, ptr noundef %98), !dbg !795
  %99 = load ptr, ptr %option, align 8, !dbg !796, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %99), !dbg !797
  %100 = load ptr, ptr %arguments, align 8, !dbg !798, !tbaa !482
  %radixlarge = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %100, i32 0, i32 5, !dbg !799
  %call25 = call ptr @gt_option_new_bool(ptr noundef @.str.46, ptr noundef @.str.47, ptr noundef %radixlarge, i1 noundef zeroext false), !dbg !800
  store ptr %call25, ptr %option, align 8, !dbg !801, !tbaa !482
  %101 = load ptr, ptr %op, align 8, !dbg !802, !tbaa !482
  %102 = load ptr, ptr %option, align 8, !dbg !803, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %101, ptr noundef %102), !dbg !804
  %103 = load ptr, ptr %option, align 8, !dbg !805, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %103), !dbg !806
  %104 = load ptr, ptr %arguments, align 8, !dbg !807, !tbaa !482
  %radixparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %104, i32 0, i32 13, !dbg !808
  %call26 = call ptr @gt_option_new_uint(ptr noundef @.str.48, ptr noundef @.str.49, ptr noundef %radixparts, i32 noundef 1), !dbg !809
  store ptr %call26, ptr %option, align 8, !dbg !810, !tbaa !482
  %105 = load ptr, ptr %op, align 8, !dbg !811, !tbaa !482
  %106 = load ptr, ptr %option, align 8, !dbg !812, !tbaa !482
  call void @gt_option_parser_add_option(ptr noundef %105, ptr noundef %106), !dbg !813
  %107 = load ptr, ptr %option, align 8, !dbg !814, !tbaa !482
  call void @gt_option_is_development_option(ptr noundef %107), !dbg !815
  %108 = load ptr, ptr %op, align 8, !dbg !816, !tbaa !482
  call void @gt_option_parser_set_max_args(ptr noundef %108, i32 noundef 0), !dbg !817
  %109 = load ptr, ptr %op, align 8, !dbg !818, !tbaa !482
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxlow_option) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %db_option) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_option) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_option) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionmemlimit) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionparts) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #7, !dbg !819
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !819
  ret ptr %109, !dbg !820
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_seqcorrect_arguments_check(i32 noundef %rest_argc, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !821 {
entry:
  %rest_argc.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %haserr = alloca i8, align 1
  store i32 %rest_argc, ptr %rest_argc.addr, align 4, !tbaa !828
  tail call void @llvm.dbg.declare(metadata ptr %rest_argc.addr, metadata !823, metadata !DIExpression()), !dbg !829
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !824, metadata !DIExpression()), !dbg !830
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !825, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !826, metadata !DIExpression()), !dbg !833
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !834, !tbaa !482
  store ptr %0, ptr %arguments, align 8, !dbg !833, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !835
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !827, metadata !DIExpression()), !dbg !836
  store i8 0, ptr %haserr, align 1, !dbg !836, !tbaa !837
  br label %do.body, !dbg !838

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !839, !tbaa !482
  %tobool = icmp ne ptr %1, null, !dbg !839
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !839

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !839, !tbaa !482
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !839
  br i1 %call, label %if.then, label %if.end, !dbg !842

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !843, !tbaa !482
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.50, ptr noundef @__func__.gt_seqcorrect_arguments_check, ptr noundef @.str, i32 noundef 313), !dbg !843
  call void @abort() #8, !dbg !843
  unreachable, !dbg !843

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !842

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !842

do.end:                                           ; preds = %do.cond
  %4 = load i8, ptr %haserr, align 1, !dbg !845, !tbaa !837, !range !847, !noundef !848
  %tobool2 = trunc i8 %4 to i1, !dbg !845
  br i1 %tobool2, label %if.end8, label %land.lhs.true, !dbg !849

land.lhs.true:                                    ; preds = %do.end
  %5 = load ptr, ptr %arguments, align 8, !dbg !850, !tbaa !482
  %refoptionmemlimit = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %5, i32 0, i32 21, !dbg !851
  %6 = load ptr, ptr %refoptionmemlimit, align 8, !dbg !851, !tbaa !549
  %call3 = call zeroext i1 @gt_option_is_set(ptr noundef %6), !dbg !852
  br i1 %call3, label %if.then4, label %if.end8, !dbg !853

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %arguments, align 8, !dbg !854, !tbaa !482
  %maximumspace = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %7, i32 0, i32 17, !dbg !857
  %8 = load ptr, ptr %arguments, align 8, !dbg !858, !tbaa !482
  %memlimitarg = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %8, i32 0, i32 19, !dbg !859
  %9 = load ptr, ptr %memlimitarg, align 8, !dbg !859, !tbaa !516
  %10 = load ptr, ptr %err.addr, align 8, !dbg !860, !tbaa !482
  %call5 = call i32 @gt_option_parse_spacespec(ptr noundef %maximumspace, ptr noundef @.str.23, ptr noundef %9, ptr noundef %10), !dbg !861
  %cmp = icmp ne i32 %call5, 0, !dbg !862
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !863

if.then6:                                         ; preds = %if.then4
  store i8 1, ptr %haserr, align 1, !dbg !864, !tbaa !837
  br label %if.end7, !dbg !866

if.end7:                                          ; preds = %if.then6, %if.then4
  br label %if.end8, !dbg !867

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %do.end
  %11 = load i8, ptr %haserr, align 1, !dbg !868, !tbaa !837, !range !847, !noundef !848
  %tobool9 = trunc i8 %11 to i1, !dbg !868
  br i1 %tobool9, label %if.end16, label %if.then10, !dbg !870

if.then10:                                        ; preds = %if.end8
  %12 = load ptr, ptr %arguments, align 8, !dbg !871, !tbaa !482
  %find_seldom = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %12, i32 0, i32 8, !dbg !874
  %13 = load i8, ptr %find_seldom, align 8, !dbg !874, !tbaa !875, !range !847, !noundef !848
  %tobool11 = trunc i8 %13 to i1, !dbg !874
  br i1 %tobool11, label %land.lhs.true12, label %if.end15, !dbg !876

land.lhs.true12:                                  ; preds = %if.then10
  %14 = load ptr, ptr %arguments, align 8, !dbg !877, !tbaa !482
  %iterations = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %14, i32 0, i32 16, !dbg !878
  %15 = load i32, ptr %iterations, align 8, !dbg !878, !tbaa !879
  %cmp13 = icmp ne i32 %15, 1, !dbg !880
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !881

if.then14:                                        ; preds = %land.lhs.true12
  %16 = load ptr, ptr %err.addr, align 8, !dbg !882, !tbaa !482
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %16, ptr noundef @.str.51), !dbg !884
  store i8 1, ptr %haserr, align 1, !dbg !885, !tbaa !837
  br label %if.end15, !dbg !886

if.end15:                                         ; preds = %if.then14, %land.lhs.true12, %if.then10
  br label %if.end16, !dbg !887

if.end16:                                         ; preds = %if.end15, %if.end8
  %17 = load i8, ptr %haserr, align 1, !dbg !888, !tbaa !837, !range !847, !noundef !848
  %tobool17 = trunc i8 %17 to i1, !dbg !888
  %18 = zext i1 %tobool17 to i64, !dbg !888
  %cond = select i1 %tobool17, i32 -1, i32 0, !dbg !888
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !889
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !889
  ret i32 %cond, !dbg !890
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_seqcorrect_runner(i32 noundef %argc, ptr noundef %argv, i32 noundef %parsed_args, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !891 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %parsed_args.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %el = alloca ptr, align 8
  %encseq = alloca ptr, align 8
  %timer = alloca ptr, align 8
  %default_logger = alloca ptr, align 8
  %verbose_logger = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %md5path = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !828
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !893, metadata !DIExpression()), !dbg !927
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !894, metadata !DIExpression()), !dbg !928
  store i32 %parsed_args, ptr %parsed_args.addr, align 4, !tbaa !828
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !895, metadata !DIExpression()), !dbg !929
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !896, metadata !DIExpression()), !dbg !930
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !897, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !932
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !898, metadata !DIExpression()), !dbg !933
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !934, !tbaa !482
  store ptr %0, ptr %arguments, align 8, !dbg !933, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %el) #7, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %el, metadata !899, metadata !DIExpression()), !dbg !936
  store ptr null, ptr %el, align 8, !dbg !936, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %encseq) #7, !dbg !937
  tail call void @llvm.dbg.declare(metadata ptr %encseq, metadata !904, metadata !DIExpression()), !dbg !938
  store ptr null, ptr %encseq, align 8, !dbg !938, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %timer) #7, !dbg !939
  tail call void @llvm.dbg.declare(metadata ptr %timer, metadata !908, metadata !DIExpression()), !dbg !940
  store ptr null, ptr %timer, align 8, !dbg !940, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %default_logger) #7, !dbg !941
  tail call void @llvm.dbg.declare(metadata ptr %default_logger, metadata !913, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 8, ptr %verbose_logger) #7, !dbg !941
  tail call void @llvm.dbg.declare(metadata ptr %verbose_logger, metadata !918, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !944
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !919, metadata !DIExpression()), !dbg !945
  store i8 0, ptr %haserr, align 1, !dbg !945, !tbaa !837
  br label %do.body, !dbg !946

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !947, !tbaa !482
  %tobool = icmp ne ptr %1, null, !dbg !947
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !947

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !947, !tbaa !482
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !947
  br i1 %call, label %if.then, label %if.end, !dbg !950

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !951, !tbaa !482
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.50, ptr noundef @__func__.gt_seqcorrect_runner, ptr noundef @.str, i32 noundef 697), !dbg !951
  call void @abort() #8, !dbg !951
  unreachable, !dbg !951

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !950

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !950

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !953

do.body2:                                         ; preds = %do.end
  %4 = load ptr, ptr %arguments, align 8, !dbg !954, !tbaa !482
  %tobool3 = icmp ne ptr %4, null, !dbg !954
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !957

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !958, !tbaa !482
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_seqcorrect_runner, ptr noundef @.str, i32 noundef 698), !dbg !958
  call void @abort() #8, !dbg !958
  unreachable, !dbg !958

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !957

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !957

do.end8:                                          ; preds = %do.cond7
  %call9 = call zeroext i1 @gt_showtime_enabled(), !dbg !960
  br i1 %call9, label %if.then10, label %if.end12, !dbg !962

if.then10:                                        ; preds = %do.end8
  %call11 = call ptr @gt_timer_new_with_progress_description(ptr noundef @.str.52), !dbg !963
  store ptr %call11, ptr %timer, align 8, !dbg !965, !tbaa !482
  %6 = load ptr, ptr %timer, align 8, !dbg !966, !tbaa !482
  call void @gt_timer_show_cpu_time_by_progress(ptr noundef %6), !dbg !967
  %7 = load ptr, ptr %timer, align 8, !dbg !968, !tbaa !482
  call void @gt_timer_start(ptr noundef %7), !dbg !969
  br label %if.end12, !dbg !970

if.end12:                                         ; preds = %if.then10, %do.end8
  %8 = load ptr, ptr %arguments, align 8, !dbg !971, !tbaa !482
  %quiet = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %8, i32 0, i32 2, !dbg !972
  %9 = load i8, ptr %quiet, align 2, !dbg !972, !tbaa !973, !range !847, !noundef !848
  %tobool13 = trunc i8 %9 to i1, !dbg !972
  %lnot = xor i1 %tobool13, true, !dbg !974
  %10 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !482
  %call14 = call ptr @gt_logger_new(i1 noundef zeroext %lnot, ptr noundef @.str.53, ptr noundef %10), !dbg !976
  store ptr %call14, ptr %default_logger, align 8, !dbg !977, !tbaa !482
  %11 = load ptr, ptr %default_logger, align 8, !dbg !978, !tbaa !482
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %11, ptr noundef @.str.54), !dbg !979
  %12 = load ptr, ptr %arguments, align 8, !dbg !980, !tbaa !482
  %verbose = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %12, i32 0, i32 1, !dbg !981
  %13 = load i8, ptr %verbose, align 1, !dbg !981, !tbaa !982, !range !847, !noundef !848
  %tobool15 = trunc i8 %13 to i1, !dbg !981
  %14 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !482
  %call16 = call ptr @gt_logger_new(i1 noundef zeroext %tobool15, ptr noundef @.str.53, ptr noundef %14), !dbg !984
  store ptr %call16, ptr %verbose_logger, align 8, !dbg !985, !tbaa !482
  %15 = load ptr, ptr %verbose_logger, align 8, !dbg !986, !tbaa !482
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %15, ptr noundef @.str.55), !dbg !987
  %16 = load ptr, ptr %arguments, align 8, !dbg !988, !tbaa !482
  %db = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %16, i32 0, i32 22, !dbg !990
  %17 = load ptr, ptr %db, align 8, !dbg !990, !tbaa !525
  %call17 = call i64 @gt_str_array_size(ptr noundef %17), !dbg !991
  %cmp = icmp ne i64 %call17, 0, !dbg !992
  br i1 %cmp, label %if.then18, label %if.else, !dbg !993

if.then18:                                        ; preds = %if.end12
  %18 = load ptr, ptr %arguments, align 8, !dbg !994, !tbaa !482
  %19 = load ptr, ptr %default_logger, align 8, !dbg !996, !tbaa !482
  %20 = load ptr, ptr %verbose_logger, align 8, !dbg !997, !tbaa !482
  %21 = load ptr, ptr %err.addr, align 8, !dbg !998, !tbaa !482
  %call19 = call zeroext i1 @gt_seqcorrect_encode(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21), !dbg !999
  %frombool = zext i1 %call19 to i8, !dbg !1000
  store i8 %frombool, ptr %haserr, align 1, !dbg !1000, !tbaa !837
  br label %if.end21, !dbg !1001

if.else:                                          ; preds = %if.end12
  %22 = load ptr, ptr %verbose_logger, align 8, !dbg !1002, !tbaa !482
  %23 = load ptr, ptr %arguments, align 8, !dbg !1004, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %23, i32 0, i32 18, !dbg !1005
  %24 = load ptr, ptr %encseqinput, align 8, !dbg !1005, !tbaa !506
  %call20 = call ptr @gt_str_get(ptr noundef %24), !dbg !1006
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %22, ptr noundef @.str.56, ptr noundef %call20), !dbg !1007
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %25 = load i8, ptr %haserr, align 1, !dbg !1008, !tbaa !837, !range !847, !noundef !848
  %tobool22 = trunc i8 %25 to i1, !dbg !1008
  br i1 %tobool22, label %if.end47, label %if.then23, !dbg !1009

if.then23:                                        ; preds = %if.end21
  %call24 = call ptr @gt_encseq_loader_new(), !dbg !1010
  store ptr %call24, ptr %el, align 8, !dbg !1011, !tbaa !482
  %26 = load ptr, ptr %el, align 8, !dbg !1012, !tbaa !482
  call void @gt_encseq_loader_drop_description_support(ptr noundef %26), !dbg !1013
  %27 = load ptr, ptr %el, align 8, !dbg !1014, !tbaa !482
  call void @gt_encseq_loader_disable_autosupport(ptr noundef %27), !dbg !1015
  %28 = load ptr, ptr %el, align 8, !dbg !1016, !tbaa !482
  %29 = load ptr, ptr %arguments, align 8, !dbg !1017, !tbaa !482
  %encseqinput25 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %29, i32 0, i32 18, !dbg !1018
  %30 = load ptr, ptr %encseqinput25, align 8, !dbg !1018, !tbaa !506
  %call26 = call ptr @gt_str_get(ptr noundef %30), !dbg !1019
  %31 = load ptr, ptr %err.addr, align 8, !dbg !1020, !tbaa !482
  %call27 = call ptr @gt_encseq_loader_load(ptr noundef %28, ptr noundef %call26, ptr noundef %31), !dbg !1021
  store ptr %call27, ptr %encseq, align 8, !dbg !1022, !tbaa !482
  %32 = load ptr, ptr %encseq, align 8, !dbg !1023, !tbaa !482
  %cmp28 = icmp eq ptr %32, null, !dbg !1025
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !1026

if.then29:                                        ; preds = %if.then23
  store i8 1, ptr %haserr, align 1, !dbg !1027, !tbaa !837
  br label %if.end30, !dbg !1029

if.end30:                                         ; preds = %if.then29, %if.then23
  %33 = load i8, ptr %haserr, align 1, !dbg !1030, !tbaa !837, !range !847, !noundef !848
  %tobool31 = trunc i8 %33 to i1, !dbg !1030
  br i1 %tobool31, label %if.end46, label %if.then32, !dbg !1031

if.then32:                                        ; preds = %if.end30
  %34 = load ptr, ptr %encseq, align 8, !dbg !1032, !tbaa !482
  %35 = load ptr, ptr %err.addr, align 8, !dbg !1034, !tbaa !482
  %call33 = call i32 @gt_encseq_mirror(ptr noundef %34, ptr noundef %35), !dbg !1035
  %cmp34 = icmp ne i32 %call33, 0, !dbg !1036
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !1037

if.then35:                                        ; preds = %if.then32
  store i8 1, ptr %haserr, align 1, !dbg !1038, !tbaa !837
  br label %if.end36, !dbg !1040

if.end36:                                         ; preds = %if.then35, %if.then32
  %36 = load i8, ptr %haserr, align 1, !dbg !1041, !tbaa !837, !range !847, !noundef !848
  %tobool37 = trunc i8 %36 to i1, !dbg !1041
  br i1 %tobool37, label %if.end45, label %land.lhs.true, !dbg !1042

land.lhs.true:                                    ; preds = %if.end36
  %37 = load ptr, ptr %encseq, align 8, !dbg !1043, !tbaa !482
  %call38 = call zeroext i1 @gt_encseq_has_md5_support(ptr noundef %37), !dbg !1044
  br i1 %call38, label %if.then39, label %if.end45, !dbg !1045

if.then39:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %md5path) #7, !dbg !1046
  tail call void @llvm.dbg.declare(metadata ptr %md5path, metadata !920, metadata !DIExpression()), !dbg !1047
  %38 = load ptr, ptr %arguments, align 8, !dbg !1048, !tbaa !482
  %encseqinput40 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %38, i32 0, i32 18, !dbg !1049
  %39 = load ptr, ptr %encseqinput40, align 8, !dbg !1049, !tbaa !506
  %call41 = call ptr @gt_str_clone(ptr noundef %39), !dbg !1050
  store ptr %call41, ptr %md5path, align 8, !dbg !1047, !tbaa !482
  %40 = load ptr, ptr %md5path, align 8, !dbg !1051, !tbaa !482
  call void @gt_str_append_cstr(ptr noundef %40, ptr noundef @.str.57), !dbg !1052
  %41 = load ptr, ptr %md5path, align 8, !dbg !1053, !tbaa !482
  %call42 = call ptr @gt_str_get(ptr noundef %41), !dbg !1054
  call void @gt_xunlink(ptr noundef %call42), !dbg !1055
  %42 = load ptr, ptr %arguments, align 8, !dbg !1056, !tbaa !482
  %encseqinput43 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %42, i32 0, i32 18, !dbg !1057
  %43 = load ptr, ptr %encseqinput43, align 8, !dbg !1057, !tbaa !506
  %call44 = call ptr @gt_str_get(ptr noundef %43), !dbg !1058
  call void (ptr, ...) @gt_warning(ptr noundef @.str.58, ptr noundef %call44), !dbg !1059
  %44 = load ptr, ptr %md5path, align 8, !dbg !1060, !tbaa !482
  call void @gt_str_delete(ptr noundef %44), !dbg !1061
  call void @llvm.lifetime.end.p0(i64 8, ptr %md5path) #7, !dbg !1062
  br label %if.end45, !dbg !1063

if.end45:                                         ; preds = %if.then39, %land.lhs.true, %if.end36
  br label %if.end46, !dbg !1064

if.end46:                                         ; preds = %if.end45, %if.end30
  br label %if.end47, !dbg !1065

if.end47:                                         ; preds = %if.end46, %if.end21
  %45 = load i8, ptr %haserr, align 1, !dbg !1066, !tbaa !837, !range !847, !noundef !848
  %tobool48 = trunc i8 %45 to i1, !dbg !1066
  br i1 %tobool48, label %if.end58, label %if.then49, !dbg !1068

if.then49:                                        ; preds = %if.end47
  %46 = load ptr, ptr %arguments, align 8, !dbg !1069, !tbaa !482
  %find_seldom = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %46, i32 0, i32 8, !dbg !1072
  %47 = load i8, ptr %find_seldom, align 8, !dbg !1072, !tbaa !875, !range !847, !noundef !848
  %tobool50 = trunc i8 %47 to i1, !dbg !1072
  br i1 %tobool50, label %if.else54, label %if.then51, !dbg !1073

if.then51:                                        ; preds = %if.then49
  %48 = load ptr, ptr %arguments, align 8, !dbg !1074, !tbaa !482
  %49 = load ptr, ptr %encseq, align 8, !dbg !1075, !tbaa !482
  %50 = load ptr, ptr %verbose_logger, align 8, !dbg !1076, !tbaa !482
  %51 = load ptr, ptr %timer, align 8, !dbg !1077, !tbaa !482
  %52 = load ptr, ptr %err.addr, align 8, !dbg !1078, !tbaa !482
  %call52 = call zeroext i1 @gt_seqcorrect_correct(ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52), !dbg !1079
  %frombool53 = zext i1 %call52 to i8, !dbg !1080
  store i8 %frombool53, ptr %haserr, align 1, !dbg !1080, !tbaa !837
  br label %if.end57, !dbg !1081

if.else54:                                        ; preds = %if.then49
  %53 = load ptr, ptr %arguments, align 8, !dbg !1082, !tbaa !482
  %54 = load ptr, ptr %encseq, align 8, !dbg !1083, !tbaa !482
  %55 = load ptr, ptr %verbose_logger, align 8, !dbg !1084, !tbaa !482
  %56 = load ptr, ptr %timer, align 8, !dbg !1085, !tbaa !482
  %57 = load ptr, ptr %err.addr, align 8, !dbg !1086, !tbaa !482
  %call55 = call zeroext i1 @gt_seqcorrect_find_seldom(ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57), !dbg !1087
  %frombool56 = zext i1 %call55 to i8, !dbg !1088
  store i8 %frombool56, ptr %haserr, align 1, !dbg !1088, !tbaa !837
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then51
  br label %if.end58, !dbg !1089

if.end58:                                         ; preds = %if.end57, %if.end47
  %58 = load ptr, ptr %encseq, align 8, !dbg !1090, !tbaa !482
  call void @gt_encseq_delete(ptr noundef %58), !dbg !1091
  %59 = load ptr, ptr %el, align 8, !dbg !1092, !tbaa !482
  call void @gt_encseq_loader_delete(ptr noundef %59), !dbg !1093
  %60 = load ptr, ptr %timer, align 8, !dbg !1094, !tbaa !482
  %cmp59 = icmp ne ptr %60, null, !dbg !1096
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !1097

if.then60:                                        ; preds = %if.end58
  %61 = load ptr, ptr %timer, align 8, !dbg !1098, !tbaa !482
  %62 = load ptr, ptr @stdout, align 8, !dbg !1100, !tbaa !482
  call void @gt_timer_show_progress_final(ptr noundef %61, ptr noundef %62), !dbg !1101
  %63 = load ptr, ptr %timer, align 8, !dbg !1102, !tbaa !482
  call void @gt_timer_delete(ptr noundef %63), !dbg !1103
  br label %if.end61, !dbg !1104

if.end61:                                         ; preds = %if.then60, %if.end58
  %64 = load ptr, ptr %default_logger, align 8, !dbg !1105, !tbaa !482
  call void @gt_logger_delete(ptr noundef %64), !dbg !1106
  %65 = load ptr, ptr %verbose_logger, align 8, !dbg !1107, !tbaa !482
  call void @gt_logger_delete(ptr noundef %65), !dbg !1108
  %66 = load i8, ptr %haserr, align 1, !dbg !1109, !tbaa !837, !range !847, !noundef !848
  %tobool62 = trunc i8 %66 to i1, !dbg !1109
  %67 = zext i1 %tobool62 to i64, !dbg !1109
  %cond = select i1 %tobool62, i32 -1, i32 0, !dbg !1109
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %verbose_logger) #7, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %default_logger) #7, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %timer) #7, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %encseq) #7, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %el) #7, !dbg !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !1110
  ret i32 %cond, !dbg !1111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1112 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !1118 ptr @gt_str_new() #1

declare !dbg !1121 ptr @gt_str_array_new() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1124 void @gt_str_delete(ptr noundef) #1

declare !dbg !1127 void @gt_option_delete(ptr noundef) #1

declare !dbg !1130 void @gt_str_array_delete(ptr noundef) #1

declare !dbg !1133 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !1136 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !1196 void @abort() #3

declare !dbg !1200 ptr @gt_option_parser_new(ptr noundef, ptr noundef) #1

declare !dbg !1203 ptr @gt_option_new_filename_array(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1206 void @gt_option_hide_default(ptr noundef) #1

declare !dbg !1207 void @gt_option_parser_add_option(ptr noundef, ptr noundef) #1

declare !dbg !1210 ptr @gt_option_new_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1213 void @gt_option_is_mandatory_either(ptr noundef, ptr noundef) #1

declare !dbg !1218 void @gt_option_exclude(ptr noundef, ptr noundef) #1

declare !dbg !1221 ptr @gt_option_new_uint_min(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare !dbg !1225 void @gt_option_is_mandatory(ptr noundef) #1

declare !dbg !1226 ptr @gt_option_new_bool(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare !dbg !1230 void @gt_option_is_development_option(ptr noundef) #1

declare !dbg !1231 ptr @gt_option_new_uint(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !1234 ptr @gt_option_ref(ptr noundef) #1

declare !dbg !1237 ptr @gt_option_new_verbose(ptr noundef) #1

declare !dbg !1240 ptr @gt_option_new_uword(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !1244 void @gt_option_is_extended_option(ptr noundef) #1

declare !dbg !1245 ptr @gt_option_new_uint_max(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare !dbg !1246 void @gt_option_imply(ptr noundef, ptr noundef) #1

declare !dbg !1247 void @gt_option_parser_set_max_args(ptr noundef, i32 noundef) #1

declare !dbg !1250 zeroext i1 @gt_error_is_set(ptr noundef) #1

declare !dbg !1255 zeroext i1 @gt_option_is_set(ptr noundef) #1

declare !dbg !1258 i32 @gt_option_parse_spacespec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1263 void @gt_error_set(ptr noundef, ptr noundef, ...) #1

declare !dbg !1266 zeroext i1 @gt_showtime_enabled() #1

declare !dbg !1270 ptr @gt_timer_new_with_progress_description(ptr noundef) #1

declare !dbg !1273 void @gt_timer_show_cpu_time_by_progress(ptr noundef) #1

declare !dbg !1276 void @gt_timer_start(ptr noundef) #1

declare !dbg !1277 ptr @gt_logger_new(i1 noundef zeroext, ptr noundef, ptr noundef) #1

declare !dbg !1280 void @gt_logger_log(ptr noundef, ptr noundef, ...) #1

declare !dbg !1283 i64 @gt_str_array_size(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @gt_seqcorrect_encode(ptr noundef %arguments, ptr noundef %default_logger, ptr noundef %verbose_logger, ptr noundef %err) #0 !dbg !1288 {
entry:
  %arguments.addr = alloca ptr, align 8
  %default_logger.addr = alloca ptr, align 8
  %verbose_logger.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %r2t = alloca ptr, align 8
  %i = alloca i64, align 8
  %autoindexname = alloca i8, align 1
  %dbentry = alloca ptr, align 8
  %nofreads_valid = alloca i64, align 8
  %nofreads_invalid = alloca i64, align 8
  %nofreads_input = alloca i64, align 8
  %tlen_valid = alloca i64, align 8
  %varlen = alloca i8, align 1
  store ptr %arguments, ptr %arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %arguments.addr, metadata !1292, metadata !DIExpression()), !dbg !1315
  store ptr %default_logger, ptr %default_logger.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %default_logger.addr, metadata !1293, metadata !DIExpression()), !dbg !1316
  store ptr %verbose_logger, ptr %verbose_logger.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %verbose_logger.addr, metadata !1294, metadata !DIExpression()), !dbg !1317
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1295, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !1319
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !1296, metadata !DIExpression()), !dbg !1320
  store i8 0, ptr %haserr, align 1, !dbg !1320, !tbaa !837
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2t) #7, !dbg !1321
  tail call void @llvm.dbg.declare(metadata ptr %r2t, metadata !1297, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !1323
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1302, metadata !DIExpression()), !dbg !1324
  call void @llvm.lifetime.start.p0(i64 1, ptr %autoindexname) #7, !dbg !1325
  tail call void @llvm.dbg.declare(metadata ptr %autoindexname, metadata !1303, metadata !DIExpression()), !dbg !1326
  store i8 0, ptr %autoindexname, align 1, !dbg !1326, !tbaa !837
  %0 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1327, !tbaa !482
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %0, ptr noundef @.str.59), !dbg !1328
  %1 = load ptr, ptr %arguments.addr, align 8, !dbg !1329, !tbaa !482
  %indexname = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %1, i32 0, i32 20, !dbg !1331
  %2 = load ptr, ptr %indexname, align 8, !dbg !1331, !tbaa !511
  %call = call i64 @gt_str_length(ptr noundef %2), !dbg !1332
  %cmp = icmp eq i64 %call, 0, !dbg !1333
  br i1 %cmp, label %if.then, label %if.end, !dbg !1334

if.then:                                          ; preds = %entry
  store i8 1, ptr %autoindexname, align 1, !dbg !1335, !tbaa !837
  %3 = load ptr, ptr %arguments.addr, align 8, !dbg !1337, !tbaa !482
  %indexname1 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %3, i32 0, i32 20, !dbg !1338
  %4 = load ptr, ptr %indexname1, align 8, !dbg !1338, !tbaa !511
  %5 = load ptr, ptr %arguments.addr, align 8, !dbg !1339, !tbaa !482
  %db = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %5, i32 0, i32 22, !dbg !1340
  %6 = load ptr, ptr %db, align 8, !dbg !1340, !tbaa !525
  %call2 = call ptr @gt_str_array_get(ptr noundef %6, i64 noundef 0), !dbg !1341
  call void @gt_str_append_cstr(ptr noundef %4, ptr noundef %call2), !dbg !1342
  br label %if.end, !dbg !1343

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1344, !tbaa !482
  %8 = load ptr, ptr %arguments.addr, align 8, !dbg !1345, !tbaa !482
  %indexname3 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %8, i32 0, i32 20, !dbg !1346
  %9 = load ptr, ptr %indexname3, align 8, !dbg !1346, !tbaa !511
  %call4 = call ptr @gt_str_get(ptr noundef %9), !dbg !1347
  %10 = load i8, ptr %autoindexname, align 1, !dbg !1348, !tbaa !837, !range !847, !noundef !848
  %tobool = trunc i8 %10 to i1, !dbg !1348
  %11 = zext i1 %tobool to i64, !dbg !1348
  %cond = select i1 %tobool, ptr @.str.61, ptr @.str.62, !dbg !1348
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %7, ptr noundef @.str.60, ptr noundef %call4, ptr noundef %cond), !dbg !1349
  %12 = load ptr, ptr %arguments.addr, align 8, !dbg !1350, !tbaa !482
  %indexname5 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %12, i32 0, i32 20, !dbg !1351
  %13 = load ptr, ptr %indexname5, align 8, !dbg !1351, !tbaa !511
  %call6 = call ptr @gt_reads2twobit_new(ptr noundef %13), !dbg !1352
  store ptr %call6, ptr %r2t, align 8, !dbg !1353, !tbaa !482
  %14 = load ptr, ptr %arguments.addr, align 8, !dbg !1354, !tbaa !482
  %phred64 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %14, i32 0, i32 23, !dbg !1356
  %15 = load i8, ptr %phred64, align 8, !dbg !1356, !tbaa !1357, !range !847, !noundef !848
  %tobool7 = trunc i8 %15 to i1, !dbg !1356
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1358

if.then8:                                         ; preds = %if.end
  %16 = load ptr, ptr %r2t, align 8, !dbg !1359, !tbaa !482
  call void @gt_reads2twobit_use_phred64(ptr noundef %16), !dbg !1360
  br label %if.end9, !dbg !1360

if.end9:                                          ; preds = %if.then8, %if.end
  %17 = load ptr, ptr %arguments.addr, align 8, !dbg !1361, !tbaa !482
  %maxlow = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %17, i32 0, i32 24, !dbg !1363
  %18 = load i64, ptr %maxlow, align 8, !dbg !1363, !tbaa !1364
  %cmp10 = icmp ne i64 %18, -1, !dbg !1365
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1366

if.then11:                                        ; preds = %if.end9
  %19 = load ptr, ptr %r2t, align 8, !dbg !1367, !tbaa !482
  %20 = load ptr, ptr %arguments.addr, align 8, !dbg !1368, !tbaa !482
  %maxlow12 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %20, i32 0, i32 24, !dbg !1369
  %21 = load i64, ptr %maxlow12, align 8, !dbg !1369, !tbaa !1364
  %22 = load ptr, ptr %arguments.addr, align 8, !dbg !1370, !tbaa !482
  %lowqual = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %22, i32 0, i32 25, !dbg !1371
  %23 = load i32, ptr %lowqual, align 8, !dbg !1371, !tbaa !1372
  %conv = trunc i32 %23 to i8, !dbg !1373
  call void @gt_reads2twobit_set_quality_filter(ptr noundef %19, i64 noundef %21, i8 noundef signext %conv), !dbg !1374
  br label %if.end13, !dbg !1374

if.end13:                                         ; preds = %if.then11, %if.end9
  store i64 0, ptr %i, align 8, !dbg !1375, !tbaa !1376
  br label %for.cond, !dbg !1377

for.cond:                                         ; preds = %for.inc, %if.end13
  %24 = load i64, ptr %i, align 8, !dbg !1378, !tbaa !1376
  %25 = load ptr, ptr %arguments.addr, align 8, !dbg !1379, !tbaa !482
  %db14 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %25, i32 0, i32 22, !dbg !1380
  %26 = load ptr, ptr %db14, align 8, !dbg !1380, !tbaa !525
  %call15 = call i64 @gt_str_array_size(ptr noundef %26), !dbg !1381
  %cmp16 = icmp ult i64 %24, %call15, !dbg !1382
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !1383

land.rhs:                                         ; preds = %for.cond
  %27 = load i8, ptr %haserr, align 1, !dbg !1384, !tbaa !837, !range !847, !noundef !848
  %tobool18 = trunc i8 %27 to i1, !dbg !1384
  %lnot = xor i1 %tobool18, true, !dbg !1385
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !1386
  br i1 %28, label %for.body, label %for.end, !dbg !1387

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbentry) #7, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %dbentry, metadata !1304, metadata !DIExpression()), !dbg !1389
  %29 = load ptr, ptr %arguments.addr, align 8, !dbg !1390, !tbaa !482
  %db19 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %29, i32 0, i32 22, !dbg !1391
  %30 = load ptr, ptr %db19, align 8, !dbg !1391, !tbaa !525
  %31 = load i64, ptr %i, align 8, !dbg !1392, !tbaa !1376
  %call20 = call ptr @gt_str_array_get_str(ptr noundef %30, i64 noundef %31), !dbg !1393
  store ptr %call20, ptr %dbentry, align 8, !dbg !1389, !tbaa !482
  %32 = load ptr, ptr %r2t, align 8, !dbg !1394, !tbaa !482
  %33 = load ptr, ptr %dbentry, align 8, !dbg !1396, !tbaa !482
  %34 = load ptr, ptr %err.addr, align 8, !dbg !1397, !tbaa !482
  %call21 = call i32 @gt_reads2twobit_add_library(ptr noundef %32, ptr noundef %33, ptr noundef %34), !dbg !1398
  %cmp22 = icmp ne i32 %call21, 0, !dbg !1399
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !1400

if.then24:                                        ; preds = %for.body
  store i8 1, ptr %haserr, align 1, !dbg !1401, !tbaa !837
  br label %if.end25, !dbg !1402

if.end25:                                         ; preds = %if.then24, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbentry) #7, !dbg !1403
  br label %for.inc, !dbg !1404

for.inc:                                          ; preds = %if.end25
  %35 = load i64, ptr %i, align 8, !dbg !1405, !tbaa !1376
  %inc = add i64 %35, 1, !dbg !1405
  store i64 %inc, ptr %i, align 8, !dbg !1405, !tbaa !1376
  br label %for.cond, !dbg !1406, !llvm.loop !1407

for.end:                                          ; preds = %land.end
  %36 = load i8, ptr %haserr, align 1, !dbg !1410, !tbaa !837, !range !847, !noundef !848
  %tobool26 = trunc i8 %36 to i1, !dbg !1410
  br i1 %tobool26, label %if.end33, label %if.then27, !dbg !1412

if.then27:                                        ; preds = %for.end
  %37 = load ptr, ptr %r2t, align 8, !dbg !1413, !tbaa !482
  %38 = load ptr, ptr %err.addr, align 8, !dbg !1416, !tbaa !482
  %call28 = call i32 @gt_reads2twobit_encode(ptr noundef %37, ptr noundef %38), !dbg !1417
  %cmp29 = icmp ne i32 %call28, 0, !dbg !1418
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1419

if.then31:                                        ; preds = %if.then27
  store i8 1, ptr %haserr, align 1, !dbg !1420, !tbaa !837
  br label %if.end32, !dbg !1421

if.end32:                                         ; preds = %if.then31, %if.then27
  br label %if.end33, !dbg !1422

if.end33:                                         ; preds = %if.end32, %for.end
  br label %do.body, !dbg !1423

do.body:                                          ; preds = %if.end33
  %39 = load ptr, ptr %arguments.addr, align 8, !dbg !1424, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %39, i32 0, i32 18, !dbg !1424
  %40 = load ptr, ptr %encseqinput, align 8, !dbg !1424, !tbaa !506
  %call34 = call i64 @gt_str_length(ptr noundef %40), !dbg !1424
  %cmp35 = icmp eq i64 %call34, 0, !dbg !1424
  br i1 %cmp35, label %if.end39, label %if.then37, !dbg !1427

if.then37:                                        ; preds = %do.body
  %41 = load ptr, ptr @stderr, align 8, !dbg !1428, !tbaa !482
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.1, ptr noundef @.str.63, ptr noundef @__func__.gt_seqcorrect_encode, ptr noundef @.str, i32 noundef 423), !dbg !1428
  call void @abort() #8, !dbg !1428
  unreachable, !dbg !1428

if.end39:                                         ; preds = %do.body
  br label %do.cond, !dbg !1427

do.cond:                                          ; preds = %if.end39
  br label %do.end, !dbg !1427

do.end:                                           ; preds = %do.cond
  %42 = load ptr, ptr %arguments.addr, align 8, !dbg !1430, !tbaa !482
  %encseqinput40 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %42, i32 0, i32 18, !dbg !1431
  %43 = load ptr, ptr %encseqinput40, align 8, !dbg !1431, !tbaa !506
  %44 = load ptr, ptr %arguments.addr, align 8, !dbg !1432, !tbaa !482
  %indexname41 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %44, i32 0, i32 20, !dbg !1433
  %45 = load ptr, ptr %indexname41, align 8, !dbg !1433, !tbaa !511
  %call42 = call ptr @gt_str_get(ptr noundef %45), !dbg !1434
  call void @gt_str_append_cstr(ptr noundef %43, ptr noundef %call42), !dbg !1435
  %46 = load i8, ptr %haserr, align 1, !dbg !1436, !tbaa !837, !range !847, !noundef !848
  %tobool43 = trunc i8 %46 to i1, !dbg !1436
  br i1 %tobool43, label %if.end83, label %if.then44, !dbg !1437

if.then44:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofreads_valid) #7, !dbg !1438
  tail call void @llvm.dbg.declare(metadata ptr %nofreads_valid, metadata !1308, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofreads_invalid) #7, !dbg !1438
  tail call void @llvm.dbg.declare(metadata ptr %nofreads_invalid, metadata !1311, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofreads_input) #7, !dbg !1438
  tail call void @llvm.dbg.declare(metadata ptr %nofreads_input, metadata !1312, metadata !DIExpression()), !dbg !1441
  call void @llvm.lifetime.start.p0(i64 8, ptr %tlen_valid) #7, !dbg !1438
  tail call void @llvm.dbg.declare(metadata ptr %tlen_valid, metadata !1313, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 1, ptr %varlen) #7, !dbg !1443
  tail call void @llvm.dbg.declare(metadata ptr %varlen, metadata !1314, metadata !DIExpression()), !dbg !1444
  %47 = load ptr, ptr %r2t, align 8, !dbg !1445, !tbaa !482
  %call45 = call i64 @gt_reads2twobit_nofseqs(ptr noundef %47), !dbg !1446
  store i64 %call45, ptr %nofreads_valid, align 8, !dbg !1447, !tbaa !1376
  %48 = load ptr, ptr %r2t, align 8, !dbg !1448, !tbaa !482
  %call46 = call i64 @gt_reads2twobit_nof_invalid_seqs(ptr noundef %48), !dbg !1449
  store i64 %call46, ptr %nofreads_invalid, align 8, !dbg !1450, !tbaa !1376
  %49 = load i64, ptr %nofreads_valid, align 8, !dbg !1451, !tbaa !1376
  %50 = load i64, ptr %nofreads_invalid, align 8, !dbg !1452, !tbaa !1376
  %add = add i64 %49, %50, !dbg !1453
  store i64 %add, ptr %nofreads_input, align 8, !dbg !1454, !tbaa !1376
  %51 = load ptr, ptr %r2t, align 8, !dbg !1455, !tbaa !482
  %call47 = call i64 @gt_reads2twobit_total_seqlength(ptr noundef %51), !dbg !1456
  %52 = load ptr, ptr %r2t, align 8, !dbg !1457, !tbaa !482
  %call48 = call i64 @gt_reads2twobit_nofseqs(ptr noundef %52), !dbg !1458
  %sub = sub i64 %call47, %call48, !dbg !1459
  store i64 %sub, ptr %tlen_valid, align 8, !dbg !1460, !tbaa !1376
  %53 = load ptr, ptr %default_logger.addr, align 8, !dbg !1461, !tbaa !482
  %54 = load i64, ptr %nofreads_input, align 8, !dbg !1462, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %53, ptr noundef @.str.64, i64 noundef %54), !dbg !1463
  %55 = load ptr, ptr %r2t, align 8, !dbg !1464, !tbaa !482
  %call49 = call i64 @gt_reads2twobit_seqlen_eqlen(ptr noundef %55), !dbg !1465
  %cmp50 = icmp eq i64 %call49, 0, !dbg !1466
  %frombool = zext i1 %cmp50 to i8, !dbg !1467
  store i8 %frombool, ptr %varlen, align 1, !dbg !1467, !tbaa !837
  %56 = load i8, ptr %varlen, align 1, !dbg !1468, !tbaa !837, !range !847, !noundef !848
  %tobool52 = trunc i8 %56 to i1, !dbg !1468
  br i1 %tobool52, label %if.then53, label %if.else, !dbg !1470

if.then53:                                        ; preds = %if.then44
  %57 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1471, !tbaa !482
  %58 = load ptr, ptr %r2t, align 8, !dbg !1472, !tbaa !482
  %call54 = call i64 @gt_reads2twobit_seqlen_min(ptr noundef %58), !dbg !1473
  %59 = load ptr, ptr %r2t, align 8, !dbg !1474, !tbaa !482
  %call55 = call i64 @gt_reads2twobit_seqlen_max(ptr noundef %59), !dbg !1475
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %57, ptr noundef @.str.65, i64 noundef %call54, i64 noundef %call55), !dbg !1476
  br label %if.end58, !dbg !1476

if.else:                                          ; preds = %if.then44
  %60 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1477, !tbaa !482
  %61 = load ptr, ptr %r2t, align 8, !dbg !1478, !tbaa !482
  %call56 = call i64 @gt_reads2twobit_seqlen_eqlen(ptr noundef %61), !dbg !1479
  %sub57 = sub i64 %call56, 1, !dbg !1480
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %60, ptr noundef @.str.66, i64 noundef %sub57), !dbg !1481
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then53
  %62 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1482, !tbaa !482
  %63 = load i64, ptr %tlen_valid, align 8, !dbg !1483, !tbaa !1376
  %64 = load ptr, ptr %r2t, align 8, !dbg !1484, !tbaa !482
  %call59 = call i64 @gt_reads2twobit_invalid_seqs_totallength(ptr noundef %64), !dbg !1485
  %add60 = add i64 %63, %call59, !dbg !1486
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %62, ptr noundef @.str.67, i64 noundef %add60), !dbg !1487
  %65 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1488, !tbaa !482
  %66 = load i64, ptr %nofreads_invalid, align 8, !dbg !1489, !tbaa !1376
  %67 = load i64, ptr %nofreads_invalid, align 8, !dbg !1490, !tbaa !1376
  %conv61 = uitofp i64 %67 to float, !dbg !1491
  %mul = fmul float %conv61, 1.000000e+02, !dbg !1492
  %68 = load i64, ptr %nofreads_input, align 8, !dbg !1493, !tbaa !1376
  %conv62 = uitofp i64 %68 to float, !dbg !1494
  %div = fdiv float %mul, %conv62, !dbg !1495
  %conv63 = fpext float %div to double, !dbg !1491
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %65, ptr noundef @.str.68, i64 noundef %66, double noundef %conv63), !dbg !1496
  %69 = load ptr, ptr %arguments.addr, align 8, !dbg !1497, !tbaa !482
  %verbose = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %69, i32 0, i32 1, !dbg !1499
  %70 = load i8, ptr %verbose, align 1, !dbg !1499, !tbaa !982, !range !847, !noundef !848
  %tobool64 = trunc i8 %70 to i1, !dbg !1499
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !1500

if.then65:                                        ; preds = %if.end58
  %71 = load ptr, ptr %default_logger.addr, align 8, !dbg !1501, !tbaa !482
  %72 = load i64, ptr %nofreads_invalid, align 8, !dbg !1502, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %71, ptr noundef @.str.69, i64 noundef %72), !dbg !1503
  br label %if.end66, !dbg !1503

if.end66:                                         ; preds = %if.then65, %if.end58
  %73 = load i8, ptr %haserr, align 1, !dbg !1504, !tbaa !837, !range !847, !noundef !848
  %tobool67 = trunc i8 %73 to i1, !dbg !1504
  br i1 %tobool67, label %if.end82, label %if.then68, !dbg !1506

if.then68:                                        ; preds = %if.end66
  %74 = load ptr, ptr %r2t, align 8, !dbg !1507, !tbaa !482
  %75 = load ptr, ptr %err.addr, align 8, !dbg !1510, !tbaa !482
  %call69 = call i32 @gt_reads2twobit_write_encseq(ptr noundef %74, ptr noundef %75), !dbg !1511
  %cmp70 = icmp ne i32 %call69, 0, !dbg !1512
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !1513

if.then72:                                        ; preds = %if.then68
  store i8 1, ptr %haserr, align 1, !dbg !1514, !tbaa !837
  br label %if.end73, !dbg !1515

if.end73:                                         ; preds = %if.then72, %if.then68
  %76 = load i8, ptr %haserr, align 1, !dbg !1516, !tbaa !837, !range !847, !noundef !848
  %tobool74 = trunc i8 %76 to i1, !dbg !1516
  br i1 %tobool74, label %if.end81, label %if.then75, !dbg !1518

if.then75:                                        ; preds = %if.end73
  %77 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1519, !tbaa !482
  %78 = load i64, ptr %nofreads_valid, align 8, !dbg !1521, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %77, ptr noundef @.str.70, i64 noundef %78), !dbg !1522
  %79 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1523, !tbaa !482
  %80 = load i64, ptr %tlen_valid, align 8, !dbg !1524, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %79, ptr noundef @.str.71, i64 noundef %80), !dbg !1525
  %81 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1526, !tbaa !482
  %82 = load ptr, ptr %arguments.addr, align 8, !dbg !1527, !tbaa !482
  %indexname76 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %82, i32 0, i32 20, !dbg !1528
  %83 = load ptr, ptr %indexname76, align 8, !dbg !1528, !tbaa !511
  %call77 = call ptr @gt_str_get(ptr noundef %83), !dbg !1529
  %84 = load i8, ptr %varlen, align 1, !dbg !1530, !tbaa !837, !range !847, !noundef !848
  %tobool78 = trunc i8 %84 to i1, !dbg !1530
  %85 = zext i1 %tobool78 to i64, !dbg !1530
  %cond80 = select i1 %tobool78, ptr @.str.73, ptr @.str.74, !dbg !1530
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %81, ptr noundef @.str.72, ptr noundef %call77, ptr noundef %cond80), !dbg !1531
  br label %if.end81, !dbg !1532

if.end81:                                         ; preds = %if.then75, %if.end73
  br label %if.end82, !dbg !1533

if.end82:                                         ; preds = %if.end81, %if.end66
  call void @llvm.lifetime.end.p0(i64 1, ptr %varlen) #7, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 8, ptr %tlen_valid) #7, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofreads_input) #7, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofreads_invalid) #7, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofreads_valid) #7, !dbg !1534
  br label %if.end83, !dbg !1535

if.end83:                                         ; preds = %if.end82, %do.end
  %86 = load ptr, ptr %r2t, align 8, !dbg !1536, !tbaa !482
  call void @gt_reads2twobit_delete(ptr noundef %86), !dbg !1537
  %87 = load i8, ptr %haserr, align 1, !dbg !1538, !tbaa !837, !range !847, !noundef !848
  %tobool84 = trunc i8 %87 to i1, !dbg !1538
  call void @llvm.lifetime.end.p0(i64 1, ptr %autoindexname) #7, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2t) #7, !dbg !1539
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !1539
  ret i1 %tobool84, !dbg !1540
}

declare !dbg !1541 ptr @gt_str_get(ptr noundef) #1

declare !dbg !1544 ptr @gt_encseq_loader_new() #1

declare !dbg !1547 void @gt_encseq_loader_drop_description_support(ptr noundef) #1

declare !dbg !1550 void @gt_encseq_loader_disable_autosupport(ptr noundef) #1

declare !dbg !1551 ptr @gt_encseq_loader_load(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1554 i32 @gt_encseq_mirror(ptr noundef, ptr noundef) #1

declare !dbg !1557 zeroext i1 @gt_encseq_has_md5_support(ptr noundef) #1

declare !dbg !1562 ptr @gt_str_clone(ptr noundef) #1

declare !dbg !1565 void @gt_str_append_cstr(ptr noundef, ptr noundef) #1

declare !dbg !1568 void @gt_xunlink(ptr noundef) #1

declare !dbg !1572 void @gt_warning(ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @gt_seqcorrect_correct(ptr noundef %arguments, ptr noundef %encseq, ptr noundef %verbose_logger, ptr noundef %timer, ptr noundef %err) #0 !dbg !1576 {
entry:
  %arguments.addr = alloca ptr, align 8
  %encseq.addr = alloca ptr, align 8
  %verbose_logger.addr = alloca ptr, align 8
  %timer.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %threads = alloca i32, align 4
  %iteration = alloca i32, align 4
  %bucketkey_kmersize = alloca i32, align 4
  %cumulative_nofcorrections = alloca i64, align 8
  %data_array = alloca ptr, align 8
  %threadcount = alloca i32, align 4
  %nofkmergroups = alloca i64, align 8
  %nofkmeritvs = alloca i64, align 8
  %nofcorrections = alloca i64, align 8
  %nofkmers = alloca i64, align 8
  store ptr %arguments, ptr %arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %arguments.addr, metadata !1580, metadata !DIExpression()), !dbg !1605
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !1581, metadata !DIExpression()), !dbg !1606
  store ptr %verbose_logger, ptr %verbose_logger.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %verbose_logger.addr, metadata !1582, metadata !DIExpression()), !dbg !1607
  store ptr %timer, ptr %timer.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !1583, metadata !DIExpression()), !dbg !1608
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1584, metadata !DIExpression()), !dbg !1609
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !1610
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !1585, metadata !DIExpression()), !dbg !1611
  store i8 0, ptr %haserr, align 1, !dbg !1611, !tbaa !837
  call void @llvm.lifetime.start.p0(i64 4, ptr %threads) #7, !dbg !1612
  tail call void @llvm.dbg.declare(metadata ptr %threads, metadata !1586, metadata !DIExpression()), !dbg !1613
  %0 = load i32, ptr @gt_jobs, align 4, !dbg !1614, !tbaa !828
  store i32 %0, ptr %threads, align 4, !dbg !1613, !tbaa !828
  call void @llvm.lifetime.start.p0(i64 4, ptr %iteration) #7, !dbg !1615
  tail call void @llvm.dbg.declare(metadata ptr %iteration, metadata !1588, metadata !DIExpression()), !dbg !1616
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketkey_kmersize) #7, !dbg !1617
  tail call void @llvm.dbg.declare(metadata ptr %bucketkey_kmersize, metadata !1589, metadata !DIExpression()), !dbg !1618
  call void @llvm.lifetime.start.p0(i64 8, ptr %cumulative_nofcorrections) #7, !dbg !1619
  tail call void @llvm.dbg.declare(metadata ptr %cumulative_nofcorrections, metadata !1590, metadata !DIExpression()), !dbg !1620
  store i64 0, ptr %cumulative_nofcorrections, align 8, !dbg !1620, !tbaa !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_array) #7, !dbg !1621
  tail call void @llvm.dbg.declare(metadata ptr %data_array, metadata !1591, metadata !DIExpression()), !dbg !1622
  store ptr null, ptr %data_array, align 8, !dbg !1622, !tbaa !482
  %1 = load i32, ptr %threads, align 4, !dbg !1623, !tbaa !828
  %conv = zext i32 %1 to i64, !dbg !1623
  %mul = mul i64 8, %conv, !dbg !1623
  %call = call ptr @gt_malloc_mem(i64 noundef %mul, ptr noundef @.str, i32 noundef 492), !dbg !1623
  store ptr %call, ptr %data_array, align 8, !dbg !1624, !tbaa !482
  %2 = load ptr, ptr %arguments.addr, align 8, !dbg !1625, !tbaa !482
  %correction_kmersize = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %2, i32 0, i32 9, !dbg !1626
  %3 = load i32, ptr %correction_kmersize, align 4, !dbg !1626, !tbaa !1627
  call void (ptr, ...) @gt_log_log(ptr noundef @.str.75, i32 noundef %3), !dbg !1628
  %4 = load ptr, ptr %arguments.addr, align 8, !dbg !1629, !tbaa !482
  %5 = load ptr, ptr %err.addr, align 8, !dbg !1630, !tbaa !482
  %call1 = call zeroext i1 @gt_seqcorrect_bucketkey_kmersize(ptr noundef %4, ptr noundef %bucketkey_kmersize, ptr noundef %5), !dbg !1631
  %frombool = zext i1 %call1 to i8, !dbg !1632
  store i8 %frombool, ptr %haserr, align 1, !dbg !1632, !tbaa !837
  %6 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1633, !tbaa !482
  %7 = load i32, ptr %threads, align 4, !dbg !1634, !tbaa !828
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %6, ptr noundef @.str.76, i32 noundef %7), !dbg !1635
  %8 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1636, !tbaa !482
  %9 = load ptr, ptr %arguments.addr, align 8, !dbg !1637, !tbaa !482
  %iterations = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %9, i32 0, i32 16, !dbg !1638
  %10 = load i32, ptr %iterations, align 8, !dbg !1638, !tbaa !879
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %8, ptr noundef @.str.77, i32 noundef %10), !dbg !1639
  store i32 1, ptr %iteration, align 4, !dbg !1640, !tbaa !828
  br label %for.cond, !dbg !1641

for.cond:                                         ; preds = %for.inc62, %entry
  %11 = load i32, ptr %iteration, align 4, !dbg !1642, !tbaa !828
  %12 = load ptr, ptr %arguments.addr, align 8, !dbg !1643, !tbaa !482
  %iterations2 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %12, i32 0, i32 16, !dbg !1644
  %13 = load i32, ptr %iterations2, align 8, !dbg !1644, !tbaa !879
  %cmp = icmp ule i32 %11, %13, !dbg !1645
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1646

land.rhs:                                         ; preds = %for.cond
  %14 = load i8, ptr %haserr, align 1, !dbg !1647, !tbaa !837, !range !847, !noundef !848
  %tobool = trunc i8 %14 to i1, !dbg !1647
  %lnot = xor i1 %tobool, true, !dbg !1648
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !1649
  br i1 %15, label %for.body, label %for.end64, !dbg !1650

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %threadcount) #7, !dbg !1651
  tail call void @llvm.dbg.declare(metadata ptr %threadcount, metadata !1597, metadata !DIExpression()), !dbg !1652
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofkmergroups) #7, !dbg !1653
  tail call void @llvm.dbg.declare(metadata ptr %nofkmergroups, metadata !1601, metadata !DIExpression()), !dbg !1654
  store i64 0, ptr %nofkmergroups, align 8, !dbg !1654, !tbaa !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofkmeritvs) #7, !dbg !1653
  tail call void @llvm.dbg.declare(metadata ptr %nofkmeritvs, metadata !1602, metadata !DIExpression()), !dbg !1655
  store i64 0, ptr %nofkmeritvs, align 8, !dbg !1655, !tbaa !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofcorrections) #7, !dbg !1653
  tail call void @llvm.dbg.declare(metadata ptr %nofcorrections, metadata !1603, metadata !DIExpression()), !dbg !1656
  store i64 0, ptr %nofcorrections, align 8, !dbg !1656, !tbaa !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofkmers) #7, !dbg !1653
  tail call void @llvm.dbg.declare(metadata ptr %nofkmers, metadata !1604, metadata !DIExpression()), !dbg !1657
  store i64 0, ptr %nofkmers, align 8, !dbg !1657, !tbaa !1376
  %16 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1658, !tbaa !482
  %17 = load i32, ptr %iteration, align 4, !dbg !1659, !tbaa !828
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %16, ptr noundef @.str.78, i32 noundef %17), !dbg !1660
  store i32 0, ptr %threadcount, align 4, !dbg !1661, !tbaa !828
  br label %for.cond4, !dbg !1663

for.cond4:                                        ; preds = %for.inc, %for.body
  %18 = load i8, ptr %haserr, align 1, !dbg !1664, !tbaa !837, !range !847, !noundef !848
  %tobool5 = trunc i8 %18 to i1, !dbg !1664
  br i1 %tobool5, label %land.end9, label %land.rhs6, !dbg !1666

land.rhs6:                                        ; preds = %for.cond4
  %19 = load i32, ptr %threadcount, align 4, !dbg !1667, !tbaa !828
  %20 = load i32, ptr %threads, align 4, !dbg !1668, !tbaa !828
  %cmp7 = icmp ult i32 %19, %20, !dbg !1669
  br label %land.end9

land.end9:                                        ; preds = %land.rhs6, %for.cond4
  %21 = phi i1 [ false, %for.cond4 ], [ %cmp7, %land.rhs6 ], !dbg !1670
  br i1 %21, label %for.body10, label %for.end, !dbg !1671

for.body10:                                       ; preds = %land.end9
  %22 = load ptr, ptr %encseq.addr, align 8, !dbg !1672, !tbaa !482
  %23 = load ptr, ptr %arguments.addr, align 8, !dbg !1674, !tbaa !482
  %correction_kmersize11 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %23, i32 0, i32 9, !dbg !1675
  %24 = load i32, ptr %correction_kmersize11, align 4, !dbg !1675, !tbaa !1627
  %25 = load ptr, ptr %arguments.addr, align 8, !dbg !1676, !tbaa !482
  %trusted_count = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %25, i32 0, i32 11, !dbg !1677
  %26 = load i32, ptr %trusted_count, align 4, !dbg !1677, !tbaa !1678
  %27 = load ptr, ptr %arguments.addr, align 8, !dbg !1679, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %27, i32 0, i32 18, !dbg !1680
  %28 = load ptr, ptr %encseqinput, align 8, !dbg !1680, !tbaa !506
  %call12 = call ptr @gt_str_get(ptr noundef %28), !dbg !1681
  %29 = load i32, ptr %threadcount, align 4, !dbg !1682, !tbaa !828
  %30 = load ptr, ptr %err.addr, align 8, !dbg !1683, !tbaa !482
  %call13 = call ptr @gt_randomcodes_correct_data_new(ptr noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %call12, ptr noundef @.str.79, i32 noundef %29, ptr noundef %30), !dbg !1684
  %31 = load ptr, ptr %data_array, align 8, !dbg !1685, !tbaa !482
  %32 = load i32, ptr %threadcount, align 4, !dbg !1686, !tbaa !828
  %idxprom = zext i32 %32 to i64, !dbg !1685
  %arrayidx = getelementptr inbounds ptr, ptr %31, i64 %idxprom, !dbg !1685
  store ptr %call13, ptr %arrayidx, align 8, !dbg !1687, !tbaa !482
  %33 = load ptr, ptr %data_array, align 8, !dbg !1688, !tbaa !482
  %34 = load i32, ptr %threadcount, align 4, !dbg !1690, !tbaa !828
  %idxprom14 = zext i32 %34 to i64, !dbg !1688
  %arrayidx15 = getelementptr inbounds ptr, ptr %33, i64 %idxprom14, !dbg !1688
  %35 = load ptr, ptr %arrayidx15, align 8, !dbg !1688, !tbaa !482
  %cmp16 = icmp eq ptr %35, null, !dbg !1691
  br i1 %cmp16, label %if.then, label %if.end, !dbg !1692

if.then:                                          ; preds = %for.body10
  store i8 1, ptr %haserr, align 1, !dbg !1693, !tbaa !837
  br label %if.end, !dbg !1695

if.end:                                           ; preds = %if.then, %for.body10
  br label %for.inc, !dbg !1696

for.inc:                                          ; preds = %if.end
  %36 = load i32, ptr %threadcount, align 4, !dbg !1697, !tbaa !828
  %inc = add i32 %36, 1, !dbg !1697
  store i32 %inc, ptr %threadcount, align 4, !dbg !1697, !tbaa !828
  br label %for.cond4, !dbg !1698, !llvm.loop !1699

for.end:                                          ; preds = %land.end9
  %37 = load i8, ptr %haserr, align 1, !dbg !1701, !tbaa !837, !range !847, !noundef !848
  %tobool18 = trunc i8 %37 to i1, !dbg !1701
  br i1 %tobool18, label %if.end37, label %if.then19, !dbg !1703

if.then19:                                        ; preds = %for.end
  %38 = load ptr, ptr %encseq.addr, align 8, !dbg !1704, !tbaa !482
  %39 = load i32, ptr %bucketkey_kmersize, align 4, !dbg !1707, !tbaa !828
  %40 = load ptr, ptr %arguments.addr, align 8, !dbg !1708, !tbaa !482
  %numofparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %40, i32 0, i32 12, !dbg !1709
  %41 = load i32, ptr %numofparts, align 8, !dbg !1709, !tbaa !497
  %42 = load ptr, ptr %arguments.addr, align 8, !dbg !1710, !tbaa !482
  %maximumspace = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %42, i32 0, i32 17, !dbg !1711
  %43 = load i64, ptr %maximumspace, align 8, !dbg !1711, !tbaa !520
  %44 = load ptr, ptr %arguments.addr, align 8, !dbg !1712, !tbaa !482
  %usemaxdepth = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %44, i32 0, i32 7, !dbg !1713
  %45 = load i8, ptr %usemaxdepth, align 1, !dbg !1713, !tbaa !1714, !range !847, !noundef !848
  %tobool20 = trunc i8 %45 to i1, !dbg !1713
  br i1 %tobool20, label %cond.true, label %cond.false, !dbg !1712

cond.true:                                        ; preds = %if.then19
  %46 = load ptr, ptr %arguments.addr, align 8, !dbg !1715, !tbaa !482
  %correction_kmersize22 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %46, i32 0, i32 9, !dbg !1716
  %47 = load i32, ptr %correction_kmersize22, align 4, !dbg !1716, !tbaa !1627
  br label %cond.end, !dbg !1712

cond.false:                                       ; preds = %if.then19
  br label %cond.end, !dbg !1712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ 0, %cond.false ], !dbg !1712
  %48 = load ptr, ptr %arguments.addr, align 8, !dbg !1717, !tbaa !482
  %correction_kmersize23 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %48, i32 0, i32 9, !dbg !1718
  %49 = load i32, ptr %correction_kmersize23, align 4, !dbg !1718, !tbaa !1627
  %50 = load ptr, ptr %arguments.addr, align 8, !dbg !1719, !tbaa !482
  %usefirstcodes = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %50, i32 0, i32 0, !dbg !1720
  %51 = load i8, ptr %usefirstcodes, align 8, !dbg !1720, !tbaa !1721, !range !847, !noundef !848
  %tobool24 = trunc i8 %51 to i1, !dbg !1720
  %52 = load ptr, ptr %arguments.addr, align 8, !dbg !1722, !tbaa !482
  %samplingfactor = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %52, i32 0, i32 10, !dbg !1723
  %53 = load i32, ptr %samplingfactor, align 8, !dbg !1723, !tbaa !1724
  %54 = load ptr, ptr %arguments.addr, align 8, !dbg !1725, !tbaa !482
  %checksuftab = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %54, i32 0, i32 6, !dbg !1726
  %55 = load i8, ptr %checksuftab, align 2, !dbg !1726, !tbaa !1727, !range !847, !noundef !848
  %tobool25 = trunc i8 %55 to i1, !dbg !1726
  %56 = load ptr, ptr %arguments.addr, align 8, !dbg !1728, !tbaa !482
  %onlyaccum = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %56, i32 0, i32 3, !dbg !1729
  %57 = load i8, ptr %onlyaccum, align 1, !dbg !1729, !tbaa !1730, !range !847, !noundef !848
  %tobool26 = trunc i8 %57 to i1, !dbg !1729
  %58 = load ptr, ptr %arguments.addr, align 8, !dbg !1731, !tbaa !482
  %onlyallrandomcodes = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %58, i32 0, i32 4, !dbg !1732
  %59 = load i8, ptr %onlyallrandomcodes, align 4, !dbg !1732, !tbaa !1733, !range !847, !noundef !848
  %tobool27 = trunc i8 %59 to i1, !dbg !1732
  %60 = load ptr, ptr %arguments.addr, align 8, !dbg !1734, !tbaa !482
  %addbscache_depth = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %60, i32 0, i32 14, !dbg !1735
  %61 = load i32, ptr %addbscache_depth, align 8, !dbg !1735, !tbaa !1736
  %62 = load ptr, ptr %arguments.addr, align 8, !dbg !1737, !tbaa !482
  %radixlarge = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %62, i32 0, i32 5, !dbg !1738
  %63 = load i8, ptr %radixlarge, align 1, !dbg !1738, !tbaa !489, !range !847, !noundef !848
  %tobool28 = trunc i8 %63 to i1, !dbg !1738
  %64 = zext i1 %tobool28 to i64, !dbg !1737
  %cond30 = select i1 %tobool28, i32 0, i32 1, !dbg !1737
  %tobool31 = icmp ne i32 %cond30, 0, !dbg !1737
  %65 = load ptr, ptr %arguments.addr, align 8, !dbg !1739, !tbaa !482
  %radixparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %65, i32 0, i32 13, !dbg !1740
  %66 = load i32, ptr %radixparts, align 4, !dbg !1740, !tbaa !501
  %67 = load ptr, ptr %data_array, align 8, !dbg !1741, !tbaa !482
  %68 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1742, !tbaa !482
  %69 = load ptr, ptr %timer.addr, align 8, !dbg !1743, !tbaa !482
  %70 = load ptr, ptr %err.addr, align 8, !dbg !1744, !tbaa !482
  %call32 = call i32 @storerandomcodes_getencseqkmers_twobitencoding(ptr noundef %38, i32 noundef %39, i32 noundef %41, i64 noundef %43, i32 noundef %cond, i32 noundef %49, i1 noundef zeroext %tobool24, i32 noundef %53, i1 noundef zeroext %tobool25, i1 noundef zeroext %tobool26, i1 noundef zeroext %tobool27, i32 noundef %61, i64 noundef 0, i1 noundef zeroext %tobool31, i32 noundef %66, ptr noundef @gt_randomcodes_correct_process_bucket, ptr noundef null, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70), !dbg !1745
  %cmp33 = icmp ne i32 %call32, 0, !dbg !1746
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1747

if.then35:                                        ; preds = %cond.end
  store i8 1, ptr %haserr, align 1, !dbg !1748, !tbaa !837
  br label %if.end36, !dbg !1750

if.end36:                                         ; preds = %if.then35, %cond.end
  br label %if.end37, !dbg !1751

if.end37:                                         ; preds = %if.end36, %for.end
  store i32 0, ptr %threadcount, align 4, !dbg !1752, !tbaa !828
  br label %for.cond38, !dbg !1754

for.cond38:                                       ; preds = %for.inc49, %if.end37
  %71 = load i32, ptr %threadcount, align 4, !dbg !1755, !tbaa !828
  %72 = load i32, ptr %threads, align 4, !dbg !1757, !tbaa !828
  %cmp39 = icmp ult i32 %71, %72, !dbg !1758
  br i1 %cmp39, label %for.body41, label %for.end51, !dbg !1759

for.body41:                                       ; preds = %for.cond38
  %73 = load i8, ptr %haserr, align 1, !dbg !1760, !tbaa !837, !range !847, !noundef !848
  %tobool42 = trunc i8 %73 to i1, !dbg !1760
  br i1 %tobool42, label %if.end46, label %if.then43, !dbg !1763

if.then43:                                        ; preds = %for.body41
  %74 = load ptr, ptr %data_array, align 8, !dbg !1764, !tbaa !482
  %75 = load i32, ptr %threadcount, align 4, !dbg !1766, !tbaa !828
  %idxprom44 = zext i32 %75 to i64, !dbg !1764
  %arrayidx45 = getelementptr inbounds ptr, ptr %74, i64 %idxprom44, !dbg !1764
  %76 = load ptr, ptr %arrayidx45, align 8, !dbg !1764, !tbaa !482
  %77 = load i32, ptr %threadcount, align 4, !dbg !1767, !tbaa !828
  call void @gt_randomcodes_correct_data_collect_stats(ptr noundef %76, i32 noundef %77, ptr noundef %nofkmergroups, ptr noundef %nofkmeritvs, ptr noundef %nofkmers, ptr noundef %nofcorrections), !dbg !1768
  br label %if.end46, !dbg !1769

if.end46:                                         ; preds = %if.then43, %for.body41
  %78 = load ptr, ptr %data_array, align 8, !dbg !1770, !tbaa !482
  %79 = load i32, ptr %threadcount, align 4, !dbg !1771, !tbaa !828
  %idxprom47 = zext i32 %79 to i64, !dbg !1770
  %arrayidx48 = getelementptr inbounds ptr, ptr %78, i64 %idxprom47, !dbg !1770
  %80 = load ptr, ptr %arrayidx48, align 8, !dbg !1770, !tbaa !482
  call void @gt_randomcodes_correct_data_delete(ptr noundef %80), !dbg !1772
  br label %for.inc49, !dbg !1773

for.inc49:                                        ; preds = %if.end46
  %81 = load i32, ptr %threadcount, align 4, !dbg !1774, !tbaa !828
  %inc50 = add i32 %81, 1, !dbg !1774
  store i32 %inc50, ptr %threadcount, align 4, !dbg !1774, !tbaa !828
  br label %for.cond38, !dbg !1775, !llvm.loop !1776

for.end51:                                        ; preds = %for.cond38
  %82 = load i64, ptr %nofcorrections, align 8, !dbg !1778, !tbaa !1376
  %83 = load i64, ptr %cumulative_nofcorrections, align 8, !dbg !1779, !tbaa !1376
  %add = add i64 %83, %82, !dbg !1779
  store i64 %add, ptr %cumulative_nofcorrections, align 8, !dbg !1779, !tbaa !1376
  %84 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1780, !tbaa !482
  %85 = load i32, ptr %iteration, align 4, !dbg !1781, !tbaa !828
  %86 = load i64, ptr %nofkmers, align 8, !dbg !1782, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %84, ptr noundef @.str.80, i32 noundef %85, i64 noundef %86), !dbg !1783
  %87 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1784, !tbaa !482
  %88 = load i32, ptr %iteration, align 4, !dbg !1785, !tbaa !828
  %89 = load i64, ptr %nofkmeritvs, align 8, !dbg !1786, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %87, ptr noundef @.str.81, i32 noundef %88, i64 noundef %89), !dbg !1787
  %90 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1788, !tbaa !482
  %91 = load i32, ptr %iteration, align 4, !dbg !1789, !tbaa !828
  %92 = load i64, ptr %nofkmergroups, align 8, !dbg !1790, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %90, ptr noundef @.str.82, i32 noundef %91, i64 noundef %92), !dbg !1791
  %93 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1792, !tbaa !482
  %94 = load i32, ptr %iteration, align 4, !dbg !1793, !tbaa !828
  %95 = load i64, ptr %nofcorrections, align 8, !dbg !1794, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %93, ptr noundef @.str.83, i32 noundef %94, i64 noundef %95), !dbg !1795
  %96 = load i8, ptr %haserr, align 1, !dbg !1796, !tbaa !837, !range !847, !noundef !848
  %tobool52 = trunc i8 %96 to i1, !dbg !1796
  br i1 %tobool52, label %if.end61, label %if.then53, !dbg !1798

if.then53:                                        ; preds = %for.end51
  %97 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1799, !tbaa !482
  %98 = load i32, ptr %iteration, align 4, !dbg !1801, !tbaa !828
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %97, ptr noundef @.str.84, i32 noundef %98), !dbg !1802
  %99 = load ptr, ptr %encseq.addr, align 8, !dbg !1803, !tbaa !482
  %100 = load ptr, ptr %arguments.addr, align 8, !dbg !1805, !tbaa !482
  %encseqinput54 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %100, i32 0, i32 18, !dbg !1806
  %101 = load ptr, ptr %encseqinput54, align 8, !dbg !1806, !tbaa !506
  %call55 = call ptr @gt_str_get(ptr noundef %101), !dbg !1807
  %102 = load i32, ptr %threads, align 4, !dbg !1808, !tbaa !828
  %103 = load ptr, ptr %err.addr, align 8, !dbg !1809, !tbaa !482
  %call56 = call i32 @gt_seqcorrect_apply_corrections(ptr noundef %99, ptr noundef %call55, i32 noundef %102, ptr noundef %103), !dbg !1810
  %cmp57 = icmp ne i32 %call56, 0, !dbg !1811
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !1812

if.then59:                                        ; preds = %if.then53
  store i8 1, ptr %haserr, align 1, !dbg !1813, !tbaa !837
  br label %if.end60, !dbg !1815

if.end60:                                         ; preds = %if.then59, %if.then53
  br label %if.end61, !dbg !1816

if.end61:                                         ; preds = %if.end60, %for.end51
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofkmers) #7, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofcorrections) #7, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofkmeritvs) #7, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofkmergroups) #7, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 4, ptr %threadcount) #7, !dbg !1817
  br label %for.inc62, !dbg !1818

for.inc62:                                        ; preds = %if.end61
  %104 = load i32, ptr %iteration, align 4, !dbg !1819, !tbaa !828
  %inc63 = add i32 %104, 1, !dbg !1819
  store i32 %inc63, ptr %iteration, align 4, !dbg !1819, !tbaa !828
  br label %for.cond, !dbg !1820, !llvm.loop !1821

for.end64:                                        ; preds = %land.end
  %105 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1823, !tbaa !482
  %106 = load i64, ptr %cumulative_nofcorrections, align 8, !dbg !1824, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %105, ptr noundef @.str.85, i64 noundef %106), !dbg !1825
  %107 = load ptr, ptr %data_array, align 8, !dbg !1826, !tbaa !482
  call void @gt_free_mem(ptr noundef %107, ptr noundef @.str, i32 noundef 580), !dbg !1826
  %108 = load i8, ptr %haserr, align 1, !dbg !1827, !tbaa !837, !range !847, !noundef !848
  %tobool65 = trunc i8 %108 to i1, !dbg !1827
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_array) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 8, ptr %cumulative_nofcorrections) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketkey_kmersize) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %iteration) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %threads) #7, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !1828
  ret i1 %tobool65, !dbg !1829
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @gt_seqcorrect_find_seldom(ptr noundef %arguments, ptr noundef %encseq, ptr noundef %verbose_logger, ptr noundef %timer, ptr noundef %err) #0 !dbg !1830 {
entry:
  %arguments.addr = alloca ptr, align 8
  %encseq.addr = alloca ptr, align 8
  %verbose_logger.addr = alloca ptr, align 8
  %timer.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %threads = alloca i32, align 4
  %bucketkey_kmersize = alloca i32, align 4
  %data_array = alloca ptr, align 8
  %threadcount = alloca i32, align 4
  %nofseldomkmers = alloca i64, align 8
  %seldom_reads = alloca ptr, align 8
  %nofreads = alloca i64, align 8
  %seldomsize = alloca i64, align 8
  %tabsize = alloca i64, align 8
  %pos = alloca i64, align 8
  %filename = alloca ptr, align 8
  store ptr %arguments, ptr %arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %arguments.addr, metadata !1832, metadata !DIExpression()), !dbg !1872
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !1833, metadata !DIExpression()), !dbg !1873
  store ptr %verbose_logger, ptr %verbose_logger.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %verbose_logger.addr, metadata !1834, metadata !DIExpression()), !dbg !1874
  store ptr %timer, ptr %timer.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !1835, metadata !DIExpression()), !dbg !1875
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1836, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !1877
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !1837, metadata !DIExpression()), !dbg !1878
  store i8 0, ptr %haserr, align 1, !dbg !1878, !tbaa !837
  call void @llvm.lifetime.start.p0(i64 4, ptr %threads) #7, !dbg !1879
  tail call void @llvm.dbg.declare(metadata ptr %threads, metadata !1838, metadata !DIExpression()), !dbg !1880
  %0 = load i32, ptr @gt_jobs, align 4, !dbg !1881, !tbaa !828
  store i32 %0, ptr %threads, align 4, !dbg !1880, !tbaa !828
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketkey_kmersize) #7, !dbg !1882
  tail call void @llvm.dbg.declare(metadata ptr %bucketkey_kmersize, metadata !1839, metadata !DIExpression()), !dbg !1883
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_array) #7, !dbg !1884
  tail call void @llvm.dbg.declare(metadata ptr %data_array, metadata !1840, metadata !DIExpression()), !dbg !1885
  store ptr null, ptr %data_array, align 8, !dbg !1885, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 4, ptr %threadcount) #7, !dbg !1886
  tail call void @llvm.dbg.declare(metadata ptr %threadcount, metadata !1846, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofseldomkmers) #7, !dbg !1888
  tail call void @llvm.dbg.declare(metadata ptr %nofseldomkmers, metadata !1847, metadata !DIExpression()), !dbg !1889
  store i64 0, ptr %nofseldomkmers, align 8, !dbg !1889, !tbaa !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %seldom_reads) #7, !dbg !1890
  tail call void @llvm.dbg.declare(metadata ptr %seldom_reads, metadata !1848, metadata !DIExpression()), !dbg !1891
  store ptr null, ptr %seldom_reads, align 8, !dbg !1891, !tbaa !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %nofreads) #7, !dbg !1892
  tail call void @llvm.dbg.declare(metadata ptr %nofreads, metadata !1856, metadata !DIExpression()), !dbg !1893
  %1 = load ptr, ptr %encseq.addr, align 8, !dbg !1894, !tbaa !482
  %call = call i64 @gt_encseq_num_of_sequences(ptr noundef %1), !dbg !1894
  %shr = lshr i64 %call, 1, !dbg !1894
  store i64 %shr, ptr %nofreads, align 8, !dbg !1893, !tbaa !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %seldomsize) #7, !dbg !1895
  tail call void @llvm.dbg.declare(metadata ptr %seldomsize, metadata !1857, metadata !DIExpression()), !dbg !1896
  %2 = load i64, ptr %nofreads, align 8, !dbg !1897, !tbaa !1376
  %shr1 = lshr i64 %2, 6, !dbg !1897
  %cmp = icmp eq i64 %shr1, 0, !dbg !1897
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1897

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1897

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %nofreads, align 8, !dbg !1897, !tbaa !1376
  %sub = sub i64 %3, 1, !dbg !1897
  %shr2 = lshr i64 %sub, 6, !dbg !1897
  %add = add i64 1, %shr2, !dbg !1897
  br label %cond.end, !dbg !1897

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %add, %cond.false ], !dbg !1897
  store i64 %cond, ptr %seldomsize, align 8, !dbg !1896, !tbaa !1376
  %4 = load i32, ptr %threads, align 4, !dbg !1898, !tbaa !828
  %conv = zext i32 %4 to i64, !dbg !1898
  %mul = mul i64 8, %conv, !dbg !1898
  %call3 = call ptr @gt_malloc_mem(i64 noundef %mul, ptr noundef @.str, i32 noundef 601), !dbg !1898
  store ptr %call3, ptr %data_array, align 8, !dbg !1899, !tbaa !482
  %5 = load i32, ptr %threads, align 4, !dbg !1900, !tbaa !828
  %conv4 = zext i32 %5 to i64, !dbg !1900
  %mul5 = mul i64 8, %conv4, !dbg !1900
  %call6 = call ptr @gt_malloc_mem(i64 noundef %mul5, ptr noundef @.str, i32 noundef 602), !dbg !1900
  store ptr %call6, ptr %seldom_reads, align 8, !dbg !1901, !tbaa !482
  %6 = load ptr, ptr %arguments.addr, align 8, !dbg !1902, !tbaa !482
  %correction_kmersize = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %6, i32 0, i32 9, !dbg !1903
  %7 = load i32, ptr %correction_kmersize, align 4, !dbg !1903, !tbaa !1627
  call void (ptr, ...) @gt_log_log(ptr noundef @.str.96, i32 noundef %7), !dbg !1904
  %8 = load ptr, ptr %arguments.addr, align 8, !dbg !1905, !tbaa !482
  %9 = load ptr, ptr %err.addr, align 8, !dbg !1906, !tbaa !482
  %call7 = call zeroext i1 @gt_seqcorrect_bucketkey_kmersize(ptr noundef %8, ptr noundef %bucketkey_kmersize, ptr noundef %9), !dbg !1907
  %frombool = zext i1 %call7 to i8, !dbg !1908
  store i8 %frombool, ptr %haserr, align 1, !dbg !1908, !tbaa !837
  %10 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1909, !tbaa !482
  %11 = load i32, ptr %threads, align 4, !dbg !1910, !tbaa !828
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %10, ptr noundef @.str.76, i32 noundef %11), !dbg !1911
  store i32 0, ptr %threadcount, align 4, !dbg !1912, !tbaa !828
  br label %for.cond, !dbg !1913

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i8, ptr %haserr, align 1, !dbg !1914, !tbaa !837, !range !847, !noundef !848
  %tobool = trunc i8 %12 to i1, !dbg !1914
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1915

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %threadcount, align 4, !dbg !1916, !tbaa !828
  %14 = load i32, ptr %threads, align 4, !dbg !1917, !tbaa !828
  %cmp8 = icmp ult i32 %13, %14, !dbg !1918
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ], !dbg !1919
  br i1 %15, label %for.body, label %for.end, !dbg !1920

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tabsize) #7, !dbg !1921
  tail call void @llvm.dbg.declare(metadata ptr %tabsize, metadata !1858, metadata !DIExpression()), !dbg !1921
  %16 = load i64, ptr %nofreads, align 8, !dbg !1921, !tbaa !1376
  %shr10 = lshr i64 %16, 6, !dbg !1921
  %cmp11 = icmp eq i64 %shr10, 0, !dbg !1921
  br i1 %cmp11, label %cond.true13, label %cond.false14, !dbg !1921

cond.true13:                                      ; preds = %for.body
  br label %cond.end18, !dbg !1921

cond.false14:                                     ; preds = %for.body
  %17 = load i64, ptr %nofreads, align 8, !dbg !1921, !tbaa !1376
  %sub15 = sub i64 %17, 1, !dbg !1921
  %shr16 = lshr i64 %sub15, 6, !dbg !1921
  %add17 = add i64 1, %shr16, !dbg !1921
  br label %cond.end18, !dbg !1921

cond.end18:                                       ; preds = %cond.false14, %cond.true13
  %cond19 = phi i64 [ 1, %cond.true13 ], [ %add17, %cond.false14 ], !dbg !1921
  store i64 %cond19, ptr %tabsize, align 8, !dbg !1921, !tbaa !1376
  %18 = load i64, ptr %tabsize, align 8, !dbg !1921, !tbaa !1376
  %mul20 = mul i64 8, %18, !dbg !1921
  %call21 = call ptr @gt_realloc_mem(ptr noundef null, i64 noundef %mul20, ptr noundef @.str, i32 noundef 611), !dbg !1921
  %19 = load ptr, ptr %seldom_reads, align 8, !dbg !1921, !tbaa !482
  %20 = load i32, ptr %threadcount, align 4, !dbg !1921, !tbaa !828
  %idxprom = zext i32 %20 to i64, !dbg !1921
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %idxprom, !dbg !1921
  store ptr %call21, ptr %arrayidx, align 8, !dbg !1921, !tbaa !482
  %21 = load ptr, ptr %seldom_reads, align 8, !dbg !1921, !tbaa !482
  %22 = load i32, ptr %threadcount, align 4, !dbg !1921, !tbaa !828
  %idxprom22 = zext i32 %22 to i64, !dbg !1921
  %arrayidx23 = getelementptr inbounds ptr, ptr %21, i64 %idxprom22, !dbg !1921
  %23 = load ptr, ptr %arrayidx23, align 8, !dbg !1921, !tbaa !482
  %24 = load i64, ptr %tabsize, align 8, !dbg !1921, !tbaa !1376
  %mul24 = mul i64 8, %24, !dbg !1921
  call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %mul24, i1 false), !dbg !1921
  call void @llvm.lifetime.end.p0(i64 8, ptr %tabsize) #7, !dbg !1922
  %25 = load ptr, ptr %encseq.addr, align 8, !dbg !1923, !tbaa !482
  %26 = load ptr, ptr %arguments.addr, align 8, !dbg !1924, !tbaa !482
  %correction_kmersize25 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %26, i32 0, i32 9, !dbg !1925
  %27 = load i32, ptr %correction_kmersize25, align 4, !dbg !1925, !tbaa !1627
  %28 = load ptr, ptr %arguments.addr, align 8, !dbg !1926, !tbaa !482
  %trusted_count = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %28, i32 0, i32 11, !dbg !1927
  %29 = load i32, ptr %trusted_count, align 4, !dbg !1927, !tbaa !1678
  %30 = load ptr, ptr %seldom_reads, align 8, !dbg !1928, !tbaa !482
  %31 = load i32, ptr %threadcount, align 4, !dbg !1929, !tbaa !828
  %idxprom26 = zext i32 %31 to i64, !dbg !1928
  %arrayidx27 = getelementptr inbounds ptr, ptr %30, i64 %idxprom26, !dbg !1928
  %32 = load ptr, ptr %arrayidx27, align 8, !dbg !1928, !tbaa !482
  %call28 = call ptr @gt_randomcodes_find_seldom_data_new(ptr noundef %25, i32 noundef %27, i32 noundef %29, ptr noundef %32), !dbg !1930
  %33 = load ptr, ptr %data_array, align 8, !dbg !1931, !tbaa !482
  %34 = load i32, ptr %threadcount, align 4, !dbg !1932, !tbaa !828
  %idxprom29 = zext i32 %34 to i64, !dbg !1931
  %arrayidx30 = getelementptr inbounds ptr, ptr %33, i64 %idxprom29, !dbg !1931
  store ptr %call28, ptr %arrayidx30, align 8, !dbg !1933, !tbaa !482
  %35 = load ptr, ptr %data_array, align 8, !dbg !1934, !tbaa !482
  %36 = load i32, ptr %threadcount, align 4, !dbg !1936, !tbaa !828
  %idxprom31 = zext i32 %36 to i64, !dbg !1934
  %arrayidx32 = getelementptr inbounds ptr, ptr %35, i64 %idxprom31, !dbg !1934
  %37 = load ptr, ptr %arrayidx32, align 8, !dbg !1934, !tbaa !482
  %cmp33 = icmp eq ptr %37, null, !dbg !1937
  br i1 %cmp33, label %if.then, label %if.end, !dbg !1938

if.then:                                          ; preds = %cond.end18
  store i8 1, ptr %haserr, align 1, !dbg !1939, !tbaa !837
  br label %if.end, !dbg !1941

if.end:                                           ; preds = %if.then, %cond.end18
  br label %for.inc, !dbg !1942

for.inc:                                          ; preds = %if.end
  %38 = load i32, ptr %threadcount, align 4, !dbg !1943, !tbaa !828
  %inc = add i32 %38, 1, !dbg !1943
  store i32 %inc, ptr %threadcount, align 4, !dbg !1943, !tbaa !828
  br label %for.cond, !dbg !1944, !llvm.loop !1945

for.end:                                          ; preds = %land.end
  %39 = load i8, ptr %haserr, align 1, !dbg !1947, !tbaa !837, !range !847, !noundef !848
  %tobool35 = trunc i8 %39 to i1, !dbg !1947
  br i1 %tobool35, label %if.end58, label %if.then36, !dbg !1949

if.then36:                                        ; preds = %for.end
  %40 = load ptr, ptr %encseq.addr, align 8, !dbg !1950, !tbaa !482
  %41 = load i32, ptr %bucketkey_kmersize, align 4, !dbg !1953, !tbaa !828
  %42 = load ptr, ptr %arguments.addr, align 8, !dbg !1954, !tbaa !482
  %numofparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %42, i32 0, i32 12, !dbg !1955
  %43 = load i32, ptr %numofparts, align 8, !dbg !1955, !tbaa !497
  %44 = load ptr, ptr %arguments.addr, align 8, !dbg !1956, !tbaa !482
  %maximumspace = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %44, i32 0, i32 17, !dbg !1957
  %45 = load i64, ptr %maximumspace, align 8, !dbg !1957, !tbaa !520
  %46 = load ptr, ptr %arguments.addr, align 8, !dbg !1958, !tbaa !482
  %usemaxdepth = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %46, i32 0, i32 7, !dbg !1959
  %47 = load i8, ptr %usemaxdepth, align 1, !dbg !1959, !tbaa !1714, !range !847, !noundef !848
  %tobool37 = trunc i8 %47 to i1, !dbg !1959
  br i1 %tobool37, label %cond.true39, label %cond.false41, !dbg !1958

cond.true39:                                      ; preds = %if.then36
  %48 = load ptr, ptr %arguments.addr, align 8, !dbg !1960, !tbaa !482
  %correction_kmersize40 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %48, i32 0, i32 9, !dbg !1961
  %49 = load i32, ptr %correction_kmersize40, align 4, !dbg !1961, !tbaa !1627
  br label %cond.end42, !dbg !1958

cond.false41:                                     ; preds = %if.then36
  br label %cond.end42, !dbg !1958

cond.end42:                                       ; preds = %cond.false41, %cond.true39
  %cond43 = phi i32 [ %49, %cond.true39 ], [ 0, %cond.false41 ], !dbg !1958
  %50 = load ptr, ptr %arguments.addr, align 8, !dbg !1962, !tbaa !482
  %correction_kmersize44 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %50, i32 0, i32 9, !dbg !1963
  %51 = load i32, ptr %correction_kmersize44, align 4, !dbg !1963, !tbaa !1627
  %52 = load ptr, ptr %arguments.addr, align 8, !dbg !1964, !tbaa !482
  %usefirstcodes = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %52, i32 0, i32 0, !dbg !1965
  %53 = load i8, ptr %usefirstcodes, align 8, !dbg !1965, !tbaa !1721, !range !847, !noundef !848
  %tobool45 = trunc i8 %53 to i1, !dbg !1965
  %54 = load ptr, ptr %arguments.addr, align 8, !dbg !1966, !tbaa !482
  %samplingfactor = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %54, i32 0, i32 10, !dbg !1967
  %55 = load i32, ptr %samplingfactor, align 8, !dbg !1967, !tbaa !1724
  %56 = load ptr, ptr %arguments.addr, align 8, !dbg !1968, !tbaa !482
  %checksuftab = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %56, i32 0, i32 6, !dbg !1969
  %57 = load i8, ptr %checksuftab, align 2, !dbg !1969, !tbaa !1727, !range !847, !noundef !848
  %tobool46 = trunc i8 %57 to i1, !dbg !1969
  %58 = load ptr, ptr %arguments.addr, align 8, !dbg !1970, !tbaa !482
  %onlyaccum = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %58, i32 0, i32 3, !dbg !1971
  %59 = load i8, ptr %onlyaccum, align 1, !dbg !1971, !tbaa !1730, !range !847, !noundef !848
  %tobool47 = trunc i8 %59 to i1, !dbg !1971
  %60 = load ptr, ptr %arguments.addr, align 8, !dbg !1972, !tbaa !482
  %onlyallrandomcodes = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %60, i32 0, i32 4, !dbg !1973
  %61 = load i8, ptr %onlyallrandomcodes, align 4, !dbg !1973, !tbaa !1733, !range !847, !noundef !848
  %tobool48 = trunc i8 %61 to i1, !dbg !1973
  %62 = load ptr, ptr %arguments.addr, align 8, !dbg !1974, !tbaa !482
  %addbscache_depth = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %62, i32 0, i32 14, !dbg !1975
  %63 = load i32, ptr %addbscache_depth, align 8, !dbg !1975, !tbaa !1736
  %64 = load ptr, ptr %arguments.addr, align 8, !dbg !1976, !tbaa !482
  %radixlarge = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %64, i32 0, i32 5, !dbg !1977
  %65 = load i8, ptr %radixlarge, align 1, !dbg !1977, !tbaa !489, !range !847, !noundef !848
  %tobool49 = trunc i8 %65 to i1, !dbg !1977
  %66 = zext i1 %tobool49 to i64, !dbg !1976
  %cond51 = select i1 %tobool49, i32 0, i32 1, !dbg !1976
  %tobool52 = icmp ne i32 %cond51, 0, !dbg !1976
  %67 = load ptr, ptr %arguments.addr, align 8, !dbg !1978, !tbaa !482
  %radixparts = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %67, i32 0, i32 13, !dbg !1979
  %68 = load i32, ptr %radixparts, align 4, !dbg !1979, !tbaa !501
  %69 = load ptr, ptr %data_array, align 8, !dbg !1980, !tbaa !482
  %70 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !1981, !tbaa !482
  %71 = load ptr, ptr %timer.addr, align 8, !dbg !1982, !tbaa !482
  %72 = load ptr, ptr %err.addr, align 8, !dbg !1983, !tbaa !482
  %call53 = call i32 @storerandomcodes_getencseqkmers_twobitencoding(ptr noundef %40, i32 noundef %41, i32 noundef %43, i64 noundef %45, i32 noundef %cond43, i32 noundef %51, i1 noundef zeroext %tobool45, i32 noundef %55, i1 noundef zeroext %tobool46, i1 noundef zeroext %tobool47, i1 noundef zeroext %tobool48, i32 noundef %63, i64 noundef 0, i1 noundef zeroext %tobool52, i32 noundef %68, ptr noundef @gt_randomcodes_find_seldom_process_bucket, ptr noundef null, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72), !dbg !1984
  %cmp54 = icmp ne i32 %call53, 0, !dbg !1985
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !1986

if.then56:                                        ; preds = %cond.end42
  store i8 1, ptr %haserr, align 1, !dbg !1987, !tbaa !837
  br label %if.end57, !dbg !1989

if.end57:                                         ; preds = %if.then56, %cond.end42
  br label %if.end58, !dbg !1990

if.end58:                                         ; preds = %if.end57, %for.end
  store i32 0, ptr %threadcount, align 4, !dbg !1991, !tbaa !828
  br label %for.cond59, !dbg !1992

for.cond59:                                       ; preds = %for.inc88, %if.end58
  %73 = load i32, ptr %threadcount, align 4, !dbg !1993, !tbaa !828
  %74 = load i32, ptr %threads, align 4, !dbg !1994, !tbaa !828
  %cmp60 = icmp ult i32 %73, %74, !dbg !1995
  br i1 %cmp60, label %for.body62, label %for.end90, !dbg !1996

for.body62:                                       ; preds = %for.cond59
  %75 = load i8, ptr %haserr, align 1, !dbg !1997, !tbaa !837, !range !847, !noundef !848
  %tobool63 = trunc i8 %75 to i1, !dbg !1997
  br i1 %tobool63, label %if.end67, label %if.then64, !dbg !1999

if.then64:                                        ; preds = %for.body62
  %76 = load ptr, ptr %data_array, align 8, !dbg !2000, !tbaa !482
  %77 = load i32, ptr %threadcount, align 4, !dbg !2002, !tbaa !828
  %idxprom65 = zext i32 %77 to i64, !dbg !2000
  %arrayidx66 = getelementptr inbounds ptr, ptr %76, i64 %idxprom65, !dbg !2000
  %78 = load ptr, ptr %arrayidx66, align 8, !dbg !2000, !tbaa !482
  %79 = load i32, ptr %threadcount, align 4, !dbg !2003, !tbaa !828
  call void @gt_randomcodes_find_seldom_data_collect_stats(ptr noundef %78, i32 noundef %79, ptr noundef %nofseldomkmers), !dbg !2004
  br label %if.end67, !dbg !2005

if.end67:                                         ; preds = %if.then64, %for.body62
  %80 = load ptr, ptr %data_array, align 8, !dbg !2006, !tbaa !482
  %81 = load i32, ptr %threadcount, align 4, !dbg !2007, !tbaa !828
  %idxprom68 = zext i32 %81 to i64, !dbg !2006
  %arrayidx69 = getelementptr inbounds ptr, ptr %80, i64 %idxprom68, !dbg !2006
  %82 = load ptr, ptr %arrayidx69, align 8, !dbg !2006, !tbaa !482
  call void @gt_randomcodes_find_seldom_data_delete(ptr noundef %82), !dbg !2008
  %83 = load i32, ptr %threadcount, align 4, !dbg !2009, !tbaa !828
  %cmp70 = icmp ugt i32 %83, 0, !dbg !2010
  br i1 %cmp70, label %if.then72, label %if.end87, !dbg !2011

if.then72:                                        ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #7, !dbg !2012
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !1863, metadata !DIExpression()), !dbg !2013
  store i64 0, ptr %pos, align 8, !dbg !2014, !tbaa !1376
  br label %for.cond73, !dbg !2016

for.cond73:                                       ; preds = %for.inc82, %if.then72
  %84 = load i64, ptr %pos, align 8, !dbg !2017, !tbaa !1376
  %85 = load i64, ptr %seldomsize, align 8, !dbg !2019, !tbaa !1376
  %cmp74 = icmp ult i64 %84, %85, !dbg !2020
  br i1 %cmp74, label %for.body76, label %for.end84, !dbg !2021

for.body76:                                       ; preds = %for.cond73
  %86 = load ptr, ptr %seldom_reads, align 8, !dbg !2022, !tbaa !482
  %87 = load i32, ptr %threadcount, align 4, !dbg !2023, !tbaa !828
  %idxprom77 = zext i32 %87 to i64, !dbg !2022
  %arrayidx78 = getelementptr inbounds ptr, ptr %86, i64 %idxprom77, !dbg !2022
  %88 = load ptr, ptr %arrayidx78, align 8, !dbg !2022, !tbaa !482
  %89 = load i64, ptr %pos, align 8, !dbg !2024, !tbaa !1376
  %arrayidx79 = getelementptr inbounds i64, ptr %88, i64 %89, !dbg !2022
  %90 = load i64, ptr %arrayidx79, align 8, !dbg !2022, !tbaa !1376
  %91 = load ptr, ptr %seldom_reads, align 8, !dbg !2025, !tbaa !482
  %arrayidx80 = getelementptr inbounds ptr, ptr %91, i64 0, !dbg !2025
  %92 = load ptr, ptr %arrayidx80, align 8, !dbg !2025, !tbaa !482
  %93 = load i64, ptr %pos, align 8, !dbg !2026, !tbaa !1376
  %arrayidx81 = getelementptr inbounds i64, ptr %92, i64 %93, !dbg !2025
  %94 = load i64, ptr %arrayidx81, align 8, !dbg !2027, !tbaa !1376
  %or = or i64 %94, %90, !dbg !2027
  store i64 %or, ptr %arrayidx81, align 8, !dbg !2027, !tbaa !1376
  br label %for.inc82, !dbg !2025

for.inc82:                                        ; preds = %for.body76
  %95 = load i64, ptr %pos, align 8, !dbg !2028, !tbaa !1376
  %inc83 = add i64 %95, 1, !dbg !2028
  store i64 %inc83, ptr %pos, align 8, !dbg !2028, !tbaa !1376
  br label %for.cond73, !dbg !2029, !llvm.loop !2030

for.end84:                                        ; preds = %for.cond73
  %96 = load ptr, ptr %seldom_reads, align 8, !dbg !2032, !tbaa !482
  %97 = load i32, ptr %threadcount, align 4, !dbg !2032, !tbaa !828
  %idxprom85 = zext i32 %97 to i64, !dbg !2032
  %arrayidx86 = getelementptr inbounds ptr, ptr %96, i64 %idxprom85, !dbg !2032
  %98 = load ptr, ptr %arrayidx86, align 8, !dbg !2032, !tbaa !482
  call void @gt_free_mem(ptr noundef %98, ptr noundef @.str, i32 noundef 659), !dbg !2032
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #7, !dbg !2033
  br label %if.end87, !dbg !2034

if.end87:                                         ; preds = %for.end84, %if.end67
  br label %for.inc88, !dbg !2035

for.inc88:                                        ; preds = %if.end87
  %99 = load i32, ptr %threadcount, align 4, !dbg !2036, !tbaa !828
  %inc89 = add i32 %99, 1, !dbg !2036
  store i32 %inc89, ptr %threadcount, align 4, !dbg !2036, !tbaa !828
  br label %for.cond59, !dbg !2037, !llvm.loop !2038

for.end90:                                        ; preds = %for.cond59
  %100 = load i8, ptr %haserr, align 1, !dbg !2040, !tbaa !837, !range !847, !noundef !848
  %tobool91 = trunc i8 %100 to i1, !dbg !2040
  br i1 %tobool91, label %if.end101, label %if.then92, !dbg !2041

if.then92:                                        ; preds = %for.end90
  call void @llvm.lifetime.start.p0(i64 8, ptr %filename) #7, !dbg !2042
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !1869, metadata !DIExpression()), !dbg !2043
  %101 = load ptr, ptr %arguments.addr, align 8, !dbg !2044, !tbaa !482
  %encseqinput = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %101, i32 0, i32 18, !dbg !2045
  %102 = load ptr, ptr %encseqinput, align 8, !dbg !2045, !tbaa !506
  %call93 = call ptr @gt_str_clone(ptr noundef %102), !dbg !2046
  store ptr %call93, ptr %filename, align 8, !dbg !2043, !tbaa !482
  %103 = load ptr, ptr %verbose_logger.addr, align 8, !dbg !2047, !tbaa !482
  %104 = load i64, ptr %nofseldomkmers, align 8, !dbg !2048, !tbaa !1376
  call void (ptr, ptr, ...) @gt_logger_log(ptr noundef %103, ptr noundef @.str.97, i64 noundef %104), !dbg !2049
  %105 = load ptr, ptr %filename, align 8, !dbg !2050, !tbaa !482
  call void @gt_str_append_cstr(ptr noundef %105, ptr noundef @.str.98), !dbg !2051
  %106 = load ptr, ptr %seldom_reads, align 8, !dbg !2052, !tbaa !482
  %arrayidx94 = getelementptr inbounds ptr, ptr %106, i64 0, !dbg !2052
  %107 = load ptr, ptr %arrayidx94, align 8, !dbg !2052, !tbaa !482
  %108 = load i64, ptr %nofreads, align 8, !dbg !2054, !tbaa !1376
  %109 = load ptr, ptr %filename, align 8, !dbg !2055, !tbaa !482
  %call95 = call ptr @gt_str_get(ptr noundef %109), !dbg !2056
  %110 = load ptr, ptr %err.addr, align 8, !dbg !2057, !tbaa !482
  %call96 = call i32 @gt_cntlist_show(ptr noundef %107, i64 noundef %108, ptr noundef %call95, i1 noundef zeroext false, ptr noundef %110), !dbg !2058
  %cmp97 = icmp ne i32 %call96, 0, !dbg !2059
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !2060

if.then99:                                        ; preds = %if.then92
  store i8 1, ptr %haserr, align 1, !dbg !2061, !tbaa !837
  br label %if.end100, !dbg !2063

if.end100:                                        ; preds = %if.then99, %if.then92
  %111 = load ptr, ptr %filename, align 8, !dbg !2064, !tbaa !482
  call void @gt_str_delete(ptr noundef %111), !dbg !2065
  call void @llvm.lifetime.end.p0(i64 8, ptr %filename) #7, !dbg !2066
  br label %if.end101, !dbg !2067

if.end101:                                        ; preds = %if.end100, %for.end90
  %112 = load ptr, ptr %data_array, align 8, !dbg !2068, !tbaa !482
  call void @gt_free_mem(ptr noundef %112, ptr noundef @.str, i32 noundef 677), !dbg !2068
  %113 = load ptr, ptr %seldom_reads, align 8, !dbg !2069, !tbaa !482
  %arrayidx102 = getelementptr inbounds ptr, ptr %113, i64 0, !dbg !2069
  %114 = load ptr, ptr %arrayidx102, align 8, !dbg !2069, !tbaa !482
  call void @gt_free_mem(ptr noundef %114, ptr noundef @.str, i32 noundef 678), !dbg !2069
  %115 = load ptr, ptr %seldom_reads, align 8, !dbg !2070, !tbaa !482
  call void @gt_free_mem(ptr noundef %115, ptr noundef @.str, i32 noundef 679), !dbg !2070
  %116 = load i8, ptr %haserr, align 1, !dbg !2071, !tbaa !837, !range !847, !noundef !848
  %tobool103 = trunc i8 %116 to i1, !dbg !2071
  call void @llvm.lifetime.end.p0(i64 8, ptr %seldomsize) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofreads) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr %seldom_reads) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr %nofseldomkmers) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 4, ptr %threadcount) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_array) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketkey_kmersize) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 4, ptr %threads) #7, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !2072
  ret i1 %tobool103, !dbg !2073
}

declare !dbg !2074 void @gt_encseq_delete(ptr noundef) #1

declare !dbg !2077 void @gt_encseq_loader_delete(ptr noundef) #1

declare !dbg !2078 void @gt_timer_show_progress_final(ptr noundef, ptr noundef) #1

declare !dbg !2081 void @gt_timer_delete(ptr noundef) #1

declare !dbg !2082 void @gt_logger_delete(ptr noundef) #1

declare !dbg !2085 i64 @gt_str_length(ptr noundef) #1

declare !dbg !2088 ptr @gt_str_array_get(ptr noundef, i64 noundef) #1

declare !dbg !2091 ptr @gt_reads2twobit_new(ptr noundef) #1

declare !dbg !2094 void @gt_reads2twobit_use_phred64(ptr noundef) #1

declare !dbg !2097 void @gt_reads2twobit_set_quality_filter(ptr noundef, i64 noundef, i8 noundef signext) #1

declare !dbg !2100 ptr @gt_str_array_get_str(ptr noundef, i64 noundef) #1

declare !dbg !2104 i32 @gt_reads2twobit_add_library(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2107 i32 @gt_reads2twobit_encode(ptr noundef, ptr noundef) #1

declare !dbg !2110 i64 @gt_reads2twobit_nofseqs(ptr noundef) #1

declare !dbg !2115 i64 @gt_reads2twobit_nof_invalid_seqs(ptr noundef) #1

declare !dbg !2116 i64 @gt_reads2twobit_total_seqlength(ptr noundef) #1

declare !dbg !2117 i64 @gt_reads2twobit_seqlen_eqlen(ptr noundef) #1

declare !dbg !2118 i64 @gt_reads2twobit_seqlen_min(ptr noundef) #1

declare !dbg !2119 i64 @gt_reads2twobit_seqlen_max(ptr noundef) #1

declare !dbg !2120 i64 @gt_reads2twobit_invalid_seqs_totallength(ptr noundef) #1

declare !dbg !2121 i32 @gt_reads2twobit_write_encseq(ptr noundef, ptr noundef) #1

declare !dbg !2122 void @gt_reads2twobit_delete(ptr noundef) #1

declare !dbg !2123 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !2126 void @gt_log_log(ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @gt_seqcorrect_bucketkey_kmersize(ptr noundef %arguments, ptr noundef %kmersize, ptr noundef %err) #0 !dbg !2128 {
entry:
  %arguments.addr = alloca ptr, align 8
  %kmersize.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  store ptr %arguments, ptr %arguments.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %arguments.addr, metadata !2132, metadata !DIExpression()), !dbg !2136
  store ptr %kmersize, ptr %kmersize.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %kmersize.addr, metadata !2133, metadata !DIExpression()), !dbg !2137
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2134, metadata !DIExpression()), !dbg !2138
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !2139
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !2135, metadata !DIExpression()), !dbg !2140
  store i8 0, ptr %haserr, align 1, !dbg !2140, !tbaa !837
  br label %do.body, !dbg !2141

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %kmersize.addr, align 8, !dbg !2142, !tbaa !482
  %cmp = icmp ne ptr %0, null, !dbg !2142
  br i1 %cmp, label %if.end, label %if.then, !dbg !2145

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !2146, !tbaa !482
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.86, ptr noundef @__func__.gt_seqcorrect_bucketkey_kmersize, ptr noundef @.str, i32 noundef 277), !dbg !2146
  call void @abort() #8, !dbg !2146
  unreachable, !dbg !2146

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2145

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2145

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %arguments.addr, align 8, !dbg !2148, !tbaa !482
  %forcek = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %2, i32 0, i32 15, !dbg !2150
  %3 = load i32, ptr %forcek, align 4, !dbg !2150, !tbaa !2151
  %cmp1 = icmp ugt i32 %3, 0, !dbg !2152
  br i1 %cmp1, label %if.then2, label %if.else10, !dbg !2153

if.then2:                                         ; preds = %do.end
  %4 = load ptr, ptr %arguments.addr, align 8, !dbg !2154, !tbaa !482
  %forcek3 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %4, i32 0, i32 15, !dbg !2156
  %5 = load i32, ptr %forcek3, align 4, !dbg !2156, !tbaa !2151
  %6 = load ptr, ptr %kmersize.addr, align 8, !dbg !2157, !tbaa !482
  store i32 %5, ptr %6, align 4, !dbg !2158, !tbaa !828
  %7 = load ptr, ptr %kmersize.addr, align 8, !dbg !2159, !tbaa !482
  %8 = load i32, ptr %7, align 4, !dbg !2161, !tbaa !828
  %9 = load ptr, ptr %arguments.addr, align 8, !dbg !2162, !tbaa !482
  %correction_kmersize = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %9, i32 0, i32 9, !dbg !2163
  %10 = load i32, ptr %correction_kmersize, align 4, !dbg !2163, !tbaa !1627
  %cmp4 = icmp uge i32 %8, %10, !dbg !2164
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !2165

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %err.addr, align 8, !dbg !2166, !tbaa !482
  %12 = load ptr, ptr %kmersize.addr, align 8, !dbg !2168, !tbaa !482
  %13 = load i32, ptr %12, align 4, !dbg !2169, !tbaa !828
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %11, ptr noundef @.str.87, i32 noundef %13), !dbg !2170
  store i8 1, ptr %haserr, align 1, !dbg !2171, !tbaa !837
  br label %if.end9, !dbg !2172

if.else:                                          ; preds = %if.then2
  %14 = load ptr, ptr %kmersize.addr, align 8, !dbg !2173, !tbaa !482
  %15 = load i32, ptr %14, align 4, !dbg !2175, !tbaa !828
  %cmp6 = icmp ugt i32 %15, 32, !dbg !2176
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2177

if.then7:                                         ; preds = %if.else
  %16 = load ptr, ptr %err.addr, align 8, !dbg !2178, !tbaa !482
  %17 = load ptr, ptr %kmersize.addr, align 8, !dbg !2180, !tbaa !482
  %18 = load i32, ptr %17, align 4, !dbg !2181, !tbaa !828
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %16, ptr noundef @.str.88, i32 noundef %18, i32 noundef 32), !dbg !2182
  store i8 1, ptr %haserr, align 1, !dbg !2183, !tbaa !837
  br label %if.end8, !dbg !2184

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then5
  br label %if.end23, !dbg !2185

if.else10:                                        ; preds = %do.end
  br label %do.body11, !dbg !2186

do.body11:                                        ; preds = %if.else10
  %19 = load ptr, ptr %arguments.addr, align 8, !dbg !2188, !tbaa !482
  %correction_kmersize12 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %19, i32 0, i32 9, !dbg !2188
  %20 = load i32, ptr %correction_kmersize12, align 4, !dbg !2188, !tbaa !1627
  %cmp13 = icmp ugt i32 %20, 1, !dbg !2188
  br i1 %cmp13, label %if.end16, label %if.then14, !dbg !2191

if.then14:                                        ; preds = %do.body11
  %21 = load ptr, ptr @stderr, align 8, !dbg !2192, !tbaa !482
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.1, ptr noundef @.str.89, ptr noundef @__func__.gt_seqcorrect_bucketkey_kmersize, ptr noundef @.str, i32 noundef 297), !dbg !2192
  call void @abort() #8, !dbg !2192
  unreachable, !dbg !2192

if.end16:                                         ; preds = %do.body11
  br label %do.cond17, !dbg !2191

do.cond17:                                        ; preds = %if.end16
  br label %do.end18, !dbg !2191

do.end18:                                         ; preds = %do.cond17
  %22 = load ptr, ptr %arguments.addr, align 8, !dbg !2194, !tbaa !482
  %correction_kmersize19 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %22, i32 0, i32 9, !dbg !2194
  %23 = load i32, ptr %correction_kmersize19, align 4, !dbg !2194, !tbaa !1627
  %sub = sub i32 %23, 1, !dbg !2194
  %cmp20 = icmp ult i32 32, %sub, !dbg !2194
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2194

cond.true:                                        ; preds = %do.end18
  br label %cond.end, !dbg !2194

cond.false:                                       ; preds = %do.end18
  %24 = load ptr, ptr %arguments.addr, align 8, !dbg !2194, !tbaa !482
  %correction_kmersize21 = getelementptr inbounds %struct.GtSeqcorrectArguments, ptr %24, i32 0, i32 9, !dbg !2194
  %25 = load i32, ptr %correction_kmersize21, align 4, !dbg !2194, !tbaa !1627
  %sub22 = sub i32 %25, 1, !dbg !2194
  br label %cond.end, !dbg !2194

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %sub22, %cond.false ], !dbg !2194
  %26 = load ptr, ptr %kmersize.addr, align 8, !dbg !2195, !tbaa !482
  store i32 %cond, ptr %26, align 4, !dbg !2196, !tbaa !828
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.end9
  %27 = load ptr, ptr %kmersize.addr, align 8, !dbg !2197, !tbaa !482
  %28 = load i32, ptr %27, align 4, !dbg !2198, !tbaa !828
  call void (ptr, ...) @gt_log_log(ptr noundef @.str.90, i32 noundef %28), !dbg !2199
  br label %do.body24, !dbg !2200

do.body24:                                        ; preds = %if.end23
  %29 = load ptr, ptr %kmersize.addr, align 8, !dbg !2201, !tbaa !482
  %30 = load i32, ptr %29, align 4, !dbg !2201, !tbaa !828
  %cmp25 = icmp ugt i32 %30, 0, !dbg !2201
  br i1 %cmp25, label %if.end28, label %if.then26, !dbg !2204

if.then26:                                        ; preds = %do.body24
  %31 = load ptr, ptr @stderr, align 8, !dbg !2205, !tbaa !482
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.1, ptr noundef @.str.91, ptr noundef @__func__.gt_seqcorrect_bucketkey_kmersize, ptr noundef @.str, i32 noundef 302), !dbg !2205
  call void @abort() #8, !dbg !2205
  unreachable, !dbg !2205

if.end28:                                         ; preds = %do.body24
  br label %do.cond29, !dbg !2204

do.cond29:                                        ; preds = %if.end28
  br label %do.end30, !dbg !2204

do.end30:                                         ; preds = %do.cond29
  %32 = load i8, ptr %haserr, align 1, !dbg !2207, !tbaa !837, !range !847, !noundef !848
  %tobool = trunc i8 %32 to i1, !dbg !2207
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !2208
  ret i1 %tobool, !dbg !2209
}

declare !dbg !2210 ptr @gt_randomcodes_correct_data_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !2213 i32 @storerandomcodes_getencseqkmers_twobitencoding(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gt_randomcodes_correct_process_bucket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

declare !dbg !2233 void @gt_randomcodes_correct_data_collect_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2236 void @gt_randomcodes_correct_data_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @gt_seqcorrect_apply_corrections(ptr noundef %encseq, ptr noundef %indexname, i32 noundef %threads, ptr noundef %err) #0 !dbg !2239 {
entry:
  %encseq.addr = alloca ptr, align 8
  %indexname.addr = alloca ptr, align 8
  %threads.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %editor = alloca ptr, align 8
  %threadcount = alloca i32, align 4
  %corrections = alloca ptr, align 8
  %filename = alloca ptr, align 8
  %pos = alloca i64, align 8
  %newchar = alloca i8, align 1
  %retval7 = alloca i64, align 8
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !2243, metadata !DIExpression()), !dbg !2264
  store ptr %indexname, ptr %indexname.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %indexname.addr, metadata !2244, metadata !DIExpression()), !dbg !2265
  store i32 %threads, ptr %threads.addr, align 4, !tbaa !828
  tail call void @llvm.dbg.declare(metadata ptr %threads.addr, metadata !2245, metadata !DIExpression()), !dbg !2266
  store ptr %err, ptr %err.addr, align 8, !tbaa !482
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2246, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !2268
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !2247, metadata !DIExpression()), !dbg !2269
  store i8 0, ptr %haserr, align 1, !dbg !2269, !tbaa !837
  call void @llvm.lifetime.start.p0(i64 8, ptr %editor) #7, !dbg !2270
  tail call void @llvm.dbg.declare(metadata ptr %editor, metadata !2248, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 4, ptr %threadcount) #7, !dbg !2272
  tail call void @llvm.dbg.declare(metadata ptr %threadcount, metadata !2253, metadata !DIExpression()), !dbg !2273
  %0 = load ptr, ptr %encseq.addr, align 8, !dbg !2274, !tbaa !482
  %1 = load ptr, ptr %indexname.addr, align 8, !dbg !2275, !tbaa !482
  %2 = load ptr, ptr %err.addr, align 8, !dbg !2276, !tbaa !482
  %call = call ptr @gt_twobitenc_editor_new(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !2277
  store ptr %call, ptr %editor, align 8, !dbg !2278, !tbaa !482
  %3 = load ptr, ptr %editor, align 8, !dbg !2279, !tbaa !482
  %cmp = icmp eq ptr %3, null, !dbg !2281
  br i1 %cmp, label %if.then, label %if.end, !dbg !2282

if.then:                                          ; preds = %entry
  store i8 1, ptr %haserr, align 1, !dbg !2283, !tbaa !837
  br label %if.end, !dbg !2284

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %threads.addr, align 4, !dbg !2285, !tbaa !828
  call void (ptr, ...) @gt_log_log(ptr noundef @.str.92, i32 noundef %4), !dbg !2286
  store i32 0, ptr %threadcount, align 4, !dbg !2287, !tbaa !828
  br label %for.cond, !dbg !2288

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8, ptr %haserr, align 1, !dbg !2289, !tbaa !837, !range !847, !noundef !848
  %tobool = trunc i8 %5 to i1, !dbg !2289
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2290

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, ptr %threadcount, align 4, !dbg !2291, !tbaa !828
  %7 = load i32, ptr %threads.addr, align 4, !dbg !2292, !tbaa !828
  %cmp1 = icmp ult i32 %6, %7, !dbg !2293
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !2294
  br i1 %8, label %for.body, label %for.end, !dbg !2295

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %corrections) #7, !dbg !2296
  tail call void @llvm.dbg.declare(metadata ptr %corrections, metadata !2254, metadata !DIExpression()), !dbg !2297
  call void @llvm.lifetime.start.p0(i64 8, ptr %filename) #7, !dbg !2298
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !2258, metadata !DIExpression()), !dbg !2299
  %9 = load ptr, ptr %indexname.addr, align 8, !dbg !2300, !tbaa !482
  %call2 = call ptr @gt_str_new_cstr(ptr noundef %9), !dbg !2301
  store ptr %call2, ptr %filename, align 8, !dbg !2302, !tbaa !482
  %10 = load ptr, ptr %filename, align 8, !dbg !2303, !tbaa !482
  call void @gt_str_append_char(ptr noundef %10, i8 noundef signext 46), !dbg !2304
  %11 = load ptr, ptr %filename, align 8, !dbg !2305, !tbaa !482
  %12 = load i32, ptr %threadcount, align 4, !dbg !2306, !tbaa !828
  call void @gt_str_append_uint(ptr noundef %11, i32 noundef %12), !dbg !2307
  %13 = load ptr, ptr %filename, align 8, !dbg !2308, !tbaa !482
  call void @gt_str_append_cstr(ptr noundef %13, ptr noundef @.str.79), !dbg !2309
  %14 = load ptr, ptr %filename, align 8, !dbg !2310, !tbaa !482
  %call3 = call ptr @gt_str_get(ptr noundef %14), !dbg !2310
  %15 = load ptr, ptr %err.addr, align 8, !dbg !2310, !tbaa !482
  %call4 = call ptr @gt_fa_fopen_func(ptr noundef %call3, ptr noundef @.str.93, ptr noundef @.str, i32 noundef 353, ptr noundef %15), !dbg !2310
  store ptr %call4, ptr %corrections, align 8, !dbg !2311, !tbaa !482
  %16 = load ptr, ptr %indexname.addr, align 8, !dbg !2312, !tbaa !482
  %17 = load i32, ptr %threadcount, align 4, !dbg !2313, !tbaa !828
  call void (ptr, ...) @gt_log_log(ptr noundef @.str.94, ptr noundef %16, i32 noundef %17, ptr noundef @.str.79), !dbg !2314
  %18 = load ptr, ptr %corrections, align 8, !dbg !2315, !tbaa !482
  %cmp5 = icmp eq ptr %18, null, !dbg !2316
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2317

if.then6:                                         ; preds = %for.body
  store i8 1, ptr %haserr, align 1, !dbg !2318, !tbaa !837
  br label %if.end17, !dbg !2319

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #7, !dbg !2320
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !2259, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 1, ptr %newchar) #7, !dbg !2322
  tail call void @llvm.dbg.declare(metadata ptr %newchar, metadata !2262, metadata !DIExpression()), !dbg !2323
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval7) #7, !dbg !2324
  tail call void @llvm.dbg.declare(metadata ptr %retval7, metadata !2263, metadata !DIExpression()), !dbg !2325
  br label %while.cond, !dbg !2326

while.cond:                                       ; preds = %while.body, %if.else
  %19 = load ptr, ptr %corrections, align 8, !dbg !2327, !tbaa !482
  %call8 = call i64 @fread(ptr noundef %pos, i64 noundef 8, i64 noundef 1, ptr noundef %19), !dbg !2328
  store i64 %call8, ptr %retval7, align 8, !dbg !2329, !tbaa !1376
  %cmp9 = icmp eq i64 %call8, 1, !dbg !2330
  br i1 %cmp9, label %while.body, label %while.end, !dbg !2326

while.body:                                       ; preds = %while.cond
  %20 = load i64, ptr %pos, align 8, !dbg !2331, !tbaa !1376
  %and = and i64 %20, 3, !dbg !2333
  %conv = trunc i64 %and to i8, !dbg !2334
  store i8 %conv, ptr %newchar, align 1, !dbg !2335, !tbaa !2336
  %21 = load i64, ptr %pos, align 8, !dbg !2337, !tbaa !1376
  %shr = lshr i64 %21, 2, !dbg !2337
  store i64 %shr, ptr %pos, align 8, !dbg !2337, !tbaa !1376
  %22 = load ptr, ptr %editor, align 8, !dbg !2338, !tbaa !482
  %23 = load i64, ptr %pos, align 8, !dbg !2339, !tbaa !1376
  %24 = load i8, ptr %newchar, align 1, !dbg !2340, !tbaa !2336
  call void @gt_twobitenc_editor_edit(ptr noundef %22, i64 noundef %23, i8 noundef zeroext %24), !dbg !2341
  br label %while.cond, !dbg !2326, !llvm.loop !2342

while.end:                                        ; preds = %while.cond
  %25 = load ptr, ptr %corrections, align 8, !dbg !2344, !tbaa !482
  %call10 = call i32 @ferror(ptr noundef %25) #7, !dbg !2346
  %cmp11 = icmp ne i32 %call10, 0, !dbg !2347
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !2348

if.then13:                                        ; preds = %while.end
  %26 = load ptr, ptr %err.addr, align 8, !dbg !2349, !tbaa !482
  %27 = load ptr, ptr %filename, align 8, !dbg !2351, !tbaa !482
  %call14 = call ptr @gt_str_get(ptr noundef %27), !dbg !2352
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %26, ptr noundef @.str.95, ptr noundef %call14), !dbg !2353
  store i8 1, ptr %haserr, align 1, !dbg !2354, !tbaa !837
  br label %if.end15, !dbg !2355

if.end15:                                         ; preds = %if.then13, %while.end
  %28 = load ptr, ptr %corrections, align 8, !dbg !2356, !tbaa !482
  call void @gt_fa_fclose(ptr noundef %28), !dbg !2357
  %29 = load ptr, ptr %filename, align 8, !dbg !2358, !tbaa !482
  %call16 = call ptr @gt_str_get(ptr noundef %29), !dbg !2359
  call void @gt_xunlink(ptr noundef %call16), !dbg !2360
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval7) #7, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 1, ptr %newchar) #7, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #7, !dbg !2361
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then6
  %30 = load ptr, ptr %filename, align 8, !dbg !2362, !tbaa !482
  call void @gt_str_delete(ptr noundef %30), !dbg !2363
  call void @llvm.lifetime.end.p0(i64 8, ptr %filename) #7, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 8, ptr %corrections) #7, !dbg !2364
  br label %for.inc, !dbg !2365

for.inc:                                          ; preds = %if.end17
  %31 = load i32, ptr %threadcount, align 4, !dbg !2366, !tbaa !828
  %inc = add i32 %31, 1, !dbg !2366
  store i32 %inc, ptr %threadcount, align 4, !dbg !2366, !tbaa !828
  br label %for.cond, !dbg !2367, !llvm.loop !2368

for.end:                                          ; preds = %land.end
  %32 = load ptr, ptr %editor, align 8, !dbg !2370, !tbaa !482
  call void @gt_twobitenc_editor_delete(ptr noundef %32), !dbg !2371
  %33 = load i8, ptr %haserr, align 1, !dbg !2372, !tbaa !837, !range !847, !noundef !848
  %tobool18 = trunc i8 %33 to i1, !dbg !2372
  %34 = zext i1 %tobool18 to i64, !dbg !2372
  %cond = select i1 %tobool18, i32 -1, i32 0, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr %threadcount) #7, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr %editor) #7, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !2373
  ret i32 %cond, !dbg !2374
}

declare !dbg !2375 ptr @gt_twobitenc_editor_new(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2378 ptr @gt_str_new_cstr(ptr noundef) #1

declare !dbg !2381 void @gt_str_append_char(ptr noundef, i8 noundef signext) #1

declare !dbg !2384 void @gt_str_append_uint(ptr noundef, i32 noundef) #1

declare !dbg !2387 ptr @gt_fa_fopen_func(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !2391 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare !dbg !2395 void @gt_twobitenc_editor_edit(ptr noundef, i64 noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind
declare !dbg !2398 i32 @ferror(ptr noundef) #4

declare !dbg !2401 void @gt_fa_fclose(ptr noundef) #1

declare !dbg !2404 void @gt_twobitenc_editor_delete(ptr noundef) #1

declare !dbg !2407 i64 @gt_encseq_num_of_sequences(ptr noundef) #1

declare !dbg !2410 ptr @gt_realloc_mem(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !2413 ptr @gt_randomcodes_find_seldom_data_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @gt_randomcodes_find_seldom_process_bucket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

declare !dbg !2416 void @gt_randomcodes_find_seldom_data_collect_stats(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !2419 void @gt_randomcodes_find_seldom_data_delete(ptr noundef) #1

declare !dbg !2422 i32 @gt_cntlist_show(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!372}
!llvm.module.flags = !{!386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tools/gt_seqcorrect.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "cec0f5b53e1a05c0eb2587050f34690d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 26)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 32)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 61)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 33)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 3)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3200, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 400)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !14, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 85)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !35, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 30)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 51)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !59, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 36)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 12)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 81)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 5)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !30, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !35, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 28)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 6)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !95, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 9)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 968, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 121)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 7)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 41)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 14)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 48)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !59, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 34)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !117, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 68)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 8)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 60)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !151, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !71, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !76, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !54, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !76, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 23)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !14, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 22)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 19)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 25)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 16)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 11)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 31)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !198, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 42)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !54, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 240, elements: !55)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 327, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 44)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 168, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 21)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 702, type: !183, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 707, type: !35, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 708, type: !127, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !171, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 720, type: !171, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 743, type: !86, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 745, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 920, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 115)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 29)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !183, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 20)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 15)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 43)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !225, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !264, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !139, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 18)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 449, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 40)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 451, type: !264, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 24)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !122, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 466, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 38)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !139, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !14, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 4)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !171, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !287, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !3, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !203, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !86, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !264, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 562, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 47)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 49)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !320, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !71, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 578, type: !171, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 17)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 264, elements: !31)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 65)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 57)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !71, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !178, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !127, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 344, type: !203, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !59, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !203, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !188, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !3, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 666, type: !188, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 668, type: !86, isLocal: true, isDefinition: true)
!372 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !373, globals: !385, splitDebugInlining: false, nameTableKind: None)
!373 = !{!374, !377, !4, !378, !379, !380, !381, !384}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !375, line: 29, baseType: !376)
!375 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!376 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!378 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!379 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!380 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !382, line: 102, baseType: !383)
!382 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!383 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !382, line: 83, baseType: !376)
!385 = !{!0, !7, !12, !17, !23, !28, !33, !38, !43, !45, !50, !52, !57, !62, !67, !69, !74, !79, !84, !89, !91, !93, !98, !103, !105, !110, !115, !120, !125, !130, !135, !137, !142, !144, !149, !154, !159, !161, !163, !165, !167, !169, !174, !176, !181, !186, !191, !196, !201, !206, !208, !213, !215, !218, !223, !228, !230, !232, !234, !236, !238, !240, !245, !250, !252, !257, !262, !267, !269, !271, !273, !278, !283, !285, !290, !292, !297, !299, !301, !306, !308, !310, !312, !314, !316, !318, !323, !328, !330, !332, !334, !339, !342, !347, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370}
!386 = !{i32 7, !"Dwarf Version", i32 5}
!387 = !{i32 2, !"Debug Info Version", i32 3}
!388 = !{i32 1, !"wchar_size", i32 4}
!389 = !{i32 8, !"PIC Level", i32 2}
!390 = !{i32 7, !"uwtable", i32 2}
!391 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!392 = distinct !DISubprogram(name: "gt_seqcorrect", scope: !2, file: !2, line: 773, type: !393, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372)
!393 = !DISubroutineType(types: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTool", file: !397, line: 26, baseType: !398)
!397 = !DIFile(filename: "src/core/tool_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e867124201284063b8eb5758ec6a469a")
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTool", file: !397, line: 26, flags: DIFlagFwdDecl)
!399 = !DILocation(line: 775, column: 10, scope: !392)
!400 = !DILocation(line: 775, column: 3, scope: !392)
!401 = !DISubprogram(name: "gt_tool_new", scope: !397, file: !397, line: 66, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!395, !404, !408, !412, !420, !428}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsNew", file: !397, line: 30, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!377}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsDelete", file: !397, line: 33, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !377}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolOptionParserNew", file: !397, line: 36, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!416, !377}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !418, line: 27, baseType: !419)
!418 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !418, line: 27, flags: DIFlagFwdDecl)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsCheck", file: !397, line: 41, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!380, !380, !377, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !426, line: 44, baseType: !427)
!426 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !426, line: 44, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolRunner", file: !397, line: 52, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!380, !380, !432, !380, !377, !424}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!434 = distinct !DISubprogram(name: "gt_seqcorrect_arguments_new", scope: !2, file: !2, line: 77, type: !406, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !435)
!435 = !{!436}
!436 = !DILocalVariable(name: "arguments", scope: !434, file: !2, line: 79, type: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtSeqcorrectArguments", file: !2, line: 75, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 47, size: 960, elements: !440)
!440 = !{!441, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !465, !466, !467, !471, !476, !477, !478}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "usefirstcodes", scope: !439, file: !2, line: 49, baseType: !442, size: 8)
!442 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !439, file: !2, line: 50, baseType: !442, size: 8, offset: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !439, file: !2, line: 51, baseType: !442, size: 8, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "onlyaccum", scope: !439, file: !2, line: 52, baseType: !442, size: 8, offset: 24)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "onlyallrandomcodes", scope: !439, file: !2, line: 53, baseType: !442, size: 8, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "radixlarge", scope: !439, file: !2, line: 54, baseType: !442, size: 8, offset: 40)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "checksuftab", scope: !439, file: !2, line: 55, baseType: !442, size: 8, offset: 48)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usemaxdepth", scope: !439, file: !2, line: 56, baseType: !442, size: 8, offset: 56)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "find_seldom", scope: !439, file: !2, line: 57, baseType: !442, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "correction_kmersize", scope: !439, file: !2, line: 58, baseType: !379, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "samplingfactor", scope: !439, file: !2, line: 59, baseType: !379, size: 32, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "trusted_count", scope: !439, file: !2, line: 60, baseType: !379, size: 32, offset: 160)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "numofparts", scope: !439, file: !2, line: 61, baseType: !379, size: 32, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "radixparts", scope: !439, file: !2, line: 62, baseType: !379, size: 32, offset: 224)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "addbscache_depth", scope: !439, file: !2, line: 63, baseType: !379, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "forcek", scope: !439, file: !2, line: 64, baseType: !379, size: 32, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !439, file: !2, line: 65, baseType: !379, size: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "maximumspace", scope: !439, file: !2, line: 66, baseType: !384, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "encseqinput", scope: !439, file: !2, line: 67, baseType: !461, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !463, line: 27, baseType: !464)
!463 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !463, line: 27, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "memlimitarg", scope: !439, file: !2, line: 68, baseType: !461, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "indexname", scope: !439, file: !2, line: 69, baseType: !461, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "refoptionmemlimit", scope: !439, file: !2, line: 70, baseType: !468, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !418, line: 33, baseType: !470)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !418, line: 33, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !439, file: !2, line: 71, baseType: !472, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrArray", file: !474, line: 24, baseType: !475)
!474 = !DIFile(filename: "src/core/str_array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d2f5724ae7121552c301a489d5e7f125")
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStrArray", file: !474, line: 24, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "phred64", scope: !439, file: !2, line: 72, baseType: !442, size: 8, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "maxlow", scope: !439, file: !2, line: 73, baseType: !384, size: 64, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lowqual", scope: !439, file: !2, line: 74, baseType: !379, size: 32, offset: 896)
!479 = !DILocation(line: 79, column: 3, scope: !434)
!480 = !DILocation(line: 79, column: 26, scope: !434)
!481 = !DILocation(line: 79, column: 38, scope: !434)
!482 = !{!483, !483, i64 0}
!483 = !{!"any pointer", !484, i64 0}
!484 = !{!"omnipotent char", !485, i64 0}
!485 = !{!"Simple C/C++ TBAA"}
!486 = !DILocation(line: 80, column: 3, scope: !434)
!487 = !DILocation(line: 80, column: 14, scope: !434)
!488 = !DILocation(line: 80, column: 25, scope: !434)
!489 = !{!490, !491, i64 5}
!490 = !{!"", !491, i64 0, !491, i64 1, !491, i64 2, !491, i64 3, !491, i64 4, !491, i64 5, !491, i64 6, !491, i64 7, !491, i64 8, !492, i64 12, !492, i64 16, !492, i64 20, !492, i64 24, !492, i64 28, !492, i64 32, !492, i64 36, !492, i64 40, !493, i64 48, !483, i64 56, !483, i64 64, !483, i64 72, !483, i64 80, !483, i64 88, !491, i64 96, !493, i64 104, !492, i64 112}
!491 = !{!"_Bool", !484, i64 0}
!492 = !{!"int", !484, i64 0}
!493 = !{!"long", !484, i64 0}
!494 = !DILocation(line: 81, column: 3, scope: !434)
!495 = !DILocation(line: 81, column: 14, scope: !434)
!496 = !DILocation(line: 81, column: 25, scope: !434)
!497 = !{!490, !492, i64 24}
!498 = !DILocation(line: 82, column: 3, scope: !434)
!499 = !DILocation(line: 82, column: 14, scope: !434)
!500 = !DILocation(line: 82, column: 25, scope: !434)
!501 = !{!490, !492, i64 28}
!502 = !DILocation(line: 83, column: 28, scope: !434)
!503 = !DILocation(line: 83, column: 3, scope: !434)
!504 = !DILocation(line: 83, column: 14, scope: !434)
!505 = !DILocation(line: 83, column: 26, scope: !434)
!506 = !{!490, !483, i64 56}
!507 = !DILocation(line: 84, column: 26, scope: !434)
!508 = !DILocation(line: 84, column: 3, scope: !434)
!509 = !DILocation(line: 84, column: 14, scope: !434)
!510 = !DILocation(line: 84, column: 24, scope: !434)
!511 = !{!490, !483, i64 72}
!512 = !DILocation(line: 85, column: 28, scope: !434)
!513 = !DILocation(line: 85, column: 3, scope: !434)
!514 = !DILocation(line: 85, column: 14, scope: !434)
!515 = !DILocation(line: 85, column: 26, scope: !434)
!516 = !{!490, !483, i64 64}
!517 = !DILocation(line: 86, column: 3, scope: !434)
!518 = !DILocation(line: 86, column: 14, scope: !434)
!519 = !DILocation(line: 86, column: 27, scope: !434)
!520 = !{!490, !493, i64 48}
!521 = !DILocation(line: 87, column: 19, scope: !434)
!522 = !DILocation(line: 87, column: 3, scope: !434)
!523 = !DILocation(line: 87, column: 14, scope: !434)
!524 = !DILocation(line: 87, column: 17, scope: !434)
!525 = !{!490, !483, i64 88}
!526 = !DILocation(line: 88, column: 10, scope: !434)
!527 = !DILocation(line: 89, column: 1, scope: !434)
!528 = !DILocation(line: 88, column: 3, scope: !434)
!529 = distinct !DISubprogram(name: "gt_seqcorrect_arguments_delete", scope: !2, file: !2, line: 91, type: !410, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !530)
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !529, file: !2, line: 91, type: !377)
!532 = !DILocalVariable(name: "arguments", scope: !529, file: !2, line: 93, type: !437)
!533 = !DILocation(line: 91, column: 50, scope: !529)
!534 = !DILocation(line: 93, column: 3, scope: !529)
!535 = !DILocation(line: 93, column: 26, scope: !529)
!536 = !DILocation(line: 93, column: 38, scope: !529)
!537 = !DILocation(line: 94, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !529, file: !2, line: 94, column: 7)
!539 = !DILocation(line: 94, column: 7, scope: !529)
!540 = !DILocation(line: 94, column: 19, scope: !538)
!541 = !DILocation(line: 95, column: 17, scope: !529)
!542 = !DILocation(line: 95, column: 28, scope: !529)
!543 = !DILocation(line: 95, column: 3, scope: !529)
!544 = !DILocation(line: 96, column: 17, scope: !529)
!545 = !DILocation(line: 96, column: 28, scope: !529)
!546 = !DILocation(line: 96, column: 3, scope: !529)
!547 = !DILocation(line: 97, column: 20, scope: !529)
!548 = !DILocation(line: 97, column: 31, scope: !529)
!549 = !{!490, !483, i64 80}
!550 = !DILocation(line: 97, column: 3, scope: !529)
!551 = !DILocation(line: 98, column: 17, scope: !529)
!552 = !DILocation(line: 98, column: 28, scope: !529)
!553 = !DILocation(line: 98, column: 3, scope: !529)
!554 = !DILocation(line: 99, column: 23, scope: !529)
!555 = !DILocation(line: 99, column: 34, scope: !529)
!556 = !DILocation(line: 99, column: 3, scope: !529)
!557 = !DILocation(line: 100, column: 3, scope: !529)
!558 = !DILocation(line: 101, column: 1, scope: !529)
!559 = distinct !DISubprogram(name: "gt_seqcorrect_option_parser_new", scope: !2, file: !2, line: 103, type: !414, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!561 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !559, file: !2, line: 103, type: !377)
!562 = !DILocalVariable(name: "arguments", scope: !559, file: !2, line: 105, type: !437)
!563 = !DILocalVariable(name: "op", scope: !559, file: !2, line: 106, type: !416)
!564 = !DILocalVariable(name: "option", scope: !559, file: !2, line: 107, type: !468)
!565 = !DILocalVariable(name: "optionparts", scope: !559, file: !2, line: 107, type: !468)
!566 = !DILocalVariable(name: "optionmemlimit", scope: !559, file: !2, line: 107, type: !468)
!567 = !DILocalVariable(name: "q_option", scope: !559, file: !2, line: 107, type: !468)
!568 = !DILocalVariable(name: "v_option", scope: !559, file: !2, line: 107, type: !468)
!569 = !DILocalVariable(name: "db_option", scope: !559, file: !2, line: 108, type: !468)
!570 = !DILocalVariable(name: "maxlow_option", scope: !559, file: !2, line: 108, type: !468)
!571 = !DILocation(line: 103, column: 62, scope: !559)
!572 = !DILocation(line: 105, column: 3, scope: !559)
!573 = !DILocation(line: 105, column: 26, scope: !559)
!574 = !DILocation(line: 105, column: 38, scope: !559)
!575 = !DILocation(line: 106, column: 3, scope: !559)
!576 = !DILocation(line: 106, column: 19, scope: !559)
!577 = !DILocation(line: 107, column: 3, scope: !559)
!578 = !DILocation(line: 107, column: 13, scope: !559)
!579 = !DILocation(line: 107, column: 22, scope: !559)
!580 = !DILocation(line: 107, column: 36, scope: !559)
!581 = !DILocation(line: 107, column: 53, scope: !559)
!582 = !DILocation(line: 107, column: 64, scope: !559)
!583 = !DILocation(line: 108, column: 13, scope: !559)
!584 = !DILocation(line: 108, column: 25, scope: !559)
!585 = !DILocation(line: 110, column: 3, scope: !559)
!586 = !DILocation(line: 110, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 110, column: 3)
!588 = distinct !DILexicalBlock(scope: !559, file: !2, line: 110, column: 3)
!589 = !DILocation(line: 110, column: 3, scope: !588)
!590 = !DILocation(line: 110, column: 3, scope: !591)
!591 = distinct !DILexicalBlock(scope: !587, file: !2, line: 110, column: 3)
!592 = !DILocation(line: 113, column: 8, scope: !559)
!593 = !DILocation(line: 113, column: 6, scope: !559)
!594 = !DILocation(line: 118, column: 40, scope: !559)
!595 = !DILocation(line: 118, column: 51, scope: !559)
!596 = !DILocation(line: 117, column: 15, scope: !559)
!597 = !DILocation(line: 117, column: 13, scope: !559)
!598 = !DILocation(line: 119, column: 26, scope: !559)
!599 = !DILocation(line: 119, column: 3, scope: !559)
!600 = !DILocation(line: 120, column: 31, scope: !559)
!601 = !DILocation(line: 120, column: 35, scope: !559)
!602 = !DILocation(line: 120, column: 3, scope: !559)
!603 = !DILocation(line: 125, column: 7, scope: !559)
!604 = !DILocation(line: 125, column: 18, scope: !559)
!605 = !DILocation(line: 123, column: 12, scope: !559)
!606 = !DILocation(line: 123, column: 10, scope: !559)
!607 = !DILocation(line: 126, column: 26, scope: !559)
!608 = !DILocation(line: 126, column: 3, scope: !559)
!609 = !DILocation(line: 127, column: 31, scope: !559)
!610 = !DILocation(line: 127, column: 35, scope: !559)
!611 = !DILocation(line: 127, column: 3, scope: !559)
!612 = !DILocation(line: 131, column: 33, scope: !559)
!613 = !DILocation(line: 131, column: 44, scope: !559)
!614 = !DILocation(line: 130, column: 12, scope: !559)
!615 = !DILocation(line: 130, column: 10, scope: !559)
!616 = !DILocation(line: 132, column: 33, scope: !559)
!617 = !DILocation(line: 132, column: 41, scope: !559)
!618 = !DILocation(line: 132, column: 3, scope: !559)
!619 = !DILocation(line: 133, column: 21, scope: !559)
!620 = !DILocation(line: 133, column: 29, scope: !559)
!621 = !DILocation(line: 133, column: 3, scope: !559)
!622 = !DILocation(line: 134, column: 31, scope: !559)
!623 = !DILocation(line: 134, column: 35, scope: !559)
!624 = !DILocation(line: 134, column: 3, scope: !559)
!625 = !DILocation(line: 138, column: 32, scope: !559)
!626 = !DILocation(line: 138, column: 43, scope: !559)
!627 = !DILocation(line: 137, column: 12, scope: !559)
!628 = !DILocation(line: 137, column: 10, scope: !559)
!629 = !DILocation(line: 139, column: 31, scope: !559)
!630 = !DILocation(line: 139, column: 35, scope: !559)
!631 = !DILocation(line: 139, column: 3, scope: !559)
!632 = !DILocation(line: 140, column: 26, scope: !559)
!633 = !DILocation(line: 140, column: 3, scope: !559)
!634 = !DILocation(line: 144, column: 8, scope: !559)
!635 = !DILocation(line: 144, column: 19, scope: !559)
!636 = !DILocation(line: 143, column: 12, scope: !559)
!637 = !DILocation(line: 143, column: 10, scope: !559)
!638 = !DILocation(line: 145, column: 31, scope: !559)
!639 = !DILocation(line: 145, column: 35, scope: !559)
!640 = !DILocation(line: 145, column: 3, scope: !559)
!641 = !DILocation(line: 150, column: 8, scope: !559)
!642 = !DILocation(line: 150, column: 19, scope: !559)
!643 = !DILocation(line: 148, column: 12, scope: !559)
!644 = !DILocation(line: 148, column: 10, scope: !559)
!645 = !DILocation(line: 151, column: 31, scope: !559)
!646 = !DILocation(line: 151, column: 35, scope: !559)
!647 = !DILocation(line: 151, column: 3, scope: !559)
!648 = !DILocation(line: 155, column: 8, scope: !559)
!649 = !DILocation(line: 155, column: 19, scope: !559)
!650 = !DILocation(line: 154, column: 12, scope: !559)
!651 = !DILocation(line: 154, column: 10, scope: !559)
!652 = !DILocation(line: 156, column: 31, scope: !559)
!653 = !DILocation(line: 156, column: 35, scope: !559)
!654 = !DILocation(line: 156, column: 3, scope: !559)
!655 = !DILocation(line: 160, column: 36, scope: !559)
!656 = !DILocation(line: 160, column: 47, scope: !559)
!657 = !DILocation(line: 159, column: 12, scope: !559)
!658 = !DILocation(line: 159, column: 10, scope: !559)
!659 = !DILocation(line: 161, column: 31, scope: !559)
!660 = !DILocation(line: 161, column: 35, scope: !559)
!661 = !DILocation(line: 161, column: 3, scope: !559)
!662 = !DILocation(line: 162, column: 35, scope: !559)
!663 = !DILocation(line: 162, column: 3, scope: !559)
!664 = !DILocation(line: 166, column: 36, scope: !559)
!665 = !DILocation(line: 166, column: 47, scope: !559)
!666 = !DILocation(line: 165, column: 17, scope: !559)
!667 = !DILocation(line: 165, column: 15, scope: !559)
!668 = !DILocation(line: 167, column: 31, scope: !559)
!669 = !DILocation(line: 167, column: 35, scope: !559)
!670 = !DILocation(line: 167, column: 3, scope: !559)
!671 = !DILocation(line: 174, column: 24, scope: !559)
!672 = !DILocation(line: 174, column: 35, scope: !559)
!673 = !DILocation(line: 170, column: 20, scope: !559)
!674 = !DILocation(line: 170, column: 18, scope: !559)
!675 = !DILocation(line: 175, column: 31, scope: !559)
!676 = !DILocation(line: 175, column: 35, scope: !559)
!677 = !DILocation(line: 175, column: 3, scope: !559)
!678 = !DILocation(line: 176, column: 21, scope: !559)
!679 = !DILocation(line: 176, column: 37, scope: !559)
!680 = !DILocation(line: 176, column: 3, scope: !559)
!681 = !DILocation(line: 177, column: 48, scope: !559)
!682 = !DILocation(line: 177, column: 34, scope: !559)
!683 = !DILocation(line: 177, column: 3, scope: !559)
!684 = !DILocation(line: 177, column: 14, scope: !559)
!685 = !DILocation(line: 177, column: 32, scope: !559)
!686 = !DILocation(line: 181, column: 16, scope: !559)
!687 = !DILocation(line: 181, column: 27, scope: !559)
!688 = !DILocation(line: 180, column: 12, scope: !559)
!689 = !DILocation(line: 180, column: 10, scope: !559)
!690 = !DILocation(line: 182, column: 35, scope: !559)
!691 = !DILocation(line: 182, column: 3, scope: !559)
!692 = !DILocation(line: 183, column: 31, scope: !559)
!693 = !DILocation(line: 183, column: 35, scope: !559)
!694 = !DILocation(line: 183, column: 3, scope: !559)
!695 = !DILocation(line: 187, column: 32, scope: !559)
!696 = !DILocation(line: 187, column: 43, scope: !559)
!697 = !DILocation(line: 186, column: 12, scope: !559)
!698 = !DILocation(line: 186, column: 10, scope: !559)
!699 = !DILocation(line: 188, column: 31, scope: !559)
!700 = !DILocation(line: 188, column: 35, scope: !559)
!701 = !DILocation(line: 188, column: 3, scope: !559)
!702 = !DILocation(line: 189, column: 35, scope: !559)
!703 = !DILocation(line: 189, column: 3, scope: !559)
!704 = !DILocation(line: 192, column: 37, scope: !559)
!705 = !DILocation(line: 192, column: 48, scope: !559)
!706 = !DILocation(line: 192, column: 14, scope: !559)
!707 = !DILocation(line: 192, column: 12, scope: !559)
!708 = !DILocation(line: 193, column: 31, scope: !559)
!709 = !DILocation(line: 193, column: 35, scope: !559)
!710 = !DILocation(line: 193, column: 3, scope: !559)
!711 = !DILocation(line: 198, column: 8, scope: !559)
!712 = !DILocation(line: 198, column: 19, scope: !559)
!713 = !DILocation(line: 196, column: 14, scope: !559)
!714 = !DILocation(line: 196, column: 12, scope: !559)
!715 = !DILocation(line: 199, column: 21, scope: !559)
!716 = !DILocation(line: 199, column: 31, scope: !559)
!717 = !DILocation(line: 199, column: 3, scope: !559)
!718 = !DILocation(line: 200, column: 31, scope: !559)
!719 = !DILocation(line: 200, column: 35, scope: !559)
!720 = !DILocation(line: 200, column: 3, scope: !559)
!721 = !DILocation(line: 206, column: 8, scope: !559)
!722 = !DILocation(line: 206, column: 19, scope: !559)
!723 = !DILocation(line: 203, column: 19, scope: !559)
!724 = !DILocation(line: 203, column: 17, scope: !559)
!725 = !DILocation(line: 207, column: 26, scope: !559)
!726 = !DILocation(line: 207, column: 3, scope: !559)
!727 = !DILocation(line: 208, column: 32, scope: !559)
!728 = !DILocation(line: 208, column: 3, scope: !559)
!729 = !DILocation(line: 209, column: 31, scope: !559)
!730 = !DILocation(line: 209, column: 35, scope: !559)
!731 = !DILocation(line: 209, column: 3, scope: !559)
!732 = !DILocation(line: 214, column: 8, scope: !559)
!733 = !DILocation(line: 214, column: 19, scope: !559)
!734 = !DILocation(line: 212, column: 12, scope: !559)
!735 = !DILocation(line: 212, column: 10, scope: !559)
!736 = !DILocation(line: 215, column: 32, scope: !559)
!737 = !DILocation(line: 215, column: 3, scope: !559)
!738 = !DILocation(line: 216, column: 19, scope: !559)
!739 = !DILocation(line: 216, column: 27, scope: !559)
!740 = !DILocation(line: 216, column: 3, scope: !559)
!741 = !DILocation(line: 217, column: 31, scope: !559)
!742 = !DILocation(line: 217, column: 35, scope: !559)
!743 = !DILocation(line: 217, column: 3, scope: !559)
!744 = !DILocation(line: 221, column: 8, scope: !559)
!745 = !DILocation(line: 221, column: 19, scope: !559)
!746 = !DILocation(line: 220, column: 12, scope: !559)
!747 = !DILocation(line: 220, column: 10, scope: !559)
!748 = !DILocation(line: 222, column: 32, scope: !559)
!749 = !DILocation(line: 222, column: 3, scope: !559)
!750 = !DILocation(line: 223, column: 31, scope: !559)
!751 = !DILocation(line: 223, column: 35, scope: !559)
!752 = !DILocation(line: 223, column: 3, scope: !559)
!753 = !DILocation(line: 227, column: 31, scope: !559)
!754 = !DILocation(line: 227, column: 42, scope: !559)
!755 = !DILocation(line: 226, column: 12, scope: !559)
!756 = !DILocation(line: 226, column: 10, scope: !559)
!757 = !DILocation(line: 228, column: 31, scope: !559)
!758 = !DILocation(line: 228, column: 35, scope: !559)
!759 = !DILocation(line: 228, column: 3, scope: !559)
!760 = !DILocation(line: 229, column: 35, scope: !559)
!761 = !DILocation(line: 229, column: 3, scope: !559)
!762 = !DILocation(line: 233, column: 31, scope: !559)
!763 = !DILocation(line: 233, column: 42, scope: !559)
!764 = !DILocation(line: 232, column: 12, scope: !559)
!765 = !DILocation(line: 232, column: 10, scope: !559)
!766 = !DILocation(line: 234, column: 31, scope: !559)
!767 = !DILocation(line: 234, column: 35, scope: !559)
!768 = !DILocation(line: 234, column: 3, scope: !559)
!769 = !DILocation(line: 235, column: 35, scope: !559)
!770 = !DILocation(line: 235, column: 3, scope: !559)
!771 = !DILocation(line: 239, column: 31, scope: !559)
!772 = !DILocation(line: 239, column: 42, scope: !559)
!773 = !DILocation(line: 238, column: 12, scope: !559)
!774 = !DILocation(line: 238, column: 10, scope: !559)
!775 = !DILocation(line: 240, column: 31, scope: !559)
!776 = !DILocation(line: 240, column: 35, scope: !559)
!777 = !DILocation(line: 240, column: 3, scope: !559)
!778 = !DILocation(line: 241, column: 35, scope: !559)
!779 = !DILocation(line: 241, column: 3, scope: !559)
!780 = !DILocation(line: 245, column: 32, scope: !559)
!781 = !DILocation(line: 245, column: 43, scope: !559)
!782 = !DILocation(line: 244, column: 12, scope: !559)
!783 = !DILocation(line: 244, column: 10, scope: !559)
!784 = !DILocation(line: 246, column: 31, scope: !559)
!785 = !DILocation(line: 246, column: 35, scope: !559)
!786 = !DILocation(line: 246, column: 3, scope: !559)
!787 = !DILocation(line: 247, column: 35, scope: !559)
!788 = !DILocation(line: 247, column: 3, scope: !559)
!789 = !DILocation(line: 251, column: 32, scope: !559)
!790 = !DILocation(line: 251, column: 43, scope: !559)
!791 = !DILocation(line: 250, column: 12, scope: !559)
!792 = !DILocation(line: 250, column: 10, scope: !559)
!793 = !DILocation(line: 252, column: 31, scope: !559)
!794 = !DILocation(line: 252, column: 35, scope: !559)
!795 = !DILocation(line: 252, column: 3, scope: !559)
!796 = !DILocation(line: 253, column: 35, scope: !559)
!797 = !DILocation(line: 253, column: 3, scope: !559)
!798 = !DILocation(line: 257, column: 32, scope: !559)
!799 = !DILocation(line: 257, column: 43, scope: !559)
!800 = !DILocation(line: 256, column: 12, scope: !559)
!801 = !DILocation(line: 256, column: 10, scope: !559)
!802 = !DILocation(line: 258, column: 31, scope: !559)
!803 = !DILocation(line: 258, column: 35, scope: !559)
!804 = !DILocation(line: 258, column: 3, scope: !559)
!805 = !DILocation(line: 259, column: 35, scope: !559)
!806 = !DILocation(line: 259, column: 3, scope: !559)
!807 = !DILocation(line: 264, column: 32, scope: !559)
!808 = !DILocation(line: 264, column: 43, scope: !559)
!809 = !DILocation(line: 262, column: 12, scope: !559)
!810 = !DILocation(line: 262, column: 10, scope: !559)
!811 = !DILocation(line: 265, column: 31, scope: !559)
!812 = !DILocation(line: 265, column: 35, scope: !559)
!813 = !DILocation(line: 265, column: 3, scope: !559)
!814 = !DILocation(line: 266, column: 35, scope: !559)
!815 = !DILocation(line: 266, column: 3, scope: !559)
!816 = !DILocation(line: 268, column: 33, scope: !559)
!817 = !DILocation(line: 268, column: 3, scope: !559)
!818 = !DILocation(line: 270, column: 10, scope: !559)
!819 = !DILocation(line: 271, column: 1, scope: !559)
!820 = !DILocation(line: 270, column: 3, scope: !559)
!821 = distinct !DISubprogram(name: "gt_seqcorrect_arguments_check", scope: !2, file: !2, line: 306, type: !422, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !822)
!822 = !{!823, !824, !825, !826, !827}
!823 = !DILocalVariable(name: "rest_argc", arg: 1, scope: !821, file: !2, line: 306, type: !380)
!824 = !DILocalVariable(name: "tool_arguments", arg: 2, scope: !821, file: !2, line: 307, type: !377)
!825 = !DILocalVariable(name: "err", arg: 3, scope: !821, file: !2, line: 308, type: !424)
!826 = !DILocalVariable(name: "arguments", scope: !821, file: !2, line: 310, type: !437)
!827 = !DILocalVariable(name: "haserr", scope: !821, file: !2, line: 311, type: !442)
!828 = !{!492, !492, i64 0}
!829 = !DILocation(line: 306, column: 56, scope: !821)
!830 = !DILocation(line: 307, column: 48, scope: !821)
!831 = !DILocation(line: 308, column: 51, scope: !821)
!832 = !DILocation(line: 310, column: 3, scope: !821)
!833 = !DILocation(line: 310, column: 26, scope: !821)
!834 = !DILocation(line: 310, column: 38, scope: !821)
!835 = !DILocation(line: 311, column: 3, scope: !821)
!836 = !DILocation(line: 311, column: 8, scope: !821)
!837 = !{!491, !491, i64 0}
!838 = !DILocation(line: 313, column: 3, scope: !821)
!839 = !DILocation(line: 313, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 313, column: 3)
!841 = distinct !DILexicalBlock(scope: !821, file: !2, line: 313, column: 3)
!842 = !DILocation(line: 313, column: 3, scope: !841)
!843 = !DILocation(line: 313, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !2, line: 313, column: 3)
!845 = !DILocation(line: 314, column: 8, scope: !846)
!846 = distinct !DILexicalBlock(scope: !821, file: !2, line: 314, column: 7)
!847 = !{i8 0, i8 2}
!848 = !{}
!849 = !DILocation(line: 314, column: 15, scope: !846)
!850 = !DILocation(line: 314, column: 35, scope: !846)
!851 = !DILocation(line: 314, column: 46, scope: !846)
!852 = !DILocation(line: 314, column: 18, scope: !846)
!853 = !DILocation(line: 314, column: 7, scope: !821)
!854 = !DILocation(line: 316, column: 36, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !2, line: 316, column: 9)
!856 = distinct !DILexicalBlock(scope: !846, file: !2, line: 315, column: 3)
!857 = !DILocation(line: 316, column: 47, scope: !855)
!858 = !DILocation(line: 318, column: 35, scope: !855)
!859 = !DILocation(line: 318, column: 46, scope: !855)
!860 = !DILocation(line: 319, column: 35, scope: !855)
!861 = !DILocation(line: 316, column: 9, scope: !855)
!862 = !DILocation(line: 319, column: 40, scope: !855)
!863 = !DILocation(line: 316, column: 9, scope: !856)
!864 = !DILocation(line: 321, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !855, file: !2, line: 320, column: 5)
!866 = !DILocation(line: 322, column: 5, scope: !865)
!867 = !DILocation(line: 323, column: 3, scope: !856)
!868 = !DILocation(line: 324, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !821, file: !2, line: 324, column: 7)
!870 = !DILocation(line: 324, column: 7, scope: !821)
!871 = !DILocation(line: 325, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !2, line: 325, column: 9)
!873 = distinct !DILexicalBlock(scope: !869, file: !2, line: 324, column: 16)
!874 = !DILocation(line: 325, column: 20, scope: !872)
!875 = !{!490, !491, i64 8}
!876 = !DILocation(line: 325, column: 32, scope: !872)
!877 = !DILocation(line: 325, column: 35, scope: !872)
!878 = !DILocation(line: 325, column: 46, scope: !872)
!879 = !{!490, !492, i64 40}
!880 = !DILocation(line: 325, column: 57, scope: !872)
!881 = !DILocation(line: 325, column: 9, scope: !873)
!882 = !DILocation(line: 327, column: 20, scope: !883)
!883 = distinct !DILexicalBlock(scope: !872, file: !2, line: 326, column: 5)
!884 = !DILocation(line: 327, column: 7, scope: !883)
!885 = !DILocation(line: 328, column: 14, scope: !883)
!886 = !DILocation(line: 329, column: 5, scope: !883)
!887 = !DILocation(line: 330, column: 3, scope: !873)
!888 = !DILocation(line: 331, column: 10, scope: !821)
!889 = !DILocation(line: 332, column: 1, scope: !821)
!890 = !DILocation(line: 331, column: 3, scope: !821)
!891 = distinct !DISubprogram(name: "gt_seqcorrect_runner", scope: !2, file: !2, line: 684, type: !430, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !892)
!892 = !{!893, !894, !895, !896, !897, !898, !899, !904, !908, !913, !918, !919, !920}
!893 = !DILocalVariable(name: "argc", arg: 1, scope: !891, file: !2, line: 684, type: !380)
!894 = !DILocalVariable(name: "argv", arg: 2, scope: !891, file: !2, line: 685, type: !432)
!895 = !DILocalVariable(name: "parsed_args", arg: 3, scope: !891, file: !2, line: 686, type: !380)
!896 = !DILocalVariable(name: "tool_arguments", arg: 4, scope: !891, file: !2, line: 687, type: !377)
!897 = !DILocalVariable(name: "err", arg: 5, scope: !891, file: !2, line: 688, type: !424)
!898 = !DILocalVariable(name: "arguments", scope: !891, file: !2, line: 690, type: !437)
!899 = !DILocalVariable(name: "el", scope: !891, file: !2, line: 691, type: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqLoader", file: !902, line: 57, baseType: !903)
!902 = !DIFile(filename: "src/core/encseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "bab4512cadee996edd2995020539d931")
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseqLoader", file: !902, line: 57, flags: DIFlagFwdDecl)
!904 = !DILocalVariable(name: "encseq", scope: !891, file: !2, line: 692, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseq", file: !902, line: 48, baseType: !907)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseq", file: !902, line: 48, flags: DIFlagFwdDecl)
!908 = !DILocalVariable(name: "timer", scope: !891, file: !2, line: 693, type: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTimer", file: !911, line: 29, baseType: !912)
!911 = !DIFile(filename: "src/core/timer_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "852c50f033e5ef05505f9a97667e02e4")
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTimer", file: !911, line: 29, flags: DIFlagFwdDecl)
!913 = !DILocalVariable(name: "default_logger", scope: !891, file: !2, line: 694, type: !914)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLogger", file: !916, line: 26, baseType: !917)
!916 = !DIFile(filename: "src/core/logger_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "076ebb09feb7de7a97ee09fc11eb7134")
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLogger", file: !916, line: 26, flags: DIFlagFwdDecl)
!918 = !DILocalVariable(name: "verbose_logger", scope: !891, file: !2, line: 694, type: !914)
!919 = !DILocalVariable(name: "haserr", scope: !891, file: !2, line: 695, type: !442)
!920 = !DILocalVariable(name: "md5path", scope: !921, file: !2, line: 742, type: !461)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 741, column: 7)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 740, column: 11)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 735, column: 5)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 734, column: 9)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 724, column: 3)
!926 = distinct !DILexicalBlock(scope: !891, file: !2, line: 723, column: 7)
!927 = !DILocation(line: 684, column: 47, scope: !891)
!928 = !DILocation(line: 685, column: 28, scope: !891)
!929 = !DILocation(line: 686, column: 19, scope: !891)
!930 = !DILocation(line: 687, column: 11, scope: !891)
!931 = !DILocation(line: 688, column: 14, scope: !891)
!932 = !DILocation(line: 690, column: 3, scope: !891)
!933 = !DILocation(line: 690, column: 26, scope: !891)
!934 = !DILocation(line: 690, column: 38, scope: !891)
!935 = !DILocation(line: 691, column: 3, scope: !891)
!936 = !DILocation(line: 691, column: 19, scope: !891)
!937 = !DILocation(line: 692, column: 3, scope: !891)
!938 = !DILocation(line: 692, column: 13, scope: !891)
!939 = !DILocation(line: 693, column: 3, scope: !891)
!940 = !DILocation(line: 693, column: 12, scope: !891)
!941 = !DILocation(line: 694, column: 3, scope: !891)
!942 = !DILocation(line: 694, column: 13, scope: !891)
!943 = !DILocation(line: 694, column: 30, scope: !891)
!944 = !DILocation(line: 695, column: 3, scope: !891)
!945 = !DILocation(line: 695, column: 8, scope: !891)
!946 = !DILocation(line: 697, column: 3, scope: !891)
!947 = !DILocation(line: 697, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 697, column: 3)
!949 = distinct !DILexicalBlock(scope: !891, file: !2, line: 697, column: 3)
!950 = !DILocation(line: 697, column: 3, scope: !949)
!951 = !DILocation(line: 697, column: 3, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !2, line: 697, column: 3)
!953 = !DILocation(line: 698, column: 3, scope: !891)
!954 = !DILocation(line: 698, column: 3, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 698, column: 3)
!956 = distinct !DILexicalBlock(scope: !891, file: !2, line: 698, column: 3)
!957 = !DILocation(line: 698, column: 3, scope: !956)
!958 = !DILocation(line: 698, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !2, line: 698, column: 3)
!960 = !DILocation(line: 700, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !891, file: !2, line: 700, column: 7)
!962 = !DILocation(line: 700, column: 7, scope: !891)
!963 = !DILocation(line: 702, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !2, line: 701, column: 3)
!965 = !DILocation(line: 702, column: 11, scope: !964)
!966 = !DILocation(line: 703, column: 40, scope: !964)
!967 = !DILocation(line: 703, column: 5, scope: !964)
!968 = !DILocation(line: 704, column: 20, scope: !964)
!969 = !DILocation(line: 704, column: 5, scope: !964)
!970 = !DILocation(line: 705, column: 3, scope: !964)
!971 = !DILocation(line: 707, column: 20, scope: !891)
!972 = !DILocation(line: 707, column: 31, scope: !891)
!973 = !{!490, !491, i64 2}
!974 = !DILocation(line: 707, column: 19, scope: !891)
!975 = !DILocation(line: 707, column: 62, scope: !891)
!976 = !DILocation(line: 707, column: 5, scope: !891)
!977 = !DILocation(line: 706, column: 18, scope: !891)
!978 = !DILocation(line: 708, column: 17, scope: !891)
!979 = !DILocation(line: 708, column: 3, scope: !891)
!980 = !DILocation(line: 710, column: 19, scope: !891)
!981 = !DILocation(line: 710, column: 30, scope: !891)
!982 = !{!490, !491, i64 1}
!983 = !DILocation(line: 710, column: 63, scope: !891)
!984 = !DILocation(line: 710, column: 5, scope: !891)
!985 = !DILocation(line: 709, column: 18, scope: !891)
!986 = !DILocation(line: 711, column: 17, scope: !891)
!987 = !DILocation(line: 711, column: 3, scope: !891)
!988 = !DILocation(line: 713, column: 25, scope: !989)
!989 = distinct !DILexicalBlock(scope: !891, file: !2, line: 713, column: 7)
!990 = !DILocation(line: 713, column: 36, scope: !989)
!991 = !DILocation(line: 713, column: 7, scope: !989)
!992 = !DILocation(line: 713, column: 40, scope: !989)
!993 = !DILocation(line: 713, column: 7, scope: !891)
!994 = !DILocation(line: 716, column: 28, scope: !995)
!995 = distinct !DILexicalBlock(scope: !989, file: !2, line: 714, column: 3)
!996 = !DILocation(line: 716, column: 39, scope: !995)
!997 = !DILocation(line: 716, column: 55, scope: !995)
!998 = !DILocation(line: 716, column: 71, scope: !995)
!999 = !DILocation(line: 716, column: 7, scope: !995)
!1000 = !DILocation(line: 715, column: 12, scope: !995)
!1001 = !DILocation(line: 717, column: 3, scope: !995)
!1002 = !DILocation(line: 720, column: 19, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !989, file: !2, line: 719, column: 3)
!1004 = !DILocation(line: 721, column: 20, scope: !1003)
!1005 = !DILocation(line: 721, column: 31, scope: !1003)
!1006 = !DILocation(line: 721, column: 9, scope: !1003)
!1007 = !DILocation(line: 720, column: 5, scope: !1003)
!1008 = !DILocation(line: 723, column: 8, scope: !926)
!1009 = !DILocation(line: 723, column: 7, scope: !891)
!1010 = !DILocation(line: 725, column: 10, scope: !925)
!1011 = !DILocation(line: 725, column: 8, scope: !925)
!1012 = !DILocation(line: 726, column: 47, scope: !925)
!1013 = !DILocation(line: 726, column: 5, scope: !925)
!1014 = !DILocation(line: 727, column: 42, scope: !925)
!1015 = !DILocation(line: 727, column: 5, scope: !925)
!1016 = !DILocation(line: 728, column: 36, scope: !925)
!1017 = !DILocation(line: 728, column: 51, scope: !925)
!1018 = !DILocation(line: 728, column: 62, scope: !925)
!1019 = !DILocation(line: 728, column: 40, scope: !925)
!1020 = !DILocation(line: 729, column: 9, scope: !925)
!1021 = !DILocation(line: 728, column: 14, scope: !925)
!1022 = !DILocation(line: 728, column: 12, scope: !925)
!1023 = !DILocation(line: 730, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !925, file: !2, line: 730, column: 9)
!1025 = !DILocation(line: 730, column: 16, scope: !1024)
!1026 = !DILocation(line: 730, column: 9, scope: !925)
!1027 = !DILocation(line: 732, column: 14, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 731, column: 5)
!1029 = !DILocation(line: 733, column: 5, scope: !1028)
!1030 = !DILocation(line: 734, column: 10, scope: !924)
!1031 = !DILocation(line: 734, column: 9, scope: !925)
!1032 = !DILocation(line: 736, column: 28, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !923, file: !2, line: 736, column: 11)
!1034 = !DILocation(line: 736, column: 36, scope: !1033)
!1035 = !DILocation(line: 736, column: 11, scope: !1033)
!1036 = !DILocation(line: 736, column: 41, scope: !1033)
!1037 = !DILocation(line: 736, column: 11, scope: !923)
!1038 = !DILocation(line: 738, column: 16, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 737, column: 7)
!1040 = !DILocation(line: 739, column: 7, scope: !1039)
!1041 = !DILocation(line: 740, column: 12, scope: !922)
!1042 = !DILocation(line: 740, column: 19, scope: !922)
!1043 = !DILocation(line: 740, column: 48, scope: !922)
!1044 = !DILocation(line: 740, column: 22, scope: !922)
!1045 = !DILocation(line: 740, column: 11, scope: !923)
!1046 = !DILocation(line: 742, column: 9, scope: !921)
!1047 = !DILocation(line: 742, column: 16, scope: !921)
!1048 = !DILocation(line: 742, column: 39, scope: !921)
!1049 = !DILocation(line: 742, column: 50, scope: !921)
!1050 = !DILocation(line: 742, column: 26, scope: !921)
!1051 = !DILocation(line: 743, column: 28, scope: !921)
!1052 = !DILocation(line: 743, column: 9, scope: !921)
!1053 = !DILocation(line: 744, column: 31, scope: !921)
!1054 = !DILocation(line: 744, column: 20, scope: !921)
!1055 = !DILocation(line: 744, column: 9, scope: !921)
!1056 = !DILocation(line: 747, column: 46, scope: !921)
!1057 = !DILocation(line: 747, column: 57, scope: !921)
!1058 = !DILocation(line: 747, column: 35, scope: !921)
!1059 = !DILocation(line: 745, column: 9, scope: !921)
!1060 = !DILocation(line: 748, column: 23, scope: !921)
!1061 = !DILocation(line: 748, column: 9, scope: !921)
!1062 = !DILocation(line: 749, column: 7, scope: !922)
!1063 = !DILocation(line: 749, column: 7, scope: !921)
!1064 = !DILocation(line: 750, column: 5, scope: !923)
!1065 = !DILocation(line: 751, column: 3, scope: !925)
!1066 = !DILocation(line: 752, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !891, file: !2, line: 752, column: 7)
!1068 = !DILocation(line: 752, column: 7, scope: !891)
!1069 = !DILocation(line: 754, column: 10, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 754, column: 9)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 753, column: 3)
!1072 = !DILocation(line: 754, column: 21, scope: !1070)
!1073 = !DILocation(line: 754, column: 9, scope: !1071)
!1074 = !DILocation(line: 755, column: 38, scope: !1070)
!1075 = !DILocation(line: 755, column: 49, scope: !1070)
!1076 = !DILocation(line: 755, column: 57, scope: !1070)
!1077 = !DILocation(line: 755, column: 73, scope: !1070)
!1078 = !DILocation(line: 756, column: 11, scope: !1070)
!1079 = !DILocation(line: 755, column: 16, scope: !1070)
!1080 = !DILocation(line: 755, column: 14, scope: !1070)
!1081 = !DILocation(line: 755, column: 7, scope: !1070)
!1082 = !DILocation(line: 758, column: 42, scope: !1070)
!1083 = !DILocation(line: 758, column: 53, scope: !1070)
!1084 = !DILocation(line: 758, column: 61, scope: !1070)
!1085 = !DILocation(line: 759, column: 11, scope: !1070)
!1086 = !DILocation(line: 759, column: 18, scope: !1070)
!1087 = !DILocation(line: 758, column: 16, scope: !1070)
!1088 = !DILocation(line: 758, column: 14, scope: !1070)
!1089 = !DILocation(line: 760, column: 3, scope: !1071)
!1090 = !DILocation(line: 761, column: 20, scope: !891)
!1091 = !DILocation(line: 761, column: 3, scope: !891)
!1092 = !DILocation(line: 762, column: 27, scope: !891)
!1093 = !DILocation(line: 762, column: 3, scope: !891)
!1094 = !DILocation(line: 763, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !891, file: !2, line: 763, column: 7)
!1096 = !DILocation(line: 763, column: 13, scope: !1095)
!1097 = !DILocation(line: 763, column: 7, scope: !891)
!1098 = !DILocation(line: 765, column: 34, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 764, column: 3)
!1100 = !DILocation(line: 765, column: 41, scope: !1099)
!1101 = !DILocation(line: 765, column: 5, scope: !1099)
!1102 = !DILocation(line: 766, column: 21, scope: !1099)
!1103 = !DILocation(line: 766, column: 5, scope: !1099)
!1104 = !DILocation(line: 767, column: 3, scope: !1099)
!1105 = !DILocation(line: 768, column: 20, scope: !891)
!1106 = !DILocation(line: 768, column: 3, scope: !891)
!1107 = !DILocation(line: 769, column: 20, scope: !891)
!1108 = !DILocation(line: 769, column: 3, scope: !891)
!1109 = !DILocation(line: 770, column: 10, scope: !891)
!1110 = !DILocation(line: 771, column: 1, scope: !891)
!1111 = !DILocation(line: 770, column: 3, scope: !891)
!1112 = !DISubprogram(name: "gt_calloc_mem", scope: !1113, file: !1113, line: 62, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!377, !1116, !1116, !433, !380}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1117, line: 70, baseType: !376)
!1117 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!1118 = !DISubprogram(name: "gt_str_new", scope: !463, file: !463, line: 30, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!461}
!1121 = !DISubprogram(name: "gt_str_array_new", scope: !474, file: !474, line: 27, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!472}
!1124 = !DISubprogram(name: "gt_str_delete", scope: !463, file: !463, line: 90, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !461}
!1127 = !DISubprogram(name: "gt_option_delete", scope: !418, file: !418, line: 371, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !468}
!1130 = !DISubprogram(name: "gt_str_array_delete", scope: !474, file: !474, line: 56, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !472}
!1133 = !DISubprogram(name: "gt_free_mem", scope: !1113, file: !1113, line: 75, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !377, !433, !380}
!1136 = !DISubprogram(name: "fprintf", scope: !1137, file: !1137, line: 350, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!380, !1140, !1195, null}
!1140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1143, line: 7, baseType: !1144)
!1143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1145, line: 49, size: 1728, elements: !1146)
!1145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1146 = !{!1147, !1148, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1165, !1166, !1167, !1171, !1173, !1175, !1179, !1182, !1184, !1187, !1190, !1191, !1192, !1193, !1194}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1144, file: !1145, line: 51, baseType: !380, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1144, file: !1145, line: 54, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1144, file: !1145, line: 55, baseType: !1149, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1144, file: !1145, line: 56, baseType: !1149, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1144, file: !1145, line: 57, baseType: !1149, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1144, file: !1145, line: 58, baseType: !1149, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1144, file: !1145, line: 59, baseType: !1149, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1144, file: !1145, line: 60, baseType: !1149, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1144, file: !1145, line: 61, baseType: !1149, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1144, file: !1145, line: 64, baseType: !1149, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1144, file: !1145, line: 65, baseType: !1149, size: 64, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1144, file: !1145, line: 66, baseType: !1149, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1144, file: !1145, line: 68, baseType: !1161, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1145, line: 36, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1144, file: !1145, line: 70, baseType: !1164, size: 64, offset: 832)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1144, file: !1145, line: 72, baseType: !380, size: 32, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1144, file: !1145, line: 73, baseType: !380, size: 32, offset: 928)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1144, file: !1145, line: 74, baseType: !1168, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1169, line: 152, baseType: !1170)
!1169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1170 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1144, file: !1145, line: 77, baseType: !1172, size: 16, offset: 1024)
!1172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1144, file: !1145, line: 78, baseType: !1174, size: 8, offset: 1040)
!1174 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1144, file: !1145, line: 79, baseType: !1176, size: 8, offset: 1048)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 1)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1144, file: !1145, line: 81, baseType: !1180, size: 64, offset: 1088)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1145, line: 43, baseType: null)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1144, file: !1145, line: 89, baseType: !1183, size: 64, offset: 1152)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1169, line: 153, baseType: !1170)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1144, file: !1145, line: 91, baseType: !1185, size: 64, offset: 1216)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1145, line: 37, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1144, file: !1145, line: 92, baseType: !1188, size: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1145, line: 38, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1144, file: !1145, line: 93, baseType: !1164, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1144, file: !1145, line: 94, baseType: !377, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1144, file: !1145, line: 95, baseType: !1116, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1144, file: !1145, line: 96, baseType: !380, size: 32, offset: 1536)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1144, file: !1145, line: 98, baseType: !254, size: 160, offset: 1568)
!1195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !433)
!1196 = !DISubprogram(name: "abort", scope: !1197, file: !1197, line: 598, type: !1198, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1197 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null}
!1200 = !DISubprogram(name: "gt_option_parser_new", scope: !418, file: !418, line: 63, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!416, !433, !433}
!1203 = !DISubprogram(name: "gt_option_new_filename_array", scope: !418, file: !418, line: 314, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!468, !433, !433, !472}
!1206 = !DISubprogram(name: "gt_option_hide_default", scope: !418, file: !418, line: 365, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1207 = !DISubprogram(name: "gt_option_parser_add_option", scope: !418, file: !418, line: 66, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !416, !468}
!1210 = !DISubprogram(name: "gt_option_new_string", scope: !418, file: !418, line: 291, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!468, !433, !433, !461, !433}
!1213 = !DISubprogram(name: "gt_option_is_mandatory_either", scope: !418, file: !418, line: 334, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !468, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!1218 = !DISubprogram(name: "gt_option_exclude", scope: !418, file: !418, line: 363, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !468, !468}
!1221 = !DISubprogram(name: "gt_option_new_uint_min", scope: !418, file: !418, line: 197, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!468, !433, !433, !1224, !379, !379}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1225 = !DISubprogram(name: "gt_option_is_mandatory", scope: !418, file: !418, line: 332, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubprogram(name: "gt_option_new_bool", scope: !418, file: !418, line: 130, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!468, !433, !433, !1229, !442}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1230 = !DISubprogram(name: "gt_option_is_development_option", scope: !418, file: !418, line: 350, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubprogram(name: "gt_option_new_uint", scope: !418, file: !418, line: 190, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!468, !433, !433, !1224, !379}
!1234 = !DISubprogram(name: "gt_option_ref", scope: !418, file: !418, line: 328, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!468, !468}
!1237 = !DISubprogram(name: "gt_option_new_verbose", scope: !418, file: !418, line: 322, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!468, !1229}
!1240 = !DISubprogram(name: "gt_option_new_uword", scope: !418, file: !418, line: 227, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!468, !433, !433, !1243, !384}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1244 = !DISubprogram(name: "gt_option_is_extended_option", scope: !418, file: !418, line: 348, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DISubprogram(name: "gt_option_new_uint_max", scope: !418, file: !418, line: 205, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubprogram(name: "gt_option_imply", scope: !418, file: !418, line: 352, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubprogram(name: "gt_option_parser_set_max_args", scope: !418, file: !418, line: 105, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !416, !379}
!1250 = !DISubprogram(name: "gt_error_is_set", scope: !426, file: !426, line: 64, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!442, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!1255 = !DISubprogram(name: "gt_option_is_set", scope: !418, file: !418, line: 369, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!442, !1216}
!1258 = !DISubprogram(name: "gt_option_parse_spacespec", scope: !418, file: !418, line: 376, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!380, !1243, !433, !1261, !424}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!1263 = !DISubprogram(name: "gt_error_set", scope: !426, file: !426, line: 56, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !424, !433, null}
!1266 = !DISubprogram(name: "gt_showtime_enabled", scope: !1267, file: !1267, line: 32, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DIFile(filename: "src/core/showtime.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a292030ade336822ea76eddc00c1a97c")
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!442}
!1270 = !DISubprogram(name: "gt_timer_new_with_progress_description", scope: !911, file: !911, line: 34, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!909, !433}
!1273 = !DISubprogram(name: "gt_timer_show_cpu_time_by_progress", scope: !911, file: !911, line: 71, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !909}
!1276 = !DISubprogram(name: "gt_timer_start", scope: !911, file: !911, line: 36, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1277 = !DISubprogram(name: "gt_logger_new", scope: !916, file: !916, line: 32, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!914, !442, !433, !1141}
!1280 = !DISubprogram(name: "gt_logger_log", scope: !916, file: !916, line: 47, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !914, !433, null}
!1283 = !DISubprogram(name: "gt_str_array_size", scope: !474, file: !474, line: 54, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!384, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!1288 = distinct !DISubprogram(name: "gt_seqcorrect_encode", scope: !2, file: !2, line: 384, type: !1289, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!442, !437, !914, !914, !424}
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1302, !1303, !1304, !1308, !1311, !1312, !1313, !1314}
!1292 = !DILocalVariable(name: "arguments", arg: 1, scope: !1288, file: !2, line: 384, type: !437)
!1293 = !DILocalVariable(name: "default_logger", arg: 2, scope: !1288, file: !2, line: 385, type: !914)
!1294 = !DILocalVariable(name: "verbose_logger", arg: 3, scope: !1288, file: !2, line: 385, type: !914)
!1295 = !DILocalVariable(name: "err", arg: 4, scope: !1288, file: !2, line: 385, type: !424)
!1296 = !DILocalVariable(name: "haserr", scope: !1288, file: !2, line: 387, type: !442)
!1297 = !DILocalVariable(name: "r2t", scope: !1288, file: !2, line: 388, type: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtReads2Twobit", file: !1300, line: 28, baseType: !1301)
!1300 = !DIFile(filename: "src/match/reads2twobit.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "67948806ca5e5de4aec06bfdd7138b6b")
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtReads2Twobit", file: !1300, line: 28, flags: DIFlagFwdDecl)
!1302 = !DILocalVariable(name: "i", scope: !1288, file: !2, line: 389, type: !384)
!1303 = !DILocalVariable(name: "autoindexname", scope: !1288, file: !2, line: 390, type: !442)
!1304 = !DILocalVariable(name: "dbentry", scope: !1305, file: !2, line: 414, type: !461)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 413, column: 3)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 412, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 412, column: 3)
!1308 = !DILocalVariable(name: "nofreads_valid", scope: !1309, file: !2, line: 429, type: !384)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 428, column: 3)
!1310 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 427, column: 7)
!1311 = !DILocalVariable(name: "nofreads_invalid", scope: !1309, file: !2, line: 429, type: !384)
!1312 = !DILocalVariable(name: "nofreads_input", scope: !1309, file: !2, line: 429, type: !384)
!1313 = !DILocalVariable(name: "tlen_valid", scope: !1309, file: !2, line: 430, type: !384)
!1314 = !DILocalVariable(name: "varlen", scope: !1309, file: !2, line: 431, type: !442)
!1315 = !DILocation(line: 384, column: 57, scope: !1288)
!1316 = !DILocation(line: 385, column: 15, scope: !1288)
!1317 = !DILocation(line: 385, column: 41, scope: !1288)
!1318 = !DILocation(line: 385, column: 66, scope: !1288)
!1319 = !DILocation(line: 387, column: 3, scope: !1288)
!1320 = !DILocation(line: 387, column: 8, scope: !1288)
!1321 = !DILocation(line: 388, column: 3, scope: !1288)
!1322 = !DILocation(line: 388, column: 19, scope: !1288)
!1323 = !DILocation(line: 389, column: 3, scope: !1288)
!1324 = !DILocation(line: 389, column: 11, scope: !1288)
!1325 = !DILocation(line: 390, column: 3, scope: !1288)
!1326 = !DILocation(line: 390, column: 8, scope: !1288)
!1327 = !DILocation(line: 392, column: 17, scope: !1288)
!1328 = !DILocation(line: 392, column: 3, scope: !1288)
!1329 = !DILocation(line: 393, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 393, column: 7)
!1331 = !DILocation(line: 393, column: 32, scope: !1330)
!1332 = !DILocation(line: 393, column: 7, scope: !1330)
!1333 = !DILocation(line: 393, column: 43, scope: !1330)
!1334 = !DILocation(line: 393, column: 7, scope: !1288)
!1335 = !DILocation(line: 395, column: 19, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 394, column: 3)
!1337 = !DILocation(line: 396, column: 24, scope: !1336)
!1338 = !DILocation(line: 396, column: 35, scope: !1336)
!1339 = !DILocation(line: 397, column: 26, scope: !1336)
!1340 = !DILocation(line: 397, column: 37, scope: !1336)
!1341 = !DILocation(line: 397, column: 9, scope: !1336)
!1342 = !DILocation(line: 396, column: 5, scope: !1336)
!1343 = !DILocation(line: 398, column: 3, scope: !1336)
!1344 = !DILocation(line: 399, column: 17, scope: !1288)
!1345 = !DILocation(line: 400, column: 18, scope: !1288)
!1346 = !DILocation(line: 400, column: 29, scope: !1288)
!1347 = !DILocation(line: 400, column: 7, scope: !1288)
!1348 = !DILocation(line: 400, column: 41, scope: !1288)
!1349 = !DILocation(line: 399, column: 3, scope: !1288)
!1350 = !DILocation(line: 403, column: 29, scope: !1288)
!1351 = !DILocation(line: 403, column: 40, scope: !1288)
!1352 = !DILocation(line: 403, column: 9, scope: !1288)
!1353 = !DILocation(line: 403, column: 7, scope: !1288)
!1354 = !DILocation(line: 405, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 405, column: 7)
!1356 = !DILocation(line: 405, column: 18, scope: !1355)
!1357 = !{!490, !491, i64 96}
!1358 = !DILocation(line: 405, column: 7, scope: !1288)
!1359 = !DILocation(line: 406, column: 33, scope: !1355)
!1360 = !DILocation(line: 406, column: 5, scope: !1355)
!1361 = !DILocation(line: 408, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 408, column: 7)
!1363 = !DILocation(line: 408, column: 18, scope: !1362)
!1364 = !{!490, !493, i64 104}
!1365 = !DILocation(line: 408, column: 25, scope: !1362)
!1366 = !DILocation(line: 408, column: 7, scope: !1288)
!1367 = !DILocation(line: 409, column: 40, scope: !1362)
!1368 = !DILocation(line: 409, column: 45, scope: !1362)
!1369 = !DILocation(line: 409, column: 56, scope: !1362)
!1370 = !DILocation(line: 410, column: 15, scope: !1362)
!1371 = !DILocation(line: 410, column: 26, scope: !1362)
!1372 = !{!490, !492, i64 112}
!1373 = !DILocation(line: 410, column: 9, scope: !1362)
!1374 = !DILocation(line: 409, column: 5, scope: !1362)
!1375 = !DILocation(line: 412, column: 10, scope: !1307)
!1376 = !{!493, !493, i64 0}
!1377 = !DILocation(line: 412, column: 8, scope: !1307)
!1378 = !DILocation(line: 412, column: 15, scope: !1306)
!1379 = !DILocation(line: 412, column: 37, scope: !1306)
!1380 = !DILocation(line: 412, column: 48, scope: !1306)
!1381 = !DILocation(line: 412, column: 19, scope: !1306)
!1382 = !DILocation(line: 412, column: 17, scope: !1306)
!1383 = !DILocation(line: 412, column: 52, scope: !1306)
!1384 = !DILocation(line: 412, column: 56, scope: !1306)
!1385 = !DILocation(line: 412, column: 55, scope: !1306)
!1386 = !DILocation(line: 0, scope: !1306)
!1387 = !DILocation(line: 412, column: 3, scope: !1307)
!1388 = !DILocation(line: 414, column: 5, scope: !1305)
!1389 = !DILocation(line: 414, column: 12, scope: !1305)
!1390 = !DILocation(line: 414, column: 43, scope: !1305)
!1391 = !DILocation(line: 414, column: 54, scope: !1305)
!1392 = !DILocation(line: 414, column: 58, scope: !1305)
!1393 = !DILocation(line: 414, column: 22, scope: !1305)
!1394 = !DILocation(line: 415, column: 37, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 415, column: 9)
!1396 = !DILocation(line: 415, column: 42, scope: !1395)
!1397 = !DILocation(line: 415, column: 51, scope: !1395)
!1398 = !DILocation(line: 415, column: 9, scope: !1395)
!1399 = !DILocation(line: 415, column: 56, scope: !1395)
!1400 = !DILocation(line: 415, column: 9, scope: !1305)
!1401 = !DILocation(line: 416, column: 14, scope: !1395)
!1402 = !DILocation(line: 416, column: 7, scope: !1395)
!1403 = !DILocation(line: 417, column: 3, scope: !1306)
!1404 = !DILocation(line: 417, column: 3, scope: !1305)
!1405 = !DILocation(line: 412, column: 65, scope: !1306)
!1406 = !DILocation(line: 412, column: 3, scope: !1306)
!1407 = distinct !{!1407, !1387, !1408, !1409}
!1408 = !DILocation(line: 417, column: 3, scope: !1307)
!1409 = !{!"llvm.loop.mustprogress"}
!1410 = !DILocation(line: 418, column: 8, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 418, column: 7)
!1412 = !DILocation(line: 418, column: 7, scope: !1288)
!1413 = !DILocation(line: 420, column: 32, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 420, column: 9)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 419, column: 3)
!1416 = !DILocation(line: 420, column: 37, scope: !1414)
!1417 = !DILocation(line: 420, column: 9, scope: !1414)
!1418 = !DILocation(line: 420, column: 42, scope: !1414)
!1419 = !DILocation(line: 420, column: 9, scope: !1415)
!1420 = !DILocation(line: 421, column: 14, scope: !1414)
!1421 = !DILocation(line: 421, column: 7, scope: !1414)
!1422 = !DILocation(line: 422, column: 3, scope: !1415)
!1423 = !DILocation(line: 423, column: 3, scope: !1288)
!1424 = !DILocation(line: 423, column: 3, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 423, column: 3)
!1426 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 423, column: 3)
!1427 = !DILocation(line: 423, column: 3, scope: !1426)
!1428 = !DILocation(line: 423, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 423, column: 3)
!1430 = !DILocation(line: 424, column: 22, scope: !1288)
!1431 = !DILocation(line: 424, column: 33, scope: !1288)
!1432 = !DILocation(line: 425, column: 18, scope: !1288)
!1433 = !DILocation(line: 425, column: 29, scope: !1288)
!1434 = !DILocation(line: 425, column: 7, scope: !1288)
!1435 = !DILocation(line: 424, column: 3, scope: !1288)
!1436 = !DILocation(line: 427, column: 8, scope: !1310)
!1437 = !DILocation(line: 427, column: 7, scope: !1288)
!1438 = !DILocation(line: 429, column: 5, scope: !1309)
!1439 = !DILocation(line: 429, column: 13, scope: !1309)
!1440 = !DILocation(line: 429, column: 29, scope: !1309)
!1441 = !DILocation(line: 429, column: 47, scope: !1309)
!1442 = !DILocation(line: 430, column: 19, scope: !1309)
!1443 = !DILocation(line: 431, column: 5, scope: !1309)
!1444 = !DILocation(line: 431, column: 10, scope: !1309)
!1445 = !DILocation(line: 432, column: 46, scope: !1309)
!1446 = !DILocation(line: 432, column: 22, scope: !1309)
!1447 = !DILocation(line: 432, column: 20, scope: !1309)
!1448 = !DILocation(line: 433, column: 57, scope: !1309)
!1449 = !DILocation(line: 433, column: 24, scope: !1309)
!1450 = !DILocation(line: 433, column: 22, scope: !1309)
!1451 = !DILocation(line: 434, column: 22, scope: !1309)
!1452 = !DILocation(line: 434, column: 39, scope: !1309)
!1453 = !DILocation(line: 434, column: 37, scope: !1309)
!1454 = !DILocation(line: 434, column: 20, scope: !1309)
!1455 = !DILocation(line: 435, column: 50, scope: !1309)
!1456 = !DILocation(line: 435, column: 18, scope: !1309)
!1457 = !DILocation(line: 436, column: 31, scope: !1309)
!1458 = !DILocation(line: 436, column: 7, scope: !1309)
!1459 = !DILocation(line: 435, column: 55, scope: !1309)
!1460 = !DILocation(line: 435, column: 16, scope: !1309)
!1461 = !DILocation(line: 438, column: 19, scope: !1309)
!1462 = !DILocation(line: 439, column: 22, scope: !1309)
!1463 = !DILocation(line: 438, column: 5, scope: !1309)
!1464 = !DILocation(line: 441, column: 44, scope: !1309)
!1465 = !DILocation(line: 441, column: 15, scope: !1309)
!1466 = !DILocation(line: 441, column: 49, scope: !1309)
!1467 = !DILocation(line: 441, column: 12, scope: !1309)
!1468 = !DILocation(line: 442, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 442, column: 9)
!1470 = !DILocation(line: 442, column: 9, scope: !1309)
!1471 = !DILocation(line: 443, column: 21, scope: !1469)
!1472 = !DILocation(line: 444, column: 38, scope: !1469)
!1473 = !DILocation(line: 444, column: 11, scope: !1469)
!1474 = !DILocation(line: 444, column: 71, scope: !1469)
!1475 = !DILocation(line: 444, column: 44, scope: !1469)
!1476 = !DILocation(line: 443, column: 7, scope: !1469)
!1477 = !DILocation(line: 446, column: 21, scope: !1469)
!1478 = !DILocation(line: 447, column: 40, scope: !1469)
!1479 = !DILocation(line: 447, column: 11, scope: !1469)
!1480 = !DILocation(line: 447, column: 45, scope: !1469)
!1481 = !DILocation(line: 446, column: 7, scope: !1469)
!1482 = !DILocation(line: 449, column: 19, scope: !1309)
!1483 = !DILocation(line: 450, column: 9, scope: !1309)
!1484 = !DILocation(line: 450, column: 63, scope: !1309)
!1485 = !DILocation(line: 450, column: 22, scope: !1309)
!1486 = !DILocation(line: 450, column: 20, scope: !1309)
!1487 = !DILocation(line: 449, column: 5, scope: !1309)
!1488 = !DILocation(line: 451, column: 19, scope: !1309)
!1489 = !DILocation(line: 452, column: 31, scope: !1309)
!1490 = !DILocation(line: 452, column: 56, scope: !1309)
!1491 = !DILocation(line: 452, column: 49, scope: !1309)
!1492 = !DILocation(line: 452, column: 73, scope: !1309)
!1493 = !DILocation(line: 453, column: 22, scope: !1309)
!1494 = !DILocation(line: 453, column: 15, scope: !1309)
!1495 = !DILocation(line: 453, column: 13, scope: !1309)
!1496 = !DILocation(line: 451, column: 5, scope: !1309)
!1497 = !DILocation(line: 454, column: 10, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 454, column: 9)
!1499 = !DILocation(line: 454, column: 21, scope: !1498)
!1500 = !DILocation(line: 454, column: 9, scope: !1309)
!1501 = !DILocation(line: 455, column: 21, scope: !1498)
!1502 = !DILocation(line: 456, column: 11, scope: !1498)
!1503 = !DILocation(line: 455, column: 7, scope: !1498)
!1504 = !DILocation(line: 457, column: 10, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 457, column: 9)
!1506 = !DILocation(line: 457, column: 9, scope: !1309)
!1507 = !DILocation(line: 459, column: 40, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 459, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 458, column: 5)
!1510 = !DILocation(line: 459, column: 45, scope: !1508)
!1511 = !DILocation(line: 459, column: 11, scope: !1508)
!1512 = !DILocation(line: 459, column: 50, scope: !1508)
!1513 = !DILocation(line: 459, column: 11, scope: !1509)
!1514 = !DILocation(line: 460, column: 16, scope: !1508)
!1515 = !DILocation(line: 460, column: 9, scope: !1508)
!1516 = !DILocation(line: 461, column: 12, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 461, column: 11)
!1518 = !DILocation(line: 461, column: 11, scope: !1509)
!1519 = !DILocation(line: 463, column: 23, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 462, column: 7)
!1521 = !DILocation(line: 464, column: 61, scope: !1520)
!1522 = !DILocation(line: 463, column: 9, scope: !1520)
!1523 = !DILocation(line: 465, column: 23, scope: !1520)
!1524 = !DILocation(line: 466, column: 58, scope: !1520)
!1525 = !DILocation(line: 465, column: 9, scope: !1520)
!1526 = !DILocation(line: 467, column: 23, scope: !1520)
!1527 = !DILocation(line: 468, column: 24, scope: !1520)
!1528 = !DILocation(line: 468, column: 35, scope: !1520)
!1529 = !DILocation(line: 468, column: 13, scope: !1520)
!1530 = !DILocation(line: 468, column: 47, scope: !1520)
!1531 = !DILocation(line: 467, column: 9, scope: !1520)
!1532 = !DILocation(line: 470, column: 7, scope: !1520)
!1533 = !DILocation(line: 471, column: 5, scope: !1509)
!1534 = !DILocation(line: 472, column: 3, scope: !1310)
!1535 = !DILocation(line: 472, column: 3, scope: !1309)
!1536 = !DILocation(line: 473, column: 26, scope: !1288)
!1537 = !DILocation(line: 473, column: 3, scope: !1288)
!1538 = !DILocation(line: 475, column: 10, scope: !1288)
!1539 = !DILocation(line: 476, column: 1, scope: !1288)
!1540 = !DILocation(line: 475, column: 3, scope: !1288)
!1541 = !DISubprogram(name: "gt_str_get", scope: !463, file: !463, line: 40, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1149, !1261}
!1544 = !DISubprogram(name: "gt_encseq_loader_new", scope: !902, file: !902, line: 360, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!900}
!1547 = !DISubprogram(name: "gt_encseq_loader_drop_description_support", scope: !902, file: !902, line: 380, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !900}
!1550 = !DISubprogram(name: "gt_encseq_loader_disable_autosupport", scope: !902, file: !902, line: 367, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1551 = !DISubprogram(name: "gt_encseq_loader_load", scope: !902, file: !902, line: 453, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!905, !900, !433, !424}
!1554 = !DISubprogram(name: "gt_encseq_mirror", scope: !902, file: !902, line: 192, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!380, !905, !424}
!1557 = !DISubprogram(name: "gt_encseq_has_md5_support", scope: !902, file: !902, line: 149, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!442, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!1562 = !DISubprogram(name: "gt_str_clone", scope: !463, file: !463, line: 34, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!461, !1261}
!1565 = !DISubprogram(name: "gt_str_append_cstr", scope: !463, file: !463, line: 46, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !461, !433}
!1568 = !DISubprogram(name: "gt_xunlink", scope: !1569, file: !1569, line: 76, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DIFile(filename: "src/core/xposix_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9d1c486e63bab71c5fe708b249cd4801")
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !433}
!1572 = !DISubprogram(name: "gt_warning", scope: !1573, file: !1573, line: 29, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DIFile(filename: "src/core/warning_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e8655f31b131e8c066a84f1af283b08e")
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !433, null}
!1576 = distinct !DISubprogram(name: "gt_seqcorrect_correct", scope: !2, file: !2, line: 478, type: !1577, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!442, !437, !905, !914, !909, !424}
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1588, !1589, !1590, !1591, !1597, !1601, !1602, !1603, !1604}
!1580 = !DILocalVariable(name: "arguments", arg: 1, scope: !1576, file: !2, line: 478, type: !437)
!1581 = !DILocalVariable(name: "encseq", arg: 2, scope: !1576, file: !2, line: 479, type: !905)
!1582 = !DILocalVariable(name: "verbose_logger", arg: 3, scope: !1576, file: !2, line: 479, type: !914)
!1583 = !DILocalVariable(name: "timer", arg: 4, scope: !1576, file: !2, line: 479, type: !909)
!1584 = !DILocalVariable(name: "err", arg: 5, scope: !1576, file: !2, line: 479, type: !424)
!1585 = !DILocalVariable(name: "haserr", scope: !1576, file: !2, line: 481, type: !442)
!1586 = !DILocalVariable(name: "threads", scope: !1576, file: !2, line: 483, type: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!1588 = !DILocalVariable(name: "iteration", scope: !1576, file: !2, line: 487, type: !379)
!1589 = !DILocalVariable(name: "bucketkey_kmersize", scope: !1576, file: !2, line: 488, type: !379)
!1590 = !DILocalVariable(name: "cumulative_nofcorrections", scope: !1576, file: !2, line: 489, type: !384)
!1591 = !DILocalVariable(name: "data_array", scope: !1576, file: !2, line: 490, type: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRandomcodesCorrectData", file: !1595, line: 30, baseType: !1596)
!1595 = !DIFile(filename: "src/match/randomcodes-correct.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e840ca33b969ed38626430e397433665")
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtRandomcodesCorrectData", file: !1595, line: 30, flags: DIFlagFwdDecl)
!1597 = !DILocalVariable(name: "threadcount", scope: !1598, file: !2, line: 504, type: !379)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 503, column: 3)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 501, column: 3)
!1600 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 501, column: 3)
!1601 = !DILocalVariable(name: "nofkmergroups", scope: !1598, file: !2, line: 505, type: !384)
!1602 = !DILocalVariable(name: "nofkmeritvs", scope: !1598, file: !2, line: 505, type: !384)
!1603 = !DILocalVariable(name: "nofcorrections", scope: !1598, file: !2, line: 505, type: !384)
!1604 = !DILocalVariable(name: "nofkmers", scope: !1598, file: !2, line: 506, type: !384)
!1605 = !DILocation(line: 478, column: 58, scope: !1576)
!1606 = !DILocation(line: 479, column: 15, scope: !1576)
!1607 = !DILocation(line: 479, column: 33, scope: !1576)
!1608 = !DILocation(line: 479, column: 58, scope: !1576)
!1609 = !DILocation(line: 479, column: 74, scope: !1576)
!1610 = !DILocation(line: 481, column: 3, scope: !1576)
!1611 = !DILocation(line: 481, column: 8, scope: !1576)
!1612 = !DILocation(line: 483, column: 5, scope: !1576)
!1613 = !DILocation(line: 483, column: 24, scope: !1576)
!1614 = !DILocation(line: 483, column: 34, scope: !1576)
!1615 = !DILocation(line: 487, column: 3, scope: !1576)
!1616 = !DILocation(line: 487, column: 16, scope: !1576)
!1617 = !DILocation(line: 488, column: 3, scope: !1576)
!1618 = !DILocation(line: 488, column: 16, scope: !1576)
!1619 = !DILocation(line: 489, column: 3, scope: !1576)
!1620 = !DILocation(line: 489, column: 11, scope: !1576)
!1621 = !DILocation(line: 490, column: 3, scope: !1576)
!1622 = !DILocation(line: 490, column: 30, scope: !1576)
!1623 = !DILocation(line: 492, column: 16, scope: !1576)
!1624 = !DILocation(line: 492, column: 14, scope: !1576)
!1625 = !DILocation(line: 493, column: 40, scope: !1576)
!1626 = !DILocation(line: 493, column: 51, scope: !1576)
!1627 = !{!490, !492, i64 12}
!1628 = !DILocation(line: 493, column: 3, scope: !1576)
!1629 = !DILocation(line: 494, column: 45, scope: !1576)
!1630 = !DILocation(line: 495, column: 28, scope: !1576)
!1631 = !DILocation(line: 494, column: 12, scope: !1576)
!1632 = !DILocation(line: 494, column: 10, scope: !1576)
!1633 = !DILocation(line: 496, column: 17, scope: !1576)
!1634 = !DILocation(line: 497, column: 7, scope: !1576)
!1635 = !DILocation(line: 496, column: 3, scope: !1576)
!1636 = !DILocation(line: 498, column: 17, scope: !1576)
!1637 = !DILocation(line: 499, column: 7, scope: !1576)
!1638 = !DILocation(line: 499, column: 18, scope: !1576)
!1639 = !DILocation(line: 498, column: 3, scope: !1576)
!1640 = !DILocation(line: 501, column: 18, scope: !1600)
!1641 = !DILocation(line: 501, column: 8, scope: !1600)
!1642 = !DILocation(line: 501, column: 24, scope: !1599)
!1643 = !DILocation(line: 501, column: 37, scope: !1599)
!1644 = !DILocation(line: 501, column: 48, scope: !1599)
!1645 = !DILocation(line: 501, column: 34, scope: !1599)
!1646 = !DILocation(line: 501, column: 59, scope: !1599)
!1647 = !DILocation(line: 501, column: 63, scope: !1599)
!1648 = !DILocation(line: 501, column: 62, scope: !1599)
!1649 = !DILocation(line: 0, scope: !1599)
!1650 = !DILocation(line: 501, column: 3, scope: !1600)
!1651 = !DILocation(line: 504, column: 5, scope: !1598)
!1652 = !DILocation(line: 504, column: 18, scope: !1598)
!1653 = !DILocation(line: 505, column: 5, scope: !1598)
!1654 = !DILocation(line: 505, column: 13, scope: !1598)
!1655 = !DILocation(line: 505, column: 32, scope: !1598)
!1656 = !DILocation(line: 505, column: 49, scope: !1598)
!1657 = !DILocation(line: 506, column: 19, scope: !1598)
!1658 = !DILocation(line: 508, column: 19, scope: !1598)
!1659 = !DILocation(line: 509, column: 9, scope: !1598)
!1660 = !DILocation(line: 508, column: 5, scope: !1598)
!1661 = !DILocation(line: 511, column: 22, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 511, column: 5)
!1663 = !DILocation(line: 511, column: 10, scope: !1662)
!1664 = !DILocation(line: 511, column: 28, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 511, column: 5)
!1666 = !DILocation(line: 511, column: 35, scope: !1665)
!1667 = !DILocation(line: 511, column: 38, scope: !1665)
!1668 = !DILocation(line: 511, column: 52, scope: !1665)
!1669 = !DILocation(line: 511, column: 50, scope: !1665)
!1670 = !DILocation(line: 0, scope: !1665)
!1671 = !DILocation(line: 511, column: 5, scope: !1662)
!1672 = !DILocation(line: 513, column: 65, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 512, column: 5)
!1674 = !DILocation(line: 514, column: 11, scope: !1673)
!1675 = !DILocation(line: 514, column: 22, scope: !1673)
!1676 = !DILocation(line: 514, column: 43, scope: !1673)
!1677 = !DILocation(line: 514, column: 54, scope: !1673)
!1678 = !{!490, !492, i64 20}
!1679 = !DILocation(line: 515, column: 22, scope: !1673)
!1680 = !DILocation(line: 515, column: 33, scope: !1673)
!1681 = !DILocation(line: 515, column: 11, scope: !1673)
!1682 = !DILocation(line: 516, column: 53, scope: !1673)
!1683 = !DILocation(line: 516, column: 66, scope: !1673)
!1684 = !DILocation(line: 513, column: 33, scope: !1673)
!1685 = !DILocation(line: 513, column: 7, scope: !1673)
!1686 = !DILocation(line: 513, column: 18, scope: !1673)
!1687 = !DILocation(line: 513, column: 31, scope: !1673)
!1688 = !DILocation(line: 517, column: 12, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 517, column: 11)
!1690 = !DILocation(line: 517, column: 23, scope: !1689)
!1691 = !DILocation(line: 517, column: 37, scope: !1689)
!1692 = !DILocation(line: 517, column: 11, scope: !1673)
!1693 = !DILocation(line: 519, column: 16, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 518, column: 7)
!1695 = !DILocation(line: 520, column: 7, scope: !1694)
!1696 = !DILocation(line: 521, column: 5, scope: !1673)
!1697 = !DILocation(line: 511, column: 72, scope: !1665)
!1698 = !DILocation(line: 511, column: 5, scope: !1665)
!1699 = distinct !{!1699, !1671, !1700, !1409}
!1700 = !DILocation(line: 521, column: 5, scope: !1662)
!1701 = !DILocation(line: 522, column: 10, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 522, column: 9)
!1703 = !DILocation(line: 522, column: 9, scope: !1598)
!1704 = !DILocation(line: 524, column: 58, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 524, column: 11)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 523, column: 5)
!1707 = !DILocation(line: 525, column: 13, scope: !1705)
!1708 = !DILocation(line: 526, column: 13, scope: !1705)
!1709 = !DILocation(line: 526, column: 24, scope: !1705)
!1710 = !DILocation(line: 527, column: 13, scope: !1705)
!1711 = !DILocation(line: 527, column: 24, scope: !1705)
!1712 = !DILocation(line: 528, column: 13, scope: !1705)
!1713 = !DILocation(line: 528, column: 24, scope: !1705)
!1714 = !{!490, !491, i64 7}
!1715 = !DILocation(line: 528, column: 38, scope: !1705)
!1716 = !DILocation(line: 528, column: 49, scope: !1705)
!1717 = !DILocation(line: 529, column: 13, scope: !1705)
!1718 = !DILocation(line: 529, column: 24, scope: !1705)
!1719 = !DILocation(line: 530, column: 13, scope: !1705)
!1720 = !DILocation(line: 530, column: 24, scope: !1705)
!1721 = !{!490, !491, i64 0}
!1722 = !DILocation(line: 531, column: 13, scope: !1705)
!1723 = !DILocation(line: 531, column: 24, scope: !1705)
!1724 = !{!490, !492, i64 16}
!1725 = !DILocation(line: 532, column: 13, scope: !1705)
!1726 = !DILocation(line: 532, column: 24, scope: !1705)
!1727 = !{!490, !491, i64 6}
!1728 = !DILocation(line: 533, column: 13, scope: !1705)
!1729 = !DILocation(line: 533, column: 24, scope: !1705)
!1730 = !{!490, !491, i64 3}
!1731 = !DILocation(line: 534, column: 13, scope: !1705)
!1732 = !DILocation(line: 534, column: 24, scope: !1705)
!1733 = !{!490, !491, i64 4}
!1734 = !DILocation(line: 535, column: 13, scope: !1705)
!1735 = !DILocation(line: 535, column: 24, scope: !1705)
!1736 = !{!490, !492, i64 32}
!1737 = !DILocation(line: 537, column: 13, scope: !1705)
!1738 = !DILocation(line: 537, column: 24, scope: !1705)
!1739 = !DILocation(line: 538, column: 13, scope: !1705)
!1740 = !DILocation(line: 538, column: 24, scope: !1705)
!1741 = !DILocation(line: 541, column: 13, scope: !1705)
!1742 = !DILocation(line: 542, column: 13, scope: !1705)
!1743 = !DILocation(line: 543, column: 13, scope: !1705)
!1744 = !DILocation(line: 544, column: 13, scope: !1705)
!1745 = !DILocation(line: 524, column: 11, scope: !1705)
!1746 = !DILocation(line: 544, column: 18, scope: !1705)
!1747 = !DILocation(line: 524, column: 11, scope: !1706)
!1748 = !DILocation(line: 546, column: 22, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 545, column: 13)
!1750 = !DILocation(line: 547, column: 13, scope: !1749)
!1751 = !DILocation(line: 548, column: 5, scope: !1706)
!1752 = !DILocation(line: 549, column: 22, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 549, column: 5)
!1754 = !DILocation(line: 549, column: 10, scope: !1753)
!1755 = !DILocation(line: 549, column: 27, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 549, column: 5)
!1757 = !DILocation(line: 549, column: 41, scope: !1756)
!1758 = !DILocation(line: 549, column: 39, scope: !1756)
!1759 = !DILocation(line: 549, column: 5, scope: !1753)
!1760 = !DILocation(line: 551, column: 12, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 551, column: 11)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 550, column: 5)
!1763 = !DILocation(line: 551, column: 11, scope: !1762)
!1764 = !DILocation(line: 552, column: 51, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 551, column: 20)
!1766 = !DILocation(line: 552, column: 62, scope: !1765)
!1767 = !DILocation(line: 553, column: 13, scope: !1765)
!1768 = !DILocation(line: 552, column: 9, scope: !1765)
!1769 = !DILocation(line: 555, column: 7, scope: !1765)
!1770 = !DILocation(line: 556, column: 42, scope: !1762)
!1771 = !DILocation(line: 556, column: 53, scope: !1762)
!1772 = !DILocation(line: 556, column: 7, scope: !1762)
!1773 = !DILocation(line: 557, column: 5, scope: !1762)
!1774 = !DILocation(line: 549, column: 61, scope: !1756)
!1775 = !DILocation(line: 549, column: 5, scope: !1756)
!1776 = distinct !{!1776, !1759, !1777, !1409}
!1777 = !DILocation(line: 557, column: 5, scope: !1753)
!1778 = !DILocation(line: 558, column: 34, scope: !1598)
!1779 = !DILocation(line: 558, column: 31, scope: !1598)
!1780 = !DILocation(line: 560, column: 19, scope: !1598)
!1781 = !DILocation(line: 561, column: 44, scope: !1598)
!1782 = !DILocation(line: 561, column: 55, scope: !1598)
!1783 = !DILocation(line: 560, column: 5, scope: !1598)
!1784 = !DILocation(line: 562, column: 19, scope: !1598)
!1785 = !DILocation(line: 563, column: 48, scope: !1598)
!1786 = !DILocation(line: 563, column: 59, scope: !1598)
!1787 = !DILocation(line: 562, column: 5, scope: !1598)
!1788 = !DILocation(line: 564, column: 19, scope: !1598)
!1789 = !DILocation(line: 565, column: 50, scope: !1598)
!1790 = !DILocation(line: 565, column: 61, scope: !1598)
!1791 = !DILocation(line: 564, column: 5, scope: !1598)
!1792 = !DILocation(line: 566, column: 19, scope: !1598)
!1793 = !DILocation(line: 567, column: 48, scope: !1598)
!1794 = !DILocation(line: 567, column: 59, scope: !1598)
!1795 = !DILocation(line: 566, column: 5, scope: !1598)
!1796 = !DILocation(line: 569, column: 10, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 569, column: 9)
!1798 = !DILocation(line: 569, column: 9, scope: !1598)
!1799 = !DILocation(line: 570, column: 21, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 569, column: 18)
!1801 = !DILocation(line: 571, column: 11, scope: !1800)
!1802 = !DILocation(line: 570, column: 7, scope: !1800)
!1803 = !DILocation(line: 572, column: 43, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 572, column: 11)
!1805 = !DILocation(line: 573, column: 24, scope: !1804)
!1806 = !DILocation(line: 573, column: 35, scope: !1804)
!1807 = !DILocation(line: 573, column: 13, scope: !1804)
!1808 = !DILocation(line: 573, column: 49, scope: !1804)
!1809 = !DILocation(line: 573, column: 58, scope: !1804)
!1810 = !DILocation(line: 572, column: 11, scope: !1804)
!1811 = !DILocation(line: 573, column: 63, scope: !1804)
!1812 = !DILocation(line: 572, column: 11, scope: !1800)
!1813 = !DILocation(line: 574, column: 16, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 573, column: 69)
!1815 = !DILocation(line: 575, column: 7, scope: !1814)
!1816 = !DILocation(line: 576, column: 5, scope: !1800)
!1817 = !DILocation(line: 577, column: 3, scope: !1599)
!1818 = !DILocation(line: 577, column: 3, scope: !1598)
!1819 = !DILocation(line: 502, column: 16, scope: !1599)
!1820 = !DILocation(line: 501, column: 3, scope: !1599)
!1821 = distinct !{!1821, !1650, !1822, !1409}
!1822 = !DILocation(line: 577, column: 3, scope: !1600)
!1823 = !DILocation(line: 578, column: 17, scope: !1576)
!1824 = !DILocation(line: 579, column: 7, scope: !1576)
!1825 = !DILocation(line: 578, column: 3, scope: !1576)
!1826 = !DILocation(line: 580, column: 3, scope: !1576)
!1827 = !DILocation(line: 581, column: 10, scope: !1576)
!1828 = !DILocation(line: 582, column: 1, scope: !1576)
!1829 = !DILocation(line: 581, column: 3, scope: !1576)
!1830 = distinct !DISubprogram(name: "gt_seqcorrect_find_seldom", scope: !2, file: !2, line: 584, type: !1577, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1846, !1847, !1848, !1856, !1857, !1858, !1863, !1869}
!1832 = !DILocalVariable(name: "arguments", arg: 1, scope: !1830, file: !2, line: 584, type: !437)
!1833 = !DILocalVariable(name: "encseq", arg: 2, scope: !1830, file: !2, line: 585, type: !905)
!1834 = !DILocalVariable(name: "verbose_logger", arg: 3, scope: !1830, file: !2, line: 585, type: !914)
!1835 = !DILocalVariable(name: "timer", arg: 4, scope: !1830, file: !2, line: 585, type: !909)
!1836 = !DILocalVariable(name: "err", arg: 5, scope: !1830, file: !2, line: 585, type: !424)
!1837 = !DILocalVariable(name: "haserr", scope: !1830, file: !2, line: 587, type: !442)
!1838 = !DILocalVariable(name: "threads", scope: !1830, file: !2, line: 589, type: !1587)
!1839 = !DILocalVariable(name: "bucketkey_kmersize", scope: !1830, file: !2, line: 593, type: !379)
!1840 = !DILocalVariable(name: "data_array", scope: !1830, file: !2, line: 594, type: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRandomcodesFindSeldomData", file: !1844, line: 30, baseType: !1845)
!1844 = !DIFile(filename: "src/match/randomcodes-find-seldom.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9ca5c246c747c9683777a8520c5a79d9")
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtRandomcodesFindSeldomData", file: !1844, line: 30, flags: DIFlagFwdDecl)
!1846 = !DILocalVariable(name: "threadcount", scope: !1830, file: !2, line: 595, type: !379)
!1847 = !DILocalVariable(name: "nofseldomkmers", scope: !1830, file: !2, line: 596, type: !384)
!1848 = !DILocalVariable(name: "seldom_reads", scope: !1830, file: !2, line: 597, type: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBitsequence", file: !1852, line: 37, baseType: !1853)
!1852 = !DIFile(filename: "src/core/intbits.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e96e7c07f92e8441cb7955436fed7622")
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1854, line: 27, baseType: !1855)
!1854 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1169, line: 45, baseType: !376)
!1856 = !DILocalVariable(name: "nofreads", scope: !1830, file: !2, line: 598, type: !384)
!1857 = !DILocalVariable(name: "seldomsize", scope: !1830, file: !2, line: 599, type: !374)
!1858 = !DILocalVariable(name: "tabsize", scope: !1859, file: !2, line: 611, type: !374)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 611, column: 5)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 610, column: 3)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 609, column: 3)
!1862 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 609, column: 3)
!1863 = !DILocalVariable(name: "pos", scope: !1864, file: !2, line: 656, type: !374)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 655, column: 5)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 654, column: 9)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 648, column: 3)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 647, column: 3)
!1868 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 647, column: 3)
!1869 = !DILocalVariable(name: "filename", scope: !1870, file: !2, line: 665, type: !461)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 664, column: 3)
!1871 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 663, column: 7)
!1872 = !DILocation(line: 584, column: 62, scope: !1830)
!1873 = !DILocation(line: 585, column: 15, scope: !1830)
!1874 = !DILocation(line: 585, column: 33, scope: !1830)
!1875 = !DILocation(line: 585, column: 58, scope: !1830)
!1876 = !DILocation(line: 585, column: 74, scope: !1830)
!1877 = !DILocation(line: 587, column: 3, scope: !1830)
!1878 = !DILocation(line: 587, column: 8, scope: !1830)
!1879 = !DILocation(line: 589, column: 5, scope: !1830)
!1880 = !DILocation(line: 589, column: 24, scope: !1830)
!1881 = !DILocation(line: 589, column: 34, scope: !1830)
!1882 = !DILocation(line: 593, column: 3, scope: !1830)
!1883 = !DILocation(line: 593, column: 16, scope: !1830)
!1884 = !DILocation(line: 594, column: 3, scope: !1830)
!1885 = !DILocation(line: 594, column: 33, scope: !1830)
!1886 = !DILocation(line: 595, column: 3, scope: !1830)
!1887 = !DILocation(line: 595, column: 16, scope: !1830)
!1888 = !DILocation(line: 596, column: 3, scope: !1830)
!1889 = !DILocation(line: 596, column: 11, scope: !1830)
!1890 = !DILocation(line: 597, column: 3, scope: !1830)
!1891 = !DILocation(line: 597, column: 19, scope: !1830)
!1892 = !DILocation(line: 598, column: 3, scope: !1830)
!1893 = !DILocation(line: 598, column: 11, scope: !1830)
!1894 = !DILocation(line: 598, column: 22, scope: !1830)
!1895 = !DILocation(line: 599, column: 3, scope: !1830)
!1896 = !DILocation(line: 599, column: 10, scope: !1830)
!1897 = !DILocation(line: 599, column: 23, scope: !1830)
!1898 = !DILocation(line: 601, column: 16, scope: !1830)
!1899 = !DILocation(line: 601, column: 14, scope: !1830)
!1900 = !DILocation(line: 602, column: 18, scope: !1830)
!1901 = !DILocation(line: 602, column: 16, scope: !1830)
!1902 = !DILocation(line: 603, column: 43, scope: !1830)
!1903 = !DILocation(line: 603, column: 54, scope: !1830)
!1904 = !DILocation(line: 603, column: 3, scope: !1830)
!1905 = !DILocation(line: 604, column: 45, scope: !1830)
!1906 = !DILocation(line: 605, column: 28, scope: !1830)
!1907 = !DILocation(line: 604, column: 12, scope: !1830)
!1908 = !DILocation(line: 604, column: 10, scope: !1830)
!1909 = !DILocation(line: 606, column: 17, scope: !1830)
!1910 = !DILocation(line: 607, column: 7, scope: !1830)
!1911 = !DILocation(line: 606, column: 3, scope: !1830)
!1912 = !DILocation(line: 609, column: 20, scope: !1862)
!1913 = !DILocation(line: 609, column: 8, scope: !1862)
!1914 = !DILocation(line: 609, column: 26, scope: !1861)
!1915 = !DILocation(line: 609, column: 33, scope: !1861)
!1916 = !DILocation(line: 609, column: 36, scope: !1861)
!1917 = !DILocation(line: 609, column: 50, scope: !1861)
!1918 = !DILocation(line: 609, column: 48, scope: !1861)
!1919 = !DILocation(line: 0, scope: !1861)
!1920 = !DILocation(line: 609, column: 3, scope: !1862)
!1921 = !DILocation(line: 611, column: 5, scope: !1859)
!1922 = !DILocation(line: 611, column: 5, scope: !1860)
!1923 = !DILocation(line: 612, column: 67, scope: !1860)
!1924 = !DILocation(line: 613, column: 9, scope: !1860)
!1925 = !DILocation(line: 613, column: 20, scope: !1860)
!1926 = !DILocation(line: 613, column: 41, scope: !1860)
!1927 = !DILocation(line: 613, column: 52, scope: !1860)
!1928 = !DILocation(line: 614, column: 9, scope: !1860)
!1929 = !DILocation(line: 614, column: 22, scope: !1860)
!1930 = !DILocation(line: 612, column: 31, scope: !1860)
!1931 = !DILocation(line: 612, column: 5, scope: !1860)
!1932 = !DILocation(line: 612, column: 16, scope: !1860)
!1933 = !DILocation(line: 612, column: 29, scope: !1860)
!1934 = !DILocation(line: 615, column: 10, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 615, column: 9)
!1936 = !DILocation(line: 615, column: 21, scope: !1935)
!1937 = !DILocation(line: 615, column: 35, scope: !1935)
!1938 = !DILocation(line: 615, column: 9, scope: !1860)
!1939 = !DILocation(line: 617, column: 14, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 616, column: 5)
!1941 = !DILocation(line: 618, column: 5, scope: !1940)
!1942 = !DILocation(line: 619, column: 3, scope: !1860)
!1943 = !DILocation(line: 609, column: 70, scope: !1861)
!1944 = !DILocation(line: 609, column: 3, scope: !1861)
!1945 = distinct !{!1945, !1920, !1946, !1409}
!1946 = !DILocation(line: 619, column: 3, scope: !1862)
!1947 = !DILocation(line: 620, column: 8, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 620, column: 7)
!1949 = !DILocation(line: 620, column: 7, scope: !1830)
!1950 = !DILocation(line: 622, column: 56, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 622, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 621, column: 3)
!1953 = !DILocation(line: 623, column: 11, scope: !1951)
!1954 = !DILocation(line: 624, column: 11, scope: !1951)
!1955 = !DILocation(line: 624, column: 22, scope: !1951)
!1956 = !DILocation(line: 625, column: 11, scope: !1951)
!1957 = !DILocation(line: 625, column: 22, scope: !1951)
!1958 = !DILocation(line: 626, column: 11, scope: !1951)
!1959 = !DILocation(line: 626, column: 22, scope: !1951)
!1960 = !DILocation(line: 626, column: 36, scope: !1951)
!1961 = !DILocation(line: 626, column: 47, scope: !1951)
!1962 = !DILocation(line: 627, column: 11, scope: !1951)
!1963 = !DILocation(line: 627, column: 22, scope: !1951)
!1964 = !DILocation(line: 628, column: 11, scope: !1951)
!1965 = !DILocation(line: 628, column: 22, scope: !1951)
!1966 = !DILocation(line: 629, column: 11, scope: !1951)
!1967 = !DILocation(line: 629, column: 22, scope: !1951)
!1968 = !DILocation(line: 630, column: 11, scope: !1951)
!1969 = !DILocation(line: 630, column: 22, scope: !1951)
!1970 = !DILocation(line: 631, column: 11, scope: !1951)
!1971 = !DILocation(line: 631, column: 22, scope: !1951)
!1972 = !DILocation(line: 632, column: 11, scope: !1951)
!1973 = !DILocation(line: 632, column: 22, scope: !1951)
!1974 = !DILocation(line: 633, column: 11, scope: !1951)
!1975 = !DILocation(line: 633, column: 22, scope: !1951)
!1976 = !DILocation(line: 635, column: 11, scope: !1951)
!1977 = !DILocation(line: 635, column: 22, scope: !1951)
!1978 = !DILocation(line: 636, column: 11, scope: !1951)
!1979 = !DILocation(line: 636, column: 22, scope: !1951)
!1980 = !DILocation(line: 639, column: 11, scope: !1951)
!1981 = !DILocation(line: 640, column: 11, scope: !1951)
!1982 = !DILocation(line: 641, column: 11, scope: !1951)
!1983 = !DILocation(line: 642, column: 11, scope: !1951)
!1984 = !DILocation(line: 622, column: 9, scope: !1951)
!1985 = !DILocation(line: 642, column: 16, scope: !1951)
!1986 = !DILocation(line: 622, column: 9, scope: !1952)
!1987 = !DILocation(line: 644, column: 20, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 643, column: 11)
!1989 = !DILocation(line: 645, column: 11, scope: !1988)
!1990 = !DILocation(line: 646, column: 3, scope: !1952)
!1991 = !DILocation(line: 647, column: 20, scope: !1868)
!1992 = !DILocation(line: 647, column: 8, scope: !1868)
!1993 = !DILocation(line: 647, column: 25, scope: !1867)
!1994 = !DILocation(line: 647, column: 39, scope: !1867)
!1995 = !DILocation(line: 647, column: 37, scope: !1867)
!1996 = !DILocation(line: 647, column: 3, scope: !1868)
!1997 = !DILocation(line: 649, column: 10, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 649, column: 9)
!1999 = !DILocation(line: 649, column: 9, scope: !1866)
!2000 = !DILocation(line: 650, column: 53, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 649, column: 18)
!2002 = !DILocation(line: 650, column: 64, scope: !2001)
!2003 = !DILocation(line: 651, column: 11, scope: !2001)
!2004 = !DILocation(line: 650, column: 7, scope: !2001)
!2005 = !DILocation(line: 652, column: 5, scope: !2001)
!2006 = !DILocation(line: 653, column: 44, scope: !1866)
!2007 = !DILocation(line: 653, column: 55, scope: !1866)
!2008 = !DILocation(line: 653, column: 5, scope: !1866)
!2009 = !DILocation(line: 654, column: 9, scope: !1865)
!2010 = !DILocation(line: 654, column: 21, scope: !1865)
!2011 = !DILocation(line: 654, column: 9, scope: !1866)
!2012 = !DILocation(line: 656, column: 7, scope: !1864)
!2013 = !DILocation(line: 656, column: 14, scope: !1864)
!2014 = !DILocation(line: 657, column: 16, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 657, column: 7)
!2016 = !DILocation(line: 657, column: 12, scope: !2015)
!2017 = !DILocation(line: 657, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 657, column: 7)
!2019 = !DILocation(line: 657, column: 27, scope: !2018)
!2020 = !DILocation(line: 657, column: 25, scope: !2018)
!2021 = !DILocation(line: 657, column: 7, scope: !2015)
!2022 = !DILocation(line: 658, column: 33, scope: !2018)
!2023 = !DILocation(line: 658, column: 46, scope: !2018)
!2024 = !DILocation(line: 658, column: 59, scope: !2018)
!2025 = !DILocation(line: 658, column: 9, scope: !2018)
!2026 = !DILocation(line: 658, column: 25, scope: !2018)
!2027 = !DILocation(line: 658, column: 30, scope: !2018)
!2028 = !DILocation(line: 657, column: 42, scope: !2018)
!2029 = !DILocation(line: 657, column: 7, scope: !2018)
!2030 = distinct !{!2030, !2021, !2031, !1409}
!2031 = !DILocation(line: 658, column: 62, scope: !2015)
!2032 = !DILocation(line: 659, column: 7, scope: !1864)
!2033 = !DILocation(line: 660, column: 5, scope: !1865)
!2034 = !DILocation(line: 660, column: 5, scope: !1864)
!2035 = !DILocation(line: 661, column: 3, scope: !1866)
!2036 = !DILocation(line: 647, column: 59, scope: !1867)
!2037 = !DILocation(line: 647, column: 3, scope: !1867)
!2038 = distinct !{!2038, !1996, !2039, !1409}
!2039 = !DILocation(line: 661, column: 3, scope: !1868)
!2040 = !DILocation(line: 663, column: 8, scope: !1871)
!2041 = !DILocation(line: 663, column: 7, scope: !1830)
!2042 = !DILocation(line: 665, column: 5, scope: !1870)
!2043 = !DILocation(line: 665, column: 12, scope: !1870)
!2044 = !DILocation(line: 665, column: 36, scope: !1870)
!2045 = !DILocation(line: 665, column: 47, scope: !1870)
!2046 = !DILocation(line: 665, column: 23, scope: !1870)
!2047 = !DILocation(line: 666, column: 19, scope: !1870)
!2048 = !DILocation(line: 667, column: 19, scope: !1870)
!2049 = !DILocation(line: 666, column: 5, scope: !1870)
!2050 = !DILocation(line: 668, column: 24, scope: !1870)
!2051 = !DILocation(line: 668, column: 5, scope: !1870)
!2052 = !DILocation(line: 669, column: 25, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 669, column: 9)
!2054 = !DILocation(line: 669, column: 42, scope: !2053)
!2055 = !DILocation(line: 669, column: 63, scope: !2053)
!2056 = !DILocation(line: 669, column: 52, scope: !2053)
!2057 = !DILocation(line: 670, column: 18, scope: !2053)
!2058 = !DILocation(line: 669, column: 9, scope: !2053)
!2059 = !DILocation(line: 670, column: 23, scope: !2053)
!2060 = !DILocation(line: 669, column: 9, scope: !1870)
!2061 = !DILocation(line: 672, column: 14, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 671, column: 5)
!2063 = !DILocation(line: 673, column: 5, scope: !2062)
!2064 = !DILocation(line: 674, column: 19, scope: !1870)
!2065 = !DILocation(line: 674, column: 5, scope: !1870)
!2066 = !DILocation(line: 675, column: 3, scope: !1871)
!2067 = !DILocation(line: 675, column: 3, scope: !1870)
!2068 = !DILocation(line: 677, column: 3, scope: !1830)
!2069 = !DILocation(line: 678, column: 3, scope: !1830)
!2070 = !DILocation(line: 679, column: 3, scope: !1830)
!2071 = !DILocation(line: 681, column: 10, scope: !1830)
!2072 = !DILocation(line: 682, column: 1, scope: !1830)
!2073 = !DILocation(line: 681, column: 3, scope: !1830)
!2074 = !DISubprogram(name: "gt_encseq_delete", scope: !902, file: !902, line: 205, type: !2075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !905}
!2077 = !DISubprogram(name: "gt_encseq_loader_delete", scope: !902, file: !902, line: 457, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2078 = !DISubprogram(name: "gt_timer_show_progress_final", scope: !911, file: !911, line: 68, type: !2079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !909, !1141}
!2081 = !DISubprogram(name: "gt_timer_delete", scope: !911, file: !911, line: 75, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2082 = !DISubprogram(name: "gt_logger_delete", scope: !916, file: !916, line: 54, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !914}
!2085 = !DISubprogram(name: "gt_str_length", scope: !463, file: !463, line: 74, type: !2086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!384, !1261}
!2088 = !DISubprogram(name: "gt_str_array_get", scope: !474, file: !474, line: 40, type: !2089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!433, !1286, !384}
!2091 = !DISubprogram(name: "gt_reads2twobit_new", scope: !1300, file: !1300, line: 47, type: !2092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!1298, !461}
!2094 = !DISubprogram(name: "gt_reads2twobit_use_phred64", scope: !1300, file: !1300, line: 66, type: !2095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !1298}
!2097 = !DISubprogram(name: "gt_reads2twobit_set_quality_filter", scope: !1300, file: !1300, line: 71, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1298, !384, !4}
!2100 = !DISubprogram(name: "gt_str_array_get_str", scope: !2101, file: !2101, line: 29, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2101 = !DIFile(filename: "src/core/str_array.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e6cefbdecca98e92e2c7fde5516cbd57")
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!461, !1286, !384}
!2104 = !DISubprogram(name: "gt_reads2twobit_add_library", scope: !1300, file: !1300, line: 57, type: !2105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!380, !1298, !1261, !424}
!2107 = !DISubprogram(name: "gt_reads2twobit_encode", scope: !1300, file: !1300, line: 84, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!380, !1298, !424}
!2110 = !DISubprogram(name: "gt_reads2twobit_nofseqs", scope: !1300, file: !1300, line: 88, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!384, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!2115 = !DISubprogram(name: "gt_reads2twobit_nof_invalid_seqs", scope: !1300, file: !1300, line: 93, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2116 = !DISubprogram(name: "gt_reads2twobit_total_seqlength", scope: !1300, file: !1300, line: 92, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DISubprogram(name: "gt_reads2twobit_seqlen_eqlen", scope: !1300, file: !1300, line: 89, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2118 = !DISubprogram(name: "gt_reads2twobit_seqlen_min", scope: !1300, file: !1300, line: 91, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2119 = !DISubprogram(name: "gt_reads2twobit_seqlen_max", scope: !1300, file: !1300, line: 90, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !DISubprogram(name: "gt_reads2twobit_invalid_seqs_totallength", scope: !1300, file: !1300, line: 94, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DISubprogram(name: "gt_reads2twobit_write_encseq", scope: !1300, file: !1300, line: 100, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2122 = !DISubprogram(name: "gt_reads2twobit_delete", scope: !1300, file: !1300, line: 49, type: !2095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2123 = !DISubprogram(name: "gt_malloc_mem", scope: !1113, file: !1113, line: 56, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!377, !1116, !433, !380}
!2126 = !DISubprogram(name: "gt_log_log", scope: !2127, file: !2127, line: 36, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2127 = !DIFile(filename: "src/core/log_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f7489f6cc14a3d4074f12f5a7e69a42f")
!2128 = distinct !DISubprogram(name: "gt_seqcorrect_bucketkey_kmersize", scope: !2, file: !2, line: 273, type: !2129, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!442, !437, !1224, !424}
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DILocalVariable(name: "arguments", arg: 1, scope: !2128, file: !2, line: 273, type: !437)
!2133 = !DILocalVariable(name: "kmersize", arg: 2, scope: !2128, file: !2, line: 274, type: !1224)
!2134 = !DILocalVariable(name: "err", arg: 3, scope: !2128, file: !2, line: 274, type: !424)
!2135 = !DILocalVariable(name: "haserr", scope: !2128, file: !2, line: 276, type: !442)
!2136 = !DILocation(line: 273, column: 69, scope: !2128)
!2137 = !DILocation(line: 274, column: 19, scope: !2128)
!2138 = !DILocation(line: 274, column: 38, scope: !2128)
!2139 = !DILocation(line: 276, column: 3, scope: !2128)
!2140 = !DILocation(line: 276, column: 8, scope: !2128)
!2141 = !DILocation(line: 277, column: 3, scope: !2128)
!2142 = !DILocation(line: 277, column: 3, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 277, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 277, column: 3)
!2145 = !DILocation(line: 277, column: 3, scope: !2144)
!2146 = !DILocation(line: 277, column: 3, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !2, line: 277, column: 3)
!2148 = !DILocation(line: 278, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 278, column: 7)
!2150 = !DILocation(line: 278, column: 18, scope: !2149)
!2151 = !{!490, !492, i64 36}
!2152 = !DILocation(line: 278, column: 25, scope: !2149)
!2153 = !DILocation(line: 278, column: 7, scope: !2128)
!2154 = !DILocation(line: 280, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 279, column: 3)
!2156 = !DILocation(line: 280, column: 28, scope: !2155)
!2157 = !DILocation(line: 280, column: 6, scope: !2155)
!2158 = !DILocation(line: 280, column: 15, scope: !2155)
!2159 = !DILocation(line: 281, column: 10, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 281, column: 9)
!2161 = !DILocation(line: 281, column: 9, scope: !2160)
!2162 = !DILocation(line: 281, column: 22, scope: !2160)
!2163 = !DILocation(line: 281, column: 33, scope: !2160)
!2164 = !DILocation(line: 281, column: 19, scope: !2160)
!2165 = !DILocation(line: 281, column: 9, scope: !2155)
!2166 = !DILocation(line: 283, column: 20, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 282, column: 5)
!2168 = !DILocation(line: 284, column: 40, scope: !2167)
!2169 = !DILocation(line: 284, column: 39, scope: !2167)
!2170 = !DILocation(line: 283, column: 7, scope: !2167)
!2171 = !DILocation(line: 285, column: 14, scope: !2167)
!2172 = !DILocation(line: 286, column: 5, scope: !2167)
!2173 = !DILocation(line: 287, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 287, column: 14)
!2175 = !DILocation(line: 287, column: 14, scope: !2174)
!2176 = !DILocation(line: 287, column: 24, scope: !2174)
!2177 = !DILocation(line: 287, column: 14, scope: !2160)
!2178 = !DILocation(line: 289, column: 20, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 288, column: 5)
!2180 = !DILocation(line: 291, column: 12, scope: !2179)
!2181 = !DILocation(line: 291, column: 11, scope: !2179)
!2182 = !DILocation(line: 289, column: 7, scope: !2179)
!2183 = !DILocation(line: 292, column: 14, scope: !2179)
!2184 = !DILocation(line: 293, column: 5, scope: !2179)
!2185 = !DILocation(line: 294, column: 3, scope: !2155)
!2186 = !DILocation(line: 297, column: 5, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 296, column: 3)
!2188 = !DILocation(line: 297, column: 5, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 297, column: 5)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 297, column: 5)
!2191 = !DILocation(line: 297, column: 5, scope: !2190)
!2192 = !DILocation(line: 297, column: 5, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 297, column: 5)
!2194 = !DILocation(line: 298, column: 17, scope: !2187)
!2195 = !DILocation(line: 298, column: 6, scope: !2187)
!2196 = !DILocation(line: 298, column: 15, scope: !2187)
!2197 = !DILocation(line: 301, column: 40, scope: !2128)
!2198 = !DILocation(line: 301, column: 39, scope: !2128)
!2199 = !DILocation(line: 301, column: 3, scope: !2128)
!2200 = !DILocation(line: 302, column: 3, scope: !2128)
!2201 = !DILocation(line: 302, column: 3, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 302, column: 3)
!2203 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 302, column: 3)
!2204 = !DILocation(line: 302, column: 3, scope: !2203)
!2205 = !DILocation(line: 302, column: 3, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 302, column: 3)
!2207 = !DILocation(line: 303, column: 10, scope: !2128)
!2208 = !DILocation(line: 304, column: 1, scope: !2128)
!2209 = !DILocation(line: 303, column: 3, scope: !2128)
!2210 = !DISubprogram(name: "gt_randomcodes_correct_data_new", scope: !1595, file: !1595, line: 32, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!1593, !905, !379, !379, !433, !433, !379, !424}
!2213 = !DISubprogram(name: "storerandomcodes_getencseqkmers_twobitencoding", scope: !2214, file: !2214, line: 40, type: !2215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2214 = !DIFile(filename: "src/match/randomcodes.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "3ab270ce4bfade424cb9d238557f928c")
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!380, !1560, !379, !379, !384, !379, !379, !442, !379, !442, !442, !442, !379, !384, !442, !379, !2217, !2232, !377, !914, !909, !424}
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRandomcodesintervalprocess", file: !2214, line: 28, baseType: !2218)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!380, !377, !2221, !2223, !2228, !384, !379, !424}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtSeqnumrelpos", file: !2226, line: 21, baseType: !2227)
!2226 = !DIFile(filename: "src/match/seqnumrelpos.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "01cb0e130049ecde97e5917ca12d107d")
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtSeqnumrelpos", file: !2226, line: 21, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1854, line: 25, baseType: !2231)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1169, line: 40, baseType: !1172)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRandomcodesintervalprocess_end", file: !2214, line: 36, baseType: !409)
!2233 = !DISubprogram(name: "gt_randomcodes_correct_data_collect_stats", scope: !1595, file: !1595, line: 35, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !1593, !379, !1243, !1243, !1243, !1243}
!2236 = !DISubprogram(name: "gt_randomcodes_correct_data_delete", scope: !1595, file: !1595, line: 39, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !1593}
!2239 = distinct !DISubprogram(name: "gt_seqcorrect_apply_corrections", scope: !2, file: !2, line: 334, type: !2240, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!380, !905, !433, !1587, !424}
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2253, !2254, !2258, !2259, !2262, !2263}
!2243 = !DILocalVariable(name: "encseq", arg: 1, scope: !2239, file: !2, line: 334, type: !905)
!2244 = !DILocalVariable(name: "indexname", arg: 2, scope: !2239, file: !2, line: 335, type: !433)
!2245 = !DILocalVariable(name: "threads", arg: 3, scope: !2239, file: !2, line: 335, type: !1587)
!2246 = !DILocalVariable(name: "err", arg: 4, scope: !2239, file: !2, line: 336, type: !424)
!2247 = !DILocalVariable(name: "haserr", scope: !2239, file: !2, line: 338, type: !442)
!2248 = !DILocalVariable(name: "editor", scope: !2239, file: !2, line: 339, type: !2249)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTwobitencEditor", file: !2251, line: 24, baseType: !2252)
!2251 = !DIFile(filename: "src/match/rdj-twobitenc-editor.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f2538f177eb8f9ee1390472a251e4cb3")
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTwobitencEditor", file: !2251, line: 24, flags: DIFlagFwdDecl)
!2253 = !DILocalVariable(name: "threadcount", scope: !2239, file: !2, line: 340, type: !379)
!2254 = !DILocalVariable(name: "corrections", scope: !2255, file: !2, line: 347, type: !1141)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 346, column: 3)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 345, column: 3)
!2257 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 345, column: 3)
!2258 = !DILocalVariable(name: "filename", scope: !2255, file: !2, line: 348, type: !461)
!2259 = !DILocalVariable(name: "pos", scope: !2260, file: !2, line: 360, type: !384)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 359, column: 5)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 356, column: 9)
!2262 = !DILocalVariable(name: "newchar", scope: !2260, file: !2, line: 361, type: !381)
!2263 = !DILocalVariable(name: "retval", scope: !2260, file: !2, line: 362, type: !374)
!2264 = !DILocation(line: 334, column: 54, scope: !2239)
!2265 = !DILocation(line: 335, column: 17, scope: !2239)
!2266 = !DILocation(line: 335, column: 47, scope: !2239)
!2267 = !DILocation(line: 336, column: 14, scope: !2239)
!2268 = !DILocation(line: 338, column: 3, scope: !2239)
!2269 = !DILocation(line: 338, column: 8, scope: !2239)
!2270 = !DILocation(line: 339, column: 3, scope: !2239)
!2271 = !DILocation(line: 339, column: 22, scope: !2239)
!2272 = !DILocation(line: 340, column: 3, scope: !2239)
!2273 = !DILocation(line: 340, column: 16, scope: !2239)
!2274 = !DILocation(line: 341, column: 36, scope: !2239)
!2275 = !DILocation(line: 341, column: 44, scope: !2239)
!2276 = !DILocation(line: 341, column: 55, scope: !2239)
!2277 = !DILocation(line: 341, column: 12, scope: !2239)
!2278 = !DILocation(line: 341, column: 10, scope: !2239)
!2279 = !DILocation(line: 342, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 342, column: 7)
!2281 = !DILocation(line: 342, column: 14, scope: !2280)
!2282 = !DILocation(line: 342, column: 7, scope: !2239)
!2283 = !DILocation(line: 343, column: 12, scope: !2280)
!2284 = !DILocation(line: 343, column: 5, scope: !2280)
!2285 = !DILocation(line: 344, column: 48, scope: !2239)
!2286 = !DILocation(line: 344, column: 3, scope: !2239)
!2287 = !DILocation(line: 345, column: 20, scope: !2257)
!2288 = !DILocation(line: 345, column: 8, scope: !2257)
!2289 = !DILocation(line: 345, column: 26, scope: !2256)
!2290 = !DILocation(line: 345, column: 33, scope: !2256)
!2291 = !DILocation(line: 345, column: 36, scope: !2256)
!2292 = !DILocation(line: 345, column: 50, scope: !2256)
!2293 = !DILocation(line: 345, column: 48, scope: !2256)
!2294 = !DILocation(line: 0, scope: !2256)
!2295 = !DILocation(line: 345, column: 3, scope: !2257)
!2296 = !DILocation(line: 347, column: 5, scope: !2255)
!2297 = !DILocation(line: 347, column: 11, scope: !2255)
!2298 = !DILocation(line: 348, column: 5, scope: !2255)
!2299 = !DILocation(line: 348, column: 12, scope: !2255)
!2300 = !DILocation(line: 349, column: 32, scope: !2255)
!2301 = !DILocation(line: 349, column: 16, scope: !2255)
!2302 = !DILocation(line: 349, column: 14, scope: !2255)
!2303 = !DILocation(line: 350, column: 24, scope: !2255)
!2304 = !DILocation(line: 350, column: 5, scope: !2255)
!2305 = !DILocation(line: 351, column: 24, scope: !2255)
!2306 = !DILocation(line: 351, column: 34, scope: !2255)
!2307 = !DILocation(line: 351, column: 5, scope: !2255)
!2308 = !DILocation(line: 352, column: 24, scope: !2255)
!2309 = !DILocation(line: 352, column: 5, scope: !2255)
!2310 = !DILocation(line: 353, column: 19, scope: !2255)
!2311 = !DILocation(line: 353, column: 17, scope: !2255)
!2312 = !DILocation(line: 354, column: 50, scope: !2255)
!2313 = !DILocation(line: 354, column: 61, scope: !2255)
!2314 = !DILocation(line: 354, column: 5, scope: !2255)
!2315 = !DILocation(line: 356, column: 9, scope: !2261)
!2316 = !DILocation(line: 356, column: 21, scope: !2261)
!2317 = !DILocation(line: 356, column: 9, scope: !2255)
!2318 = !DILocation(line: 357, column: 14, scope: !2261)
!2319 = !DILocation(line: 357, column: 7, scope: !2261)
!2320 = !DILocation(line: 360, column: 7, scope: !2260)
!2321 = !DILocation(line: 360, column: 15, scope: !2260)
!2322 = !DILocation(line: 361, column: 7, scope: !2260)
!2323 = !DILocation(line: 361, column: 15, scope: !2260)
!2324 = !DILocation(line: 362, column: 7, scope: !2260)
!2325 = !DILocation(line: 362, column: 14, scope: !2260)
!2326 = !DILocation(line: 363, column: 7, scope: !2260)
!2327 = !DILocation(line: 363, column: 61, scope: !2260)
!2328 = !DILocation(line: 363, column: 24, scope: !2260)
!2329 = !DILocation(line: 363, column: 22, scope: !2260)
!2330 = !DILocation(line: 364, column: 11, scope: !2260)
!2331 = !DILocation(line: 366, column: 29, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 365, column: 7)
!2333 = !DILocation(line: 366, column: 33, scope: !2332)
!2334 = !DILocation(line: 366, column: 19, scope: !2332)
!2335 = !DILocation(line: 366, column: 17, scope: !2332)
!2336 = !{!484, !484, i64 0}
!2337 = !DILocation(line: 367, column: 13, scope: !2332)
!2338 = !DILocation(line: 368, column: 34, scope: !2332)
!2339 = !DILocation(line: 368, column: 42, scope: !2332)
!2340 = !DILocation(line: 368, column: 47, scope: !2332)
!2341 = !DILocation(line: 368, column: 9, scope: !2332)
!2342 = distinct !{!2342, !2326, !2343, !1409}
!2343 = !DILocation(line: 369, column: 7, scope: !2260)
!2344 = !DILocation(line: 370, column: 18, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 370, column: 11)
!2346 = !DILocation(line: 370, column: 11, scope: !2345)
!2347 = !DILocation(line: 370, column: 31, scope: !2345)
!2348 = !DILocation(line: 370, column: 11, scope: !2260)
!2349 = !DILocation(line: 372, column: 22, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !2, line: 371, column: 7)
!2351 = !DILocation(line: 372, column: 66, scope: !2350)
!2352 = !DILocation(line: 372, column: 55, scope: !2350)
!2353 = !DILocation(line: 372, column: 9, scope: !2350)
!2354 = !DILocation(line: 373, column: 16, scope: !2350)
!2355 = !DILocation(line: 374, column: 7, scope: !2350)
!2356 = !DILocation(line: 375, column: 20, scope: !2260)
!2357 = !DILocation(line: 375, column: 7, scope: !2260)
!2358 = !DILocation(line: 376, column: 29, scope: !2260)
!2359 = !DILocation(line: 376, column: 18, scope: !2260)
!2360 = !DILocation(line: 376, column: 7, scope: !2260)
!2361 = !DILocation(line: 377, column: 5, scope: !2261)
!2362 = !DILocation(line: 378, column: 19, scope: !2255)
!2363 = !DILocation(line: 378, column: 5, scope: !2255)
!2364 = !DILocation(line: 379, column: 3, scope: !2256)
!2365 = !DILocation(line: 379, column: 3, scope: !2255)
!2366 = !DILocation(line: 345, column: 70, scope: !2256)
!2367 = !DILocation(line: 345, column: 3, scope: !2256)
!2368 = distinct !{!2368, !2295, !2369, !1409}
!2369 = !DILocation(line: 379, column: 3, scope: !2257)
!2370 = !DILocation(line: 380, column: 30, scope: !2239)
!2371 = !DILocation(line: 380, column: 3, scope: !2239)
!2372 = !DILocation(line: 381, column: 10, scope: !2239)
!2373 = !DILocation(line: 382, column: 1, scope: !2239)
!2374 = !DILocation(line: 381, column: 3, scope: !2239)
!2375 = !DISubprogram(name: "gt_twobitenc_editor_new", scope: !2251, file: !2251, line: 26, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!2249, !1560, !433, !424}
!2378 = !DISubprogram(name: "gt_str_new_cstr", scope: !463, file: !463, line: 32, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!461, !433}
!2381 = !DISubprogram(name: "gt_str_append_char", scope: !463, file: !463, line: 51, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !461, !4}
!2384 = !DISubprogram(name: "gt_str_append_uint", scope: !463, file: !463, line: 65, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !461, !379}
!2387 = !DISubprogram(name: "gt_fa_fopen_func", scope: !2388, file: !2388, line: 38, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2388 = !DIFile(filename: "src/core/fa_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "349a3fe5862a4f0acbfcac2e823cf19a")
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!1141, !433, !433, !433, !380, !424}
!2391 = !DISubprogram(name: "fread", scope: !1137, file: !1137, line: 675, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!376, !2394, !1116, !1116, !1140}
!2394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !377)
!2395 = !DISubprogram(name: "gt_twobitenc_editor_edit", scope: !2251, file: !2251, line: 29, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2249, !384, !381}
!2398 = !DISubprogram(name: "ferror", scope: !1137, file: !1137, line: 790, type: !2399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!380, !1141}
!2401 = !DISubprogram(name: "gt_fa_fclose", scope: !2388, file: !2388, line: 56, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !1141}
!2404 = !DISubprogram(name: "gt_twobitenc_editor_delete", scope: !2251, file: !2251, line: 32, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2249}
!2407 = !DISubprogram(name: "gt_encseq_num_of_sequences", scope: !902, file: !902, line: 87, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!384, !1560}
!2410 = !DISubprogram(name: "gt_realloc_mem", scope: !1113, file: !1113, line: 69, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!377, !377, !1116, !433, !380}
!2413 = !DISubprogram(name: "gt_randomcodes_find_seldom_data_new", scope: !1844, file: !1844, line: 32, type: !2414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!1842, !905, !379, !379, !1850}
!2416 = !DISubprogram(name: "gt_randomcodes_find_seldom_data_collect_stats", scope: !1844, file: !1844, line: 36, type: !2417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !1842, !379, !1243}
!2419 = !DISubprogram(name: "gt_randomcodes_find_seldom_data_delete", scope: !1844, file: !1844, line: 40, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !1842}
!2422 = !DISubprogram(name: "gt_cntlist_show", scope: !2423, file: !2423, line: 31, type: !2424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2423 = !DIFile(filename: "src/match/rdj-cntlist.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8566439598c7f50126a3a48ac801194c")
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!380, !1850, !384, !433, !442, !424}
