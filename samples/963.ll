; ModuleID = 'samples/963.bc'
source_filename = "src/tools/gt_encseq_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtEncseqSampleArguments = type { i8, ptr, ptr, %struct.GtRange, ptr, i32, ptr, i64 }
%struct.GtRange = type { i64, i64 }
%struct.GtEncseqSampleOutputInfo = type { i64, ptr }

@.str = private unnamed_addr constant [29 x i8] c"src/tools/gt_encseq_sample.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1, !dbg !12
@__func__.gt_encseq_sample_option_parser_new = private unnamed_addr constant [35 x i8] c"gt_encseq_sample_option_parser_new\00", align 1, !dbg !17
@gt_encseq_sample_option_parser_new.modes = internal global [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr null], align 16, !dbg !23
@.str.3 = private unnamed_addr constant [6 x i8] c"fasta\00", align 1, !dbg !79
@.str.4 = private unnamed_addr constant [7 x i8] c"concat\00", align 1, !dbg !84
@.str.5 = private unnamed_addr constant [26 x i8] c"(sequence_file|indexname)\00", align 1, !dbg !89
@.str.6 = private unnamed_addr constant [51 x i8] c"Decode/extract encoded sequences by random choice.\00", align 1, !dbg !94
@.str.7 = private unnamed_addr constant [12 x i8] c"singlechars\00", align 1, !dbg !99
@.str.8 = private unnamed_addr constant [74 x i8] c"do not use a GtEncseqReader but access each sequence character separately\00", align 1, !dbg !104
@.str.9 = private unnamed_addr constant [7 x i8] c"length\00", align 1, !dbg !109
@.str.10 = private unnamed_addr constant [31 x i8] c"minimum length to be extracted\00", align 1, !dbg !111
@.str.11 = private unnamed_addr constant [9 x i8] c"seqrange\00", align 1, !dbg !116
@.str.12 = private unnamed_addr constant [39 x i8] c"extract multiple consecutive sequences\00", align 1, !dbg !121
@.str.13 = private unnamed_addr constant [7 x i8] c"output\00", align 1, !dbg !126
@.str.14 = private unnamed_addr constant [49 x i8] c"specify output format (choose from fasta|concat)\00", align 1, !dbg !128
@.str.15 = private unnamed_addr constant [8 x i8] c"sepchar\00", align 1, !dbg !133
@.str.16 = private unnamed_addr constant [43 x i8] c"specify character to print as GT_SEPARATOR\00", align 1, !dbg !138
@.str.17 = private unnamed_addr constant [2 x i8] c"|\00", align 1, !dbg !143
@.str.18 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !148
@__func__.gt_encseq_sample_arguments_check = private unnamed_addr constant [33 x i8] c"gt_encseq_sample_arguments_check\00", align 1, !dbg !153
@.str.19 = private unnamed_addr constant [5 x i8] c"args\00", align 1, !dbg !158
@.str.20 = private unnamed_addr constant [25 x i8] c"length must be specified\00", align 1, !dbg !163
@__func__.gt_encseq_sample_runner = private unnamed_addr constant [24 x i8] c"gt_encseq_sample_runner\00", align 1, !dbg !168
@__func__.gt_encseq_sample_get_encseq = private unnamed_addr constant [28 x i8] c"gt_encseq_sample_get_encseq\00", align 1, !dbg !173
@.str.21 = private unnamed_addr constant [8 x i8] c"seqfile\00", align 1, !dbg !178
@.str.22 = private unnamed_addr constant [43 x i8] c"mirroring is only defined on DNA sequences\00", align 1, !dbg !180
@.str.23 = private unnamed_addr constant [40 x i8] c"Missing description support for file %s\00", align 1, !dbg !182
@.str.24 = private unnamed_addr constant [7 x i8] c"encseq\00", align 1, !dbg !187
@__func__.gt_encseq_sample_choose_sequences = private unnamed_addr constant [34 x i8] c"gt_encseq_sample_choose_sequences\00", align 1, !dbg !189
@.str.25 = private unnamed_addr constant [38 x i8] c"sequences do not have the same length\00", align 1, !dbg !194
@.str.26 = private unnamed_addr constant [58 x i8] c"range start (%lu) must not be higher than range end (%lu)\00", align 1, !dbg !199
@.str.27 = private unnamed_addr constant [87 x i8] c"range %lu-%lu includes a sequence number exceeding the total number of sequences (%lu)\00", align 1, !dbg !204
@.str.28 = private unnamed_addr constant [55 x i8] c"requested length %lu exceeds length of sequences (%lu)\00", align 1, !dbg !209
@.str.29 = private unnamed_addr constant [13 x i8] c"sequence %lu\00", align 1, !dbg !214
@.str.30 = private unnamed_addr constant [5 x i8] c"desc\00", align 1, !dbg !219
@__func__.gt_encseq_sample_output = private unnamed_addr constant [24 x i8] c"gt_encseq_sample_output\00", align 1, !dbg !221
@stdout = external global ptr, align 8

; Function Attrs: nounwind uwtable
define ptr @gt_encseq_sample() #0 !dbg !245 {
entry:
  %call = call ptr @gt_tool_new(ptr noundef @gt_encseq_sample_arguments_new, ptr noundef @gt_encseq_sample_arguments_delete, ptr noundef @gt_encseq_sample_option_parser_new, ptr noundef @gt_encseq_sample_arguments_check, ptr noundef @gt_encseq_sample_runner), !dbg !252
  ret ptr %call, !dbg !253
}

declare !dbg !254 ptr @gt_tool_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @gt_encseq_sample_arguments_new() #0 !dbg !281 {
entry:
  %arguments = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !284
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !283, metadata !DIExpression()), !dbg !285
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 72, ptr noundef @.str, i32 noundef 56), !dbg !286
  store ptr %call, ptr %arguments, align 8, !dbg !285, !tbaa !287
  %call1 = call ptr @gt_str_new(), !dbg !291
  %0 = load ptr, ptr %arguments, align 8, !dbg !292, !tbaa !287
  %mode = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %0, i32 0, i32 1, !dbg !293
  store ptr %call1, ptr %mode, align 8, !dbg !294, !tbaa !295
  %call2 = call ptr @gt_str_new(), !dbg !300
  %1 = load ptr, ptr %arguments, align 8, !dbg !301, !tbaa !287
  %sepchar = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %1, i32 0, i32 2, !dbg !302
  store ptr %call2, ptr %sepchar, align 8, !dbg !303, !tbaa !304
  %call3 = call ptr @gt_str_new(), !dbg !305
  %2 = load ptr, ptr %arguments, align 8, !dbg !306, !tbaa !287
  %dir = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %2, i32 0, i32 6, !dbg !307
  store ptr %call3, ptr %dir, align 8, !dbg !308, !tbaa !309
  %3 = load ptr, ptr %arguments, align 8, !dbg !310, !tbaa !287
  %seqrng = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %3, i32 0, i32 3, !dbg !311
  %end = getelementptr inbounds %struct.GtRange, ptr %seqrng, i32 0, i32 1, !dbg !312
  store i64 -1, ptr %end, align 8, !dbg !313, !tbaa !314
  %4 = load ptr, ptr %arguments, align 8, !dbg !315, !tbaa !287
  %seqrng4 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %4, i32 0, i32 3, !dbg !316
  %start = getelementptr inbounds %struct.GtRange, ptr %seqrng4, i32 0, i32 0, !dbg !317
  store i64 -1, ptr %start, align 8, !dbg !318, !tbaa !319
  %5 = load ptr, ptr %arguments, align 8, !dbg !320, !tbaa !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !321
  ret ptr %5, !dbg !322
}

; Function Attrs: nounwind uwtable
define internal void @gt_encseq_sample_arguments_delete(ptr noundef %tool_arguments) #0 !dbg !323 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !325, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !328
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !326, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !330, !tbaa !287
  store ptr %0, ptr %arguments, align 8, !dbg !329, !tbaa !287
  %1 = load ptr, ptr %arguments, align 8, !dbg !331, !tbaa !287
  %cmp = icmp ne ptr %1, null, !dbg !333
  br i1 %cmp, label %if.then, label %if.end, !dbg !334

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %arguments, align 8, !dbg !335, !tbaa !287
  %mode = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %2, i32 0, i32 1, !dbg !337
  %3 = load ptr, ptr %mode, align 8, !dbg !337, !tbaa !295
  call void @gt_str_delete(ptr noundef %3), !dbg !338
  %4 = load ptr, ptr %arguments, align 8, !dbg !339, !tbaa !287
  %sepchar = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %4, i32 0, i32 2, !dbg !340
  %5 = load ptr, ptr %sepchar, align 8, !dbg !340, !tbaa !304
  call void @gt_str_delete(ptr noundef %5), !dbg !341
  %6 = load ptr, ptr %arguments, align 8, !dbg !342, !tbaa !287
  %dir = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %6, i32 0, i32 6, !dbg !343
  %7 = load ptr, ptr %dir, align 8, !dbg !343, !tbaa !309
  call void @gt_str_delete(ptr noundef %7), !dbg !344
  %8 = load ptr, ptr %arguments, align 8, !dbg !345, !tbaa !287
  %eopts = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %8, i32 0, i32 4, !dbg !346
  %9 = load ptr, ptr %eopts, align 8, !dbg !346, !tbaa !347
  call void @gt_encseq_options_delete(ptr noundef %9), !dbg !348
  %10 = load ptr, ptr %arguments, align 8, !dbg !349, !tbaa !287
  call void @gt_free_mem(ptr noundef %10, ptr noundef @.str, i32 noundef 72), !dbg !349
  br label %if.end, !dbg !350

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !351
  ret void, !dbg !351
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_encseq_sample_option_parser_new(ptr noundef %tool_arguments) #0 !dbg !25 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %op = alloca ptr, align 8
  %option = alloca ptr, align 8
  %optionsep = alloca ptr, align 8
  %optionlen = alloca ptr, align 8
  %optionseqrange = alloca ptr, align 8
  %optionmode = alloca ptr, align 8
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !224, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #7, !dbg !353
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !225, metadata !DIExpression()), !dbg !354
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !355, !tbaa !287
  store ptr %0, ptr %arguments, align 8, !dbg !354, !tbaa !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #7, !dbg !356
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !226, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #7, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !227, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionsep) #7, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %optionsep, metadata !231, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionlen) #7, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %optionlen, metadata !232, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionseqrange) #7, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %optionseqrange, metadata !233, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionmode) #7, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %optionmode, metadata !234, metadata !DIExpression()), !dbg !363
  br label %do.body, !dbg !364

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %arguments, align 8, !dbg !365, !tbaa !287
  %tobool = icmp ne ptr %1, null, !dbg !365
  br i1 %tobool, label %if.end, label %if.then, !dbg !368

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !369, !tbaa !287
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_encseq_sample_option_parser_new, ptr noundef @.str, i32 noundef 85), !dbg !369
  call void @abort() #8, !dbg !369
  unreachable, !dbg !369

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !368

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !368

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @gt_option_parser_new(ptr noundef @.str.5, ptr noundef @.str.6), !dbg !371
  store ptr %call1, ptr %op, align 8, !dbg !372, !tbaa !287
  %3 = load ptr, ptr %op, align 8, !dbg !373, !tbaa !287
  %call2 = call ptr @gt_encseq_options_register_loading(ptr noundef %3, ptr noundef null), !dbg !374
  %4 = load ptr, ptr %arguments, align 8, !dbg !375, !tbaa !287
  %eopts = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %4, i32 0, i32 4, !dbg !376
  store ptr %call2, ptr %eopts, align 8, !dbg !377, !tbaa !347
  %5 = load ptr, ptr %op, align 8, !dbg !378, !tbaa !287
  %6 = load ptr, ptr %arguments, align 8, !dbg !379, !tbaa !287
  %dir = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %6, i32 0, i32 6, !dbg !380
  %7 = load ptr, ptr %dir, align 8, !dbg !380, !tbaa !309
  call void @gt_encseq_options_add_readmode_option(ptr noundef %5, ptr noundef %7), !dbg !381
  %8 = load ptr, ptr %arguments, align 8, !dbg !382, !tbaa !287
  %singlechars = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %8, i32 0, i32 0, !dbg !383
  %call3 = call ptr @gt_option_new_bool(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %singlechars, i1 noundef zeroext false), !dbg !384
  store ptr %call3, ptr %option, align 8, !dbg !385, !tbaa !287
  %9 = load ptr, ptr %option, align 8, !dbg !386, !tbaa !287
  call void @gt_option_is_extended_option(ptr noundef %9), !dbg !387
  %10 = load ptr, ptr %op, align 8, !dbg !388, !tbaa !287
  %11 = load ptr, ptr %option, align 8, !dbg !389, !tbaa !287
  call void @gt_option_parser_add_option(ptr noundef %10, ptr noundef %11), !dbg !390
  %12 = load ptr, ptr %arguments, align 8, !dbg !391, !tbaa !287
  %len = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %12, i32 0, i32 7, !dbg !392
  %call4 = call ptr @gt_option_new_uword(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef %len, i64 noundef -1), !dbg !393
  store ptr %call4, ptr %optionlen, align 8, !dbg !394, !tbaa !287
  %13 = load ptr, ptr %op, align 8, !dbg !395, !tbaa !287
  %14 = load ptr, ptr %optionlen, align 8, !dbg !396, !tbaa !287
  call void @gt_option_parser_add_option(ptr noundef %13, ptr noundef %14), !dbg !397
  %15 = load ptr, ptr %arguments, align 8, !dbg !398, !tbaa !287
  %seqrng = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %15, i32 0, i32 3, !dbg !399
  %call5 = call ptr @gt_option_new_range(ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef %seqrng, ptr noundef null), !dbg !400
  store ptr %call5, ptr %optionseqrange, align 8, !dbg !401, !tbaa !287
  %16 = load ptr, ptr %op, align 8, !dbg !402, !tbaa !287
  %17 = load ptr, ptr %optionseqrange, align 8, !dbg !403, !tbaa !287
  call void @gt_option_parser_add_option(ptr noundef %16, ptr noundef %17), !dbg !404
  %18 = load ptr, ptr %arguments, align 8, !dbg !405, !tbaa !287
  %mode = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %18, i32 0, i32 1, !dbg !406
  %19 = load ptr, ptr %mode, align 8, !dbg !406, !tbaa !295
  %20 = load ptr, ptr @gt_encseq_sample_option_parser_new.modes, align 16, !dbg !407, !tbaa !287
  %call6 = call ptr @gt_option_new_choice(ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef %19, ptr noundef %20, ptr noundef @gt_encseq_sample_option_parser_new.modes), !dbg !408
  store ptr %call6, ptr %optionmode, align 8, !dbg !409, !tbaa !287
  %21 = load ptr, ptr %op, align 8, !dbg !410, !tbaa !287
  %22 = load ptr, ptr %optionmode, align 8, !dbg !411, !tbaa !287
  call void @gt_option_parser_add_option(ptr noundef %21, ptr noundef %22), !dbg !412
  %23 = load ptr, ptr %arguments, align 8, !dbg !413, !tbaa !287
  %sepchar = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %23, i32 0, i32 2, !dbg !414
  %24 = load ptr, ptr %sepchar, align 8, !dbg !414, !tbaa !304
  %call7 = call ptr @gt_option_new_string(ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %24, ptr noundef @.str.17), !dbg !415
  store ptr %call7, ptr %optionsep, align 8, !dbg !416, !tbaa !287
  %25 = load ptr, ptr %op, align 8, !dbg !417, !tbaa !287
  %26 = load ptr, ptr %optionsep, align 8, !dbg !418, !tbaa !287
  call void @gt_option_parser_add_option(ptr noundef %25, ptr noundef %26), !dbg !419
  %27 = load ptr, ptr %optionsep, align 8, !dbg !420, !tbaa !287
  %28 = load ptr, ptr %optionmode, align 8, !dbg !421, !tbaa !287
  call void @gt_option_imply(ptr noundef %27, ptr noundef %28), !dbg !422
  %29 = load ptr, ptr %op, align 8, !dbg !423, !tbaa !287
  call void @gt_option_parser_set_min_max_args(ptr noundef %29, i32 noundef 1, i32 noundef 1), !dbg !424
  %30 = load ptr, ptr %op, align 8, !dbg !425, !tbaa !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionmode) #7, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionseqrange) #7, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionlen) #7, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionsep) #7, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #7, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #7, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #7, !dbg !426
  ret ptr %30, !dbg !427
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_encseq_sample_arguments_check(i32 noundef %rest_argc, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !428 {
entry:
  %retval = alloca i32, align 4
  %rest_argc.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %args = alloca ptr, align 8
  %rval = alloca i32, align 4
  %had_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %rest_argc, ptr %rest_argc.addr, align 4, !tbaa !436
  tail call void @llvm.dbg.declare(metadata ptr %rest_argc.addr, metadata !430, metadata !DIExpression()), !dbg !438
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !431, metadata !DIExpression()), !dbg !439
  store ptr %err, ptr %err.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !432, metadata !DIExpression()), !dbg !440
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #7, !dbg !441
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !433, metadata !DIExpression()), !dbg !442
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !443, !tbaa !287
  store ptr %0, ptr %args, align 8, !dbg !442, !tbaa !287
  call void @llvm.lifetime.start.p0(i64 4, ptr %rval) #7, !dbg !444
  tail call void @llvm.dbg.declare(metadata ptr %rval, metadata !434, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !446
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !435, metadata !DIExpression()), !dbg !447
  store i32 0, ptr %had_err, align 4, !dbg !447, !tbaa !436
  br label %do.body, !dbg !448

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !449, !tbaa !287
  %tobool = icmp ne ptr %1, null, !dbg !449
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !449

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !449, !tbaa !287
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !449
  br i1 %call, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !453, !tbaa !287
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.18, ptr noundef @__func__.gt_encseq_sample_arguments_check, ptr noundef @.str, i32 noundef 148), !dbg !453
  call void @abort() #8, !dbg !453
  unreachable, !dbg !453

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !452

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !452

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !455

do.body2:                                         ; preds = %do.end
  %4 = load ptr, ptr %args, align 8, !dbg !456, !tbaa !287
  %tobool3 = icmp ne ptr %4, null, !dbg !456
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !459

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !460, !tbaa !287
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.19, ptr noundef @__func__.gt_encseq_sample_arguments_check, ptr noundef @.str, i32 noundef 149), !dbg !460
  call void @abort() #8, !dbg !460
  unreachable, !dbg !460

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !459

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !459

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %args, align 8, !dbg !462, !tbaa !287
  %dir = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %6, i32 0, i32 6, !dbg !464
  %7 = load ptr, ptr %dir, align 8, !dbg !464, !tbaa !309
  %call9 = call i64 @gt_str_length(ptr noundef %7), !dbg !465
  %cmp = icmp ugt i64 %call9, 0, !dbg !466
  br i1 %cmp, label %if.then10, label %if.end17, !dbg !467

if.then10:                                        ; preds = %do.end8
  %8 = load ptr, ptr %args, align 8, !dbg !468, !tbaa !287
  %dir11 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %8, i32 0, i32 6, !dbg !470
  %9 = load ptr, ptr %dir11, align 8, !dbg !470, !tbaa !309
  %call12 = call ptr @gt_str_get(ptr noundef %9), !dbg !471
  %10 = load ptr, ptr %err.addr, align 8, !dbg !472, !tbaa !287
  %call13 = call i32 @gt_readmode_parse(ptr noundef %call12, ptr noundef %10), !dbg !473
  store i32 %call13, ptr %rval, align 4, !dbg !474, !tbaa !436
  %11 = load i32, ptr %rval, align 4, !dbg !475, !tbaa !436
  %cmp14 = icmp slt i32 %11, 0, !dbg !477
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !478

if.then15:                                        ; preds = %if.then10
  store i32 -1, ptr %had_err, align 4, !dbg !479, !tbaa !436
  br label %if.end16, !dbg !480

if.else:                                          ; preds = %if.then10
  %12 = load i32, ptr %rval, align 4, !dbg !481, !tbaa !436
  %13 = load ptr, ptr %args, align 8, !dbg !482, !tbaa !287
  %rm = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %13, i32 0, i32 5, !dbg !483
  store i32 %12, ptr %rm, align 8, !dbg !484, !tbaa !485
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  br label %if.end17, !dbg !486

if.end17:                                         ; preds = %if.end16, %do.end8
  %14 = load ptr, ptr %args, align 8, !dbg !487, !tbaa !287
  %len = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %14, i32 0, i32 7, !dbg !489
  %15 = load i64, ptr %len, align 8, !dbg !489, !tbaa !490
  %cmp18 = icmp eq i64 %15, -1, !dbg !491
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !492

if.then19:                                        ; preds = %if.end17
  %16 = load ptr, ptr %err.addr, align 8, !dbg !493, !tbaa !287
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %16, ptr noundef @.str.20), !dbg !495
  store i32 -1, ptr %retval, align 4, !dbg !496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !496

if.end20:                                         ; preds = %if.end17
  %17 = load i32, ptr %had_err, align 4, !dbg !497, !tbaa !436
  store i32 %17, ptr %retval, align 4, !dbg !498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %rval) #7, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #7, !dbg !499
  %18 = load i32, ptr %retval, align 4, !dbg !499
  ret i32 %18, !dbg !499
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_encseq_sample_runner(i32 noundef %argc, ptr noundef %argv, i32 noundef %parsed_args, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !500 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %parsed_args.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %encseq = alloca ptr, align 8
  %output = alloca %struct.GtEncseqSampleOutputInfo, align 8
  %had_err = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !436
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !502, metadata !DIExpression()), !dbg !523
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !503, metadata !DIExpression()), !dbg !524
  store i32 %parsed_args, ptr %parsed_args.addr, align 4, !tbaa !436
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !504, metadata !DIExpression()), !dbg !525
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !505, metadata !DIExpression()), !dbg !526
  store ptr %err, ptr %err.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !506, metadata !DIExpression()), !dbg !527
  call void @llvm.lifetime.start.p0(i64 8, ptr %encseq) #7, !dbg !528
  tail call void @llvm.dbg.declare(metadata ptr %encseq, metadata !507, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 16, ptr %output) #7, !dbg !530
  tail call void @llvm.dbg.declare(metadata ptr %output, metadata !512, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !532
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !522, metadata !DIExpression()), !dbg !533
  store i32 0, ptr %had_err, align 4, !dbg !533, !tbaa !436
  br label %do.body, !dbg !534

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !535, !tbaa !287
  %tobool = icmp ne ptr %0, null, !dbg !535
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !535

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !535, !tbaa !287
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !535
  br i1 %call, label %if.then, label %if.end, !dbg !538

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !539, !tbaa !287
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.18, ptr noundef @__func__.gt_encseq_sample_runner, ptr noundef @.str, i32 noundef 351), !dbg !539
  call void @abort() #8, !dbg !539
  unreachable, !dbg !539

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !538

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !538

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !541, !tbaa !287
  %4 = load i32, ptr %parsed_args.addr, align 4, !dbg !542, !tbaa !436
  %idxprom = sext i32 %4 to i64, !dbg !541
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !541
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !541, !tbaa !287
  %6 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !543, !tbaa !287
  %7 = load ptr, ptr %err.addr, align 8, !dbg !544, !tbaa !287
  %call2 = call ptr @gt_encseq_sample_get_encseq(ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !545
  store ptr %call2, ptr %encseq, align 8, !dbg !546, !tbaa !287
  %8 = load ptr, ptr %encseq, align 8, !dbg !547, !tbaa !287
  %cmp = icmp ne ptr %8, null, !dbg !549
  br i1 %cmp, label %if.then3, label %if.else, !dbg !550

if.then3:                                         ; preds = %do.end
  %9 = load ptr, ptr %encseq, align 8, !dbg !551, !tbaa !287
  %10 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !552, !tbaa !287
  %11 = load ptr, ptr %err.addr, align 8, !dbg !553, !tbaa !287
  %call4 = call i32 @gt_encseq_sample_choose_sequences(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %output), !dbg !554
  store i32 %call4, ptr %had_err, align 4, !dbg !555, !tbaa !436
  br label %if.end5, !dbg !556

if.else:                                          ; preds = %do.end
  store i32 -1, ptr %had_err, align 4, !dbg !557, !tbaa !436
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %12 = load i32, ptr %had_err, align 4, !dbg !558, !tbaa !436
  %tobool6 = icmp ne i32 %12, 0, !dbg !558
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !560

if.then7:                                         ; preds = %if.end5
  %13 = load ptr, ptr %encseq, align 8, !dbg !561, !tbaa !287
  %14 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !562, !tbaa !287
  %call8 = call i32 @gt_encseq_sample_output(ptr noundef %13, ptr noundef %14, ptr noundef %output), !dbg !563
  store i32 %call8, ptr %had_err, align 4, !dbg !564, !tbaa !436
  br label %if.end9, !dbg !565

if.end9:                                          ; preds = %if.then7, %if.end5
  %15 = load ptr, ptr %encseq, align 8, !dbg !566, !tbaa !287
  call void @gt_encseq_delete(ptr noundef %15), !dbg !567
  %16 = load i32, ptr %had_err, align 4, !dbg !568, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !569
  call void @llvm.lifetime.end.p0(i64 16, ptr %output) #7, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %encseq) #7, !dbg !569
  ret i32 %16, !dbg !570
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !571 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !575 ptr @gt_str_new() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !578 void @gt_str_delete(ptr noundef) #1

declare !dbg !581 void @gt_encseq_options_delete(ptr noundef) #1

declare !dbg !584 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !587 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !650 void @abort() #3

declare !dbg !654 ptr @gt_option_parser_new(ptr noundef, ptr noundef) #1

declare !dbg !657 ptr @gt_encseq_options_register_loading(ptr noundef, ptr noundef) #1

declare !dbg !660 void @gt_encseq_options_add_readmode_option(ptr noundef, ptr noundef) #1

declare !dbg !663 ptr @gt_option_new_bool(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare !dbg !667 void @gt_option_is_extended_option(ptr noundef) #1

declare !dbg !670 void @gt_option_parser_add_option(ptr noundef, ptr noundef) #1

declare !dbg !673 ptr @gt_option_new_uword(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !677 ptr @gt_option_new_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !681 ptr @gt_option_new_choice(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !684 ptr @gt_option_new_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !687 void @gt_option_imply(ptr noundef, ptr noundef) #1

declare !dbg !692 void @gt_option_parser_set_min_max_args(ptr noundef, i32 noundef, i32 noundef) #1

declare !dbg !695 zeroext i1 @gt_error_is_set(ptr noundef) #1

declare !dbg !700 i64 @gt_str_length(ptr noundef) #1

declare !dbg !705 i32 @gt_readmode_parse(ptr noundef, ptr noundef) #1

declare !dbg !708 ptr @gt_str_get(ptr noundef) #1

declare !dbg !711 void @gt_error_set(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal ptr @gt_encseq_sample_get_encseq(ptr noundef %seqfile, ptr noundef %args, ptr noundef %err) #0 !dbg !714 {
entry:
  %retval = alloca ptr, align 8
  %seqfile.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %encseq_loader = alloca ptr, align 8
  %encseq = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %seqfile, ptr %seqfile.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %seqfile.addr, metadata !718, metadata !DIExpression()), !dbg !727
  store ptr %args, ptr %args.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !719, metadata !DIExpression()), !dbg !728
  store ptr %err, ptr %err.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !720, metadata !DIExpression()), !dbg !729
  call void @llvm.lifetime.start.p0(i64 8, ptr %encseq_loader) #7, !dbg !730
  tail call void @llvm.dbg.declare(metadata ptr %encseq_loader, metadata !721, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %encseq) #7, !dbg !732
  tail call void @llvm.dbg.declare(metadata ptr %encseq, metadata !725, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !734
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !726, metadata !DIExpression()), !dbg !735
  store i32 0, ptr %had_err, align 4, !dbg !735, !tbaa !436
  br label %do.body, !dbg !736

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !737, !tbaa !287
  %tobool = icmp ne ptr %0, null, !dbg !737
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !737

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !737, !tbaa !287
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !737
  br i1 %call, label %if.then, label %if.end, !dbg !740

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !741, !tbaa !287
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.18, ptr noundef @__func__.gt_encseq_sample_get_encseq, ptr noundef @.str, i32 noundef 318), !dbg !741
  call void @abort() #8, !dbg !741
  unreachable, !dbg !741

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !740

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !740

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !743

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %seqfile.addr, align 8, !dbg !744, !tbaa !287
  %tobool3 = icmp ne ptr %3, null, !dbg !744
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !747

if.then4:                                         ; preds = %do.body2
  %4 = load ptr, ptr @stderr, align 8, !dbg !748, !tbaa !287
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.21, ptr noundef @__func__.gt_encseq_sample_get_encseq, ptr noundef @.str, i32 noundef 319), !dbg !748
  call void @abort() #8, !dbg !748
  unreachable, !dbg !748

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !747

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !747

do.end8:                                          ; preds = %do.cond7
  %call9 = call ptr @gt_encseq_loader_new(), !dbg !750
  store ptr %call9, ptr %encseq_loader, align 8, !dbg !751, !tbaa !287
  %5 = load i32, ptr %had_err, align 4, !dbg !752, !tbaa !436
  %tobool10 = icmp ne i32 %5, 0, !dbg !752
  br i1 %tobool10, label %if.end13, label %land.lhs.true, !dbg !754

land.lhs.true:                                    ; preds = %do.end8
  %6 = load ptr, ptr %args.addr, align 8, !dbg !755, !tbaa !287
  %eopts = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %6, i32 0, i32 4, !dbg !756
  %7 = load ptr, ptr %eopts, align 8, !dbg !756, !tbaa !347
  %call11 = call zeroext i1 @gt_encseq_options_lossless_value(ptr noundef %7), !dbg !757
  br i1 %call11, label %if.then12, label %if.end13, !dbg !758

if.then12:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %encseq_loader, align 8, !dbg !759, !tbaa !287
  call void @gt_encseq_loader_require_lossless_support(ptr noundef %8), !dbg !761
  br label %if.end13, !dbg !762

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %do.end8
  %9 = load ptr, ptr %encseq_loader, align 8, !dbg !763, !tbaa !287
  %10 = load ptr, ptr %seqfile.addr, align 8, !dbg !765, !tbaa !287
  %11 = load ptr, ptr %err.addr, align 8, !dbg !766, !tbaa !287
  %call14 = call ptr @gt_encseq_loader_load(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !767
  store ptr %call14, ptr %encseq, align 8, !dbg !768, !tbaa !287
  %tobool15 = icmp ne ptr %call14, null, !dbg !768
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !769

if.then16:                                        ; preds = %if.end13
  store i32 -1, ptr %had_err, align 4, !dbg !770, !tbaa !436
  br label %if.end17, !dbg !771

if.end17:                                         ; preds = %if.then16, %if.end13
  %12 = load i32, ptr %had_err, align 4, !dbg !772, !tbaa !436
  %tobool18 = icmp ne i32 %12, 0, !dbg !772
  br i1 %tobool18, label %if.end31, label %land.lhs.true19, !dbg !774

land.lhs.true19:                                  ; preds = %if.end17
  %13 = load ptr, ptr %args.addr, align 8, !dbg !775, !tbaa !287
  %eopts20 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %13, i32 0, i32 4, !dbg !776
  %14 = load ptr, ptr %eopts20, align 8, !dbg !776, !tbaa !347
  %call21 = call zeroext i1 @gt_encseq_options_mirrored_value(ptr noundef %14), !dbg !777
  br i1 %call21, label %if.then22, label %if.end31, !dbg !778

if.then22:                                        ; preds = %land.lhs.true19
  %15 = load ptr, ptr %encseq, align 8, !dbg !779, !tbaa !287
  %call23 = call ptr @gt_encseq_alphabet(ptr noundef %15), !dbg !782
  %call24 = call zeroext i1 @gt_alphabet_is_dna(ptr noundef %call23), !dbg !783
  br i1 %call24, label %if.end26, label %if.then25, !dbg !784

if.then25:                                        ; preds = %if.then22
  %16 = load ptr, ptr %err.addr, align 8, !dbg !785, !tbaa !287
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %16, ptr noundef @.str.22), !dbg !787
  store i32 -1, ptr %had_err, align 4, !dbg !788, !tbaa !436
  br label %if.end26, !dbg !789

if.end26:                                         ; preds = %if.then25, %if.then22
  %17 = load i32, ptr %had_err, align 4, !dbg !790, !tbaa !436
  %tobool27 = icmp ne i32 %17, 0, !dbg !790
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !792

if.then28:                                        ; preds = %if.end26
  %18 = load ptr, ptr %encseq, align 8, !dbg !793, !tbaa !287
  %19 = load ptr, ptr %err.addr, align 8, !dbg !794, !tbaa !287
  %call29 = call i32 @gt_encseq_mirror(ptr noundef %18, ptr noundef %19), !dbg !795
  store i32 %call29, ptr %had_err, align 4, !dbg !796, !tbaa !436
  br label %if.end30, !dbg !797

if.end30:                                         ; preds = %if.then28, %if.end26
  br label %if.end31, !dbg !798

if.end31:                                         ; preds = %if.end30, %land.lhs.true19, %if.end17
  %20 = load ptr, ptr %encseq_loader, align 8, !dbg !799, !tbaa !287
  call void @gt_encseq_loader_delete(ptr noundef %20), !dbg !800
  %21 = load i32, ptr %had_err, align 4, !dbg !801, !tbaa !436
  %tobool32 = icmp ne i32 %21, 0, !dbg !801
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !803

if.then33:                                        ; preds = %if.end31
  %22 = load ptr, ptr %encseq, align 8, !dbg !804, !tbaa !287
  %call34 = call zeroext i1 @gt_encseq_has_description_support(ptr noundef %22), !dbg !807
  br i1 %call34, label %if.end36, label %if.then35, !dbg !808

if.then35:                                        ; preds = %if.then33
  %23 = load ptr, ptr %seqfile.addr, align 8, !dbg !809, !tbaa !287
  call void (ptr, ...) @gt_warning(ptr noundef @.str.23, ptr noundef %23), !dbg !810
  br label %if.end36, !dbg !810

if.end36:                                         ; preds = %if.then35, %if.then33
  %24 = load ptr, ptr %encseq, align 8, !dbg !811, !tbaa !287
  store ptr %24, ptr %retval, align 8, !dbg !812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !812

if.else:                                          ; preds = %if.end31
  store ptr null, ptr %retval, align 8, !dbg !813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %if.else, %if.end36
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !815
  call void @llvm.lifetime.end.p0(i64 8, ptr %encseq) #7, !dbg !815
  call void @llvm.lifetime.end.p0(i64 8, ptr %encseq_loader) #7, !dbg !815
  %25 = load ptr, ptr %retval, align 8, !dbg !815
  ret ptr %25, !dbg !815
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_encseq_sample_choose_sequences(ptr noundef %encseq, ptr noundef %args, ptr noundef %err, ptr noundef %output) #0 !dbg !816 {
entry:
  %retval = alloca i32, align 4
  %encseq.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %sfrom = alloca i64, align 8
  %sto = alloca i64, align 8
  %num_sequences = alloca i64, align 8
  %count = alloca i64, align 8
  %sequence_length = alloca i64, align 8
  %total_num_seq = alloca i64, align 8
  %had_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !821, metadata !DIExpression()), !dbg !833
  store ptr %args, ptr %args.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !822, metadata !DIExpression()), !dbg !834
  store ptr %err, ptr %err.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !823, metadata !DIExpression()), !dbg !835
  store ptr %output, ptr %output.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !824, metadata !DIExpression()), !dbg !836
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !837
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !825, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %sfrom) #7, !dbg !837
  tail call void @llvm.dbg.declare(metadata ptr %sfrom, metadata !826, metadata !DIExpression()), !dbg !839
  call void @llvm.lifetime.start.p0(i64 8, ptr %sto) #7, !dbg !837
  tail call void @llvm.dbg.declare(metadata ptr %sto, metadata !827, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_sequences) #7, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %num_sequences, metadata !828, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !829, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_length) #7, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %sequence_length, metadata !830, metadata !DIExpression()), !dbg !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_num_seq) #7, !dbg !846
  tail call void @llvm.dbg.declare(metadata ptr %total_num_seq, metadata !831, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !848
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !832, metadata !DIExpression()), !dbg !849
  store i32 0, ptr %had_err, align 4, !dbg !849, !tbaa !436
  br label %do.body, !dbg !850

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %encseq.addr, align 8, !dbg !851, !tbaa !287
  %tobool = icmp ne ptr %0, null, !dbg !851
  br i1 %tobool, label %if.end, label %if.then, !dbg !854

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !855, !tbaa !287
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.24, ptr noundef @__func__.gt_encseq_sample_choose_sequences, ptr noundef @.str, i32 noundef 251), !dbg !855
  call void @abort() #8, !dbg !855
  unreachable, !dbg !855

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !854

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !854

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %encseq.addr, align 8, !dbg !857, !tbaa !287
  %call1 = call i64 @gt_encseq_min_seq_length(ptr noundef %2), !dbg !858
  store i64 %call1, ptr %sequence_length, align 8, !dbg !859, !tbaa !860
  %3 = load ptr, ptr %encseq.addr, align 8, !dbg !861, !tbaa !287
  %call2 = call i64 @gt_encseq_num_of_sequences(ptr noundef %3), !dbg !862
  store i64 %call2, ptr %total_num_seq, align 8, !dbg !863, !tbaa !860
  %4 = load i64, ptr %sequence_length, align 8, !dbg !864, !tbaa !860
  %5 = load ptr, ptr %encseq.addr, align 8, !dbg !866, !tbaa !287
  %call3 = call i64 @gt_encseq_max_seq_length(ptr noundef %5), !dbg !867
  %cmp = icmp ne i64 %4, %call3, !dbg !868
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !869

if.then4:                                         ; preds = %do.end
  %6 = load ptr, ptr %err.addr, align 8, !dbg !870, !tbaa !287
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %6, ptr noundef @.str.25), !dbg !872
  store i32 -1, ptr %retval, align 4, !dbg !873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !873

if.end5:                                          ; preds = %do.end
  %7 = load ptr, ptr %args.addr, align 8, !dbg !874, !tbaa !287
  %seqrng = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %7, i32 0, i32 3, !dbg !876
  %start = getelementptr inbounds %struct.GtRange, ptr %seqrng, i32 0, i32 0, !dbg !877
  %8 = load i64, ptr %start, align 8, !dbg !877, !tbaa !319
  %cmp6 = icmp ne i64 %8, -1, !dbg !878
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !879

land.lhs.true:                                    ; preds = %if.end5
  %9 = load ptr, ptr %args.addr, align 8, !dbg !880, !tbaa !287
  %seqrng7 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %9, i32 0, i32 3, !dbg !881
  %end = getelementptr inbounds %struct.GtRange, ptr %seqrng7, i32 0, i32 1, !dbg !882
  %10 = load i64, ptr %end, align 8, !dbg !882, !tbaa !314
  %cmp8 = icmp ne i64 %10, -1, !dbg !883
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !884

if.then9:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %args.addr, align 8, !dbg !885, !tbaa !287
  %seqrng10 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %11, i32 0, i32 3, !dbg !888
  %start11 = getelementptr inbounds %struct.GtRange, ptr %seqrng10, i32 0, i32 0, !dbg !889
  %12 = load i64, ptr %start11, align 8, !dbg !889, !tbaa !319
  %13 = load ptr, ptr %args.addr, align 8, !dbg !890, !tbaa !287
  %seqrng12 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %13, i32 0, i32 3, !dbg !891
  %end13 = getelementptr inbounds %struct.GtRange, ptr %seqrng12, i32 0, i32 1, !dbg !892
  %14 = load i64, ptr %end13, align 8, !dbg !892, !tbaa !314
  %cmp14 = icmp ugt i64 %12, %14, !dbg !893
  br i1 %cmp14, label %if.then15, label %if.end20, !dbg !894

if.then15:                                        ; preds = %if.then9
  %15 = load ptr, ptr %err.addr, align 8, !dbg !895, !tbaa !287
  %16 = load ptr, ptr %args.addr, align 8, !dbg !897, !tbaa !287
  %seqrng16 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %16, i32 0, i32 3, !dbg !898
  %start17 = getelementptr inbounds %struct.GtRange, ptr %seqrng16, i32 0, i32 0, !dbg !899
  %17 = load i64, ptr %start17, align 8, !dbg !899, !tbaa !319
  %18 = load ptr, ptr %args.addr, align 8, !dbg !900, !tbaa !287
  %seqrng18 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %18, i32 0, i32 3, !dbg !901
  %end19 = getelementptr inbounds %struct.GtRange, ptr %seqrng18, i32 0, i32 1, !dbg !902
  %19 = load i64, ptr %end19, align 8, !dbg !902, !tbaa !314
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %15, ptr noundef @.str.26, i64 noundef %17, i64 noundef %19), !dbg !903
  store i32 -1, ptr %retval, align 4, !dbg !904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !904

if.end20:                                         ; preds = %if.then9
  %20 = load ptr, ptr %args.addr, align 8, !dbg !905, !tbaa !287
  %seqrng21 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %20, i32 0, i32 3, !dbg !907
  %end22 = getelementptr inbounds %struct.GtRange, ptr %seqrng21, i32 0, i32 1, !dbg !908
  %21 = load i64, ptr %end22, align 8, !dbg !908, !tbaa !314
  %22 = load i64, ptr %total_num_seq, align 8, !dbg !909, !tbaa !860
  %cmp23 = icmp uge i64 %21, %22, !dbg !910
  br i1 %cmp23, label %if.then24, label %if.end30, !dbg !911

if.then24:                                        ; preds = %if.end20
  %23 = load ptr, ptr %err.addr, align 8, !dbg !912, !tbaa !287
  %24 = load ptr, ptr %args.addr, align 8, !dbg !914, !tbaa !287
  %seqrng25 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %24, i32 0, i32 3, !dbg !915
  %start26 = getelementptr inbounds %struct.GtRange, ptr %seqrng25, i32 0, i32 0, !dbg !916
  %25 = load i64, ptr %start26, align 8, !dbg !916, !tbaa !319
  %26 = load ptr, ptr %args.addr, align 8, !dbg !917, !tbaa !287
  %seqrng27 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %26, i32 0, i32 3, !dbg !918
  %end28 = getelementptr inbounds %struct.GtRange, ptr %seqrng27, i32 0, i32 1, !dbg !919
  %27 = load i64, ptr %end28, align 8, !dbg !919, !tbaa !314
  %28 = load ptr, ptr %encseq.addr, align 8, !dbg !920, !tbaa !287
  %call29 = call i64 @gt_encseq_num_of_sequences(ptr noundef %28), !dbg !921
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %23, ptr noundef @.str.27, i64 noundef %25, i64 noundef %27, i64 noundef %call29), !dbg !922
  store i32 -1, ptr %retval, align 4, !dbg !923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !923

if.end30:                                         ; preds = %if.end20
  %29 = load ptr, ptr %args.addr, align 8, !dbg !924, !tbaa !287
  %seqrng31 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %29, i32 0, i32 3, !dbg !925
  %start32 = getelementptr inbounds %struct.GtRange, ptr %seqrng31, i32 0, i32 0, !dbg !926
  %30 = load i64, ptr %start32, align 8, !dbg !926, !tbaa !319
  store i64 %30, ptr %sfrom, align 8, !dbg !927, !tbaa !860
  %31 = load ptr, ptr %args.addr, align 8, !dbg !928, !tbaa !287
  %seqrng33 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %31, i32 0, i32 3, !dbg !929
  %end34 = getelementptr inbounds %struct.GtRange, ptr %seqrng33, i32 0, i32 1, !dbg !930
  %32 = load i64, ptr %end34, align 8, !dbg !930, !tbaa !314
  store i64 %32, ptr %sto, align 8, !dbg !931, !tbaa !860
  %33 = load i64, ptr %sto, align 8, !dbg !932, !tbaa !860
  %add = add i64 1, %33, !dbg !933
  %34 = load i64, ptr %sfrom, align 8, !dbg !934, !tbaa !860
  %sub = sub i64 %add, %34, !dbg !935
  store i64 %sub, ptr %total_num_seq, align 8, !dbg !936, !tbaa !860
  br label %if.end36, !dbg !937

if.else:                                          ; preds = %land.lhs.true, %if.end5
  store i64 0, ptr %sfrom, align 8, !dbg !938, !tbaa !860
  %35 = load i64, ptr %total_num_seq, align 8, !dbg !940, !tbaa !860
  %sub35 = sub i64 %35, 1, !dbg !941
  store i64 %sub35, ptr %sto, align 8, !dbg !942, !tbaa !860
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end30
  %36 = load i64, ptr %sfrom, align 8, !dbg !943, !tbaa !860
  %37 = load ptr, ptr %output.addr, align 8, !dbg !944, !tbaa !287
  %offset = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %37, i32 0, i32 0, !dbg !945
  store i64 %36, ptr %offset, align 8, !dbg !946, !tbaa !947
  %38 = load ptr, ptr %args.addr, align 8, !dbg !949, !tbaa !287
  %len = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %38, i32 0, i32 7, !dbg !951
  %39 = load i64, ptr %len, align 8, !dbg !951, !tbaa !490
  %40 = load i64, ptr %total_num_seq, align 8, !dbg !952, !tbaa !860
  %41 = load i64, ptr %sequence_length, align 8, !dbg !953, !tbaa !860
  %mul = mul i64 %40, %41, !dbg !954
  %cmp37 = icmp ugt i64 %39, %mul, !dbg !955
  br i1 %cmp37, label %if.then38, label %if.end41, !dbg !956

if.then38:                                        ; preds = %if.end36
  %42 = load ptr, ptr %err.addr, align 8, !dbg !957, !tbaa !287
  %43 = load ptr, ptr %args.addr, align 8, !dbg !959, !tbaa !287
  %len39 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %43, i32 0, i32 7, !dbg !960
  %44 = load i64, ptr %len39, align 8, !dbg !960, !tbaa !490
  %45 = load i64, ptr %total_num_seq, align 8, !dbg !961, !tbaa !860
  %46 = load i64, ptr %sequence_length, align 8, !dbg !962, !tbaa !860
  %mul40 = mul i64 %45, %46, !dbg !963
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %42, ptr noundef @.str.28, i64 noundef %44, i64 noundef %mul40), !dbg !964
  store i32 -1, ptr %retval, align 4, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

if.end41:                                         ; preds = %if.end36
  %47 = load i64, ptr %total_num_seq, align 8, !dbg !966, !tbaa !860
  %call42 = call ptr @gt_bittab_new(i64 noundef %47), !dbg !967
  %48 = load ptr, ptr %output.addr, align 8, !dbg !968, !tbaa !287
  %sample = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %48, i32 0, i32 1, !dbg !969
  store ptr %call42, ptr %sample, align 8, !dbg !970, !tbaa !971
  %49 = load ptr, ptr %args.addr, align 8, !dbg !972, !tbaa !287
  %len43 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %49, i32 0, i32 7, !dbg !973
  %50 = load i64, ptr %len43, align 8, !dbg !973, !tbaa !490
  %conv = uitofp i64 %50 to double, !dbg !972
  %51 = load i64, ptr %sequence_length, align 8, !dbg !974, !tbaa !860
  %conv44 = uitofp i64 %51 to double, !dbg !975
  %div = fdiv double %conv, %conv44, !dbg !976
  %52 = call double @llvm.ceil.f64(double %div), !dbg !977
  %conv45 = fptoui double %52 to i64, !dbg !977
  store i64 %conv45, ptr %num_sequences, align 8, !dbg !978, !tbaa !860
  %53 = load i64, ptr %total_num_seq, align 8, !dbg !979, !tbaa !860
  %cmp46 = icmp ne i64 %53, 1, !dbg !981
  br i1 %cmp46, label %if.then48, label %if.else64, !dbg !982

if.then48:                                        ; preds = %if.end41
  store i64 0, ptr %count, align 8, !dbg !983, !tbaa !860
  %54 = load i64, ptr %total_num_seq, align 8, !dbg !985, !tbaa !860
  %sub49 = sub i64 %54, 1, !dbg !986
  %call50 = call i64 @gt_rand_max(i64 noundef %sub49), !dbg !987
  store i64 %call50, ptr %i, align 8, !dbg !988, !tbaa !860
  br label %while.cond, !dbg !989

while.cond:                                       ; preds = %if.end62, %if.then48
  %55 = load i64, ptr %count, align 8, !dbg !990, !tbaa !860
  %56 = load i64, ptr %num_sequences, align 8, !dbg !991, !tbaa !860
  %cmp51 = icmp ult i64 %55, %56, !dbg !992
  br i1 %cmp51, label %while.body, label %while.end, !dbg !989

while.body:                                       ; preds = %while.cond
  %57 = load i64, ptr %total_num_seq, align 8, !dbg !993, !tbaa !860
  %sub53 = sub i64 %57, 1, !dbg !996
  %call54 = call i64 @gt_rand_max(i64 noundef %sub53), !dbg !997
  %58 = load i64, ptr %num_sequences, align 8, !dbg !998, !tbaa !860
  %cmp55 = icmp ult i64 %call54, %58, !dbg !999
  br i1 %cmp55, label %land.lhs.true57, label %if.end62, !dbg !1000

land.lhs.true57:                                  ; preds = %while.body
  %59 = load ptr, ptr %output.addr, align 8, !dbg !1001, !tbaa !287
  %sample58 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %59, i32 0, i32 1, !dbg !1002
  %60 = load ptr, ptr %sample58, align 8, !dbg !1002, !tbaa !971
  %61 = load i64, ptr %i, align 8, !dbg !1003, !tbaa !860
  %call59 = call zeroext i1 @gt_bittab_bit_is_set(ptr noundef %60, i64 noundef %61), !dbg !1004
  br i1 %call59, label %if.end62, label %if.then60, !dbg !1005

if.then60:                                        ; preds = %land.lhs.true57
  %62 = load ptr, ptr %output.addr, align 8, !dbg !1006, !tbaa !287
  %sample61 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %62, i32 0, i32 1, !dbg !1008
  %63 = load ptr, ptr %sample61, align 8, !dbg !1008, !tbaa !971
  %64 = load i64, ptr %i, align 8, !dbg !1009, !tbaa !860
  call void @gt_bittab_set_bit(ptr noundef %63, i64 noundef %64), !dbg !1010
  %65 = load i64, ptr %count, align 8, !dbg !1011, !tbaa !860
  %inc = add i64 %65, 1, !dbg !1011
  store i64 %inc, ptr %count, align 8, !dbg !1011, !tbaa !860
  br label %if.end62, !dbg !1012

if.end62:                                         ; preds = %if.then60, %land.lhs.true57, %while.body
  %66 = load i64, ptr %i, align 8, !dbg !1013, !tbaa !860
  %add63 = add i64 %66, 1, !dbg !1014
  %67 = load i64, ptr %total_num_seq, align 8, !dbg !1015, !tbaa !860
  %rem = urem i64 %add63, %67, !dbg !1016
  store i64 %rem, ptr %i, align 8, !dbg !1017, !tbaa !860
  br label %while.cond, !dbg !989, !llvm.loop !1018

while.end:                                        ; preds = %while.cond
  br label %if.end66, !dbg !1021

if.else64:                                        ; preds = %if.end41
  %68 = load ptr, ptr %output.addr, align 8, !dbg !1022, !tbaa !287
  %sample65 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %68, i32 0, i32 1, !dbg !1024
  %69 = load ptr, ptr %sample65, align 8, !dbg !1024, !tbaa !971
  call void @gt_bittab_set_bit(ptr noundef %69, i64 noundef 0), !dbg !1025
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %while.end
  %70 = load i32, ptr %had_err, align 4, !dbg !1026, !tbaa !436
  store i32 %70, ptr %retval, align 4, !dbg !1027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1027

cleanup:                                          ; preds = %if.end66, %if.then38, %if.then24, %if.then15, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_num_seq) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_length) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_sequences) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %sto) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %sfrom) #7, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !1028
  %71 = load i32, ptr %retval, align 4, !dbg !1028
  ret i32 %71, !dbg !1028
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_encseq_sample_output(ptr noundef %encseq, ptr noundef %args, ptr noundef %output) #0 !dbg !1029 {
entry:
  %encseq.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %stop = alloca i64, align 8
  %esr = alloca ptr, align 8
  %is_concat = alloca i8, align 1
  %is_reverse = alloca i8, align 1
  %had_err = alloca i32, align 4
  %startpos = alloca i64, align 8
  %len = alloca i64, align 8
  %desclen = alloca i64, align 8
  %desc = alloca ptr, align 8
  %buf = alloca [8192 x i8], align 16
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !1033, metadata !DIExpression()), !dbg !1060
  store ptr %args, ptr %args.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1034, metadata !DIExpression()), !dbg !1061
  store ptr %output, ptr %output.addr, align 8, !tbaa !287
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !1035, metadata !DIExpression()), !dbg !1062
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !1063
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1036, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7, !dbg !1063
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1037, metadata !DIExpression()), !dbg !1065
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #7, !dbg !1063
  tail call void @llvm.dbg.declare(metadata ptr %stop, metadata !1038, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.start.p0(i64 8, ptr %esr) #7, !dbg !1067
  tail call void @llvm.dbg.declare(metadata ptr %esr, metadata !1039, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_concat) #7, !dbg !1069
  tail call void @llvm.dbg.declare(metadata ptr %is_concat, metadata !1043, metadata !DIExpression()), !dbg !1070
  %0 = load ptr, ptr %args.addr, align 8, !dbg !1071, !tbaa !287
  %mode = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %0, i32 0, i32 1, !dbg !1072
  %1 = load ptr, ptr %mode, align 8, !dbg !1072, !tbaa !295
  %call = call ptr @gt_str_get(ptr noundef %1), !dbg !1073
  %call1 = call i32 @strcmp(ptr noundef %call, ptr noundef @.str.4) #9, !dbg !1074
  %cmp = icmp eq i32 %call1, 0, !dbg !1075
  %frombool = zext i1 %cmp to i8, !dbg !1070
  store i8 %frombool, ptr %is_concat, align 1, !dbg !1070, !tbaa !1076
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_reverse) #7, !dbg !1077
  tail call void @llvm.dbg.declare(metadata ptr %is_reverse, metadata !1045, metadata !DIExpression()), !dbg !1078
  %2 = load ptr, ptr %args.addr, align 8, !dbg !1079, !tbaa !287
  %rm = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %2, i32 0, i32 5, !dbg !1079
  %3 = load i32, ptr %rm, align 8, !dbg !1079, !tbaa !485
  %cmp2 = icmp eq i32 %3, 1, !dbg !1079
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !1079

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %args.addr, align 8, !dbg !1079, !tbaa !287
  %rm3 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %4, i32 0, i32 5, !dbg !1079
  %5 = load i32, ptr %rm3, align 8, !dbg !1079, !tbaa !485
  %cmp4 = icmp eq i32 %5, 3, !dbg !1079
  br label %lor.end, !dbg !1079

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %frombool5 = zext i1 %6 to i8, !dbg !1078
  store i8 %frombool5, ptr %is_reverse, align 1, !dbg !1078, !tbaa !1076
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !1080
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !1046, metadata !DIExpression()), !dbg !1081
  store i32 0, ptr %had_err, align 4, !dbg !1081, !tbaa !436
  %7 = load ptr, ptr %output.addr, align 8, !dbg !1082, !tbaa !287
  %sample = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %7, i32 0, i32 1, !dbg !1083
  %8 = load ptr, ptr %sample, align 8, !dbg !1083, !tbaa !971
  %call6 = call i64 @gt_bittab_get_first_bitnum(ptr noundef %8), !dbg !1084
  %9 = load ptr, ptr %output.addr, align 8, !dbg !1085, !tbaa !287
  %offset = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %9, i32 0, i32 0, !dbg !1086
  %10 = load i64, ptr %offset, align 8, !dbg !1086, !tbaa !947
  %add = add i64 %call6, %10, !dbg !1087
  store i64 %add, ptr %i, align 8, !dbg !1088, !tbaa !860
  %11 = load ptr, ptr %output.addr, align 8, !dbg !1089, !tbaa !287
  %sample7 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %11, i32 0, i32 1, !dbg !1090
  %12 = load ptr, ptr %sample7, align 8, !dbg !1090, !tbaa !971
  %call8 = call i64 @gt_bittab_get_last_bitnum(ptr noundef %12), !dbg !1091
  %13 = load ptr, ptr %output.addr, align 8, !dbg !1092, !tbaa !287
  %offset9 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %13, i32 0, i32 0, !dbg !1093
  %14 = load i64, ptr %offset9, align 8, !dbg !1093, !tbaa !947
  %add10 = add i64 %call8, %14, !dbg !1094
  store i64 %add10, ptr %stop, align 8, !dbg !1095, !tbaa !860
  br label %while.cond, !dbg !1096

while.cond:                                       ; preds = %if.end81, %lor.end
  %15 = load i64, ptr %i, align 8, !dbg !1097, !tbaa !860
  %16 = load i64, ptr %stop, align 8, !dbg !1098, !tbaa !860
  %cmp11 = icmp ult i64 %15, %16, !dbg !1099
  br i1 %cmp11, label %while.body, label %while.end, !dbg !1096

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %startpos) #7, !dbg !1100
  tail call void @llvm.dbg.declare(metadata ptr %startpos, metadata !1047, metadata !DIExpression()), !dbg !1101
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !1100
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1049, metadata !DIExpression()), !dbg !1102
  %17 = load i8, ptr %is_reverse, align 1, !dbg !1103, !tbaa !1076, !range !1105, !noundef !1106
  %tobool = trunc i8 %17 to i1, !dbg !1103
  br i1 %tobool, label %if.then, label %if.else, !dbg !1107

if.then:                                          ; preds = %while.body
  %18 = load ptr, ptr %encseq.addr, align 8, !dbg !1108, !tbaa !287
  %19 = load ptr, ptr %encseq.addr, align 8, !dbg !1110, !tbaa !287
  %call12 = call i64 @gt_encseq_num_of_sequences(ptr noundef %19), !dbg !1111
  %sub = sub i64 %call12, 1, !dbg !1112
  %20 = load i64, ptr %i, align 8, !dbg !1113, !tbaa !860
  %sub13 = sub i64 %sub, %20, !dbg !1114
  %call14 = call i64 @gt_encseq_seqlength(ptr noundef %18, i64 noundef %sub13), !dbg !1115
  store i64 %call14, ptr %len, align 8, !dbg !1116, !tbaa !860
  %21 = load ptr, ptr %encseq.addr, align 8, !dbg !1117, !tbaa !287
  %call15 = call i64 @gt_encseq_total_length(ptr noundef %21), !dbg !1118
  %22 = load ptr, ptr %encseq.addr, align 8, !dbg !1119, !tbaa !287
  %23 = load ptr, ptr %encseq.addr, align 8, !dbg !1120, !tbaa !287
  %call16 = call i64 @gt_encseq_num_of_sequences(ptr noundef %23), !dbg !1121
  %sub17 = sub i64 %call16, 1, !dbg !1122
  %24 = load i64, ptr %i, align 8, !dbg !1123, !tbaa !860
  %sub18 = sub i64 %sub17, %24, !dbg !1124
  %call19 = call i64 @gt_encseq_seqstartpos(ptr noundef %22, i64 noundef %sub18), !dbg !1125
  %25 = load i64, ptr %len, align 8, !dbg !1126, !tbaa !860
  %add20 = add i64 %call19, %25, !dbg !1127
  %sub21 = sub i64 %call15, %add20, !dbg !1128
  store i64 %sub21, ptr %startpos, align 8, !dbg !1129, !tbaa !860
  br label %if.end, !dbg !1130

if.else:                                          ; preds = %while.body
  %26 = load ptr, ptr %encseq.addr, align 8, !dbg !1131, !tbaa !287
  %27 = load i64, ptr %i, align 8, !dbg !1133, !tbaa !860
  %call22 = call i64 @gt_encseq_seqstartpos(ptr noundef %26, i64 noundef %27), !dbg !1134
  store i64 %call22, ptr %startpos, align 8, !dbg !1135, !tbaa !860
  %28 = load ptr, ptr %encseq.addr, align 8, !dbg !1136, !tbaa !287
  %29 = load i64, ptr %i, align 8, !dbg !1137, !tbaa !860
  %call23 = call i64 @gt_encseq_seqlength(ptr noundef %28, i64 noundef %29), !dbg !1138
  store i64 %call23, ptr %len, align 8, !dbg !1139, !tbaa !860
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load i8, ptr %is_concat, align 1, !dbg !1140, !tbaa !1076, !range !1105, !noundef !1106
  %tobool24 = trunc i8 %30 to i1, !dbg !1140
  br i1 %tobool24, label %if.end47, label %if.then25, !dbg !1141

if.then25:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %desclen) #7, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %desclen, metadata !1050, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #7, !dbg !1144
  tail call void @llvm.dbg.declare(metadata ptr %desc, metadata !1053, metadata !DIExpression()), !dbg !1145
  store ptr null, ptr %desc, align 8, !dbg !1145, !tbaa !287
  %31 = load ptr, ptr %encseq.addr, align 8, !dbg !1146, !tbaa !287
  %call26 = call zeroext i1 @gt_encseq_has_description_support(ptr noundef %31), !dbg !1147
  br i1 %call26, label %if.then27, label %if.else37, !dbg !1148

if.then27:                                        ; preds = %if.then25
  %32 = load i8, ptr %is_reverse, align 1, !dbg !1149, !tbaa !1076, !range !1105, !noundef !1106
  %tobool28 = trunc i8 %32 to i1, !dbg !1149
  br i1 %tobool28, label %if.then29, label %if.else34, !dbg !1152

if.then29:                                        ; preds = %if.then27
  %33 = load ptr, ptr %encseq.addr, align 8, !dbg !1153, !tbaa !287
  %34 = load ptr, ptr %encseq.addr, align 8, !dbg !1155, !tbaa !287
  %call30 = call i64 @gt_encseq_num_of_sequences(ptr noundef %34), !dbg !1156
  %sub31 = sub i64 %call30, 1, !dbg !1157
  %35 = load i64, ptr %i, align 8, !dbg !1158, !tbaa !860
  %sub32 = sub i64 %sub31, %35, !dbg !1159
  %call33 = call ptr @gt_encseq_description(ptr noundef %33, ptr noundef %desclen, i64 noundef %sub32), !dbg !1160
  store ptr %call33, ptr %desc, align 8, !dbg !1161, !tbaa !287
  br label %if.end36, !dbg !1162

if.else34:                                        ; preds = %if.then27
  %36 = load ptr, ptr %encseq.addr, align 8, !dbg !1163, !tbaa !287
  %37 = load i64, ptr %i, align 8, !dbg !1165, !tbaa !860
  %call35 = call ptr @gt_encseq_description(ptr noundef %36, ptr noundef %desclen, i64 noundef %37), !dbg !1166
  store ptr %call35, ptr %desc, align 8, !dbg !1167, !tbaa !287
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then29
  br label %if.end42, !dbg !1168

if.else37:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buf) #7, !dbg !1169
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1054, metadata !DIExpression()), !dbg !1170
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0, !dbg !1171
  %38 = load i64, ptr %i, align 8, !dbg !1172, !tbaa !860
  %call38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 8192, ptr noundef @.str.29, i64 noundef %38) #7, !dbg !1173
  %arraydecay39 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0, !dbg !1174
  %call40 = call i64 @strlen(ptr noundef %arraydecay39) #9, !dbg !1175
  store i64 %call40, ptr %desclen, align 8, !dbg !1176, !tbaa !860
  %arraydecay41 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0, !dbg !1177
  store ptr %arraydecay41, ptr %desc, align 8, !dbg !1178, !tbaa !287
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buf) #7, !dbg !1179
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.end36
  br label %do.body, !dbg !1180

do.body:                                          ; preds = %if.end42
  %39 = load ptr, ptr %desc, align 8, !dbg !1181, !tbaa !287
  %tobool43 = icmp ne ptr %39, null, !dbg !1181
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !1184

if.then44:                                        ; preds = %do.body
  %40 = load ptr, ptr @stderr, align 8, !dbg !1185, !tbaa !287
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.1, ptr noundef @.str.30, ptr noundef @__func__.gt_encseq_sample_output, ptr noundef @.str, i32 noundef 207), !dbg !1185
  call void @abort() #8, !dbg !1185
  unreachable, !dbg !1185

if.end46:                                         ; preds = %do.body
  br label %do.cond, !dbg !1184

do.cond:                                          ; preds = %if.end46
  br label %do.end, !dbg !1184

do.end:                                           ; preds = %do.cond
  %41 = load ptr, ptr @stdout, align 8, !dbg !1187, !tbaa !287
  call void @gt_xfputc(i32 noundef 62, ptr noundef %41), !dbg !1188
  %42 = load ptr, ptr %desc, align 8, !dbg !1189, !tbaa !287
  %43 = load i64, ptr %desclen, align 8, !dbg !1190, !tbaa !860
  %44 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !287
  call void @gt_xfwrite(ptr noundef %42, i64 noundef 1, i64 noundef %43, ptr noundef %44), !dbg !1192
  %45 = load ptr, ptr @stdout, align 8, !dbg !1193, !tbaa !287
  call void @gt_xfputc(i32 noundef 10, ptr noundef %45), !dbg !1194
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #7, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr %desclen) #7, !dbg !1195
  br label %if.end47, !dbg !1196

if.end47:                                         ; preds = %do.end, %if.end
  %46 = load ptr, ptr %args.addr, align 8, !dbg !1197, !tbaa !287
  %singlechars = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %46, i32 0, i32 0, !dbg !1199
  %47 = load i8, ptr %singlechars, align 8, !dbg !1199, !tbaa !1200, !range !1105, !noundef !1106
  %tobool48 = trunc i8 %47 to i1, !dbg !1199
  br i1 %tobool48, label %if.then49, label %if.else54, !dbg !1201

if.then49:                                        ; preds = %if.end47
  store i64 0, ptr %j, align 8, !dbg !1202, !tbaa !860
  br label %for.cond, !dbg !1205

for.cond:                                         ; preds = %for.inc, %if.then49
  %48 = load i64, ptr %j, align 8, !dbg !1206, !tbaa !860
  %49 = load i64, ptr %len, align 8, !dbg !1208, !tbaa !860
  %cmp50 = icmp ult i64 %48, %49, !dbg !1209
  br i1 %cmp50, label %for.body, label %for.end, !dbg !1210

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %encseq.addr, align 8, !dbg !1211, !tbaa !287
  %51 = load i64, ptr %startpos, align 8, !dbg !1213, !tbaa !860
  %52 = load i64, ptr %j, align 8, !dbg !1214, !tbaa !860
  %add51 = add i64 %51, %52, !dbg !1215
  %53 = load ptr, ptr %args.addr, align 8, !dbg !1216, !tbaa !287
  %rm52 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %53, i32 0, i32 5, !dbg !1217
  %54 = load i32, ptr %rm52, align 8, !dbg !1217, !tbaa !485
  %call53 = call signext i8 @gt_encseq_get_decoded_char(ptr noundef %50, i64 noundef %add51, i32 noundef %54), !dbg !1218
  %conv = sext i8 %call53 to i32, !dbg !1218
  %55 = load ptr, ptr @stdout, align 8, !dbg !1219, !tbaa !287
  call void @gt_xfputc(i32 noundef %conv, ptr noundef %55), !dbg !1220
  br label %for.inc, !dbg !1221

for.inc:                                          ; preds = %for.body
  %56 = load i64, ptr %j, align 8, !dbg !1222, !tbaa !860
  %inc = add i64 %56, 1, !dbg !1222
  store i64 %inc, ptr %j, align 8, !dbg !1222, !tbaa !860
  br label %for.cond, !dbg !1223, !llvm.loop !1224

for.end:                                          ; preds = %for.cond
  br label %if.end66, !dbg !1226

if.else54:                                        ; preds = %if.end47
  %57 = load ptr, ptr %encseq.addr, align 8, !dbg !1227, !tbaa !287
  %58 = load ptr, ptr %args.addr, align 8, !dbg !1229, !tbaa !287
  %rm55 = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %58, i32 0, i32 5, !dbg !1230
  %59 = load i32, ptr %rm55, align 8, !dbg !1230, !tbaa !485
  %60 = load i64, ptr %startpos, align 8, !dbg !1231, !tbaa !860
  %call56 = call ptr @gt_encseq_create_reader_with_readmode(ptr noundef %57, i32 noundef %59, i64 noundef %60), !dbg !1232
  store ptr %call56, ptr %esr, align 8, !dbg !1233, !tbaa !287
  store i64 0, ptr %j, align 8, !dbg !1234, !tbaa !860
  br label %for.cond57, !dbg !1236

for.cond57:                                       ; preds = %for.inc63, %if.else54
  %61 = load i64, ptr %j, align 8, !dbg !1237, !tbaa !860
  %62 = load i64, ptr %len, align 8, !dbg !1239, !tbaa !860
  %cmp58 = icmp ult i64 %61, %62, !dbg !1240
  br i1 %cmp58, label %for.body60, label %for.end65, !dbg !1241

for.body60:                                       ; preds = %for.cond57
  %63 = load ptr, ptr %esr, align 8, !dbg !1242, !tbaa !287
  %call61 = call signext i8 @gt_encseq_reader_next_decoded_char(ptr noundef %63), !dbg !1244
  %conv62 = sext i8 %call61 to i32, !dbg !1244
  %64 = load ptr, ptr @stdout, align 8, !dbg !1245, !tbaa !287
  call void @gt_xfputc(i32 noundef %conv62, ptr noundef %64), !dbg !1246
  br label %for.inc63, !dbg !1247

for.inc63:                                        ; preds = %for.body60
  %65 = load i64, ptr %j, align 8, !dbg !1248, !tbaa !860
  %inc64 = add i64 %65, 1, !dbg !1248
  store i64 %inc64, ptr %j, align 8, !dbg !1248, !tbaa !860
  br label %for.cond57, !dbg !1249, !llvm.loop !1250

for.end65:                                        ; preds = %for.cond57
  %66 = load ptr, ptr %esr, align 8, !dbg !1252, !tbaa !287
  call void @gt_encseq_reader_delete(ptr noundef %66), !dbg !1253
  br label %if.end66

if.end66:                                         ; preds = %for.end65, %for.end
  %67 = load ptr, ptr %output.addr, align 8, !dbg !1254, !tbaa !287
  %sample67 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %67, i32 0, i32 1, !dbg !1255
  %68 = load ptr, ptr %sample67, align 8, !dbg !1255, !tbaa !971
  %69 = load i64, ptr %i, align 8, !dbg !1256, !tbaa !860
  %70 = load ptr, ptr %output.addr, align 8, !dbg !1257, !tbaa !287
  %offset68 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %70, i32 0, i32 0, !dbg !1258
  %71 = load i64, ptr %offset68, align 8, !dbg !1258, !tbaa !947
  %sub69 = sub i64 %69, %71, !dbg !1259
  %call70 = call i64 @gt_bittab_get_next_bitnum(ptr noundef %68, i64 noundef %sub69), !dbg !1260
  %72 = load ptr, ptr %output.addr, align 8, !dbg !1261, !tbaa !287
  %offset71 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %72, i32 0, i32 0, !dbg !1262
  %73 = load i64, ptr %offset71, align 8, !dbg !1262, !tbaa !947
  %add72 = add i64 %call70, %73, !dbg !1263
  store i64 %add72, ptr %i, align 8, !dbg !1264, !tbaa !860
  %74 = load i8, ptr %is_concat, align 1, !dbg !1265, !tbaa !1076, !range !1105, !noundef !1106
  %tobool73 = trunc i8 %74 to i1, !dbg !1265
  br i1 %tobool73, label %land.lhs.true, label %if.else80, !dbg !1267

land.lhs.true:                                    ; preds = %if.end66
  %75 = load i64, ptr %i, align 8, !dbg !1268, !tbaa !860
  %76 = load i64, ptr %stop, align 8, !dbg !1269, !tbaa !860
  %cmp75 = icmp ult i64 %75, %76, !dbg !1270
  br i1 %cmp75, label %if.then77, label %if.else80, !dbg !1271

if.then77:                                        ; preds = %land.lhs.true
  %77 = load ptr, ptr %args.addr, align 8, !dbg !1272, !tbaa !287
  %sepchar = getelementptr inbounds %struct.GtEncseqSampleArguments, ptr %77, i32 0, i32 2, !dbg !1274
  %78 = load ptr, ptr %sepchar, align 8, !dbg !1274, !tbaa !304
  %call78 = call ptr @gt_str_get(ptr noundef %78), !dbg !1275
  %arrayidx = getelementptr inbounds i8, ptr %call78, i64 0, !dbg !1275
  %79 = load i8, ptr %arrayidx, align 1, !dbg !1275, !tbaa !1276
  %conv79 = sext i8 %79 to i32, !dbg !1275
  %80 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !287
  call void @gt_xfputc(i32 noundef %conv79, ptr noundef %80), !dbg !1278
  br label %if.end81, !dbg !1279

if.else80:                                        ; preds = %land.lhs.true, %if.end66
  %81 = load ptr, ptr @stdout, align 8, !dbg !1280, !tbaa !287
  call void @gt_xfputc(i32 noundef 10, ptr noundef %81), !dbg !1282
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then77
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 8, ptr %startpos) #7, !dbg !1283
  br label %while.cond, !dbg !1096, !llvm.loop !1284

while.end:                                        ; preds = %while.cond
  %82 = load ptr, ptr %output.addr, align 8, !dbg !1285, !tbaa !287
  %sample82 = getelementptr inbounds %struct.GtEncseqSampleOutputInfo, ptr %82, i32 0, i32 1, !dbg !1286
  %83 = load ptr, ptr %sample82, align 8, !dbg !1286, !tbaa !971
  call void @gt_bittab_delete(ptr noundef %83), !dbg !1287
  %84 = load i32, ptr %had_err, align 4, !dbg !1288, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_reverse) #7, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_concat) #7, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr %esr) #7, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #7, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !1289
  ret i32 %84, !dbg !1290
}

declare !dbg !1291 void @gt_encseq_delete(ptr noundef) #1

declare !dbg !1294 ptr @gt_encseq_loader_new() #1

declare !dbg !1297 zeroext i1 @gt_encseq_options_lossless_value(ptr noundef) #1

declare !dbg !1300 void @gt_encseq_loader_require_lossless_support(ptr noundef) #1

declare !dbg !1303 ptr @gt_encseq_loader_load(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1306 zeroext i1 @gt_encseq_options_mirrored_value(ptr noundef) #1

declare !dbg !1307 zeroext i1 @gt_alphabet_is_dna(ptr noundef) #1

declare !dbg !1315 ptr @gt_encseq_alphabet(ptr noundef) #1

declare !dbg !1321 i32 @gt_encseq_mirror(ptr noundef, ptr noundef) #1

declare !dbg !1324 void @gt_encseq_loader_delete(ptr noundef) #1

declare !dbg !1325 zeroext i1 @gt_encseq_has_description_support(ptr noundef) #1

declare !dbg !1328 void @gt_warning(ptr noundef, ...) #1

declare !dbg !1332 i64 @gt_encseq_min_seq_length(ptr noundef) #1

declare !dbg !1335 i64 @gt_encseq_num_of_sequences(ptr noundef) #1

declare !dbg !1336 i64 @gt_encseq_max_seq_length(ptr noundef) #1

declare !dbg !1337 ptr @gt_bittab_new(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare !dbg !1340 i64 @gt_rand_max(i64 noundef) #1

declare !dbg !1344 zeroext i1 @gt_bittab_bit_is_set(ptr noundef, i64 noundef) #1

declare !dbg !1349 void @gt_bittab_set_bit(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1352 i32 @strcmp(ptr noundef, ptr noundef) #5

declare !dbg !1356 i64 @gt_bittab_get_first_bitnum(ptr noundef) #1

declare !dbg !1359 i64 @gt_bittab_get_last_bitnum(ptr noundef) #1

declare !dbg !1360 i64 @gt_encseq_seqlength(ptr noundef, i64 noundef) #1

declare !dbg !1363 i64 @gt_encseq_total_length(ptr noundef) #1

declare !dbg !1364 i64 @gt_encseq_seqstartpos(ptr noundef, i64 noundef) #1

declare !dbg !1365 ptr @gt_encseq_description(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare !dbg !1368 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1372 i64 @strlen(ptr noundef) #5

declare !dbg !1375 void @gt_xfputc(i32 noundef, ptr noundef) #1

declare !dbg !1379 void @gt_xfwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare !dbg !1384 signext i8 @gt_encseq_get_decoded_char(ptr noundef, i64 noundef, i32 noundef) #1

declare !dbg !1387 ptr @gt_encseq_create_reader_with_readmode(ptr noundef, i32 noundef, i64 noundef) #1

declare !dbg !1390 signext i8 @gt_encseq_reader_next_decoded_char(ptr noundef) #1

declare !dbg !1393 void @gt_encseq_reader_delete(ptr noundef) #1

declare !dbg !1396 i64 @gt_bittab_get_next_bitnum(ptr noundef, i64 noundef) #1

declare !dbg !1399 void @gt_bittab_delete(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tools/gt_encseq_sample.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "46ad4e3eafd5e06498dde20453c92427")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 280, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 35)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "modes", scope: !25, file: !2, line: 86, type: !235, isLocal: true, isDefinition: true)
!25 = distinct !DISubprogram(name: "gt_encseq_sample_option_parser_new", scope: !2, file: !2, line: 76, type: !26, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !223)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !32}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !30, line: 27, baseType: !31)
!30 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !30, line: 27, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !43, globals: !78, splitDebugInlining: false, nameTableKind: None)
!34 = !{!35}
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtReadmode", file: !36, line: 23, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "src/core/readmode_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1b062e226e296972a431b9bfcad13aa9")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "GT_READMODE_FORWARD", value: 0)
!40 = !DIEnumerator(name: "GT_READMODE_REVERSE", value: 1)
!41 = !DIEnumerator(name: "GT_READMODE_COMPL", value: 2)
!42 = !DIEnumerator(name: "GT_READMODE_REVCOMPL", value: 3)
!43 = !{!44, !32, !47, !74, !77}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 70, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqSampleArguments", file: !2, line: 47, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 38, size: 576, elements: !50)
!50 = !{!51, !53, !58, !59, !68, !73, !75, !76}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "singlechars", scope: !49, file: !2, line: 39, baseType: !52, size: 8)
!52 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !49, file: !2, line: 40, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !56, line: 27, baseType: !57)
!56 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !56, line: 27, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sepchar", scope: !49, file: !2, line: 41, baseType: !54, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "seqrng", scope: !49, file: !2, line: 42, baseType: !60, size: 128, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRange", file: !61, line: 29, baseType: !62)
!61 = !DIFile(filename: "src/core/range_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "05971597f0a8f239b91be35d4168fb4b")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtRange", file: !61, line: 31, size: 128, elements: !63)
!63 = !{!64, !67}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !62, file: !61, line: 32, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !66, line: 83, baseType: !46)
!66 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !62, file: !61, line: 33, baseType: !65, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "eopts", scope: !49, file: !2, line: 43, baseType: !69, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqOptions", file: !71, line: 25, baseType: !72)
!71 = !DIFile(filename: "src/core/encseq_options.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8490d5e75d47919b4324640a83a415af")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseqOptions", file: !71, line: 25, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !49, file: !2, line: 44, baseType: !74, size: 32, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtReadmode", file: !36, line: 32, baseType: !35)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !49, file: !2, line: 45, baseType: !54, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !49, file: !2, line: 46, baseType: !65, size: 64, offset: 512)
!77 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!78 = !{!0, !7, !12, !17, !79, !84, !23, !89, !94, !99, !104, !109, !111, !116, !121, !126, !128, !133, !138, !143, !148, !153, !158, !163, !168, !173, !178, !180, !182, !187, !189, !194, !199, !204, !209, !214, !219, !221}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 6)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 7)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 26)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 51)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 12)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 74)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !86, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 31)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 9)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 39)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !86, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 49)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 43)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 2)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 30)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 264, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 33)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 5)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 25)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 24)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 224, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 28)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !135, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !140, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 40)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !86, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 272, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 34)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 38)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 58)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 696, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 87)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 55)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 13)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !160, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !170, isLocal: true, isDefinition: true)
!223 = !{!224, !225, !226, !227, !231, !232, !233, !234}
!224 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !25, file: !2, line: 76, type: !32)
!225 = !DILocalVariable(name: "arguments", scope: !25, file: !2, line: 78, type: !47)
!226 = !DILocalVariable(name: "op", scope: !25, file: !2, line: 79, type: !28)
!227 = !DILocalVariable(name: "option", scope: !25, file: !2, line: 80, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !30, line: 33, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !30, line: 33, flags: DIFlagFwdDecl)
!231 = !DILocalVariable(name: "optionsep", scope: !25, file: !2, line: 81, type: !228)
!232 = !DILocalVariable(name: "optionlen", scope: !25, file: !2, line: 82, type: !228)
!233 = !DILocalVariable(name: "optionseqrange", scope: !25, file: !2, line: 83, type: !228)
!234 = !DILocalVariable(name: "optionmode", scope: !25, file: !2, line: 84, type: !228)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 192, elements: !237)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !{i32 7, !"Dwarf Version", i32 5}
!240 = !{i32 2, !"Debug Info Version", i32 3}
!241 = !{i32 1, !"wchar_size", i32 4}
!242 = !{i32 8, !"PIC Level", i32 2}
!243 = !{i32 7, !"uwtable", i32 2}
!244 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!245 = distinct !DISubprogram(name: "gt_encseq_sample", scope: !2, file: !2, line: 364, type: !246, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33)
!246 = !DISubroutineType(types: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTool", file: !250, line: 26, baseType: !251)
!250 = !DIFile(filename: "src/core/tool_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e867124201284063b8eb5758ec6a469a")
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTool", file: !250, line: 26, flags: DIFlagFwdDecl)
!252 = !DILocation(line: 366, column: 10, scope: !245)
!253 = !DILocation(line: 366, column: 3, scope: !245)
!254 = !DISubprogram(name: "gt_tool_new", scope: !250, file: !250, line: 66, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!248, !257, !261, !265, !267, !276}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsNew", file: !250, line: 30, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!32}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsDelete", file: !250, line: 33, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !32}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolOptionParserNew", file: !250, line: 36, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsCheck", file: !250, line: 41, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !271, !32, !272}
!271 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !274, line: 44, baseType: !275)
!274 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !274, line: 44, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolRunner", file: !250, line: 52, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!271, !271, !280, !271, !32, !272}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!281 = distinct !DISubprogram(name: "gt_encseq_sample_arguments_new", scope: !2, file: !2, line: 54, type: !259, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !282)
!282 = !{!283}
!283 = !DILocalVariable(name: "arguments", scope: !281, file: !2, line: 56, type: !47)
!284 = !DILocation(line: 56, column: 3, scope: !281)
!285 = !DILocation(line: 56, column: 28, scope: !281)
!286 = !DILocation(line: 56, column: 40, scope: !281)
!287 = !{!288, !288, i64 0}
!288 = !{!"any pointer", !289, i64 0}
!289 = !{!"omnipotent char", !290, i64 0}
!290 = !{!"Simple C/C++ TBAA"}
!291 = !DILocation(line: 57, column: 21, scope: !281)
!292 = !DILocation(line: 57, column: 3, scope: !281)
!293 = !DILocation(line: 57, column: 14, scope: !281)
!294 = !DILocation(line: 57, column: 19, scope: !281)
!295 = !{!296, !288, i64 8}
!296 = !{!"", !297, i64 0, !288, i64 8, !288, i64 16, !298, i64 24, !288, i64 40, !289, i64 48, !288, i64 56, !299, i64 64}
!297 = !{!"_Bool", !289, i64 0}
!298 = !{!"GtRange", !299, i64 0, !299, i64 8}
!299 = !{!"long", !289, i64 0}
!300 = !DILocation(line: 58, column: 24, scope: !281)
!301 = !DILocation(line: 58, column: 3, scope: !281)
!302 = !DILocation(line: 58, column: 14, scope: !281)
!303 = !DILocation(line: 58, column: 22, scope: !281)
!304 = !{!296, !288, i64 16}
!305 = !DILocation(line: 59, column: 20, scope: !281)
!306 = !DILocation(line: 59, column: 3, scope: !281)
!307 = !DILocation(line: 59, column: 14, scope: !281)
!308 = !DILocation(line: 59, column: 18, scope: !281)
!309 = !{!296, !288, i64 56}
!310 = !DILocation(line: 60, column: 29, scope: !281)
!311 = !DILocation(line: 60, column: 40, scope: !281)
!312 = !DILocation(line: 60, column: 47, scope: !281)
!313 = !DILocation(line: 60, column: 51, scope: !281)
!314 = !{!296, !299, i64 32}
!315 = !DILocation(line: 60, column: 3, scope: !281)
!316 = !DILocation(line: 60, column: 14, scope: !281)
!317 = !DILocation(line: 60, column: 21, scope: !281)
!318 = !DILocation(line: 60, column: 27, scope: !281)
!319 = !{!296, !299, i64 24}
!320 = !DILocation(line: 61, column: 10, scope: !281)
!321 = !DILocation(line: 62, column: 1, scope: !281)
!322 = !DILocation(line: 61, column: 3, scope: !281)
!323 = distinct !DISubprogram(name: "gt_encseq_sample_arguments_delete", scope: !2, file: !2, line: 64, type: !263, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !324)
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !323, file: !2, line: 64, type: !32)
!326 = !DILocalVariable(name: "arguments", scope: !323, file: !2, line: 66, type: !47)
!327 = !DILocation(line: 64, column: 53, scope: !323)
!328 = !DILocation(line: 66, column: 3, scope: !323)
!329 = !DILocation(line: 66, column: 28, scope: !323)
!330 = !DILocation(line: 66, column: 40, scope: !323)
!331 = !DILocation(line: 67, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !323, file: !2, line: 67, column: 7)
!333 = !DILocation(line: 67, column: 17, scope: !332)
!334 = !DILocation(line: 67, column: 7, scope: !323)
!335 = !DILocation(line: 68, column: 19, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !2, line: 67, column: 26)
!337 = !DILocation(line: 68, column: 30, scope: !336)
!338 = !DILocation(line: 68, column: 5, scope: !336)
!339 = !DILocation(line: 69, column: 19, scope: !336)
!340 = !DILocation(line: 69, column: 30, scope: !336)
!341 = !DILocation(line: 69, column: 5, scope: !336)
!342 = !DILocation(line: 70, column: 19, scope: !336)
!343 = !DILocation(line: 70, column: 30, scope: !336)
!344 = !DILocation(line: 70, column: 5, scope: !336)
!345 = !DILocation(line: 71, column: 30, scope: !336)
!346 = !DILocation(line: 71, column: 41, scope: !336)
!347 = !{!296, !288, i64 40}
!348 = !DILocation(line: 71, column: 5, scope: !336)
!349 = !DILocation(line: 72, column: 5, scope: !336)
!350 = !DILocation(line: 73, column: 3, scope: !336)
!351 = !DILocation(line: 74, column: 1, scope: !323)
!352 = !DILocation(line: 76, column: 65, scope: !25)
!353 = !DILocation(line: 78, column: 3, scope: !25)
!354 = !DILocation(line: 78, column: 28, scope: !25)
!355 = !DILocation(line: 78, column: 66, scope: !25)
!356 = !DILocation(line: 79, column: 3, scope: !25)
!357 = !DILocation(line: 79, column: 19, scope: !25)
!358 = !DILocation(line: 80, column: 3, scope: !25)
!359 = !DILocation(line: 80, column: 13, scope: !25)
!360 = !DILocation(line: 81, column: 13, scope: !25)
!361 = !DILocation(line: 82, column: 13, scope: !25)
!362 = !DILocation(line: 83, column: 13, scope: !25)
!363 = !DILocation(line: 84, column: 13, scope: !25)
!364 = !DILocation(line: 85, column: 3, scope: !25)
!365 = !DILocation(line: 85, column: 3, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 85, column: 3)
!367 = distinct !DILexicalBlock(scope: !25, file: !2, line: 85, column: 3)
!368 = !DILocation(line: 85, column: 3, scope: !367)
!369 = !DILocation(line: 85, column: 3, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !2, line: 85, column: 3)
!371 = !DILocation(line: 89, column: 8, scope: !25)
!372 = !DILocation(line: 89, column: 6, scope: !25)
!373 = !DILocation(line: 94, column: 57, scope: !25)
!374 = !DILocation(line: 94, column: 22, scope: !25)
!375 = !DILocation(line: 94, column: 3, scope: !25)
!376 = !DILocation(line: 94, column: 14, scope: !25)
!377 = !DILocation(line: 94, column: 20, scope: !25)
!378 = !DILocation(line: 95, column: 41, scope: !25)
!379 = !DILocation(line: 95, column: 45, scope: !25)
!380 = !DILocation(line: 95, column: 56, scope: !25)
!381 = !DILocation(line: 95, column: 3, scope: !25)
!382 = !DILocation(line: 101, column: 32, scope: !25)
!383 = !DILocation(line: 101, column: 43, scope: !25)
!384 = !DILocation(line: 98, column: 12, scope: !25)
!385 = !DILocation(line: 98, column: 10, scope: !25)
!386 = !DILocation(line: 103, column: 32, scope: !25)
!387 = !DILocation(line: 103, column: 3, scope: !25)
!388 = !DILocation(line: 104, column: 31, scope: !25)
!389 = !DILocation(line: 104, column: 35, scope: !25)
!390 = !DILocation(line: 104, column: 3, scope: !25)
!391 = !DILocation(line: 109, column: 36, scope: !25)
!392 = !DILocation(line: 109, column: 47, scope: !25)
!393 = !DILocation(line: 107, column: 15, scope: !25)
!394 = !DILocation(line: 107, column: 13, scope: !25)
!395 = !DILocation(line: 111, column: 31, scope: !25)
!396 = !DILocation(line: 111, column: 35, scope: !25)
!397 = !DILocation(line: 111, column: 3, scope: !25)
!398 = !DILocation(line: 116, column: 41, scope: !25)
!399 = !DILocation(line: 116, column: 52, scope: !25)
!400 = !DILocation(line: 114, column: 20, scope: !25)
!401 = !DILocation(line: 114, column: 18, scope: !25)
!402 = !DILocation(line: 118, column: 31, scope: !25)
!403 = !DILocation(line: 118, column: 35, scope: !25)
!404 = !DILocation(line: 118, column: 3, scope: !25)
!405 = !DILocation(line: 124, column: 37, scope: !25)
!406 = !DILocation(line: 124, column: 48, scope: !25)
!407 = !DILocation(line: 125, column: 37, scope: !25)
!408 = !DILocation(line: 121, column: 16, scope: !25)
!409 = !DILocation(line: 121, column: 14, scope: !25)
!410 = !DILocation(line: 127, column: 31, scope: !25)
!411 = !DILocation(line: 127, column: 35, scope: !25)
!412 = !DILocation(line: 127, column: 3, scope: !25)
!413 = !DILocation(line: 132, column: 36, scope: !25)
!414 = !DILocation(line: 132, column: 47, scope: !25)
!415 = !DILocation(line: 130, column: 15, scope: !25)
!416 = !DILocation(line: 130, column: 13, scope: !25)
!417 = !DILocation(line: 133, column: 31, scope: !25)
!418 = !DILocation(line: 133, column: 35, scope: !25)
!419 = !DILocation(line: 133, column: 3, scope: !25)
!420 = !DILocation(line: 134, column: 19, scope: !25)
!421 = !DILocation(line: 134, column: 30, scope: !25)
!422 = !DILocation(line: 134, column: 3, scope: !25)
!423 = !DILocation(line: 136, column: 37, scope: !25)
!424 = !DILocation(line: 136, column: 3, scope: !25)
!425 = !DILocation(line: 138, column: 10, scope: !25)
!426 = !DILocation(line: 139, column: 1, scope: !25)
!427 = !DILocation(line: 138, column: 3, scope: !25)
!428 = distinct !DISubprogram(name: "gt_encseq_sample_arguments_check", scope: !2, file: !2, line: 141, type: !269, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !429)
!429 = !{!430, !431, !432, !433, !434, !435}
!430 = !DILocalVariable(name: "rest_argc", arg: 1, scope: !428, file: !2, line: 141, type: !271)
!431 = !DILocalVariable(name: "tool_arguments", arg: 2, scope: !428, file: !2, line: 142, type: !32)
!432 = !DILocalVariable(name: "err", arg: 3, scope: !428, file: !2, line: 143, type: !272)
!433 = !DILocalVariable(name: "args", scope: !428, file: !2, line: 145, type: !47)
!434 = !DILocalVariable(name: "rval", scope: !428, file: !2, line: 146, type: !271)
!435 = !DILocalVariable(name: "had_err", scope: !428, file: !2, line: 147, type: !271)
!436 = !{!437, !437, i64 0}
!437 = !{!"int", !289, i64 0}
!438 = !DILocation(line: 141, column: 59, scope: !428)
!439 = !DILocation(line: 142, column: 46, scope: !428)
!440 = !DILocation(line: 143, column: 59, scope: !428)
!441 = !DILocation(line: 145, column: 3, scope: !428)
!442 = !DILocation(line: 145, column: 28, scope: !428)
!443 = !DILocation(line: 145, column: 63, scope: !428)
!444 = !DILocation(line: 146, column: 3, scope: !428)
!445 = !DILocation(line: 146, column: 7, scope: !428)
!446 = !DILocation(line: 147, column: 3, scope: !428)
!447 = !DILocation(line: 147, column: 7, scope: !428)
!448 = !DILocation(line: 148, column: 3, scope: !428)
!449 = !DILocation(line: 148, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !2, line: 148, column: 3)
!451 = distinct !DILexicalBlock(scope: !428, file: !2, line: 148, column: 3)
!452 = !DILocation(line: 148, column: 3, scope: !451)
!453 = !DILocation(line: 148, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !2, line: 148, column: 3)
!455 = !DILocation(line: 149, column: 3, scope: !428)
!456 = !DILocation(line: 149, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 149, column: 3)
!458 = distinct !DILexicalBlock(scope: !428, file: !2, line: 149, column: 3)
!459 = !DILocation(line: 149, column: 3, scope: !458)
!460 = !DILocation(line: 149, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !2, line: 149, column: 3)
!462 = !DILocation(line: 151, column: 21, scope: !463)
!463 = distinct !DILexicalBlock(scope: !428, file: !2, line: 151, column: 7)
!464 = !DILocation(line: 151, column: 27, scope: !463)
!465 = !DILocation(line: 151, column: 7, scope: !463)
!466 = !DILocation(line: 151, column: 32, scope: !463)
!467 = !DILocation(line: 151, column: 7, scope: !428)
!468 = !DILocation(line: 152, column: 41, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !2, line: 151, column: 37)
!470 = !DILocation(line: 152, column: 47, scope: !469)
!471 = !DILocation(line: 152, column: 30, scope: !469)
!472 = !DILocation(line: 152, column: 53, scope: !469)
!473 = !DILocation(line: 152, column: 12, scope: !469)
!474 = !DILocation(line: 152, column: 10, scope: !469)
!475 = !DILocation(line: 153, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !2, line: 153, column: 9)
!477 = !DILocation(line: 153, column: 14, scope: !476)
!478 = !DILocation(line: 153, column: 9, scope: !469)
!479 = !DILocation(line: 154, column: 15, scope: !476)
!480 = !DILocation(line: 154, column: 7, scope: !476)
!481 = !DILocation(line: 156, column: 31, scope: !476)
!482 = !DILocation(line: 156, column: 7, scope: !476)
!483 = !DILocation(line: 156, column: 13, scope: !476)
!484 = !DILocation(line: 156, column: 16, scope: !476)
!485 = !{!296, !289, i64 48}
!486 = !DILocation(line: 157, column: 3, scope: !469)
!487 = !DILocation(line: 158, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !428, file: !2, line: 158, column: 7)
!489 = !DILocation(line: 158, column: 13, scope: !488)
!490 = !{!296, !299, i64 64}
!491 = !DILocation(line: 158, column: 17, scope: !488)
!492 = !DILocation(line: 158, column: 7, scope: !428)
!493 = !DILocation(line: 159, column: 18, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !2, line: 158, column: 36)
!495 = !DILocation(line: 159, column: 5, scope: !494)
!496 = !DILocation(line: 160, column: 5, scope: !494)
!497 = !DILocation(line: 162, column: 10, scope: !428)
!498 = !DILocation(line: 162, column: 3, scope: !428)
!499 = !DILocation(line: 163, column: 1, scope: !428)
!500 = distinct !DISubprogram(name: "gt_encseq_sample_runner", scope: !2, file: !2, line: 344, type: !278, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !512, !522}
!502 = !DILocalVariable(name: "argc", arg: 1, scope: !500, file: !2, line: 344, type: !271)
!503 = !DILocalVariable(name: "argv", arg: 2, scope: !500, file: !2, line: 344, type: !280)
!504 = !DILocalVariable(name: "parsed_args", arg: 3, scope: !500, file: !2, line: 345, type: !271)
!505 = !DILocalVariable(name: "tool_arguments", arg: 4, scope: !500, file: !2, line: 345, type: !32)
!506 = !DILocalVariable(name: "err", arg: 5, scope: !500, file: !2, line: 346, type: !272)
!507 = !DILocalVariable(name: "encseq", scope: !500, file: !2, line: 348, type: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseq", file: !510, line: 48, baseType: !511)
!510 = !DIFile(filename: "src/core/encseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "bab4512cadee996edd2995020539d931")
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseq", file: !510, line: 48, flags: DIFlagFwdDecl)
!512 = !DILocalVariable(name: "output", scope: !500, file: !2, line: 349, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqSampleOutputInfo", file: !2, line: 52, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 49, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !514, file: !2, line: 50, baseType: !65, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sample", scope: !514, file: !2, line: 51, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBittab", file: !520, line: 26, baseType: !521)
!520 = !DIFile(filename: "src/core/bittab_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f860891bf3c2458e3eaa7c6ba3953bc8")
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBittab", file: !520, line: 26, flags: DIFlagFwdDecl)
!522 = !DILocalVariable(name: "had_err", scope: !500, file: !2, line: 350, type: !271)
!523 = !DILocation(line: 344, column: 50, scope: !500)
!524 = !DILocation(line: 344, column: 69, scope: !500)
!525 = !DILocation(line: 345, column: 40, scope: !500)
!526 = !DILocation(line: 345, column: 59, scope: !500)
!527 = !DILocation(line: 346, column: 55, scope: !500)
!528 = !DILocation(line: 348, column: 3, scope: !500)
!529 = !DILocation(line: 348, column: 13, scope: !500)
!530 = !DILocation(line: 349, column: 3, scope: !500)
!531 = !DILocation(line: 349, column: 28, scope: !500)
!532 = !DILocation(line: 350, column: 3, scope: !500)
!533 = !DILocation(line: 350, column: 7, scope: !500)
!534 = !DILocation(line: 351, column: 3, scope: !500)
!535 = !DILocation(line: 351, column: 3, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 351, column: 3)
!537 = distinct !DILexicalBlock(scope: !500, file: !2, line: 351, column: 3)
!538 = !DILocation(line: 351, column: 3, scope: !537)
!539 = !DILocation(line: 351, column: 3, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !2, line: 351, column: 3)
!541 = !DILocation(line: 352, column: 40, scope: !500)
!542 = !DILocation(line: 352, column: 45, scope: !500)
!543 = !DILocation(line: 352, column: 59, scope: !500)
!544 = !DILocation(line: 352, column: 75, scope: !500)
!545 = !DILocation(line: 352, column: 12, scope: !500)
!546 = !DILocation(line: 352, column: 10, scope: !500)
!547 = !DILocation(line: 353, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !500, file: !2, line: 353, column: 7)
!549 = !DILocation(line: 353, column: 14, scope: !548)
!550 = !DILocation(line: 353, column: 7, scope: !500)
!551 = !DILocation(line: 354, column: 49, scope: !548)
!552 = !DILocation(line: 354, column: 57, scope: !548)
!553 = !DILocation(line: 354, column: 73, scope: !548)
!554 = !DILocation(line: 354, column: 15, scope: !548)
!555 = !DILocation(line: 354, column: 13, scope: !548)
!556 = !DILocation(line: 354, column: 5, scope: !548)
!557 = !DILocation(line: 357, column: 13, scope: !548)
!558 = !DILocation(line: 358, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !500, file: !2, line: 358, column: 7)
!560 = !DILocation(line: 358, column: 7, scope: !500)
!561 = !DILocation(line: 359, column: 39, scope: !559)
!562 = !DILocation(line: 359, column: 47, scope: !559)
!563 = !DILocation(line: 359, column: 15, scope: !559)
!564 = !DILocation(line: 359, column: 13, scope: !559)
!565 = !DILocation(line: 359, column: 5, scope: !559)
!566 = !DILocation(line: 360, column: 20, scope: !500)
!567 = !DILocation(line: 360, column: 3, scope: !500)
!568 = !DILocation(line: 361, column: 10, scope: !500)
!569 = !DILocation(line: 362, column: 1, scope: !500)
!570 = !DILocation(line: 361, column: 3, scope: !500)
!571 = !DISubprogram(name: "gt_calloc_mem", scope: !572, file: !572, line: 62, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!573 = !DISubroutineType(types: !574)
!574 = !{!32, !44, !44, !236, !271}
!575 = !DISubprogram(name: "gt_str_new", scope: !56, file: !56, line: 30, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DISubroutineType(types: !577)
!577 = !{!54}
!578 = !DISubprogram(name: "gt_str_delete", scope: !56, file: !56, line: 90, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !54}
!581 = !DISubprogram(name: "gt_encseq_options_delete", scope: !71, file: !71, line: 50, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !69}
!584 = !DISubprogram(name: "gt_free_mem", scope: !572, file: !572, line: 75, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !32, !236, !271}
!587 = !DISubprogram(name: "fprintf", scope: !588, file: !588, line: 350, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!589 = !DISubroutineType(types: !590)
!590 = !{!271, !591, !649, null}
!591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !594, line: 7, baseType: !595)
!594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !596, line: 49, size: 1728, elements: !597)
!596 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!597 = !{!598, !599, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !614, !616, !617, !618, !622, !624, !626, !630, !633, !635, !638, !641, !642, !643, !644, !645}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !595, file: !596, line: 51, baseType: !271, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !595, file: !596, line: 54, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !595, file: !596, line: 55, baseType: !600, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !595, file: !596, line: 56, baseType: !600, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !595, file: !596, line: 57, baseType: !600, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !595, file: !596, line: 58, baseType: !600, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !595, file: !596, line: 59, baseType: !600, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !595, file: !596, line: 60, baseType: !600, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !595, file: !596, line: 61, baseType: !600, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !595, file: !596, line: 64, baseType: !600, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !595, file: !596, line: 65, baseType: !600, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !595, file: !596, line: 66, baseType: !600, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !595, file: !596, line: 68, baseType: !612, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !596, line: 36, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !595, file: !596, line: 70, baseType: !615, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !595, file: !596, line: 72, baseType: !271, size: 32, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !595, file: !596, line: 73, baseType: !271, size: 32, offset: 928)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !595, file: !596, line: 74, baseType: !619, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !620, line: 152, baseType: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!621 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !595, file: !596, line: 77, baseType: !623, size: 16, offset: 1024)
!623 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !595, file: !596, line: 78, baseType: !625, size: 8, offset: 1040)
!625 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !595, file: !596, line: 79, baseType: !627, size: 8, offset: 1048)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 1)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !595, file: !596, line: 81, baseType: !631, size: 64, offset: 1088)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !596, line: 43, baseType: null)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !595, file: !596, line: 89, baseType: !634, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !620, line: 153, baseType: !621)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !595, file: !596, line: 91, baseType: !636, size: 64, offset: 1216)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !596, line: 37, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !595, file: !596, line: 92, baseType: !639, size: 64, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !596, line: 38, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !595, file: !596, line: 93, baseType: !615, size: 64, offset: 1344)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !595, file: !596, line: 94, baseType: !32, size: 64, offset: 1408)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !595, file: !596, line: 95, baseType: !44, size: 64, offset: 1472)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !595, file: !596, line: 96, baseType: !271, size: 32, offset: 1536)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !595, file: !596, line: 98, baseType: !646, size: 160, offset: 1568)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 20)
!649 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!650 = !DISubprogram(name: "abort", scope: !651, file: !651, line: 598, type: !652, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!651 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!652 = !DISubroutineType(types: !653)
!653 = !{null}
!654 = !DISubprogram(name: "gt_option_parser_new", scope: !30, file: !30, line: 63, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!28, !236, !236}
!657 = !DISubprogram(name: "gt_encseq_options_register_loading", scope: !71, file: !71, line: 47, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = !DISubroutineType(types: !659)
!659 = !{!69, !28, !54}
!660 = !DISubprogram(name: "gt_encseq_options_add_readmode_option", scope: !71, file: !71, line: 39, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !28, !54}
!663 = !DISubprogram(name: "gt_option_new_bool", scope: !30, file: !30, line: 130, type: !664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubroutineType(types: !665)
!665 = !{!228, !236, !236, !666, !52}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!667 = !DISubprogram(name: "gt_option_is_extended_option", scope: !30, file: !30, line: 348, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !228}
!670 = !DISubprogram(name: "gt_option_parser_add_option", scope: !30, file: !30, line: 66, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !28, !228}
!673 = !DISubprogram(name: "gt_option_new_uword", scope: !30, file: !30, line: 227, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{!228, !236, !236, !676, !65}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!677 = !DISubprogram(name: "gt_option_new_range", scope: !30, file: !30, line: 275, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DISubroutineType(types: !679)
!679 = !{!228, !236, !236, !680, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!681 = !DISubprogram(name: "gt_option_new_choice", scope: !30, file: !30, line: 302, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DISubroutineType(types: !683)
!683 = !{!228, !236, !236, !54, !236, !280}
!684 = !DISubprogram(name: "gt_option_new_string", scope: !30, file: !30, line: 291, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubroutineType(types: !686)
!686 = !{!228, !236, !236, !54, !236}
!687 = !DISubprogram(name: "gt_option_imply", scope: !30, file: !30, line: 352, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !228, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!692 = !DISubprogram(name: "gt_option_parser_set_min_max_args", scope: !30, file: !30, line: 109, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !28, !37, !37}
!695 = !DISubprogram(name: "gt_error_is_set", scope: !274, file: !274, line: 64, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!696 = !DISubroutineType(types: !697)
!697 = !{!52, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!700 = !DISubprogram(name: "gt_str_length", scope: !56, file: !56, line: 74, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubroutineType(types: !702)
!702 = !{!65, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!705 = !DISubprogram(name: "gt_readmode_parse", scope: !36, file: !36, line: 42, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DISubroutineType(types: !707)
!707 = !{!271, !236, !272}
!708 = !DISubprogram(name: "gt_str_get", scope: !56, file: !56, line: 40, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubroutineType(types: !710)
!710 = !{!600, !703}
!711 = !DISubprogram(name: "gt_error_set", scope: !274, file: !274, line: 56, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !272, !236, null}
!714 = distinct !DISubprogram(name: "gt_encseq_sample_get_encseq", scope: !2, file: !2, line: 311, type: !715, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!508, !236, !47, !272}
!717 = !{!718, !719, !720, !721, !725, !726}
!718 = !DILocalVariable(name: "seqfile", arg: 1, scope: !714, file: !2, line: 311, type: !236)
!719 = !DILocalVariable(name: "args", arg: 2, scope: !714, file: !2, line: 312, type: !47)
!720 = !DILocalVariable(name: "err", arg: 3, scope: !714, file: !2, line: 313, type: !272)
!721 = !DILocalVariable(name: "encseq_loader", scope: !714, file: !2, line: 315, type: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqLoader", file: !510, line: 57, baseType: !724)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseqLoader", file: !510, line: 57, flags: DIFlagFwdDecl)
!725 = !DILocalVariable(name: "encseq", scope: !714, file: !2, line: 316, type: !508)
!726 = !DILocalVariable(name: "had_err", scope: !714, file: !2, line: 317, type: !271)
!727 = !DILocation(line: 311, column: 58, scope: !714)
!728 = !DILocation(line: 312, column: 71, scope: !714)
!729 = !DILocation(line: 313, column: 55, scope: !714)
!730 = !DILocation(line: 315, column: 3, scope: !714)
!731 = !DILocation(line: 315, column: 19, scope: !714)
!732 = !DILocation(line: 316, column: 3, scope: !714)
!733 = !DILocation(line: 316, column: 13, scope: !714)
!734 = !DILocation(line: 317, column: 3, scope: !714)
!735 = !DILocation(line: 317, column: 7, scope: !714)
!736 = !DILocation(line: 318, column: 3, scope: !714)
!737 = !DILocation(line: 318, column: 3, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 318, column: 3)
!739 = distinct !DILexicalBlock(scope: !714, file: !2, line: 318, column: 3)
!740 = !DILocation(line: 318, column: 3, scope: !739)
!741 = !DILocation(line: 318, column: 3, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !2, line: 318, column: 3)
!743 = !DILocation(line: 319, column: 3, scope: !714)
!744 = !DILocation(line: 319, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !2, line: 319, column: 3)
!746 = distinct !DILexicalBlock(scope: !714, file: !2, line: 319, column: 3)
!747 = !DILocation(line: 319, column: 3, scope: !746)
!748 = !DILocation(line: 319, column: 3, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !2, line: 319, column: 3)
!750 = !DILocation(line: 320, column: 19, scope: !714)
!751 = !DILocation(line: 320, column: 17, scope: !714)
!752 = !DILocation(line: 321, column: 8, scope: !753)
!753 = distinct !DILexicalBlock(scope: !714, file: !2, line: 321, column: 7)
!754 = !DILocation(line: 321, column: 16, scope: !753)
!755 = !DILocation(line: 321, column: 52, scope: !753)
!756 = !DILocation(line: 321, column: 58, scope: !753)
!757 = !DILocation(line: 321, column: 19, scope: !753)
!758 = !DILocation(line: 321, column: 7, scope: !714)
!759 = !DILocation(line: 322, column: 47, scope: !760)
!760 = distinct !DILexicalBlock(scope: !753, file: !2, line: 321, column: 66)
!761 = !DILocation(line: 322, column: 5, scope: !760)
!762 = !DILocation(line: 323, column: 3, scope: !760)
!763 = !DILocation(line: 324, column: 40, scope: !764)
!764 = distinct !DILexicalBlock(scope: !714, file: !2, line: 324, column: 7)
!765 = !DILocation(line: 324, column: 55, scope: !764)
!766 = !DILocation(line: 324, column: 64, scope: !764)
!767 = !DILocation(line: 324, column: 18, scope: !764)
!768 = !DILocation(line: 324, column: 16, scope: !764)
!769 = !DILocation(line: 324, column: 7, scope: !714)
!770 = !DILocation(line: 325, column: 13, scope: !764)
!771 = !DILocation(line: 325, column: 5, scope: !764)
!772 = !DILocation(line: 326, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !714, file: !2, line: 326, column: 7)
!774 = !DILocation(line: 326, column: 16, scope: !773)
!775 = !DILocation(line: 326, column: 52, scope: !773)
!776 = !DILocation(line: 326, column: 58, scope: !773)
!777 = !DILocation(line: 326, column: 19, scope: !773)
!778 = !DILocation(line: 326, column: 7, scope: !714)
!779 = !DILocation(line: 327, column: 48, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 327, column: 9)
!781 = distinct !DILexicalBlock(scope: !773, file: !2, line: 326, column: 66)
!782 = !DILocation(line: 327, column: 29, scope: !780)
!783 = !DILocation(line: 327, column: 10, scope: !780)
!784 = !DILocation(line: 327, column: 9, scope: !781)
!785 = !DILocation(line: 328, column: 20, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !2, line: 327, column: 58)
!787 = !DILocation(line: 328, column: 7, scope: !786)
!788 = !DILocation(line: 329, column: 15, scope: !786)
!789 = !DILocation(line: 330, column: 5, scope: !786)
!790 = !DILocation(line: 331, column: 10, scope: !791)
!791 = distinct !DILexicalBlock(scope: !781, file: !2, line: 331, column: 9)
!792 = !DILocation(line: 331, column: 9, scope: !781)
!793 = !DILocation(line: 332, column: 34, scope: !791)
!794 = !DILocation(line: 332, column: 42, scope: !791)
!795 = !DILocation(line: 332, column: 17, scope: !791)
!796 = !DILocation(line: 332, column: 15, scope: !791)
!797 = !DILocation(line: 332, column: 7, scope: !791)
!798 = !DILocation(line: 333, column: 3, scope: !781)
!799 = !DILocation(line: 334, column: 27, scope: !714)
!800 = !DILocation(line: 334, column: 3, scope: !714)
!801 = !DILocation(line: 335, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !714, file: !2, line: 335, column: 7)
!803 = !DILocation(line: 335, column: 7, scope: !714)
!804 = !DILocation(line: 336, column: 44, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !2, line: 336, column: 9)
!806 = distinct !DILexicalBlock(scope: !802, file: !2, line: 335, column: 17)
!807 = !DILocation(line: 336, column: 10, scope: !805)
!808 = !DILocation(line: 336, column: 9, scope: !806)
!809 = !DILocation(line: 337, column: 61, scope: !805)
!810 = !DILocation(line: 337, column: 7, scope: !805)
!811 = !DILocation(line: 338, column: 12, scope: !806)
!812 = !DILocation(line: 338, column: 5, scope: !806)
!813 = !DILocation(line: 340, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !802, file: !2, line: 339, column: 10)
!815 = !DILocation(line: 342, column: 1, scope: !714)
!816 = distinct !DISubprogram(name: "gt_encseq_sample_choose_sequences", scope: !2, file: !2, line: 240, type: !817, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !820)
!817 = !DISubroutineType(types: !818)
!818 = !{!271, !508, !47, !272, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832}
!821 = !DILocalVariable(name: "encseq", arg: 1, scope: !816, file: !2, line: 240, type: !508)
!822 = !DILocalVariable(name: "args", arg: 2, scope: !816, file: !2, line: 241, type: !47)
!823 = !DILocalVariable(name: "err", arg: 3, scope: !816, file: !2, line: 242, type: !272)
!824 = !DILocalVariable(name: "output", arg: 4, scope: !816, file: !2, line: 243, type: !819)
!825 = !DILocalVariable(name: "i", scope: !816, file: !2, line: 245, type: !65)
!826 = !DILocalVariable(name: "sfrom", scope: !816, file: !2, line: 245, type: !65)
!827 = !DILocalVariable(name: "sto", scope: !816, file: !2, line: 245, type: !65)
!828 = !DILocalVariable(name: "num_sequences", scope: !816, file: !2, line: 246, type: !65)
!829 = !DILocalVariable(name: "count", scope: !816, file: !2, line: 246, type: !65)
!830 = !DILocalVariable(name: "sequence_length", scope: !816, file: !2, line: 247, type: !65)
!831 = !DILocalVariable(name: "total_num_seq", scope: !816, file: !2, line: 248, type: !65)
!832 = !DILocalVariable(name: "had_err", scope: !816, file: !2, line: 249, type: !271)
!833 = !DILocation(line: 240, column: 56, scope: !816)
!834 = !DILocation(line: 241, column: 71, scope: !816)
!835 = !DILocation(line: 242, column: 55, scope: !816)
!836 = !DILocation(line: 243, column: 72, scope: !816)
!837 = !DILocation(line: 245, column: 3, scope: !816)
!838 = !DILocation(line: 245, column: 11, scope: !816)
!839 = !DILocation(line: 245, column: 14, scope: !816)
!840 = !DILocation(line: 245, column: 21, scope: !816)
!841 = !DILocation(line: 246, column: 3, scope: !816)
!842 = !DILocation(line: 246, column: 11, scope: !816)
!843 = !DILocation(line: 246, column: 26, scope: !816)
!844 = !DILocation(line: 247, column: 3, scope: !816)
!845 = !DILocation(line: 247, column: 11, scope: !816)
!846 = !DILocation(line: 248, column: 3, scope: !816)
!847 = !DILocation(line: 248, column: 11, scope: !816)
!848 = !DILocation(line: 249, column: 3, scope: !816)
!849 = !DILocation(line: 249, column: 7, scope: !816)
!850 = !DILocation(line: 251, column: 3, scope: !816)
!851 = !DILocation(line: 251, column: 3, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 251, column: 3)
!853 = distinct !DILexicalBlock(scope: !816, file: !2, line: 251, column: 3)
!854 = !DILocation(line: 251, column: 3, scope: !853)
!855 = !DILocation(line: 251, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !2, line: 251, column: 3)
!857 = !DILocation(line: 252, column: 46, scope: !816)
!858 = !DILocation(line: 252, column: 21, scope: !816)
!859 = !DILocation(line: 252, column: 19, scope: !816)
!860 = !{!299, !299, i64 0}
!861 = !DILocation(line: 253, column: 46, scope: !816)
!862 = !DILocation(line: 253, column: 19, scope: !816)
!863 = !DILocation(line: 253, column: 17, scope: !816)
!864 = !DILocation(line: 255, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !816, file: !2, line: 255, column: 7)
!866 = !DILocation(line: 255, column: 51, scope: !865)
!867 = !DILocation(line: 255, column: 26, scope: !865)
!868 = !DILocation(line: 255, column: 23, scope: !865)
!869 = !DILocation(line: 255, column: 7, scope: !816)
!870 = !DILocation(line: 256, column: 18, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !2, line: 255, column: 60)
!872 = !DILocation(line: 256, column: 5, scope: !871)
!873 = !DILocation(line: 257, column: 5, scope: !871)
!874 = !DILocation(line: 259, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !816, file: !2, line: 259, column: 7)
!876 = !DILocation(line: 259, column: 13, scope: !875)
!877 = !DILocation(line: 259, column: 20, scope: !875)
!878 = !DILocation(line: 259, column: 26, scope: !875)
!879 = !DILocation(line: 259, column: 44, scope: !875)
!880 = !DILocation(line: 260, column: 7, scope: !875)
!881 = !DILocation(line: 260, column: 13, scope: !875)
!882 = !DILocation(line: 260, column: 20, scope: !875)
!883 = !DILocation(line: 260, column: 24, scope: !875)
!884 = !DILocation(line: 259, column: 7, scope: !816)
!885 = !DILocation(line: 262, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 262, column: 9)
!887 = distinct !DILexicalBlock(scope: !875, file: !2, line: 260, column: 43)
!888 = !DILocation(line: 262, column: 15, scope: !886)
!889 = !DILocation(line: 262, column: 22, scope: !886)
!890 = !DILocation(line: 262, column: 30, scope: !886)
!891 = !DILocation(line: 262, column: 36, scope: !886)
!892 = !DILocation(line: 262, column: 43, scope: !886)
!893 = !DILocation(line: 262, column: 28, scope: !886)
!894 = !DILocation(line: 262, column: 9, scope: !887)
!895 = !DILocation(line: 263, column: 20, scope: !896)
!896 = distinct !DILexicalBlock(scope: !886, file: !2, line: 262, column: 48)
!897 = !DILocation(line: 265, column: 7, scope: !896)
!898 = !DILocation(line: 265, column: 13, scope: !896)
!899 = !DILocation(line: 265, column: 20, scope: !896)
!900 = !DILocation(line: 265, column: 27, scope: !896)
!901 = !DILocation(line: 265, column: 33, scope: !896)
!902 = !DILocation(line: 265, column: 40, scope: !896)
!903 = !DILocation(line: 263, column: 7, scope: !896)
!904 = !DILocation(line: 266, column: 7, scope: !896)
!905 = !DILocation(line: 268, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !887, file: !2, line: 268, column: 9)
!907 = !DILocation(line: 268, column: 15, scope: !906)
!908 = !DILocation(line: 268, column: 22, scope: !906)
!909 = !DILocation(line: 268, column: 29, scope: !906)
!910 = !DILocation(line: 268, column: 26, scope: !906)
!911 = !DILocation(line: 268, column: 9, scope: !887)
!912 = !DILocation(line: 269, column: 20, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !2, line: 268, column: 44)
!914 = !DILocation(line: 271, column: 20, scope: !913)
!915 = !DILocation(line: 271, column: 26, scope: !913)
!916 = !DILocation(line: 271, column: 33, scope: !913)
!917 = !DILocation(line: 271, column: 40, scope: !913)
!918 = !DILocation(line: 271, column: 46, scope: !913)
!919 = !DILocation(line: 271, column: 53, scope: !913)
!920 = !DILocation(line: 272, column: 47, scope: !913)
!921 = !DILocation(line: 272, column: 20, scope: !913)
!922 = !DILocation(line: 269, column: 7, scope: !913)
!923 = !DILocation(line: 273, column: 7, scope: !913)
!924 = !DILocation(line: 275, column: 13, scope: !887)
!925 = !DILocation(line: 275, column: 19, scope: !887)
!926 = !DILocation(line: 275, column: 26, scope: !887)
!927 = !DILocation(line: 275, column: 11, scope: !887)
!928 = !DILocation(line: 276, column: 11, scope: !887)
!929 = !DILocation(line: 276, column: 17, scope: !887)
!930 = !DILocation(line: 276, column: 24, scope: !887)
!931 = !DILocation(line: 276, column: 9, scope: !887)
!932 = !DILocation(line: 277, column: 23, scope: !887)
!933 = !DILocation(line: 277, column: 22, scope: !887)
!934 = !DILocation(line: 277, column: 27, scope: !887)
!935 = !DILocation(line: 277, column: 26, scope: !887)
!936 = !DILocation(line: 277, column: 19, scope: !887)
!937 = !DILocation(line: 278, column: 3, scope: !887)
!938 = !DILocation(line: 280, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !875, file: !2, line: 278, column: 10)
!940 = !DILocation(line: 281, column: 11, scope: !939)
!941 = !DILocation(line: 281, column: 24, scope: !939)
!942 = !DILocation(line: 281, column: 9, scope: !939)
!943 = !DILocation(line: 283, column: 20, scope: !816)
!944 = !DILocation(line: 283, column: 3, scope: !816)
!945 = !DILocation(line: 283, column: 11, scope: !816)
!946 = !DILocation(line: 283, column: 18, scope: !816)
!947 = !{!948, !299, i64 0}
!948 = !{!"", !299, i64 0, !288, i64 8}
!949 = !DILocation(line: 284, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !816, file: !2, line: 284, column: 7)
!951 = !DILocation(line: 284, column: 13, scope: !950)
!952 = !DILocation(line: 284, column: 19, scope: !950)
!953 = !DILocation(line: 284, column: 35, scope: !950)
!954 = !DILocation(line: 284, column: 33, scope: !950)
!955 = !DILocation(line: 284, column: 17, scope: !950)
!956 = !DILocation(line: 284, column: 7, scope: !816)
!957 = !DILocation(line: 285, column: 18, scope: !958)
!958 = distinct !DILexicalBlock(scope: !950, file: !2, line: 284, column: 52)
!959 = !DILocation(line: 286, column: 19, scope: !958)
!960 = !DILocation(line: 286, column: 25, scope: !958)
!961 = !DILocation(line: 286, column: 30, scope: !958)
!962 = !DILocation(line: 286, column: 44, scope: !958)
!963 = !DILocation(line: 286, column: 43, scope: !958)
!964 = !DILocation(line: 285, column: 5, scope: !958)
!965 = !DILocation(line: 287, column: 5, scope: !958)
!966 = !DILocation(line: 291, column: 34, scope: !816)
!967 = !DILocation(line: 291, column: 20, scope: !816)
!968 = !DILocation(line: 291, column: 3, scope: !816)
!969 = !DILocation(line: 291, column: 11, scope: !816)
!970 = !DILocation(line: 291, column: 18, scope: !816)
!971 = !{!948, !288, i64 8}
!972 = !DILocation(line: 292, column: 24, scope: !816)
!973 = !DILocation(line: 292, column: 30, scope: !816)
!974 = !DILocation(line: 292, column: 44, scope: !816)
!975 = !DILocation(line: 292, column: 36, scope: !816)
!976 = !DILocation(line: 292, column: 34, scope: !816)
!977 = !DILocation(line: 292, column: 19, scope: !816)
!978 = !DILocation(line: 292, column: 17, scope: !816)
!979 = !DILocation(line: 293, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !816, file: !2, line: 293, column: 7)
!981 = !DILocation(line: 293, column: 21, scope: !980)
!982 = !DILocation(line: 293, column: 7, scope: !816)
!983 = !DILocation(line: 294, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !2, line: 293, column: 27)
!985 = !DILocation(line: 295, column: 21, scope: !984)
!986 = !DILocation(line: 295, column: 34, scope: !984)
!987 = !DILocation(line: 295, column: 9, scope: !984)
!988 = !DILocation(line: 295, column: 7, scope: !984)
!989 = !DILocation(line: 296, column: 5, scope: !984)
!990 = !DILocation(line: 296, column: 12, scope: !984)
!991 = !DILocation(line: 296, column: 20, scope: !984)
!992 = !DILocation(line: 296, column: 18, scope: !984)
!993 = !DILocation(line: 298, column: 23, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 298, column: 11)
!995 = distinct !DILexicalBlock(scope: !984, file: !2, line: 296, column: 35)
!996 = !DILocation(line: 298, column: 36, scope: !994)
!997 = !DILocation(line: 298, column: 11, scope: !994)
!998 = !DILocation(line: 298, column: 42, scope: !994)
!999 = !DILocation(line: 298, column: 40, scope: !994)
!1000 = !DILocation(line: 298, column: 56, scope: !994)
!1001 = !DILocation(line: 299, column: 31, scope: !994)
!1002 = !DILocation(line: 299, column: 39, scope: !994)
!1003 = !DILocation(line: 299, column: 47, scope: !994)
!1004 = !DILocation(line: 299, column: 10, scope: !994)
!1005 = !DILocation(line: 298, column: 11, scope: !995)
!1006 = !DILocation(line: 300, column: 27, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !994, file: !2, line: 299, column: 51)
!1008 = !DILocation(line: 300, column: 35, scope: !1007)
!1009 = !DILocation(line: 300, column: 43, scope: !1007)
!1010 = !DILocation(line: 300, column: 9, scope: !1007)
!1011 = !DILocation(line: 301, column: 13, scope: !1007)
!1012 = !DILocation(line: 302, column: 9, scope: !1007)
!1013 = !DILocation(line: 303, column: 14, scope: !995)
!1014 = !DILocation(line: 303, column: 15, scope: !995)
!1015 = !DILocation(line: 303, column: 21, scope: !995)
!1016 = !DILocation(line: 303, column: 19, scope: !995)
!1017 = !DILocation(line: 303, column: 11, scope: !995)
!1018 = distinct !{!1018, !989, !1019, !1020}
!1019 = !DILocation(line: 304, column: 5, scope: !984)
!1020 = !{!"llvm.loop.mustprogress"}
!1021 = !DILocation(line: 305, column: 3, scope: !984)
!1022 = !DILocation(line: 306, column: 23, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !980, file: !2, line: 305, column: 10)
!1024 = !DILocation(line: 306, column: 31, scope: !1023)
!1025 = !DILocation(line: 306, column: 5, scope: !1023)
!1026 = !DILocation(line: 308, column: 10, scope: !816)
!1027 = !DILocation(line: 308, column: 3, scope: !816)
!1028 = !DILocation(line: 309, column: 1, scope: !816)
!1029 = distinct !DISubprogram(name: "gt_encseq_sample_output", scope: !2, file: !2, line: 165, type: !1030, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!271, !508, !47, !819}
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1043, !1045, !1046, !1047, !1049, !1050, !1053, !1054}
!1033 = !DILocalVariable(name: "encseq", arg: 1, scope: !1029, file: !2, line: 165, type: !508)
!1034 = !DILocalVariable(name: "args", arg: 2, scope: !1029, file: !2, line: 166, type: !47)
!1035 = !DILocalVariable(name: "output", arg: 3, scope: !1029, file: !2, line: 167, type: !819)
!1036 = !DILocalVariable(name: "i", scope: !1029, file: !2, line: 169, type: !65)
!1037 = !DILocalVariable(name: "j", scope: !1029, file: !2, line: 169, type: !65)
!1038 = !DILocalVariable(name: "stop", scope: !1029, file: !2, line: 169, type: !65)
!1039 = !DILocalVariable(name: "esr", scope: !1029, file: !2, line: 170, type: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqReader", file: !510, line: 65, baseType: !1042)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseqReader", file: !510, line: 65, flags: DIFlagFwdDecl)
!1043 = !DILocalVariable(name: "is_concat", scope: !1029, file: !2, line: 171, type: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1045 = !DILocalVariable(name: "is_reverse", scope: !1029, file: !2, line: 172, type: !1044)
!1046 = !DILocalVariable(name: "had_err", scope: !1029, file: !2, line: 173, type: !271)
!1047 = !DILocalVariable(name: "startpos", scope: !1048, file: !2, line: 179, type: !65)
!1048 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 178, column: 20)
!1049 = !DILocalVariable(name: "len", scope: !1048, file: !2, line: 179, type: !65)
!1050 = !DILocalVariable(name: "desclen", scope: !1051, file: !2, line: 192, type: !65)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 191, column: 21)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 191, column: 9)
!1053 = !DILocalVariable(name: "desc", scope: !1051, file: !2, line: 193, type: !236)
!1054 = !DILocalVariable(name: "buf", scope: !1055, file: !2, line: 202, type: !1057)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 201, column: 14)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 194, column: 11)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 8192)
!1060 = !DILocation(line: 165, column: 46, scope: !1029)
!1061 = !DILocation(line: 166, column: 61, scope: !1029)
!1062 = !DILocation(line: 167, column: 62, scope: !1029)
!1063 = !DILocation(line: 169, column: 3, scope: !1029)
!1064 = !DILocation(line: 169, column: 11, scope: !1029)
!1065 = !DILocation(line: 169, column: 14, scope: !1029)
!1066 = !DILocation(line: 169, column: 17, scope: !1029)
!1067 = !DILocation(line: 170, column: 3, scope: !1029)
!1068 = !DILocation(line: 170, column: 19, scope: !1029)
!1069 = !DILocation(line: 171, column: 3, scope: !1029)
!1070 = !DILocation(line: 171, column: 14, scope: !1029)
!1071 = !DILocation(line: 171, column: 45, scope: !1029)
!1072 = !DILocation(line: 171, column: 51, scope: !1029)
!1073 = !DILocation(line: 171, column: 34, scope: !1029)
!1074 = !DILocation(line: 171, column: 27, scope: !1029)
!1075 = !DILocation(line: 171, column: 68, scope: !1029)
!1076 = !{!297, !297, i64 0}
!1077 = !DILocation(line: 172, column: 3, scope: !1029)
!1078 = !DILocation(line: 172, column: 14, scope: !1029)
!1079 = !DILocation(line: 172, column: 27, scope: !1029)
!1080 = !DILocation(line: 173, column: 3, scope: !1029)
!1081 = !DILocation(line: 173, column: 7, scope: !1029)
!1082 = !DILocation(line: 176, column: 34, scope: !1029)
!1083 = !DILocation(line: 176, column: 42, scope: !1029)
!1084 = !DILocation(line: 176, column: 7, scope: !1029)
!1085 = !DILocation(line: 176, column: 52, scope: !1029)
!1086 = !DILocation(line: 176, column: 60, scope: !1029)
!1087 = !DILocation(line: 176, column: 50, scope: !1029)
!1088 = !DILocation(line: 176, column: 5, scope: !1029)
!1089 = !DILocation(line: 177, column: 36, scope: !1029)
!1090 = !DILocation(line: 177, column: 44, scope: !1029)
!1091 = !DILocation(line: 177, column: 10, scope: !1029)
!1092 = !DILocation(line: 177, column: 54, scope: !1029)
!1093 = !DILocation(line: 177, column: 62, scope: !1029)
!1094 = !DILocation(line: 177, column: 52, scope: !1029)
!1095 = !DILocation(line: 177, column: 8, scope: !1029)
!1096 = !DILocation(line: 178, column: 3, scope: !1029)
!1097 = !DILocation(line: 178, column: 10, scope: !1029)
!1098 = !DILocation(line: 178, column: 14, scope: !1029)
!1099 = !DILocation(line: 178, column: 12, scope: !1029)
!1100 = !DILocation(line: 179, column: 5, scope: !1048)
!1101 = !DILocation(line: 179, column: 13, scope: !1048)
!1102 = !DILocation(line: 179, column: 23, scope: !1048)
!1103 = !DILocation(line: 181, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 181, column: 9)
!1105 = !{i8 0, i8 2}
!1106 = !{}
!1107 = !DILocation(line: 181, column: 9, scope: !1048)
!1108 = !DILocation(line: 182, column: 33, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 181, column: 21)
!1110 = !DILocation(line: 183, column: 60, scope: !1109)
!1111 = !DILocation(line: 183, column: 33, scope: !1109)
!1112 = !DILocation(line: 183, column: 68, scope: !1109)
!1113 = !DILocation(line: 183, column: 74, scope: !1109)
!1114 = !DILocation(line: 183, column: 72, scope: !1109)
!1115 = !DILocation(line: 182, column: 13, scope: !1109)
!1116 = !DILocation(line: 182, column: 11, scope: !1109)
!1117 = !DILocation(line: 184, column: 41, scope: !1109)
!1118 = !DILocation(line: 184, column: 18, scope: !1109)
!1119 = !DILocation(line: 184, column: 74, scope: !1109)
!1120 = !DILocation(line: 185, column: 45, scope: !1109)
!1121 = !DILocation(line: 185, column: 18, scope: !1109)
!1122 = !DILocation(line: 185, column: 53, scope: !1109)
!1123 = !DILocation(line: 185, column: 59, scope: !1109)
!1124 = !DILocation(line: 185, column: 57, scope: !1109)
!1125 = !DILocation(line: 184, column: 52, scope: !1109)
!1126 = !DILocation(line: 185, column: 64, scope: !1109)
!1127 = !DILocation(line: 185, column: 62, scope: !1109)
!1128 = !DILocation(line: 184, column: 49, scope: !1109)
!1129 = !DILocation(line: 184, column: 16, scope: !1109)
!1130 = !DILocation(line: 186, column: 5, scope: !1109)
!1131 = !DILocation(line: 187, column: 40, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 186, column: 12)
!1133 = !DILocation(line: 187, column: 48, scope: !1132)
!1134 = !DILocation(line: 187, column: 18, scope: !1132)
!1135 = !DILocation(line: 187, column: 16, scope: !1132)
!1136 = !DILocation(line: 188, column: 33, scope: !1132)
!1137 = !DILocation(line: 188, column: 41, scope: !1132)
!1138 = !DILocation(line: 188, column: 13, scope: !1132)
!1139 = !DILocation(line: 188, column: 11, scope: !1132)
!1140 = !DILocation(line: 191, column: 10, scope: !1052)
!1141 = !DILocation(line: 191, column: 9, scope: !1048)
!1142 = !DILocation(line: 192, column: 7, scope: !1051)
!1143 = !DILocation(line: 192, column: 15, scope: !1051)
!1144 = !DILocation(line: 193, column: 7, scope: !1051)
!1145 = !DILocation(line: 193, column: 19, scope: !1051)
!1146 = !DILocation(line: 194, column: 45, scope: !1056)
!1147 = !DILocation(line: 194, column: 11, scope: !1056)
!1148 = !DILocation(line: 194, column: 11, scope: !1051)
!1149 = !DILocation(line: 195, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 195, column: 13)
!1151 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 194, column: 54)
!1152 = !DILocation(line: 195, column: 13, scope: !1151)
!1153 = !DILocation(line: 196, column: 40, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 195, column: 25)
!1155 = !DILocation(line: 197, column: 67, scope: !1154)
!1156 = !DILocation(line: 197, column: 40, scope: !1154)
!1157 = !DILocation(line: 197, column: 74, scope: !1154)
!1158 = !DILocation(line: 197, column: 77, scope: !1154)
!1159 = !DILocation(line: 197, column: 76, scope: !1154)
!1160 = !DILocation(line: 196, column: 18, scope: !1154)
!1161 = !DILocation(line: 196, column: 16, scope: !1154)
!1162 = !DILocation(line: 198, column: 9, scope: !1154)
!1163 = !DILocation(line: 199, column: 40, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 198, column: 16)
!1165 = !DILocation(line: 199, column: 58, scope: !1164)
!1166 = !DILocation(line: 199, column: 18, scope: !1164)
!1167 = !DILocation(line: 199, column: 16, scope: !1164)
!1168 = !DILocation(line: 201, column: 7, scope: !1151)
!1169 = !DILocation(line: 202, column: 9, scope: !1055)
!1170 = !DILocation(line: 202, column: 14, scope: !1055)
!1171 = !DILocation(line: 203, column: 25, scope: !1055)
!1172 = !DILocation(line: 203, column: 58, scope: !1055)
!1173 = !DILocation(line: 203, column: 16, scope: !1055)
!1174 = !DILocation(line: 204, column: 26, scope: !1055)
!1175 = !DILocation(line: 204, column: 19, scope: !1055)
!1176 = !DILocation(line: 204, column: 17, scope: !1055)
!1177 = !DILocation(line: 205, column: 16, scope: !1055)
!1178 = !DILocation(line: 205, column: 14, scope: !1055)
!1179 = !DILocation(line: 206, column: 7, scope: !1056)
!1180 = !DILocation(line: 207, column: 7, scope: !1051)
!1181 = !DILocation(line: 207, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 207, column: 7)
!1183 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 207, column: 7)
!1184 = !DILocation(line: 207, column: 7, scope: !1183)
!1185 = !DILocation(line: 207, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 207, column: 7)
!1187 = !DILocation(line: 209, column: 37, scope: !1051)
!1188 = !DILocation(line: 209, column: 7, scope: !1051)
!1189 = !DILocation(line: 210, column: 18, scope: !1051)
!1190 = !DILocation(line: 210, column: 27, scope: !1051)
!1191 = !DILocation(line: 210, column: 36, scope: !1051)
!1192 = !DILocation(line: 210, column: 7, scope: !1051)
!1193 = !DILocation(line: 211, column: 23, scope: !1051)
!1194 = !DILocation(line: 211, column: 7, scope: !1051)
!1195 = !DILocation(line: 212, column: 5, scope: !1052)
!1196 = !DILocation(line: 212, column: 5, scope: !1051)
!1197 = !DILocation(line: 214, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 214, column: 9)
!1199 = !DILocation(line: 214, column: 15, scope: !1198)
!1200 = !{!296, !297, i64 0}
!1201 = !DILocation(line: 214, column: 9, scope: !1048)
!1202 = !DILocation(line: 215, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 215, column: 7)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 214, column: 28)
!1205 = !DILocation(line: 215, column: 12, scope: !1203)
!1206 = !DILocation(line: 215, column: 19, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 215, column: 7)
!1208 = !DILocation(line: 215, column: 23, scope: !1207)
!1209 = !DILocation(line: 215, column: 21, scope: !1207)
!1210 = !DILocation(line: 215, column: 7, scope: !1203)
!1211 = !DILocation(line: 216, column: 46, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 215, column: 33)
!1213 = !DILocation(line: 216, column: 54, scope: !1212)
!1214 = !DILocation(line: 216, column: 65, scope: !1212)
!1215 = !DILocation(line: 216, column: 63, scope: !1212)
!1216 = !DILocation(line: 216, column: 68, scope: !1212)
!1217 = !DILocation(line: 216, column: 74, scope: !1212)
!1218 = !DILocation(line: 216, column: 19, scope: !1212)
!1219 = !DILocation(line: 217, column: 19, scope: !1212)
!1220 = !DILocation(line: 216, column: 9, scope: !1212)
!1221 = !DILocation(line: 218, column: 7, scope: !1212)
!1222 = !DILocation(line: 215, column: 29, scope: !1207)
!1223 = !DILocation(line: 215, column: 7, scope: !1207)
!1224 = distinct !{!1224, !1210, !1225, !1020}
!1225 = !DILocation(line: 218, column: 7, scope: !1203)
!1226 = !DILocation(line: 219, column: 5, scope: !1204)
!1227 = !DILocation(line: 220, column: 51, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 219, column: 12)
!1229 = !DILocation(line: 220, column: 59, scope: !1228)
!1230 = !DILocation(line: 220, column: 65, scope: !1228)
!1231 = !DILocation(line: 220, column: 69, scope: !1228)
!1232 = !DILocation(line: 220, column: 13, scope: !1228)
!1233 = !DILocation(line: 220, column: 11, scope: !1228)
!1234 = !DILocation(line: 221, column: 14, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 221, column: 7)
!1236 = !DILocation(line: 221, column: 12, scope: !1235)
!1237 = !DILocation(line: 221, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 221, column: 7)
!1239 = !DILocation(line: 221, column: 23, scope: !1238)
!1240 = !DILocation(line: 221, column: 21, scope: !1238)
!1241 = !DILocation(line: 221, column: 7, scope: !1235)
!1242 = !DILocation(line: 222, column: 54, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 221, column: 33)
!1244 = !DILocation(line: 222, column: 19, scope: !1243)
!1245 = !DILocation(line: 222, column: 60, scope: !1243)
!1246 = !DILocation(line: 222, column: 9, scope: !1243)
!1247 = !DILocation(line: 223, column: 7, scope: !1243)
!1248 = !DILocation(line: 221, column: 29, scope: !1238)
!1249 = !DILocation(line: 221, column: 7, scope: !1238)
!1250 = distinct !{!1250, !1241, !1251, !1020}
!1251 = !DILocation(line: 223, column: 7, scope: !1235)
!1252 = !DILocation(line: 224, column: 31, scope: !1228)
!1253 = !DILocation(line: 224, column: 7, scope: !1228)
!1254 = !DILocation(line: 226, column: 35, scope: !1048)
!1255 = !DILocation(line: 226, column: 43, scope: !1048)
!1256 = !DILocation(line: 226, column: 51, scope: !1048)
!1257 = !DILocation(line: 226, column: 55, scope: !1048)
!1258 = !DILocation(line: 226, column: 63, scope: !1048)
!1259 = !DILocation(line: 226, column: 53, scope: !1048)
!1260 = !DILocation(line: 226, column: 9, scope: !1048)
!1261 = !DILocation(line: 227, column: 11, scope: !1048)
!1262 = !DILocation(line: 227, column: 19, scope: !1048)
!1263 = !DILocation(line: 227, column: 9, scope: !1048)
!1264 = !DILocation(line: 226, column: 7, scope: !1048)
!1265 = !DILocation(line: 230, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 230, column: 9)
!1267 = !DILocation(line: 230, column: 19, scope: !1266)
!1268 = !DILocation(line: 230, column: 22, scope: !1266)
!1269 = !DILocation(line: 230, column: 26, scope: !1266)
!1270 = !DILocation(line: 230, column: 24, scope: !1266)
!1271 = !DILocation(line: 230, column: 9, scope: !1048)
!1272 = !DILocation(line: 231, column: 28, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 230, column: 32)
!1274 = !DILocation(line: 231, column: 34, scope: !1273)
!1275 = !DILocation(line: 231, column: 17, scope: !1273)
!1276 = !{!289, !289, i64 0}
!1277 = !DILocation(line: 231, column: 47, scope: !1273)
!1278 = !DILocation(line: 231, column: 7, scope: !1273)
!1279 = !DILocation(line: 232, column: 5, scope: !1273)
!1280 = !DILocation(line: 233, column: 23, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 232, column: 12)
!1282 = !DILocation(line: 233, column: 7, scope: !1281)
!1283 = !DILocation(line: 235, column: 3, scope: !1029)
!1284 = distinct !{!1284, !1096, !1283, !1020}
!1285 = !DILocation(line: 236, column: 20, scope: !1029)
!1286 = !DILocation(line: 236, column: 28, scope: !1029)
!1287 = !DILocation(line: 236, column: 3, scope: !1029)
!1288 = !DILocation(line: 237, column: 10, scope: !1029)
!1289 = !DILocation(line: 238, column: 1, scope: !1029)
!1290 = !DILocation(line: 237, column: 3, scope: !1029)
!1291 = !DISubprogram(name: "gt_encseq_delete", scope: !510, file: !510, line: 205, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !508}
!1294 = !DISubprogram(name: "gt_encseq_loader_new", scope: !510, file: !510, line: 360, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!722}
!1297 = !DISubprogram(name: "gt_encseq_options_lossless_value", scope: !71, file: !71, line: 71, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!52, !69}
!1300 = !DISubprogram(name: "gt_encseq_loader_require_lossless_support", scope: !510, file: !510, line: 399, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !722}
!1303 = !DISubprogram(name: "gt_encseq_loader_load", scope: !510, file: !510, line: 453, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!508, !722, !236, !272}
!1306 = !DISubprogram(name: "gt_encseq_options_mirrored_value", scope: !71, file: !71, line: 73, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubprogram(name: "gt_alphabet_is_dna", scope: !1308, file: !1308, line: 113, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1308 = !DIFile(filename: "src/core/alphabet_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0b48240ce57ca6598f5548b5c9cf52e4")
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!52, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtAlphabet", file: !1308, line: 32, baseType: !1314)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtAlphabet", file: !1308, line: 32, flags: DIFlagFwdDecl)
!1315 = !DISubprogram(name: "gt_encseq_alphabet", scope: !510, file: !510, line: 188, type: !1316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!1321 = !DISubprogram(name: "gt_encseq_mirror", scope: !510, file: !510, line: 192, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!271, !508, !272}
!1324 = !DISubprogram(name: "gt_encseq_loader_delete", scope: !510, file: !510, line: 457, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubprogram(name: "gt_encseq_has_description_support", scope: !510, file: !510, line: 147, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!52, !1319}
!1328 = !DISubprogram(name: "gt_warning", scope: !1329, file: !1329, line: 29, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1329 = !DIFile(filename: "src/core/warning_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e8655f31b131e8c066a84f1af283b08e")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !236, null}
!1332 = !DISubprogram(name: "gt_encseq_min_seq_length", scope: !510, file: !510, line: 141, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!65, !1319}
!1335 = !DISubprogram(name: "gt_encseq_num_of_sequences", scope: !510, file: !510, line: 87, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DISubprogram(name: "gt_encseq_max_seq_length", scope: !510, file: !510, line: 143, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DISubprogram(name: "gt_bittab_new", scope: !520, file: !520, line: 30, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!518, !65}
!1340 = !DISubprogram(name: "gt_rand_max", scope: !1341, file: !1341, line: 43, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DIFile(filename: "src/core/mathsupport_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1043290a1aed19b0259df4461fbbffad")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!65, !65}
!1344 = !DISubprogram(name: "gt_bittab_bit_is_set", scope: !520, file: !520, line: 78, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!52, !1347, !65}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!1349 = !DISubprogram(name: "gt_bittab_set_bit", scope: !520, file: !520, line: 33, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !518, !65}
!1352 = !DISubprogram(name: "strcmp", scope: !1353, file: !1353, line: 156, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!271, !236, !236}
!1356 = !DISubprogram(name: "gt_bittab_get_first_bitnum", scope: !520, file: !520, line: 84, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!65, !1347}
!1359 = !DISubprogram(name: "gt_bittab_get_last_bitnum", scope: !520, file: !520, line: 87, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubprogram(name: "gt_encseq_seqlength", scope: !510, file: !510, line: 138, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!65, !1319, !65}
!1363 = !DISubprogram(name: "gt_encseq_total_length", scope: !510, file: !510, line: 85, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1364 = !DISubprogram(name: "gt_encseq_seqstartpos", scope: !510, file: !510, line: 152, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = !DISubprogram(name: "gt_encseq_description", scope: !510, file: !510, line: 163, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!236, !1319, !676, !65}
!1368 = !DISubprogram(name: "snprintf", scope: !588, file: !588, line: 378, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!271, !1371, !44, !649, null}
!1371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !600)
!1372 = !DISubprogram(name: "strlen", scope: !1353, file: !1353, line: 407, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!46, !236}
!1375 = !DISubprogram(name: "gt_xfputc", scope: !1376, file: !1376, line: 53, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DIFile(filename: "src/core/xansi_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1d227a22cb6575cc0af9d842a1be7cc6")
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !271, !592}
!1379 = !DISubprogram(name: "gt_xfwrite", scope: !1376, file: !1376, line: 73, type: !1380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1382, !44, !44, !592}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1384 = !DISubprogram(name: "gt_encseq_get_decoded_char", scope: !510, file: !510, line: 95, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!4, !1319, !65, !74}
!1387 = !DISubprogram(name: "gt_encseq_create_reader_with_readmode", scope: !510, file: !510, line: 115, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1040, !1319, !74, !65}
!1390 = !DISubprogram(name: "gt_encseq_reader_next_decoded_char", scope: !510, file: !510, line: 218, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!4, !1040}
!1393 = !DISubprogram(name: "gt_encseq_reader_delete", scope: !510, file: !510, line: 220, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1040}
!1396 = !DISubprogram(name: "gt_bittab_get_next_bitnum", scope: !520, file: !520, line: 91, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!65, !1347, !65}
!1399 = !DISubprogram(name: "gt_bittab_delete", scope: !520, file: !520, line: 100, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !518}
