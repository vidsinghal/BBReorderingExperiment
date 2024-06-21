; ModuleID = 'samples/517.bc'
source_filename = "src/tools/gt_chain2dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtChain2Dimmatchvalues = type { [2 x i64], [2 x i64], i64 }
%struct.Counter = type { i64 }
%struct.GtChain2dimoptions = type { i8, i8, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"# chain %lu: length %lu score %ld\0A\00", align 1, !dbg !0
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"src/tools/gt_chain2dim.c\00", align 1, !dbg !7
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [18 x i8] c"arguments != NULL\00", align 1, !dbg !17
@__func__.gt_chain2dim_option_parser_new = private unnamed_addr constant [31 x i8] c"gt_chain2dim_option_parser_new\00", align 1, !dbg !22
@.str.4 = private unnamed_addr constant [23 x i8] c"[options] -m matchfile\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [24 x i8] c"Chain pairwise matches.\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [27 x i8] c"<kurtz@zbh.uni-hamburg.de>\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [2 x i8] c"m\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [53 x i8] c"Specify file containing the matches\0Amandatory option\00", align 1, !dbg !48
@.str.9 = private unnamed_addr constant [7 x i8] c"global\00", align 1, !dbg !53
@.str.10 = private unnamed_addr constant [241 x i8] c"perform global chaining\0A- optional parameter gc switches\0A  on gap costs (according to L1-model)\0A- optional parameter ov means\0A  that overlaps between matches are allowed\0A- optional parameter all means\0A  that all optimal chains are processed\00", align 1, !dbg !58
@.str.11 = private unnamed_addr constant [6 x i8] c"local\00", align 1, !dbg !63
@.str.12 = private unnamed_addr constant [552 x i8] c"perform local chaining\0Acompute local chains (according to L1-model).\0A- If no parameter is given, compute local chains with\0A  maximums score.\0A- If parameter is given, this must be a positive number\0A  optionally followed by the character b or p.\0A- If only the number, say k, is given, this is the minimum\0A  score of the chains output.\0A- If a number is followed by character b, then output all\0A  chains with the largest k scores.\0A- If a number is followed by character p, then output all\0A  chains with scores at most k percent away\0A  from the best score.\00", align 1, !dbg !68
@.str.13 = private unnamed_addr constant [3 x i8] c"wf\00", align 1, !dbg !73
@.str.14 = private unnamed_addr constant [121 x i8] c"specify weight factor > 0.0 to obtain score of a fragment\0Arequires one of the options\0A-local const\0A-global gc\0A-global ov\00", align 1, !dbg !78
@.str.15 = private unnamed_addr constant [7 x i8] c"maxgap\00", align 1, !dbg !83
@.str.16 = private unnamed_addr constant [38 x i8] c"specify maximal width of gap in chain\00", align 1, !dbg !85
@.str.17 = private unnamed_addr constant [7 x i8] c"silent\00", align 1, !dbg !90
@.str.18 = private unnamed_addr constant [66 x i8] c"do not output the chains but only report their lengths and scores\00", align 1, !dbg !92
@.str.19 = private unnamed_addr constant [52 x i8] c"argument of option -maxgap must be positive integer\00", align 1, !dbg !97
@.str.20 = private unnamed_addr constant [51 x i8] c"argument of option -wf must be positive real value\00", align 1, !dbg !102
@.str.21 = private unnamed_addr constant [35 x i8] c"arguments->refoptionglobal != NULL\00", align 1, !dbg !107
@__func__.gt_chain2dim_arguments_check = private unnamed_addr constant [29 x i8] c"gt_chain2dim_arguments_check\00", align 1, !dbg !109
@.str.22 = private unnamed_addr constant [34 x i8] c"arguments->refoptionlocal != NULL\00", align 1, !dbg !114
@.str.23 = private unnamed_addr constant [51 x i8] c"option -global can only have one optional argument\00", align 1, !dbg !119
@.str.24 = private unnamed_addr constant [50 x i8] c"option -local can only have one optional argument\00", align 1, !dbg !121
@.str.25 = private unnamed_addr constant [87 x i8] c"option wf requires either option -local or option -global with argument %s or %s or %s\00", align 1, !dbg !126
@.str.26 = private unnamed_addr constant [3 x i8] c"gc\00", align 1, !dbg !131
@.str.27 = private unnamed_addr constant [3 x i8] c"ov\00", align 1, !dbg !133
@.str.28 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !135
@.str.29 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !140
@__func__.gt_chain2dim_runner = private unnamed_addr constant [20 x i8] c"gt_chain2dim_runner\00", align 1, !dbg !145
@.str.30 = private unnamed_addr constant [20 x i8] c"parsed_args == argc\00", align 1, !dbg !150
@.str.31 = private unnamed_addr constant [3 x i8] c"# \00", align 1, !dbg !153

; Function Attrs: nounwind uwtable
define void @gt_outputformatchainsilent(ptr noundef %data, ptr noundef %matchtable, ptr noundef %chain) #0 !dbg !173 {
entry:
  %data.addr = alloca ptr, align 8
  %matchtable.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !186, metadata !DIExpression()), !dbg !193
  store ptr %matchtable, ptr %matchtable.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %matchtable.addr, metadata !187, metadata !DIExpression()), !dbg !194
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %chain.addr, metadata !188, metadata !DIExpression()), !dbg !195
  %0 = load ptr, ptr %data.addr, align 8, !dbg !196, !tbaa !189
  %1 = load ptr, ptr %matchtable.addr, align 8, !dbg !197, !tbaa !189
  %2 = load ptr, ptr %chain.addr, align 8, !dbg !198, !tbaa !189
  call void @gt_outputformatchaingeneric(i1 noundef zeroext true, ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: nounwind uwtable
define internal void @gt_outputformatchaingeneric(i1 noundef zeroext %silent, ptr noundef %data, ptr noundef %matchtable, ptr noundef %chain) #0 !dbg !201 {
entry:
  %silent.addr = alloca i8, align 1
  %data.addr = alloca ptr, align 8
  %matchtable.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  %idx = alloca i64, align 8
  %chainlength = alloca i64, align 8
  %counter = alloca ptr, align 8
  %value = alloca %struct.GtChain2Dimmatchvalues, align 8
  %frombool = zext i1 %silent to i8
  store i8 %frombool, ptr %silent.addr, align 1, !tbaa !227
  tail call void @llvm.dbg.declare(metadata ptr %silent.addr, metadata !206, metadata !DIExpression()), !dbg !229
  store ptr %data, ptr %data.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !207, metadata !DIExpression()), !dbg !230
  store ptr %matchtable, ptr %matchtable.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %matchtable.addr, metadata !208, metadata !DIExpression()), !dbg !231
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %chain.addr, metadata !209, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #5, !dbg !233
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !210, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %chainlength) #5, !dbg !233
  tail call void @llvm.dbg.declare(metadata ptr %chainlength, metadata !211, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #5, !dbg !236
  tail call void @llvm.dbg.declare(metadata ptr %counter, metadata !212, metadata !DIExpression()), !dbg !237
  %0 = load ptr, ptr %data.addr, align 8, !dbg !238, !tbaa !189
  store ptr %0, ptr %counter, align 8, !dbg !237, !tbaa !189
  %1 = load ptr, ptr %chain.addr, align 8, !dbg !239, !tbaa !189
  %call = call i64 @gt_chain_chainlength(ptr noundef %1), !dbg !240
  store i64 %call, ptr %chainlength, align 8, !dbg !241, !tbaa !242
  %2 = load ptr, ptr %counter, align 8, !dbg !244, !tbaa !189
  %chaincounter = getelementptr inbounds %struct.Counter, ptr %2, i32 0, i32 0, !dbg !245
  %3 = load i64, ptr %chaincounter, align 8, !dbg !245, !tbaa !246
  %4 = load i64, ptr %chainlength, align 8, !dbg !248, !tbaa !242
  %5 = load ptr, ptr %chain.addr, align 8, !dbg !249, !tbaa !189
  %call1 = call i64 @gt_chain_chainscore(ptr noundef %5), !dbg !250
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %3, i64 noundef %4, i64 noundef %call1), !dbg !251
  %6 = load i8, ptr %silent.addr, align 1, !dbg !252, !tbaa !227, !range !253, !noundef !254
  %tobool = trunc i8 %6 to i1, !dbg !252
  br i1 %tobool, label %if.end10, label %if.then, !dbg !255

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr %value) #5, !dbg !256
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !213, metadata !DIExpression()), !dbg !257
  %7 = load ptr, ptr %chain.addr, align 8, !dbg !258, !tbaa !189
  %call3 = call zeroext i1 @gt_chain_storedinreverseorder(ptr noundef %7), !dbg !260
  br i1 %call3, label %if.then4, label %if.else, !dbg !261

if.then4:                                         ; preds = %if.then
  %8 = load i64, ptr %chainlength, align 8, !dbg !262, !tbaa !242
  store i64 %8, ptr %idx, align 8, !dbg !265, !tbaa !242
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then4
  %9 = load i64, ptr %idx, align 8, !dbg !267, !tbaa !242
  %cmp = icmp ugt i64 %9, 0, !dbg !269
  br i1 %cmp, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %matchtable.addr, align 8, !dbg !271, !tbaa !189
  %11 = load ptr, ptr %chain.addr, align 8, !dbg !273, !tbaa !189
  %12 = load i64, ptr %idx, align 8, !dbg !274, !tbaa !242
  %sub = sub i64 %12, 1, !dbg !275
  call void @gt_chain_extractchainelem(ptr noundef %value, ptr noundef %10, ptr noundef %11, i64 noundef %sub), !dbg !276
  %13 = load ptr, ptr @stdout, align 8, !dbg !277, !tbaa !189
  call void @gt_chain_printchainelem(ptr noundef %13, ptr noundef %value), !dbg !278
  br label %for.inc, !dbg !279

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %idx, align 8, !dbg !280, !tbaa !242
  %dec = add i64 %14, -1, !dbg !280
  store i64 %dec, ptr %idx, align 8, !dbg !280, !tbaa !242
  br label %for.cond, !dbg !281, !llvm.loop !282

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !285

if.else:                                          ; preds = %if.then
  store i64 0, ptr %idx, align 8, !dbg !286, !tbaa !242
  br label %for.cond5, !dbg !289

for.cond5:                                        ; preds = %for.inc8, %if.else
  %15 = load i64, ptr %idx, align 8, !dbg !290, !tbaa !242
  %16 = load i64, ptr %chainlength, align 8, !dbg !292, !tbaa !242
  %cmp6 = icmp ult i64 %15, %16, !dbg !293
  br i1 %cmp6, label %for.body7, label %for.end9, !dbg !294

for.body7:                                        ; preds = %for.cond5
  %17 = load ptr, ptr %matchtable.addr, align 8, !dbg !295, !tbaa !189
  %18 = load ptr, ptr %chain.addr, align 8, !dbg !297, !tbaa !189
  %19 = load i64, ptr %idx, align 8, !dbg !298, !tbaa !242
  call void @gt_chain_extractchainelem(ptr noundef %value, ptr noundef %17, ptr noundef %18, i64 noundef %19), !dbg !299
  %20 = load ptr, ptr @stdout, align 8, !dbg !300, !tbaa !189
  call void @gt_chain_printchainelem(ptr noundef %20, ptr noundef %value), !dbg !301
  br label %for.inc8, !dbg !302

for.inc8:                                         ; preds = %for.body7
  %21 = load i64, ptr %idx, align 8, !dbg !303, !tbaa !242
  %inc = add i64 %21, 1, !dbg !303
  store i64 %inc, ptr %idx, align 8, !dbg !303, !tbaa !242
  br label %for.cond5, !dbg !304, !llvm.loop !305

for.end9:                                         ; preds = %for.cond5
  br label %if.end

if.end:                                           ; preds = %for.end9, %for.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %value) #5, !dbg !307
  br label %if.end10, !dbg !308

if.end10:                                         ; preds = %if.end, %entry
  %22 = load ptr, ptr %counter, align 8, !dbg !309, !tbaa !189
  %chaincounter11 = getelementptr inbounds %struct.Counter, ptr %22, i32 0, i32 0, !dbg !310
  %23 = load i64, ptr %chaincounter11, align 8, !dbg !311, !tbaa !246
  %inc12 = add i64 %23, 1, !dbg !311
  store i64 %inc12, ptr %chaincounter11, align 8, !dbg !311, !tbaa !246
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #5, !dbg !312
  call void @llvm.lifetime.end.p0(i64 8, ptr %chainlength) #5, !dbg !312
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #5, !dbg !312
  ret void, !dbg !312
}

; Function Attrs: nounwind uwtable
define void @gt_outputformatchain(ptr noundef %data, ptr noundef %matchtable, ptr noundef %chain) #0 !dbg !313 {
entry:
  %data.addr = alloca ptr, align 8
  %matchtable.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !315, metadata !DIExpression()), !dbg !318
  store ptr %matchtable, ptr %matchtable.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %matchtable.addr, metadata !316, metadata !DIExpression()), !dbg !319
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %chain.addr, metadata !317, metadata !DIExpression()), !dbg !320
  %0 = load ptr, ptr %data.addr, align 8, !dbg !321, !tbaa !189
  %1 = load ptr, ptr %matchtable.addr, align 8, !dbg !322, !tbaa !189
  %2 = load ptr, ptr %chain.addr, align 8, !dbg !323, !tbaa !189
  call void @gt_outputformatchaingeneric(i1 noundef zeroext false, ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind uwtable
define ptr @gt_chain2dim() #0 !dbg !326 {
entry:
  %call = call ptr @gt_tool_new(ptr noundef @gt_chain2dim_arguments_new, ptr noundef @gt_chain2dim_arguments_delete, ptr noundef @gt_chain2dim_option_parser_new, ptr noundef @gt_chain2dim_arguments_check, ptr noundef @gt_chain2dim_runner), !dbg !333
  ret ptr %call, !dbg !334
}

declare !dbg !335 ptr @gt_tool_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @gt_chain2dim_arguments_new() #0 !dbg !369 {
entry:
  %call = call ptr @gt_malloc_mem(i64 noundef 88, ptr noundef @.str.1, i32 noundef 26), !dbg !370
  ret ptr %call, !dbg !371
}

; Function Attrs: nounwind uwtable
define internal void @gt_chain2dim_arguments_delete(ptr noundef %tool_arguments) #0 !dbg !372 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !374, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !409
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !375, metadata !DIExpression()), !dbg !410
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !411, !tbaa !189
  store ptr %0, ptr %arguments, align 8, !dbg !410, !tbaa !189
  %1 = load ptr, ptr %arguments, align 8, !dbg !412, !tbaa !189
  %tobool = icmp ne ptr %1, null, !dbg !412
  br i1 %tobool, label %if.end, label %if.then, !dbg !414

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !415

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arguments, align 8, !dbg !417, !tbaa !189
  %matchfile = getelementptr inbounds %struct.GtChain2dimoptions, ptr %2, i32 0, i32 4, !dbg !418
  %3 = load ptr, ptr %matchfile, align 8, !dbg !418, !tbaa !419
  call void @gt_str_delete(ptr noundef %3), !dbg !422
  %4 = load ptr, ptr %arguments, align 8, !dbg !423, !tbaa !189
  %globalargs = getelementptr inbounds %struct.GtChain2dimoptions, ptr %4, i32 0, i32 5, !dbg !424
  %5 = load ptr, ptr %globalargs, align 8, !dbg !424, !tbaa !425
  call void @gt_str_array_delete(ptr noundef %5), !dbg !426
  %6 = load ptr, ptr %arguments, align 8, !dbg !427, !tbaa !189
  %localargs = getelementptr inbounds %struct.GtChain2dimoptions, ptr %6, i32 0, i32 6, !dbg !428
  %7 = load ptr, ptr %localargs, align 8, !dbg !428, !tbaa !429
  call void @gt_str_array_delete(ptr noundef %7), !dbg !430
  %8 = load ptr, ptr %arguments, align 8, !dbg !431, !tbaa !189
  %refoptionmaxgap = getelementptr inbounds %struct.GtChain2dimoptions, ptr %8, i32 0, i32 7, !dbg !432
  %9 = load ptr, ptr %refoptionmaxgap, align 8, !dbg !432, !tbaa !433
  call void @gt_option_delete(ptr noundef %9), !dbg !434
  %10 = load ptr, ptr %arguments, align 8, !dbg !435, !tbaa !189
  %refoptionweightfactor = getelementptr inbounds %struct.GtChain2dimoptions, ptr %10, i32 0, i32 8, !dbg !436
  %11 = load ptr, ptr %refoptionweightfactor, align 8, !dbg !436, !tbaa !437
  call void @gt_option_delete(ptr noundef %11), !dbg !438
  %12 = load ptr, ptr %arguments, align 8, !dbg !439, !tbaa !189
  %refoptionglobal = getelementptr inbounds %struct.GtChain2dimoptions, ptr %12, i32 0, i32 9, !dbg !440
  %13 = load ptr, ptr %refoptionglobal, align 8, !dbg !440, !tbaa !441
  call void @gt_option_delete(ptr noundef %13), !dbg !442
  %14 = load ptr, ptr %arguments, align 8, !dbg !443, !tbaa !189
  %refoptionlocal = getelementptr inbounds %struct.GtChain2dimoptions, ptr %14, i32 0, i32 10, !dbg !444
  %15 = load ptr, ptr %refoptionlocal, align 8, !dbg !444, !tbaa !445
  call void @gt_option_delete(ptr noundef %15), !dbg !446
  %16 = load ptr, ptr %arguments, align 8, !dbg !447, !tbaa !189
  call void @gt_free_mem(ptr noundef %16, ptr noundef @.str.1, i32 noundef 44), !dbg !447
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !448
  br label %cleanup, !dbg !448

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !448
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !448

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_chain2dim_option_parser_new(ptr noundef %tool_arguments) #0 !dbg !449 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %op = alloca ptr, align 8
  %option = alloca ptr, align 8
  %optionglobal = alloca ptr, align 8
  %optionlocal = alloca ptr, align 8
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !458
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !452, metadata !DIExpression()), !dbg !459
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !460, !tbaa !189
  store ptr %0, ptr %arguments, align 8, !dbg !459, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #5, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !453, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #5, !dbg !463
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !454, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionglobal) #5, !dbg !463
  tail call void @llvm.dbg.declare(metadata ptr %optionglobal, metadata !455, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionlocal) #5, !dbg !463
  tail call void @llvm.dbg.declare(metadata ptr %optionlocal, metadata !456, metadata !DIExpression()), !dbg !466
  br label %do.body, !dbg !467

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %arguments, align 8, !dbg !468, !tbaa !189
  %cmp = icmp ne ptr %1, null, !dbg !468
  br i1 %cmp, label %if.end, label %if.then, !dbg !471

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !472, !tbaa !189
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @__func__.gt_chain2dim_option_parser_new, ptr noundef @.str.1, i32 noundef 53), !dbg !472
  call void @abort() #6, !dbg !472
  unreachable, !dbg !472

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !471

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !471

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @gt_str_new(), !dbg !474
  %3 = load ptr, ptr %arguments, align 8, !dbg !475, !tbaa !189
  %matchfile = getelementptr inbounds %struct.GtChain2dimoptions, ptr %3, i32 0, i32 4, !dbg !476
  store ptr %call1, ptr %matchfile, align 8, !dbg !477, !tbaa !419
  %call2 = call ptr @gt_str_array_new(), !dbg !478
  %4 = load ptr, ptr %arguments, align 8, !dbg !479, !tbaa !189
  %globalargs = getelementptr inbounds %struct.GtChain2dimoptions, ptr %4, i32 0, i32 5, !dbg !480
  store ptr %call2, ptr %globalargs, align 8, !dbg !481, !tbaa !425
  %call3 = call ptr @gt_str_array_new(), !dbg !482
  %5 = load ptr, ptr %arguments, align 8, !dbg !483, !tbaa !189
  %localargs = getelementptr inbounds %struct.GtChain2dimoptions, ptr %5, i32 0, i32 6, !dbg !484
  store ptr %call3, ptr %localargs, align 8, !dbg !485, !tbaa !429
  %call4 = call ptr @gt_option_parser_new(ptr noundef @.str.4, ptr noundef @.str.5), !dbg !486
  store ptr %call4, ptr %op, align 8, !dbg !487, !tbaa !189
  %6 = load ptr, ptr %op, align 8, !dbg !488, !tbaa !189
  call void @gt_option_parser_set_mail_address(ptr noundef %6, ptr noundef @.str.6), !dbg !489
  %7 = load ptr, ptr %arguments, align 8, !dbg !490, !tbaa !189
  %matchfile5 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %7, i32 0, i32 4, !dbg !491
  %8 = load ptr, ptr %matchfile5, align 8, !dbg !491, !tbaa !419
  %call6 = call ptr @gt_option_new_filename(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %8), !dbg !492
  store ptr %call6, ptr %option, align 8, !dbg !493, !tbaa !189
  %9 = load ptr, ptr %op, align 8, !dbg !494, !tbaa !189
  %10 = load ptr, ptr %option, align 8, !dbg !495, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %9, ptr noundef %10), !dbg !496
  %11 = load ptr, ptr %option, align 8, !dbg !497, !tbaa !189
  call void @gt_option_is_mandatory(ptr noundef %11), !dbg !498
  %12 = load ptr, ptr %arguments, align 8, !dbg !499, !tbaa !189
  %globalargs7 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %12, i32 0, i32 5, !dbg !500
  %13 = load ptr, ptr %globalargs7, align 8, !dbg !500, !tbaa !425
  %call8 = call ptr @gt_option_new_string_array(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef %13), !dbg !501
  store ptr %call8, ptr %optionglobal, align 8, !dbg !502, !tbaa !189
  %14 = load ptr, ptr %optionglobal, align 8, !dbg !503, !tbaa !189
  call void @gt_option_argument_is_optional(ptr noundef %14), !dbg !504
  %15 = load ptr, ptr %optionglobal, align 8, !dbg !505, !tbaa !189
  %call9 = call ptr @gt_option_ref(ptr noundef %15), !dbg !506
  %16 = load ptr, ptr %arguments, align 8, !dbg !507, !tbaa !189
  %refoptionglobal = getelementptr inbounds %struct.GtChain2dimoptions, ptr %16, i32 0, i32 9, !dbg !508
  store ptr %call9, ptr %refoptionglobal, align 8, !dbg !509, !tbaa !441
  %17 = load ptr, ptr %op, align 8, !dbg !510, !tbaa !189
  %18 = load ptr, ptr %optionglobal, align 8, !dbg !511, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %17, ptr noundef %18), !dbg !512
  %19 = load ptr, ptr %arguments, align 8, !dbg !513, !tbaa !189
  %localargs10 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %19, i32 0, i32 6, !dbg !514
  %20 = load ptr, ptr %localargs10, align 8, !dbg !514, !tbaa !429
  %call11 = call ptr @gt_option_new_string_array(ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef %20), !dbg !515
  store ptr %call11, ptr %optionlocal, align 8, !dbg !516, !tbaa !189
  %21 = load ptr, ptr %optionlocal, align 8, !dbg !517, !tbaa !189
  call void @gt_option_argument_is_optional(ptr noundef %21), !dbg !518
  %22 = load ptr, ptr %op, align 8, !dbg !519, !tbaa !189
  %23 = load ptr, ptr %optionlocal, align 8, !dbg !520, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %22, ptr noundef %23), !dbg !521
  %24 = load ptr, ptr %optionlocal, align 8, !dbg !522, !tbaa !189
  %call12 = call ptr @gt_option_ref(ptr noundef %24), !dbg !523
  %25 = load ptr, ptr %arguments, align 8, !dbg !524, !tbaa !189
  %refoptionlocal = getelementptr inbounds %struct.GtChain2dimoptions, ptr %25, i32 0, i32 10, !dbg !525
  store ptr %call12, ptr %refoptionlocal, align 8, !dbg !526, !tbaa !445
  %26 = load ptr, ptr %optionlocal, align 8, !dbg !527, !tbaa !189
  %27 = load ptr, ptr %optionglobal, align 8, !dbg !528, !tbaa !189
  call void @gt_option_exclude(ptr noundef %26, ptr noundef %27), !dbg !529
  %28 = load ptr, ptr %arguments, align 8, !dbg !530, !tbaa !189
  %weightfactor = getelementptr inbounds %struct.GtChain2dimoptions, ptr %28, i32 0, i32 2, !dbg !531
  %call13 = call ptr @gt_option_new_double(ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef %weightfactor, double noundef 1.000000e+00), !dbg !532
  store ptr %call13, ptr %option, align 8, !dbg !533, !tbaa !189
  %29 = load ptr, ptr %option, align 8, !dbg !534, !tbaa !189
  %call14 = call ptr @gt_option_ref(ptr noundef %29), !dbg !535
  %30 = load ptr, ptr %arguments, align 8, !dbg !536, !tbaa !189
  %refoptionweightfactor = getelementptr inbounds %struct.GtChain2dimoptions, ptr %30, i32 0, i32 8, !dbg !537
  store ptr %call14, ptr %refoptionweightfactor, align 8, !dbg !538, !tbaa !437
  %31 = load ptr, ptr %op, align 8, !dbg !539, !tbaa !189
  %32 = load ptr, ptr %option, align 8, !dbg !540, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %31, ptr noundef %32), !dbg !541
  %33 = load ptr, ptr %arguments, align 8, !dbg !542, !tbaa !189
  %maxgap = getelementptr inbounds %struct.GtChain2dimoptions, ptr %33, i32 0, i32 3, !dbg !543
  %call15 = call ptr @gt_option_new_uword(ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %maxgap, i64 noundef 0), !dbg !544
  store ptr %call15, ptr %option, align 8, !dbg !545, !tbaa !189
  %34 = load ptr, ptr %option, align 8, !dbg !546, !tbaa !189
  %call16 = call ptr @gt_option_ref(ptr noundef %34), !dbg !547
  %35 = load ptr, ptr %arguments, align 8, !dbg !548, !tbaa !189
  %refoptionmaxgap = getelementptr inbounds %struct.GtChain2dimoptions, ptr %35, i32 0, i32 7, !dbg !549
  store ptr %call16, ptr %refoptionmaxgap, align 8, !dbg !550, !tbaa !433
  %36 = load ptr, ptr %op, align 8, !dbg !551, !tbaa !189
  %37 = load ptr, ptr %option, align 8, !dbg !552, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %36, ptr noundef %37), !dbg !553
  %38 = load ptr, ptr %arguments, align 8, !dbg !554, !tbaa !189
  %silent = getelementptr inbounds %struct.GtChain2dimoptions, ptr %38, i32 0, i32 0, !dbg !555
  %call17 = call ptr @gt_option_new_bool(ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef %silent, i1 noundef zeroext false), !dbg !556
  store ptr %call17, ptr %option, align 8, !dbg !557, !tbaa !189
  %39 = load ptr, ptr %op, align 8, !dbg !558, !tbaa !189
  %40 = load ptr, ptr %option, align 8, !dbg !559, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %39, ptr noundef %40), !dbg !560
  %41 = load ptr, ptr %arguments, align 8, !dbg !561, !tbaa !189
  %verbose = getelementptr inbounds %struct.GtChain2dimoptions, ptr %41, i32 0, i32 1, !dbg !562
  %call18 = call ptr @gt_option_new_verbose(ptr noundef %verbose), !dbg !563
  store ptr %call18, ptr %option, align 8, !dbg !564, !tbaa !189
  %42 = load ptr, ptr %op, align 8, !dbg !565, !tbaa !189
  %43 = load ptr, ptr %option, align 8, !dbg !566, !tbaa !189
  call void @gt_option_parser_add_option(ptr noundef %42, ptr noundef %43), !dbg !567
  %44 = load ptr, ptr %op, align 8, !dbg !568, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionlocal) #5, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionglobal) #5, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #5, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #5, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !569
  ret ptr %44, !dbg !570
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_chain2dim_arguments_check(i32 noundef %rest_argc, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !571 {
entry:
  %retval = alloca i32, align 4
  %rest_argc.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %globalargs = alloca ptr, align 8
  %localargs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %globalargsnum = alloca i64, align 8
  %localargsnum = alloca i64, align 8
  store i32 %rest_argc, ptr %rest_argc.addr, align 4, !tbaa !585
  tail call void @llvm.dbg.declare(metadata ptr %rest_argc.addr, metadata !573, metadata !DIExpression()), !dbg !587
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !574, metadata !DIExpression()), !dbg !588
  store ptr %err, ptr %err.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !575, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !590
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !576, metadata !DIExpression()), !dbg !591
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !592, !tbaa !189
  store ptr %0, ptr %arguments, align 8, !dbg !591, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %globalargs) #5, !dbg !593
  tail call void @llvm.dbg.declare(metadata ptr %globalargs, metadata !577, metadata !DIExpression()), !dbg !594
  store ptr null, ptr %globalargs, align 8, !dbg !594, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %localargs) #5, !dbg !593
  tail call void @llvm.dbg.declare(metadata ptr %localargs, metadata !578, metadata !DIExpression()), !dbg !595
  store ptr null, ptr %localargs, align 8, !dbg !595, !tbaa !189
  %1 = load ptr, ptr %arguments, align 8, !dbg !596, !tbaa !189
  %refoptionmaxgap = getelementptr inbounds %struct.GtChain2dimoptions, ptr %1, i32 0, i32 7, !dbg !598
  %2 = load ptr, ptr %refoptionmaxgap, align 8, !dbg !598, !tbaa !433
  %call = call zeroext i1 @gt_option_is_set(ptr noundef %2), !dbg !599
  br i1 %call, label %if.then, label %if.end2, !dbg !600

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %arguments, align 8, !dbg !601, !tbaa !189
  %maxgap = getelementptr inbounds %struct.GtChain2dimoptions, ptr %3, i32 0, i32 3, !dbg !604
  %4 = load i64, ptr %maxgap, align 8, !dbg !604, !tbaa !605
  %cmp = icmp eq i64 %4, 0, !dbg !606
  br i1 %cmp, label %if.then1, label %if.end, !dbg !607

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %err.addr, align 8, !dbg !608, !tbaa !189
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %5, ptr noundef @.str.19), !dbg !610
  store i32 -1, ptr %retval, align 4, !dbg !611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !611

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !612

if.end2:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %arguments, align 8, !dbg !613, !tbaa !189
  %refoptionweightfactor = getelementptr inbounds %struct.GtChain2dimoptions, ptr %6, i32 0, i32 8, !dbg !615
  %7 = load ptr, ptr %refoptionweightfactor, align 8, !dbg !615, !tbaa !437
  %call3 = call zeroext i1 @gt_option_is_set(ptr noundef %7), !dbg !616
  br i1 %call3, label %if.then4, label %if.end8, !dbg !617

if.then4:                                         ; preds = %if.end2
  %8 = load ptr, ptr %arguments, align 8, !dbg !618, !tbaa !189
  %weightfactor = getelementptr inbounds %struct.GtChain2dimoptions, ptr %8, i32 0, i32 2, !dbg !621
  %9 = load double, ptr %weightfactor, align 8, !dbg !621, !tbaa !622
  %cmp5 = fcmp ole double %9, 0.000000e+00, !dbg !623
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !624

if.then6:                                         ; preds = %if.then4
  %10 = load ptr, ptr %err.addr, align 8, !dbg !625, !tbaa !189
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %10, ptr noundef @.str.20), !dbg !627
  store i32 -1, ptr %retval, align 4, !dbg !628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !628

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !629

if.end8:                                          ; preds = %if.end7, %if.end2
  br label %do.body, !dbg !630

do.body:                                          ; preds = %if.end8
  %11 = load ptr, ptr %arguments, align 8, !dbg !631, !tbaa !189
  %refoptionglobal = getelementptr inbounds %struct.GtChain2dimoptions, ptr %11, i32 0, i32 9, !dbg !631
  %12 = load ptr, ptr %refoptionglobal, align 8, !dbg !631, !tbaa !441
  %cmp9 = icmp ne ptr %12, null, !dbg !631
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !634

if.then10:                                        ; preds = %do.body
  %13 = load ptr, ptr @stderr, align 8, !dbg !635, !tbaa !189
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.2, ptr noundef @.str.21, ptr noundef @__func__.gt_chain2dim_arguments_check, ptr noundef @.str.1, i32 noundef 144), !dbg !635
  call void @abort() #6, !dbg !635
  unreachable, !dbg !635

if.end12:                                         ; preds = %do.body
  br label %do.cond, !dbg !634

do.cond:                                          ; preds = %if.end12
  br label %do.end, !dbg !634

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !637

do.body13:                                        ; preds = %do.end
  %14 = load ptr, ptr %arguments, align 8, !dbg !638, !tbaa !189
  %refoptionlocal = getelementptr inbounds %struct.GtChain2dimoptions, ptr %14, i32 0, i32 10, !dbg !638
  %15 = load ptr, ptr %refoptionlocal, align 8, !dbg !638, !tbaa !445
  %cmp14 = icmp ne ptr %15, null, !dbg !638
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !641

if.then15:                                        ; preds = %do.body13
  %16 = load ptr, ptr @stderr, align 8, !dbg !642, !tbaa !189
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.2, ptr noundef @.str.22, ptr noundef @__func__.gt_chain2dim_arguments_check, ptr noundef @.str.1, i32 noundef 145), !dbg !642
  call void @abort() #6, !dbg !642
  unreachable, !dbg !642

if.end17:                                         ; preds = %do.body13
  br label %do.cond18, !dbg !641

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !641

do.end19:                                         ; preds = %do.cond18
  %17 = load ptr, ptr %arguments, align 8, !dbg !644, !tbaa !189
  %refoptionglobal20 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %17, i32 0, i32 9, !dbg !645
  %18 = load ptr, ptr %refoptionglobal20, align 8, !dbg !645, !tbaa !441
  %call21 = call zeroext i1 @gt_option_is_set(ptr noundef %18), !dbg !646
  br i1 %call21, label %if.then22, label %if.end33, !dbg !647

if.then22:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %globalargsnum) #5, !dbg !648
  tail call void @llvm.dbg.declare(metadata ptr %globalargsnum, metadata !579, metadata !DIExpression()), !dbg !649
  %19 = load ptr, ptr %arguments, align 8, !dbg !650, !tbaa !189
  %globalargs23 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %19, i32 0, i32 5, !dbg !651
  %20 = load ptr, ptr %globalargs23, align 8, !dbg !651, !tbaa !425
  %call24 = call i64 @gt_str_array_size(ptr noundef %20), !dbg !652
  store i64 %call24, ptr %globalargsnum, align 8, !dbg !649, !tbaa !242
  %21 = load i64, ptr %globalargsnum, align 8, !dbg !653, !tbaa !242
  %cmp25 = icmp ugt i64 %21, 1, !dbg !655
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !656

if.then26:                                        ; preds = %if.then22
  %22 = load ptr, ptr %err.addr, align 8, !dbg !657, !tbaa !189
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %22, ptr noundef @.str.23), !dbg !659
  store i32 -1, ptr %retval, align 4, !dbg !660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !660

if.end27:                                         ; preds = %if.then22
  %23 = load i64, ptr %globalargsnum, align 8, !dbg !661, !tbaa !242
  %cmp28 = icmp eq i64 %23, 1, !dbg !663
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !664

if.then29:                                        ; preds = %if.end27
  %24 = load ptr, ptr %arguments, align 8, !dbg !665, !tbaa !189
  %globalargs30 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %24, i32 0, i32 5, !dbg !667
  %25 = load ptr, ptr %globalargs30, align 8, !dbg !667, !tbaa !425
  %call31 = call ptr @gt_str_array_get(ptr noundef %25, i64 noundef 0), !dbg !668
  store ptr %call31, ptr %globalargs, align 8, !dbg !669, !tbaa !189
  br label %if.end32, !dbg !670

if.end32:                                         ; preds = %if.then29, %if.end27
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !671
  br label %cleanup, !dbg !671

cleanup:                                          ; preds = %if.end32, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %globalargsnum) #5, !dbg !671
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end33, !dbg !672

if.end33:                                         ; preds = %cleanup.cont, %do.end19
  %26 = load ptr, ptr %arguments, align 8, !dbg !673, !tbaa !189
  %refoptionlocal34 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %26, i32 0, i32 10, !dbg !674
  %27 = load ptr, ptr %refoptionlocal34, align 8, !dbg !674, !tbaa !445
  %call35 = call zeroext i1 @gt_option_is_set(ptr noundef %27), !dbg !675
  br i1 %call35, label %if.then36, label %if.end50, !dbg !676

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %localargsnum) #5, !dbg !677
  tail call void @llvm.dbg.declare(metadata ptr %localargsnum, metadata !582, metadata !DIExpression()), !dbg !678
  %28 = load ptr, ptr %arguments, align 8, !dbg !679, !tbaa !189
  %localargs37 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %28, i32 0, i32 6, !dbg !680
  %29 = load ptr, ptr %localargs37, align 8, !dbg !680, !tbaa !429
  %call38 = call i64 @gt_str_array_size(ptr noundef %29), !dbg !681
  store i64 %call38, ptr %localargsnum, align 8, !dbg !678, !tbaa !242
  %30 = load i64, ptr %localargsnum, align 8, !dbg !682, !tbaa !242
  %cmp39 = icmp ugt i64 %30, 1, !dbg !684
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !685

if.then40:                                        ; preds = %if.then36
  %31 = load ptr, ptr %err.addr, align 8, !dbg !686, !tbaa !189
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %31, ptr noundef @.str.24), !dbg !688
  store i32 -1, ptr %retval, align 4, !dbg !689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47, !dbg !689

if.end41:                                         ; preds = %if.then36
  %32 = load i64, ptr %localargsnum, align 8, !dbg !690, !tbaa !242
  %cmp42 = icmp eq i64 %32, 1, !dbg !692
  br i1 %cmp42, label %if.then43, label %if.end46, !dbg !693

if.then43:                                        ; preds = %if.end41
  %33 = load ptr, ptr %arguments, align 8, !dbg !694, !tbaa !189
  %localargs44 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %33, i32 0, i32 6, !dbg !696
  %34 = load ptr, ptr %localargs44, align 8, !dbg !696, !tbaa !429
  %call45 = call ptr @gt_str_array_get(ptr noundef %34, i64 noundef 0), !dbg !697
  store ptr %call45, ptr %localargs, align 8, !dbg !698, !tbaa !189
  br label %if.end46, !dbg !699

if.end46:                                         ; preds = %if.then43, %if.end41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !700
  br label %cleanup47, !dbg !700

cleanup47:                                        ; preds = %if.end46, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %localargsnum) #5, !dbg !700
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %cleanup67 [
    i32 0, label %cleanup.cont49
  ]

cleanup.cont49:                                   ; preds = %cleanup47
  br label %if.end50, !dbg !701

if.end50:                                         ; preds = %cleanup.cont49, %if.end33
  %35 = load ptr, ptr %arguments, align 8, !dbg !702, !tbaa !189
  %refoptionweightfactor51 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %35, i32 0, i32 8, !dbg !704
  %36 = load ptr, ptr %refoptionweightfactor51, align 8, !dbg !704, !tbaa !437
  %call52 = call zeroext i1 @gt_option_is_set(ptr noundef %36), !dbg !705
  br i1 %call52, label %land.lhs.true, label %if.end58, !dbg !706

land.lhs.true:                                    ; preds = %if.end50
  %37 = load ptr, ptr %arguments, align 8, !dbg !707, !tbaa !189
  %refoptionlocal53 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %37, i32 0, i32 10, !dbg !708
  %38 = load ptr, ptr %refoptionlocal53, align 8, !dbg !708, !tbaa !445
  %call54 = call zeroext i1 @gt_option_is_set(ptr noundef %38), !dbg !709
  br i1 %call54, label %if.end58, label %land.lhs.true55, !dbg !710

land.lhs.true55:                                  ; preds = %land.lhs.true
  %39 = load ptr, ptr %globalargs, align 8, !dbg !711, !tbaa !189
  %cmp56 = icmp eq ptr %39, null, !dbg !712
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !713

if.then57:                                        ; preds = %land.lhs.true55
  %40 = load ptr, ptr %err.addr, align 8, !dbg !714, !tbaa !189
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %40, ptr noundef @.str.25, ptr noundef @.str.26, ptr noundef @.str.27, ptr noundef @.str.28), !dbg !716
  store i32 -1, ptr %retval, align 4, !dbg !717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !717

if.end58:                                         ; preds = %land.lhs.true55, %land.lhs.true, %if.end50
  %41 = load ptr, ptr %arguments, align 8, !dbg !718, !tbaa !189
  %maxgap59 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %41, i32 0, i32 3, !dbg !719
  %42 = load i64, ptr %maxgap59, align 8, !dbg !719, !tbaa !605
  %43 = load ptr, ptr %arguments, align 8, !dbg !720, !tbaa !189
  %refoptionglobal60 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %43, i32 0, i32 9, !dbg !721
  %44 = load ptr, ptr %refoptionglobal60, align 8, !dbg !721, !tbaa !441
  %call61 = call zeroext i1 @gt_option_is_set(ptr noundef %44), !dbg !722
  %45 = load ptr, ptr %globalargs, align 8, !dbg !723, !tbaa !189
  %46 = load ptr, ptr %arguments, align 8, !dbg !724, !tbaa !189
  %refoptionlocal62 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %46, i32 0, i32 10, !dbg !725
  %47 = load ptr, ptr %refoptionlocal62, align 8, !dbg !725, !tbaa !445
  %call63 = call zeroext i1 @gt_option_is_set(ptr noundef %47), !dbg !726
  %48 = load ptr, ptr %localargs, align 8, !dbg !727, !tbaa !189
  %49 = load ptr, ptr %err.addr, align 8, !dbg !728, !tbaa !189
  %call64 = call ptr @gt_chain_chainmode_new(i64 noundef %42, i1 noundef zeroext %call61, ptr noundef %45, i1 noundef zeroext %call63, ptr noundef %48, ptr noundef %49), !dbg !729
  %50 = load ptr, ptr %arguments, align 8, !dbg !730, !tbaa !189
  %gtchainmode = getelementptr inbounds %struct.GtChain2dimoptions, ptr %50, i32 0, i32 11, !dbg !731
  store ptr %call64, ptr %gtchainmode, align 8, !dbg !732, !tbaa !733
  %51 = load ptr, ptr %arguments, align 8, !dbg !734, !tbaa !189
  %gtchainmode65 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %51, i32 0, i32 11, !dbg !735
  %52 = load ptr, ptr %gtchainmode65, align 8, !dbg !735, !tbaa !733
  %cmp66 = icmp eq ptr %52, null, !dbg !736
  %53 = zext i1 %cmp66 to i64, !dbg !737
  %cond = select i1 %cmp66, i32 -1, i32 0, !dbg !737
  store i32 %cond, ptr %retval, align 4, !dbg !738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !738

cleanup67:                                        ; preds = %if.end58, %if.then57, %cleanup47, %cleanup, %if.then6, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %localargs) #5, !dbg !739
  call void @llvm.lifetime.end.p0(i64 8, ptr %globalargs) #5, !dbg !739
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !739
  %54 = load i32, ptr %retval, align 4, !dbg !739
  ret i32 %54, !dbg !739
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_chain2dim_runner(i32 noundef %argc, ptr noundef %argv, i32 noundef %parsed_args, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !740 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %parsed_args.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %matchtable = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %logger = alloca ptr, align 8
  %presortdim = alloca i32, align 4
  %chain = alloca ptr, align 8
  %counter = alloca %struct.Counter, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !585
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !742, metadata !DIExpression()), !dbg !763
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !743, metadata !DIExpression()), !dbg !764
  store i32 %parsed_args, ptr %parsed_args.addr, align 4, !tbaa !585
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !744, metadata !DIExpression()), !dbg !765
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !745, metadata !DIExpression()), !dbg !766
  store ptr %err, ptr %err.addr, align 8, !tbaa !189
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !746, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !747, metadata !DIExpression()), !dbg !769
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !770, !tbaa !189
  store ptr %0, ptr %arguments, align 8, !dbg !769, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %matchtable) #5, !dbg !771
  tail call void @llvm.dbg.declare(metadata ptr %matchtable, metadata !748, metadata !DIExpression()), !dbg !772
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #5, !dbg !773
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !750, metadata !DIExpression()), !dbg !774
  store i8 0, ptr %haserr, align 1, !dbg !774, !tbaa !227
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #5, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %logger, metadata !751, metadata !DIExpression()), !dbg !776
  store ptr null, ptr %logger, align 8, !dbg !776, !tbaa !189
  br label %do.body, !dbg !777

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !778, !tbaa !189
  %tobool = icmp ne ptr %1, null, !dbg !778
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !778

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !778, !tbaa !189
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !778
  br i1 %call, label %if.then, label %if.end, !dbg !781

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !782, !tbaa !189
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2, ptr noundef @.str.29, ptr noundef @__func__.gt_chain2dim_runner, ptr noundef @.str.1, i32 noundef 259), !dbg !782
  call void @abort() #6, !dbg !782
  unreachable, !dbg !782

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !781

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !781

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !784

do.body2:                                         ; preds = %do.end
  %4 = load ptr, ptr %arguments, align 8, !dbg !785, !tbaa !189
  %cmp = icmp ne ptr %4, null, !dbg !785
  br i1 %cmp, label %if.end5, label %if.then3, !dbg !788

if.then3:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !789, !tbaa !189
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @__func__.gt_chain2dim_runner, ptr noundef @.str.1, i32 noundef 260), !dbg !789
  call void @abort() #6, !dbg !789
  unreachable, !dbg !789

if.end5:                                          ; preds = %do.body2
  br label %do.cond6, !dbg !788

do.cond6:                                         ; preds = %if.end5
  br label %do.end7, !dbg !788

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !791

do.body8:                                         ; preds = %do.end7
  %6 = load i32, ptr %parsed_args.addr, align 4, !dbg !792, !tbaa !585
  %7 = load i32, ptr %argc.addr, align 4, !dbg !792, !tbaa !585
  %cmp9 = icmp eq i32 %6, %7, !dbg !792
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !795

if.then10:                                        ; preds = %do.body8
  %8 = load ptr, ptr @stderr, align 8, !dbg !796, !tbaa !189
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.2, ptr noundef @.str.30, ptr noundef @__func__.gt_chain2dim_runner, ptr noundef @.str.1, i32 noundef 261), !dbg !796
  call void @abort() #6, !dbg !796
  unreachable, !dbg !796

if.end12:                                         ; preds = %do.body8
  br label %do.cond13, !dbg !795

do.cond13:                                        ; preds = %if.end12
  br label %do.end14, !dbg !795

do.end14:                                         ; preds = %do.cond13
  %9 = load ptr, ptr %arguments, align 8, !dbg !798, !tbaa !189
  %weightfactor = getelementptr inbounds %struct.GtChain2dimoptions, ptr %9, i32 0, i32 2, !dbg !799
  %10 = load double, ptr %weightfactor, align 8, !dbg !799, !tbaa !622
  %11 = load ptr, ptr %arguments, align 8, !dbg !800, !tbaa !189
  %matchfile = getelementptr inbounds %struct.GtChain2dimoptions, ptr %11, i32 0, i32 4, !dbg !801
  %12 = load ptr, ptr %matchfile, align 8, !dbg !801, !tbaa !419
  %call15 = call ptr @gt_str_get(ptr noundef %12), !dbg !802
  %13 = load ptr, ptr %err.addr, align 8, !dbg !803, !tbaa !189
  %call16 = call ptr @gt_chain_analyzeopenformatfile(double noundef %10, ptr noundef %call15, ptr noundef %13), !dbg !804
  store ptr %call16, ptr %matchtable, align 8, !dbg !805, !tbaa !189
  %14 = load ptr, ptr %matchtable, align 8, !dbg !806, !tbaa !189
  %cmp17 = icmp eq ptr %14, null, !dbg !808
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !809

if.then18:                                        ; preds = %do.end14
  store i8 1, ptr %haserr, align 1, !dbg !810, !tbaa !227
  br label %if.end19, !dbg !812

if.end19:                                         ; preds = %if.then18, %do.end14
  %15 = load i8, ptr %haserr, align 1, !dbg !813, !tbaa !227, !range !253, !noundef !254
  %tobool20 = trunc i8 %15 to i1, !dbg !813
  br i1 %tobool20, label %if.end26, label %if.then21, !dbg !814

if.then21:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr %presortdim) #5, !dbg !815
  tail call void @llvm.dbg.declare(metadata ptr %presortdim, metadata !756, metadata !DIExpression()), !dbg !816
  store i32 1, ptr %presortdim, align 4, !dbg !816, !tbaa !585
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #5, !dbg !817
  tail call void @llvm.dbg.declare(metadata ptr %chain, metadata !760, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #5, !dbg !819
  tail call void @llvm.dbg.declare(metadata ptr %counter, metadata !762, metadata !DIExpression()), !dbg !820
  %16 = load ptr, ptr %arguments, align 8, !dbg !821, !tbaa !189
  %verbose = getelementptr inbounds %struct.GtChain2dimoptions, ptr %16, i32 0, i32 1, !dbg !822
  %17 = load i8, ptr %verbose, align 1, !dbg !822, !tbaa !823, !range !253, !noundef !254
  %tobool22 = trunc i8 %17 to i1, !dbg !822
  %18 = load ptr, ptr @stdout, align 8, !dbg !824, !tbaa !189
  %call23 = call ptr @gt_logger_new(i1 noundef zeroext %tobool22, ptr noundef @.str.31, ptr noundef %18), !dbg !825
  store ptr %call23, ptr %logger, align 8, !dbg !826, !tbaa !189
  %19 = load ptr, ptr %logger, align 8, !dbg !827, !tbaa !189
  %20 = load ptr, ptr %matchtable, align 8, !dbg !828, !tbaa !189
  %21 = load i32, ptr %presortdim, align 4, !dbg !829, !tbaa !585
  call void @gt_chain_possiblysortmatches(ptr noundef %19, ptr noundef %20, i32 noundef %21), !dbg !830
  %call24 = call ptr @gt_chain_chain_new(), !dbg !831
  store ptr %call24, ptr %chain, align 8, !dbg !832, !tbaa !189
  %chaincounter = getelementptr inbounds %struct.Counter, ptr %counter, i32 0, i32 0, !dbg !833
  store i64 0, ptr %chaincounter, align 8, !dbg !834, !tbaa !246
  %22 = load ptr, ptr %arguments, align 8, !dbg !835, !tbaa !189
  %gtchainmode = getelementptr inbounds %struct.GtChain2dimoptions, ptr %22, i32 0, i32 11, !dbg !836
  %23 = load ptr, ptr %gtchainmode, align 8, !dbg !836, !tbaa !733
  %24 = load ptr, ptr %chain, align 8, !dbg !837, !tbaa !189
  %25 = load ptr, ptr %matchtable, align 8, !dbg !838, !tbaa !189
  %26 = load i32, ptr %presortdim, align 4, !dbg !839, !tbaa !585
  %27 = load ptr, ptr %arguments, align 8, !dbg !840, !tbaa !189
  %silent = getelementptr inbounds %struct.GtChain2dimoptions, ptr %27, i32 0, i32 0, !dbg !841
  %28 = load i8, ptr %silent, align 8, !dbg !841, !tbaa !842, !range !253, !noundef !254
  %tobool25 = trunc i8 %28 to i1, !dbg !841
  %29 = zext i1 %tobool25 to i64, !dbg !840
  %cond = select i1 %tobool25, ptr @gt_outputformatchainsilent, ptr @gt_outputformatchain, !dbg !840
  %30 = load ptr, ptr %logger, align 8, !dbg !843, !tbaa !189
  call void @gt_chain_fastchaining(ptr noundef %23, ptr noundef %24, ptr noundef %25, i1 noundef zeroext true, i32 noundef %26, i1 noundef zeroext true, ptr noundef %cond, ptr noundef %counter, ptr noundef %30), !dbg !844
  %31 = load ptr, ptr %chain, align 8, !dbg !845, !tbaa !189
  call void @gt_chain_chain_delete(ptr noundef %31), !dbg !846
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #5, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #5, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %presortdim) #5, !dbg !847
  br label %if.end26, !dbg !848

if.end26:                                         ; preds = %if.then21, %if.end19
  %32 = load ptr, ptr %arguments, align 8, !dbg !849, !tbaa !189
  %gtchainmode27 = getelementptr inbounds %struct.GtChain2dimoptions, ptr %32, i32 0, i32 11, !dbg !850
  %33 = load ptr, ptr %gtchainmode27, align 8, !dbg !850, !tbaa !733
  call void @gt_chain_chainmode_delete(ptr noundef %33), !dbg !851
  %34 = load ptr, ptr %matchtable, align 8, !dbg !852, !tbaa !189
  call void @gt_chain_matchtable_delete(ptr noundef %34), !dbg !853
  %35 = load ptr, ptr %logger, align 8, !dbg !854, !tbaa !189
  %cmp28 = icmp ne ptr %35, null, !dbg !856
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !857

if.then29:                                        ; preds = %if.end26
  %36 = load ptr, ptr %logger, align 8, !dbg !858, !tbaa !189
  call void @gt_logger_delete(ptr noundef %36), !dbg !860
  br label %if.end30, !dbg !861

if.end30:                                         ; preds = %if.then29, %if.end26
  %37 = load i8, ptr %haserr, align 1, !dbg !862, !tbaa !227, !range !253, !noundef !254
  %tobool31 = trunc i8 %37 to i1, !dbg !862
  %38 = zext i1 %tobool31 to i64, !dbg !862
  %cond32 = select i1 %tobool31, i32 -1, i32 0, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #5, !dbg !863
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #5, !dbg !863
  call void @llvm.lifetime.end.p0(i64 8, ptr %matchtable) #5, !dbg !863
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !863
  ret i32 %cond32, !dbg !864
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !865 i64 @gt_chain_chainlength(ptr noundef) #1

declare !dbg !868 i32 @printf(ptr noundef, ...) #1

declare !dbg !873 i64 @gt_chain_chainscore(ptr noundef) #1

declare !dbg !876 zeroext i1 @gt_chain_storedinreverseorder(ptr noundef) #1

declare !dbg !879 void @gt_chain_extractchainelem(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !883 void @gt_chain_printchainelem(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !943 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !947 void @gt_str_delete(ptr noundef) #1

declare !dbg !950 void @gt_str_array_delete(ptr noundef) #1

declare !dbg !953 void @gt_option_delete(ptr noundef) #1

declare !dbg !956 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !959 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !963 void @abort() #3

declare !dbg !967 ptr @gt_str_new() #1

declare !dbg !970 ptr @gt_str_array_new() #1

declare !dbg !973 ptr @gt_option_parser_new(ptr noundef, ptr noundef) #1

declare !dbg !976 void @gt_option_parser_set_mail_address(ptr noundef, ptr noundef) #1

declare !dbg !979 ptr @gt_option_new_filename(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !982 void @gt_option_parser_add_option(ptr noundef, ptr noundef) #1

declare !dbg !985 void @gt_option_is_mandatory(ptr noundef) #1

declare !dbg !986 ptr @gt_option_new_string_array(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !989 void @gt_option_argument_is_optional(ptr noundef) #1

declare !dbg !990 ptr @gt_option_ref(ptr noundef) #1

declare !dbg !993 void @gt_option_exclude(ptr noundef, ptr noundef) #1

declare !dbg !996 ptr @gt_option_new_double(ptr noundef, ptr noundef, ptr noundef, double noundef) #1

declare !dbg !1000 ptr @gt_option_new_uword(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !1004 ptr @gt_option_new_bool(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare !dbg !1008 ptr @gt_option_new_verbose(ptr noundef) #1

declare !dbg !1011 zeroext i1 @gt_option_is_set(ptr noundef) #1

declare !dbg !1016 void @gt_error_set(ptr noundef, ptr noundef, ...) #1

declare !dbg !1019 i64 @gt_str_array_size(ptr noundef) #1

declare !dbg !1024 ptr @gt_str_array_get(ptr noundef, i64 noundef) #1

declare !dbg !1027 ptr @gt_chain_chainmode_new(i64 noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) #1

declare !dbg !1030 zeroext i1 @gt_error_is_set(ptr noundef) #1

declare !dbg !1035 ptr @gt_chain_analyzeopenformatfile(double noundef, ptr noundef, ptr noundef) #1

declare !dbg !1038 ptr @gt_str_get(ptr noundef) #1

declare !dbg !1043 ptr @gt_logger_new(i1 noundef zeroext, ptr noundef, ptr noundef) #1

declare !dbg !1046 void @gt_chain_possiblysortmatches(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !1049 ptr @gt_chain_chain_new() #1

declare !dbg !1052 void @gt_chain_fastchaining(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1059 void @gt_chain_chain_delete(ptr noundef) #1

declare !dbg !1062 void @gt_chain_chainmode_delete(ptr noundef) #1

declare !dbg !1065 void @gt_chain_matchtable_delete(ptr noundef) #1

declare !dbg !1068 void @gt_logger_delete(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!155}
!llvm.module.flags = !{!167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tools/gt_chain2dim.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c3c223b30be0291e8234e41012204232")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 297)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 18)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 248, elements: !26)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !{!27}
!27 = !DISubrange(count: 31)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 23)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 24)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 27)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 2)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 53)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 7)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1928, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 241)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 6)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4416, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 552)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 968, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 121)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !55, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 38)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !55, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 66)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 52)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 51)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !3, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 232, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 29)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 34)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !104, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 50)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 696, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 87)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !75, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !75, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 4)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 30)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 20)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !148)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !75, isLocal: true, isDefinition: true)
!155 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !156, globals: !166, splitDebugInlining: false, nameTableKind: None)
!156 = !{!157, !165}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Counter", file: !2, line: 197, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 194, size: 64, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "chaincounter", scope: !159, file: !2, line: 196, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !163, line: 83, baseType: !164)
!163 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !{!0, !7, !12, !17, !22, !28, !33, !38, !43, !48, !53, !58, !63, !68, !73, !78, !83, !85, !90, !92, !97, !102, !107, !109, !114, !119, !121, !126, !131, !133, !135, !140, !145, !150, !153}
!167 = !{i32 7, !"Dwarf Version", i32 5}
!168 = !{i32 2, !"Debug Info Version", i32 3}
!169 = !{i32 1, !"wchar_size", i32 4}
!170 = !{i32 8, !"PIC Level", i32 2}
!171 = !{i32 7, !"uwtable", i32 2}
!172 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!173 = distinct !DISubprogram(name: "gt_outputformatchainsilent", scope: !2, file: !2, line: 234, type: !174, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !185)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !165, !176, !181}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dimmatchtable", file: !179, line: 56, baseType: !180)
!179 = !DIFile(filename: "src/match/chain2dim.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fa1968fc5dfd97ac37a8eb0fb2c7f49f")
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtChain2Dimmatchtable", file: !179, line: 56, flags: DIFlagFwdDecl)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dim", file: !179, line: 52, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtChain2Dim", file: !179, line: 52, flags: DIFlagFwdDecl)
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "data", arg: 1, scope: !173, file: !2, line: 234, type: !165)
!187 = !DILocalVariable(name: "matchtable", arg: 2, scope: !173, file: !2, line: 235, type: !176)
!188 = !DILocalVariable(name: "chain", arg: 3, scope: !173, file: !2, line: 236, type: !181)
!189 = !{!190, !190, i64 0}
!190 = !{!"any pointer", !191, i64 0}
!191 = !{!"omnipotent char", !192, i64 0}
!192 = !{!"Simple C/C++ TBAA"}
!193 = !DILocation(line: 234, column: 39, scope: !173)
!194 = !DILocation(line: 235, column: 61, scope: !173)
!195 = !DILocation(line: 236, column: 51, scope: !173)
!196 = !DILocation(line: 238, column: 36, scope: !173)
!197 = !DILocation(line: 238, column: 41, scope: !173)
!198 = !DILocation(line: 238, column: 52, scope: !173)
!199 = !DILocation(line: 238, column: 3, scope: !173)
!200 = !DILocation(line: 239, column: 1, scope: !173)
!201 = distinct !DISubprogram(name: "gt_outputformatchaingeneric", scope: !2, file: !2, line: 199, type: !202, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !205)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204, !165, !176, !181}
!204 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213}
!206 = !DILocalVariable(name: "silent", arg: 1, scope: !201, file: !2, line: 200, type: !204)
!207 = !DILocalVariable(name: "data", arg: 2, scope: !201, file: !2, line: 201, type: !165)
!208 = !DILocalVariable(name: "matchtable", arg: 3, scope: !201, file: !2, line: 202, type: !176)
!209 = !DILocalVariable(name: "chain", arg: 4, scope: !201, file: !2, line: 203, type: !181)
!210 = !DILocalVariable(name: "idx", scope: !201, file: !2, line: 205, type: !162)
!211 = !DILocalVariable(name: "chainlength", scope: !201, file: !2, line: 205, type: !162)
!212 = !DILocalVariable(name: "counter", scope: !201, file: !2, line: 206, type: !157)
!213 = !DILocalVariable(name: "value", scope: !214, file: !2, line: 213, type: !216)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 212, column: 3)
!215 = distinct !DILexicalBlock(scope: !201, file: !2, line: 211, column: 7)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dimmatchvalues", file: !179, line: 67, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 61, size: 320, elements: !218)
!218 = !{!219, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "startpos", scope: !217, file: !179, line: 63, baseType: !220, size: 128)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !46)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dimpostype", file: !179, line: 44, baseType: !162)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "endpos", scope: !217, file: !179, line: 65, baseType: !220, size: 128, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !217, file: !179, line: 66, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dimscoretype", file: !179, line: 48, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtWord", file: !163, line: 94, baseType: !226)
!226 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!227 = !{!228, !228, i64 0}
!228 = !{!"_Bool", !191, i64 0}
!229 = !DILocation(line: 200, column: 38, scope: !201)
!230 = !DILocation(line: 201, column: 39, scope: !201)
!231 = !DILocation(line: 202, column: 62, scope: !201)
!232 = !DILocation(line: 203, column: 52, scope: !201)
!233 = !DILocation(line: 205, column: 3, scope: !201)
!234 = !DILocation(line: 205, column: 11, scope: !201)
!235 = !DILocation(line: 205, column: 16, scope: !201)
!236 = !DILocation(line: 206, column: 3, scope: !201)
!237 = !DILocation(line: 206, column: 12, scope: !201)
!238 = !DILocation(line: 206, column: 34, scope: !201)
!239 = !DILocation(line: 208, column: 38, scope: !201)
!240 = !DILocation(line: 208, column: 17, scope: !201)
!241 = !DILocation(line: 208, column: 15, scope: !201)
!242 = !{!243, !243, i64 0}
!243 = !{!"long", !191, i64 0}
!244 = !DILocation(line: 210, column: 10, scope: !201)
!245 = !DILocation(line: 210, column: 19, scope: !201)
!246 = !{!247, !243, i64 0}
!247 = !{!"", !243, i64 0}
!248 = !DILocation(line: 210, column: 32, scope: !201)
!249 = !DILocation(line: 210, column: 64, scope: !201)
!250 = !DILocation(line: 210, column: 44, scope: !201)
!251 = !DILocation(line: 209, column: 3, scope: !201)
!252 = !DILocation(line: 211, column: 8, scope: !215)
!253 = !{i8 0, i8 2}
!254 = !{}
!255 = !DILocation(line: 211, column: 7, scope: !201)
!256 = !DILocation(line: 213, column: 5, scope: !214)
!257 = !DILocation(line: 213, column: 28, scope: !214)
!258 = !DILocation(line: 215, column: 39, scope: !259)
!259 = distinct !DILexicalBlock(scope: !214, file: !2, line: 215, column: 9)
!260 = !DILocation(line: 215, column: 9, scope: !259)
!261 = !DILocation(line: 215, column: 9, scope: !214)
!262 = !DILocation(line: 217, column: 16, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 217, column: 7)
!264 = distinct !DILexicalBlock(scope: !259, file: !2, line: 216, column: 5)
!265 = !DILocation(line: 217, column: 15, scope: !263)
!266 = !DILocation(line: 217, column: 12, scope: !263)
!267 = !DILocation(line: 217, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !2, line: 217, column: 7)
!269 = !DILocation(line: 217, column: 33, scope: !268)
!270 = !DILocation(line: 217, column: 7, scope: !263)
!271 = !DILocation(line: 219, column: 43, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !2, line: 218, column: 7)
!273 = !DILocation(line: 219, column: 55, scope: !272)
!274 = !DILocation(line: 219, column: 62, scope: !272)
!275 = !DILocation(line: 219, column: 66, scope: !272)
!276 = !DILocation(line: 219, column: 9, scope: !272)
!277 = !DILocation(line: 220, column: 33, scope: !272)
!278 = !DILocation(line: 220, column: 9, scope: !272)
!279 = !DILocation(line: 221, column: 7, scope: !272)
!280 = !DILocation(line: 217, column: 41, scope: !268)
!281 = !DILocation(line: 217, column: 7, scope: !268)
!282 = distinct !{!282, !270, !283, !284}
!283 = !DILocation(line: 221, column: 7, scope: !263)
!284 = !{!"llvm.loop.mustprogress"}
!285 = !DILocation(line: 222, column: 5, scope: !264)
!286 = !DILocation(line: 224, column: 15, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !2, line: 224, column: 7)
!288 = distinct !DILexicalBlock(scope: !259, file: !2, line: 223, column: 5)
!289 = !DILocation(line: 224, column: 12, scope: !287)
!290 = !DILocation(line: 224, column: 19, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !2, line: 224, column: 7)
!292 = !DILocation(line: 224, column: 25, scope: !291)
!293 = !DILocation(line: 224, column: 23, scope: !291)
!294 = !DILocation(line: 224, column: 7, scope: !287)
!295 = !DILocation(line: 226, column: 43, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !2, line: 225, column: 7)
!297 = !DILocation(line: 226, column: 55, scope: !296)
!298 = !DILocation(line: 226, column: 62, scope: !296)
!299 = !DILocation(line: 226, column: 9, scope: !296)
!300 = !DILocation(line: 227, column: 33, scope: !296)
!301 = !DILocation(line: 227, column: 9, scope: !296)
!302 = !DILocation(line: 228, column: 7, scope: !296)
!303 = !DILocation(line: 224, column: 41, scope: !291)
!304 = !DILocation(line: 224, column: 7, scope: !291)
!305 = distinct !{!305, !294, !306, !284}
!306 = !DILocation(line: 228, column: 7, scope: !287)
!307 = !DILocation(line: 230, column: 3, scope: !215)
!308 = !DILocation(line: 230, column: 3, scope: !214)
!309 = !DILocation(line: 231, column: 3, scope: !201)
!310 = !DILocation(line: 231, column: 12, scope: !201)
!311 = !DILocation(line: 231, column: 24, scope: !201)
!312 = !DILocation(line: 232, column: 1, scope: !201)
!313 = distinct !DISubprogram(name: "gt_outputformatchain", scope: !2, file: !2, line: 241, type: !174, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !314)
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "data", arg: 1, scope: !313, file: !2, line: 241, type: !165)
!316 = !DILocalVariable(name: "matchtable", arg: 2, scope: !313, file: !2, line: 242, type: !176)
!317 = !DILocalVariable(name: "chain", arg: 3, scope: !313, file: !2, line: 243, type: !181)
!318 = !DILocation(line: 241, column: 33, scope: !313)
!319 = !DILocation(line: 242, column: 56, scope: !313)
!320 = !DILocation(line: 243, column: 46, scope: !313)
!321 = !DILocation(line: 245, column: 37, scope: !313)
!322 = !DILocation(line: 245, column: 42, scope: !313)
!323 = !DILocation(line: 245, column: 53, scope: !313)
!324 = !DILocation(line: 245, column: 3, scope: !313)
!325 = !DILocation(line: 246, column: 1, scope: !313)
!326 = distinct !DISubprogram(name: "gt_chain2dim", scope: !2, file: !2, line: 302, type: !327, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155)
!327 = !DISubroutineType(types: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTool", file: !331, line: 26, baseType: !332)
!331 = !DIFile(filename: "src/core/tool_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e867124201284063b8eb5758ec6a469a")
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTool", file: !331, line: 26, flags: DIFlagFwdDecl)
!333 = !DILocation(line: 304, column: 10, scope: !326)
!334 = !DILocation(line: 304, column: 3, scope: !326)
!335 = !DISubprogram(name: "gt_tool_new", scope: !331, file: !331, line: 66, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!329, !338, !342, !346, !354, !363}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsNew", file: !331, line: 30, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!165}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsDelete", file: !331, line: 33, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !165}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolOptionParserNew", file: !331, line: 36, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !165}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !352, line: 27, baseType: !353)
!352 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !352, line: 27, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsCheck", file: !331, line: 41, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !358, !165, !359}
!358 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !361, line: 44, baseType: !362)
!361 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !361, line: 44, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolRunner", file: !331, line: 52, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!358, !358, !367, !358, !165, !359}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!369 = distinct !DISubprogram(name: "gt_chain2dim_arguments_new", scope: !2, file: !2, line: 24, type: !340, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155)
!370 = !DILocation(line: 26, column: 10, scope: !369)
!371 = !DILocation(line: 26, column: 3, scope: !369)
!372 = distinct !DISubprogram(name: "gt_chain2dim_arguments_delete", scope: !2, file: !2, line: 29, type: !344, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !373)
!373 = !{!374, !375}
!374 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !372, file: !2, line: 29, type: !165)
!375 = !DILocalVariable(name: "arguments", scope: !372, file: !2, line: 31, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2dimoptions", file: !378, line: 43, baseType: !379)
!378 = !DIFile(filename: "src/tools/gt_chain2dim.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e98b9d2ba6e9c76f6515cadace7e0b24")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 29, size: 704, elements: !380)
!380 = !{!381, !382, !383, !385, !386, !391, !396, !397, !401, !402, !403, !404}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !379, file: !378, line: 31, baseType: !204, size: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !379, file: !378, line: 32, baseType: !204, size: 8, offset: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "weightfactor", scope: !379, file: !378, line: 33, baseType: !384, size: 64, offset: 64)
!384 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "maxgap", scope: !379, file: !378, line: 34, baseType: !162, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "matchfile", scope: !379, file: !378, line: 35, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !389, line: 27, baseType: !390)
!389 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !389, line: 27, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "globalargs", scope: !379, file: !378, line: 36, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrArray", file: !394, line: 24, baseType: !395)
!394 = !DIFile(filename: "src/core/str_array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d2f5724ae7121552c301a489d5e7f125")
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStrArray", file: !394, line: 24, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "localargs", scope: !379, file: !378, line: 37, baseType: !392, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "refoptionmaxgap", scope: !379, file: !378, line: 38, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !352, line: 33, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !352, line: 33, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "refoptionweightfactor", scope: !379, file: !378, line: 39, baseType: !398, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "refoptionglobal", scope: !379, file: !378, line: 40, baseType: !398, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refoptionlocal", scope: !379, file: !378, line: 41, baseType: !398, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gtchainmode", scope: !379, file: !378, line: 42, baseType: !405, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dimmode", file: !179, line: 79, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtChain2Dimmode", file: !179, line: 79, flags: DIFlagFwdDecl)
!408 = !DILocation(line: 29, column: 50, scope: !372)
!409 = !DILocation(line: 31, column: 3, scope: !372)
!410 = !DILocation(line: 31, column: 23, scope: !372)
!411 = !DILocation(line: 31, column: 35, scope: !372)
!412 = !DILocation(line: 33, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !372, file: !2, line: 33, column: 7)
!414 = !DILocation(line: 33, column: 7, scope: !372)
!415 = !DILocation(line: 35, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !2, line: 34, column: 3)
!417 = !DILocation(line: 37, column: 18, scope: !372)
!418 = !DILocation(line: 37, column: 29, scope: !372)
!419 = !{!420, !190, i64 24}
!420 = !{!"", !228, i64 0, !228, i64 1, !421, i64 8, !243, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80}
!421 = !{!"double", !191, i64 0}
!422 = !DILocation(line: 37, column: 3, scope: !372)
!423 = !DILocation(line: 38, column: 24, scope: !372)
!424 = !DILocation(line: 38, column: 35, scope: !372)
!425 = !{!420, !190, i64 32}
!426 = !DILocation(line: 38, column: 3, scope: !372)
!427 = !DILocation(line: 39, column: 24, scope: !372)
!428 = !DILocation(line: 39, column: 35, scope: !372)
!429 = !{!420, !190, i64 40}
!430 = !DILocation(line: 39, column: 3, scope: !372)
!431 = !DILocation(line: 40, column: 21, scope: !372)
!432 = !DILocation(line: 40, column: 32, scope: !372)
!433 = !{!420, !190, i64 48}
!434 = !DILocation(line: 40, column: 3, scope: !372)
!435 = !DILocation(line: 41, column: 21, scope: !372)
!436 = !DILocation(line: 41, column: 32, scope: !372)
!437 = !{!420, !190, i64 56}
!438 = !DILocation(line: 41, column: 3, scope: !372)
!439 = !DILocation(line: 42, column: 21, scope: !372)
!440 = !DILocation(line: 42, column: 32, scope: !372)
!441 = !{!420, !190, i64 64}
!442 = !DILocation(line: 42, column: 3, scope: !372)
!443 = !DILocation(line: 43, column: 21, scope: !372)
!444 = !DILocation(line: 43, column: 32, scope: !372)
!445 = !{!420, !190, i64 72}
!446 = !DILocation(line: 43, column: 3, scope: !372)
!447 = !DILocation(line: 44, column: 3, scope: !372)
!448 = !DILocation(line: 45, column: 1, scope: !372)
!449 = distinct !DISubprogram(name: "gt_chain2dim_option_parser_new", scope: !2, file: !2, line: 47, type: !348, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !450)
!450 = !{!451, !452, !453, !454, !455, !456}
!451 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !449, file: !2, line: 47, type: !165)
!452 = !DILocalVariable(name: "arguments", scope: !449, file: !2, line: 49, type: !376)
!453 = !DILocalVariable(name: "op", scope: !449, file: !2, line: 50, type: !350)
!454 = !DILocalVariable(name: "option", scope: !449, file: !2, line: 51, type: !398)
!455 = !DILocalVariable(name: "optionglobal", scope: !449, file: !2, line: 51, type: !398)
!456 = !DILocalVariable(name: "optionlocal", scope: !449, file: !2, line: 51, type: !398)
!457 = !DILocation(line: 47, column: 62, scope: !449)
!458 = !DILocation(line: 49, column: 3, scope: !449)
!459 = !DILocation(line: 49, column: 23, scope: !449)
!460 = !DILocation(line: 49, column: 35, scope: !449)
!461 = !DILocation(line: 50, column: 3, scope: !449)
!462 = !DILocation(line: 50, column: 19, scope: !449)
!463 = !DILocation(line: 51, column: 3, scope: !449)
!464 = !DILocation(line: 51, column: 13, scope: !449)
!465 = !DILocation(line: 51, column: 22, scope: !449)
!466 = !DILocation(line: 51, column: 37, scope: !449)
!467 = !DILocation(line: 53, column: 3, scope: !449)
!468 = !DILocation(line: 53, column: 3, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !2, line: 53, column: 3)
!470 = distinct !DILexicalBlock(scope: !449, file: !2, line: 53, column: 3)
!471 = !DILocation(line: 53, column: 3, scope: !470)
!472 = !DILocation(line: 53, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !2, line: 53, column: 3)
!474 = !DILocation(line: 54, column: 26, scope: !449)
!475 = !DILocation(line: 54, column: 3, scope: !449)
!476 = !DILocation(line: 54, column: 14, scope: !449)
!477 = !DILocation(line: 54, column: 24, scope: !449)
!478 = !DILocation(line: 55, column: 27, scope: !449)
!479 = !DILocation(line: 55, column: 3, scope: !449)
!480 = !DILocation(line: 55, column: 14, scope: !449)
!481 = !DILocation(line: 55, column: 25, scope: !449)
!482 = !DILocation(line: 56, column: 26, scope: !449)
!483 = !DILocation(line: 56, column: 3, scope: !449)
!484 = !DILocation(line: 56, column: 14, scope: !449)
!485 = !DILocation(line: 56, column: 24, scope: !449)
!486 = !DILocation(line: 58, column: 8, scope: !449)
!487 = !DILocation(line: 58, column: 6, scope: !449)
!488 = !DILocation(line: 61, column: 37, scope: !449)
!489 = !DILocation(line: 61, column: 3, scope: !449)
!490 = !DILocation(line: 64, column: 35, scope: !449)
!491 = !DILocation(line: 64, column: 46, scope: !449)
!492 = !DILocation(line: 62, column: 12, scope: !449)
!493 = !DILocation(line: 62, column: 10, scope: !449)
!494 = !DILocation(line: 65, column: 31, scope: !449)
!495 = !DILocation(line: 65, column: 35, scope: !449)
!496 = !DILocation(line: 65, column: 3, scope: !449)
!497 = !DILocation(line: 66, column: 26, scope: !449)
!498 = !DILocation(line: 66, column: 3, scope: !449)
!499 = !DILocation(line: 76, column: 20, scope: !449)
!500 = !DILocation(line: 76, column: 31, scope: !449)
!501 = !DILocation(line: 68, column: 18, scope: !449)
!502 = !DILocation(line: 68, column: 16, scope: !449)
!503 = !DILocation(line: 77, column: 34, scope: !449)
!504 = !DILocation(line: 77, column: 3, scope: !449)
!505 = !DILocation(line: 78, column: 47, scope: !449)
!506 = !DILocation(line: 78, column: 32, scope: !449)
!507 = !DILocation(line: 78, column: 3, scope: !449)
!508 = !DILocation(line: 78, column: 14, scope: !449)
!509 = !DILocation(line: 78, column: 30, scope: !449)
!510 = !DILocation(line: 79, column: 31, scope: !449)
!511 = !DILocation(line: 79, column: 35, scope: !449)
!512 = !DILocation(line: 79, column: 3, scope: !449)
!513 = !DILocation(line: 96, column: 20, scope: !449)
!514 = !DILocation(line: 96, column: 31, scope: !449)
!515 = !DILocation(line: 81, column: 17, scope: !449)
!516 = !DILocation(line: 81, column: 15, scope: !449)
!517 = !DILocation(line: 97, column: 34, scope: !449)
!518 = !DILocation(line: 97, column: 3, scope: !449)
!519 = !DILocation(line: 98, column: 31, scope: !449)
!520 = !DILocation(line: 98, column: 35, scope: !449)
!521 = !DILocation(line: 98, column: 3, scope: !449)
!522 = !DILocation(line: 99, column: 45, scope: !449)
!523 = !DILocation(line: 99, column: 31, scope: !449)
!524 = !DILocation(line: 99, column: 3, scope: !449)
!525 = !DILocation(line: 99, column: 14, scope: !449)
!526 = !DILocation(line: 99, column: 29, scope: !449)
!527 = !DILocation(line: 100, column: 21, scope: !449)
!528 = !DILocation(line: 100, column: 33, scope: !449)
!529 = !DILocation(line: 100, column: 3, scope: !449)
!530 = !DILocation(line: 105, column: 39, scope: !449)
!531 = !DILocation(line: 105, column: 50, scope: !449)
!532 = !DILocation(line: 101, column: 12, scope: !449)
!533 = !DILocation(line: 101, column: 10, scope: !449)
!534 = !DILocation(line: 106, column: 53, scope: !449)
!535 = !DILocation(line: 106, column: 38, scope: !449)
!536 = !DILocation(line: 106, column: 3, scope: !449)
!537 = !DILocation(line: 106, column: 14, scope: !449)
!538 = !DILocation(line: 106, column: 36, scope: !449)
!539 = !DILocation(line: 107, column: 31, scope: !449)
!540 = !DILocation(line: 107, column: 35, scope: !449)
!541 = !DILocation(line: 107, column: 3, scope: !449)
!542 = !DILocation(line: 109, column: 43, scope: !449)
!543 = !DILocation(line: 109, column: 54, scope: !449)
!544 = !DILocation(line: 108, column: 12, scope: !449)
!545 = !DILocation(line: 108, column: 10, scope: !449)
!546 = !DILocation(line: 110, column: 46, scope: !449)
!547 = !DILocation(line: 110, column: 32, scope: !449)
!548 = !DILocation(line: 110, column: 3, scope: !449)
!549 = !DILocation(line: 110, column: 14, scope: !449)
!550 = !DILocation(line: 110, column: 30, scope: !449)
!551 = !DILocation(line: 111, column: 31, scope: !449)
!552 = !DILocation(line: 111, column: 35, scope: !449)
!553 = !DILocation(line: 111, column: 3, scope: !449)
!554 = !DILocation(line: 114, column: 41, scope: !449)
!555 = !DILocation(line: 114, column: 52, scope: !449)
!556 = !DILocation(line: 112, column: 12, scope: !449)
!557 = !DILocation(line: 112, column: 10, scope: !449)
!558 = !DILocation(line: 115, column: 31, scope: !449)
!559 = !DILocation(line: 115, column: 35, scope: !449)
!560 = !DILocation(line: 115, column: 3, scope: !449)
!561 = !DILocation(line: 116, column: 35, scope: !449)
!562 = !DILocation(line: 116, column: 46, scope: !449)
!563 = !DILocation(line: 116, column: 12, scope: !449)
!564 = !DILocation(line: 116, column: 10, scope: !449)
!565 = !DILocation(line: 117, column: 31, scope: !449)
!566 = !DILocation(line: 117, column: 35, scope: !449)
!567 = !DILocation(line: 117, column: 3, scope: !449)
!568 = !DILocation(line: 118, column: 10, scope: !449)
!569 = !DILocation(line: 119, column: 1, scope: !449)
!570 = !DILocation(line: 118, column: 3, scope: !449)
!571 = distinct !DISubprogram(name: "gt_chain2dim_arguments_check", scope: !2, file: !2, line: 121, type: !356, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !582}
!573 = !DILocalVariable(name: "rest_argc", arg: 1, scope: !571, file: !2, line: 121, type: !358)
!574 = !DILocalVariable(name: "tool_arguments", arg: 2, scope: !571, file: !2, line: 122, type: !165)
!575 = !DILocalVariable(name: "err", arg: 3, scope: !571, file: !2, line: 123, type: !359)
!576 = !DILocalVariable(name: "arguments", scope: !571, file: !2, line: 125, type: !376)
!577 = !DILocalVariable(name: "globalargs", scope: !571, file: !2, line: 126, type: !368)
!578 = !DILocalVariable(name: "localargs", scope: !571, file: !2, line: 126, type: !368)
!579 = !DILocalVariable(name: "globalargsnum", scope: !580, file: !2, line: 148, type: !162)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 147, column: 3)
!581 = distinct !DILexicalBlock(scope: !571, file: !2, line: 146, column: 7)
!582 = !DILocalVariable(name: "localargsnum", scope: !583, file: !2, line: 161, type: !162)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 160, column: 3)
!584 = distinct !DILexicalBlock(scope: !571, file: !2, line: 159, column: 7)
!585 = !{!586, !586, i64 0}
!586 = !{!"int", !191, i64 0}
!587 = !DILocation(line: 121, column: 56, scope: !571)
!588 = !DILocation(line: 122, column: 48, scope: !571)
!589 = !DILocation(line: 123, column: 52, scope: !571)
!590 = !DILocation(line: 125, column: 3, scope: !571)
!591 = !DILocation(line: 125, column: 23, scope: !571)
!592 = !DILocation(line: 125, column: 35, scope: !571)
!593 = !DILocation(line: 126, column: 3, scope: !571)
!594 = !DILocation(line: 126, column: 15, scope: !571)
!595 = !DILocation(line: 126, column: 35, scope: !571)
!596 = !DILocation(line: 128, column: 25, scope: !597)
!597 = distinct !DILexicalBlock(scope: !571, file: !2, line: 128, column: 7)
!598 = !DILocation(line: 128, column: 36, scope: !597)
!599 = !DILocation(line: 128, column: 7, scope: !597)
!600 = !DILocation(line: 128, column: 7, scope: !571)
!601 = !DILocation(line: 130, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 130, column: 9)
!603 = distinct !DILexicalBlock(scope: !597, file: !2, line: 129, column: 3)
!604 = !DILocation(line: 130, column: 20, scope: !602)
!605 = !{!420, !243, i64 16}
!606 = !DILocation(line: 130, column: 27, scope: !602)
!607 = !DILocation(line: 130, column: 9, scope: !603)
!608 = !DILocation(line: 132, column: 20, scope: !609)
!609 = distinct !DILexicalBlock(scope: !602, file: !2, line: 131, column: 5)
!610 = !DILocation(line: 132, column: 7, scope: !609)
!611 = !DILocation(line: 133, column: 7, scope: !609)
!612 = !DILocation(line: 135, column: 3, scope: !603)
!613 = !DILocation(line: 136, column: 25, scope: !614)
!614 = distinct !DILexicalBlock(scope: !571, file: !2, line: 136, column: 7)
!615 = !DILocation(line: 136, column: 36, scope: !614)
!616 = !DILocation(line: 136, column: 7, scope: !614)
!617 = !DILocation(line: 136, column: 7, scope: !571)
!618 = !DILocation(line: 138, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 138, column: 9)
!620 = distinct !DILexicalBlock(scope: !614, file: !2, line: 137, column: 3)
!621 = !DILocation(line: 138, column: 20, scope: !619)
!622 = !{!420, !421, i64 8}
!623 = !DILocation(line: 138, column: 33, scope: !619)
!624 = !DILocation(line: 138, column: 9, scope: !620)
!625 = !DILocation(line: 140, column: 20, scope: !626)
!626 = distinct !DILexicalBlock(scope: !619, file: !2, line: 139, column: 5)
!627 = !DILocation(line: 140, column: 7, scope: !626)
!628 = !DILocation(line: 141, column: 7, scope: !626)
!629 = !DILocation(line: 143, column: 3, scope: !620)
!630 = !DILocation(line: 144, column: 3, scope: !571)
!631 = !DILocation(line: 144, column: 3, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !2, line: 144, column: 3)
!633 = distinct !DILexicalBlock(scope: !571, file: !2, line: 144, column: 3)
!634 = !DILocation(line: 144, column: 3, scope: !633)
!635 = !DILocation(line: 144, column: 3, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !2, line: 144, column: 3)
!637 = !DILocation(line: 145, column: 3, scope: !571)
!638 = !DILocation(line: 145, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !2, line: 145, column: 3)
!640 = distinct !DILexicalBlock(scope: !571, file: !2, line: 145, column: 3)
!641 = !DILocation(line: 145, column: 3, scope: !640)
!642 = !DILocation(line: 145, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !2, line: 145, column: 3)
!644 = !DILocation(line: 146, column: 24, scope: !581)
!645 = !DILocation(line: 146, column: 35, scope: !581)
!646 = !DILocation(line: 146, column: 7, scope: !581)
!647 = !DILocation(line: 146, column: 7, scope: !571)
!648 = !DILocation(line: 148, column: 5, scope: !580)
!649 = !DILocation(line: 148, column: 13, scope: !580)
!650 = !DILocation(line: 148, column: 47, scope: !580)
!651 = !DILocation(line: 148, column: 58, scope: !580)
!652 = !DILocation(line: 148, column: 29, scope: !580)
!653 = !DILocation(line: 149, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !580, file: !2, line: 149, column: 9)
!655 = !DILocation(line: 149, column: 23, scope: !654)
!656 = !DILocation(line: 149, column: 9, scope: !580)
!657 = !DILocation(line: 151, column: 20, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !2, line: 150, column: 5)
!659 = !DILocation(line: 151, column: 7, scope: !658)
!660 = !DILocation(line: 152, column: 7, scope: !658)
!661 = !DILocation(line: 154, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !580, file: !2, line: 154, column: 9)
!663 = !DILocation(line: 154, column: 23, scope: !662)
!664 = !DILocation(line: 154, column: 9, scope: !580)
!665 = !DILocation(line: 156, column: 37, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !2, line: 155, column: 5)
!667 = !DILocation(line: 156, column: 48, scope: !666)
!668 = !DILocation(line: 156, column: 20, scope: !666)
!669 = !DILocation(line: 156, column: 18, scope: !666)
!670 = !DILocation(line: 157, column: 5, scope: !666)
!671 = !DILocation(line: 158, column: 3, scope: !581)
!672 = !DILocation(line: 158, column: 3, scope: !580)
!673 = !DILocation(line: 159, column: 24, scope: !584)
!674 = !DILocation(line: 159, column: 35, scope: !584)
!675 = !DILocation(line: 159, column: 7, scope: !584)
!676 = !DILocation(line: 159, column: 7, scope: !571)
!677 = !DILocation(line: 161, column: 5, scope: !583)
!678 = !DILocation(line: 161, column: 13, scope: !583)
!679 = !DILocation(line: 161, column: 46, scope: !583)
!680 = !DILocation(line: 161, column: 57, scope: !583)
!681 = !DILocation(line: 161, column: 28, scope: !583)
!682 = !DILocation(line: 162, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !583, file: !2, line: 162, column: 9)
!684 = !DILocation(line: 162, column: 22, scope: !683)
!685 = !DILocation(line: 162, column: 9, scope: !583)
!686 = !DILocation(line: 164, column: 20, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !2, line: 163, column: 5)
!688 = !DILocation(line: 164, column: 7, scope: !687)
!689 = !DILocation(line: 165, column: 7, scope: !687)
!690 = !DILocation(line: 167, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !583, file: !2, line: 167, column: 9)
!692 = !DILocation(line: 167, column: 22, scope: !691)
!693 = !DILocation(line: 167, column: 9, scope: !583)
!694 = !DILocation(line: 169, column: 36, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !2, line: 168, column: 5)
!696 = !DILocation(line: 169, column: 47, scope: !695)
!697 = !DILocation(line: 169, column: 19, scope: !695)
!698 = !DILocation(line: 169, column: 17, scope: !695)
!699 = !DILocation(line: 170, column: 5, scope: !695)
!700 = !DILocation(line: 171, column: 3, scope: !584)
!701 = !DILocation(line: 171, column: 3, scope: !583)
!702 = !DILocation(line: 172, column: 24, scope: !703)
!703 = distinct !DILexicalBlock(scope: !571, file: !2, line: 172, column: 7)
!704 = !DILocation(line: 172, column: 35, scope: !703)
!705 = !DILocation(line: 172, column: 7, scope: !703)
!706 = !DILocation(line: 172, column: 58, scope: !703)
!707 = !DILocation(line: 173, column: 25, scope: !703)
!708 = !DILocation(line: 173, column: 36, scope: !703)
!709 = !DILocation(line: 173, column: 8, scope: !703)
!710 = !DILocation(line: 173, column: 52, scope: !703)
!711 = !DILocation(line: 174, column: 7, scope: !703)
!712 = !DILocation(line: 174, column: 18, scope: !703)
!713 = !DILocation(line: 172, column: 7, scope: !571)
!714 = !DILocation(line: 176, column: 18, scope: !715)
!715 = distinct !DILexicalBlock(scope: !703, file: !2, line: 175, column: 3)
!716 = !DILocation(line: 176, column: 5, scope: !715)
!717 = !DILocation(line: 182, column: 5, scope: !715)
!718 = !DILocation(line: 185, column: 30, scope: !571)
!719 = !DILocation(line: 185, column: 41, scope: !571)
!720 = !DILocation(line: 186, column: 47, scope: !571)
!721 = !DILocation(line: 186, column: 58, scope: !571)
!722 = !DILocation(line: 186, column: 30, scope: !571)
!723 = !DILocation(line: 187, column: 30, scope: !571)
!724 = !DILocation(line: 188, column: 47, scope: !571)
!725 = !DILocation(line: 188, column: 58, scope: !571)
!726 = !DILocation(line: 188, column: 30, scope: !571)
!727 = !DILocation(line: 189, column: 30, scope: !571)
!728 = !DILocation(line: 190, column: 30, scope: !571)
!729 = !DILocation(line: 185, column: 7, scope: !571)
!730 = !DILocation(line: 184, column: 3, scope: !571)
!731 = !DILocation(line: 184, column: 14, scope: !571)
!732 = !DILocation(line: 185, column: 5, scope: !571)
!733 = !{!420, !190, i64 80}
!734 = !DILocation(line: 191, column: 11, scope: !571)
!735 = !DILocation(line: 191, column: 22, scope: !571)
!736 = !DILocation(line: 191, column: 34, scope: !571)
!737 = !DILocation(line: 191, column: 10, scope: !571)
!738 = !DILocation(line: 191, column: 3, scope: !571)
!739 = !DILocation(line: 192, column: 1, scope: !571)
!740 = distinct !DISubprogram(name: "gt_chain2dim_runner", scope: !2, file: !2, line: 248, type: !365, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !750, !751, !756, !760, !762}
!742 = !DILocalVariable(name: "argc", arg: 1, scope: !740, file: !2, line: 248, type: !358)
!743 = !DILocalVariable(name: "argv", arg: 2, scope: !740, file: !2, line: 249, type: !367)
!744 = !DILocalVariable(name: "parsed_args", arg: 3, scope: !740, file: !2, line: 250, type: !358)
!745 = !DILocalVariable(name: "tool_arguments", arg: 4, scope: !740, file: !2, line: 251, type: !165)
!746 = !DILocalVariable(name: "err", arg: 5, scope: !740, file: !2, line: 252, type: !359)
!747 = !DILocalVariable(name: "arguments", scope: !740, file: !2, line: 254, type: !376)
!748 = !DILocalVariable(name: "matchtable", scope: !740, file: !2, line: 255, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!750 = !DILocalVariable(name: "haserr", scope: !740, file: !2, line: 256, type: !204)
!751 = !DILocalVariable(name: "logger", scope: !740, file: !2, line: 257, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLogger", file: !754, line: 26, baseType: !755)
!754 = !DIFile(filename: "src/core/logger_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "076ebb09feb7de7a97ee09fc11eb7134")
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLogger", file: !754, line: 26, flags: DIFlagFwdDecl)
!756 = !DILocalVariable(name: "presortdim", scope: !757, file: !2, line: 273, type: !759)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 272, column: 3)
!758 = distinct !DILexicalBlock(scope: !740, file: !2, line: 271, column: 7)
!759 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!760 = !DILocalVariable(name: "chain", scope: !757, file: !2, line: 274, type: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!762 = !DILocalVariable(name: "counter", scope: !757, file: !2, line: 275, type: !158)
!763 = !DILocation(line: 248, column: 47, scope: !740)
!764 = !DILocation(line: 249, column: 56, scope: !740)
!765 = !DILocation(line: 250, column: 47, scope: !740)
!766 = !DILocation(line: 251, column: 39, scope: !740)
!767 = !DILocation(line: 252, column: 43, scope: !740)
!768 = !DILocation(line: 254, column: 3, scope: !740)
!769 = !DILocation(line: 254, column: 23, scope: !740)
!770 = !DILocation(line: 254, column: 35, scope: !740)
!771 = !DILocation(line: 255, column: 3, scope: !740)
!772 = !DILocation(line: 255, column: 26, scope: !740)
!773 = !DILocation(line: 256, column: 3, scope: !740)
!774 = !DILocation(line: 256, column: 8, scope: !740)
!775 = !DILocation(line: 257, column: 3, scope: !740)
!776 = !DILocation(line: 257, column: 13, scope: !740)
!777 = !DILocation(line: 259, column: 3, scope: !740)
!778 = !DILocation(line: 259, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 259, column: 3)
!780 = distinct !DILexicalBlock(scope: !740, file: !2, line: 259, column: 3)
!781 = !DILocation(line: 259, column: 3, scope: !780)
!782 = !DILocation(line: 259, column: 3, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !2, line: 259, column: 3)
!784 = !DILocation(line: 260, column: 3, scope: !740)
!785 = !DILocation(line: 260, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !2, line: 260, column: 3)
!787 = distinct !DILexicalBlock(scope: !740, file: !2, line: 260, column: 3)
!788 = !DILocation(line: 260, column: 3, scope: !787)
!789 = !DILocation(line: 260, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !2, line: 260, column: 3)
!791 = !DILocation(line: 261, column: 3, scope: !740)
!792 = !DILocation(line: 261, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !2, line: 261, column: 3)
!794 = distinct !DILexicalBlock(scope: !740, file: !2, line: 261, column: 3)
!795 = !DILocation(line: 261, column: 3, scope: !794)
!796 = !DILocation(line: 261, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !2, line: 261, column: 3)
!798 = !DILocation(line: 263, column: 47, scope: !740)
!799 = !DILocation(line: 263, column: 58, scope: !740)
!800 = !DILocation(line: 264, column: 58, scope: !740)
!801 = !DILocation(line: 265, column: 58, scope: !740)
!802 = !DILocation(line: 264, column: 47, scope: !740)
!803 = !DILocation(line: 266, column: 47, scope: !740)
!804 = !DILocation(line: 263, column: 16, scope: !740)
!805 = !DILocation(line: 263, column: 14, scope: !740)
!806 = !DILocation(line: 267, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !740, file: !2, line: 267, column: 7)
!808 = !DILocation(line: 267, column: 18, scope: !807)
!809 = !DILocation(line: 267, column: 7, scope: !740)
!810 = !DILocation(line: 269, column: 12, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !2, line: 268, column: 3)
!812 = !DILocation(line: 270, column: 3, scope: !811)
!813 = !DILocation(line: 271, column: 8, scope: !758)
!814 = !DILocation(line: 271, column: 7, scope: !740)
!815 = !DILocation(line: 273, column: 5, scope: !757)
!816 = !DILocation(line: 273, column: 18, scope: !757)
!817 = !DILocation(line: 274, column: 5, scope: !757)
!818 = !DILocation(line: 274, column: 18, scope: !757)
!819 = !DILocation(line: 275, column: 5, scope: !757)
!820 = !DILocation(line: 275, column: 13, scope: !757)
!821 = !DILocation(line: 277, column: 28, scope: !757)
!822 = !DILocation(line: 277, column: 39, scope: !757)
!823 = !{!420, !228, i64 1}
!824 = !DILocation(line: 277, column: 72, scope: !757)
!825 = !DILocation(line: 277, column: 14, scope: !757)
!826 = !DILocation(line: 277, column: 12, scope: !757)
!827 = !DILocation(line: 278, column: 34, scope: !757)
!828 = !DILocation(line: 278, column: 42, scope: !757)
!829 = !DILocation(line: 278, column: 54, scope: !757)
!830 = !DILocation(line: 278, column: 5, scope: !757)
!831 = !DILocation(line: 279, column: 13, scope: !757)
!832 = !DILocation(line: 279, column: 11, scope: !757)
!833 = !DILocation(line: 280, column: 13, scope: !757)
!834 = !DILocation(line: 280, column: 26, scope: !757)
!835 = !DILocation(line: 281, column: 27, scope: !757)
!836 = !DILocation(line: 281, column: 38, scope: !757)
!837 = !DILocation(line: 282, column: 27, scope: !757)
!838 = !DILocation(line: 283, column: 27, scope: !757)
!839 = !DILocation(line: 285, column: 27, scope: !757)
!840 = !DILocation(line: 287, column: 27, scope: !757)
!841 = !DILocation(line: 287, column: 38, scope: !757)
!842 = !{!420, !228, i64 0}
!843 = !DILocation(line: 290, column: 27, scope: !757)
!844 = !DILocation(line: 281, column: 5, scope: !757)
!845 = !DILocation(line: 291, column: 27, scope: !757)
!846 = !DILocation(line: 291, column: 5, scope: !757)
!847 = !DILocation(line: 292, column: 3, scope: !758)
!848 = !DILocation(line: 292, column: 3, scope: !757)
!849 = !DILocation(line: 293, column: 29, scope: !740)
!850 = !DILocation(line: 293, column: 40, scope: !740)
!851 = !DILocation(line: 293, column: 3, scope: !740)
!852 = !DILocation(line: 294, column: 30, scope: !740)
!853 = !DILocation(line: 294, column: 3, scope: !740)
!854 = !DILocation(line: 295, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !740, file: !2, line: 295, column: 7)
!856 = !DILocation(line: 295, column: 14, scope: !855)
!857 = !DILocation(line: 295, column: 7, scope: !740)
!858 = !DILocation(line: 297, column: 22, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !2, line: 296, column: 3)
!860 = !DILocation(line: 297, column: 5, scope: !859)
!861 = !DILocation(line: 298, column: 3, scope: !859)
!862 = !DILocation(line: 299, column: 10, scope: !740)
!863 = !DILocation(line: 300, column: 1, scope: !740)
!864 = !DILocation(line: 299, column: 3, scope: !740)
!865 = !DISubprogram(name: "gt_chain_chainlength", scope: !179, file: !179, line: 160, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubroutineType(types: !867)
!867 = !{!162, !181}
!868 = !DISubprogram(name: "printf", scope: !869, file: !869, line: 356, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!870 = !DISubroutineType(types: !871)
!871 = !{!358, !872, null}
!872 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !368)
!873 = !DISubprogram(name: "gt_chain_chainscore", scope: !179, file: !179, line: 156, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubroutineType(types: !875)
!875 = !{!224, !181}
!876 = !DISubprogram(name: "gt_chain_storedinreverseorder", scope: !179, file: !179, line: 164, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubroutineType(types: !878)
!878 = !{!204, !181}
!879 = !DISubprogram(name: "gt_chain_extractchainelem", scope: !179, file: !179, line: 168, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !882, !176, !181, !162}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!883 = !DISubprogram(name: "gt_chain_printchainelem", scope: !179, file: !179, line: 175, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !886, !941}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !888, line: 7, baseType: !889)
!888 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !890, line: 49, size: 1728, elements: !891)
!890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!891 = !{!892, !893, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !908, !910, !911, !912, !915, !917, !919, !923, !926, !928, !931, !934, !935, !936, !939, !940}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !889, file: !890, line: 51, baseType: !358, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !889, file: !890, line: 54, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !889, file: !890, line: 55, baseType: !894, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !889, file: !890, line: 56, baseType: !894, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !889, file: !890, line: 57, baseType: !894, size: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !889, file: !890, line: 58, baseType: !894, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !889, file: !890, line: 59, baseType: !894, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !889, file: !890, line: 60, baseType: !894, size: 64, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !889, file: !890, line: 61, baseType: !894, size: 64, offset: 512)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !889, file: !890, line: 64, baseType: !894, size: 64, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !889, file: !890, line: 65, baseType: !894, size: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !889, file: !890, line: 66, baseType: !894, size: 64, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !889, file: !890, line: 68, baseType: !906, size: 64, offset: 768)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !890, line: 36, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !889, file: !890, line: 70, baseType: !909, size: 64, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !889, file: !890, line: 72, baseType: !358, size: 32, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !889, file: !890, line: 73, baseType: !358, size: 32, offset: 928)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !889, file: !890, line: 74, baseType: !913, size: 64, offset: 960)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !914, line: 152, baseType: !226)
!914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !889, file: !890, line: 77, baseType: !916, size: 16, offset: 1024)
!916 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !889, file: !890, line: 78, baseType: !918, size: 8, offset: 1040)
!918 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !889, file: !890, line: 79, baseType: !920, size: 8, offset: 1048)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 1)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !889, file: !890, line: 81, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !890, line: 43, baseType: null)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !889, file: !890, line: 89, baseType: !927, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !914, line: 153, baseType: !226)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !889, file: !890, line: 91, baseType: !929, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !890, line: 37, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !889, file: !890, line: 92, baseType: !932, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !890, line: 38, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !889, file: !890, line: 93, baseType: !909, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !889, file: !890, line: 94, baseType: !165, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !889, file: !890, line: 95, baseType: !937, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !938, line: 70, baseType: !164)
!938 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !889, file: !890, line: 96, baseType: !358, size: 32, offset: 1536)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !889, file: !890, line: 98, baseType: !152, size: 160, offset: 1568)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!943 = !DISubprogram(name: "gt_malloc_mem", scope: !944, file: !944, line: 56, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!945 = !DISubroutineType(types: !946)
!946 = !{!165, !937, !368, !358}
!947 = !DISubprogram(name: "gt_str_delete", scope: !389, file: !389, line: 90, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !387}
!950 = !DISubprogram(name: "gt_str_array_delete", scope: !394, file: !394, line: 56, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !392}
!953 = !DISubprogram(name: "gt_option_delete", scope: !352, file: !352, line: 371, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !398}
!956 = !DISubprogram(name: "gt_free_mem", scope: !944, file: !944, line: 75, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !165, !368, !358}
!959 = !DISubprogram(name: "fprintf", scope: !869, file: !869, line: 350, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubroutineType(types: !961)
!961 = !{!358, !962, !872, null}
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !886)
!963 = !DISubprogram(name: "abort", scope: !964, file: !964, line: 598, type: !965, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!964 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!965 = !DISubroutineType(types: !966)
!966 = !{null}
!967 = !DISubprogram(name: "gt_str_new", scope: !389, file: !389, line: 30, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{!387}
!970 = !DISubprogram(name: "gt_str_array_new", scope: !394, file: !394, line: 27, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{!392}
!973 = !DISubprogram(name: "gt_option_parser_new", scope: !352, file: !352, line: 63, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubroutineType(types: !975)
!975 = !{!350, !368, !368}
!976 = !DISubprogram(name: "gt_option_parser_set_mail_address", scope: !352, file: !352, line: 88, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !350, !368}
!979 = !DISubprogram(name: "gt_option_new_filename", scope: !352, file: !352, line: 309, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DISubroutineType(types: !981)
!981 = !{!398, !368, !368, !387}
!982 = !DISubprogram(name: "gt_option_parser_add_option", scope: !352, file: !352, line: 66, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !350, !398}
!985 = !DISubprogram(name: "gt_option_is_mandatory", scope: !352, file: !352, line: 332, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubprogram(name: "gt_option_new_string_array", scope: !352, file: !352, line: 296, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubroutineType(types: !988)
!988 = !{!398, !368, !368, !392}
!989 = !DISubprogram(name: "gt_option_argument_is_optional", scope: !352, file: !352, line: 367, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubprogram(name: "gt_option_ref", scope: !352, file: !352, line: 328, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!398, !398}
!993 = !DISubprogram(name: "gt_option_exclude", scope: !352, file: !352, line: 363, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !398, !398}
!996 = !DISubprogram(name: "gt_option_new_double", scope: !352, file: !352, line: 135, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!398, !368, !368, !999, !384}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1000 = !DISubprogram(name: "gt_option_new_uword", scope: !352, file: !352, line: 227, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!398, !368, !368, !1003, !162}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1004 = !DISubprogram(name: "gt_option_new_bool", scope: !352, file: !352, line: 130, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!398, !368, !368, !1007, !204}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1008 = !DISubprogram(name: "gt_option_new_verbose", scope: !352, file: !352, line: 322, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!398, !1007}
!1011 = !DISubprogram(name: "gt_option_is_set", scope: !352, file: !352, line: 369, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!204, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!1016 = !DISubprogram(name: "gt_error_set", scope: !361, file: !361, line: 56, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !359, !368, null}
!1019 = !DISubprogram(name: "gt_str_array_size", scope: !394, file: !394, line: 54, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!162, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!1024 = !DISubprogram(name: "gt_str_array_get", scope: !394, file: !394, line: 40, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!368, !1022, !162}
!1027 = !DISubprogram(name: "gt_chain_chainmode_new", scope: !179, file: !179, line: 123, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!405, !162, !204, !368, !204, !368, !359}
!1030 = !DISubprogram(name: "gt_error_is_set", scope: !361, file: !361, line: 64, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!204, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!1035 = !DISubprogram(name: "gt_chain_analyzeopenformatfile", scope: !179, file: !179, line: 101, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!749, !384, !368, !359}
!1038 = !DISubprogram(name: "gt_str_get", scope: !389, file: !389, line: 40, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!894, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!1043 = !DISubprogram(name: "gt_logger_new", scope: !754, file: !754, line: 32, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!752, !204, !368, !886}
!1046 = !DISubprogram(name: "gt_chain_possiblysortmatches", scope: !179, file: !179, line: 116, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !752, !749, !759}
!1049 = !DISubprogram(name: "gt_chain_chain_new", scope: !179, file: !179, line: 136, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!761}
!1052 = !DISubprogram(name: "gt_chain_fastchaining", scope: !179, file: !179, line: 144, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1055, !761, !749, !204, !759, !204, !1057, !165, !752}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtChain2Dimprocessor", file: !179, line: 73, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1059 = !DISubprogram(name: "gt_chain_chain_delete", scope: !179, file: !179, line: 140, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !761}
!1062 = !DISubprogram(name: "gt_chain_chainmode_delete", scope: !179, file: !179, line: 132, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !405}
!1065 = !DISubprogram(name: "gt_chain_matchtable_delete", scope: !179, file: !179, line: 87, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !749}
!1068 = !DISubprogram(name: "gt_logger_delete", scope: !754, file: !754, line: 54, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !752}
