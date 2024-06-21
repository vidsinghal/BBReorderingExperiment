; ModuleID = 'samples/75.bc'
source_filename = "gtools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.sparsegraph = type { i64, ptr, i32, ptr, ptr, ptr, i64, i64, i64, i64 }

@is_pipe = global i32 0, align 4
@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c">E opengraphfile: can't open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c">E opengraphfile: illegal header in %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c">E opengraphfile: planar_code files can only be opened at the start\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c">E opengraphfile: edge_code files can only be opened at the start\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c">E opengraphfile: can't find line %ld in %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c">E opengraphfile: error on first ftell\0A\00", align 1
@ogf_linelen = global i64 0, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c">E opengraphfile: required record no present\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c">E opengraphfile: error on second ftell\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c">E opengraphfile: seek failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c">E writeline : error on writing\0A\00", align 1
@gtools_getline.s = internal global ptr null, align 8
@gtools_getline.s_sz = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"gtools_getline\00", align 1
@getecline.s = internal global ptr null, align 8
@getecline.s_sz = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c">E Incomplete edge_code line\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"getecline\00", align 1
@bytecount = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 5, i32 6, i32 6, i32 7, i32 6, i32 7, i32 7, i32 8], align 16
@.str.15 = private unnamed_addr constant [38 x i8] c">E stringtograph: impossible m value\0A\00", align 1
@bit = internal constant [32 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16
@.str.16 = private unnamed_addr constant [42 x i8] c">E stringtograph_inc missing prior graph\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c">E stringtograph_inc: impossible m value\0A\00", align 1
@readg_line = global ptr null, align 8
@readg_code = global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c">E readgg: missing newline\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c">E readgg: illegal character\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c">E readgg: truncated graph6 line\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c">E readgg: truncated digraph6 line\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c">E readgg: reqm too small\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c">E readgg: malloc failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c">E readg() doesn't all digraphs; use readgg()\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c">E readg_inc: missing newline\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c">E readg_inc: illegal character\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c">E readg_inc: missing prior\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c">E readg_inc: truncated graph6 line\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c">E readg_inc: truncated digraph6 line\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c">E readg_inc: reqm too small\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c">E readg_inc: malloc failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c">E readg_inc() doesn't all digraphs; use readgg_inc()\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"stringtosparsegraph\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c">E read_sg: missing newline\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c">E read_sg: illegal character\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c">E read_sg: truncated graph6 line\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c">E read_sg: truncated digraph6 line\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c">E read_sg: malloc failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [64 x i8] c">E read_sg_loops() can't handle digraphs, use read_sgg_loops()\0A\00", align 1
@.str.40 = private unnamed_addr constant [58 x i8] c">E read_sg() can't handle digraphs, use read_sgg_loops()\0A\00", align 1
@gcode_sz = internal global i64 0, align 8
@gcode = internal global ptr null, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"ntod6\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"ntog6\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"ntos6\00", align 1
@s6len = global i64 0, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"ntois6\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"sgtos6\00", align 1
@sgtog6.g6bit = internal global [6 x i8] c" \10\08\04\02\01", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"sgtog6\00", align 1
@sgtod6.g6bit = internal global [6 x i8] c" \10\08\04\02\01", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c">E writes6 : error on writing\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c">E writeis6 : error on writing\0A\00", align 1
@buff_sz = internal global i64 0, align 8
@buff = internal global ptr null, align 8
@.str.49 = private unnamed_addr constant [11 x i8] c"writepc_sg\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c">E writepc_sg : error on writing\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c">E readpc_sg : error 1 on reading\0A\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c">E readpc_sg : error 2 on reading\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c">E readpc_sg : error 3 on reading\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c">E readpc_sg: malloc failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"readpc_sg\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c">E readpc_sg : error 4 on reading\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c">E readpc_sg : error 5 on reading\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c">E readpcle_sg : error 1 on reading\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c">E readpcle_sg : error 2 on reading\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c">E readpcle_sg : error 3 on reading\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c">E readpcle_sg: malloc failed\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"readpcle_sg\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c">E readpcle_sg : error 4 on reading\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c">E readpcle_sg : error 5 on reading\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c">E %s: missing argument value\0A\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c">E %s: argument value too large\0A\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c">E %s: bad range\0A\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c">E %s: value too big\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c">E %s: missing value\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c">E %s: illegal range\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c">E %s: illegal value\0A\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c">E %s: value missing\0A\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c">E %s: too many values\0A\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c">E gtools\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c">E stringcopy: malloc failed\0A\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"Error: WORDSIZE mismatch in gtools.c\0A\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"Error: MAXM inadequate in gtools.c\0A\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"Error: MAXN inadequate in gtools.c\0A\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"Error: gtools.c version mismatch\0A\00", align 1
@leftbit = internal constant <{ [128 x i32], [128 x i32] }> <{ [128 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [128 x i32] zeroinitializer }>, align 16

; Function Attrs: nounwind uwtable
define ptr @opengraphfile(ptr noundef %filename, ptr noundef %codetype, i32 noundef %assumefixed, i64 noundef %position) #0 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %codetype.addr = alloca ptr, align 8
  %assumefixed.addr = alloca i32, align 4
  %position.addr = alloca i64, align 8
  %f = alloca ptr, align 8
  %c = alloca i32, align 4
  %bl = alloca i32, align 4
  %firstc = alloca i32, align 4
  %i = alloca i64, align 8
  %l = alloca i64, align 8
  %pos = alloca i64, align 8
  %pos1 = alloca i64, align 8
  %pos2 = alloca i64, align 8
  %bad_header = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store ptr %codetype, ptr %codetype.addr, align 8, !tbaa !4
  store i32 %assumefixed, ptr %assumefixed.addr, align 4, !tbaa !8
  store i64 %position, ptr %position.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bl) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstc) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bad_header) #12
  store i32 0, ptr @is_pipe, align 4, !tbaa !8
  %0 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stdin, align 8, !tbaa !4
  store ptr %1, ptr %f, align 8, !tbaa !4
  store i32 0, ptr %assumefixed.addr, align 4, !tbaa !8
  br label %if.end28

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 99
  br i1 %cmp1, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx3, align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 109
  br i1 %cmp5, label %land.lhs.true7, label %if.else21

land.lhs.true7:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load i8, ptr %arrayidx8, align 1, !tbaa !12
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 100
  br i1 %cmp10, label %land.lhs.true12, label %if.else21

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i8, ptr %8, i64 3
  %9 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 58
  br i1 %cmp15, label %if.then17, label %if.else21

if.then17:                                        ; preds = %land.lhs.true12
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 4
  store ptr %add.ptr, ptr %filename.addr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %11 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %12 = load i8, ptr %11, align 1, !tbaa !12
  %conv18 = sext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 32
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %filename.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call = call noalias ptr @popen(ptr noundef %14, ptr noundef @.str)
  store ptr %call, ptr %f, align 8, !tbaa !4
  store i32 0, ptr %assumefixed.addr, align 4, !tbaa !8
  store i32 1, ptr @is_pipe, align 4, !tbaa !8
  br label %if.end

if.else21:                                        ; preds = %land.lhs.true12, %land.lhs.true7, %land.lhs.true, %if.else
  %15 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call22 = call noalias ptr @fopen(ptr noundef %15, ptr noundef @.str)
  store ptr %call22, ptr %f, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else21, %while.end
  %16 = load ptr, ptr %f, align 8, !tbaa !4
  %cmp23 = icmp eq ptr %16, null
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end
  %17 = load ptr, ptr @stderr, align 8, !tbaa !4
  %18 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.1, ptr noundef %18)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  %19 = load ptr, ptr %f, align 8, !tbaa !4
  call void @flockfile(ptr noundef %19) #12
  %20 = load ptr, ptr %f, align 8, !tbaa !4
  %call29 = call i32 @getc_unlocked(ptr noundef %20)
  store i32 %call29, ptr %c, align 4, !tbaa !8
  store i32 %call29, ptr %firstc, align 4, !tbaa !8
  %21 = load i32, ptr %c, align 4, !tbaa !8
  %cmp30 = icmp eq i32 %21, -1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %22 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 1, ptr %22, align 4, !tbaa !8
  %23 = load ptr, ptr %f, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %23) #12
  %24 = load ptr, ptr %f, align 8, !tbaa !4
  store ptr %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %25 = load i32, ptr %c, align 4, !tbaa !8
  %cmp34 = icmp ne i32 %25, 62
  br i1 %cmp34, label %if.then36, label %if.else43

if.then36:                                        ; preds = %if.end33
  %26 = load i32, ptr %firstc, align 4, !tbaa !8
  %cmp37 = icmp eq i32 %26, 58
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then36
  br label %cond.end

cond.false:                                       ; preds = %if.then36
  %27 = load i32, ptr %firstc, align 4, !tbaa !8
  %cmp39 = icmp eq i32 %27, 38
  %28 = zext i1 %cmp39 to i64
  %cond = select i1 %cmp39, i32 128, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond41 = phi i32 [ 2, %cond.true ], [ %cond, %cond.false ]
  %29 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 %cond41, ptr %29, align 4, !tbaa !8
  %30 = load i32, ptr %c, align 4, !tbaa !8
  %31 = load ptr, ptr %f, align 8, !tbaa !4
  %call42 = call i32 @ungetc(i32 noundef %30, ptr noundef %31)
  br label %if.end491

if.else43:                                        ; preds = %if.end33
  store i32 0, ptr %bad_header, align 4, !tbaa !8
  %32 = load ptr, ptr %f, align 8, !tbaa !4
  %call44 = call i32 @getc_unlocked(ptr noundef %32)
  store i32 %call44, ptr %c, align 4, !tbaa !8
  %cmp45 = icmp eq i32 %call44, -1
  br i1 %cmp45, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else43
  %33 = load i32, ptr %c, align 4, !tbaa !8
  %cmp47 = icmp ne i32 %33, 62
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false, %if.else43
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %lor.lhs.false
  %34 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.end65, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end50
  %35 = load ptr, ptr %f, align 8, !tbaa !4
  %call52 = call i32 @getc_unlocked(ptr noundef %35)
  store i32 %call52, ptr %c, align 4, !tbaa !8
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %if.then64, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %land.lhs.true51
  %36 = load i32, ptr %c, align 4, !tbaa !8
  %cmp56 = icmp ne i32 %36, 103
  br i1 %cmp56, label %land.lhs.true58, label %if.end65

land.lhs.true58:                                  ; preds = %lor.lhs.false55
  %37 = load i32, ptr %c, align 4, !tbaa !8
  %cmp59 = icmp ne i32 %37, 115
  br i1 %cmp59, label %land.lhs.true61, label %if.end65

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %38 = load i32, ptr %c, align 4, !tbaa !8
  %cmp62 = icmp ne i32 %38, 112
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true61, %land.lhs.true51
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true61, %land.lhs.true58, %lor.lhs.false55, %if.end50
  %39 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool66 = icmp ne i32 %39, 0
  br i1 %tobool66, label %if.else122, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.end65
  %40 = load i32, ptr %c, align 4, !tbaa !8
  %cmp68 = icmp eq i32 %40, 103
  br i1 %cmp68, label %if.then70, label %if.else122

if.then70:                                        ; preds = %land.lhs.true67
  %41 = load ptr, ptr %f, align 8, !tbaa !4
  %call71 = call i32 @getc_unlocked(ptr noundef %41)
  store i32 %call71, ptr %c, align 4, !tbaa !8
  %cmp72 = icmp eq i32 %call71, -1
  br i1 %cmp72, label %if.then119, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.then70
  %42 = load i32, ptr %c, align 4, !tbaa !8
  %cmp75 = icmp ne i32 %42, 114
  br i1 %cmp75, label %if.then119, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %43 = load ptr, ptr %f, align 8, !tbaa !4
  %call78 = call i32 @getc_unlocked(ptr noundef %43)
  store i32 %call78, ptr %c, align 4, !tbaa !8
  %cmp79 = icmp eq i32 %call78, -1
  br i1 %cmp79, label %if.then119, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %44 = load i32, ptr %c, align 4, !tbaa !8
  %cmp82 = icmp ne i32 %44, 97
  br i1 %cmp82, label %if.then119, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %45 = load ptr, ptr %f, align 8, !tbaa !4
  %call85 = call i32 @getc_unlocked(ptr noundef %45)
  store i32 %call85, ptr %c, align 4, !tbaa !8
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then119, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %46 = load i32, ptr %c, align 4, !tbaa !8
  %cmp89 = icmp ne i32 %46, 112
  br i1 %cmp89, label %if.then119, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %47 = load ptr, ptr %f, align 8, !tbaa !4
  %call92 = call i32 @getc_unlocked(ptr noundef %47)
  store i32 %call92, ptr %c, align 4, !tbaa !8
  %cmp93 = icmp eq i32 %call92, -1
  br i1 %cmp93, label %if.then119, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false91
  %48 = load i32, ptr %c, align 4, !tbaa !8
  %cmp96 = icmp ne i32 %48, 104
  br i1 %cmp96, label %if.then119, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %49 = load ptr, ptr %f, align 8, !tbaa !4
  %call99 = call i32 @getc_unlocked(ptr noundef %49)
  store i32 %call99, ptr %c, align 4, !tbaa !8
  %cmp100 = icmp eq i32 %call99, -1
  br i1 %cmp100, label %if.then119, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false98
  %50 = load i32, ptr %c, align 4, !tbaa !8
  %cmp103 = icmp ne i32 %50, 54
  br i1 %cmp103, label %if.then119, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false102
  %51 = load ptr, ptr %f, align 8, !tbaa !4
  %call106 = call i32 @getc_unlocked(ptr noundef %51)
  store i32 %call106, ptr %c, align 4, !tbaa !8
  %cmp107 = icmp eq i32 %call106, -1
  br i1 %cmp107, label %if.then119, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false105
  %52 = load i32, ptr %c, align 4, !tbaa !8
  %cmp110 = icmp ne i32 %52, 60
  br i1 %cmp110, label %if.then119, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false109
  %53 = load ptr, ptr %f, align 8, !tbaa !4
  %call113 = call i32 @getc_unlocked(ptr noundef %53)
  store i32 %call113, ptr %c, align 4, !tbaa !8
  %cmp114 = icmp eq i32 %call113, -1
  br i1 %cmp114, label %if.then119, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %54 = load i32, ptr %c, align 4, !tbaa !8
  %cmp117 = icmp ne i32 %54, 60
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %lor.lhs.false116, %lor.lhs.false112, %lor.lhs.false109, %lor.lhs.false105, %lor.lhs.false102, %lor.lhs.false98, %lor.lhs.false95, %lor.lhs.false91, %lor.lhs.false88, %lor.lhs.false84, %lor.lhs.false81, %lor.lhs.false77, %lor.lhs.false74, %if.then70
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end121

if.else120:                                       ; preds = %lor.lhs.false116
  %55 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 513, ptr %55, align 4, !tbaa !8
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.then119
  br label %if.end480

if.else122:                                       ; preds = %land.lhs.true67, %if.end65
  %56 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool123 = icmp ne i32 %56, 0
  br i1 %tobool123, label %if.else193, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %if.else122
  %57 = load i32, ptr %c, align 4, !tbaa !8
  %cmp125 = icmp eq i32 %57, 100
  br i1 %cmp125, label %if.then127, label %if.else193

if.then127:                                       ; preds = %land.lhs.true124
  %58 = load ptr, ptr %f, align 8, !tbaa !4
  %call128 = call i32 @getc_unlocked(ptr noundef %58)
  store i32 %call128, ptr %c, align 4, !tbaa !8
  %cmp129 = icmp eq i32 %call128, -1
  br i1 %cmp129, label %if.then190, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %if.then127
  %59 = load i32, ptr %c, align 4, !tbaa !8
  %cmp132 = icmp ne i32 %59, 105
  br i1 %cmp132, label %if.then190, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false131
  %60 = load ptr, ptr %f, align 8, !tbaa !4
  %call135 = call i32 @getc_unlocked(ptr noundef %60)
  store i32 %call135, ptr %c, align 4, !tbaa !8
  %cmp136 = icmp eq i32 %call135, -1
  br i1 %cmp136, label %if.then190, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false134
  %61 = load i32, ptr %c, align 4, !tbaa !8
  %cmp139 = icmp ne i32 %61, 103
  br i1 %cmp139, label %if.then190, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false138
  %62 = load ptr, ptr %f, align 8, !tbaa !4
  %call142 = call i32 @getc_unlocked(ptr noundef %62)
  store i32 %call142, ptr %c, align 4, !tbaa !8
  %cmp143 = icmp eq i32 %call142, -1
  br i1 %cmp143, label %if.then190, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %lor.lhs.false141
  %63 = load i32, ptr %c, align 4, !tbaa !8
  %cmp146 = icmp ne i32 %63, 114
  br i1 %cmp146, label %if.then190, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false145
  %64 = load ptr, ptr %f, align 8, !tbaa !4
  %call149 = call i32 @getc_unlocked(ptr noundef %64)
  store i32 %call149, ptr %c, align 4, !tbaa !8
  %cmp150 = icmp eq i32 %call149, -1
  br i1 %cmp150, label %if.then190, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false148
  %65 = load i32, ptr %c, align 4, !tbaa !8
  %cmp153 = icmp ne i32 %65, 97
  br i1 %cmp153, label %if.then190, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false152
  %66 = load ptr, ptr %f, align 8, !tbaa !4
  %call156 = call i32 @getc_unlocked(ptr noundef %66)
  store i32 %call156, ptr %c, align 4, !tbaa !8
  %cmp157 = icmp eq i32 %call156, -1
  br i1 %cmp157, label %if.then190, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false155
  %67 = load i32, ptr %c, align 4, !tbaa !8
  %cmp160 = icmp ne i32 %67, 112
  br i1 %cmp160, label %if.then190, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false159
  %68 = load ptr, ptr %f, align 8, !tbaa !4
  %call163 = call i32 @getc_unlocked(ptr noundef %68)
  store i32 %call163, ptr %c, align 4, !tbaa !8
  %cmp164 = icmp eq i32 %call163, -1
  br i1 %cmp164, label %if.then190, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false162
  %69 = load i32, ptr %c, align 4, !tbaa !8
  %cmp167 = icmp ne i32 %69, 104
  br i1 %cmp167, label %if.then190, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false166
  %70 = load ptr, ptr %f, align 8, !tbaa !4
  %call170 = call i32 @getc_unlocked(ptr noundef %70)
  store i32 %call170, ptr %c, align 4, !tbaa !8
  %cmp171 = icmp eq i32 %call170, -1
  br i1 %cmp171, label %if.then190, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false169
  %71 = load i32, ptr %c, align 4, !tbaa !8
  %cmp174 = icmp ne i32 %71, 54
  br i1 %cmp174, label %if.then190, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false173
  %72 = load ptr, ptr %f, align 8, !tbaa !4
  %call177 = call i32 @getc_unlocked(ptr noundef %72)
  store i32 %call177, ptr %c, align 4, !tbaa !8
  %cmp178 = icmp eq i32 %call177, -1
  br i1 %cmp178, label %if.then190, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %lor.lhs.false176
  %73 = load i32, ptr %c, align 4, !tbaa !8
  %cmp181 = icmp ne i32 %73, 60
  br i1 %cmp181, label %if.then190, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false180
  %74 = load ptr, ptr %f, align 8, !tbaa !4
  %call184 = call i32 @getc_unlocked(ptr noundef %74)
  store i32 %call184, ptr %c, align 4, !tbaa !8
  %cmp185 = icmp eq i32 %call184, -1
  br i1 %cmp185, label %if.then190, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %lor.lhs.false183
  %75 = load i32, ptr %c, align 4, !tbaa !8
  %cmp188 = icmp ne i32 %75, 60
  br i1 %cmp188, label %if.then190, label %if.else191

if.then190:                                       ; preds = %lor.lhs.false187, %lor.lhs.false183, %lor.lhs.false180, %lor.lhs.false176, %lor.lhs.false173, %lor.lhs.false169, %lor.lhs.false166, %lor.lhs.false162, %lor.lhs.false159, %lor.lhs.false155, %lor.lhs.false152, %lor.lhs.false148, %lor.lhs.false145, %lor.lhs.false141, %lor.lhs.false138, %lor.lhs.false134, %lor.lhs.false131, %if.then127
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end192

if.else191:                                       ; preds = %lor.lhs.false187
  %76 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 640, ptr %76, align 4, !tbaa !8
  br label %if.end192

if.end192:                                        ; preds = %if.else191, %if.then190
  br label %if.end479

if.else193:                                       ; preds = %land.lhs.true124, %if.else122
  %77 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool194 = icmp ne i32 %77, 0
  br i1 %tobool194, label %if.else271, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %if.else193
  %78 = load i32, ptr %c, align 4, !tbaa !8
  %cmp196 = icmp eq i32 %78, 101
  br i1 %cmp196, label %if.then198, label %if.else271

if.then198:                                       ; preds = %land.lhs.true195
  %79 = load ptr, ptr %f, align 8, !tbaa !4
  %call199 = call i32 @getc_unlocked(ptr noundef %79)
  store i32 %call199, ptr %c, align 4, !tbaa !8
  %cmp200 = icmp eq i32 %call199, -1
  br i1 %cmp200, label %if.then268, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %if.then198
  %80 = load i32, ptr %c, align 4, !tbaa !8
  %cmp203 = icmp ne i32 %80, 100
  br i1 %cmp203, label %if.then268, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %lor.lhs.false202
  %81 = load ptr, ptr %f, align 8, !tbaa !4
  %call206 = call i32 @getc_unlocked(ptr noundef %81)
  store i32 %call206, ptr %c, align 4, !tbaa !8
  %cmp207 = icmp eq i32 %call206, -1
  br i1 %cmp207, label %if.then268, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %lor.lhs.false205
  %82 = load i32, ptr %c, align 4, !tbaa !8
  %cmp210 = icmp ne i32 %82, 103
  br i1 %cmp210, label %if.then268, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %lor.lhs.false209
  %83 = load ptr, ptr %f, align 8, !tbaa !4
  %call213 = call i32 @getc_unlocked(ptr noundef %83)
  store i32 %call213, ptr %c, align 4, !tbaa !8
  %cmp214 = icmp eq i32 %call213, -1
  br i1 %cmp214, label %if.then268, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %lor.lhs.false212
  %84 = load i32, ptr %c, align 4, !tbaa !8
  %cmp217 = icmp ne i32 %84, 101
  br i1 %cmp217, label %if.then268, label %lor.lhs.false219

lor.lhs.false219:                                 ; preds = %lor.lhs.false216
  %85 = load ptr, ptr %f, align 8, !tbaa !4
  %call220 = call i32 @getc_unlocked(ptr noundef %85)
  store i32 %call220, ptr %c, align 4, !tbaa !8
  %cmp221 = icmp eq i32 %call220, -1
  br i1 %cmp221, label %if.then268, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false219
  %86 = load i32, ptr %c, align 4, !tbaa !8
  %cmp224 = icmp ne i32 %86, 95
  br i1 %cmp224, label %if.then268, label %lor.lhs.false226

lor.lhs.false226:                                 ; preds = %lor.lhs.false223
  %87 = load ptr, ptr %f, align 8, !tbaa !4
  %call227 = call i32 @getc_unlocked(ptr noundef %87)
  store i32 %call227, ptr %c, align 4, !tbaa !8
  %cmp228 = icmp eq i32 %call227, -1
  br i1 %cmp228, label %if.then268, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false226
  %88 = load i32, ptr %c, align 4, !tbaa !8
  %cmp231 = icmp ne i32 %88, 99
  br i1 %cmp231, label %if.then268, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %lor.lhs.false230
  %89 = load ptr, ptr %f, align 8, !tbaa !4
  %call234 = call i32 @getc_unlocked(ptr noundef %89)
  store i32 %call234, ptr %c, align 4, !tbaa !8
  %cmp235 = icmp eq i32 %call234, -1
  br i1 %cmp235, label %if.then268, label %lor.lhs.false237

lor.lhs.false237:                                 ; preds = %lor.lhs.false233
  %90 = load i32, ptr %c, align 4, !tbaa !8
  %cmp238 = icmp ne i32 %90, 111
  br i1 %cmp238, label %if.then268, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %lor.lhs.false237
  %91 = load ptr, ptr %f, align 8, !tbaa !4
  %call241 = call i32 @getc_unlocked(ptr noundef %91)
  store i32 %call241, ptr %c, align 4, !tbaa !8
  %cmp242 = icmp eq i32 %call241, -1
  br i1 %cmp242, label %if.then268, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %lor.lhs.false240
  %92 = load i32, ptr %c, align 4, !tbaa !8
  %cmp245 = icmp ne i32 %92, 100
  br i1 %cmp245, label %if.then268, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %lor.lhs.false244
  %93 = load ptr, ptr %f, align 8, !tbaa !4
  %call248 = call i32 @getc_unlocked(ptr noundef %93)
  store i32 %call248, ptr %c, align 4, !tbaa !8
  %cmp249 = icmp eq i32 %call248, -1
  br i1 %cmp249, label %if.then268, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %lor.lhs.false247
  %94 = load i32, ptr %c, align 4, !tbaa !8
  %cmp252 = icmp ne i32 %94, 101
  br i1 %cmp252, label %if.then268, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %lor.lhs.false251
  %95 = load ptr, ptr %f, align 8, !tbaa !4
  %call255 = call i32 @getc_unlocked(ptr noundef %95)
  store i32 %call255, ptr %c, align 4, !tbaa !8
  %cmp256 = icmp eq i32 %call255, -1
  br i1 %cmp256, label %if.then268, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %lor.lhs.false254
  %96 = load i32, ptr %c, align 4, !tbaa !8
  %cmp259 = icmp ne i32 %96, 60
  br i1 %cmp259, label %if.then268, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %lor.lhs.false258
  %97 = load ptr, ptr %f, align 8, !tbaa !4
  %call262 = call i32 @getc_unlocked(ptr noundef %97)
  store i32 %call262, ptr %c, align 4, !tbaa !8
  %cmp263 = icmp eq i32 %call262, -1
  br i1 %cmp263, label %if.then268, label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %lor.lhs.false261
  %98 = load i32, ptr %c, align 4, !tbaa !8
  %cmp266 = icmp ne i32 %98, 60
  br i1 %cmp266, label %if.then268, label %if.else269

if.then268:                                       ; preds = %lor.lhs.false265, %lor.lhs.false261, %lor.lhs.false258, %lor.lhs.false254, %lor.lhs.false251, %lor.lhs.false247, %lor.lhs.false244, %lor.lhs.false240, %lor.lhs.false237, %lor.lhs.false233, %lor.lhs.false230, %lor.lhs.false226, %lor.lhs.false223, %lor.lhs.false219, %lor.lhs.false216, %lor.lhs.false212, %lor.lhs.false209, %lor.lhs.false205, %lor.lhs.false202, %if.then198
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end270

if.else269:                                       ; preds = %lor.lhs.false265
  %99 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 544, ptr %99, align 4, !tbaa !8
  br label %if.end270

if.end270:                                        ; preds = %if.else269, %if.then268
  br label %if.end478

if.else271:                                       ; preds = %land.lhs.true195, %if.else193
  %100 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool272 = icmp ne i32 %100, 0
  br i1 %tobool272, label %if.else335, label %land.lhs.true273

land.lhs.true273:                                 ; preds = %if.else271
  %101 = load i32, ptr %c, align 4, !tbaa !8
  %cmp274 = icmp eq i32 %101, 115
  br i1 %cmp274, label %if.then276, label %if.else335

if.then276:                                       ; preds = %land.lhs.true273
  %102 = load ptr, ptr %f, align 8, !tbaa !4
  %call277 = call i32 @getc_unlocked(ptr noundef %102)
  store i32 %call277, ptr %c, align 4, !tbaa !8
  %cmp278 = icmp eq i32 %call277, -1
  br i1 %cmp278, label %if.then332, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %if.then276
  %103 = load i32, ptr %c, align 4, !tbaa !8
  %cmp281 = icmp ne i32 %103, 112
  br i1 %cmp281, label %if.then332, label %lor.lhs.false283

lor.lhs.false283:                                 ; preds = %lor.lhs.false280
  %104 = load ptr, ptr %f, align 8, !tbaa !4
  %call284 = call i32 @getc_unlocked(ptr noundef %104)
  store i32 %call284, ptr %c, align 4, !tbaa !8
  %cmp285 = icmp eq i32 %call284, -1
  br i1 %cmp285, label %if.then332, label %lor.lhs.false287

lor.lhs.false287:                                 ; preds = %lor.lhs.false283
  %105 = load i32, ptr %c, align 4, !tbaa !8
  %cmp288 = icmp ne i32 %105, 97
  br i1 %cmp288, label %if.then332, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %lor.lhs.false287
  %106 = load ptr, ptr %f, align 8, !tbaa !4
  %call291 = call i32 @getc_unlocked(ptr noundef %106)
  store i32 %call291, ptr %c, align 4, !tbaa !8
  %cmp292 = icmp eq i32 %call291, -1
  br i1 %cmp292, label %if.then332, label %lor.lhs.false294

lor.lhs.false294:                                 ; preds = %lor.lhs.false290
  %107 = load i32, ptr %c, align 4, !tbaa !8
  %cmp295 = icmp ne i32 %107, 114
  br i1 %cmp295, label %if.then332, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %lor.lhs.false294
  %108 = load ptr, ptr %f, align 8, !tbaa !4
  %call298 = call i32 @getc_unlocked(ptr noundef %108)
  store i32 %call298, ptr %c, align 4, !tbaa !8
  %cmp299 = icmp eq i32 %call298, -1
  br i1 %cmp299, label %if.then332, label %lor.lhs.false301

lor.lhs.false301:                                 ; preds = %lor.lhs.false297
  %109 = load i32, ptr %c, align 4, !tbaa !8
  %cmp302 = icmp ne i32 %109, 115
  br i1 %cmp302, label %if.then332, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %lor.lhs.false301
  %110 = load ptr, ptr %f, align 8, !tbaa !4
  %call305 = call i32 @getc_unlocked(ptr noundef %110)
  store i32 %call305, ptr %c, align 4, !tbaa !8
  %cmp306 = icmp eq i32 %call305, -1
  br i1 %cmp306, label %if.then332, label %lor.lhs.false308

lor.lhs.false308:                                 ; preds = %lor.lhs.false304
  %111 = load i32, ptr %c, align 4, !tbaa !8
  %cmp309 = icmp ne i32 %111, 101
  br i1 %cmp309, label %if.then332, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %lor.lhs.false308
  %112 = load ptr, ptr %f, align 8, !tbaa !4
  %call312 = call i32 @getc_unlocked(ptr noundef %112)
  store i32 %call312, ptr %c, align 4, !tbaa !8
  %cmp313 = icmp eq i32 %call312, -1
  br i1 %cmp313, label %if.then332, label %lor.lhs.false315

lor.lhs.false315:                                 ; preds = %lor.lhs.false311
  %113 = load i32, ptr %c, align 4, !tbaa !8
  %cmp316 = icmp ne i32 %113, 54
  br i1 %cmp316, label %if.then332, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %lor.lhs.false315
  %114 = load ptr, ptr %f, align 8, !tbaa !4
  %call319 = call i32 @getc_unlocked(ptr noundef %114)
  store i32 %call319, ptr %c, align 4, !tbaa !8
  %cmp320 = icmp eq i32 %call319, -1
  br i1 %cmp320, label %if.then332, label %lor.lhs.false322

lor.lhs.false322:                                 ; preds = %lor.lhs.false318
  %115 = load i32, ptr %c, align 4, !tbaa !8
  %cmp323 = icmp ne i32 %115, 60
  br i1 %cmp323, label %if.then332, label %lor.lhs.false325

lor.lhs.false325:                                 ; preds = %lor.lhs.false322
  %116 = load ptr, ptr %f, align 8, !tbaa !4
  %call326 = call i32 @getc_unlocked(ptr noundef %116)
  store i32 %call326, ptr %c, align 4, !tbaa !8
  %cmp327 = icmp eq i32 %call326, -1
  br i1 %cmp327, label %if.then332, label %lor.lhs.false329

lor.lhs.false329:                                 ; preds = %lor.lhs.false325
  %117 = load i32, ptr %c, align 4, !tbaa !8
  %cmp330 = icmp ne i32 %117, 60
  br i1 %cmp330, label %if.then332, label %if.else333

if.then332:                                       ; preds = %lor.lhs.false329, %lor.lhs.false325, %lor.lhs.false322, %lor.lhs.false318, %lor.lhs.false315, %lor.lhs.false311, %lor.lhs.false308, %lor.lhs.false304, %lor.lhs.false301, %lor.lhs.false297, %lor.lhs.false294, %lor.lhs.false290, %lor.lhs.false287, %lor.lhs.false283, %lor.lhs.false280, %if.then276
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end334

if.else333:                                       ; preds = %lor.lhs.false329
  %118 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 514, ptr %118, align 4, !tbaa !8
  br label %if.end334

if.end334:                                        ; preds = %if.else333, %if.then332
  br label %if.end477

if.else335:                                       ; preds = %land.lhs.true273, %if.else271
  %119 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool336 = icmp ne i32 %119, 0
  br i1 %tobool336, label %if.end476, label %land.lhs.true337

land.lhs.true337:                                 ; preds = %if.else335
  %120 = load i32, ptr %c, align 4, !tbaa !8
  %cmp338 = icmp eq i32 %120, 112
  br i1 %cmp338, label %if.then340, label %if.end476

if.then340:                                       ; preds = %land.lhs.true337
  %121 = load ptr, ptr %f, align 8, !tbaa !4
  %call341 = call i32 @getc_unlocked(ptr noundef %121)
  store i32 %call341, ptr %c, align 4, !tbaa !8
  %cmp342 = icmp eq i32 %call341, -1
  br i1 %cmp342, label %if.then410, label %lor.lhs.false344

lor.lhs.false344:                                 ; preds = %if.then340
  %122 = load i32, ptr %c, align 4, !tbaa !8
  %cmp345 = icmp ne i32 %122, 108
  br i1 %cmp345, label %if.then410, label %lor.lhs.false347

lor.lhs.false347:                                 ; preds = %lor.lhs.false344
  %123 = load ptr, ptr %f, align 8, !tbaa !4
  %call348 = call i32 @getc_unlocked(ptr noundef %123)
  store i32 %call348, ptr %c, align 4, !tbaa !8
  %cmp349 = icmp eq i32 %call348, -1
  br i1 %cmp349, label %if.then410, label %lor.lhs.false351

lor.lhs.false351:                                 ; preds = %lor.lhs.false347
  %124 = load i32, ptr %c, align 4, !tbaa !8
  %cmp352 = icmp ne i32 %124, 97
  br i1 %cmp352, label %if.then410, label %lor.lhs.false354

lor.lhs.false354:                                 ; preds = %lor.lhs.false351
  %125 = load ptr, ptr %f, align 8, !tbaa !4
  %call355 = call i32 @getc_unlocked(ptr noundef %125)
  store i32 %call355, ptr %c, align 4, !tbaa !8
  %cmp356 = icmp eq i32 %call355, -1
  br i1 %cmp356, label %if.then410, label %lor.lhs.false358

lor.lhs.false358:                                 ; preds = %lor.lhs.false354
  %126 = load i32, ptr %c, align 4, !tbaa !8
  %cmp359 = icmp ne i32 %126, 110
  br i1 %cmp359, label %if.then410, label %lor.lhs.false361

lor.lhs.false361:                                 ; preds = %lor.lhs.false358
  %127 = load ptr, ptr %f, align 8, !tbaa !4
  %call362 = call i32 @getc_unlocked(ptr noundef %127)
  store i32 %call362, ptr %c, align 4, !tbaa !8
  %cmp363 = icmp eq i32 %call362, -1
  br i1 %cmp363, label %if.then410, label %lor.lhs.false365

lor.lhs.false365:                                 ; preds = %lor.lhs.false361
  %128 = load i32, ptr %c, align 4, !tbaa !8
  %cmp366 = icmp ne i32 %128, 97
  br i1 %cmp366, label %if.then410, label %lor.lhs.false368

lor.lhs.false368:                                 ; preds = %lor.lhs.false365
  %129 = load ptr, ptr %f, align 8, !tbaa !4
  %call369 = call i32 @getc_unlocked(ptr noundef %129)
  store i32 %call369, ptr %c, align 4, !tbaa !8
  %cmp370 = icmp eq i32 %call369, -1
  br i1 %cmp370, label %if.then410, label %lor.lhs.false372

lor.lhs.false372:                                 ; preds = %lor.lhs.false368
  %130 = load i32, ptr %c, align 4, !tbaa !8
  %cmp373 = icmp ne i32 %130, 114
  br i1 %cmp373, label %if.then410, label %lor.lhs.false375

lor.lhs.false375:                                 ; preds = %lor.lhs.false372
  %131 = load ptr, ptr %f, align 8, !tbaa !4
  %call376 = call i32 @getc_unlocked(ptr noundef %131)
  store i32 %call376, ptr %c, align 4, !tbaa !8
  %cmp377 = icmp eq i32 %call376, -1
  br i1 %cmp377, label %if.then410, label %lor.lhs.false379

lor.lhs.false379:                                 ; preds = %lor.lhs.false375
  %132 = load i32, ptr %c, align 4, !tbaa !8
  %cmp380 = icmp ne i32 %132, 95
  br i1 %cmp380, label %if.then410, label %lor.lhs.false382

lor.lhs.false382:                                 ; preds = %lor.lhs.false379
  %133 = load ptr, ptr %f, align 8, !tbaa !4
  %call383 = call i32 @getc_unlocked(ptr noundef %133)
  store i32 %call383, ptr %c, align 4, !tbaa !8
  %cmp384 = icmp eq i32 %call383, -1
  br i1 %cmp384, label %if.then410, label %lor.lhs.false386

lor.lhs.false386:                                 ; preds = %lor.lhs.false382
  %134 = load i32, ptr %c, align 4, !tbaa !8
  %cmp387 = icmp ne i32 %134, 99
  br i1 %cmp387, label %if.then410, label %lor.lhs.false389

lor.lhs.false389:                                 ; preds = %lor.lhs.false386
  %135 = load ptr, ptr %f, align 8, !tbaa !4
  %call390 = call i32 @getc_unlocked(ptr noundef %135)
  store i32 %call390, ptr %c, align 4, !tbaa !8
  %cmp391 = icmp eq i32 %call390, -1
  br i1 %cmp391, label %if.then410, label %lor.lhs.false393

lor.lhs.false393:                                 ; preds = %lor.lhs.false389
  %136 = load i32, ptr %c, align 4, !tbaa !8
  %cmp394 = icmp ne i32 %136, 111
  br i1 %cmp394, label %if.then410, label %lor.lhs.false396

lor.lhs.false396:                                 ; preds = %lor.lhs.false393
  %137 = load ptr, ptr %f, align 8, !tbaa !4
  %call397 = call i32 @getc_unlocked(ptr noundef %137)
  store i32 %call397, ptr %c, align 4, !tbaa !8
  %cmp398 = icmp eq i32 %call397, -1
  br i1 %cmp398, label %if.then410, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %lor.lhs.false396
  %138 = load i32, ptr %c, align 4, !tbaa !8
  %cmp401 = icmp ne i32 %138, 100
  br i1 %cmp401, label %if.then410, label %lor.lhs.false403

lor.lhs.false403:                                 ; preds = %lor.lhs.false400
  %139 = load ptr, ptr %f, align 8, !tbaa !4
  %call404 = call i32 @getc_unlocked(ptr noundef %139)
  store i32 %call404, ptr %c, align 4, !tbaa !8
  %cmp405 = icmp eq i32 %call404, -1
  br i1 %cmp405, label %if.then410, label %lor.lhs.false407

lor.lhs.false407:                                 ; preds = %lor.lhs.false403
  %140 = load i32, ptr %c, align 4, !tbaa !8
  %cmp408 = icmp ne i32 %140, 101
  br i1 %cmp408, label %if.then410, label %if.else411

if.then410:                                       ; preds = %lor.lhs.false407, %lor.lhs.false403, %lor.lhs.false400, %lor.lhs.false396, %lor.lhs.false393, %lor.lhs.false389, %lor.lhs.false386, %lor.lhs.false382, %lor.lhs.false379, %lor.lhs.false375, %lor.lhs.false372, %lor.lhs.false368, %lor.lhs.false365, %lor.lhs.false361, %lor.lhs.false358, %lor.lhs.false354, %lor.lhs.false351, %lor.lhs.false347, %lor.lhs.false344, %if.then340
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end475

if.else411:                                       ; preds = %lor.lhs.false407
  %141 = load ptr, ptr %f, align 8, !tbaa !4
  %call412 = call i32 @getc_unlocked(ptr noundef %141)
  store i32 %call412, ptr %c, align 4, !tbaa !8
  %cmp413 = icmp eq i32 %call412, -1
  br i1 %cmp413, label %if.then415, label %if.else416

if.then415:                                       ; preds = %if.else411
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end474

if.else416:                                       ; preds = %if.else411
  %142 = load i32, ptr %c, align 4, !tbaa !8
  %cmp417 = icmp eq i32 %142, 32
  br i1 %cmp417, label %if.then419, label %if.else458

if.then419:                                       ; preds = %if.else416
  %143 = load ptr, ptr %f, align 8, !tbaa !4
  %call420 = call i32 @getc_unlocked(ptr noundef %143)
  store i32 %call420, ptr %bl, align 4, !tbaa !8
  %cmp421 = icmp eq i32 %call420, -1
  br i1 %cmp421, label %if.then450, label %lor.lhs.false423

lor.lhs.false423:                                 ; preds = %if.then419
  %144 = load i32, ptr %bl, align 4, !tbaa !8
  %cmp424 = icmp ne i32 %144, 108
  br i1 %cmp424, label %land.lhs.true426, label %lor.lhs.false429

land.lhs.true426:                                 ; preds = %lor.lhs.false423
  %145 = load i32, ptr %bl, align 4, !tbaa !8
  %cmp427 = icmp ne i32 %145, 98
  br i1 %cmp427, label %if.then450, label %lor.lhs.false429

lor.lhs.false429:                                 ; preds = %land.lhs.true426, %lor.lhs.false423
  %146 = load ptr, ptr %f, align 8, !tbaa !4
  %call430 = call i32 @getc_unlocked(ptr noundef %146)
  store i32 %call430, ptr %c, align 4, !tbaa !8
  %cmp431 = icmp eq i32 %call430, -1
  br i1 %cmp431, label %if.then450, label %lor.lhs.false433

lor.lhs.false433:                                 ; preds = %lor.lhs.false429
  %147 = load i32, ptr %c, align 4, !tbaa !8
  %cmp434 = icmp ne i32 %147, 101
  br i1 %cmp434, label %if.then450, label %lor.lhs.false436

lor.lhs.false436:                                 ; preds = %lor.lhs.false433
  %148 = load ptr, ptr %f, align 8, !tbaa !4
  %call437 = call i32 @getc_unlocked(ptr noundef %148)
  store i32 %call437, ptr %c, align 4, !tbaa !8
  %cmp438 = icmp eq i32 %call437, -1
  br i1 %cmp438, label %if.then450, label %lor.lhs.false440

lor.lhs.false440:                                 ; preds = %lor.lhs.false436
  %149 = load i32, ptr %c, align 4, !tbaa !8
  %cmp441 = icmp ne i32 %149, 60
  br i1 %cmp441, label %if.then450, label %lor.lhs.false443

lor.lhs.false443:                                 ; preds = %lor.lhs.false440
  %150 = load ptr, ptr %f, align 8, !tbaa !4
  %call444 = call i32 @getc_unlocked(ptr noundef %150)
  store i32 %call444, ptr %c, align 4, !tbaa !8
  %cmp445 = icmp eq i32 %call444, -1
  br i1 %cmp445, label %if.then450, label %lor.lhs.false447

lor.lhs.false447:                                 ; preds = %lor.lhs.false443
  %151 = load i32, ptr %c, align 4, !tbaa !8
  %cmp448 = icmp ne i32 %151, 60
  br i1 %cmp448, label %if.then450, label %if.else451

if.then450:                                       ; preds = %lor.lhs.false447, %lor.lhs.false443, %lor.lhs.false440, %lor.lhs.false436, %lor.lhs.false433, %lor.lhs.false429, %land.lhs.true426, %if.then419
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end457

if.else451:                                       ; preds = %lor.lhs.false447
  %152 = load i32, ptr %bl, align 4, !tbaa !8
  %cmp452 = icmp eq i32 %152, 108
  br i1 %cmp452, label %if.then454, label %if.else455

if.then454:                                       ; preds = %if.else451
  %153 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 520, ptr %153, align 4, !tbaa !8
  br label %if.end456

if.else455:                                       ; preds = %if.else451
  %154 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 528, ptr %154, align 4, !tbaa !8
  br label %if.end456

if.end456:                                        ; preds = %if.else455, %if.then454
  br label %if.end457

if.end457:                                        ; preds = %if.end456, %if.then450
  br label %if.end473

if.else458:                                       ; preds = %if.else416
  %155 = load i32, ptr %c, align 4, !tbaa !8
  %cmp459 = icmp eq i32 %155, 60
  br i1 %cmp459, label %if.then461, label %if.else471

if.then461:                                       ; preds = %if.else458
  %156 = load ptr, ptr %f, align 8, !tbaa !4
  %call462 = call i32 @getc_unlocked(ptr noundef %156)
  store i32 %call462, ptr %c, align 4, !tbaa !8
  %cmp463 = icmp eq i32 %call462, -1
  br i1 %cmp463, label %if.then468, label %lor.lhs.false465

lor.lhs.false465:                                 ; preds = %if.then461
  %157 = load i32, ptr %c, align 4, !tbaa !8
  %cmp466 = icmp ne i32 %157, 60
  br i1 %cmp466, label %if.then468, label %if.else469

if.then468:                                       ; preds = %lor.lhs.false465, %if.then461
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end470

if.else469:                                       ; preds = %lor.lhs.false465
  %158 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 516, ptr %158, align 4, !tbaa !8
  br label %if.end470

if.end470:                                        ; preds = %if.else469, %if.then468
  br label %if.end472

if.else471:                                       ; preds = %if.else458
  store i32 1, ptr %bad_header, align 4, !tbaa !8
  br label %if.end472

if.end472:                                        ; preds = %if.else471, %if.end470
  br label %if.end473

if.end473:                                        ; preds = %if.end472, %if.end457
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %if.then415
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.then410
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %land.lhs.true337, %if.else335
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %if.end334
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %if.end270
  br label %if.end479

if.end479:                                        ; preds = %if.end478, %if.end192
  br label %if.end480

if.end480:                                        ; preds = %if.end479, %if.end121
  %159 = load i32, ptr %bad_header, align 4, !tbaa !8
  %tobool481 = icmp ne i32 %159, 0
  br i1 %tobool481, label %if.then482, label %if.end490

if.then482:                                       ; preds = %if.end480
  %160 = load ptr, ptr @stderr, align 8, !tbaa !4
  %161 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %cmp483 = icmp eq ptr %161, null
  br i1 %cmp483, label %cond.true485, label %cond.false486

cond.true485:                                     ; preds = %if.then482
  br label %cond.end487

cond.false486:                                    ; preds = %if.then482
  %162 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  br label %cond.end487

cond.end487:                                      ; preds = %cond.false486, %cond.true485
  %cond488 = phi ptr [ @.str.3, %cond.true485 ], [ %162, %cond.false486 ]
  %call489 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef @.str.2, ptr noundef %cond488)
  %163 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 768, ptr %163, align 4, !tbaa !8
  %164 = load ptr, ptr %f, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %164) #12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end490:                                        ; preds = %if.end480
  br label %if.end491

if.end491:                                        ; preds = %if.end490, %cond.end
  %165 = load i64, ptr %position.addr, align 8, !tbaa !10
  %cmp492 = icmp sle i64 %165, 1
  br i1 %cmp492, label %if.then494, label %if.end495

if.then494:                                       ; preds = %if.end491
  %166 = load ptr, ptr %f, align 8, !tbaa !4
  store ptr %166, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end495:                                        ; preds = %if.end491
  %167 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  %168 = load i32, ptr %167, align 4, !tbaa !8
  %and = and i32 %168, 28
  %tobool496 = icmp ne i32 %and, 0
  br i1 %tobool496, label %if.then497, label %if.end500

if.then497:                                       ; preds = %if.end495
  %169 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef @.str.4)
  %170 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 768, ptr %170, align 4, !tbaa !8
  %171 = load ptr, ptr %f, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %171) #12
  %172 = load ptr, ptr %f, align 8, !tbaa !4
  %call499 = call i32 @fclose(ptr noundef %172)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end500:                                        ; preds = %if.end495
  %173 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  %174 = load i32, ptr %173, align 4, !tbaa !8
  %and501 = and i32 %174, 32
  %tobool502 = icmp ne i32 %and501, 0
  br i1 %tobool502, label %if.then503, label %if.end506

if.then503:                                       ; preds = %if.end500
  %175 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call504 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.5)
  %176 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  store i32 768, ptr %176, align 4, !tbaa !8
  %177 = load ptr, ptr %f, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %177) #12
  %178 = load ptr, ptr %f, align 8, !tbaa !4
  %call505 = call i32 @fclose(ptr noundef %178)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end506:                                        ; preds = %if.end500
  %179 = load i32, ptr %assumefixed.addr, align 4, !tbaa !8
  %tobool507 = icmp ne i32 %179, 0
  br i1 %tobool507, label %lor.lhs.false508, label %if.then514

lor.lhs.false508:                                 ; preds = %if.end506
  %180 = load ptr, ptr %codetype.addr, align 8, !tbaa !4
  %181 = load i32, ptr %180, align 4, !tbaa !8
  %and509 = and i32 %181, 2
  %tobool510 = icmp ne i32 %and509, 0
  br i1 %tobool510, label %if.then514, label %lor.lhs.false511

lor.lhs.false511:                                 ; preds = %lor.lhs.false508
  %182 = load i32, ptr %firstc, align 4, !tbaa !8
  %cmp512 = icmp eq i32 %182, 58
  br i1 %cmp512, label %if.then514, label %if.else540

if.then514:                                       ; preds = %lor.lhs.false511, %lor.lhs.false508, %if.end506
  store i64 1, ptr %l, align 8, !tbaa !10
  br label %while.cond515

while.cond515:                                    ; preds = %if.end527, %if.then514
  %183 = load ptr, ptr %f, align 8, !tbaa !4
  %call516 = call i32 @getc_unlocked(ptr noundef %183)
  store i32 %call516, ptr %c, align 4, !tbaa !8
  %cmp517 = icmp ne i32 %call516, -1
  br i1 %cmp517, label %while.body519, label %while.end528

while.body519:                                    ; preds = %while.cond515
  %184 = load i32, ptr %c, align 4, !tbaa !8
  %cmp520 = icmp eq i32 %184, 10
  br i1 %cmp520, label %if.then522, label %if.end527

if.then522:                                       ; preds = %while.body519
  %185 = load i64, ptr %l, align 8, !tbaa !10
  %inc = add nsw i64 %185, 1
  store i64 %inc, ptr %l, align 8, !tbaa !10
  %186 = load i64, ptr %l, align 8, !tbaa !10
  %187 = load i64, ptr %position.addr, align 8, !tbaa !10
  %cmp523 = icmp eq i64 %186, %187
  br i1 %cmp523, label %if.then525, label %if.end526

if.then525:                                       ; preds = %if.then522
  br label %while.end528

if.end526:                                        ; preds = %if.then522
  br label %if.end527

if.end527:                                        ; preds = %if.end526, %while.body519
  br label %while.cond515, !llvm.loop !16

while.end528:                                     ; preds = %if.then525, %while.cond515
  %188 = load i64, ptr %l, align 8, !tbaa !10
  %189 = load i64, ptr %position.addr, align 8, !tbaa !10
  %cmp529 = icmp eq i64 %188, %189
  br i1 %cmp529, label %if.then531, label %if.end532

if.then531:                                       ; preds = %while.end528
  %190 = load ptr, ptr %f, align 8, !tbaa !4
  store ptr %190, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end532:                                        ; preds = %while.end528
  %191 = load ptr, ptr @stderr, align 8, !tbaa !4
  %192 = load i64, ptr %position.addr, align 8, !tbaa !10
  %193 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %cmp533 = icmp eq ptr %193, null
  br i1 %cmp533, label %cond.true535, label %cond.false536

cond.true535:                                     ; preds = %if.end532
  br label %cond.end537

cond.false536:                                    ; preds = %if.end532
  %194 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  br label %cond.end537

cond.end537:                                      ; preds = %cond.false536, %cond.true535
  %cond538 = phi ptr [ @.str.3, %cond.true535 ], [ %194, %cond.false536 ]
  %call539 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef @.str.6, i64 noundef %192, ptr noundef %cond538)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else540:                                       ; preds = %lor.lhs.false511
  %195 = load ptr, ptr %f, align 8, !tbaa !4
  %call541 = call i64 @ftello(ptr noundef %195)
  store i64 %call541, ptr %pos1, align 8, !tbaa !10
  %196 = load i64, ptr %pos1, align 8, !tbaa !10
  %cmp542 = icmp slt i64 %196, 0
  br i1 %cmp542, label %if.then544, label %if.end546

if.then544:                                       ; preds = %if.else540
  %197 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.7)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end546:                                        ; preds = %if.else540
  store i64 1, ptr %i, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end546
  %198 = load ptr, ptr %f, align 8, !tbaa !4
  %call547 = call i32 @getc_unlocked(ptr noundef %198)
  store i32 %call547, ptr %c, align 4, !tbaa !8
  %cmp548 = icmp ne i32 %call547, -1
  br i1 %cmp548, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %199 = load i32, ptr %c, align 4, !tbaa !8
  %cmp550 = icmp ne i32 %199, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %200 = phi i1 [ false, %for.cond ], [ %cmp550, %land.rhs ]
  br i1 %200, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %201 = load i64, ptr %i, align 8, !tbaa !10
  %inc552 = add nsw i64 %201, 1
  store i64 %inc552, ptr %i, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %land.end
  %202 = load i64, ptr %i, align 8, !tbaa !10
  store i64 %202, ptr @ogf_linelen, align 8, !tbaa !10
  %203 = load i32, ptr %c, align 4, !tbaa !8
  %cmp553 = icmp eq i32 %203, -1
  br i1 %cmp553, label %if.then555, label %if.end557

if.then555:                                       ; preds = %for.end
  %204 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call556 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.8)
  %205 = load ptr, ptr %f, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %205) #12
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end557:                                        ; preds = %for.end
  %206 = load ptr, ptr %f, align 8, !tbaa !4
  %call558 = call i64 @ftello(ptr noundef %206)
  store i64 %call558, ptr %pos2, align 8, !tbaa !10
  %207 = load i64, ptr %pos2, align 8, !tbaa !10
  %cmp559 = icmp slt i64 %207, 0
  br i1 %cmp559, label %if.then561, label %if.end563

if.then561:                                       ; preds = %if.end557
  %208 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call562 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef @.str.9)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end563:                                        ; preds = %if.end557
  %209 = load i64, ptr %pos1, align 8, !tbaa !10
  %210 = load i64, ptr %position.addr, align 8, !tbaa !10
  %sub = sub nsw i64 %210, 1
  %211 = load i64, ptr %pos2, align 8, !tbaa !10
  %212 = load i64, ptr %pos1, align 8, !tbaa !10
  %sub564 = sub nsw i64 %211, %212
  %mul = mul nsw i64 %sub, %sub564
  %add = add nsw i64 %209, %mul
  store i64 %add, ptr %pos, align 8, !tbaa !10
  %213 = load ptr, ptr %f, align 8, !tbaa !4
  %214 = load i64, ptr %pos, align 8, !tbaa !10
  %call565 = call i32 @fseeko(ptr noundef %213, i64 noundef %214, i32 noundef 0)
  %cmp566 = icmp slt i32 %call565, 0
  br i1 %cmp566, label %if.then568, label %if.end570

if.then568:                                       ; preds = %if.end563
  %215 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call569 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.10)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end570:                                        ; preds = %if.end563
  br label %if.end571

if.end571:                                        ; preds = %if.end570
  %216 = load ptr, ptr %f, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %216) #12
  %217 = load ptr, ptr %f, align 8, !tbaa !4
  store ptr %217, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end571, %if.then568, %if.then561, %if.then555, %if.then544, %cond.end537, %if.then531, %if.then503, %if.then497, %if.then494, %cond.end487, %if.then32, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %bad_header) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bl) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #12
  %218 = load ptr, ptr %retval, align 8
  ret ptr %218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @popen(ptr noundef, ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare void @flockfile(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @getc_unlocked(ptr noundef %__fp) #4 {
entry:
  %__fp.addr = alloca ptr, align 8
  store ptr %__fp, ptr %__fp.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %__fp.addr, align 8, !tbaa !4
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %_IO_read_ptr, align 8, !tbaa !18
  %2 = load ptr, ptr %__fp.addr, align 8, !tbaa !4
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %_IO_read_end, align 8, !tbaa !21
  %cmp = icmp uge ptr %1, %3
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %__fp.addr, align 8, !tbaa !4
  %call = call i32 @__uflow(ptr noundef %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %__fp.addr, align 8, !tbaa !4
  %_IO_read_ptr2 = getelementptr inbounds %struct._IO_FILE, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %_IO_read_ptr2, align 8, !tbaa !18
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %_IO_read_ptr2, align 8, !tbaa !18
  %7 = load i8, ptr %6, align 1, !tbaa !12
  %conv3 = zext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind
declare void @funlockfile(ptr noundef) #3

declare i32 @ungetc(i32 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i64 @ftello(ptr noundef) #2

declare i32 @fseeko(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @writeline(ptr noundef %f, ptr noundef %s) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %slen = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slen) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %0) #13
  store i64 %call, ptr %slen, align 8, !tbaa !10
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %2 = load i64, ptr %slen, align 8, !tbaa !10
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call1 = call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %3)
  %4 = load i64, ptr %slen, align 8, !tbaa !10
  %cmp = icmp ne i64 %call1, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call2 = call i32 @ferror(ptr noundef %5) #12
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gt_abort(ptr noundef @.str.11)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %slen) #12
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @gt_abort(ptr noundef %msg) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !4
  %2 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.77, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %call1 = call ptr @__errno_location() #14
  %3 = load i32, ptr %call1, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  call void @perror(ptr noundef @.str.78)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.body
  call void @exit(i32 noundef 1) #15
  unreachable

do.end:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @gtools_getline(ptr noundef %f) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  %0 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %cmp = icmp ugt i64 5000, %0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr @gtools_getline.s, align 8, !tbaa !4
  call void @free(ptr noundef %2) #12
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i64 5000, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %call = call noalias ptr @malloc(i64 noundef 5000) #16
  store ptr %call, ptr @gtools_getline.s, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.12)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %entry
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void @flockfile(ptr noundef %3) #12
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %if.end5
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call6 = call i32 @getc_unlocked(ptr noundef %4)
  store i32 %call6, ptr %c, align 4, !tbaa !8
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %c, align 4, !tbaa !8
  %cmp8 = icmp ne i32 %5, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i64, ptr %i, align 8, !tbaa !10
  %8 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %sub = sub i64 %8, 3
  %cmp9 = icmp eq i64 %7, %sub
  br i1 %cmp9, label %if.then10, label %if.end25

if.then10:                                        ; preds = %while.body
  %9 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %div = udiv i64 %9, 2
  %mul = mul i64 3, %div
  %add = add i64 %mul, 10000
  %10 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %cmp11 = icmp ugt i64 %add, %10
  br i1 %cmp11, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.then10
  %11 = load ptr, ptr @gtools_getline.s, align 8, !tbaa !4
  %12 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %div13 = udiv i64 %12, 2
  %mul14 = mul i64 3, %div13
  %add15 = add i64 %mul14, 10000
  %mul16 = mul i64 %add15, 1
  %call17 = call ptr @realloc(ptr noundef %11, i64 noundef %mul16) #17
  store ptr %call17, ptr @gtools_getline.s, align 8, !tbaa !4
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then12
  call void @gt_abort(ptr noundef @.str.12)
  br label %if.end23

if.else:                                          ; preds = %if.then12
  %13 = load i64, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  %div20 = udiv i64 %13, 2
  %mul21 = mul i64 3, %div20
  %add22 = add i64 %mul21, 10000
  store i64 %add22, ptr @gtools_getline.s_sz, align 8, !tbaa !10
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %while.body
  %14 = load i32, ptr %c, align 4, !tbaa !8
  %conv = trunc i32 %14 to i8
  %15 = load ptr, ptr @gtools_getline.s, align 8, !tbaa !4
  %16 = load i64, ptr %i, align 8, !tbaa !10
  %inc = add nsw i64 %16, 1
  store i64 %inc, ptr %i, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %16
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !12
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %17) #12
  %18 = load i64, ptr %i, align 8, !tbaa !10
  %cmp26 = icmp eq i64 %18, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %while.end
  %19 = load i32, ptr %c, align 4, !tbaa !8
  %cmp28 = icmp eq i32 %19, -1
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true, %while.end
  %20 = load i32, ptr %c, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %20, 10
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  %21 = load ptr, ptr @gtools_getline.s, align 8, !tbaa !4
  %22 = load i64, ptr %i, align 8, !tbaa !10
  %inc35 = add nsw i64 %22, 1
  store i64 %inc35, ptr %i, align 8, !tbaa !10
  %arrayidx36 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 10, ptr %arrayidx36, align 1, !tbaa !12
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31
  %23 = load ptr, ptr @gtools_getline.s, align 8, !tbaa !4
  %24 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx38 = getelementptr inbounds i8, ptr %23, i64 %24
  store i8 0, ptr %arrayidx38, align 1, !tbaa !12
  %25 = load ptr, ptr @gtools_getline.s, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then30
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define ptr @getecline(ptr noundef %f) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %headsize = alloca i64, align 8
  %bodysize = alloca i64, align 8
  %sizesize = alloca i32, align 4
  %edgesize = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %headsize) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %bodysize) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %sizesize) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %edgesize) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void @flockfile(ptr noundef %0) #12
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call i32 @getc_unlocked(ptr noundef %1)
  store i32 %call, ptr %c1, align 4, !tbaa !8
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %c1, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %c1, align 4, !tbaa !8
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %bodysize, align 8, !tbaa !10
  store i32 1, ptr %edgesize, align 4, !tbaa !8
  store i64 1, ptr %headsize, align 8, !tbaa !10
  br label %if.end20

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call3 = call i32 @getc_unlocked(ptr noundef %4)
  store i32 %call3, ptr %c, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call void @gt_abort(ptr noundef @.str.13)
  br label %if.end19

if.else7:                                         ; preds = %if.else
  %5 = load i32, ptr %c, align 4, !tbaa !8
  %shr = ashr i32 %5, 4
  store i32 %shr, ptr %sizesize, align 4, !tbaa !8
  %6 = load i32, ptr %c, align 4, !tbaa !8
  %and = and i32 %6, 15
  store i32 %and, ptr %edgesize, align 4, !tbaa !8
  store i64 0, ptr %bodysize, align 8, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else7
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %8 = load i32, ptr %sizesize, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call10 = call i32 @getc_unlocked(ptr noundef %9)
  store i32 %call10, ptr %c, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %for.body
  call void @gt_abort(ptr noundef @.str.13)
  br label %if.end16

if.else14:                                        ; preds = %for.body
  %10 = load i64, ptr %bodysize, align 8, !tbaa !10
  %shl = shl i64 %10, 8
  %11 = load i32, ptr %c, align 4, !tbaa !8
  %conv15 = sext i32 %11 to i64
  %add = add i64 %shl, %conv15
  store i64 %add, ptr %bodysize, align 8, !tbaa !10
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %sizesize, align 4, !tbaa !8
  %add17 = add nsw i32 2, %13
  %conv18 = sext i32 %add17 to i64
  store i64 %conv18, ptr %headsize, align 8, !tbaa !10
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.then6
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then2
  %14 = load i64, ptr %headsize, align 8, !tbaa !10
  %15 = load i64, ptr %bodysize, align 8, !tbaa !10
  %add21 = add i64 %14, %15
  %16 = load i64, ptr @getecline.s_sz, align 8, !tbaa !10
  %cmp22 = icmp ugt i64 %add21, %16
  br i1 %cmp22, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end20
  %17 = load i64, ptr @getecline.s_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then24
  %18 = load ptr, ptr @getecline.s, align 8, !tbaa !4
  call void @free(ptr noundef %18) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then24
  %19 = load i64, ptr %headsize, align 8, !tbaa !10
  %20 = load i64, ptr %bodysize, align 8, !tbaa !10
  %add27 = add i64 %19, %20
  store i64 %add27, ptr @getecline.s_sz, align 8, !tbaa !10
  %21 = load i64, ptr %headsize, align 8, !tbaa !10
  %22 = load i64, ptr %bodysize, align 8, !tbaa !10
  %add28 = add i64 %21, %22
  %mul = mul i64 %add28, 1
  %call29 = call noalias ptr @malloc(i64 noundef %mul) #16
  store ptr %call29, ptr @getecline.s, align 8, !tbaa !4
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  call void @gt_abort(ptr noundef @.str.14)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end26
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end20
  %23 = load i32, ptr %c1, align 4, !tbaa !8
  %conv35 = trunc i32 %23 to i8
  %24 = load ptr, ptr @getecline.s, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 0
  store i8 %conv35, ptr %arrayidx, align 1, !tbaa !12
  %25 = load i32, ptr %c1, align 4, !tbaa !8
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then38, label %if.end57

if.then38:                                        ; preds = %if.end34
  %26 = load i32, ptr %sizesize, align 4, !tbaa !8
  %shl39 = shl i32 %26, 4
  %27 = load i32, ptr %edgesize, align 4, !tbaa !8
  %add40 = add nsw i32 %shl39, %27
  %conv41 = trunc i32 %add40 to i8
  %28 = load ptr, ptr @getecline.s, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %conv41, ptr %arrayidx42, align 1, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc54, %if.then38
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %30 = load i32, ptr %sizesize, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %29, %30
  br i1 %cmp44, label %for.body46, label %for.end56

for.body46:                                       ; preds = %for.cond43
  %31 = load i64, ptr %bodysize, align 8, !tbaa !10
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %mul47 = mul nsw i32 8, %32
  %sh_prom = zext i32 %mul47 to i64
  %shr48 = lshr i64 %31, %sh_prom
  %and49 = and i64 %shr48, 255
  %conv50 = trunc i64 %and49 to i8
  %33 = load ptr, ptr @getecline.s, align 8, !tbaa !4
  %34 = load i64, ptr %headsize, align 8, !tbaa !10
  %sub = sub i64 %34, 1
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %conv51 = sext i32 %35 to i64
  %sub52 = sub i64 %sub, %conv51
  %arrayidx53 = getelementptr inbounds i8, ptr %33, i64 %sub52
  store i8 %conv50, ptr %arrayidx53, align 1, !tbaa !12
  br label %for.inc54

for.inc54:                                        ; preds = %for.body46
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %inc55 = add nsw i32 %36, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !8
  br label %for.cond43, !llvm.loop !24

for.end56:                                        ; preds = %for.cond43
  br label %if.end57

if.end57:                                         ; preds = %for.end56, %if.end34
  %37 = load i64, ptr %bodysize, align 8, !tbaa !10
  %cmp58 = icmp ugt i64 %37, 0
  br i1 %cmp58, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %if.end57
  %38 = load ptr, ptr @getecline.s, align 8, !tbaa !4
  %39 = load i64, ptr %headsize, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load i64, ptr %bodysize, align 8, !tbaa !10
  %41 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call60 = call i64 @fread(ptr noundef %add.ptr, i64 noundef %40, i64 noundef 1, ptr noundef %41)
  %42 = load i64, ptr %bodysize, align 8, !tbaa !10
  %cmp61 = icmp ne i64 %call60, %42
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true
  call void @gt_abort(ptr noundef @.str.13)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true, %if.end57
  %43 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void @funlockfile(ptr noundef %43) #12
  %44 = load ptr, ptr @getecline.s, align 8, !tbaa !4
  store ptr %44, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %edgesize) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %sizesize) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %bodysize) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %headsize) #12
  %45 = load ptr, ptr %retval, align 8
  ret ptr %45
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @graphsize(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 38
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  store ptr %5, ptr %p, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %7 = load i8, ptr %6, align 1, !tbaa !12
  %conv6 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv6, 63
  store i32 %sub, ptr %n, align 4, !tbaa !8
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %cmp7 = icmp sgt i32 %8, 62
  br i1 %cmp7, label %if.then9, label %if.end54

if.then9:                                         ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr10, ptr %p, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !12
  %conv11 = sext i8 %10 to i32
  %sub12 = sub nsw i32 %conv11, 63
  store i32 %sub12, ptr %n, align 4, !tbaa !8
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %cmp13 = icmp sgt i32 %11, 62
  br i1 %cmp13, label %if.then15, label %if.else42

if.then15:                                        ; preds = %if.then9
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr16 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr16, ptr %p, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !12
  %conv17 = sext i8 %13 to i32
  %sub18 = sub nsw i32 %conv17, 63
  store i32 %sub18, ptr %n, align 4, !tbaa !8
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %shl = shl i32 %14, 6
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %conv20 = sext i8 %16 to i32
  %sub21 = sub nsw i32 %conv20, 63
  %or = or i32 %shl, %sub21
  store i32 %or, ptr %n, align 4, !tbaa !8
  %17 = load i32, ptr %n, align 4, !tbaa !8
  %shl22 = shl i32 %17, 6
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr23 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr23, ptr %p, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv24 = sext i8 %19 to i32
  %sub25 = sub nsw i32 %conv24, 63
  %or26 = or i32 %shl22, %sub25
  store i32 %or26, ptr %n, align 4, !tbaa !8
  %20 = load i32, ptr %n, align 4, !tbaa !8
  %shl27 = shl i32 %20, 6
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr28 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr28, ptr %p, align 8, !tbaa !4
  %22 = load i8, ptr %21, align 1, !tbaa !12
  %conv29 = sext i8 %22 to i32
  %sub30 = sub nsw i32 %conv29, 63
  %or31 = or i32 %shl27, %sub30
  store i32 %or31, ptr %n, align 4, !tbaa !8
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %shl32 = shl i32 %23, 6
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr33 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr33, ptr %p, align 8, !tbaa !4
  %25 = load i8, ptr %24, align 1, !tbaa !12
  %conv34 = sext i8 %25 to i32
  %sub35 = sub nsw i32 %conv34, 63
  %or36 = or i32 %shl32, %sub35
  store i32 %or36, ptr %n, align 4, !tbaa !8
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %shl37 = shl i32 %26, 6
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr38 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !4
  %28 = load i8, ptr %27, align 1, !tbaa !12
  %conv39 = sext i8 %28 to i32
  %sub40 = sub nsw i32 %conv39, 63
  %or41 = or i32 %shl37, %sub40
  store i32 %or41, ptr %n, align 4, !tbaa !8
  br label %if.end53

if.else42:                                        ; preds = %if.then9
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %shl43 = shl i32 %29, 6
  %30 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr44 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr44, ptr %p, align 8, !tbaa !4
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %conv45 = sext i8 %31 to i32
  %sub46 = sub nsw i32 %conv45, 63
  %or47 = or i32 %shl43, %sub46
  store i32 %or47, ptr %n, align 4, !tbaa !8
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %shl48 = shl i32 %32, 6
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr49 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr49, ptr %p, align 8, !tbaa !4
  %34 = load i8, ptr %33, align 1, !tbaa !12
  %conv50 = sext i8 %34 to i32
  %sub51 = sub nsw i32 %conv50, 63
  %or52 = or i32 %shl48, %sub51
  store i32 %or52, ptr %n, align 4, !tbaa !8
  br label %if.end53

if.end53:                                         ; preds = %if.else42, %if.then15
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end
  %35 = load i32, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define void @encodegraphsize(i32 noundef %n, ptr noundef %pp) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  store ptr %pp, ptr %pp.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  %0 = load ptr, ptr %pp.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %p, align 8, !tbaa !4
  %2 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp = icmp sle i32 %2, 62
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add = add nsw i32 63, %3
  %conv = trunc i32 %add to i8
  %4 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv, ptr %4, align 1, !tbaa !12
  br label %if.end47

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp1 = icmp sle i32 %5, 258047
  br i1 %cmp1, label %if.then3, label %if.else16

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr4, ptr %p, align 8, !tbaa !4
  store i8 126, ptr %6, align 1, !tbaa !12
  %7 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr = ashr i32 %7, 12
  %add5 = add nsw i32 63, %shr
  %conv6 = trunc i32 %add5 to i8
  %8 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr7, ptr %p, align 8, !tbaa !4
  store i8 %conv6, ptr %8, align 1, !tbaa !12
  %9 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr8 = ashr i32 %9, 6
  %and = and i32 %shr8, 63
  %add9 = add nsw i32 63, %and
  %conv10 = trunc i32 %add9 to i8
  %10 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr11, ptr %p, align 8, !tbaa !4
  store i8 %conv10, ptr %10, align 1, !tbaa !12
  %11 = load i32, ptr %n.addr, align 4, !tbaa !8
  %and12 = and i32 %11, 63
  %add13 = add nsw i32 63, %and12
  %conv14 = trunc i32 %add13 to i8
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr15 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr15, ptr %p, align 8, !tbaa !4
  store i8 %conv14, ptr %12, align 1, !tbaa !12
  br label %if.end

if.else16:                                        ; preds = %if.else
  %13 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr17 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr17, ptr %p, align 8, !tbaa !4
  store i8 126, ptr %13, align 1, !tbaa !12
  %14 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr18, ptr %p, align 8, !tbaa !4
  store i8 126, ptr %14, align 1, !tbaa !12
  %15 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr19 = ashr i32 %15, 30
  %add20 = add nsw i32 63, %shr19
  %conv21 = trunc i32 %add20 to i8
  %16 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr22 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !4
  store i8 %conv21, ptr %16, align 1, !tbaa !12
  %17 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr23 = ashr i32 %17, 24
  %and24 = and i32 %shr23, 63
  %add25 = add nsw i32 63, %and24
  %conv26 = trunc i32 %add25 to i8
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr27, ptr %p, align 8, !tbaa !4
  store i8 %conv26, ptr %18, align 1, !tbaa !12
  %19 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr28 = ashr i32 %19, 18
  %and29 = and i32 %shr28, 63
  %add30 = add nsw i32 63, %and29
  %conv31 = trunc i32 %add30 to i8
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr32 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr32, ptr %p, align 8, !tbaa !4
  store i8 %conv31, ptr %20, align 1, !tbaa !12
  %21 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr33 = ashr i32 %21, 12
  %and34 = and i32 %shr33, 63
  %add35 = add nsw i32 63, %and34
  %conv36 = trunc i32 %add35 to i8
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr37 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr37, ptr %p, align 8, !tbaa !4
  store i8 %conv36, ptr %22, align 1, !tbaa !12
  %23 = load i32, ptr %n.addr, align 4, !tbaa !8
  %shr38 = ashr i32 %23, 6
  %and39 = and i32 %shr38, 63
  %add40 = add nsw i32 63, %and39
  %conv41 = trunc i32 %add40 to i8
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr42 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr42, ptr %p, align 8, !tbaa !4
  store i8 %conv41, ptr %24, align 1, !tbaa !12
  %25 = load i32, ptr %n.addr, align 4, !tbaa !8
  %and43 = and i32 %25, 63
  %add44 = add nsw i32 63, %and43
  %conv45 = trunc i32 %add44 to i8
  %26 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr46 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr46, ptr %p, align 8, !tbaa !4
  store i8 %conv45, ptr %26, align 1, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then3
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.then
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %28 = load ptr, ptr %pp.addr, align 8, !tbaa !4
  store ptr %27, ptr %28, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @stringcounts(ptr noundef %s, ptr noundef %pn, ptr noundef %pe) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %pe.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %nb = alloca i32, align 4
  %v = alloca i32, align 4
  %n = alloca i32, align 4
  %need = alloca i32, align 4
  %count = alloca i64, align 8
  %done = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %pn, ptr %pn.addr, align 8, !tbaa !4
  store ptr %pe, ptr %pe.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @graphsize(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %2 = load ptr, ptr %pn.addr, align 8, !tbaa !4
  store i32 %1, ptr %2, align 4, !tbaa !8
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  %idx.ext = sext i32 %lor.ext to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp6 = icmp sle i32 %9, 62
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %10 = load i32, ptr %n, align 4, !tbaa !8
  %cmp8 = icmp sle i32 %10, 258047
  %11 = zext i1 %cmp8 to i64
  %cond = select i1 %cmp8, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %idx.ext11 = sext i32 %cond10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext11
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !4
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 58
  br i1 %cmp15, label %if.then, label %if.else87

if.then:                                          ; preds = %cond.end
  store i64 0, ptr %count, align 8, !tbaa !10
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %sub = sub nsw i32 %14, 1
  store i32 %sub, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %cmp17 = icmp ne i32 %15, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %16, 1
  store i32 %shr, ptr %i, align 4, !tbaa !8
  %17 = load i32, ptr %nb, align 4, !tbaa !8
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %nb, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %v, align 4, !tbaa !8
  store i32 0, ptr %done, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end85, %if.then74, %if.then27, %for.end
  %18 = load i32, ptr %done, align 4, !tbaa !8
  %tobool = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end86

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %k, align 4, !tbaa !8
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %if.then21, label %if.end29

if.then21:                                        ; preds = %while.body
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %conv22 = sext i8 %21 to i32
  store i32 %conv22, ptr %x, align 4, !tbaa !8
  %22 = load i32, ptr %x, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %22, 10
  br i1 %cmp23, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %23 = load i32, ptr %x, align 4, !tbaa !8
  %cmp25 = icmp eq i32 %23, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %lor.lhs.false, %if.then21
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !26

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i32, ptr %x, align 4, !tbaa !8
  %sub28 = sub nsw i32 %24, 63
  store i32 %sub28, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end, %while.body
  %25 = load i32, ptr %x, align 4, !tbaa !8
  %26 = load i32, ptr %k, align 4, !tbaa !8
  %sub30 = sub nsw i32 %26, 1
  %shl = shl i32 1, %sub30
  %and = and i32 %25, %shl
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %27 = load i32, ptr %v, align 4, !tbaa !8
  %inc33 = add nsw i32 %27, 1
  store i32 %inc33, ptr %v, align 4, !tbaa !8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %28 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %29 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %29, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %while.cond35

while.cond35:                                     ; preds = %if.end72, %if.then51, %if.end34
  %30 = load i32, ptr %need, align 4, !tbaa !8
  %cmp36 = icmp sgt i32 %30, 0
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond35
  %31 = load i32, ptr %done, align 4, !tbaa !8
  %tobool38 = icmp ne i32 %31, 0
  %lnot39 = xor i1 %tobool38, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond35
  %32 = phi i1 [ false, %while.cond35 ], [ %lnot39, %land.rhs ]
  br i1 %32, label %while.body40, label %while.end

while.body40:                                     ; preds = %land.end
  %33 = load i32, ptr %k, align 4, !tbaa !8
  %cmp41 = icmp eq i32 %33, 0
  br i1 %cmp41, label %if.then43, label %if.end55

if.then43:                                        ; preds = %while.body40
  %34 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr44 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr44, ptr %p, align 8, !tbaa !4
  %35 = load i8, ptr %34, align 1, !tbaa !12
  %conv45 = sext i8 %35 to i32
  store i32 %conv45, ptr %x, align 4, !tbaa !8
  %36 = load i32, ptr %x, align 4, !tbaa !8
  %cmp46 = icmp eq i32 %36, 10
  br i1 %cmp46, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.then43
  %37 = load i32, ptr %x, align 4, !tbaa !8
  %cmp49 = icmp eq i32 %37, 0
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %lor.lhs.false48, %if.then43
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond35, !llvm.loop !27

if.else52:                                        ; preds = %lor.lhs.false48
  %38 = load i32, ptr %x, align 4, !tbaa !8
  %sub53 = sub nsw i32 %38, 63
  store i32 %sub53, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end54

if.end54:                                         ; preds = %if.else52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %while.body40
  %39 = load i32, ptr %need, align 4, !tbaa !8
  %40 = load i32, ptr %k, align 4, !tbaa !8
  %cmp56 = icmp sge i32 %39, %40
  br i1 %cmp56, label %if.then58, label %if.else64

if.then58:                                        ; preds = %if.end55
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %42 = load i32, ptr %k, align 4, !tbaa !8
  %shl59 = shl i32 %41, %42
  %43 = load i32, ptr %x, align 4, !tbaa !8
  %44 = load i32, ptr %k, align 4, !tbaa !8
  %shl60 = shl i32 1, %44
  %sub61 = sub nsw i32 %shl60, 1
  %and62 = and i32 %43, %sub61
  %or = or i32 %shl59, %and62
  store i32 %or, ptr %j, align 4, !tbaa !8
  %45 = load i32, ptr %k, align 4, !tbaa !8
  %46 = load i32, ptr %need, align 4, !tbaa !8
  %sub63 = sub nsw i32 %46, %45
  store i32 %sub63, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %if.end72

if.else64:                                        ; preds = %if.end55
  %47 = load i32, ptr %need, align 4, !tbaa !8
  %48 = load i32, ptr %k, align 4, !tbaa !8
  %sub65 = sub nsw i32 %48, %47
  store i32 %sub65, ptr %k, align 4, !tbaa !8
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %50 = load i32, ptr %need, align 4, !tbaa !8
  %shl66 = shl i32 %49, %50
  %51 = load i32, ptr %x, align 4, !tbaa !8
  %52 = load i32, ptr %k, align 4, !tbaa !8
  %shr67 = ashr i32 %51, %52
  %53 = load i32, ptr %need, align 4, !tbaa !8
  %shl68 = shl i32 1, %53
  %sub69 = sub nsw i32 %shl68, 1
  %and70 = and i32 %shr67, %sub69
  %or71 = or i32 %shl66, %and70
  store i32 %or71, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %need, align 4, !tbaa !8
  br label %if.end72

if.end72:                                         ; preds = %if.else64, %if.then58
  br label %while.cond35, !llvm.loop !27

while.end:                                        ; preds = %land.end
  %54 = load i32, ptr %done, align 4, !tbaa !8
  %tobool73 = icmp ne i32 %54, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %while.end
  br label %while.cond, !llvm.loop !26

if.end75:                                         ; preds = %while.end
  %55 = load i32, ptr %j, align 4, !tbaa !8
  %56 = load i32, ptr %v, align 4, !tbaa !8
  %cmp76 = icmp sgt i32 %55, %56
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.end75
  %57 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %57, ptr %v, align 4, !tbaa !8
  br label %if.end85

if.else79:                                        ; preds = %if.end75
  %58 = load i32, ptr %v, align 4, !tbaa !8
  %59 = load i32, ptr %n, align 4, !tbaa !8
  %cmp80 = icmp slt i32 %58, %59
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.else79
  %60 = load i64, ptr %count, align 8, !tbaa !10
  %inc83 = add i64 %60, 1
  store i64 %inc83, ptr %count, align 8, !tbaa !10
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.else79
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then78
  br label %while.cond, !llvm.loop !26

while.end86:                                      ; preds = %while.cond
  br label %if.end105

if.else87:                                        ; preds = %cond.end
  store i64 0, ptr %count, align 8, !tbaa !10
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc102, %if.else87
  %61 = load ptr, ptr %p, align 8, !tbaa !4
  %62 = load i8, ptr %61, align 1, !tbaa !12
  %conv89 = sext i8 %62 to i32
  %cmp90 = icmp ne i32 %conv89, 10
  br i1 %cmp90, label %land.rhs92, label %land.end96

land.rhs92:                                       ; preds = %for.cond88
  %63 = load ptr, ptr %p, align 8, !tbaa !4
  %64 = load i8, ptr %63, align 1, !tbaa !12
  %conv93 = sext i8 %64 to i32
  %cmp94 = icmp ne i32 %conv93, 0
  br label %land.end96

land.end96:                                       ; preds = %land.rhs92, %for.cond88
  %65 = phi i1 [ false, %for.cond88 ], [ %cmp94, %land.rhs92 ]
  br i1 %65, label %for.body97, label %for.end104

for.body97:                                       ; preds = %land.end96
  %66 = load ptr, ptr %p, align 8, !tbaa !4
  %67 = load i8, ptr %66, align 1, !tbaa !12
  %conv98 = sext i8 %67 to i32
  %sub99 = sub nsw i32 %conv98, 63
  %idxprom = sext i32 %sub99 to i64
  %arrayidx100 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom
  %68 = load i32, ptr %arrayidx100, align 4, !tbaa !8
  %conv101 = sext i32 %68 to i64
  %69 = load i64, ptr %count, align 8, !tbaa !10
  %add = add i64 %69, %conv101
  store i64 %add, ptr %count, align 8, !tbaa !10
  br label %for.inc102

for.inc102:                                       ; preds = %for.body97
  %70 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr103 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8, !tbaa !4
  br label %for.cond88, !llvm.loop !28

for.end104:                                       ; preds = %land.end96
  br label %if.end105

if.end105:                                        ; preds = %for.end104, %while.end86
  %71 = load i64, ptr %count, align 8, !tbaa !10
  %72 = load ptr, ptr %pe.addr, align 8, !tbaa !4
  store i64 %71, ptr %72, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @stringtograph(ptr noundef %s, ptr noundef %g, i32 noundef %m) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %x = alloca i32, align 4
  %nb = alloca i32, align 4
  %need = alloca i32, align 4
  %ii = alloca i64, align 8
  %gi = alloca ptr, align 8
  %gj = alloca ptr, align 8
  %done = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gi) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @graphsize(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 58
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx3, align 1, !tbaa !12
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %7 = phi i1 [ true, %if.end ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  %idx.ext = sext i32 %lor.ext to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %cmp7 = icmp sle i32 %8, 62
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp9 = icmp sle i32 %9, 258047
  %10 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %idx.ext12 = sext i32 %cond11 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext12
  store ptr %add.ptr13, ptr %p, align 8, !tbaa !4
  %11 = load i32, ptr %m.addr, align 4, !tbaa !8
  %shl = shl i32 %11, 5
  %12 = load i32, ptr %n, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %shl, %12
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %cond.end
  call void @gt_abort(ptr noundef @.str.15)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %cond.end
  %13 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv18 = sext i32 %13 to i64
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %conv19 = sext i32 %14 to i64
  %mul = mul i64 %conv18, %conv19
  store i64 %mul, ptr %ii, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end17
  %15 = load i64, ptr %ii, align 8, !tbaa !10
  %dec = add i64 %15, -1
  store i64 %dec, ptr %ii, align 8, !tbaa !10
  %cmp20 = icmp ugt i64 %dec, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %17 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx22 = getelementptr inbounds i32, ptr %16, i64 %17
  store i32 0, ptr %arrayidx22, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i32, ptr %18, i64 0
  store i32 0, ptr %arrayidx23, align 4, !tbaa !8
  %19 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx24, align 1, !tbaa !12
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp ne i32 %conv25, 58
  br i1 %cmp26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %21 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx28, align 1, !tbaa !12
  %conv29 = sext i8 %22 to i32
  %cmp30 = icmp ne i32 %conv29, 38
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %land.lhs.true
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc70, %if.then32
  %23 = load i32, ptr %j, align 4, !tbaa !8
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %23, %24
  br i1 %cmp34, label %for.body36, label %for.end72

for.body36:                                       ; preds = %for.cond33
  %25 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %26 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv37 = sext i32 %26 to i64
  %27 = load i32, ptr %j, align 4, !tbaa !8
  %conv38 = sext i32 %27 to i64
  %mul39 = mul i64 %conv37, %conv38
  %add.ptr40 = getelementptr inbounds i32, ptr %25, i64 %mul39
  store ptr %add.ptr40, ptr %gj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body36
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %29 = load i32, ptr %j, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %28, %29
  br i1 %cmp42, label %for.body44, label %for.end69

for.body44:                                       ; preds = %for.cond41
  %30 = load i32, ptr %k, align 4, !tbaa !8
  %dec45 = add nsw i32 %30, -1
  store i32 %dec45, ptr %k, align 4, !tbaa !8
  %cmp46 = icmp eq i32 %dec45, 0
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.body44
  store i32 6, ptr %k, align 4, !tbaa !8
  %31 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %32 = load i8, ptr %31, align 1, !tbaa !12
  %conv49 = sext i8 %32 to i32
  %sub = sub nsw i32 %conv49, 63
  store i32 %sub, ptr %x, align 4, !tbaa !8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.body44
  %33 = load i32, ptr %x, align 4, !tbaa !8
  %and = and i32 %33, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then51, label %if.end67

if.then51:                                        ; preds = %if.end50
  %34 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %35 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv52 = sext i32 %35 to i64
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %conv53 = sext i32 %36 to i64
  %mul54 = mul i64 %conv52, %conv53
  %add.ptr55 = getelementptr inbounds i32, ptr %34, i64 %mul54
  store ptr %add.ptr55, ptr %gi, align 8, !tbaa !4
  %37 = load i32, ptr %j, align 4, !tbaa !8
  %and56 = and i32 %37, 31
  %idxprom = sext i32 %and56 to i64
  %arrayidx57 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom
  %38 = load i32, ptr %arrayidx57, align 4, !tbaa !8
  %39 = load ptr, ptr %gi, align 8, !tbaa !4
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %shr = ashr i32 %40, 5
  %idxprom58 = sext i32 %shr to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %39, i64 %idxprom58
  %41 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %or = or i32 %41, %38
  store i32 %or, ptr %arrayidx59, align 4, !tbaa !8
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %and60 = and i32 %42, 31
  %idxprom61 = sext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom61
  %43 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %44 = load ptr, ptr %gj, align 8, !tbaa !4
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %shr63 = ashr i32 %45, 5
  %idxprom64 = sext i32 %shr63 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %44, i64 %idxprom64
  %46 = load i32, ptr %arrayidx65, align 4, !tbaa !8
  %or66 = or i32 %46, %43
  store i32 %or66, ptr %arrayidx65, align 4, !tbaa !8
  br label %if.end67

if.end67:                                         ; preds = %if.then51, %if.end50
  %47 = load i32, ptr %x, align 4, !tbaa !8
  %shl68 = shl i32 %47, 1
  store i32 %shl68, ptr %x, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %48 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond41, !llvm.loop !30

for.end69:                                        ; preds = %for.cond41
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %inc71 = add nsw i32 %49, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !8
  br label %for.cond33, !llvm.loop !31

for.end72:                                        ; preds = %for.cond33
  br label %if.end224

if.else:                                          ; preds = %land.lhs.true, %for.end
  %50 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx73 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx73, align 1, !tbaa !12
  %conv74 = sext i8 %51 to i32
  %cmp75 = icmp eq i32 %conv74, 38
  br i1 %cmp75, label %if.then77, label %if.else116

if.then77:                                        ; preds = %if.else
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc113, %if.then77
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %53 = load i32, ptr %n, align 4, !tbaa !8
  %cmp79 = icmp slt i32 %52, %53
  br i1 %cmp79, label %for.body81, label %for.end115

for.body81:                                       ; preds = %for.cond78
  %54 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %55 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv82 = sext i32 %55 to i64
  %56 = load i32, ptr %i, align 4, !tbaa !8
  %conv83 = sext i32 %56 to i64
  %mul84 = mul i64 %conv82, %conv83
  %add.ptr85 = getelementptr inbounds i32, ptr %54, i64 %mul84
  store ptr %add.ptr85, ptr %gi, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc110, %for.body81
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %58 = load i32, ptr %n, align 4, !tbaa !8
  %cmp87 = icmp slt i32 %57, %58
  br i1 %cmp87, label %for.body89, label %for.end112

for.body89:                                       ; preds = %for.cond86
  %59 = load i32, ptr %k, align 4, !tbaa !8
  %dec90 = add nsw i32 %59, -1
  store i32 %dec90, ptr %k, align 4, !tbaa !8
  %cmp91 = icmp eq i32 %dec90, 0
  br i1 %cmp91, label %if.then93, label %if.end97

if.then93:                                        ; preds = %for.body89
  store i32 6, ptr %k, align 4, !tbaa !8
  %60 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr94 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr94, ptr %p, align 8, !tbaa !4
  %61 = load i8, ptr %60, align 1, !tbaa !12
  %conv95 = sext i8 %61 to i32
  %sub96 = sub nsw i32 %conv95, 63
  store i32 %sub96, ptr %x, align 4, !tbaa !8
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %for.body89
  %62 = load i32, ptr %x, align 4, !tbaa !8
  %and98 = and i32 %62, 32
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then100, label %if.end108

if.then100:                                       ; preds = %if.end97
  %63 = load i32, ptr %j, align 4, !tbaa !8
  %and101 = and i32 %63, 31
  %idxprom102 = sext i32 %and101 to i64
  %arrayidx103 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom102
  %64 = load i32, ptr %arrayidx103, align 4, !tbaa !8
  %65 = load ptr, ptr %gi, align 8, !tbaa !4
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %shr104 = ashr i32 %66, 5
  %idxprom105 = sext i32 %shr104 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %65, i64 %idxprom105
  %67 = load i32, ptr %arrayidx106, align 4, !tbaa !8
  %or107 = or i32 %67, %64
  store i32 %or107, ptr %arrayidx106, align 4, !tbaa !8
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end97
  %68 = load i32, ptr %x, align 4, !tbaa !8
  %shl109 = shl i32 %68, 1
  store i32 %shl109, ptr %x, align 4, !tbaa !8
  br label %for.inc110

for.inc110:                                       ; preds = %if.end108
  %69 = load i32, ptr %j, align 4, !tbaa !8
  %inc111 = add nsw i32 %69, 1
  store i32 %inc111, ptr %j, align 4, !tbaa !8
  br label %for.cond86, !llvm.loop !32

for.end112:                                       ; preds = %for.cond86
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %inc114 = add nsw i32 %70, 1
  store i32 %inc114, ptr %i, align 4, !tbaa !8
  br label %for.cond78, !llvm.loop !33

for.end115:                                       ; preds = %for.cond78
  br label %if.end223

if.else116:                                       ; preds = %if.else
  %71 = load i32, ptr %n, align 4, !tbaa !8
  %sub117 = sub nsw i32 %71, 1
  store i32 %sub117, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc122, %if.else116
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %cmp119 = icmp ne i32 %72, 0
  br i1 %cmp119, label %for.body121, label %for.end125

for.body121:                                      ; preds = %for.cond118
  br label %for.inc122

for.inc122:                                       ; preds = %for.body121
  %73 = load i32, ptr %i, align 4, !tbaa !8
  %shr123 = ashr i32 %73, 1
  store i32 %shr123, ptr %i, align 4, !tbaa !8
  %74 = load i32, ptr %nb, align 4, !tbaa !8
  %inc124 = add nsw i32 %74, 1
  store i32 %inc124, ptr %nb, align 4, !tbaa !8
  br label %for.cond118, !llvm.loop !34

for.end125:                                       ; preds = %for.cond118
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %v, align 4, !tbaa !8
  store i32 0, ptr %done, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end221, %if.then189, %if.then136, %for.end125
  %75 = load i32, ptr %done, align 4, !tbaa !8
  %tobool126 = icmp ne i32 %75, 0
  %lnot = xor i1 %tobool126, true
  br i1 %lnot, label %while.body, label %while.end222

while.body:                                       ; preds = %while.cond
  %76 = load i32, ptr %k, align 4, !tbaa !8
  %cmp127 = icmp eq i32 %76, 0
  br i1 %cmp127, label %if.then129, label %if.end140

if.then129:                                       ; preds = %while.body
  %77 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr130 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr130, ptr %p, align 8, !tbaa !4
  %78 = load i8, ptr %77, align 1, !tbaa !12
  %conv131 = sext i8 %78 to i32
  store i32 %conv131, ptr %x, align 4, !tbaa !8
  %79 = load i32, ptr %x, align 4, !tbaa !8
  %cmp132 = icmp eq i32 %79, 10
  br i1 %cmp132, label %if.then136, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then129
  %80 = load i32, ptr %x, align 4, !tbaa !8
  %cmp134 = icmp eq i32 %80, 0
  br i1 %cmp134, label %if.then136, label %if.else137

if.then136:                                       ; preds = %lor.lhs.false, %if.then129
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !35

if.else137:                                       ; preds = %lor.lhs.false
  %81 = load i32, ptr %x, align 4, !tbaa !8
  %sub138 = sub nsw i32 %81, 63
  store i32 %sub138, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end139

if.end139:                                        ; preds = %if.else137
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %while.body
  %82 = load i32, ptr %x, align 4, !tbaa !8
  %83 = load i32, ptr %k, align 4, !tbaa !8
  %sub141 = sub nsw i32 %83, 1
  %shl142 = shl i32 1, %sub141
  %and143 = and i32 %82, %shl142
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %if.then145, label %if.end147

if.then145:                                       ; preds = %if.end140
  %84 = load i32, ptr %v, align 4, !tbaa !8
  %inc146 = add nsw i32 %84, 1
  store i32 %inc146, ptr %v, align 4, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end140
  %85 = load i32, ptr %k, align 4, !tbaa !8
  %dec148 = add nsw i32 %85, -1
  store i32 %dec148, ptr %k, align 4, !tbaa !8
  %86 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %86, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %while.cond149

while.cond149:                                    ; preds = %if.end187, %if.then165, %if.end147
  %87 = load i32, ptr %need, align 4, !tbaa !8
  %cmp150 = icmp sgt i32 %87, 0
  br i1 %cmp150, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond149
  %88 = load i32, ptr %done, align 4, !tbaa !8
  %tobool152 = icmp ne i32 %88, 0
  %lnot153 = xor i1 %tobool152, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond149
  %89 = phi i1 [ false, %while.cond149 ], [ %lnot153, %land.rhs ]
  br i1 %89, label %while.body154, label %while.end

while.body154:                                    ; preds = %land.end
  %90 = load i32, ptr %k, align 4, !tbaa !8
  %cmp155 = icmp eq i32 %90, 0
  br i1 %cmp155, label %if.then157, label %if.end169

if.then157:                                       ; preds = %while.body154
  %91 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr158 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr158, ptr %p, align 8, !tbaa !4
  %92 = load i8, ptr %91, align 1, !tbaa !12
  %conv159 = sext i8 %92 to i32
  store i32 %conv159, ptr %x, align 4, !tbaa !8
  %93 = load i32, ptr %x, align 4, !tbaa !8
  %cmp160 = icmp eq i32 %93, 10
  br i1 %cmp160, label %if.then165, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %if.then157
  %94 = load i32, ptr %x, align 4, !tbaa !8
  %cmp163 = icmp eq i32 %94, 0
  br i1 %cmp163, label %if.then165, label %if.else166

if.then165:                                       ; preds = %lor.lhs.false162, %if.then157
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond149, !llvm.loop !36

if.else166:                                       ; preds = %lor.lhs.false162
  %95 = load i32, ptr %x, align 4, !tbaa !8
  %sub167 = sub nsw i32 %95, 63
  store i32 %sub167, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end168

if.end168:                                        ; preds = %if.else166
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %while.body154
  %96 = load i32, ptr %need, align 4, !tbaa !8
  %97 = load i32, ptr %k, align 4, !tbaa !8
  %cmp170 = icmp sge i32 %96, %97
  br i1 %cmp170, label %if.then172, label %if.else179

if.then172:                                       ; preds = %if.end169
  %98 = load i32, ptr %j, align 4, !tbaa !8
  %99 = load i32, ptr %k, align 4, !tbaa !8
  %shl173 = shl i32 %98, %99
  %100 = load i32, ptr %x, align 4, !tbaa !8
  %101 = load i32, ptr %k, align 4, !tbaa !8
  %shl174 = shl i32 1, %101
  %sub175 = sub nsw i32 %shl174, 1
  %and176 = and i32 %100, %sub175
  %or177 = or i32 %shl173, %and176
  store i32 %or177, ptr %j, align 4, !tbaa !8
  %102 = load i32, ptr %k, align 4, !tbaa !8
  %103 = load i32, ptr %need, align 4, !tbaa !8
  %sub178 = sub nsw i32 %103, %102
  store i32 %sub178, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %if.end187

if.else179:                                       ; preds = %if.end169
  %104 = load i32, ptr %need, align 4, !tbaa !8
  %105 = load i32, ptr %k, align 4, !tbaa !8
  %sub180 = sub nsw i32 %105, %104
  store i32 %sub180, ptr %k, align 4, !tbaa !8
  %106 = load i32, ptr %j, align 4, !tbaa !8
  %107 = load i32, ptr %need, align 4, !tbaa !8
  %shl181 = shl i32 %106, %107
  %108 = load i32, ptr %x, align 4, !tbaa !8
  %109 = load i32, ptr %k, align 4, !tbaa !8
  %shr182 = ashr i32 %108, %109
  %110 = load i32, ptr %need, align 4, !tbaa !8
  %shl183 = shl i32 1, %110
  %sub184 = sub nsw i32 %shl183, 1
  %and185 = and i32 %shr182, %sub184
  %or186 = or i32 %shl181, %and185
  store i32 %or186, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %need, align 4, !tbaa !8
  br label %if.end187

if.end187:                                        ; preds = %if.else179, %if.then172
  br label %while.cond149, !llvm.loop !36

while.end:                                        ; preds = %land.end
  %111 = load i32, ptr %done, align 4, !tbaa !8
  %tobool188 = icmp ne i32 %111, 0
  br i1 %tobool188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %while.end
  br label %while.cond, !llvm.loop !35

if.end190:                                        ; preds = %while.end
  %112 = load i32, ptr %j, align 4, !tbaa !8
  %113 = load i32, ptr %v, align 4, !tbaa !8
  %cmp191 = icmp sgt i32 %112, %113
  br i1 %cmp191, label %if.then193, label %if.else194

if.then193:                                       ; preds = %if.end190
  %114 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %114, ptr %v, align 4, !tbaa !8
  br label %if.end221

if.else194:                                       ; preds = %if.end190
  %115 = load i32, ptr %v, align 4, !tbaa !8
  %116 = load i32, ptr %n, align 4, !tbaa !8
  %cmp195 = icmp slt i32 %115, %116
  br i1 %cmp195, label %if.then197, label %if.end220

if.then197:                                       ; preds = %if.else194
  %117 = load i32, ptr %j, align 4, !tbaa !8
  %and198 = and i32 %117, 31
  %idxprom199 = sext i32 %and198 to i64
  %arrayidx200 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom199
  %118 = load i32, ptr %arrayidx200, align 4, !tbaa !8
  %119 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %120 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv201 = sext i32 %120 to i64
  %121 = load i32, ptr %v, align 4, !tbaa !8
  %conv202 = sext i32 %121 to i64
  %mul203 = mul i64 %conv201, %conv202
  %add.ptr204 = getelementptr inbounds i32, ptr %119, i64 %mul203
  %122 = load i32, ptr %j, align 4, !tbaa !8
  %shr205 = ashr i32 %122, 5
  %idxprom206 = sext i32 %shr205 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %add.ptr204, i64 %idxprom206
  %123 = load i32, ptr %arrayidx207, align 4, !tbaa !8
  %or208 = or i32 %123, %118
  store i32 %or208, ptr %arrayidx207, align 4, !tbaa !8
  %124 = load i32, ptr %v, align 4, !tbaa !8
  %and209 = and i32 %124, 31
  %idxprom210 = sext i32 %and209 to i64
  %arrayidx211 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom210
  %125 = load i32, ptr %arrayidx211, align 4, !tbaa !8
  %126 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %127 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv212 = sext i32 %127 to i64
  %128 = load i32, ptr %j, align 4, !tbaa !8
  %conv213 = sext i32 %128 to i64
  %mul214 = mul i64 %conv212, %conv213
  %add.ptr215 = getelementptr inbounds i32, ptr %126, i64 %mul214
  %129 = load i32, ptr %v, align 4, !tbaa !8
  %shr216 = ashr i32 %129, 5
  %idxprom217 = sext i32 %shr216 to i64
  %arrayidx218 = getelementptr inbounds i32, ptr %add.ptr215, i64 %idxprom217
  %130 = load i32, ptr %arrayidx218, align 4, !tbaa !8
  %or219 = or i32 %130, %125
  store i32 %or219, ptr %arrayidx218, align 4, !tbaa !8
  br label %if.end220

if.end220:                                        ; preds = %if.then197, %if.else194
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then193
  br label %while.cond, !llvm.loop !35

while.end222:                                     ; preds = %while.cond
  br label %if.end223

if.end223:                                        ; preds = %while.end222, %for.end115
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %for.end72
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end224, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gi) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @stringtograph_inc(ptr noundef %s, ptr noundef %g, i32 noundef %m, ptr noundef %prevg, i32 noundef %prevn) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %prevg.addr = alloca ptr, align 8
  %prevn.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca i32, align 4
  %x = alloca i32, align 4
  %nb = alloca i32, align 4
  %need = alloca i32, align 4
  %ii = alloca i64, align 8
  %gi = alloca ptr, align 8
  %gj = alloca ptr, align 8
  %done = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store ptr %prevg, ptr %prevg.addr, align 8, !tbaa !4
  store i32 %prevn, ptr %prevn.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gi) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 59
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @gt_abort(ptr noundef @.str.16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 59
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %5 = load i32, ptr %prevn.addr, align 4, !tbaa !8
  store i32 %5, ptr %n, align 4, !tbaa !8
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  %7 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv7 = sext i32 %7 to i64
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %conv8 = sext i32 %8 to i64
  %mul = mul i64 %conv7, %conv8
  store i64 %mul, ptr %ii, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then6
  %9 = load i64, ptr %ii, align 8, !tbaa !10
  %dec = add i64 %9, -1
  store i64 %dec, ptr %ii, align 8, !tbaa !10
  %cmp9 = icmp ugt i64 %dec, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %11 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds i32, ptr %10, i64 %11
  %12 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %13 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %14 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx12 = getelementptr inbounds i32, ptr %13, i64 %14
  store i32 %12, ptr %arrayidx12, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i32, ptr %15, i64 0
  %16 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  %17 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i32, ptr %17, i64 0
  store i32 %16, ptr %arrayidx14, align 4, !tbaa !8
  br label %if.end42

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @graphsize(ptr noundef %18)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %19 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx15, align 1, !tbaa !12
  %conv16 = sext i8 %21 to i32
  %cmp17 = icmp eq i32 %conv16, 58
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %22 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx19, align 1, !tbaa !12
  %conv20 = sext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv20, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp21, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  %idx.ext = sext i32 %lor.ext to i64
  %add.ptr23 = getelementptr inbounds i8, ptr %19, i64 %idx.ext
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %cmp24 = icmp sle i32 %25, 62
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %cmp26 = icmp sle i32 %26, 258047
  %27 = zext i1 %cmp26 to i64
  %cond = select i1 %cmp26, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %idx.ext29 = sext i32 %cond28 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.ext29
  store ptr %add.ptr30, ptr %p, align 8, !tbaa !4
  %28 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv31 = sext i32 %28 to i64
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %conv32 = sext i32 %29 to i64
  %mul33 = mul i64 %conv31, %conv32
  store i64 %mul33, ptr %ii, align 8, !tbaa !10
  br label %for.cond34

for.cond34:                                       ; preds = %for.body38, %cond.end
  %30 = load i64, ptr %ii, align 8, !tbaa !10
  %dec35 = add i64 %30, -1
  store i64 %dec35, ptr %ii, align 8, !tbaa !10
  %cmp36 = icmp ugt i64 %dec35, 0
  br i1 %cmp36, label %for.body38, label %for.end40

for.body38:                                       ; preds = %for.cond34
  %31 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %32 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds i32, ptr %31, i64 %32
  store i32 0, ptr %arrayidx39, align 4, !tbaa !8
  br label %for.cond34, !llvm.loop !38

for.end40:                                        ; preds = %for.cond34
  %33 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %arrayidx41 = getelementptr inbounds i32, ptr %33, i64 0
  store i32 0, ptr %arrayidx41, align 4, !tbaa !8
  br label %if.end42

if.end42:                                         ; preds = %for.end40, %for.end
  %34 = load i32, ptr %n, align 4, !tbaa !8
  %cmp43 = icmp eq i32 %34, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %35 = load i32, ptr %m.addr, align 4, !tbaa !8
  %shl = shl i32 %35, 5
  %36 = load i32, ptr %n, align 4, !tbaa !8
  %cmp47 = icmp slt i32 %shl, %36
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @gt_abort(ptr noundef @.str.17)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %37 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx51, align 1, !tbaa !12
  %conv52 = sext i8 %38 to i32
  %cmp53 = icmp ne i32 %conv52, 58
  br i1 %cmp53, label %land.lhs.true55, label %if.else111

land.lhs.true55:                                  ; preds = %if.end50
  %39 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx56 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx56, align 1, !tbaa !12
  %conv57 = sext i8 %40 to i32
  %cmp58 = icmp ne i32 %conv57, 59
  br i1 %cmp58, label %land.lhs.true60, label %if.else111

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %41 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx61, align 1, !tbaa !12
  %conv62 = sext i8 %42 to i32
  %cmp63 = icmp ne i32 %conv62, 38
  br i1 %cmp63, label %if.then65, label %if.else111

if.then65:                                        ; preds = %land.lhs.true60
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc108, %if.then65
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %44 = load i32, ptr %n, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %43, %44
  br i1 %cmp67, label %for.body69, label %for.end110

for.body69:                                       ; preds = %for.cond66
  %45 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %46 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv70 = sext i32 %46 to i64
  %47 = load i32, ptr %j, align 4, !tbaa !8
  %conv71 = sext i32 %47 to i64
  %mul72 = mul i64 %conv70, %conv71
  %add.ptr73 = getelementptr inbounds i32, ptr %45, i64 %mul72
  store ptr %add.ptr73, ptr %gj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc, %for.body69
  %48 = load i32, ptr %i, align 4, !tbaa !8
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %48, %49
  br i1 %cmp75, label %for.body77, label %for.end107

for.body77:                                       ; preds = %for.cond74
  %50 = load i32, ptr %k, align 4, !tbaa !8
  %dec78 = add nsw i32 %50, -1
  store i32 %dec78, ptr %k, align 4, !tbaa !8
  %cmp79 = icmp eq i32 %dec78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %for.body77
  store i32 6, ptr %k, align 4, !tbaa !8
  %51 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %52 = load i8, ptr %51, align 1, !tbaa !12
  %conv82 = sext i8 %52 to i32
  %sub = sub nsw i32 %conv82, 63
  store i32 %sub, ptr %x, align 4, !tbaa !8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %for.body77
  %53 = load i32, ptr %x, align 4, !tbaa !8
  %and = and i32 %53, 32
  %tobool84 = icmp ne i32 %and, 0
  br i1 %tobool84, label %if.then85, label %if.end105

if.then85:                                        ; preds = %if.end83
  %54 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %55 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv86 = sext i32 %55 to i64
  %56 = load i32, ptr %i, align 4, !tbaa !8
  %conv87 = sext i32 %56 to i64
  %mul88 = mul i64 %conv86, %conv87
  %add.ptr89 = getelementptr inbounds i32, ptr %54, i64 %mul88
  store ptr %add.ptr89, ptr %gi, align 8, !tbaa !4
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %and90 = and i32 %57, 31
  %idxprom = sext i32 %and90 to i64
  %arrayidx91 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom
  %58 = load i32, ptr %arrayidx91, align 4, !tbaa !8
  %59 = load ptr, ptr %gi, align 8, !tbaa !4
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %shr = ashr i32 %60, 5
  %idxprom92 = sext i32 %shr to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %59, i64 %idxprom92
  %61 = load i32, ptr %arrayidx93, align 4, !tbaa !8
  %xor = xor i32 %61, %58
  store i32 %xor, ptr %arrayidx93, align 4, !tbaa !8
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %63 = load i32, ptr %j, align 4, !tbaa !8
  %cmp94 = icmp ne i32 %62, %63
  br i1 %cmp94, label %if.then96, label %if.end104

if.then96:                                        ; preds = %if.then85
  %64 = load i32, ptr %i, align 4, !tbaa !8
  %and97 = and i32 %64, 31
  %idxprom98 = sext i32 %and97 to i64
  %arrayidx99 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom98
  %65 = load i32, ptr %arrayidx99, align 4, !tbaa !8
  %66 = load ptr, ptr %gj, align 8, !tbaa !4
  %67 = load i32, ptr %i, align 4, !tbaa !8
  %shr100 = ashr i32 %67, 5
  %idxprom101 = sext i32 %shr100 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %66, i64 %idxprom101
  %68 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  %xor103 = xor i32 %68, %65
  store i32 %xor103, ptr %arrayidx102, align 4, !tbaa !8
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.then85
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end83
  %69 = load i32, ptr %x, align 4, !tbaa !8
  %shl106 = shl i32 %69, 1
  store i32 %shl106, ptr %x, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end105
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond74, !llvm.loop !39

for.end107:                                       ; preds = %for.cond74
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %71 = load i32, ptr %j, align 4, !tbaa !8
  %inc109 = add nsw i32 %71, 1
  store i32 %inc109, ptr %j, align 4, !tbaa !8
  br label %for.cond66, !llvm.loop !40

for.end110:                                       ; preds = %for.cond66
  br label %if.end266

if.else111:                                       ; preds = %land.lhs.true60, %land.lhs.true55, %if.end50
  %72 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx112 = getelementptr inbounds i8, ptr %72, i64 0
  %73 = load i8, ptr %arrayidx112, align 1, !tbaa !12
  %conv113 = sext i8 %73 to i32
  %cmp114 = icmp eq i32 %conv113, 38
  br i1 %cmp114, label %if.then116, label %if.else155

if.then116:                                       ; preds = %if.else111
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc152, %if.then116
  %74 = load i32, ptr %j, align 4, !tbaa !8
  %75 = load i32, ptr %n, align 4, !tbaa !8
  %cmp118 = icmp slt i32 %74, %75
  br i1 %cmp118, label %for.body120, label %for.end154

for.body120:                                      ; preds = %for.cond117
  %76 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %77 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv121 = sext i32 %77 to i64
  %78 = load i32, ptr %j, align 4, !tbaa !8
  %conv122 = sext i32 %78 to i64
  %mul123 = mul i64 %conv121, %conv122
  %add.ptr124 = getelementptr inbounds i32, ptr %76, i64 %mul123
  store ptr %add.ptr124, ptr %gj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc149, %for.body120
  %79 = load i32, ptr %i, align 4, !tbaa !8
  %80 = load i32, ptr %n, align 4, !tbaa !8
  %cmp126 = icmp slt i32 %79, %80
  br i1 %cmp126, label %for.body128, label %for.end151

for.body128:                                      ; preds = %for.cond125
  %81 = load i32, ptr %k, align 4, !tbaa !8
  %dec129 = add nsw i32 %81, -1
  store i32 %dec129, ptr %k, align 4, !tbaa !8
  %cmp130 = icmp eq i32 %dec129, 0
  br i1 %cmp130, label %if.then132, label %if.end136

if.then132:                                       ; preds = %for.body128
  store i32 6, ptr %k, align 4, !tbaa !8
  %82 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr133 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8, !tbaa !4
  %83 = load i8, ptr %82, align 1, !tbaa !12
  %conv134 = sext i8 %83 to i32
  %sub135 = sub nsw i32 %conv134, 63
  store i32 %sub135, ptr %x, align 4, !tbaa !8
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %for.body128
  %84 = load i32, ptr %x, align 4, !tbaa !8
  %and137 = and i32 %84, 32
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then139, label %if.end147

if.then139:                                       ; preds = %if.end136
  %85 = load i32, ptr %i, align 4, !tbaa !8
  %and140 = and i32 %85, 31
  %idxprom141 = sext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom141
  %86 = load i32, ptr %arrayidx142, align 4, !tbaa !8
  %87 = load ptr, ptr %gj, align 8, !tbaa !4
  %88 = load i32, ptr %i, align 4, !tbaa !8
  %shr143 = ashr i32 %88, 5
  %idxprom144 = sext i32 %shr143 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %87, i64 %idxprom144
  %89 = load i32, ptr %arrayidx145, align 4, !tbaa !8
  %xor146 = xor i32 %89, %86
  store i32 %xor146, ptr %arrayidx145, align 4, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.then139, %if.end136
  %90 = load i32, ptr %x, align 4, !tbaa !8
  %shl148 = shl i32 %90, 1
  store i32 %shl148, ptr %x, align 4, !tbaa !8
  br label %for.inc149

for.inc149:                                       ; preds = %if.end147
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %inc150 = add nsw i32 %91, 1
  store i32 %inc150, ptr %i, align 4, !tbaa !8
  br label %for.cond125, !llvm.loop !41

for.end151:                                       ; preds = %for.cond125
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %92 = load i32, ptr %j, align 4, !tbaa !8
  %inc153 = add nsw i32 %92, 1
  store i32 %inc153, ptr %j, align 4, !tbaa !8
  br label %for.cond117, !llvm.loop !42

for.end154:                                       ; preds = %for.cond117
  br label %if.end265

if.else155:                                       ; preds = %if.else111
  %93 = load i32, ptr %n, align 4, !tbaa !8
  %sub156 = sub nsw i32 %93, 1
  store i32 %sub156, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc161, %if.else155
  %94 = load i32, ptr %i, align 4, !tbaa !8
  %cmp158 = icmp ne i32 %94, 0
  br i1 %cmp158, label %for.body160, label %for.end164

for.body160:                                      ; preds = %for.cond157
  br label %for.inc161

for.inc161:                                       ; preds = %for.body160
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %shr162 = ashr i32 %95, 1
  store i32 %shr162, ptr %i, align 4, !tbaa !8
  %96 = load i32, ptr %nb, align 4, !tbaa !8
  %inc163 = add nsw i32 %96, 1
  store i32 %inc163, ptr %nb, align 4, !tbaa !8
  br label %for.cond157, !llvm.loop !43

for.end164:                                       ; preds = %for.cond157
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %v, align 4, !tbaa !8
  store i32 0, ptr %done, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end263, %if.then227, %if.then175, %for.end164
  %97 = load i32, ptr %done, align 4, !tbaa !8
  %tobool165 = icmp ne i32 %97, 0
  %lnot = xor i1 %tobool165, true
  br i1 %lnot, label %while.body, label %while.end264

while.body:                                       ; preds = %while.cond
  %98 = load i32, ptr %k, align 4, !tbaa !8
  %cmp166 = icmp eq i32 %98, 0
  br i1 %cmp166, label %if.then168, label %if.end179

if.then168:                                       ; preds = %while.body
  %99 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr169 = getelementptr inbounds i8, ptr %99, i32 1
  store ptr %incdec.ptr169, ptr %p, align 8, !tbaa !4
  %100 = load i8, ptr %99, align 1, !tbaa !12
  %conv170 = sext i8 %100 to i32
  store i32 %conv170, ptr %x, align 4, !tbaa !8
  %101 = load i32, ptr %x, align 4, !tbaa !8
  %cmp171 = icmp eq i32 %101, 10
  br i1 %cmp171, label %if.then175, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then168
  %102 = load i32, ptr %x, align 4, !tbaa !8
  %cmp173 = icmp eq i32 %102, 0
  br i1 %cmp173, label %if.then175, label %if.else176

if.then175:                                       ; preds = %lor.lhs.false, %if.then168
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !44

if.else176:                                       ; preds = %lor.lhs.false
  %103 = load i32, ptr %x, align 4, !tbaa !8
  %sub177 = sub nsw i32 %103, 63
  store i32 %sub177, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end178

if.end178:                                        ; preds = %if.else176
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %while.body
  %104 = load i32, ptr %x, align 4, !tbaa !8
  %105 = load i32, ptr %k, align 4, !tbaa !8
  %sub180 = sub nsw i32 %105, 1
  %shl181 = shl i32 1, %sub180
  %and182 = and i32 %104, %shl181
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then184, label %if.end186

if.then184:                                       ; preds = %if.end179
  %106 = load i32, ptr %v, align 4, !tbaa !8
  %inc185 = add nsw i32 %106, 1
  store i32 %inc185, ptr %v, align 4, !tbaa !8
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %if.end179
  %107 = load i32, ptr %k, align 4, !tbaa !8
  %dec187 = add nsw i32 %107, -1
  store i32 %dec187, ptr %k, align 4, !tbaa !8
  %108 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %108, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %while.cond188

while.cond188:                                    ; preds = %if.end225, %if.then204, %if.end186
  %109 = load i32, ptr %need, align 4, !tbaa !8
  %cmp189 = icmp sgt i32 %109, 0
  br i1 %cmp189, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond188
  %110 = load i32, ptr %done, align 4, !tbaa !8
  %tobool191 = icmp ne i32 %110, 0
  %lnot192 = xor i1 %tobool191, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond188
  %111 = phi i1 [ false, %while.cond188 ], [ %lnot192, %land.rhs ]
  br i1 %111, label %while.body193, label %while.end

while.body193:                                    ; preds = %land.end
  %112 = load i32, ptr %k, align 4, !tbaa !8
  %cmp194 = icmp eq i32 %112, 0
  br i1 %cmp194, label %if.then196, label %if.end208

if.then196:                                       ; preds = %while.body193
  %113 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr197 = getelementptr inbounds i8, ptr %113, i32 1
  store ptr %incdec.ptr197, ptr %p, align 8, !tbaa !4
  %114 = load i8, ptr %113, align 1, !tbaa !12
  %conv198 = sext i8 %114 to i32
  store i32 %conv198, ptr %x, align 4, !tbaa !8
  %115 = load i32, ptr %x, align 4, !tbaa !8
  %cmp199 = icmp eq i32 %115, 10
  br i1 %cmp199, label %if.then204, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %if.then196
  %116 = load i32, ptr %x, align 4, !tbaa !8
  %cmp202 = icmp eq i32 %116, 0
  br i1 %cmp202, label %if.then204, label %if.else205

if.then204:                                       ; preds = %lor.lhs.false201, %if.then196
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond188, !llvm.loop !45

if.else205:                                       ; preds = %lor.lhs.false201
  %117 = load i32, ptr %x, align 4, !tbaa !8
  %sub206 = sub nsw i32 %117, 63
  store i32 %sub206, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end207

if.end207:                                        ; preds = %if.else205
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %while.body193
  %118 = load i32, ptr %need, align 4, !tbaa !8
  %119 = load i32, ptr %k, align 4, !tbaa !8
  %cmp209 = icmp sge i32 %118, %119
  br i1 %cmp209, label %if.then211, label %if.else217

if.then211:                                       ; preds = %if.end208
  %120 = load i32, ptr %j, align 4, !tbaa !8
  %121 = load i32, ptr %k, align 4, !tbaa !8
  %shl212 = shl i32 %120, %121
  %122 = load i32, ptr %x, align 4, !tbaa !8
  %123 = load i32, ptr %k, align 4, !tbaa !8
  %shl213 = shl i32 1, %123
  %sub214 = sub nsw i32 %shl213, 1
  %and215 = and i32 %122, %sub214
  %or = or i32 %shl212, %and215
  store i32 %or, ptr %j, align 4, !tbaa !8
  %124 = load i32, ptr %k, align 4, !tbaa !8
  %125 = load i32, ptr %need, align 4, !tbaa !8
  %sub216 = sub nsw i32 %125, %124
  store i32 %sub216, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %if.end225

if.else217:                                       ; preds = %if.end208
  %126 = load i32, ptr %need, align 4, !tbaa !8
  %127 = load i32, ptr %k, align 4, !tbaa !8
  %sub218 = sub nsw i32 %127, %126
  store i32 %sub218, ptr %k, align 4, !tbaa !8
  %128 = load i32, ptr %j, align 4, !tbaa !8
  %129 = load i32, ptr %need, align 4, !tbaa !8
  %shl219 = shl i32 %128, %129
  %130 = load i32, ptr %x, align 4, !tbaa !8
  %131 = load i32, ptr %k, align 4, !tbaa !8
  %shr220 = ashr i32 %130, %131
  %132 = load i32, ptr %need, align 4, !tbaa !8
  %shl221 = shl i32 1, %132
  %sub222 = sub nsw i32 %shl221, 1
  %and223 = and i32 %shr220, %sub222
  %or224 = or i32 %shl219, %and223
  store i32 %or224, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %need, align 4, !tbaa !8
  br label %if.end225

if.end225:                                        ; preds = %if.else217, %if.then211
  br label %while.cond188, !llvm.loop !45

while.end:                                        ; preds = %land.end
  %133 = load i32, ptr %done, align 4, !tbaa !8
  %tobool226 = icmp ne i32 %133, 0
  br i1 %tobool226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %while.end
  br label %while.cond, !llvm.loop !44

if.end228:                                        ; preds = %while.end
  %134 = load i32, ptr %j, align 4, !tbaa !8
  %135 = load i32, ptr %v, align 4, !tbaa !8
  %cmp229 = icmp sgt i32 %134, %135
  br i1 %cmp229, label %if.then231, label %if.else232

if.then231:                                       ; preds = %if.end228
  %136 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %136, ptr %v, align 4, !tbaa !8
  br label %if.end263

if.else232:                                       ; preds = %if.end228
  %137 = load i32, ptr %v, align 4, !tbaa !8
  %138 = load i32, ptr %n, align 4, !tbaa !8
  %cmp233 = icmp slt i32 %137, %138
  br i1 %cmp233, label %if.then235, label %if.end262

if.then235:                                       ; preds = %if.else232
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %and236 = and i32 %139, 31
  %idxprom237 = sext i32 %and236 to i64
  %arrayidx238 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom237
  %140 = load i32, ptr %arrayidx238, align 4, !tbaa !8
  %141 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %142 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv239 = sext i32 %142 to i64
  %143 = load i32, ptr %v, align 4, !tbaa !8
  %conv240 = sext i32 %143 to i64
  %mul241 = mul i64 %conv239, %conv240
  %add.ptr242 = getelementptr inbounds i32, ptr %141, i64 %mul241
  %144 = load i32, ptr %j, align 4, !tbaa !8
  %shr243 = ashr i32 %144, 5
  %idxprom244 = sext i32 %shr243 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %add.ptr242, i64 %idxprom244
  %145 = load i32, ptr %arrayidx245, align 4, !tbaa !8
  %xor246 = xor i32 %145, %140
  store i32 %xor246, ptr %arrayidx245, align 4, !tbaa !8
  %146 = load i32, ptr %j, align 4, !tbaa !8
  %147 = load i32, ptr %v, align 4, !tbaa !8
  %cmp247 = icmp ne i32 %146, %147
  br i1 %cmp247, label %if.then249, label %if.end261

if.then249:                                       ; preds = %if.then235
  %148 = load i32, ptr %v, align 4, !tbaa !8
  %and250 = and i32 %148, 31
  %idxprom251 = sext i32 %and250 to i64
  %arrayidx252 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom251
  %149 = load i32, ptr %arrayidx252, align 4, !tbaa !8
  %150 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %151 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv253 = sext i32 %151 to i64
  %152 = load i32, ptr %j, align 4, !tbaa !8
  %conv254 = sext i32 %152 to i64
  %mul255 = mul i64 %conv253, %conv254
  %add.ptr256 = getelementptr inbounds i32, ptr %150, i64 %mul255
  %153 = load i32, ptr %v, align 4, !tbaa !8
  %shr257 = ashr i32 %153, 5
  %idxprom258 = sext i32 %shr257 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %add.ptr256, i64 %idxprom258
  %154 = load i32, ptr %arrayidx259, align 4, !tbaa !8
  %xor260 = xor i32 %154, %149
  store i32 %xor260, ptr %arrayidx259, align 4, !tbaa !8
  br label %if.end261

if.end261:                                        ; preds = %if.then249, %if.then235
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.else232
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.then231
  br label %while.cond, !llvm.loop !44

while.end264:                                     ; preds = %while.cond
  br label %if.end265

if.end265:                                        ; preds = %while.end264, %for.end154
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %for.end110
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end266, %if.then45
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gi) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @readgg(ptr noundef %f, ptr noundef %g, i32 noundef %reqm, ptr noundef %pm, ptr noundef %pn, ptr noundef %digraph) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %reqm.addr = alloca i32, align 4
  %pm.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %digraph.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %reqm, ptr %reqm.addr, align 4, !tbaa !8
  store ptr %pm, ptr %pm.addr, align 8, !tbaa !4
  store ptr %pn, ptr %pn.addr, align 8, !tbaa !4
  store ptr %digraph, ptr %digraph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call ptr @gtools_getline(ptr noundef %0)
  store ptr %call, ptr @readg_line, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @readg_line, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 58
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 2, ptr @readg_code, align 4, !tbaa !8
  %4 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !8
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 38
  br i1 %cmp6, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  store i32 128, ptr @readg_code, align 4, !tbaa !8
  %8 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 1, ptr %8, align 4, !tbaa !8
  %9 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr9, ptr %p, align 8, !tbaa !4
  br label %if.end11

if.else10:                                        ; preds = %if.else
  store i32 1, ptr @readg_code, align 4, !tbaa !8
  %10 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %10, align 4, !tbaa !8
  %11 = load ptr, ptr %s, align 8, !tbaa !4
  store ptr %11, ptr %p, align 8, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end12
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !12
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp sge i32 %conv13, 63
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %p, align 8, !tbaa !4
  %15 = load i8, ptr %14, align 1, !tbaa !12
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp sle i32 %conv16, 126
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %land.end
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv19 = sext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %while.end
  call void @gt_abort(ptr noundef @.str.18)
  br label %if.end29

if.else23:                                        ; preds = %while.end
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp ne i32 %conv24, 10
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else23
  call void @gt_abort(ptr noundef @.str.19)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then22
  %22 = load ptr, ptr %s, align 8, !tbaa !4
  %call30 = call i32 @graphsize(ptr noundef %22)
  store i32 %call30, ptr %n, align 4, !tbaa !8
  %23 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %23, 1
  br i1 %cmp31, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end29
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %cmp33 = icmp sle i32 %26, 62
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %27 = load i32, ptr %n, align 4, !tbaa !8
  %cmp35 = icmp sle i32 %27, 258047
  %28 = zext i1 %cmp35 to i64
  %cond = select i1 %cmp35, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv38 = sext i32 %cond37 to i64
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %conv39 = sext i32 %29 to i64
  %div = udiv i64 %conv39, 12
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %conv40 = sext i32 %30 to i64
  %sub = sub i64 %conv40, 1
  %mul = mul i64 %div, %sub
  %31 = load i32, ptr %n, align 4, !tbaa !8
  %conv41 = sext i32 %31 to i64
  %rem = urem i64 %conv41, 12
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %conv42 = sext i32 %32 to i64
  %sub43 = sub i64 %conv42, 1
  %mul44 = mul i64 %rem, %sub43
  %add = add i64 %mul44, 11
  %div45 = udiv i64 %add, 12
  %add46 = add i64 %mul, %div45
  %add47 = add i64 %conv38, %add46
  %cmp48 = icmp ne i64 %sub.ptr.sub, %add47
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %cond.end
  call void @gt_abort(ptr noundef @.str.20)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %cond.end, %if.end29
  %33 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp52 = icmp eq i32 %33, 128
  br i1 %cmp52, label %land.lhs.true54, label %if.end84

land.lhs.true54:                                  ; preds = %if.end51
  %34 = load ptr, ptr %p, align 8, !tbaa !4
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  %sub.ptr.lhs.cast55 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast56 = ptrtoint ptr %35 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %36 = load i32, ptr %n, align 4, !tbaa !8
  %cmp58 = icmp sle i32 %36, 62
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %land.lhs.true54
  br label %cond.end65

cond.false61:                                     ; preds = %land.lhs.true54
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %cmp62 = icmp sle i32 %37, 258047
  %38 = zext i1 %cmp62 to i64
  %cond64 = select i1 %cmp62, i32 4, i32 8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false61, %cond.true60
  %cond66 = phi i32 [ 1, %cond.true60 ], [ %cond64, %cond.false61 ]
  %add67 = add nsw i32 1, %cond66
  %conv68 = sext i32 %add67 to i64
  %39 = load i32, ptr %n, align 4, !tbaa !8
  %conv69 = sext i32 %39 to i64
  %40 = load i32, ptr %n, align 4, !tbaa !8
  %div70 = sdiv i32 %40, 6
  %conv71 = sext i32 %div70 to i64
  %mul72 = mul i64 %conv69, %conv71
  %41 = load i32, ptr %n, align 4, !tbaa !8
  %conv73 = sext i32 %41 to i64
  %42 = load i32, ptr %n, align 4, !tbaa !8
  %rem74 = srem i32 %42, 6
  %conv75 = sext i32 %rem74 to i64
  %mul76 = mul i64 %conv73, %conv75
  %add77 = add i64 %mul76, 5
  %div78 = udiv i64 %add77, 6
  %add79 = add i64 %mul72, %div78
  %add80 = add i64 %conv68, %add79
  %cmp81 = icmp ne i64 %sub.ptr.sub57, %add80
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %cond.end65
  call void @gt_abort(ptr noundef @.str.21)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %cond.end65, %if.end51
  %43 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %cmp85 = icmp sgt i32 %43, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.else91

land.lhs.true87:                                  ; preds = %if.end84
  %44 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %shl = shl i32 %44, 5
  %45 = load i32, ptr %n, align 4, !tbaa !8
  %cmp88 = icmp slt i32 %shl, %45
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %land.lhs.true87
  call void @gt_abort(ptr noundef @.str.22)
  br label %if.end100

if.else91:                                        ; preds = %land.lhs.true87, %if.end84
  %46 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %cmp92 = icmp sgt i32 %46, 0
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.else91
  %47 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  store i32 %47, ptr %m, align 4, !tbaa !8
  br label %if.end99

if.else95:                                        ; preds = %if.else91
  %48 = load i32, ptr %n, align 4, !tbaa !8
  %add96 = add nsw i32 %48, 32
  %sub97 = sub nsw i32 %add96, 1
  %div98 = sdiv i32 %sub97, 32
  store i32 %div98, ptr %m, align 4, !tbaa !8
  br label %if.end99

if.end99:                                         ; preds = %if.else95, %if.then94
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then90
  %49 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %cmp101 = icmp eq ptr %49, null
  br i1 %cmp101, label %if.then103, label %if.end113

if.then103:                                       ; preds = %if.end100
  %50 = load i32, ptr %n, align 4, !tbaa !8
  %conv104 = sext i32 %50 to i64
  %51 = load i32, ptr %m, align 4, !tbaa !8
  %conv105 = sext i32 %51 to i64
  %mul106 = mul i64 %conv105, 4
  %mul107 = mul i64 %conv104, %mul106
  %call108 = call noalias ptr @malloc(i64 noundef %mul107) #16
  store ptr %call108, ptr %g.addr, align 8, !tbaa !4
  %cmp109 = icmp eq ptr %call108, null
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.then103
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.then103
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end100
  %52 = load i32, ptr %n, align 4, !tbaa !8
  %53 = load ptr, ptr %pn.addr, align 8, !tbaa !4
  store i32 %52, ptr %53, align 4, !tbaa !8
  %54 = load i32, ptr %m, align 4, !tbaa !8
  %55 = load ptr, ptr %pm.addr, align 8, !tbaa !4
  store i32 %54, ptr %55, align 4, !tbaa !8
  %56 = load ptr, ptr %s, align 8, !tbaa !4
  %57 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %58 = load i32, ptr %m, align 4, !tbaa !8
  call void @stringtograph(ptr noundef %56, ptr noundef %57, i32 noundef %58)
  %59 = load ptr, ptr %g.addr, align 8, !tbaa !4
  store ptr %59, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  %60 = load ptr, ptr %retval, align 8
  ret ptr %60
}

; Function Attrs: nounwind uwtable
define ptr @readg(ptr noundef %f, ptr noundef %g, i32 noundef %reqm, ptr noundef %pm, ptr noundef %pn) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %reqm.addr = alloca i32, align 4
  %pm.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %digraph = alloca i32, align 4
  %gg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %reqm, ptr %reqm.addr, align 4, !tbaa !8
  store ptr %pm, ptr %pm.addr, align 8, !tbaa !4
  store ptr %pn, ptr %pn.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %digraph) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gg) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %2 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %pm.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pn.addr, align 8, !tbaa !4
  %call = call ptr @readgg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %digraph)
  store ptr %call, ptr %gg, align 8, !tbaa !4
  %5 = load ptr, ptr %gg, align 8, !tbaa !4
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %digraph, align 4, !tbaa !8
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.24)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %gg, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gg) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %digraph) #12
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define i32 @checkgline(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 59
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %t, align 4, !tbaa !8
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx6, align 1, !tbaa !12
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 38
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  store i32 128, ptr %t, align 4, !tbaa !8
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %add.ptr11, ptr %p, align 8, !tbaa !4
  br label %if.end

if.else12:                                        ; preds = %if.else
  store i32 1, ptr %t, align 4, !tbaa !8
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  store ptr %8, ptr %p, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !12
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp sge i32 %conv14, 63
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %12 = load i8, ptr %11, align 1, !tbaa !12
  %conv17 = sext i8 %12 to i32
  %cmp18 = icmp sle i32 %conv17, 126
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %while.end
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %18 = load i8, ptr %17, align 1, !tbaa !12
  %conv25 = sext i8 %18 to i32
  %cmp26 = icmp ne i32 %conv25, 10
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else24
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  %19 = load i32, ptr %t, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %19, 1
  br i1 %cmp31, label %if.then33, label %if.end53

if.then33:                                        ; preds = %if.end30
  %20 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @graphsize(ptr noundef %20)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %22 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %cmp34 = icmp sle i32 %23, 62
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then33
  br label %cond.end

cond.false:                                       ; preds = %if.then33
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %cmp36 = icmp sle i32 %24, 258047
  %25 = zext i1 %cmp36 to i64
  %cond = select i1 %cmp36, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond38 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv39 = sext i32 %cond38 to i64
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %conv40 = sext i32 %26 to i64
  %div = udiv i64 %conv40, 12
  %27 = load i32, ptr %n, align 4, !tbaa !8
  %conv41 = sext i32 %27 to i64
  %sub = sub i64 %conv41, 1
  %mul = mul i64 %div, %sub
  %28 = load i32, ptr %n, align 4, !tbaa !8
  %conv42 = sext i32 %28 to i64
  %rem = urem i64 %conv42, 12
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %conv43 = sext i32 %29 to i64
  %sub44 = sub i64 %conv43, 1
  %mul45 = mul i64 %rem, %sub44
  %add = add i64 %mul45, 11
  %div46 = udiv i64 %add, 12
  %add47 = add i64 %mul, %div46
  %add48 = add i64 %conv39, %add47
  %cmp49 = icmp ne i64 %sub.ptr.sub, %add48
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cond.end
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %cond.end
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end30
  %30 = load i32, ptr %t, align 4, !tbaa !8
  %cmp54 = icmp eq i32 %30, 128
  br i1 %cmp54, label %if.then56, label %if.end88

if.then56:                                        ; preds = %if.end53
  %31 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call57 = call i32 @graphsize(ptr noundef %31)
  store i32 %call57, ptr %n, align 4, !tbaa !8
  %32 = load ptr, ptr %p, align 8, !tbaa !4
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast58 = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast59 = ptrtoint ptr %33 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %34 = load i32, ptr %n, align 4, !tbaa !8
  %cmp61 = icmp sle i32 %34, 62
  br i1 %cmp61, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %if.then56
  br label %cond.end68

cond.false64:                                     ; preds = %if.then56
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %cmp65 = icmp sle i32 %35, 258047
  %36 = zext i1 %cmp65 to i64
  %cond67 = select i1 %cmp65, i32 4, i32 8
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false64, %cond.true63
  %cond69 = phi i32 [ 1, %cond.true63 ], [ %cond67, %cond.false64 ]
  %add70 = add nsw i32 1, %cond69
  %conv71 = sext i32 %add70 to i64
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %conv72 = sext i32 %37 to i64
  %38 = load i32, ptr %n, align 4, !tbaa !8
  %div73 = sdiv i32 %38, 6
  %conv74 = sext i32 %div73 to i64
  %mul75 = mul i64 %conv72, %conv74
  %39 = load i32, ptr %n, align 4, !tbaa !8
  %conv76 = sext i32 %39 to i64
  %40 = load i32, ptr %n, align 4, !tbaa !8
  %rem77 = srem i32 %40, 6
  %conv78 = sext i32 %rem77 to i64
  %mul79 = mul i64 %conv76, %conv78
  %add80 = add i64 %mul79, 5
  %div81 = udiv i64 %add80, 6
  %add82 = add i64 %mul75, %div81
  %add83 = add i64 %conv71, %add82
  %cmp84 = icmp ne i64 %sub.ptr.sub60, %add83
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %cond.end68
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %cond.end68
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end53
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then86, %if.then51, %if.then28, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define ptr @readgg_inc(ptr noundef %f, ptr noundef %g, i32 noundef %reqm, ptr noundef %pm, ptr noundef %pn, ptr noundef %prevg, i32 noundef %prevm, i32 noundef %prevn, ptr noundef %digraph) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %reqm.addr = alloca i32, align 4
  %pm.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %prevg.addr = alloca ptr, align 8
  %prevm.addr = alloca i32, align 4
  %prevn.addr = alloca i32, align 4
  %digraph.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %reqm, ptr %reqm.addr, align 4, !tbaa !8
  store ptr %pm, ptr %pm.addr, align 8, !tbaa !4
  store ptr %pn, ptr %pn.addr, align 8, !tbaa !4
  store ptr %prevg, ptr %prevg.addr, align 8, !tbaa !4
  store i32 %prevm, ptr %prevm.addr, align 4, !tbaa !8
  store i32 %prevn, ptr %prevn.addr, align 4, !tbaa !8
  store ptr %digraph, ptr %digraph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call ptr @gtools_getline(ptr noundef %0)
  store ptr %call, ptr @readg_line, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @readg_line, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 58
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 2, ptr @readg_code, align 4, !tbaa !8
  %4 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !8
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end20

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 59
  br i1 %cmp6, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  store i32 64, ptr @readg_code, align 4, !tbaa !8
  %8 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %8, align 4, !tbaa !8
  %9 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr9, ptr %p, align 8, !tbaa !4
  br label %if.end19

if.else10:                                        ; preds = %if.else
  %10 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx11, align 1, !tbaa !12
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 38
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else10
  store i32 128, ptr @readg_code, align 4, !tbaa !8
  %12 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 1, ptr %12, align 4, !tbaa !8
  %13 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %add.ptr16, ptr %p, align 8, !tbaa !4
  br label %if.end18

if.else17:                                        ; preds = %if.else10
  store i32 1, ptr @readg_code, align 4, !tbaa !8
  %14 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %14, align 4, !tbaa !8
  %15 = load ptr, ptr %s, align 8, !tbaa !4
  store ptr %15, ptr %p, align 8, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end20
  %16 = load ptr, ptr %p, align 8, !tbaa !4
  %17 = load i8, ptr %16, align 1, !tbaa !12
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp sge i32 %conv21, 63
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv24 = sext i8 %19 to i32
  %cmp25 = icmp sle i32 %conv24, 126
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp25, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %land.end
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %23 = load i8, ptr %22, align 1, !tbaa !12
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %while.end
  call void @gt_abort(ptr noundef @.str.25)
  br label %if.end37

if.else31:                                        ; preds = %while.end
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %25 = load i8, ptr %24, align 1, !tbaa !12
  %conv32 = sext i8 %25 to i32
  %cmp33 = icmp ne i32 %conv32, 10
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else31
  call void @gt_abort(ptr noundef @.str.26)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then30
  %26 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp38 = icmp eq i32 %26, 64
  br i1 %cmp38, label %if.then40, label %if.else45

if.then40:                                        ; preds = %if.end37
  %27 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %cmp41 = icmp eq ptr %27, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then40
  call void @gt_abort(ptr noundef @.str.27)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then40
  %28 = load i32, ptr %prevn.addr, align 4, !tbaa !8
  store i32 %28, ptr %n, align 4, !tbaa !8
  %29 = load i32, ptr %prevm.addr, align 4, !tbaa !8
  store i32 %29, ptr %m, align 4, !tbaa !8
  br label %if.end116

if.else45:                                        ; preds = %if.end37
  %30 = load ptr, ptr %s, align 8, !tbaa !4
  %call46 = call i32 @graphsize(ptr noundef %30)
  store i32 %call46, ptr %n, align 4, !tbaa !8
  %31 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp47 = icmp eq i32 %31, 1
  br i1 %cmp47, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.else45
  %32 = load ptr, ptr %p, align 8, !tbaa !4
  %33 = load ptr, ptr %s, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %34 = load i32, ptr %n, align 4, !tbaa !8
  %cmp49 = icmp sle i32 %34, 62
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %cmp51 = icmp sle i32 %35, 258047
  %36 = zext i1 %cmp51 to i64
  %cond = select i1 %cmp51, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond53 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv54 = sext i32 %cond53 to i64
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %conv55 = sext i32 %37 to i64
  %div = udiv i64 %conv55, 12
  %38 = load i32, ptr %n, align 4, !tbaa !8
  %conv56 = sext i32 %38 to i64
  %sub = sub i64 %conv56, 1
  %mul = mul i64 %div, %sub
  %39 = load i32, ptr %n, align 4, !tbaa !8
  %conv57 = sext i32 %39 to i64
  %rem = urem i64 %conv57, 12
  %40 = load i32, ptr %n, align 4, !tbaa !8
  %conv58 = sext i32 %40 to i64
  %sub59 = sub i64 %conv58, 1
  %mul60 = mul i64 %rem, %sub59
  %add = add i64 %mul60, 11
  %div61 = udiv i64 %add, 12
  %add62 = add i64 %mul, %div61
  %add63 = add i64 %conv54, %add62
  %cmp64 = icmp ne i64 %sub.ptr.sub, %add63
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %cond.end
  call void @gt_abort(ptr noundef @.str.28)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %cond.end, %if.else45
  %41 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp68 = icmp eq i32 %41, 128
  br i1 %cmp68, label %land.lhs.true70, label %if.end100

land.lhs.true70:                                  ; preds = %if.end67
  %42 = load ptr, ptr %p, align 8, !tbaa !4
  %43 = load ptr, ptr %s, align 8, !tbaa !4
  %sub.ptr.lhs.cast71 = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast72 = ptrtoint ptr %43 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %44 = load i32, ptr %n, align 4, !tbaa !8
  %cmp74 = icmp sle i32 %44, 62
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %land.lhs.true70
  br label %cond.end81

cond.false77:                                     ; preds = %land.lhs.true70
  %45 = load i32, ptr %n, align 4, !tbaa !8
  %cmp78 = icmp sle i32 %45, 258047
  %46 = zext i1 %cmp78 to i64
  %cond80 = select i1 %cmp78, i32 4, i32 8
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false77, %cond.true76
  %cond82 = phi i32 [ 1, %cond.true76 ], [ %cond80, %cond.false77 ]
  %add83 = add nsw i32 1, %cond82
  %conv84 = sext i32 %add83 to i64
  %47 = load i32, ptr %n, align 4, !tbaa !8
  %conv85 = sext i32 %47 to i64
  %48 = load i32, ptr %n, align 4, !tbaa !8
  %div86 = sdiv i32 %48, 6
  %conv87 = sext i32 %div86 to i64
  %mul88 = mul i64 %conv85, %conv87
  %49 = load i32, ptr %n, align 4, !tbaa !8
  %conv89 = sext i32 %49 to i64
  %50 = load i32, ptr %n, align 4, !tbaa !8
  %rem90 = srem i32 %50, 6
  %conv91 = sext i32 %rem90 to i64
  %mul92 = mul i64 %conv89, %conv91
  %add93 = add i64 %mul92, 5
  %div94 = udiv i64 %add93, 6
  %add95 = add i64 %mul88, %div94
  %add96 = add i64 %conv84, %add95
  %cmp97 = icmp ne i64 %sub.ptr.sub73, %add96
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %cond.end81
  call void @gt_abort(ptr noundef @.str.29)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %cond.end81, %if.end67
  %51 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %cmp101 = icmp sgt i32 %51, 0
  br i1 %cmp101, label %land.lhs.true103, label %if.else107

land.lhs.true103:                                 ; preds = %if.end100
  %52 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %shl = shl i32 %52, 5
  %53 = load i32, ptr %n, align 4, !tbaa !8
  %cmp104 = icmp slt i32 %shl, %53
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %land.lhs.true103
  call void @gt_abort(ptr noundef @.str.30)
  br label %if.end115

if.else107:                                       ; preds = %land.lhs.true103, %if.end100
  %54 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %cmp108 = icmp sgt i32 %54, 0
  br i1 %cmp108, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.else107
  %55 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  store i32 %55, ptr %m, align 4, !tbaa !8
  br label %if.end114

if.else111:                                       ; preds = %if.else107
  %56 = load i32, ptr %n, align 4, !tbaa !8
  %sub112 = sub nsw i32 %56, 1
  %shr = ashr i32 %sub112, 5
  %add113 = add nsw i32 %shr, 1
  store i32 %add113, ptr %m, align 4, !tbaa !8
  br label %if.end114

if.end114:                                        ; preds = %if.else111, %if.then110
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then106
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end44
  %57 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %cmp117 = icmp eq ptr %57, null
  br i1 %cmp117, label %if.then119, label %if.end129

if.then119:                                       ; preds = %if.end116
  %58 = load i32, ptr %n, align 4, !tbaa !8
  %conv120 = sext i32 %58 to i64
  %59 = load i32, ptr %m, align 4, !tbaa !8
  %conv121 = sext i32 %59 to i64
  %mul122 = mul i64 %conv121, 4
  %mul123 = mul i64 %conv120, %mul122
  %call124 = call noalias ptr @malloc(i64 noundef %mul123) #16
  store ptr %call124, ptr %g.addr, align 8, !tbaa !4
  %cmp125 = icmp eq ptr %call124, null
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.then119
  call void @gt_abort(ptr noundef @.str.31)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.then119
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end116
  %60 = load i32, ptr %n, align 4, !tbaa !8
  %61 = load ptr, ptr %pn.addr, align 8, !tbaa !4
  store i32 %60, ptr %61, align 4, !tbaa !8
  %62 = load i32, ptr %m, align 4, !tbaa !8
  %63 = load ptr, ptr %pm.addr, align 8, !tbaa !4
  store i32 %62, ptr %63, align 4, !tbaa !8
  %64 = load ptr, ptr %s, align 8, !tbaa !4
  %65 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %66 = load i32, ptr %m, align 4, !tbaa !8
  %67 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %68 = load i32, ptr %prevn.addr, align 4, !tbaa !8
  call void @stringtograph_inc(ptr noundef %64, ptr noundef %65, i32 noundef %66, ptr noundef %67, i32 noundef %68)
  %69 = load ptr, ptr %g.addr, align 8, !tbaa !4
  store ptr %69, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  %70 = load ptr, ptr %retval, align 8
  ret ptr %70
}

; Function Attrs: nounwind uwtable
define ptr @readg_inc(ptr noundef %f, ptr noundef %g, i32 noundef %reqm, ptr noundef %pm, ptr noundef %pn, ptr noundef %prevg, i32 noundef %prevm, i32 noundef %prevn) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %reqm.addr = alloca i32, align 4
  %pm.addr = alloca ptr, align 8
  %pn.addr = alloca ptr, align 8
  %prevg.addr = alloca ptr, align 8
  %prevm.addr = alloca i32, align 4
  %prevn.addr = alloca i32, align 4
  %digraph = alloca i32, align 4
  %gg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %reqm, ptr %reqm.addr, align 4, !tbaa !8
  store ptr %pm, ptr %pm.addr, align 8, !tbaa !4
  store ptr %pn, ptr %pn.addr, align 8, !tbaa !4
  store ptr %prevg, ptr %prevg.addr, align 8, !tbaa !4
  store i32 %prevm, ptr %prevm.addr, align 4, !tbaa !8
  store i32 %prevn, ptr %prevn.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %digraph) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gg) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %2 = load i32, ptr %reqm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %pm.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pn.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %6 = load i32, ptr %prevm.addr, align 4, !tbaa !8
  %7 = load i32, ptr %prevn.addr, align 4, !tbaa !8
  %call = call ptr @readgg_inc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %digraph)
  store ptr %call, ptr %gg, align 8, !tbaa !4
  %8 = load ptr, ptr %gg, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %digraph, align 4, !tbaa !8
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.32)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load ptr, ptr %gg, align 8, !tbaa !4
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gg) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %digraph) #12
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define void @stringtosparsegraph(ptr noundef %s, ptr noundef %sg, ptr noundef %nloops) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %nloops.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %n = alloca i32, align 4
  %nde = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %vv = alloca i32, align 4
  %x = alloca i32, align 4
  %nb = alloca i32, align 4
  %need = alloca i32, align 4
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %v = alloca ptr, align 8
  %loops = alloca i32, align 4
  %done = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  store ptr %nloops, ptr %nloops.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nde) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vv) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %loops) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #12
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @graphsize(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %idx.ext = sext i32 %lor.ext to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  %7 = load i32, ptr %n, align 4, !tbaa !8
  %cmp6 = icmp sle i32 %7, 62
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %cmp8 = icmp sle i32 %8, 258047
  %9 = zext i1 %cmp8 to i64
  %cond = select i1 %cmp8, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %idx.ext11 = sext i32 %cond10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext11
  store ptr %add.ptr12, ptr %q, align 8, !tbaa !4
  %10 = load i32, ptr %n, align 4, !tbaa !8
  %11 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %11, i32 0, i32 2
  store i32 %10, ptr %nv, align 8, !tbaa !49
  %12 = load i32, ptr %n, align 4, !tbaa !8
  %conv13 = sext i32 %12 to i64
  %13 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %13, i32 0, i32 6
  %14 = load i64, ptr %vlen, align 8, !tbaa !51
  %cmp14 = icmp ugt i64 %conv13, %14
  br i1 %cmp14, label %if.then, label %if.end28

if.then:                                          ; preds = %cond.end
  %15 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen16 = getelementptr inbounds %struct.sparsegraph, ptr %15, i32 0, i32 6
  %16 = load i64, ptr %vlen16, align 8, !tbaa !51
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  %17 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v18 = getelementptr inbounds %struct.sparsegraph, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %v18, align 8, !tbaa !52
  call void @free(ptr noundef %18) #12
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  %19 = load i32, ptr %n, align 4, !tbaa !8
  %conv19 = sext i32 %19 to i64
  %20 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen20 = getelementptr inbounds %struct.sparsegraph, ptr %20, i32 0, i32 6
  store i64 %conv19, ptr %vlen20, align 8, !tbaa !51
  %21 = load i32, ptr %n, align 4, !tbaa !8
  %conv21 = sext i32 %21 to i64
  %mul = mul i64 %conv21, 8
  %call22 = call noalias ptr @malloc(i64 noundef %mul) #16
  %22 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v23 = getelementptr inbounds %struct.sparsegraph, ptr %22, i32 0, i32 1
  store ptr %call22, ptr %v23, align 8, !tbaa !52
  %cmp24 = icmp eq ptr %call22, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.33)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %cond.end
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %conv29 = sext i32 %23 to i64
  %24 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %24, i32 0, i32 7
  %25 = load i64, ptr %dlen, align 8, !tbaa !53
  %cmp30 = icmp ugt i64 %conv29, %25
  br i1 %cmp30, label %if.then32, label %if.end48

if.then32:                                        ; preds = %if.end28
  %26 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen33 = getelementptr inbounds %struct.sparsegraph, ptr %26, i32 0, i32 7
  %27 = load i64, ptr %dlen33, align 8, !tbaa !53
  %tobool34 = icmp ne i64 %27, 0
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  %28 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d36 = getelementptr inbounds %struct.sparsegraph, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %d36, align 8, !tbaa !54
  call void @free(ptr noundef %29) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %conv38 = sext i32 %30 to i64
  %31 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen39 = getelementptr inbounds %struct.sparsegraph, ptr %31, i32 0, i32 7
  store i64 %conv38, ptr %dlen39, align 8, !tbaa !53
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %conv40 = sext i32 %32 to i64
  %mul41 = mul i64 %conv40, 4
  %call42 = call noalias ptr @malloc(i64 noundef %mul41) #16
  %33 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d43 = getelementptr inbounds %struct.sparsegraph, ptr %33, i32 0, i32 3
  store ptr %call42, ptr %d43, align 8, !tbaa !54
  %cmp44 = icmp eq ptr %call42, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end37
  call void @gt_abort(ptr noundef @.str.33)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end37
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end28
  %34 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v49 = getelementptr inbounds %struct.sparsegraph, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %v49, align 8, !tbaa !52
  store ptr %35, ptr %v, align 8, !tbaa !4
  %36 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d50 = getelementptr inbounds %struct.sparsegraph, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %d50, align 8, !tbaa !54
  store ptr %37, ptr %d, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end48
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %39 = load i32, ptr %n, align 4, !tbaa !8
  %cmp51 = icmp slt i32 %38, %39
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %d, align 8, !tbaa !4
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %40, i64 %idxprom
  store i32 0, ptr %arrayidx53, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx54 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx54, align 1, !tbaa !12
  %conv55 = sext i8 %44 to i32
  %cmp56 = icmp ne i32 %conv55, 58
  br i1 %cmp56, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %45 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx58 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx58, align 1, !tbaa !12
  %conv59 = sext i8 %46 to i32
  %cmp60 = icmp ne i32 %conv59, 38
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %q, align 8, !tbaa !4
  store ptr %47, ptr %p, align 8, !tbaa !4
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc88, %if.then62
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %49 = load i32, ptr %n, align 4, !tbaa !8
  %cmp64 = icmp slt i32 %48, %49
  br i1 %cmp64, label %for.body66, label %for.end90

for.body66:                                       ; preds = %for.cond63
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc85, %for.body66
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %51 = load i32, ptr %j, align 4, !tbaa !8
  %cmp68 = icmp slt i32 %50, %51
  br i1 %cmp68, label %for.body70, label %for.end87

for.body70:                                       ; preds = %for.cond67
  %52 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %52, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %cmp71 = icmp eq i32 %dec, 0
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %for.body70
  store i32 6, ptr %k, align 4, !tbaa !8
  %53 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %54 = load i8, ptr %53, align 1, !tbaa !12
  %conv74 = sext i8 %54 to i32
  %sub = sub nsw i32 %conv74, 63
  store i32 %sub, ptr %x, align 4, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %for.body70
  %55 = load i32, ptr %x, align 4, !tbaa !8
  %and = and i32 %55, 32
  %tobool76 = icmp ne i32 %and, 0
  br i1 %tobool76, label %if.then77, label %if.end84

if.then77:                                        ; preds = %if.end75
  %56 = load ptr, ptr %d, align 8, !tbaa !4
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom78 = sext i32 %57 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %56, i64 %idxprom78
  %58 = load i32, ptr %arrayidx79, align 4, !tbaa !8
  %inc80 = add nsw i32 %58, 1
  store i32 %inc80, ptr %arrayidx79, align 4, !tbaa !8
  %59 = load ptr, ptr %d, align 8, !tbaa !4
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom81 = sext i32 %60 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %59, i64 %idxprom81
  %61 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %inc83 = add nsw i32 %61, 1
  store i32 %inc83, ptr %arrayidx82, align 4, !tbaa !8
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %if.end75
  %62 = load i32, ptr %x, align 4, !tbaa !8
  %shl = shl i32 %62, 1
  store i32 %shl, ptr %x, align 4, !tbaa !8
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %inc86 = add nsw i32 %63, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !8
  br label %for.cond67, !llvm.loop !56

for.end87:                                        ; preds = %for.cond67
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %64 = load i32, ptr %j, align 4, !tbaa !8
  %inc89 = add nsw i32 %64, 1
  store i32 %inc89, ptr %j, align 4, !tbaa !8
  br label %for.cond63, !llvm.loop !57

for.end90:                                        ; preds = %for.cond63
  %65 = load ptr, ptr %v, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds i64, ptr %65, i64 0
  store i64 0, ptr %arrayidx91, align 8, !tbaa !10
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc105, %for.end90
  %66 = load i32, ptr %i, align 4, !tbaa !8
  %67 = load i32, ptr %n, align 4, !tbaa !8
  %cmp93 = icmp slt i32 %66, %67
  br i1 %cmp93, label %for.body95, label %for.end107

for.body95:                                       ; preds = %for.cond92
  %68 = load ptr, ptr %v, align 8, !tbaa !4
  %69 = load i32, ptr %i, align 4, !tbaa !8
  %sub96 = sub nsw i32 %69, 1
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds i64, ptr %68, i64 %idxprom97
  %70 = load i64, ptr %arrayidx98, align 8, !tbaa !10
  %71 = load ptr, ptr %d, align 8, !tbaa !4
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %sub99 = sub nsw i32 %72, 1
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %71, i64 %idxprom100
  %73 = load i32, ptr %arrayidx101, align 4, !tbaa !8
  %conv102 = sext i32 %73 to i64
  %add = add i64 %70, %conv102
  %74 = load ptr, ptr %v, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom103 = sext i32 %75 to i64
  %arrayidx104 = getelementptr inbounds i64, ptr %74, i64 %idxprom103
  store i64 %add, ptr %arrayidx104, align 8, !tbaa !10
  br label %for.inc105

for.inc105:                                       ; preds = %for.body95
  %76 = load i32, ptr %i, align 4, !tbaa !8
  %inc106 = add nsw i32 %76, 1
  store i32 %inc106, ptr %i, align 4, !tbaa !8
  br label %for.cond92, !llvm.loop !58

for.end107:                                       ; preds = %for.cond92
  %77 = load ptr, ptr %v, align 8, !tbaa !4
  %78 = load i32, ptr %n, align 4, !tbaa !8
  %sub108 = sub nsw i32 %78, 1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr %77, i64 %idxprom109
  %79 = load i64, ptr %arrayidx110, align 8, !tbaa !10
  %80 = load ptr, ptr %d, align 8, !tbaa !4
  %81 = load i32, ptr %n, align 4, !tbaa !8
  %sub111 = sub nsw i32 %81, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %80, i64 %idxprom112
  %82 = load i32, ptr %arrayidx113, align 4, !tbaa !8
  %conv114 = sext i32 %82 to i64
  %add115 = add i64 %79, %conv114
  %conv116 = trunc i64 %add115 to i32
  store i32 %conv116, ptr %nde, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc123, %for.end107
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %84 = load i32, ptr %n, align 4, !tbaa !8
  %cmp118 = icmp slt i32 %83, %84
  br i1 %cmp118, label %for.body120, label %for.end125

for.body120:                                      ; preds = %for.cond117
  %85 = load ptr, ptr %d, align 8, !tbaa !4
  %86 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom121 = sext i32 %86 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %85, i64 %idxprom121
  store i32 0, ptr %arrayidx122, align 4, !tbaa !8
  br label %for.inc123

for.inc123:                                       ; preds = %for.body120
  %87 = load i32, ptr %i, align 4, !tbaa !8
  %inc124 = add nsw i32 %87, 1
  store i32 %inc124, ptr %i, align 4, !tbaa !8
  br label %for.cond117, !llvm.loop !59

for.end125:                                       ; preds = %for.cond117
  %88 = load i32, ptr %nde, align 4, !tbaa !8
  %conv126 = sext i32 %88 to i64
  %89 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde127 = getelementptr inbounds %struct.sparsegraph, ptr %89, i32 0, i32 0
  store i64 %conv126, ptr %nde127, align 8, !tbaa !60
  %90 = load i32, ptr %nde, align 4, !tbaa !8
  %conv128 = sext i32 %90 to i64
  %91 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %91, i32 0, i32 8
  %92 = load i64, ptr %elen, align 8, !tbaa !61
  %cmp129 = icmp ugt i64 %conv128, %92
  br i1 %cmp129, label %if.then131, label %if.end147

if.then131:                                       ; preds = %for.end125
  %93 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen132 = getelementptr inbounds %struct.sparsegraph, ptr %93, i32 0, i32 8
  %94 = load i64, ptr %elen132, align 8, !tbaa !61
  %tobool133 = icmp ne i64 %94, 0
  br i1 %tobool133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then131
  %95 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e135 = getelementptr inbounds %struct.sparsegraph, ptr %95, i32 0, i32 4
  %96 = load ptr, ptr %e135, align 8, !tbaa !62
  call void @free(ptr noundef %96) #12
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.then131
  %97 = load i32, ptr %nde, align 4, !tbaa !8
  %conv137 = sext i32 %97 to i64
  %98 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen138 = getelementptr inbounds %struct.sparsegraph, ptr %98, i32 0, i32 8
  store i64 %conv137, ptr %elen138, align 8, !tbaa !61
  %99 = load i32, ptr %nde, align 4, !tbaa !8
  %conv139 = sext i32 %99 to i64
  %mul140 = mul i64 %conv139, 4
  %call141 = call noalias ptr @malloc(i64 noundef %mul140) #16
  %100 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e142 = getelementptr inbounds %struct.sparsegraph, ptr %100, i32 0, i32 4
  store ptr %call141, ptr %e142, align 8, !tbaa !62
  %cmp143 = icmp eq ptr %call141, null
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end136
  call void @gt_abort(ptr noundef @.str.33)
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end136
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %for.end125
  %101 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e148 = getelementptr inbounds %struct.sparsegraph, ptr %101, i32 0, i32 4
  %102 = load ptr, ptr %e148, align 8, !tbaa !62
  store ptr %102, ptr %e, align 8, !tbaa !4
  %103 = load ptr, ptr %q, align 8, !tbaa !4
  store ptr %103, ptr %p, align 8, !tbaa !4
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc189, %if.end147
  %104 = load i32, ptr %j, align 4, !tbaa !8
  %105 = load i32, ptr %n, align 4, !tbaa !8
  %cmp150 = icmp slt i32 %104, %105
  br i1 %cmp150, label %for.body152, label %for.end191

for.body152:                                      ; preds = %for.cond149
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc186, %for.body152
  %106 = load i32, ptr %i, align 4, !tbaa !8
  %107 = load i32, ptr %j, align 4, !tbaa !8
  %cmp154 = icmp slt i32 %106, %107
  br i1 %cmp154, label %for.body156, label %for.end188

for.body156:                                      ; preds = %for.cond153
  %108 = load i32, ptr %k, align 4, !tbaa !8
  %dec157 = add nsw i32 %108, -1
  store i32 %dec157, ptr %k, align 4, !tbaa !8
  %cmp158 = icmp eq i32 %dec157, 0
  br i1 %cmp158, label %if.then160, label %if.end164

if.then160:                                       ; preds = %for.body156
  store i32 6, ptr %k, align 4, !tbaa !8
  %109 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr161 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %incdec.ptr161, ptr %p, align 8, !tbaa !4
  %110 = load i8, ptr %109, align 1, !tbaa !12
  %conv162 = sext i8 %110 to i32
  %sub163 = sub nsw i32 %conv162, 63
  store i32 %sub163, ptr %x, align 4, !tbaa !8
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %for.body156
  %111 = load i32, ptr %x, align 4, !tbaa !8
  %and165 = and i32 %111, 32
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.then167, label %if.end184

if.then167:                                       ; preds = %if.end164
  %112 = load i32, ptr %j, align 4, !tbaa !8
  %113 = load ptr, ptr %e, align 8, !tbaa !4
  %114 = load ptr, ptr %v, align 8, !tbaa !4
  %115 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom168 = sext i32 %115 to i64
  %arrayidx169 = getelementptr inbounds i64, ptr %114, i64 %idxprom168
  %116 = load i64, ptr %arrayidx169, align 8, !tbaa !10
  %117 = load ptr, ptr %d, align 8, !tbaa !4
  %118 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom170 = sext i32 %118 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %117, i64 %idxprom170
  %119 = load i32, ptr %arrayidx171, align 4, !tbaa !8
  %inc172 = add nsw i32 %119, 1
  store i32 %inc172, ptr %arrayidx171, align 4, !tbaa !8
  %conv173 = sext i32 %119 to i64
  %add174 = add i64 %116, %conv173
  %arrayidx175 = getelementptr inbounds i32, ptr %113, i64 %add174
  store i32 %112, ptr %arrayidx175, align 4, !tbaa !8
  %120 = load i32, ptr %i, align 4, !tbaa !8
  %121 = load ptr, ptr %e, align 8, !tbaa !4
  %122 = load ptr, ptr %v, align 8, !tbaa !4
  %123 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom176 = sext i32 %123 to i64
  %arrayidx177 = getelementptr inbounds i64, ptr %122, i64 %idxprom176
  %124 = load i64, ptr %arrayidx177, align 8, !tbaa !10
  %125 = load ptr, ptr %d, align 8, !tbaa !4
  %126 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom178 = sext i32 %126 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %125, i64 %idxprom178
  %127 = load i32, ptr %arrayidx179, align 4, !tbaa !8
  %inc180 = add nsw i32 %127, 1
  store i32 %inc180, ptr %arrayidx179, align 4, !tbaa !8
  %conv181 = sext i32 %127 to i64
  %add182 = add i64 %124, %conv181
  %arrayidx183 = getelementptr inbounds i32, ptr %121, i64 %add182
  store i32 %120, ptr %arrayidx183, align 4, !tbaa !8
  br label %if.end184

if.end184:                                        ; preds = %if.then167, %if.end164
  %128 = load i32, ptr %x, align 4, !tbaa !8
  %shl185 = shl i32 %128, 1
  store i32 %shl185, ptr %x, align 4, !tbaa !8
  br label %for.inc186

for.inc186:                                       ; preds = %if.end184
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %inc187 = add nsw i32 %129, 1
  store i32 %inc187, ptr %i, align 4, !tbaa !8
  br label %for.cond153, !llvm.loop !63

for.end188:                                       ; preds = %for.cond153
  br label %for.inc189

for.inc189:                                       ; preds = %for.end188
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %inc190 = add nsw i32 %130, 1
  store i32 %inc190, ptr %j, align 4, !tbaa !8
  br label %for.cond149, !llvm.loop !64

for.end191:                                       ; preds = %for.cond149
  %131 = load ptr, ptr %nloops.addr, align 8, !tbaa !4
  store i32 0, ptr %131, align 4, !tbaa !8
  br label %if.end585

if.else:                                          ; preds = %land.lhs.true, %for.end
  %132 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arrayidx192 = getelementptr inbounds i8, ptr %132, i64 0
  %133 = load i8, ptr %arrayidx192, align 1, !tbaa !12
  %conv193 = sext i8 %133 to i32
  %cmp194 = icmp eq i32 %conv193, 38
  br i1 %cmp194, label %if.then196, label %if.else327

if.then196:                                       ; preds = %if.else
  %134 = load ptr, ptr %q, align 8, !tbaa !4
  store ptr %134, ptr %p, align 8, !tbaa !4
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc224, %if.then196
  %135 = load i32, ptr %j, align 4, !tbaa !8
  %136 = load i32, ptr %n, align 4, !tbaa !8
  %cmp198 = icmp slt i32 %135, %136
  br i1 %cmp198, label %for.body200, label %for.end226

for.body200:                                      ; preds = %for.cond197
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond201

for.cond201:                                      ; preds = %for.inc221, %for.body200
  %137 = load i32, ptr %i, align 4, !tbaa !8
  %138 = load i32, ptr %n, align 4, !tbaa !8
  %cmp202 = icmp slt i32 %137, %138
  br i1 %cmp202, label %for.body204, label %for.end223

for.body204:                                      ; preds = %for.cond201
  %139 = load i32, ptr %k, align 4, !tbaa !8
  %dec205 = add nsw i32 %139, -1
  store i32 %dec205, ptr %k, align 4, !tbaa !8
  %cmp206 = icmp eq i32 %dec205, 0
  br i1 %cmp206, label %if.then208, label %if.end212

if.then208:                                       ; preds = %for.body204
  store i32 6, ptr %k, align 4, !tbaa !8
  %140 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr209 = getelementptr inbounds i8, ptr %140, i32 1
  store ptr %incdec.ptr209, ptr %p, align 8, !tbaa !4
  %141 = load i8, ptr %140, align 1, !tbaa !12
  %conv210 = sext i8 %141 to i32
  %sub211 = sub nsw i32 %conv210, 63
  store i32 %sub211, ptr %x, align 4, !tbaa !8
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %for.body204
  %142 = load i32, ptr %x, align 4, !tbaa !8
  %and213 = and i32 %142, 32
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then215, label %if.end219

if.then215:                                       ; preds = %if.end212
  %143 = load ptr, ptr %d, align 8, !tbaa !4
  %144 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom216 = sext i32 %144 to i64
  %arrayidx217 = getelementptr inbounds i32, ptr %143, i64 %idxprom216
  %145 = load i32, ptr %arrayidx217, align 4, !tbaa !8
  %inc218 = add nsw i32 %145, 1
  store i32 %inc218, ptr %arrayidx217, align 4, !tbaa !8
  br label %if.end219

if.end219:                                        ; preds = %if.then215, %if.end212
  %146 = load i32, ptr %x, align 4, !tbaa !8
  %shl220 = shl i32 %146, 1
  store i32 %shl220, ptr %x, align 4, !tbaa !8
  br label %for.inc221

for.inc221:                                       ; preds = %if.end219
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %inc222 = add nsw i32 %147, 1
  store i32 %inc222, ptr %i, align 4, !tbaa !8
  br label %for.cond201, !llvm.loop !65

for.end223:                                       ; preds = %for.cond201
  br label %for.inc224

for.inc224:                                       ; preds = %for.end223
  %148 = load i32, ptr %j, align 4, !tbaa !8
  %inc225 = add nsw i32 %148, 1
  store i32 %inc225, ptr %j, align 4, !tbaa !8
  br label %for.cond197, !llvm.loop !66

for.end226:                                       ; preds = %for.cond197
  %149 = load ptr, ptr %v, align 8, !tbaa !4
  %arrayidx227 = getelementptr inbounds i64, ptr %149, i64 0
  store i64 0, ptr %arrayidx227, align 8, !tbaa !10
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc242, %for.end226
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %151 = load i32, ptr %n, align 4, !tbaa !8
  %cmp229 = icmp slt i32 %150, %151
  br i1 %cmp229, label %for.body231, label %for.end244

for.body231:                                      ; preds = %for.cond228
  %152 = load ptr, ptr %v, align 8, !tbaa !4
  %153 = load i32, ptr %i, align 4, !tbaa !8
  %sub232 = sub nsw i32 %153, 1
  %idxprom233 = sext i32 %sub232 to i64
  %arrayidx234 = getelementptr inbounds i64, ptr %152, i64 %idxprom233
  %154 = load i64, ptr %arrayidx234, align 8, !tbaa !10
  %155 = load ptr, ptr %d, align 8, !tbaa !4
  %156 = load i32, ptr %i, align 4, !tbaa !8
  %sub235 = sub nsw i32 %156, 1
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %155, i64 %idxprom236
  %157 = load i32, ptr %arrayidx237, align 4, !tbaa !8
  %conv238 = sext i32 %157 to i64
  %add239 = add i64 %154, %conv238
  %158 = load ptr, ptr %v, align 8, !tbaa !4
  %159 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom240 = sext i32 %159 to i64
  %arrayidx241 = getelementptr inbounds i64, ptr %158, i64 %idxprom240
  store i64 %add239, ptr %arrayidx241, align 8, !tbaa !10
  br label %for.inc242

for.inc242:                                       ; preds = %for.body231
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %inc243 = add nsw i32 %160, 1
  store i32 %inc243, ptr %i, align 4, !tbaa !8
  br label %for.cond228, !llvm.loop !67

for.end244:                                       ; preds = %for.cond228
  %161 = load ptr, ptr %v, align 8, !tbaa !4
  %162 = load i32, ptr %n, align 4, !tbaa !8
  %sub245 = sub nsw i32 %162, 1
  %idxprom246 = sext i32 %sub245 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %161, i64 %idxprom246
  %163 = load i64, ptr %arrayidx247, align 8, !tbaa !10
  %164 = load ptr, ptr %d, align 8, !tbaa !4
  %165 = load i32, ptr %n, align 4, !tbaa !8
  %sub248 = sub nsw i32 %165, 1
  %idxprom249 = sext i32 %sub248 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %164, i64 %idxprom249
  %166 = load i32, ptr %arrayidx250, align 4, !tbaa !8
  %conv251 = sext i32 %166 to i64
  %add252 = add i64 %163, %conv251
  %conv253 = trunc i64 %add252 to i32
  store i32 %conv253, ptr %nde, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond254

for.cond254:                                      ; preds = %for.inc260, %for.end244
  %167 = load i32, ptr %i, align 4, !tbaa !8
  %168 = load i32, ptr %n, align 4, !tbaa !8
  %cmp255 = icmp slt i32 %167, %168
  br i1 %cmp255, label %for.body257, label %for.end262

for.body257:                                      ; preds = %for.cond254
  %169 = load ptr, ptr %d, align 8, !tbaa !4
  %170 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom258 = sext i32 %170 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %169, i64 %idxprom258
  store i32 0, ptr %arrayidx259, align 4, !tbaa !8
  br label %for.inc260

for.inc260:                                       ; preds = %for.body257
  %171 = load i32, ptr %i, align 4, !tbaa !8
  %inc261 = add nsw i32 %171, 1
  store i32 %inc261, ptr %i, align 4, !tbaa !8
  br label %for.cond254, !llvm.loop !68

for.end262:                                       ; preds = %for.cond254
  %172 = load i32, ptr %nde, align 4, !tbaa !8
  %conv263 = sext i32 %172 to i64
  %173 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde264 = getelementptr inbounds %struct.sparsegraph, ptr %173, i32 0, i32 0
  store i64 %conv263, ptr %nde264, align 8, !tbaa !60
  %174 = load i32, ptr %nde, align 4, !tbaa !8
  %conv265 = sext i32 %174 to i64
  %175 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen266 = getelementptr inbounds %struct.sparsegraph, ptr %175, i32 0, i32 8
  %176 = load i64, ptr %elen266, align 8, !tbaa !61
  %cmp267 = icmp ugt i64 %conv265, %176
  br i1 %cmp267, label %if.then269, label %if.end285

if.then269:                                       ; preds = %for.end262
  %177 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen270 = getelementptr inbounds %struct.sparsegraph, ptr %177, i32 0, i32 8
  %178 = load i64, ptr %elen270, align 8, !tbaa !61
  %tobool271 = icmp ne i64 %178, 0
  br i1 %tobool271, label %if.then272, label %if.end274

if.then272:                                       ; preds = %if.then269
  %179 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e273 = getelementptr inbounds %struct.sparsegraph, ptr %179, i32 0, i32 4
  %180 = load ptr, ptr %e273, align 8, !tbaa !62
  call void @free(ptr noundef %180) #12
  br label %if.end274

if.end274:                                        ; preds = %if.then272, %if.then269
  %181 = load i32, ptr %nde, align 4, !tbaa !8
  %conv275 = sext i32 %181 to i64
  %182 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen276 = getelementptr inbounds %struct.sparsegraph, ptr %182, i32 0, i32 8
  store i64 %conv275, ptr %elen276, align 8, !tbaa !61
  %183 = load i32, ptr %nde, align 4, !tbaa !8
  %conv277 = sext i32 %183 to i64
  %mul278 = mul i64 %conv277, 4
  %call279 = call noalias ptr @malloc(i64 noundef %mul278) #16
  %184 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e280 = getelementptr inbounds %struct.sparsegraph, ptr %184, i32 0, i32 4
  store ptr %call279, ptr %e280, align 8, !tbaa !62
  %cmp281 = icmp eq ptr %call279, null
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.end274
  call void @gt_abort(ptr noundef @.str.33)
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %if.end274
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %for.end262
  %185 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e286 = getelementptr inbounds %struct.sparsegraph, ptr %185, i32 0, i32 4
  %186 = load ptr, ptr %e286, align 8, !tbaa !62
  store ptr %186, ptr %e, align 8, !tbaa !4
  %187 = load ptr, ptr %q, align 8, !tbaa !4
  store ptr %187, ptr %p, align 8, !tbaa !4
  store i32 1, ptr %k, align 4, !tbaa !8
  %188 = load ptr, ptr %nloops.addr, align 8, !tbaa !4
  store i32 0, ptr %188, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond287

for.cond287:                                      ; preds = %for.inc324, %if.end285
  %189 = load i32, ptr %j, align 4, !tbaa !8
  %190 = load i32, ptr %n, align 4, !tbaa !8
  %cmp288 = icmp slt i32 %189, %190
  br i1 %cmp288, label %for.body290, label %for.end326

for.body290:                                      ; preds = %for.cond287
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond291

for.cond291:                                      ; preds = %for.inc321, %for.body290
  %191 = load i32, ptr %i, align 4, !tbaa !8
  %192 = load i32, ptr %n, align 4, !tbaa !8
  %cmp292 = icmp slt i32 %191, %192
  br i1 %cmp292, label %for.body294, label %for.end323

for.body294:                                      ; preds = %for.cond291
  %193 = load i32, ptr %k, align 4, !tbaa !8
  %dec295 = add nsw i32 %193, -1
  store i32 %dec295, ptr %k, align 4, !tbaa !8
  %cmp296 = icmp eq i32 %dec295, 0
  br i1 %cmp296, label %if.then298, label %if.end302

if.then298:                                       ; preds = %for.body294
  store i32 6, ptr %k, align 4, !tbaa !8
  %194 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr299 = getelementptr inbounds i8, ptr %194, i32 1
  store ptr %incdec.ptr299, ptr %p, align 8, !tbaa !4
  %195 = load i8, ptr %194, align 1, !tbaa !12
  %conv300 = sext i8 %195 to i32
  %sub301 = sub nsw i32 %conv300, 63
  store i32 %sub301, ptr %x, align 4, !tbaa !8
  br label %if.end302

if.end302:                                        ; preds = %if.then298, %for.body294
  %196 = load i32, ptr %x, align 4, !tbaa !8
  %and303 = and i32 %196, 32
  %tobool304 = icmp ne i32 %and303, 0
  br i1 %tobool304, label %if.then305, label %if.end319

if.then305:                                       ; preds = %if.end302
  %197 = load i32, ptr %i, align 4, !tbaa !8
  %198 = load ptr, ptr %e, align 8, !tbaa !4
  %199 = load ptr, ptr %v, align 8, !tbaa !4
  %200 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom306 = sext i32 %200 to i64
  %arrayidx307 = getelementptr inbounds i64, ptr %199, i64 %idxprom306
  %201 = load i64, ptr %arrayidx307, align 8, !tbaa !10
  %202 = load ptr, ptr %d, align 8, !tbaa !4
  %203 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom308 = sext i32 %203 to i64
  %arrayidx309 = getelementptr inbounds i32, ptr %202, i64 %idxprom308
  %204 = load i32, ptr %arrayidx309, align 4, !tbaa !8
  %inc310 = add nsw i32 %204, 1
  store i32 %inc310, ptr %arrayidx309, align 4, !tbaa !8
  %conv311 = sext i32 %204 to i64
  %add312 = add i64 %201, %conv311
  %arrayidx313 = getelementptr inbounds i32, ptr %198, i64 %add312
  store i32 %197, ptr %arrayidx313, align 4, !tbaa !8
  %205 = load i32, ptr %i, align 4, !tbaa !8
  %206 = load i32, ptr %j, align 4, !tbaa !8
  %cmp314 = icmp eq i32 %205, %206
  br i1 %cmp314, label %if.then316, label %if.end318

if.then316:                                       ; preds = %if.then305
  %207 = load ptr, ptr %nloops.addr, align 8, !tbaa !4
  %208 = load i32, ptr %207, align 4, !tbaa !8
  %inc317 = add nsw i32 %208, 1
  store i32 %inc317, ptr %207, align 4, !tbaa !8
  br label %if.end318

if.end318:                                        ; preds = %if.then316, %if.then305
  br label %if.end319

if.end319:                                        ; preds = %if.end318, %if.end302
  %209 = load i32, ptr %x, align 4, !tbaa !8
  %shl320 = shl i32 %209, 1
  store i32 %shl320, ptr %x, align 4, !tbaa !8
  br label %for.inc321

for.inc321:                                       ; preds = %if.end319
  %210 = load i32, ptr %i, align 4, !tbaa !8
  %inc322 = add nsw i32 %210, 1
  store i32 %inc322, ptr %i, align 4, !tbaa !8
  br label %for.cond291, !llvm.loop !69

for.end323:                                       ; preds = %for.cond291
  br label %for.inc324

for.inc324:                                       ; preds = %for.end323
  %211 = load i32, ptr %j, align 4, !tbaa !8
  %inc325 = add nsw i32 %211, 1
  store i32 %inc325, ptr %j, align 4, !tbaa !8
  br label %for.cond287, !llvm.loop !70

for.end326:                                       ; preds = %for.cond287
  br label %if.end584

if.else327:                                       ; preds = %if.else
  %212 = load i32, ptr %n, align 4, !tbaa !8
  %sub328 = sub nsw i32 %212, 1
  store i32 %sub328, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond329

for.cond329:                                      ; preds = %for.inc333, %if.else327
  %213 = load i32, ptr %i, align 4, !tbaa !8
  %cmp330 = icmp ne i32 %213, 0
  br i1 %cmp330, label %for.body332, label %for.end335

for.body332:                                      ; preds = %for.cond329
  br label %for.inc333

for.inc333:                                       ; preds = %for.body332
  %214 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %214, 1
  store i32 %shr, ptr %i, align 4, !tbaa !8
  %215 = load i32, ptr %nb, align 4, !tbaa !8
  %inc334 = add nsw i32 %215, 1
  store i32 %inc334, ptr %nb, align 4, !tbaa !8
  br label %for.cond329, !llvm.loop !71

for.end335:                                       ; preds = %for.cond329
  %216 = load ptr, ptr %q, align 8, !tbaa !4
  store ptr %216, ptr %p, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %vv, align 4, !tbaa !8
  store i32 0, ptr %done, align 4, !tbaa !8
  store i32 0, ptr %loops, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end420, %if.then398, %if.then346, %for.end335
  %217 = load i32, ptr %done, align 4, !tbaa !8
  %tobool336 = icmp ne i32 %217, 0
  %lnot = xor i1 %tobool336, true
  br i1 %lnot, label %while.body, label %while.end421

while.body:                                       ; preds = %while.cond
  %218 = load i32, ptr %k, align 4, !tbaa !8
  %cmp337 = icmp eq i32 %218, 0
  br i1 %cmp337, label %if.then339, label %if.end350

if.then339:                                       ; preds = %while.body
  %219 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr340 = getelementptr inbounds i8, ptr %219, i32 1
  store ptr %incdec.ptr340, ptr %p, align 8, !tbaa !4
  %220 = load i8, ptr %219, align 1, !tbaa !12
  %conv341 = sext i8 %220 to i32
  store i32 %conv341, ptr %x, align 4, !tbaa !8
  %221 = load i32, ptr %x, align 4, !tbaa !8
  %cmp342 = icmp eq i32 %221, 10
  br i1 %cmp342, label %if.then346, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then339
  %222 = load i32, ptr %x, align 4, !tbaa !8
  %cmp344 = icmp eq i32 %222, 0
  br i1 %cmp344, label %if.then346, label %if.else347

if.then346:                                       ; preds = %lor.lhs.false, %if.then339
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !72

if.else347:                                       ; preds = %lor.lhs.false
  %223 = load i32, ptr %x, align 4, !tbaa !8
  %sub348 = sub nsw i32 %223, 63
  store i32 %sub348, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end349

if.end349:                                        ; preds = %if.else347
  br label %if.end350

if.end350:                                        ; preds = %if.end349, %while.body
  %224 = load i32, ptr %x, align 4, !tbaa !8
  %225 = load i32, ptr %k, align 4, !tbaa !8
  %sub351 = sub nsw i32 %225, 1
  %shl352 = shl i32 1, %sub351
  %and353 = and i32 %224, %shl352
  %tobool354 = icmp ne i32 %and353, 0
  br i1 %tobool354, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.end350
  %226 = load i32, ptr %vv, align 4, !tbaa !8
  %inc356 = add nsw i32 %226, 1
  store i32 %inc356, ptr %vv, align 4, !tbaa !8
  br label %if.end357

if.end357:                                        ; preds = %if.then355, %if.end350
  %227 = load i32, ptr %k, align 4, !tbaa !8
  %dec358 = add nsw i32 %227, -1
  store i32 %dec358, ptr %k, align 4, !tbaa !8
  %228 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %228, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %while.cond359

while.cond359:                                    ; preds = %if.end396, %if.then375, %if.end357
  %229 = load i32, ptr %need, align 4, !tbaa !8
  %cmp360 = icmp sgt i32 %229, 0
  br i1 %cmp360, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond359
  %230 = load i32, ptr %done, align 4, !tbaa !8
  %tobool362 = icmp ne i32 %230, 0
  %lnot363 = xor i1 %tobool362, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond359
  %231 = phi i1 [ false, %while.cond359 ], [ %lnot363, %land.rhs ]
  br i1 %231, label %while.body364, label %while.end

while.body364:                                    ; preds = %land.end
  %232 = load i32, ptr %k, align 4, !tbaa !8
  %cmp365 = icmp eq i32 %232, 0
  br i1 %cmp365, label %if.then367, label %if.end379

if.then367:                                       ; preds = %while.body364
  %233 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr368 = getelementptr inbounds i8, ptr %233, i32 1
  store ptr %incdec.ptr368, ptr %p, align 8, !tbaa !4
  %234 = load i8, ptr %233, align 1, !tbaa !12
  %conv369 = sext i8 %234 to i32
  store i32 %conv369, ptr %x, align 4, !tbaa !8
  %235 = load i32, ptr %x, align 4, !tbaa !8
  %cmp370 = icmp eq i32 %235, 10
  br i1 %cmp370, label %if.then375, label %lor.lhs.false372

lor.lhs.false372:                                 ; preds = %if.then367
  %236 = load i32, ptr %x, align 4, !tbaa !8
  %cmp373 = icmp eq i32 %236, 0
  br i1 %cmp373, label %if.then375, label %if.else376

if.then375:                                       ; preds = %lor.lhs.false372, %if.then367
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond359, !llvm.loop !73

if.else376:                                       ; preds = %lor.lhs.false372
  %237 = load i32, ptr %x, align 4, !tbaa !8
  %sub377 = sub nsw i32 %237, 63
  store i32 %sub377, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end378

if.end378:                                        ; preds = %if.else376
  br label %if.end379

if.end379:                                        ; preds = %if.end378, %while.body364
  %238 = load i32, ptr %need, align 4, !tbaa !8
  %239 = load i32, ptr %k, align 4, !tbaa !8
  %cmp380 = icmp sge i32 %238, %239
  br i1 %cmp380, label %if.then382, label %if.else388

if.then382:                                       ; preds = %if.end379
  %240 = load i32, ptr %j, align 4, !tbaa !8
  %241 = load i32, ptr %k, align 4, !tbaa !8
  %shl383 = shl i32 %240, %241
  %242 = load i32, ptr %x, align 4, !tbaa !8
  %243 = load i32, ptr %k, align 4, !tbaa !8
  %shl384 = shl i32 1, %243
  %sub385 = sub nsw i32 %shl384, 1
  %and386 = and i32 %242, %sub385
  %or = or i32 %shl383, %and386
  store i32 %or, ptr %j, align 4, !tbaa !8
  %244 = load i32, ptr %k, align 4, !tbaa !8
  %245 = load i32, ptr %need, align 4, !tbaa !8
  %sub387 = sub nsw i32 %245, %244
  store i32 %sub387, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %if.end396

if.else388:                                       ; preds = %if.end379
  %246 = load i32, ptr %need, align 4, !tbaa !8
  %247 = load i32, ptr %k, align 4, !tbaa !8
  %sub389 = sub nsw i32 %247, %246
  store i32 %sub389, ptr %k, align 4, !tbaa !8
  %248 = load i32, ptr %j, align 4, !tbaa !8
  %249 = load i32, ptr %need, align 4, !tbaa !8
  %shl390 = shl i32 %248, %249
  %250 = load i32, ptr %x, align 4, !tbaa !8
  %251 = load i32, ptr %k, align 4, !tbaa !8
  %shr391 = ashr i32 %250, %251
  %252 = load i32, ptr %need, align 4, !tbaa !8
  %shl392 = shl i32 1, %252
  %sub393 = sub nsw i32 %shl392, 1
  %and394 = and i32 %shr391, %sub393
  %or395 = or i32 %shl390, %and394
  store i32 %or395, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %need, align 4, !tbaa !8
  br label %if.end396

if.end396:                                        ; preds = %if.else388, %if.then382
  br label %while.cond359, !llvm.loop !73

while.end:                                        ; preds = %land.end
  %253 = load i32, ptr %done, align 4, !tbaa !8
  %tobool397 = icmp ne i32 %253, 0
  br i1 %tobool397, label %if.then398, label %if.end399

if.then398:                                       ; preds = %while.end
  br label %while.cond, !llvm.loop !72

if.end399:                                        ; preds = %while.end
  %254 = load i32, ptr %j, align 4, !tbaa !8
  %255 = load i32, ptr %vv, align 4, !tbaa !8
  %cmp400 = icmp sgt i32 %254, %255
  br i1 %cmp400, label %if.then402, label %if.else403

if.then402:                                       ; preds = %if.end399
  %256 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %256, ptr %vv, align 4, !tbaa !8
  br label %if.end420

if.else403:                                       ; preds = %if.end399
  %257 = load i32, ptr %vv, align 4, !tbaa !8
  %258 = load i32, ptr %n, align 4, !tbaa !8
  %cmp404 = icmp slt i32 %257, %258
  br i1 %cmp404, label %if.then406, label %if.end419

if.then406:                                       ; preds = %if.else403
  %259 = load ptr, ptr %d, align 8, !tbaa !4
  %260 = load i32, ptr %vv, align 4, !tbaa !8
  %idxprom407 = sext i32 %260 to i64
  %arrayidx408 = getelementptr inbounds i32, ptr %259, i64 %idxprom407
  %261 = load i32, ptr %arrayidx408, align 4, !tbaa !8
  %inc409 = add nsw i32 %261, 1
  store i32 %inc409, ptr %arrayidx408, align 4, !tbaa !8
  %262 = load i32, ptr %vv, align 4, !tbaa !8
  %263 = load i32, ptr %j, align 4, !tbaa !8
  %cmp410 = icmp ne i32 %262, %263
  br i1 %cmp410, label %if.then412, label %if.else416

if.then412:                                       ; preds = %if.then406
  %264 = load ptr, ptr %d, align 8, !tbaa !4
  %265 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom413 = sext i32 %265 to i64
  %arrayidx414 = getelementptr inbounds i32, ptr %264, i64 %idxprom413
  %266 = load i32, ptr %arrayidx414, align 4, !tbaa !8
  %inc415 = add nsw i32 %266, 1
  store i32 %inc415, ptr %arrayidx414, align 4, !tbaa !8
  br label %if.end418

if.else416:                                       ; preds = %if.then406
  %267 = load i32, ptr %loops, align 4, !tbaa !8
  %inc417 = add nsw i32 %267, 1
  store i32 %inc417, ptr %loops, align 4, !tbaa !8
  br label %if.end418

if.end418:                                        ; preds = %if.else416, %if.then412
  br label %if.end419

if.end419:                                        ; preds = %if.end418, %if.else403
  br label %if.end420

if.end420:                                        ; preds = %if.end419, %if.then402
  br label %while.cond, !llvm.loop !72

while.end421:                                     ; preds = %while.cond
  %268 = load ptr, ptr %v, align 8, !tbaa !4
  %arrayidx422 = getelementptr inbounds i64, ptr %268, i64 0
  store i64 0, ptr %arrayidx422, align 8, !tbaa !10
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond423

for.cond423:                                      ; preds = %for.inc437, %while.end421
  %269 = load i32, ptr %i, align 4, !tbaa !8
  %270 = load i32, ptr %n, align 4, !tbaa !8
  %cmp424 = icmp slt i32 %269, %270
  br i1 %cmp424, label %for.body426, label %for.end439

for.body426:                                      ; preds = %for.cond423
  %271 = load ptr, ptr %v, align 8, !tbaa !4
  %272 = load i32, ptr %i, align 4, !tbaa !8
  %sub427 = sub nsw i32 %272, 1
  %idxprom428 = sext i32 %sub427 to i64
  %arrayidx429 = getelementptr inbounds i64, ptr %271, i64 %idxprom428
  %273 = load i64, ptr %arrayidx429, align 8, !tbaa !10
  %274 = load ptr, ptr %d, align 8, !tbaa !4
  %275 = load i32, ptr %i, align 4, !tbaa !8
  %sub430 = sub nsw i32 %275, 1
  %idxprom431 = sext i32 %sub430 to i64
  %arrayidx432 = getelementptr inbounds i32, ptr %274, i64 %idxprom431
  %276 = load i32, ptr %arrayidx432, align 4, !tbaa !8
  %conv433 = sext i32 %276 to i64
  %add434 = add i64 %273, %conv433
  %277 = load ptr, ptr %v, align 8, !tbaa !4
  %278 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom435 = sext i32 %278 to i64
  %arrayidx436 = getelementptr inbounds i64, ptr %277, i64 %idxprom435
  store i64 %add434, ptr %arrayidx436, align 8, !tbaa !10
  br label %for.inc437

for.inc437:                                       ; preds = %for.body426
  %279 = load i32, ptr %i, align 4, !tbaa !8
  %inc438 = add nsw i32 %279, 1
  store i32 %inc438, ptr %i, align 4, !tbaa !8
  br label %for.cond423, !llvm.loop !74

for.end439:                                       ; preds = %for.cond423
  %280 = load ptr, ptr %v, align 8, !tbaa !4
  %281 = load i32, ptr %n, align 4, !tbaa !8
  %sub440 = sub nsw i32 %281, 1
  %idxprom441 = sext i32 %sub440 to i64
  %arrayidx442 = getelementptr inbounds i64, ptr %280, i64 %idxprom441
  %282 = load i64, ptr %arrayidx442, align 8, !tbaa !10
  %283 = load ptr, ptr %d, align 8, !tbaa !4
  %284 = load i32, ptr %n, align 4, !tbaa !8
  %sub443 = sub nsw i32 %284, 1
  %idxprom444 = sext i32 %sub443 to i64
  %arrayidx445 = getelementptr inbounds i32, ptr %283, i64 %idxprom444
  %285 = load i32, ptr %arrayidx445, align 4, !tbaa !8
  %conv446 = sext i32 %285 to i64
  %add447 = add i64 %282, %conv446
  %conv448 = trunc i64 %add447 to i32
  store i32 %conv448, ptr %nde, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond449

for.cond449:                                      ; preds = %for.inc455, %for.end439
  %286 = load i32, ptr %i, align 4, !tbaa !8
  %287 = load i32, ptr %n, align 4, !tbaa !8
  %cmp450 = icmp slt i32 %286, %287
  br i1 %cmp450, label %for.body452, label %for.end457

for.body452:                                      ; preds = %for.cond449
  %288 = load ptr, ptr %d, align 8, !tbaa !4
  %289 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom453 = sext i32 %289 to i64
  %arrayidx454 = getelementptr inbounds i32, ptr %288, i64 %idxprom453
  store i32 0, ptr %arrayidx454, align 4, !tbaa !8
  br label %for.inc455

for.inc455:                                       ; preds = %for.body452
  %290 = load i32, ptr %i, align 4, !tbaa !8
  %inc456 = add nsw i32 %290, 1
  store i32 %inc456, ptr %i, align 4, !tbaa !8
  br label %for.cond449, !llvm.loop !75

for.end457:                                       ; preds = %for.cond449
  %291 = load i32, ptr %nde, align 4, !tbaa !8
  %conv458 = sext i32 %291 to i64
  %292 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde459 = getelementptr inbounds %struct.sparsegraph, ptr %292, i32 0, i32 0
  store i64 %conv458, ptr %nde459, align 8, !tbaa !60
  %293 = load i32, ptr %nde, align 4, !tbaa !8
  %conv460 = sext i32 %293 to i64
  %294 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen461 = getelementptr inbounds %struct.sparsegraph, ptr %294, i32 0, i32 8
  %295 = load i64, ptr %elen461, align 8, !tbaa !61
  %cmp462 = icmp ugt i64 %conv460, %295
  br i1 %cmp462, label %if.then464, label %if.end480

if.then464:                                       ; preds = %for.end457
  %296 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen465 = getelementptr inbounds %struct.sparsegraph, ptr %296, i32 0, i32 8
  %297 = load i64, ptr %elen465, align 8, !tbaa !61
  %tobool466 = icmp ne i64 %297, 0
  br i1 %tobool466, label %if.then467, label %if.end469

if.then467:                                       ; preds = %if.then464
  %298 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e468 = getelementptr inbounds %struct.sparsegraph, ptr %298, i32 0, i32 4
  %299 = load ptr, ptr %e468, align 8, !tbaa !62
  call void @free(ptr noundef %299) #12
  br label %if.end469

if.end469:                                        ; preds = %if.then467, %if.then464
  %300 = load i32, ptr %nde, align 4, !tbaa !8
  %conv470 = sext i32 %300 to i64
  %301 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen471 = getelementptr inbounds %struct.sparsegraph, ptr %301, i32 0, i32 8
  store i64 %conv470, ptr %elen471, align 8, !tbaa !61
  %302 = load i32, ptr %nde, align 4, !tbaa !8
  %conv472 = sext i32 %302 to i64
  %mul473 = mul i64 %conv472, 4
  %call474 = call noalias ptr @malloc(i64 noundef %mul473) #16
  %303 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e475 = getelementptr inbounds %struct.sparsegraph, ptr %303, i32 0, i32 4
  store ptr %call474, ptr %e475, align 8, !tbaa !62
  %cmp476 = icmp eq ptr %call474, null
  br i1 %cmp476, label %if.then478, label %if.end479

if.then478:                                       ; preds = %if.end469
  call void @gt_abort(ptr noundef @.str.33)
  br label %if.end479

if.end479:                                        ; preds = %if.then478, %if.end469
  br label %if.end480

if.end480:                                        ; preds = %if.end479, %for.end457
  %304 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e481 = getelementptr inbounds %struct.sparsegraph, ptr %304, i32 0, i32 4
  %305 = load ptr, ptr %e481, align 8, !tbaa !62
  store ptr %305, ptr %e, align 8, !tbaa !4
  %306 = load ptr, ptr %q, align 8, !tbaa !4
  store ptr %306, ptr %p, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %vv, align 4, !tbaa !8
  store i32 0, ptr %done, align 4, !tbaa !8
  br label %while.cond482

while.cond482:                                    ; preds = %if.end582, %if.then552, %if.then496, %if.end480
  %307 = load i32, ptr %done, align 4, !tbaa !8
  %tobool483 = icmp ne i32 %307, 0
  %lnot484 = xor i1 %tobool483, true
  br i1 %lnot484, label %while.body485, label %while.end583

while.body485:                                    ; preds = %while.cond482
  %308 = load i32, ptr %k, align 4, !tbaa !8
  %cmp486 = icmp eq i32 %308, 0
  br i1 %cmp486, label %if.then488, label %if.end500

if.then488:                                       ; preds = %while.body485
  %309 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr489 = getelementptr inbounds i8, ptr %309, i32 1
  store ptr %incdec.ptr489, ptr %p, align 8, !tbaa !4
  %310 = load i8, ptr %309, align 1, !tbaa !12
  %conv490 = sext i8 %310 to i32
  store i32 %conv490, ptr %x, align 4, !tbaa !8
  %311 = load i32, ptr %x, align 4, !tbaa !8
  %cmp491 = icmp eq i32 %311, 10
  br i1 %cmp491, label %if.then496, label %lor.lhs.false493

lor.lhs.false493:                                 ; preds = %if.then488
  %312 = load i32, ptr %x, align 4, !tbaa !8
  %cmp494 = icmp eq i32 %312, 0
  br i1 %cmp494, label %if.then496, label %if.else497

if.then496:                                       ; preds = %lor.lhs.false493, %if.then488
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond482, !llvm.loop !76

if.else497:                                       ; preds = %lor.lhs.false493
  %313 = load i32, ptr %x, align 4, !tbaa !8
  %sub498 = sub nsw i32 %313, 63
  store i32 %sub498, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end499

if.end499:                                        ; preds = %if.else497
  br label %if.end500

if.end500:                                        ; preds = %if.end499, %while.body485
  %314 = load i32, ptr %x, align 4, !tbaa !8
  %315 = load i32, ptr %k, align 4, !tbaa !8
  %sub501 = sub nsw i32 %315, 1
  %shl502 = shl i32 1, %sub501
  %and503 = and i32 %314, %shl502
  %tobool504 = icmp ne i32 %and503, 0
  br i1 %tobool504, label %if.then505, label %if.end507

if.then505:                                       ; preds = %if.end500
  %316 = load i32, ptr %vv, align 4, !tbaa !8
  %inc506 = add nsw i32 %316, 1
  store i32 %inc506, ptr %vv, align 4, !tbaa !8
  br label %if.end507

if.end507:                                        ; preds = %if.then505, %if.end500
  %317 = load i32, ptr %k, align 4, !tbaa !8
  %dec508 = add nsw i32 %317, -1
  store i32 %dec508, ptr %k, align 4, !tbaa !8
  %318 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %318, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %while.cond509

while.cond509:                                    ; preds = %if.end549, %if.then527, %if.end507
  %319 = load i32, ptr %need, align 4, !tbaa !8
  %cmp510 = icmp sgt i32 %319, 0
  br i1 %cmp510, label %land.rhs512, label %land.end515

land.rhs512:                                      ; preds = %while.cond509
  %320 = load i32, ptr %done, align 4, !tbaa !8
  %tobool513 = icmp ne i32 %320, 0
  %lnot514 = xor i1 %tobool513, true
  br label %land.end515

land.end515:                                      ; preds = %land.rhs512, %while.cond509
  %321 = phi i1 [ false, %while.cond509 ], [ %lnot514, %land.rhs512 ]
  br i1 %321, label %while.body516, label %while.end550

while.body516:                                    ; preds = %land.end515
  %322 = load i32, ptr %k, align 4, !tbaa !8
  %cmp517 = icmp eq i32 %322, 0
  br i1 %cmp517, label %if.then519, label %if.end531

if.then519:                                       ; preds = %while.body516
  %323 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr520 = getelementptr inbounds i8, ptr %323, i32 1
  store ptr %incdec.ptr520, ptr %p, align 8, !tbaa !4
  %324 = load i8, ptr %323, align 1, !tbaa !12
  %conv521 = sext i8 %324 to i32
  store i32 %conv521, ptr %x, align 4, !tbaa !8
  %325 = load i32, ptr %x, align 4, !tbaa !8
  %cmp522 = icmp eq i32 %325, 10
  br i1 %cmp522, label %if.then527, label %lor.lhs.false524

lor.lhs.false524:                                 ; preds = %if.then519
  %326 = load i32, ptr %x, align 4, !tbaa !8
  %cmp525 = icmp eq i32 %326, 0
  br i1 %cmp525, label %if.then527, label %if.else528

if.then527:                                       ; preds = %lor.lhs.false524, %if.then519
  store i32 1, ptr %done, align 4, !tbaa !8
  br label %while.cond509, !llvm.loop !77

if.else528:                                       ; preds = %lor.lhs.false524
  %327 = load i32, ptr %x, align 4, !tbaa !8
  %sub529 = sub nsw i32 %327, 63
  store i32 %sub529, ptr %x, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  br label %if.end530

if.end530:                                        ; preds = %if.else528
  br label %if.end531

if.end531:                                        ; preds = %if.end530, %while.body516
  %328 = load i32, ptr %need, align 4, !tbaa !8
  %329 = load i32, ptr %k, align 4, !tbaa !8
  %cmp532 = icmp sge i32 %328, %329
  br i1 %cmp532, label %if.then534, label %if.else541

if.then534:                                       ; preds = %if.end531
  %330 = load i32, ptr %j, align 4, !tbaa !8
  %331 = load i32, ptr %k, align 4, !tbaa !8
  %shl535 = shl i32 %330, %331
  %332 = load i32, ptr %x, align 4, !tbaa !8
  %333 = load i32, ptr %k, align 4, !tbaa !8
  %shl536 = shl i32 1, %333
  %sub537 = sub nsw i32 %shl536, 1
  %and538 = and i32 %332, %sub537
  %or539 = or i32 %shl535, %and538
  store i32 %or539, ptr %j, align 4, !tbaa !8
  %334 = load i32, ptr %k, align 4, !tbaa !8
  %335 = load i32, ptr %need, align 4, !tbaa !8
  %sub540 = sub nsw i32 %335, %334
  store i32 %sub540, ptr %need, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %if.end549

if.else541:                                       ; preds = %if.end531
  %336 = load i32, ptr %need, align 4, !tbaa !8
  %337 = load i32, ptr %k, align 4, !tbaa !8
  %sub542 = sub nsw i32 %337, %336
  store i32 %sub542, ptr %k, align 4, !tbaa !8
  %338 = load i32, ptr %j, align 4, !tbaa !8
  %339 = load i32, ptr %need, align 4, !tbaa !8
  %shl543 = shl i32 %338, %339
  %340 = load i32, ptr %x, align 4, !tbaa !8
  %341 = load i32, ptr %k, align 4, !tbaa !8
  %shr544 = ashr i32 %340, %341
  %342 = load i32, ptr %need, align 4, !tbaa !8
  %shl545 = shl i32 1, %342
  %sub546 = sub nsw i32 %shl545, 1
  %and547 = and i32 %shr544, %sub546
  %or548 = or i32 %shl543, %and547
  store i32 %or548, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %need, align 4, !tbaa !8
  br label %if.end549

if.end549:                                        ; preds = %if.else541, %if.then534
  br label %while.cond509, !llvm.loop !77

while.end550:                                     ; preds = %land.end515
  %343 = load i32, ptr %done, align 4, !tbaa !8
  %tobool551 = icmp ne i32 %343, 0
  br i1 %tobool551, label %if.then552, label %if.end553

if.then552:                                       ; preds = %while.end550
  br label %while.cond482, !llvm.loop !76

if.end553:                                        ; preds = %while.end550
  %344 = load i32, ptr %j, align 4, !tbaa !8
  %345 = load i32, ptr %vv, align 4, !tbaa !8
  %cmp554 = icmp sgt i32 %344, %345
  br i1 %cmp554, label %if.then556, label %if.else557

if.then556:                                       ; preds = %if.end553
  %346 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %346, ptr %vv, align 4, !tbaa !8
  br label %if.end582

if.else557:                                       ; preds = %if.end553
  %347 = load i32, ptr %vv, align 4, !tbaa !8
  %348 = load i32, ptr %n, align 4, !tbaa !8
  %cmp558 = icmp slt i32 %347, %348
  br i1 %cmp558, label %if.then560, label %if.end581

if.then560:                                       ; preds = %if.else557
  %349 = load i32, ptr %j, align 4, !tbaa !8
  %350 = load ptr, ptr %e, align 8, !tbaa !4
  %351 = load ptr, ptr %v, align 8, !tbaa !4
  %352 = load i32, ptr %vv, align 4, !tbaa !8
  %idxprom561 = sext i32 %352 to i64
  %arrayidx562 = getelementptr inbounds i64, ptr %351, i64 %idxprom561
  %353 = load i64, ptr %arrayidx562, align 8, !tbaa !10
  %354 = load ptr, ptr %d, align 8, !tbaa !4
  %355 = load i32, ptr %vv, align 4, !tbaa !8
  %idxprom563 = sext i32 %355 to i64
  %arrayidx564 = getelementptr inbounds i32, ptr %354, i64 %idxprom563
  %356 = load i32, ptr %arrayidx564, align 4, !tbaa !8
  %inc565 = add nsw i32 %356, 1
  store i32 %inc565, ptr %arrayidx564, align 4, !tbaa !8
  %conv566 = sext i32 %356 to i64
  %add567 = add i64 %353, %conv566
  %arrayidx568 = getelementptr inbounds i32, ptr %350, i64 %add567
  store i32 %349, ptr %arrayidx568, align 4, !tbaa !8
  %357 = load i32, ptr %vv, align 4, !tbaa !8
  %358 = load i32, ptr %j, align 4, !tbaa !8
  %cmp569 = icmp ne i32 %357, %358
  br i1 %cmp569, label %if.then571, label %if.end580

if.then571:                                       ; preds = %if.then560
  %359 = load i32, ptr %vv, align 4, !tbaa !8
  %360 = load ptr, ptr %e, align 8, !tbaa !4
  %361 = load ptr, ptr %v, align 8, !tbaa !4
  %362 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom572 = sext i32 %362 to i64
  %arrayidx573 = getelementptr inbounds i64, ptr %361, i64 %idxprom572
  %363 = load i64, ptr %arrayidx573, align 8, !tbaa !10
  %364 = load ptr, ptr %d, align 8, !tbaa !4
  %365 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom574 = sext i32 %365 to i64
  %arrayidx575 = getelementptr inbounds i32, ptr %364, i64 %idxprom574
  %366 = load i32, ptr %arrayidx575, align 4, !tbaa !8
  %inc576 = add nsw i32 %366, 1
  store i32 %inc576, ptr %arrayidx575, align 4, !tbaa !8
  %conv577 = sext i32 %366 to i64
  %add578 = add i64 %363, %conv577
  %arrayidx579 = getelementptr inbounds i32, ptr %360, i64 %add578
  store i32 %359, ptr %arrayidx579, align 4, !tbaa !8
  br label %if.end580

if.end580:                                        ; preds = %if.then571, %if.then560
  br label %if.end581

if.end581:                                        ; preds = %if.end580, %if.else557
  br label %if.end582

if.end582:                                        ; preds = %if.end581, %if.then556
  br label %while.cond482, !llvm.loop !76

while.end583:                                     ; preds = %while.cond482
  %367 = load i32, ptr %loops, align 4, !tbaa !8
  %368 = load ptr, ptr %nloops.addr, align 8, !tbaa !4
  store i32 %367, ptr %368, align 4, !tbaa !8
  br label %if.end584

if.end584:                                        ; preds = %while.end583, %for.end326
  br label %if.end585

if.end585:                                        ; preds = %if.end584, %for.end191
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %loops) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %vv) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nde) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @read_sgg_loops(ptr noundef %f, ptr noundef %sg, ptr noundef %nloops, ptr noundef %digraph) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %nloops.addr = alloca ptr, align 8
  %digraph.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %loops = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  store ptr %nloops, ptr %nloops.addr, align 8, !tbaa !4
  store ptr %digraph, ptr %digraph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %loops) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call ptr @gtools_getline(ptr noundef %0)
  store ptr %call, ptr @readg_line, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @readg_line, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 58
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 2, ptr @readg_code, align 4, !tbaa !8
  %4 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !8
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 38
  br i1 %cmp6, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  store i32 128, ptr @readg_code, align 4, !tbaa !8
  %8 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 1, ptr %8, align 4, !tbaa !8
  %9 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %add.ptr9, ptr %p, align 8, !tbaa !4
  br label %if.end11

if.else10:                                        ; preds = %if.else
  store i32 1, ptr @readg_code, align 4, !tbaa !8
  %10 = load ptr, ptr %digraph.addr, align 8, !tbaa !4
  store i32 0, ptr %10, align 4, !tbaa !8
  %11 = load ptr, ptr %s, align 8, !tbaa !4
  store ptr %11, ptr %p, align 8, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end12
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !12
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp sge i32 %conv13, 63
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %p, align 8, !tbaa !4
  %15 = load i8, ptr %14, align 1, !tbaa !12
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp sle i32 %conv16, 126
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !78

while.end:                                        ; preds = %land.end
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv19 = sext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %while.end
  call void @gt_abort(ptr noundef @.str.34)
  br label %if.end29

if.else23:                                        ; preds = %while.end
  %20 = load ptr, ptr %p, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp ne i32 %conv24, 10
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else23
  call void @gt_abort(ptr noundef @.str.35)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then22
  %22 = load ptr, ptr %s, align 8, !tbaa !4
  %call30 = call i32 @graphsize(ptr noundef %22)
  store i32 %call30, ptr %n, align 4, !tbaa !8
  %23 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %23, 1
  br i1 %cmp31, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end29
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %cmp33 = icmp sle i32 %26, 62
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %27 = load i32, ptr %n, align 4, !tbaa !8
  %cmp35 = icmp sle i32 %27, 258047
  %28 = zext i1 %cmp35 to i64
  %cond = select i1 %cmp35, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv38 = sext i32 %cond37 to i64
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %conv39 = sext i32 %29 to i64
  %div = udiv i64 %conv39, 12
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %conv40 = sext i32 %30 to i64
  %sub = sub i64 %conv40, 1
  %mul = mul i64 %div, %sub
  %31 = load i32, ptr %n, align 4, !tbaa !8
  %conv41 = sext i32 %31 to i64
  %rem = urem i64 %conv41, 12
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %conv42 = sext i32 %32 to i64
  %sub43 = sub i64 %conv42, 1
  %mul44 = mul i64 %rem, %sub43
  %add = add i64 %mul44, 11
  %div45 = udiv i64 %add, 12
  %add46 = add i64 %mul, %div45
  %add47 = add i64 %conv38, %add46
  %cmp48 = icmp ne i64 %sub.ptr.sub, %add47
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %cond.end
  call void @gt_abort(ptr noundef @.str.36)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %cond.end, %if.end29
  %33 = load i32, ptr @readg_code, align 4, !tbaa !8
  %cmp52 = icmp eq i32 %33, 128
  br i1 %cmp52, label %land.lhs.true54, label %if.end84

land.lhs.true54:                                  ; preds = %if.end51
  %34 = load ptr, ptr %p, align 8, !tbaa !4
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  %sub.ptr.lhs.cast55 = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast56 = ptrtoint ptr %35 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %36 = load i32, ptr %n, align 4, !tbaa !8
  %cmp58 = icmp sle i32 %36, 62
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %land.lhs.true54
  br label %cond.end65

cond.false61:                                     ; preds = %land.lhs.true54
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %cmp62 = icmp sle i32 %37, 258047
  %38 = zext i1 %cmp62 to i64
  %cond64 = select i1 %cmp62, i32 4, i32 8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false61, %cond.true60
  %cond66 = phi i32 [ 1, %cond.true60 ], [ %cond64, %cond.false61 ]
  %add67 = add nsw i32 1, %cond66
  %conv68 = sext i32 %add67 to i64
  %39 = load i32, ptr %n, align 4, !tbaa !8
  %conv69 = sext i32 %39 to i64
  %40 = load i32, ptr %n, align 4, !tbaa !8
  %div70 = sdiv i32 %40, 6
  %conv71 = sext i32 %div70 to i64
  %mul72 = mul i64 %conv69, %conv71
  %41 = load i32, ptr %n, align 4, !tbaa !8
  %conv73 = sext i32 %41 to i64
  %42 = load i32, ptr %n, align 4, !tbaa !8
  %rem74 = srem i32 %42, 6
  %conv75 = sext i32 %rem74 to i64
  %mul76 = mul i64 %conv73, %conv75
  %add77 = add i64 %mul76, 5
  %div78 = udiv i64 %add77, 6
  %add79 = add i64 %mul72, %div78
  %add80 = add i64 %conv68, %add79
  %cmp81 = icmp ne i64 %sub.ptr.sub57, %add80
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %cond.end65
  call void @gt_abort(ptr noundef @.str.37)
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %cond.end65, %if.end51
  %43 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %cmp85 = icmp eq ptr %43, null
  br i1 %cmp85, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end84
  %call88 = call noalias ptr @malloc(i64 noundef 80) #16
  store ptr %call88, ptr %sg.addr, align 8, !tbaa !4
  %cmp89 = icmp eq ptr %call88, null
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  call void @gt_abort(ptr noundef @.str.38)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then87
  br label %do.body

do.body:                                          ; preds = %if.end92
  %44 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.sparsegraph, ptr %44, i32 0, i32 1
  store ptr null, ptr %v, align 8, !tbaa !52
  %45 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.sparsegraph, ptr %45, i32 0, i32 5
  store ptr null, ptr %w, align 8, !tbaa !79
  %46 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.sparsegraph, ptr %46, i32 0, i32 4
  store ptr null, ptr %e, align 8, !tbaa !62
  %47 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.sparsegraph, ptr %47, i32 0, i32 3
  store ptr null, ptr %d, align 8, !tbaa !54
  %48 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %wlen = getelementptr inbounds %struct.sparsegraph, ptr %48, i32 0, i32 9
  store i64 0, ptr %wlen, align 8, !tbaa !80
  %49 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %49, i32 0, i32 8
  store i64 0, ptr %elen, align 8, !tbaa !61
  %50 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %50, i32 0, i32 7
  store i64 0, ptr %dlen, align 8, !tbaa !53
  %51 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %51, i32 0, i32 6
  store i64 0, ptr %vlen, align 8, !tbaa !51
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end93

if.end93:                                         ; preds = %do.end, %if.end84
  %52 = load ptr, ptr %s, align 8, !tbaa !4
  %53 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  call void @stringtosparsegraph(ptr noundef %52, ptr noundef %53, ptr noundef %loops)
  %54 = load i32, ptr %loops, align 4, !tbaa !8
  %55 = load ptr, ptr %nloops.addr, align 8, !tbaa !4
  store i32 %54, ptr %55, align 4, !tbaa !8
  %56 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  store ptr %56, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %loops) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  %57 = load ptr, ptr %retval, align 8
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define ptr @read_sg_loops(ptr noundef %f, ptr noundef %sg, ptr noundef %nloops) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %nloops.addr = alloca ptr, align 8
  %sgg = alloca ptr, align 8
  %digraph = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  store ptr %nloops, ptr %nloops.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgg) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %digraph) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %nloops.addr, align 8, !tbaa !4
  %call = call ptr @read_sgg_loops(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %digraph)
  store ptr %call, ptr %sgg, align 8, !tbaa !4
  %3 = load ptr, ptr %sgg, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %digraph, align 4, !tbaa !8
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.39)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %sgg, align 8, !tbaa !4
  store ptr %5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %digraph) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgg) #12
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define ptr @read_sg(ptr noundef %f, ptr noundef %sg) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %loops = alloca i32, align 4
  %sgg = alloca ptr, align 8
  %digraph = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %loops) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgg) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %digraph) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %call = call ptr @read_sgg_loops(ptr noundef %0, ptr noundef %1, ptr noundef %loops, ptr noundef %digraph)
  store ptr %call, ptr %sgg, align 8, !tbaa !4
  %2 = load ptr, ptr %sgg, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %digraph, align 4, !tbaa !8
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.40)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %sgg, align 8, !tbaa !4
  store ptr %4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %digraph) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgg) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %loops) #12
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define ptr @ntod6(ptr noundef %g, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %x = alloca i8, align 1
  %gj = alloca ptr, align 8
  %ii = alloca i64, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp = icmp sle i32 %0, 62
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp1 = icmp sle i32 %1, 258047
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %add = add nsw i32 1, %cond2
  %conv = sext i32 %add to i64
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %3 to i64
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %div = sdiv i32 %4, 6
  %conv4 = sext i32 %div to i64
  %mul = mul i64 %conv3, %conv4
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv5 = sext i32 %5 to i64
  %6 = load i32, ptr %n.addr, align 4, !tbaa !8
  %rem = srem i32 %6, 6
  %conv6 = sext i32 %rem to i64
  %mul7 = mul i64 %conv5, %conv6
  %add8 = add i64 %mul7, 5
  %div9 = udiv i64 %add8, 6
  %add10 = add i64 %mul, %div9
  %add11 = add i64 %conv, %add10
  %add12 = add i64 %add11, 3
  store i64 %add12, ptr %ii, align 8, !tbaa !10
  %7 = load i64, ptr %ii, align 8, !tbaa !10
  %8 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp13 = icmp ugt i64 %7, %8
  br i1 %cmp13, label %if.then, label %if.end21

if.then:                                          ; preds = %cond.end
  %9 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %10 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %10) #12
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %11 = load i64, ptr %ii, align 8, !tbaa !10
  store i64 %11, ptr @gcode_sz, align 8, !tbaa !10
  %12 = load i64, ptr %ii, align 8, !tbaa !10
  %mul16 = mul i64 %12, 1
  %call = call noalias ptr @malloc(i64 noundef %mul16) #16
  store ptr %call, ptr @gcode, align 8, !tbaa !4
  %cmp17 = icmp eq ptr %call, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.41)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %cond.end
  %13 = load ptr, ptr @gcode, align 8, !tbaa !4
  store ptr %13, ptr %p, align 8, !tbaa !4
  %14 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 38, ptr %14, align 1, !tbaa !12
  %15 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void @encodegraphsize(i32 noundef %15, ptr noundef %p)
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc50, %if.end21
  %16 = load i32, ptr %j, align 4, !tbaa !8
  %17 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %for.body, label %for.end52

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %19 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv24 = sext i32 %19 to i64
  %20 = load i32, ptr %j, align 4, !tbaa !8
  %conv25 = sext i32 %20 to i64
  %mul26 = mul i64 %conv24, %conv25
  %add.ptr = getelementptr inbounds i32, ptr %18, i64 %mul26
  store ptr %add.ptr, ptr %gj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %for.body
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %22 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %21, %22
  br i1 %cmp28, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond27
  %23 = load i8, ptr %x, align 1, !tbaa !12
  %conv31 = sext i8 %23 to i32
  %shl = shl i32 %conv31, 1
  %conv32 = trunc i32 %shl to i8
  store i8 %conv32, ptr %x, align 1, !tbaa !12
  %24 = load ptr, ptr %gj, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %25, 5
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 %idxprom
  %26 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %and = and i32 %27, 31
  %idxprom33 = sext i32 %and to i64
  %arrayidx34 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom33
  %28 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %and35 = and i32 %26, %28
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.body30
  %29 = load i8, ptr %x, align 1, !tbaa !12
  %conv39 = sext i8 %29 to i32
  %or = or i32 %conv39, 1
  %conv40 = trunc i32 %or to i8
  store i8 %conv40, ptr %x, align 1, !tbaa !12
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.body30
  %30 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %cmp42 = icmp eq i32 %dec, 0
  br i1 %cmp42, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end41
  %31 = load i8, ptr %x, align 1, !tbaa !12
  %conv45 = sext i8 %31 to i32
  %add46 = add nsw i32 63, %conv45
  %conv47 = trunc i32 %add46 to i8
  %32 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr48 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr48, ptr %p, align 8, !tbaa !4
  store i8 %conv47, ptr %32, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end41
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond27, !llvm.loop !81

for.end:                                          ; preds = %for.cond27
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %inc51 = add nsw i32 %34, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !82

for.end52:                                        ; preds = %for.cond
  %35 = load i32, ptr %k, align 4, !tbaa !8
  %cmp53 = icmp ne i32 %35, 6
  br i1 %cmp53, label %if.then55, label %if.end61

if.then55:                                        ; preds = %for.end52
  %36 = load i8, ptr %x, align 1, !tbaa !12
  %conv56 = sext i8 %36 to i32
  %37 = load i32, ptr %k, align 4, !tbaa !8
  %shl57 = shl i32 %conv56, %37
  %add58 = add nsw i32 63, %shl57
  %conv59 = trunc i32 %add58 to i8
  %38 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr60 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr60, ptr %p, align 8, !tbaa !4
  store i8 %conv59, ptr %38, align 1, !tbaa !12
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %for.end52
  %39 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr62 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr62, ptr %p, align 8, !tbaa !4
  store i8 10, ptr %39, align 1, !tbaa !12
  %40 = load ptr, ptr %p, align 8, !tbaa !4
  store i8 0, ptr %40, align 1, !tbaa !12
  %41 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define ptr @ntog6(ptr noundef %g, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %x = alloca i8, align 1
  %gj = alloca ptr, align 8
  %ii = alloca i64, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp = icmp sle i32 %0, 62
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp1 = icmp sle i32 %1, 258047
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv = sext i32 %cond2 to i64
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %3 to i64
  %div = udiv i64 %conv3, 12
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv4 = sext i32 %4 to i64
  %sub = sub i64 %conv4, 1
  %mul = mul i64 %div, %sub
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv5 = sext i32 %5 to i64
  %rem = urem i64 %conv5, 12
  %6 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv6 = sext i32 %6 to i64
  %sub7 = sub i64 %conv6, 1
  %mul8 = mul i64 %rem, %sub7
  %add = add i64 %mul8, 11
  %div9 = udiv i64 %add, 12
  %add10 = add i64 %mul, %div9
  %add11 = add i64 %conv, %add10
  %add12 = add i64 %add11, 3
  store i64 %add12, ptr %ii, align 8, !tbaa !10
  %7 = load i64, ptr %ii, align 8, !tbaa !10
  %8 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp13 = icmp ugt i64 %7, %8
  br i1 %cmp13, label %if.then, label %if.end21

if.then:                                          ; preds = %cond.end
  %9 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %10 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %10) #12
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %11 = load i64, ptr %ii, align 8, !tbaa !10
  store i64 %11, ptr @gcode_sz, align 8, !tbaa !10
  %12 = load i64, ptr %ii, align 8, !tbaa !10
  %mul16 = mul i64 %12, 1
  %call = call noalias ptr @malloc(i64 noundef %mul16) #16
  store ptr %call, ptr @gcode, align 8, !tbaa !4
  %cmp17 = icmp eq ptr %call, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.42)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %cond.end
  %13 = load ptr, ptr @gcode, align 8, !tbaa !4
  store ptr %13, ptr %p, align 8, !tbaa !4
  %14 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void @encodegraphsize(i32 noundef %14, ptr noundef %p)
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %if.end21
  %15 = load i32, ptr %j, align 4, !tbaa !8
  %16 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %15, %16
  br i1 %cmp22, label %for.body, label %for.end51

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %18 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv24 = sext i32 %18 to i64
  %19 = load i32, ptr %j, align 4, !tbaa !8
  %conv25 = sext i32 %19 to i64
  %mul26 = mul i64 %conv24, %conv25
  %add.ptr = getelementptr inbounds i32, ptr %17, i64 %mul26
  store ptr %add.ptr, ptr %gj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %for.body
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %21 = load i32, ptr %j, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %20, %21
  br i1 %cmp28, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond27
  %22 = load i8, ptr %x, align 1, !tbaa !12
  %conv31 = sext i8 %22 to i32
  %shl = shl i32 %conv31, 1
  %conv32 = trunc i32 %shl to i8
  store i8 %conv32, ptr %x, align 1, !tbaa !12
  %23 = load ptr, ptr %gj, align 8, !tbaa !4
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %24, 5
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 %idxprom
  %25 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %and = and i32 %26, 31
  %idxprom33 = sext i32 %and to i64
  %arrayidx34 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom33
  %27 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %and35 = and i32 %25, %27
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.body30
  %28 = load i8, ptr %x, align 1, !tbaa !12
  %conv39 = sext i8 %28 to i32
  %or = or i32 %conv39, 1
  %conv40 = trunc i32 %or to i8
  store i8 %conv40, ptr %x, align 1, !tbaa !12
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.body30
  %29 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %cmp42 = icmp eq i32 %dec, 0
  br i1 %cmp42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end41
  %30 = load i8, ptr %x, align 1, !tbaa !12
  %conv45 = sext i8 %30 to i32
  %add46 = add nsw i32 63, %conv45
  %conv47 = trunc i32 %add46 to i8
  %31 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv47, ptr %31, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end41
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond27, !llvm.loop !83

for.end:                                          ; preds = %for.cond27
  br label %for.inc49

for.inc49:                                        ; preds = %for.end
  %33 = load i32, ptr %j, align 4, !tbaa !8
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !84

for.end51:                                        ; preds = %for.cond
  %34 = load i32, ptr %k, align 4, !tbaa !8
  %cmp52 = icmp ne i32 %34, 6
  br i1 %cmp52, label %if.then54, label %if.end60

if.then54:                                        ; preds = %for.end51
  %35 = load i8, ptr %x, align 1, !tbaa !12
  %conv55 = sext i8 %35 to i32
  %36 = load i32, ptr %k, align 4, !tbaa !8
  %shl56 = shl i32 %conv55, %36
  %add57 = add nsw i32 63, %shl56
  %conv58 = trunc i32 %add57 to i8
  %37 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr59 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !4
  store i8 %conv58, ptr %37, align 1, !tbaa !12
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %for.end51
  %38 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr61 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr61, ptr %p, align 8, !tbaa !4
  store i8 10, ptr %38, align 1, !tbaa !12
  %39 = load ptr, ptr %p, align 8, !tbaa !4
  store i8 0, ptr %39, align 1, !tbaa !12
  %40 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  ret ptr %40
}

; Function Attrs: nounwind uwtable
define ptr @ntos6(ptr noundef %g, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %x = alloca i8, align 1
  %gj = alloca ptr, align 8
  %ii = alloca i64, align 8
  %r = alloca i32, align 4
  %rr = alloca i32, align 4
  %topbit = alloca i32, align 4
  %nb = alloca i32, align 4
  %lastj = alloca i32, align 4
  %plim = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rr) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %topbit) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastj) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %plim) #12
  %0 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp = icmp ugt i64 5000, %0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %2) #12
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i64 5000, ptr @gcode_sz, align 8, !tbaa !10
  %call = call noalias ptr @malloc(i64 noundef 5000) #16
  store ptr %call, ptr @gcode, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.43)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %entry
  %3 = load ptr, ptr @gcode, align 8, !tbaa !4
  %4 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 -20
  store ptr %add.ptr6, ptr %plim, align 8, !tbaa !4
  %5 = load ptr, ptr @gcode, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  store i8 58, ptr %arrayidx, align 1, !tbaa !12
  %6 = load ptr, ptr @gcode, align 8, !tbaa !4
  %add.ptr7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr7, ptr %p, align 8, !tbaa !4
  %7 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void @encodegraphsize(i32 noundef %7, ptr noundef %p)
  %8 = load i32, ptr %n.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %10, 1
  store i32 %shr, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %nb, align 4, !tbaa !8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nb, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %nb, align 4, !tbaa !8
  %sub9 = sub nsw i32 %12, 1
  %shl = shl i32 1, %sub9
  store i32 %shl, ptr %topbit, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  store i32 0, ptr %lastj, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc157, %for.end
  %13 = load i32, ptr %j, align 4, !tbaa !8
  %14 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %for.body12, label %for.end159

for.body12:                                       ; preds = %for.cond10
  %15 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %16 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv = sext i32 %16 to i64
  %17 = load i32, ptr %j, align 4, !tbaa !8
  %conv13 = sext i32 %17 to i64
  %mul = mul i64 %conv, %conv13
  %add.ptr14 = getelementptr inbounds i32, ptr %15, i64 %mul
  store ptr %add.ptr14, ptr %gj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc154, %for.body12
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %19 = load i32, ptr %j, align 4, !tbaa !8
  %cmp16 = icmp sle i32 %18, %19
  br i1 %cmp16, label %for.body18, label %for.end156

for.body18:                                       ; preds = %for.cond15
  %20 = load ptr, ptr %gj, align 8, !tbaa !4
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %shr19 = ashr i32 %21, 5
  %idxprom = sext i32 %shr19 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %22 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %and = and i32 %23, 31
  %idxprom21 = sext i32 %and to i64
  %arrayidx22 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom21
  %24 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %and23 = and i32 %22, %24
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %if.then26, label %if.end153

if.then26:                                        ; preds = %for.body18
  %25 = load ptr, ptr %p, align 8, !tbaa !4
  %26 = load ptr, ptr %plim, align 8, !tbaa !4
  %cmp27 = icmp uge ptr %25, %26
  br i1 %cmp27, label %if.then29, label %if.end50

if.then29:                                        ; preds = %if.then26
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %28 = load ptr, ptr @gcode, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %ii, align 8, !tbaa !10
  %29 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div = udiv i64 %29, 2
  %mul30 = mul i64 3, %div
  %add = add i64 %mul30, 10000
  %30 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp31 = icmp ugt i64 %add, %30
  br i1 %cmp31, label %if.then33, label %if.end46

if.then33:                                        ; preds = %if.then29
  %31 = load ptr, ptr @gcode, align 8, !tbaa !4
  %32 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div34 = udiv i64 %32, 2
  %mul35 = mul i64 3, %div34
  %add36 = add i64 %mul35, 10000
  %mul37 = mul i64 %add36, 1
  %call38 = call ptr @realloc(ptr noundef %31, i64 noundef %mul37) #17
  store ptr %call38, ptr @gcode, align 8, !tbaa !4
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then33
  call void @gt_abort(ptr noundef @.str.43)
  br label %if.end45

if.else:                                          ; preds = %if.then33
  %33 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div42 = udiv i64 %33, 2
  %mul43 = mul i64 3, %div42
  %add44 = add i64 %mul43, 10000
  store i64 %add44, ptr @gcode_sz, align 8, !tbaa !10
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then29
  %34 = load ptr, ptr @gcode, align 8, !tbaa !4
  %35 = load i64, ptr %ii, align 8, !tbaa !10
  %add.ptr47 = getelementptr inbounds i8, ptr %34, i64 %35
  store ptr %add.ptr47, ptr %p, align 8, !tbaa !4
  %36 = load ptr, ptr @gcode, align 8, !tbaa !4
  %37 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %add.ptr48 = getelementptr inbounds i8, ptr %36, i64 %37
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr48, i64 -20
  store ptr %add.ptr49, ptr %plim, align 8, !tbaa !4
  br label %if.end50

if.end50:                                         ; preds = %if.end46, %if.then26
  %38 = load i32, ptr %j, align 4, !tbaa !8
  %39 = load i32, ptr %lastj, align 4, !tbaa !8
  %cmp51 = icmp eq i32 %38, %39
  br i1 %cmp51, label %if.then53, label %if.else64

if.then53:                                        ; preds = %if.end50
  %40 = load i8, ptr %x, align 1, !tbaa !12
  %conv54 = sext i8 %40 to i32
  %shl55 = shl i32 %conv54, 1
  %conv56 = trunc i32 %shl55 to i8
  store i8 %conv56, ptr %x, align 1, !tbaa !12
  %41 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %41, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %cmp57 = icmp eq i32 %dec, 0
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then53
  %42 = load i8, ptr %x, align 1, !tbaa !12
  %conv60 = sext i8 %42 to i32
  %add61 = add nsw i32 63, %conv60
  %conv62 = trunc i32 %add61 to i8
  %43 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv62, ptr %43, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then53
  br label %if.end123

if.else64:                                        ; preds = %if.end50
  %44 = load i8, ptr %x, align 1, !tbaa !12
  %conv65 = sext i8 %44 to i32
  %shl66 = shl i32 %conv65, 1
  %or = or i32 %shl66, 1
  %conv67 = trunc i32 %or to i8
  store i8 %conv67, ptr %x, align 1, !tbaa !12
  %45 = load i32, ptr %k, align 4, !tbaa !8
  %dec68 = add nsw i32 %45, -1
  store i32 %dec68, ptr %k, align 4, !tbaa !8
  %cmp69 = icmp eq i32 %dec68, 0
  br i1 %cmp69, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.else64
  %46 = load i8, ptr %x, align 1, !tbaa !12
  %conv72 = sext i8 %46 to i32
  %add73 = add nsw i32 63, %conv72
  %conv74 = trunc i32 %add73 to i8
  %47 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr75 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8, !tbaa !4
  store i8 %conv74, ptr %47, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.else64
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %49 = load i32, ptr %lastj, align 4, !tbaa !8
  %add77 = add nsw i32 %49, 1
  %cmp78 = icmp sgt i32 %48, %add77
  br i1 %cmp78, label %if.then80, label %if.end122

if.then80:                                        ; preds = %if.end76
  store i32 0, ptr %r, align 4, !tbaa !8
  %50 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %50, ptr %rr, align 4, !tbaa !8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc106, %if.then80
  %51 = load i32, ptr %r, align 4, !tbaa !8
  %52 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp82 = icmp slt i32 %51, %52
  br i1 %cmp82, label %for.body84, label %for.end109

for.body84:                                       ; preds = %for.cond81
  %53 = load i32, ptr %rr, align 4, !tbaa !8
  %54 = load i32, ptr %topbit, align 4, !tbaa !8
  %and85 = and i32 %53, %54
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.else92

if.then87:                                        ; preds = %for.body84
  %55 = load i8, ptr %x, align 1, !tbaa !12
  %conv88 = sext i8 %55 to i32
  %shl89 = shl i32 %conv88, 1
  %or90 = or i32 %shl89, 1
  %conv91 = trunc i32 %or90 to i8
  store i8 %conv91, ptr %x, align 1, !tbaa !12
  br label %if.end96

if.else92:                                        ; preds = %for.body84
  %56 = load i8, ptr %x, align 1, !tbaa !12
  %conv93 = sext i8 %56 to i32
  %shl94 = shl i32 %conv93, 1
  %conv95 = trunc i32 %shl94 to i8
  store i8 %conv95, ptr %x, align 1, !tbaa !12
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then87
  %57 = load i32, ptr %k, align 4, !tbaa !8
  %dec97 = add nsw i32 %57, -1
  store i32 %dec97, ptr %k, align 4, !tbaa !8
  %cmp98 = icmp eq i32 %dec97, 0
  br i1 %cmp98, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.end96
  %58 = load i8, ptr %x, align 1, !tbaa !12
  %conv101 = sext i8 %58 to i32
  %add102 = add nsw i32 63, %conv101
  %conv103 = trunc i32 %add102 to i8
  %59 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr104 = getelementptr inbounds i8, ptr %59, i32 1
  store ptr %incdec.ptr104, ptr %p, align 8, !tbaa !4
  store i8 %conv103, ptr %59, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end96
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %60 = load i32, ptr %r, align 4, !tbaa !8
  %inc107 = add nsw i32 %60, 1
  store i32 %inc107, ptr %r, align 4, !tbaa !8
  %61 = load i32, ptr %rr, align 4, !tbaa !8
  %shl108 = shl i32 %61, 1
  store i32 %shl108, ptr %rr, align 4, !tbaa !8
  br label %for.cond81, !llvm.loop !86

for.end109:                                       ; preds = %for.cond81
  %62 = load i8, ptr %x, align 1, !tbaa !12
  %conv110 = sext i8 %62 to i32
  %shl111 = shl i32 %conv110, 1
  %conv112 = trunc i32 %shl111 to i8
  store i8 %conv112, ptr %x, align 1, !tbaa !12
  %63 = load i32, ptr %k, align 4, !tbaa !8
  %dec113 = add nsw i32 %63, -1
  store i32 %dec113, ptr %k, align 4, !tbaa !8
  %cmp114 = icmp eq i32 %dec113, 0
  br i1 %cmp114, label %if.then116, label %if.end121

if.then116:                                       ; preds = %for.end109
  %64 = load i8, ptr %x, align 1, !tbaa !12
  %conv117 = sext i8 %64 to i32
  %add118 = add nsw i32 63, %conv117
  %conv119 = trunc i32 %add118 to i8
  %65 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr120 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr120, ptr %p, align 8, !tbaa !4
  store i8 %conv119, ptr %65, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %for.end109
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end76
  %66 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %66, ptr %lastj, align 4, !tbaa !8
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end63
  store i32 0, ptr %r, align 4, !tbaa !8
  %67 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %67, ptr %rr, align 4, !tbaa !8
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc149, %if.end123
  %68 = load i32, ptr %r, align 4, !tbaa !8
  %69 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp125 = icmp slt i32 %68, %69
  br i1 %cmp125, label %for.body127, label %for.end152

for.body127:                                      ; preds = %for.cond124
  %70 = load i32, ptr %rr, align 4, !tbaa !8
  %71 = load i32, ptr %topbit, align 4, !tbaa !8
  %and128 = and i32 %70, %71
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then130, label %if.else135

if.then130:                                       ; preds = %for.body127
  %72 = load i8, ptr %x, align 1, !tbaa !12
  %conv131 = sext i8 %72 to i32
  %shl132 = shl i32 %conv131, 1
  %or133 = or i32 %shl132, 1
  %conv134 = trunc i32 %or133 to i8
  store i8 %conv134, ptr %x, align 1, !tbaa !12
  br label %if.end139

if.else135:                                       ; preds = %for.body127
  %73 = load i8, ptr %x, align 1, !tbaa !12
  %conv136 = sext i8 %73 to i32
  %shl137 = shl i32 %conv136, 1
  %conv138 = trunc i32 %shl137 to i8
  store i8 %conv138, ptr %x, align 1, !tbaa !12
  br label %if.end139

if.end139:                                        ; preds = %if.else135, %if.then130
  %74 = load i32, ptr %k, align 4, !tbaa !8
  %dec140 = add nsw i32 %74, -1
  store i32 %dec140, ptr %k, align 4, !tbaa !8
  %cmp141 = icmp eq i32 %dec140, 0
  br i1 %cmp141, label %if.then143, label %if.end148

if.then143:                                       ; preds = %if.end139
  %75 = load i8, ptr %x, align 1, !tbaa !12
  %conv144 = sext i8 %75 to i32
  %add145 = add nsw i32 63, %conv144
  %conv146 = trunc i32 %add145 to i8
  %76 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr147 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8, !tbaa !4
  store i8 %conv146, ptr %76, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end139
  br label %for.inc149

for.inc149:                                       ; preds = %if.end148
  %77 = load i32, ptr %r, align 4, !tbaa !8
  %inc150 = add nsw i32 %77, 1
  store i32 %inc150, ptr %r, align 4, !tbaa !8
  %78 = load i32, ptr %rr, align 4, !tbaa !8
  %shl151 = shl i32 %78, 1
  store i32 %shl151, ptr %rr, align 4, !tbaa !8
  br label %for.cond124, !llvm.loop !87

for.end152:                                       ; preds = %for.cond124
  br label %if.end153

if.end153:                                        ; preds = %for.end152, %for.body18
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %79 = load i32, ptr %i, align 4, !tbaa !8
  %inc155 = add nsw i32 %79, 1
  store i32 %inc155, ptr %i, align 4, !tbaa !8
  br label %for.cond15, !llvm.loop !88

for.end156:                                       ; preds = %for.cond15
  br label %for.inc157

for.inc157:                                       ; preds = %for.end156
  %80 = load i32, ptr %j, align 4, !tbaa !8
  %inc158 = add nsw i32 %80, 1
  store i32 %inc158, ptr %j, align 4, !tbaa !8
  br label %for.cond10, !llvm.loop !89

for.end159:                                       ; preds = %for.cond10
  %81 = load i32, ptr %k, align 4, !tbaa !8
  %cmp160 = icmp ne i32 %81, 6
  br i1 %cmp160, label %if.then162, label %if.end193

if.then162:                                       ; preds = %for.end159
  %82 = load i32, ptr %k, align 4, !tbaa !8
  %83 = load i32, ptr %nb, align 4, !tbaa !8
  %add163 = add nsw i32 %83, 1
  %cmp164 = icmp sge i32 %82, %add163
  br i1 %cmp164, label %land.lhs.true, label %if.else183

land.lhs.true:                                    ; preds = %if.then162
  %84 = load i32, ptr %lastj, align 4, !tbaa !8
  %85 = load i32, ptr %n.addr, align 4, !tbaa !8
  %sub166 = sub nsw i32 %85, 2
  %cmp167 = icmp eq i32 %84, %sub166
  br i1 %cmp167, label %land.lhs.true169, label %if.else183

land.lhs.true169:                                 ; preds = %land.lhs.true
  %86 = load i32, ptr %n.addr, align 4, !tbaa !8
  %87 = load i32, ptr %nb, align 4, !tbaa !8
  %shl170 = shl i32 1, %87
  %cmp171 = icmp eq i32 %86, %shl170
  br i1 %cmp171, label %if.then173, label %if.else183

if.then173:                                       ; preds = %land.lhs.true169
  %88 = load i8, ptr %x, align 1, !tbaa !12
  %conv174 = sext i8 %88 to i32
  %89 = load i32, ptr %k, align 4, !tbaa !8
  %shl175 = shl i32 %conv174, %89
  %90 = load i32, ptr %k, align 4, !tbaa !8
  %sub176 = sub nsw i32 %90, 1
  %shl177 = shl i32 1, %sub176
  %sub178 = sub nsw i32 %shl177, 1
  %or179 = or i32 %shl175, %sub178
  %add180 = add nsw i32 63, %or179
  %conv181 = trunc i32 %add180 to i8
  %91 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr182 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr182, ptr %p, align 8, !tbaa !4
  store i8 %conv181, ptr %91, align 1, !tbaa !12
  br label %if.end192

if.else183:                                       ; preds = %land.lhs.true169, %land.lhs.true, %if.then162
  %92 = load i8, ptr %x, align 1, !tbaa !12
  %conv184 = sext i8 %92 to i32
  %93 = load i32, ptr %k, align 4, !tbaa !8
  %shl185 = shl i32 %conv184, %93
  %94 = load i32, ptr %k, align 4, !tbaa !8
  %shl186 = shl i32 1, %94
  %sub187 = sub nsw i32 %shl186, 1
  %or188 = or i32 %shl185, %sub187
  %add189 = add nsw i32 63, %or188
  %conv190 = trunc i32 %add189 to i8
  %95 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr191 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8, !tbaa !4
  store i8 %conv190, ptr %95, align 1, !tbaa !12
  br label %if.end192

if.end192:                                        ; preds = %if.else183, %if.then173
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %for.end159
  %96 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr194 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr194, ptr %p, align 8, !tbaa !4
  store i8 10, ptr %96, align 1, !tbaa !12
  %97 = load ptr, ptr %p, align 8, !tbaa !4
  store i8 0, ptr %97, align 1, !tbaa !12
  %98 = load ptr, ptr %p, align 8, !tbaa !4
  %99 = load ptr, ptr @gcode, align 8, !tbaa !4
  %sub.ptr.lhs.cast195 = ptrtoint ptr %98 to i64
  %sub.ptr.rhs.cast196 = ptrtoint ptr %99 to i64
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast196
  store i64 %sub.ptr.sub197, ptr @s6len, align 8, !tbaa !10
  %100 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %plim) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastj) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %topbit) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %rr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  ret ptr %100
}

; Function Attrs: nounwind uwtable
define ptr @ntois6(ptr noundef %g, ptr noundef %prevg, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %prevg.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %x = alloca i8, align 1
  %gj = alloca ptr, align 8
  %pgj = alloca ptr, align 8
  %gdiff = alloca i32, align 4
  %ii = alloca i64, align 8
  %r = alloca i32, align 4
  %rr = alloca i32, align 4
  %topbit = alloca i32, align 4
  %nb = alloca i32, align 4
  %lastj = alloca i32, align 4
  %iw = alloca i32, align 4
  %nwords = alloca i32, align 4
  %plim = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %prevg, ptr %prevg.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgj) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %gdiff) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rr) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %topbit) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastj) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %iw) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwords) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %plim) #12
  %0 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %2 = load i32, ptr %m.addr, align 4, !tbaa !8
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call ptr @ntos6(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  store ptr %call, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp = icmp ugt i64 5000, %4
  br i1 %cmp, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %5 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then1
  %6 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %6) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  store i64 5000, ptr @gcode_sz, align 8, !tbaa !10
  %call5 = call noalias ptr @malloc(i64 noundef 5000) #16
  store ptr %call5, ptr @gcode, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @gt_abort(ptr noundef @.str.44)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %7 = load ptr, ptr @gcode, align 8, !tbaa !4
  %8 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr, i64 -20
  store ptr %add.ptr10, ptr %plim, align 8, !tbaa !4
  %9 = load ptr, ptr @gcode, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  store i8 59, ptr %arrayidx, align 1, !tbaa !12
  %10 = load ptr, ptr @gcode, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %add.ptr11, ptr %p, align 8, !tbaa !4
  %11 = load i32, ptr %n.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %11, 1
  store i32 %sub, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %12, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %13, 1
  store i32 %shr, ptr %i, align 4, !tbaa !8
  %14 = load i32, ptr %nb, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %nb, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %nb, align 4, !tbaa !8
  %sub13 = sub nsw i32 %15, 1
  %shl = shl i32 1, %sub13
  store i32 %shl, ptr %topbit, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  store i32 0, ptr %lastj, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc216, %for.end
  %16 = load i32, ptr %j, align 4, !tbaa !8
  %17 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body16, label %for.end218

for.body16:                                       ; preds = %for.cond14
  %18 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %19 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv = sext i32 %19 to i64
  %20 = load i32, ptr %j, align 4, !tbaa !8
  %conv17 = sext i32 %20 to i64
  %mul = mul i64 %conv, %conv17
  %add.ptr18 = getelementptr inbounds i32, ptr %18, i64 %mul
  store ptr %add.ptr18, ptr %gj, align 8, !tbaa !4
  %21 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %22 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv19 = sext i32 %22 to i64
  %23 = load i32, ptr %j, align 4, !tbaa !8
  %conv20 = sext i32 %23 to i64
  %mul21 = mul i64 %conv19, %conv20
  %add.ptr22 = getelementptr inbounds i32, ptr %21, i64 %mul21
  store ptr %add.ptr22, ptr %pgj, align 8, !tbaa !4
  %24 = load i32, ptr %j, align 4, !tbaa !8
  %add = add nsw i32 %24, 1
  %sub23 = sub nsw i32 %add, 1
  %shr24 = ashr i32 %sub23, 5
  %add25 = add nsw i32 %shr24, 1
  store i32 %add25, ptr %nwords, align 4, !tbaa !8
  store i32 0, ptr %iw, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc213, %for.body16
  %25 = load i32, ptr %iw, align 4, !tbaa !8
  %26 = load i32, ptr %nwords, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %for.body29, label %for.end215

for.body29:                                       ; preds = %for.cond26
  %27 = load ptr, ptr %gj, align 8, !tbaa !4
  %28 = load i32, ptr %iw, align 4, !tbaa !8
  %idxprom = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %27, i64 %idxprom
  %29 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  %30 = load ptr, ptr %pgj, align 8, !tbaa !4
  %31 = load i32, ptr %iw, align 4, !tbaa !8
  %idxprom31 = sext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %30, i64 %idxprom31
  %32 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %xor = xor i32 %29, %32
  store i32 %xor, ptr %gdiff, align 4, !tbaa !8
  %33 = load i32, ptr %iw, align 4, !tbaa !8
  %add33 = add nsw i32 %33, 1
  %shl34 = shl i32 %add33, 5
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %add35 = add nsw i32 %34, 1
  %cmp36 = icmp sgt i32 %shl34, %add35
  br i1 %cmp36, label %if.then38, label %if.end46

if.then38:                                        ; preds = %for.body29
  %35 = load i32, ptr %j, align 4, !tbaa !8
  %add39 = add nsw i32 %35, 1
  %and = and i32 %add39, 31
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then38
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %add41 = add nsw i32 %36, 1
  %and42 = and i32 %add41, 31
  %sub43 = sub nsw i32 %and42, 1
  %shr44 = lshr i32 2147483647, %sub43
  %not = xor i32 %shr44, -1
  br label %cond.end

cond.false:                                       ; preds = %if.then38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %not, %cond.true ], [ 0, %cond.false ]
  %37 = load i32, ptr %gdiff, align 4, !tbaa !8
  %and45 = and i32 %37, %cond
  store i32 %and45, ptr %gdiff, align 4, !tbaa !8
  br label %if.end46

if.end46:                                         ; preds = %cond.end, %for.body29
  br label %while.cond

while.cond:                                       ; preds = %for.end212, %if.end46
  %38 = load i32, ptr %gdiff, align 4, !tbaa !8
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, ptr %gdiff, align 4, !tbaa !8
  %and48 = and i32 %39, -65536
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.true50, label %cond.false65

cond.true50:                                      ; preds = %while.body
  %40 = load i32, ptr %gdiff, align 4, !tbaa !8
  %and51 = and i32 %40, -16777216
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.true53, label %cond.false58

cond.true53:                                      ; preds = %cond.true50
  %41 = load i32, ptr %gdiff, align 4, !tbaa !8
  %shr54 = lshr i32 %41, 24
  %and55 = and i32 %shr54, 255
  %idxprom56 = zext i32 %and55 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom56
  %42 = load i32, ptr %arrayidx57, align 4, !tbaa !8
  br label %cond.end63

cond.false58:                                     ; preds = %cond.true50
  %43 = load i32, ptr %gdiff, align 4, !tbaa !8
  %shr59 = lshr i32 %43, 16
  %idxprom60 = zext i32 %shr59 to i64
  %arrayidx61 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom60
  %44 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  %add62 = add nsw i32 8, %44
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false58, %cond.true53
  %cond64 = phi i32 [ %42, %cond.true53 ], [ %add62, %cond.false58 ]
  br label %cond.end79

cond.false65:                                     ; preds = %while.body
  %45 = load i32, ptr %gdiff, align 4, !tbaa !8
  %and66 = and i32 %45, 65280
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true68, label %cond.false73

cond.true68:                                      ; preds = %cond.false65
  %46 = load i32, ptr %gdiff, align 4, !tbaa !8
  %shr69 = lshr i32 %46, 8
  %idxprom70 = zext i32 %shr69 to i64
  %arrayidx71 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom70
  %47 = load i32, ptr %arrayidx71, align 4, !tbaa !8
  %add72 = add nsw i32 16, %47
  br label %cond.end77

cond.false73:                                     ; preds = %cond.false65
  %48 = load i32, ptr %gdiff, align 4, !tbaa !8
  %idxprom74 = zext i32 %48 to i64
  %arrayidx75 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom74
  %49 = load i32, ptr %arrayidx75, align 4, !tbaa !8
  %add76 = add nsw i32 24, %49
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false73, %cond.true68
  %cond78 = phi i32 [ %add72, %cond.true68 ], [ %add76, %cond.false73 ]
  br label %cond.end79

cond.end79:                                       ; preds = %cond.end77, %cond.end63
  %cond80 = phi i32 [ %cond64, %cond.end63 ], [ %cond78, %cond.end77 ]
  store i32 %cond80, ptr %i, align 4, !tbaa !8
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom81 = sext i32 %50 to i64
  %arrayidx82 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom81
  %51 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %52 = load i32, ptr %gdiff, align 4, !tbaa !8
  %xor83 = xor i32 %52, %51
  store i32 %xor83, ptr %gdiff, align 4, !tbaa !8
  %53 = load i32, ptr %iw, align 4, !tbaa !8
  %shl84 = shl i32 %53, 5
  %54 = load i32, ptr %i, align 4, !tbaa !8
  %add85 = add nsw i32 %54, %shl84
  store i32 %add85, ptr %i, align 4, !tbaa !8
  %55 = load ptr, ptr %p, align 8, !tbaa !4
  %56 = load ptr, ptr %plim, align 8, !tbaa !4
  %cmp86 = icmp uge ptr %55, %56
  br i1 %cmp86, label %if.then88, label %if.end110

if.then88:                                        ; preds = %cond.end79
  %57 = load ptr, ptr %p, align 8, !tbaa !4
  %58 = load ptr, ptr @gcode, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %ii, align 8, !tbaa !10
  %59 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div = udiv i64 %59, 2
  %mul89 = mul i64 3, %div
  %add90 = add i64 %mul89, 10000
  %60 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp91 = icmp ugt i64 %add90, %60
  br i1 %cmp91, label %if.then93, label %if.end106

if.then93:                                        ; preds = %if.then88
  %61 = load ptr, ptr @gcode, align 8, !tbaa !4
  %62 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div94 = udiv i64 %62, 2
  %mul95 = mul i64 3, %div94
  %add96 = add i64 %mul95, 10000
  %mul97 = mul i64 %add96, 1
  %call98 = call ptr @realloc(ptr noundef %61, i64 noundef %mul97) #17
  store ptr %call98, ptr @gcode, align 8, !tbaa !4
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.then93
  call void @gt_abort(ptr noundef @.str.44)
  br label %if.end105

if.else:                                          ; preds = %if.then93
  %63 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div102 = udiv i64 %63, 2
  %mul103 = mul i64 3, %div102
  %add104 = add i64 %mul103, 10000
  store i64 %add104, ptr @gcode_sz, align 8, !tbaa !10
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then101
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then88
  %64 = load ptr, ptr @gcode, align 8, !tbaa !4
  %65 = load i64, ptr %ii, align 8, !tbaa !10
  %add.ptr107 = getelementptr inbounds i8, ptr %64, i64 %65
  store ptr %add.ptr107, ptr %p, align 8, !tbaa !4
  %66 = load ptr, ptr @gcode, align 8, !tbaa !4
  %67 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %add.ptr108 = getelementptr inbounds i8, ptr %66, i64 %67
  %add.ptr109 = getelementptr inbounds i8, ptr %add.ptr108, i64 -20
  store ptr %add.ptr109, ptr %plim, align 8, !tbaa !4
  br label %if.end110

if.end110:                                        ; preds = %if.end106, %cond.end79
  %68 = load i32, ptr %j, align 4, !tbaa !8
  %69 = load i32, ptr %lastj, align 4, !tbaa !8
  %cmp111 = icmp eq i32 %68, %69
  br i1 %cmp111, label %if.then113, label %if.else124

if.then113:                                       ; preds = %if.end110
  %70 = load i8, ptr %x, align 1, !tbaa !12
  %conv114 = sext i8 %70 to i32
  %shl115 = shl i32 %conv114, 1
  %conv116 = trunc i32 %shl115 to i8
  store i8 %conv116, ptr %x, align 1, !tbaa !12
  %71 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %71, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %cmp117 = icmp eq i32 %dec, 0
  br i1 %cmp117, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.then113
  %72 = load i8, ptr %x, align 1, !tbaa !12
  %conv120 = sext i8 %72 to i32
  %add121 = add nsw i32 63, %conv120
  %conv122 = trunc i32 %add121 to i8
  %73 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv122, ptr %73, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.then113
  br label %if.end183

if.else124:                                       ; preds = %if.end110
  %74 = load i8, ptr %x, align 1, !tbaa !12
  %conv125 = sext i8 %74 to i32
  %shl126 = shl i32 %conv125, 1
  %or = or i32 %shl126, 1
  %conv127 = trunc i32 %or to i8
  store i8 %conv127, ptr %x, align 1, !tbaa !12
  %75 = load i32, ptr %k, align 4, !tbaa !8
  %dec128 = add nsw i32 %75, -1
  store i32 %dec128, ptr %k, align 4, !tbaa !8
  %cmp129 = icmp eq i32 %dec128, 0
  br i1 %cmp129, label %if.then131, label %if.end136

if.then131:                                       ; preds = %if.else124
  %76 = load i8, ptr %x, align 1, !tbaa !12
  %conv132 = sext i8 %76 to i32
  %add133 = add nsw i32 63, %conv132
  %conv134 = trunc i32 %add133 to i8
  %77 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr135 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr135, ptr %p, align 8, !tbaa !4
  store i8 %conv134, ptr %77, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %if.else124
  %78 = load i32, ptr %j, align 4, !tbaa !8
  %79 = load i32, ptr %lastj, align 4, !tbaa !8
  %add137 = add nsw i32 %79, 1
  %cmp138 = icmp sgt i32 %78, %add137
  br i1 %cmp138, label %if.then140, label %if.end182

if.then140:                                       ; preds = %if.end136
  store i32 0, ptr %r, align 4, !tbaa !8
  %80 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %80, ptr %rr, align 4, !tbaa !8
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc166, %if.then140
  %81 = load i32, ptr %r, align 4, !tbaa !8
  %82 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp142 = icmp slt i32 %81, %82
  br i1 %cmp142, label %for.body144, label %for.end169

for.body144:                                      ; preds = %for.cond141
  %83 = load i32, ptr %rr, align 4, !tbaa !8
  %84 = load i32, ptr %topbit, align 4, !tbaa !8
  %and145 = and i32 %83, %84
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.else152

if.then147:                                       ; preds = %for.body144
  %85 = load i8, ptr %x, align 1, !tbaa !12
  %conv148 = sext i8 %85 to i32
  %shl149 = shl i32 %conv148, 1
  %or150 = or i32 %shl149, 1
  %conv151 = trunc i32 %or150 to i8
  store i8 %conv151, ptr %x, align 1, !tbaa !12
  br label %if.end156

if.else152:                                       ; preds = %for.body144
  %86 = load i8, ptr %x, align 1, !tbaa !12
  %conv153 = sext i8 %86 to i32
  %shl154 = shl i32 %conv153, 1
  %conv155 = trunc i32 %shl154 to i8
  store i8 %conv155, ptr %x, align 1, !tbaa !12
  br label %if.end156

if.end156:                                        ; preds = %if.else152, %if.then147
  %87 = load i32, ptr %k, align 4, !tbaa !8
  %dec157 = add nsw i32 %87, -1
  store i32 %dec157, ptr %k, align 4, !tbaa !8
  %cmp158 = icmp eq i32 %dec157, 0
  br i1 %cmp158, label %if.then160, label %if.end165

if.then160:                                       ; preds = %if.end156
  %88 = load i8, ptr %x, align 1, !tbaa !12
  %conv161 = sext i8 %88 to i32
  %add162 = add nsw i32 63, %conv161
  %conv163 = trunc i32 %add162 to i8
  %89 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr164 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr164, ptr %p, align 8, !tbaa !4
  store i8 %conv163, ptr %89, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %if.end156
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %90 = load i32, ptr %r, align 4, !tbaa !8
  %inc167 = add nsw i32 %90, 1
  store i32 %inc167, ptr %r, align 4, !tbaa !8
  %91 = load i32, ptr %rr, align 4, !tbaa !8
  %shl168 = shl i32 %91, 1
  store i32 %shl168, ptr %rr, align 4, !tbaa !8
  br label %for.cond141, !llvm.loop !91

for.end169:                                       ; preds = %for.cond141
  %92 = load i8, ptr %x, align 1, !tbaa !12
  %conv170 = sext i8 %92 to i32
  %shl171 = shl i32 %conv170, 1
  %conv172 = trunc i32 %shl171 to i8
  store i8 %conv172, ptr %x, align 1, !tbaa !12
  %93 = load i32, ptr %k, align 4, !tbaa !8
  %dec173 = add nsw i32 %93, -1
  store i32 %dec173, ptr %k, align 4, !tbaa !8
  %cmp174 = icmp eq i32 %dec173, 0
  br i1 %cmp174, label %if.then176, label %if.end181

if.then176:                                       ; preds = %for.end169
  %94 = load i8, ptr %x, align 1, !tbaa !12
  %conv177 = sext i8 %94 to i32
  %add178 = add nsw i32 63, %conv177
  %conv179 = trunc i32 %add178 to i8
  %95 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr180 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %incdec.ptr180, ptr %p, align 8, !tbaa !4
  store i8 %conv179, ptr %95, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end181

if.end181:                                        ; preds = %if.then176, %for.end169
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end136
  %96 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %96, ptr %lastj, align 4, !tbaa !8
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end123
  store i32 0, ptr %r, align 4, !tbaa !8
  %97 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %97, ptr %rr, align 4, !tbaa !8
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc209, %if.end183
  %98 = load i32, ptr %r, align 4, !tbaa !8
  %99 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp185 = icmp slt i32 %98, %99
  br i1 %cmp185, label %for.body187, label %for.end212

for.body187:                                      ; preds = %for.cond184
  %100 = load i32, ptr %rr, align 4, !tbaa !8
  %101 = load i32, ptr %topbit, align 4, !tbaa !8
  %and188 = and i32 %100, %101
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.then190, label %if.else195

if.then190:                                       ; preds = %for.body187
  %102 = load i8, ptr %x, align 1, !tbaa !12
  %conv191 = sext i8 %102 to i32
  %shl192 = shl i32 %conv191, 1
  %or193 = or i32 %shl192, 1
  %conv194 = trunc i32 %or193 to i8
  store i8 %conv194, ptr %x, align 1, !tbaa !12
  br label %if.end199

if.else195:                                       ; preds = %for.body187
  %103 = load i8, ptr %x, align 1, !tbaa !12
  %conv196 = sext i8 %103 to i32
  %shl197 = shl i32 %conv196, 1
  %conv198 = trunc i32 %shl197 to i8
  store i8 %conv198, ptr %x, align 1, !tbaa !12
  br label %if.end199

if.end199:                                        ; preds = %if.else195, %if.then190
  %104 = load i32, ptr %k, align 4, !tbaa !8
  %dec200 = add nsw i32 %104, -1
  store i32 %dec200, ptr %k, align 4, !tbaa !8
  %cmp201 = icmp eq i32 %dec200, 0
  br i1 %cmp201, label %if.then203, label %if.end208

if.then203:                                       ; preds = %if.end199
  %105 = load i8, ptr %x, align 1, !tbaa !12
  %conv204 = sext i8 %105 to i32
  %add205 = add nsw i32 63, %conv204
  %conv206 = trunc i32 %add205 to i8
  %106 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr207 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr207, ptr %p, align 8, !tbaa !4
  store i8 %conv206, ptr %106, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end208

if.end208:                                        ; preds = %if.then203, %if.end199
  br label %for.inc209

for.inc209:                                       ; preds = %if.end208
  %107 = load i32, ptr %r, align 4, !tbaa !8
  %inc210 = add nsw i32 %107, 1
  store i32 %inc210, ptr %r, align 4, !tbaa !8
  %108 = load i32, ptr %rr, align 4, !tbaa !8
  %shl211 = shl i32 %108, 1
  store i32 %shl211, ptr %rr, align 4, !tbaa !8
  br label %for.cond184, !llvm.loop !92

for.end212:                                       ; preds = %for.cond184
  br label %while.cond, !llvm.loop !93

while.end:                                        ; preds = %while.cond
  br label %for.inc213

for.inc213:                                       ; preds = %while.end
  %109 = load i32, ptr %iw, align 4, !tbaa !8
  %inc214 = add nsw i32 %109, 1
  store i32 %inc214, ptr %iw, align 4, !tbaa !8
  br label %for.cond26, !llvm.loop !94

for.end215:                                       ; preds = %for.cond26
  br label %for.inc216

for.inc216:                                       ; preds = %for.end215
  %110 = load i32, ptr %j, align 4, !tbaa !8
  %inc217 = add nsw i32 %110, 1
  store i32 %inc217, ptr %j, align 4, !tbaa !8
  br label %for.cond14, !llvm.loop !95

for.end218:                                       ; preds = %for.cond14
  %111 = load i32, ptr %k, align 4, !tbaa !8
  %cmp219 = icmp ne i32 %111, 6
  br i1 %cmp219, label %if.then221, label %if.end252

if.then221:                                       ; preds = %for.end218
  %112 = load i32, ptr %k, align 4, !tbaa !8
  %113 = load i32, ptr %nb, align 4, !tbaa !8
  %add222 = add nsw i32 %113, 1
  %cmp223 = icmp sge i32 %112, %add222
  br i1 %cmp223, label %land.lhs.true, label %if.else242

land.lhs.true:                                    ; preds = %if.then221
  %114 = load i32, ptr %lastj, align 4, !tbaa !8
  %115 = load i32, ptr %n.addr, align 4, !tbaa !8
  %sub225 = sub nsw i32 %115, 2
  %cmp226 = icmp eq i32 %114, %sub225
  br i1 %cmp226, label %land.lhs.true228, label %if.else242

land.lhs.true228:                                 ; preds = %land.lhs.true
  %116 = load i32, ptr %n.addr, align 4, !tbaa !8
  %117 = load i32, ptr %nb, align 4, !tbaa !8
  %shl229 = shl i32 1, %117
  %cmp230 = icmp eq i32 %116, %shl229
  br i1 %cmp230, label %if.then232, label %if.else242

if.then232:                                       ; preds = %land.lhs.true228
  %118 = load i8, ptr %x, align 1, !tbaa !12
  %conv233 = sext i8 %118 to i32
  %119 = load i32, ptr %k, align 4, !tbaa !8
  %shl234 = shl i32 %conv233, %119
  %120 = load i32, ptr %k, align 4, !tbaa !8
  %sub235 = sub nsw i32 %120, 1
  %shl236 = shl i32 1, %sub235
  %sub237 = sub nsw i32 %shl236, 1
  %or238 = or i32 %shl234, %sub237
  %add239 = add nsw i32 63, %or238
  %conv240 = trunc i32 %add239 to i8
  %121 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr241 = getelementptr inbounds i8, ptr %121, i32 1
  store ptr %incdec.ptr241, ptr %p, align 8, !tbaa !4
  store i8 %conv240, ptr %121, align 1, !tbaa !12
  br label %if.end251

if.else242:                                       ; preds = %land.lhs.true228, %land.lhs.true, %if.then221
  %122 = load i8, ptr %x, align 1, !tbaa !12
  %conv243 = sext i8 %122 to i32
  %123 = load i32, ptr %k, align 4, !tbaa !8
  %shl244 = shl i32 %conv243, %123
  %124 = load i32, ptr %k, align 4, !tbaa !8
  %shl245 = shl i32 1, %124
  %sub246 = sub nsw i32 %shl245, 1
  %or247 = or i32 %shl244, %sub246
  %add248 = add nsw i32 63, %or247
  %conv249 = trunc i32 %add248 to i8
  %125 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr250 = getelementptr inbounds i8, ptr %125, i32 1
  store ptr %incdec.ptr250, ptr %p, align 8, !tbaa !4
  store i8 %conv249, ptr %125, align 1, !tbaa !12
  br label %if.end251

if.end251:                                        ; preds = %if.else242, %if.then232
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %for.end218
  %126 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr253 = getelementptr inbounds i8, ptr %126, i32 1
  store ptr %incdec.ptr253, ptr %p, align 8, !tbaa !4
  store i8 10, ptr %126, align 1, !tbaa !12
  %127 = load ptr, ptr %p, align 8, !tbaa !4
  store i8 0, ptr %127, align 1, !tbaa !12
  %128 = load ptr, ptr %p, align 8, !tbaa !4
  %129 = load ptr, ptr @gcode, align 8, !tbaa !4
  %sub.ptr.lhs.cast254 = ptrtoint ptr %128 to i64
  %sub.ptr.rhs.cast255 = ptrtoint ptr %129 to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  store i64 %sub.ptr.sub256, ptr @s6len, align 8, !tbaa !10
  %130 = load ptr, ptr @gcode, align 8, !tbaa !4
  store ptr %130, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %plim) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwords) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %iw) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastj) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %topbit) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %rr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %gdiff) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgj) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %gj) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  %131 = load ptr, ptr %retval, align 8
  ret ptr %131
}

; Function Attrs: nounwind uwtable
define ptr @sgtos6(ptr noundef %sg) #0 {
entry:
  %sg.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %x = alloca i8, align 1
  %plim = alloca ptr, align 8
  %nb = alloca i32, align 4
  %topbit = alloca i32, align 4
  %dj = alloca i32, align 4
  %k = alloca i32, align 4
  %lastj = alloca i32, align 4
  %r = alloca i32, align 4
  %rr = alloca i32, align 4
  %ii = alloca i64, align 8
  %v = alloca ptr, align 8
  %vj = alloca i64, align 8
  %l = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %plim) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %topbit) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %dj) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastj) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rr) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %vj) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #12
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %v1, align 8, !tbaa !52
  store ptr %1, ptr %v, align 8, !tbaa !4
  %2 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.sparsegraph, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %d2, align 8, !tbaa !54
  store ptr %3, ptr %d, align 8, !tbaa !4
  %4 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e3 = getelementptr inbounds %struct.sparsegraph, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %e3, align 8, !tbaa !62
  store ptr %5, ptr %e, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nv, align 8, !tbaa !49
  store i32 %7, ptr %n, align 4, !tbaa !8
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %nb, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %10, 1
  store i32 %shr, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %nb, align 4, !tbaa !8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nb, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %nb, align 4, !tbaa !8
  %add = add nsw i32 %12, 1
  %conv = sext i32 %add to i64
  %13 = load i32, ptr %n, align 4, !tbaa !8
  %div = sdiv i32 %13, 6
  %conv4 = sext i32 %div to i64
  %14 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %nde, align 8, !tbaa !60
  %div5 = udiv i64 %15, 3
  %add6 = add i64 %conv4, %div5
  %mul = mul i64 %conv, %add6
  store i64 %mul, ptr %ii, align 8, !tbaa !10
  %16 = load i64, ptr %ii, align 8, !tbaa !10
  %add7 = add i64 %16, 1000
  %17 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp8 = icmp ugt i64 %add7, %17
  br i1 %cmp8, label %if.then, label %if.end18

if.then:                                          ; preds = %for.end
  %18 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %19 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %19) #12
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %20 = load i64, ptr %ii, align 8, !tbaa !10
  %add11 = add i64 %20, 1000
  store i64 %add11, ptr @gcode_sz, align 8, !tbaa !10
  %21 = load i64, ptr %ii, align 8, !tbaa !10
  %add12 = add i64 %21, 1000
  %mul13 = mul i64 %add12, 1
  %call = call noalias ptr @malloc(i64 noundef %mul13) #16
  store ptr %call, ptr @gcode, align 8, !tbaa !4
  %cmp14 = icmp eq ptr %call, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.45)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %for.end
  %22 = load ptr, ptr @gcode, align 8, !tbaa !4
  %23 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %23
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr, i64 -20
  store ptr %add.ptr19, ptr %plim, align 8, !tbaa !4
  %24 = load ptr, ptr @gcode, align 8, !tbaa !4
  store ptr %24, ptr %p, align 8, !tbaa !4
  %25 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 58, ptr %25, align 1, !tbaa !12
  %26 = load i32, ptr %n, align 4, !tbaa !8
  call void @encodegraphsize(i32 noundef %26, ptr noundef %p)
  %27 = load i32, ptr %nb, align 4, !tbaa !8
  %sub20 = sub nsw i32 %27, 1
  %shl = shl i32 1, %sub20
  store i32 %shl, ptr %topbit, align 4, !tbaa !8
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  store i32 0, ptr %lastj, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc169, %if.end18
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %28, %29
  br i1 %cmp22, label %for.body24, label %for.end171

for.body24:                                       ; preds = %for.cond21
  %30 = load ptr, ptr %v, align 8, !tbaa !4
  %31 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds i64, ptr %30, i64 %idxprom
  %32 = load i64, ptr %arrayidx, align 8, !tbaa !10
  store i64 %32, ptr %vj, align 8, !tbaa !10
  %33 = load ptr, ptr %d, align 8, !tbaa !4
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom25 = sext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %33, i64 %idxprom25
  %35 = load i32, ptr %arrayidx26, align 4, !tbaa !8
  store i32 %35, ptr %dj, align 4, !tbaa !8
  store i64 0, ptr %l, align 8, !tbaa !10
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc166, %for.body24
  %36 = load i64, ptr %l, align 8, !tbaa !10
  %37 = load i32, ptr %dj, align 4, !tbaa !8
  %conv28 = sext i32 %37 to i64
  %cmp29 = icmp ult i64 %36, %conv28
  br i1 %cmp29, label %for.body31, label %for.end168

for.body31:                                       ; preds = %for.cond27
  %38 = load ptr, ptr %e, align 8, !tbaa !4
  %39 = load i64, ptr %vj, align 8, !tbaa !10
  %40 = load i64, ptr %l, align 8, !tbaa !10
  %add32 = add i64 %39, %40
  %arrayidx33 = getelementptr inbounds i32, ptr %38, i64 %add32
  %41 = load i32, ptr %arrayidx33, align 4, !tbaa !8
  store i32 %41, ptr %i, align 4, !tbaa !8
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %cmp34 = icmp sle i32 %42, %43
  br i1 %cmp34, label %if.then36, label %if.end165

if.then36:                                        ; preds = %for.body31
  %44 = load ptr, ptr %p, align 8, !tbaa !4
  %45 = load ptr, ptr %plim, align 8, !tbaa !4
  %cmp37 = icmp uge ptr %44, %45
  br i1 %cmp37, label %if.then39, label %if.end62

if.then39:                                        ; preds = %if.then36
  %46 = load ptr, ptr %p, align 8, !tbaa !4
  %47 = load ptr, ptr @gcode, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %ii, align 8, !tbaa !10
  %48 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div40 = udiv i64 %48, 4
  %mul41 = mul i64 5, %div40
  %add42 = add i64 %mul41, 1000
  %49 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp43 = icmp ugt i64 %add42, %49
  br i1 %cmp43, label %if.then45, label %if.end58

if.then45:                                        ; preds = %if.then39
  %50 = load ptr, ptr @gcode, align 8, !tbaa !4
  %51 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div46 = udiv i64 %51, 4
  %mul47 = mul i64 5, %div46
  %add48 = add i64 %mul47, 1000
  %mul49 = mul i64 %add48, 1
  %call50 = call ptr @realloc(ptr noundef %50, i64 noundef %mul49) #17
  store ptr %call50, ptr @gcode, align 8, !tbaa !4
  %cmp51 = icmp eq ptr %call50, null
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.then45
  call void @gt_abort(ptr noundef @.str.45)
  br label %if.end57

if.else:                                          ; preds = %if.then45
  %52 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %div54 = udiv i64 %52, 4
  %mul55 = mul i64 5, %div54
  %add56 = add i64 %mul55, 1000
  store i64 %add56, ptr @gcode_sz, align 8, !tbaa !10
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then53
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then39
  %53 = load ptr, ptr @gcode, align 8, !tbaa !4
  %54 = load i64, ptr %ii, align 8, !tbaa !10
  %add.ptr59 = getelementptr inbounds i8, ptr %53, i64 %54
  store ptr %add.ptr59, ptr %p, align 8, !tbaa !4
  %55 = load ptr, ptr @gcode, align 8, !tbaa !4
  %56 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %add.ptr60 = getelementptr inbounds i8, ptr %55, i64 %56
  %add.ptr61 = getelementptr inbounds i8, ptr %add.ptr60, i64 -20
  store ptr %add.ptr61, ptr %plim, align 8, !tbaa !4
  br label %if.end62

if.end62:                                         ; preds = %if.end58, %if.then36
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %58 = load i32, ptr %lastj, align 4, !tbaa !8
  %cmp63 = icmp eq i32 %57, %58
  br i1 %cmp63, label %if.then65, label %if.else77

if.then65:                                        ; preds = %if.end62
  %59 = load i8, ptr %x, align 1, !tbaa !12
  %conv66 = sext i8 %59 to i32
  %shl67 = shl i32 %conv66, 1
  %conv68 = trunc i32 %shl67 to i8
  store i8 %conv68, ptr %x, align 1, !tbaa !12
  %60 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %60, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %cmp69 = icmp eq i32 %dec, 0
  br i1 %cmp69, label %if.then71, label %if.end76

if.then71:                                        ; preds = %if.then65
  %61 = load i8, ptr %x, align 1, !tbaa !12
  %conv72 = sext i8 %61 to i32
  %add73 = add nsw i32 63, %conv72
  %conv74 = trunc i32 %add73 to i8
  %62 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr75 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8, !tbaa !4
  store i8 %conv74, ptr %62, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.then65
  br label %if.end135

if.else77:                                        ; preds = %if.end62
  %63 = load i8, ptr %x, align 1, !tbaa !12
  %conv78 = sext i8 %63 to i32
  %shl79 = shl i32 %conv78, 1
  %or = or i32 %shl79, 1
  %conv80 = trunc i32 %or to i8
  store i8 %conv80, ptr %x, align 1, !tbaa !12
  %64 = load i32, ptr %k, align 4, !tbaa !8
  %dec81 = add nsw i32 %64, -1
  store i32 %dec81, ptr %k, align 4, !tbaa !8
  %cmp82 = icmp eq i32 %dec81, 0
  br i1 %cmp82, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.else77
  %65 = load i8, ptr %x, align 1, !tbaa !12
  %conv85 = sext i8 %65 to i32
  %add86 = add nsw i32 63, %conv85
  %conv87 = trunc i32 %add86 to i8
  %66 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr88 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr88, ptr %p, align 8, !tbaa !4
  store i8 %conv87, ptr %66, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.else77
  %67 = load i32, ptr %j, align 4, !tbaa !8
  %68 = load i32, ptr %lastj, align 4, !tbaa !8
  %add90 = add nsw i32 %68, 1
  %cmp91 = icmp sgt i32 %67, %add90
  br i1 %cmp91, label %if.then93, label %if.end134

if.then93:                                        ; preds = %if.end89
  store i32 0, ptr %r, align 4, !tbaa !8
  %69 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %69, ptr %rr, align 4, !tbaa !8
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc118, %if.then93
  %70 = load i32, ptr %r, align 4, !tbaa !8
  %71 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp95 = icmp slt i32 %70, %71
  br i1 %cmp95, label %for.body97, label %for.end121

for.body97:                                       ; preds = %for.cond94
  %72 = load i32, ptr %rr, align 4, !tbaa !8
  %73 = load i32, ptr %topbit, align 4, !tbaa !8
  %and = and i32 %72, %73
  %tobool98 = icmp ne i32 %and, 0
  br i1 %tobool98, label %if.then99, label %if.else104

if.then99:                                        ; preds = %for.body97
  %74 = load i8, ptr %x, align 1, !tbaa !12
  %conv100 = sext i8 %74 to i32
  %shl101 = shl i32 %conv100, 1
  %or102 = or i32 %shl101, 1
  %conv103 = trunc i32 %or102 to i8
  store i8 %conv103, ptr %x, align 1, !tbaa !12
  br label %if.end108

if.else104:                                       ; preds = %for.body97
  %75 = load i8, ptr %x, align 1, !tbaa !12
  %conv105 = sext i8 %75 to i32
  %shl106 = shl i32 %conv105, 1
  %conv107 = trunc i32 %shl106 to i8
  store i8 %conv107, ptr %x, align 1, !tbaa !12
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %if.then99
  %76 = load i32, ptr %k, align 4, !tbaa !8
  %dec109 = add nsw i32 %76, -1
  store i32 %dec109, ptr %k, align 4, !tbaa !8
  %cmp110 = icmp eq i32 %dec109, 0
  br i1 %cmp110, label %if.then112, label %if.end117

if.then112:                                       ; preds = %if.end108
  %77 = load i8, ptr %x, align 1, !tbaa !12
  %conv113 = sext i8 %77 to i32
  %add114 = add nsw i32 63, %conv113
  %conv115 = trunc i32 %add114 to i8
  %78 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr116 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr116, ptr %p, align 8, !tbaa !4
  store i8 %conv115, ptr %78, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %if.end108
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %79 = load i32, ptr %r, align 4, !tbaa !8
  %inc119 = add nsw i32 %79, 1
  store i32 %inc119, ptr %r, align 4, !tbaa !8
  %80 = load i32, ptr %rr, align 4, !tbaa !8
  %shl120 = shl i32 %80, 1
  store i32 %shl120, ptr %rr, align 4, !tbaa !8
  br label %for.cond94, !llvm.loop !97

for.end121:                                       ; preds = %for.cond94
  %81 = load i8, ptr %x, align 1, !tbaa !12
  %conv122 = sext i8 %81 to i32
  %shl123 = shl i32 %conv122, 1
  %conv124 = trunc i32 %shl123 to i8
  store i8 %conv124, ptr %x, align 1, !tbaa !12
  %82 = load i32, ptr %k, align 4, !tbaa !8
  %dec125 = add nsw i32 %82, -1
  store i32 %dec125, ptr %k, align 4, !tbaa !8
  %cmp126 = icmp eq i32 %dec125, 0
  br i1 %cmp126, label %if.then128, label %if.end133

if.then128:                                       ; preds = %for.end121
  %83 = load i8, ptr %x, align 1, !tbaa !12
  %conv129 = sext i8 %83 to i32
  %add130 = add nsw i32 63, %conv129
  %conv131 = trunc i32 %add130 to i8
  %84 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr132 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr132, ptr %p, align 8, !tbaa !4
  store i8 %conv131, ptr %84, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %for.end121
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end89
  %85 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %85, ptr %lastj, align 4, !tbaa !8
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end76
  store i32 0, ptr %r, align 4, !tbaa !8
  %86 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %86, ptr %rr, align 4, !tbaa !8
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc161, %if.end135
  %87 = load i32, ptr %r, align 4, !tbaa !8
  %88 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp137 = icmp slt i32 %87, %88
  br i1 %cmp137, label %for.body139, label %for.end164

for.body139:                                      ; preds = %for.cond136
  %89 = load i32, ptr %rr, align 4, !tbaa !8
  %90 = load i32, ptr %topbit, align 4, !tbaa !8
  %and140 = and i32 %89, %90
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then142, label %if.else147

if.then142:                                       ; preds = %for.body139
  %91 = load i8, ptr %x, align 1, !tbaa !12
  %conv143 = sext i8 %91 to i32
  %shl144 = shl i32 %conv143, 1
  %or145 = or i32 %shl144, 1
  %conv146 = trunc i32 %or145 to i8
  store i8 %conv146, ptr %x, align 1, !tbaa !12
  br label %if.end151

if.else147:                                       ; preds = %for.body139
  %92 = load i8, ptr %x, align 1, !tbaa !12
  %conv148 = sext i8 %92 to i32
  %shl149 = shl i32 %conv148, 1
  %conv150 = trunc i32 %shl149 to i8
  store i8 %conv150, ptr %x, align 1, !tbaa !12
  br label %if.end151

if.end151:                                        ; preds = %if.else147, %if.then142
  %93 = load i32, ptr %k, align 4, !tbaa !8
  %dec152 = add nsw i32 %93, -1
  store i32 %dec152, ptr %k, align 4, !tbaa !8
  %cmp153 = icmp eq i32 %dec152, 0
  br i1 %cmp153, label %if.then155, label %if.end160

if.then155:                                       ; preds = %if.end151
  %94 = load i8, ptr %x, align 1, !tbaa !12
  %conv156 = sext i8 %94 to i32
  %add157 = add nsw i32 63, %conv156
  %conv158 = trunc i32 %add157 to i8
  %95 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr159 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %incdec.ptr159, ptr %p, align 8, !tbaa !4
  store i8 %conv158, ptr %95, align 1, !tbaa !12
  store i32 6, ptr %k, align 4, !tbaa !8
  store i8 0, ptr %x, align 1, !tbaa !12
  br label %if.end160

if.end160:                                        ; preds = %if.then155, %if.end151
  br label %for.inc161

for.inc161:                                       ; preds = %if.end160
  %96 = load i32, ptr %r, align 4, !tbaa !8
  %inc162 = add nsw i32 %96, 1
  store i32 %inc162, ptr %r, align 4, !tbaa !8
  %97 = load i32, ptr %rr, align 4, !tbaa !8
  %shl163 = shl i32 %97, 1
  store i32 %shl163, ptr %rr, align 4, !tbaa !8
  br label %for.cond136, !llvm.loop !98

for.end164:                                       ; preds = %for.cond136
  br label %if.end165

if.end165:                                        ; preds = %for.end164, %for.body31
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %98 = load i64, ptr %l, align 8, !tbaa !10
  %inc167 = add i64 %98, 1
  store i64 %inc167, ptr %l, align 8, !tbaa !10
  br label %for.cond27, !llvm.loop !99

for.end168:                                       ; preds = %for.cond27
  br label %for.inc169

for.inc169:                                       ; preds = %for.end168
  %99 = load i32, ptr %j, align 4, !tbaa !8
  %inc170 = add nsw i32 %99, 1
  store i32 %inc170, ptr %j, align 4, !tbaa !8
  br label %for.cond21, !llvm.loop !100

for.end171:                                       ; preds = %for.cond21
  %100 = load i32, ptr %k, align 4, !tbaa !8
  %cmp172 = icmp ne i32 %100, 6
  br i1 %cmp172, label %if.then174, label %if.end205

if.then174:                                       ; preds = %for.end171
  %101 = load i32, ptr %k, align 4, !tbaa !8
  %102 = load i32, ptr %nb, align 4, !tbaa !8
  %add175 = add nsw i32 %102, 1
  %cmp176 = icmp sge i32 %101, %add175
  br i1 %cmp176, label %land.lhs.true, label %if.else195

land.lhs.true:                                    ; preds = %if.then174
  %103 = load i32, ptr %lastj, align 4, !tbaa !8
  %104 = load i32, ptr %n, align 4, !tbaa !8
  %sub178 = sub nsw i32 %104, 2
  %cmp179 = icmp eq i32 %103, %sub178
  br i1 %cmp179, label %land.lhs.true181, label %if.else195

land.lhs.true181:                                 ; preds = %land.lhs.true
  %105 = load i32, ptr %n, align 4, !tbaa !8
  %106 = load i32, ptr %nb, align 4, !tbaa !8
  %shl182 = shl i32 1, %106
  %cmp183 = icmp eq i32 %105, %shl182
  br i1 %cmp183, label %if.then185, label %if.else195

if.then185:                                       ; preds = %land.lhs.true181
  %107 = load i8, ptr %x, align 1, !tbaa !12
  %conv186 = sext i8 %107 to i32
  %108 = load i32, ptr %k, align 4, !tbaa !8
  %shl187 = shl i32 %conv186, %108
  %109 = load i32, ptr %k, align 4, !tbaa !8
  %sub188 = sub nsw i32 %109, 1
  %shl189 = shl i32 1, %sub188
  %sub190 = sub nsw i32 %shl189, 1
  %or191 = or i32 %shl187, %sub190
  %add192 = add nsw i32 63, %or191
  %conv193 = trunc i32 %add192 to i8
  %110 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr194 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr194, ptr %p, align 8, !tbaa !4
  store i8 %conv193, ptr %110, align 1, !tbaa !12
  br label %if.end204

if.else195:                                       ; preds = %land.lhs.true181, %land.lhs.true, %if.then174
  %111 = load i8, ptr %x, align 1, !tbaa !12
  %conv196 = sext i8 %111 to i32
  %112 = load i32, ptr %k, align 4, !tbaa !8
  %shl197 = shl i32 %conv196, %112
  %113 = load i32, ptr %k, align 4, !tbaa !8
  %shl198 = shl i32 1, %113
  %sub199 = sub nsw i32 %shl198, 1
  %or200 = or i32 %shl197, %sub199
  %add201 = add nsw i32 63, %or200
  %conv202 = trunc i32 %add201 to i8
  %114 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr203 = getelementptr inbounds i8, ptr %114, i32 1
  store ptr %incdec.ptr203, ptr %p, align 8, !tbaa !4
  store i8 %conv202, ptr %114, align 1, !tbaa !12
  br label %if.end204

if.end204:                                        ; preds = %if.else195, %if.then185
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %for.end171
  %115 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr206 = getelementptr inbounds i8, ptr %115, i32 1
  store ptr %incdec.ptr206, ptr %p, align 8, !tbaa !4
  store i8 10, ptr %115, align 1, !tbaa !12
  %116 = load ptr, ptr %p, align 8, !tbaa !4
  store i8 0, ptr %116, align 1, !tbaa !12
  %117 = load ptr, ptr %p, align 8, !tbaa !4
  %118 = load ptr, ptr @gcode, align 8, !tbaa !4
  %sub.ptr.lhs.cast207 = ptrtoint ptr %117 to i64
  %sub.ptr.rhs.cast208 = ptrtoint ptr %118 to i64
  %sub.ptr.sub209 = sub i64 %sub.ptr.lhs.cast207, %sub.ptr.rhs.cast208
  store i64 %sub.ptr.sub209, ptr @s6len, align 8, !tbaa !10
  %119 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %vj) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %rr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastj) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %dj) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %topbit) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %plim) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr %x) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  ret ptr %119
}

; Function Attrs: nounwind uwtable
define ptr @sgtog6(ptr noundef %sg) #0 {
entry:
  %sg.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %ii = alloca i64, align 8
  %v = alloca ptr, align 8
  %bodylen = alloca i64, align 8
  %org = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %bodylen) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #12
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %v1, align 8, !tbaa !52
  store ptr %1, ptr %v, align 8, !tbaa !4
  %2 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.sparsegraph, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %d2, align 8, !tbaa !54
  store ptr %3, ptr %d, align 8, !tbaa !4
  %4 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e3 = getelementptr inbounds %struct.sparsegraph, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %e3, align 8, !tbaa !62
  store ptr %5, ptr %e, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nv, align 8, !tbaa !49
  store i32 %7, ptr %n, align 4, !tbaa !8
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sle i32 %8, 62
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp4 = icmp sle i32 %9, 258047
  %10 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %conv = sext i32 %cond5 to i64
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %conv6 = sext i32 %11 to i64
  %div = udiv i64 %conv6, 12
  %12 = load i32, ptr %n, align 4, !tbaa !8
  %conv7 = sext i32 %12 to i64
  %sub = sub i64 %conv7, 1
  %mul = mul i64 %div, %sub
  %13 = load i32, ptr %n, align 4, !tbaa !8
  %conv8 = sext i32 %13 to i64
  %rem = urem i64 %conv8, 12
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %conv9 = sext i32 %14 to i64
  %sub10 = sub i64 %conv9, 1
  %mul11 = mul i64 %rem, %sub10
  %add = add i64 %mul11, 11
  %div12 = udiv i64 %add, 12
  %add13 = add i64 %mul, %div12
  %add14 = add i64 %conv, %add13
  %add15 = add i64 %add14, 3
  store i64 %add15, ptr %ii, align 8, !tbaa !10
  %15 = load i64, ptr %ii, align 8, !tbaa !10
  %16 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp16 = icmp ugt i64 %15, %16
  br i1 %cmp16, label %if.then, label %if.end24

if.then:                                          ; preds = %cond.end
  %17 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %18 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %18) #12
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  %19 = load i64, ptr %ii, align 8, !tbaa !10
  store i64 %19, ptr @gcode_sz, align 8, !tbaa !10
  %20 = load i64, ptr %ii, align 8, !tbaa !10
  %mul19 = mul i64 %20, 1
  %call = call noalias ptr @malloc(i64 noundef %mul19) #16
  store ptr %call, ptr @gcode, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %call, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.46)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %cond.end
  %21 = load ptr, ptr @gcode, align 8, !tbaa !4
  store ptr %21, ptr %p, align 8, !tbaa !4
  %22 = load i32, ptr %n, align 4, !tbaa !8
  call void @encodegraphsize(i32 noundef %22, ptr noundef %p)
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %conv25 = sext i32 %23 to i64
  %div26 = udiv i64 %conv25, 12
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %conv27 = sext i32 %24 to i64
  %sub28 = sub i64 %conv27, 1
  %mul29 = mul i64 %div26, %sub28
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %conv30 = sext i32 %25 to i64
  %rem31 = urem i64 %conv30, 12
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %conv32 = sext i32 %26 to i64
  %sub33 = sub i64 %conv32, 1
  %mul34 = mul i64 %rem31, %sub33
  %add35 = add i64 %mul34, 11
  %div36 = udiv i64 %add35, 12
  %add37 = add i64 %mul29, %div36
  store i64 %add37, ptr %bodylen, align 8, !tbaa !10
  store i64 0, ptr %ii, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %27 = load i64, ptr %ii, align 8, !tbaa !10
  %28 = load i64, ptr %bodylen, align 8, !tbaa !10
  %cmp38 = icmp ult i64 %27, %28
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %p, align 8, !tbaa !4
  %30 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 0, ptr %arrayidx, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64, ptr %ii, align 8, !tbaa !10
  %inc = add i64 %31, 1
  store i64 %inc, ptr %ii, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %p, align 8, !tbaa !4
  %33 = load i64, ptr %bodylen, align 8, !tbaa !10
  %arrayidx40 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 10, ptr %arrayidx40, align 1, !tbaa !12
  %34 = load ptr, ptr %p, align 8, !tbaa !4
  %35 = load i64, ptr %bodylen, align 8, !tbaa !10
  %add41 = add i64 %35, 1
  %arrayidx42 = getelementptr inbounds i8, ptr %34, i64 %add41
  store i8 0, ptr %arrayidx42, align 1, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !8
  store i64 0, ptr %org, align 8, !tbaa !10
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc74, %for.end
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %36, %37
  br i1 %cmp44, label %for.body46, label %for.end78

for.body46:                                       ; preds = %for.cond43
  %38 = load ptr, ptr %e, align 8, !tbaa !4
  %39 = load ptr, ptr %v, align 8, !tbaa !4
  %40 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds i64, ptr %39, i64 %idxprom
  %41 = load i64, ptr %arrayidx47, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i32, ptr %38, i64 %41
  store ptr %add.ptr, ptr %ei, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc71, %for.body46
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %43 = load ptr, ptr %d, align 8, !tbaa !4
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %43, i64 %idxprom49
  %45 = load i32, ptr %arrayidx50, align 4, !tbaa !8
  %cmp51 = icmp slt i32 %42, %45
  br i1 %cmp51, label %for.body53, label %for.end73

for.body53:                                       ; preds = %for.cond48
  %46 = load ptr, ptr %ei, align 8, !tbaa !4
  %47 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom54 = sext i32 %47 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %46, i64 %idxprom54
  %48 = load i32, ptr %arrayidx55, align 4, !tbaa !8
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %cmp56 = icmp slt i32 %48, %49
  br i1 %cmp56, label %if.then58, label %if.end70

if.then58:                                        ; preds = %for.body53
  %50 = load ptr, ptr %ei, align 8, !tbaa !4
  %51 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom59 = sext i32 %51 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %50, i64 %idxprom59
  %52 = load i32, ptr %arrayidx60, align 4, !tbaa !8
  %conv61 = sext i32 %52 to i64
  %53 = load i64, ptr %org, align 8, !tbaa !10
  %add62 = add i64 %conv61, %53
  store i64 %add62, ptr %ii, align 8, !tbaa !10
  %54 = load i64, ptr %ii, align 8, !tbaa !10
  %rem63 = urem i64 %54, 6
  %arrayidx64 = getelementptr inbounds [6 x i8], ptr @sgtog6.g6bit, i64 0, i64 %rem63
  %55 = load i8, ptr %arrayidx64, align 1, !tbaa !12
  %conv65 = sext i8 %55 to i32
  %56 = load ptr, ptr %p, align 8, !tbaa !4
  %57 = load i64, ptr %ii, align 8, !tbaa !10
  %div66 = udiv i64 %57, 6
  %arrayidx67 = getelementptr inbounds i8, ptr %56, i64 %div66
  %58 = load i8, ptr %arrayidx67, align 1, !tbaa !12
  %conv68 = sext i8 %58 to i32
  %or = or i32 %conv68, %conv65
  %conv69 = trunc i32 %or to i8
  store i8 %conv69, ptr %arrayidx67, align 1, !tbaa !12
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %for.body53
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %59 = load i32, ptr %j, align 4, !tbaa !8
  %inc72 = add nsw i32 %59, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !8
  br label %for.cond48, !llvm.loop !102

for.end73:                                        ; preds = %for.cond48
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %60 = load i32, ptr %i, align 4, !tbaa !8
  %conv75 = sext i32 %60 to i64
  %61 = load i64, ptr %org, align 8, !tbaa !10
  %add76 = add i64 %61, %conv75
  store i64 %add76, ptr %org, align 8, !tbaa !10
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %inc77 = add nsw i32 %62, 1
  store i32 %inc77, ptr %i, align 4, !tbaa !8
  br label %for.cond43, !llvm.loop !103

for.end78:                                        ; preds = %for.cond43
  store i64 0, ptr %ii, align 8, !tbaa !10
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc87, %for.end78
  %63 = load i64, ptr %ii, align 8, !tbaa !10
  %64 = load i64, ptr %bodylen, align 8, !tbaa !10
  %cmp80 = icmp ult i64 %63, %64
  br i1 %cmp80, label %for.body82, label %for.end89

for.body82:                                       ; preds = %for.cond79
  %65 = load ptr, ptr %p, align 8, !tbaa !4
  %66 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds i8, ptr %65, i64 %66
  %67 = load i8, ptr %arrayidx83, align 1, !tbaa !12
  %conv84 = sext i8 %67 to i32
  %add85 = add nsw i32 %conv84, 63
  %conv86 = trunc i32 %add85 to i8
  store i8 %conv86, ptr %arrayidx83, align 1, !tbaa !12
  br label %for.inc87

for.inc87:                                        ; preds = %for.body82
  %68 = load i64, ptr %ii, align 8, !tbaa !10
  %inc88 = add i64 %68, 1
  store i64 %inc88, ptr %ii, align 8, !tbaa !10
  br label %for.cond79, !llvm.loop !104

for.end89:                                        ; preds = %for.cond79
  %69 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %bodylen) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  ret ptr %69
}

; Function Attrs: nounwind uwtable
define ptr @sgtod6(ptr noundef %sg) #0 {
entry:
  %sg.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %ii = alloca i64, align 8
  %v = alloca ptr, align 8
  %bodylen = alloca i64, align 8
  %org = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %bodylen) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %org) #12
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %v1, align 8, !tbaa !52
  store ptr %1, ptr %v, align 8, !tbaa !4
  %2 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.sparsegraph, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %d2, align 8, !tbaa !54
  store ptr %3, ptr %d, align 8, !tbaa !4
  %4 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e3 = getelementptr inbounds %struct.sparsegraph, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %e3, align 8, !tbaa !62
  store ptr %5, ptr %e, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nv, align 8, !tbaa !49
  store i32 %7, ptr %n, align 4, !tbaa !8
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sle i32 %8, 62
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp4 = icmp sle i32 %9, 258047
  %10 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 4, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  %add = add nsw i32 1, %cond5
  %conv = sext i32 %add to i64
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %conv6 = sext i32 %11 to i64
  %12 = load i32, ptr %n, align 4, !tbaa !8
  %div = sdiv i32 %12, 6
  %conv7 = sext i32 %div to i64
  %mul = mul i64 %conv6, %conv7
  %13 = load i32, ptr %n, align 4, !tbaa !8
  %conv8 = sext i32 %13 to i64
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %rem = srem i32 %14, 6
  %conv9 = sext i32 %rem to i64
  %mul10 = mul i64 %conv8, %conv9
  %add11 = add i64 %mul10, 5
  %div12 = udiv i64 %add11, 6
  %add13 = add i64 %mul, %div12
  %add14 = add i64 %conv, %add13
  %add15 = add i64 %add14, 3
  store i64 %add15, ptr %ii, align 8, !tbaa !10
  %15 = load i64, ptr %ii, align 8, !tbaa !10
  %16 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %cmp16 = icmp ugt i64 %15, %16
  br i1 %cmp16, label %if.then, label %if.end24

if.then:                                          ; preds = %cond.end
  %17 = load i64, ptr @gcode_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %18 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @free(ptr noundef %18) #12
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  %19 = load i64, ptr %ii, align 8, !tbaa !10
  store i64 %19, ptr @gcode_sz, align 8, !tbaa !10
  %20 = load i64, ptr %ii, align 8, !tbaa !10
  %mul19 = mul i64 %20, 1
  %call = call noalias ptr @malloc(i64 noundef %mul19) #16
  store ptr %call, ptr @gcode, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %call, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.46)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %cond.end
  %21 = load ptr, ptr @gcode, align 8, !tbaa !4
  store ptr %21, ptr %p, align 8, !tbaa !4
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 38, ptr %22, align 1, !tbaa !12
  %23 = load i32, ptr %n, align 4, !tbaa !8
  call void @encodegraphsize(i32 noundef %23, ptr noundef %p)
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %conv25 = sext i32 %24 to i64
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %div26 = sdiv i32 %25, 6
  %conv27 = sext i32 %div26 to i64
  %mul28 = mul i64 %conv25, %conv27
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %conv29 = sext i32 %26 to i64
  %27 = load i32, ptr %n, align 4, !tbaa !8
  %rem30 = srem i32 %27, 6
  %conv31 = sext i32 %rem30 to i64
  %mul32 = mul i64 %conv29, %conv31
  %add33 = add i64 %mul32, 5
  %div34 = udiv i64 %add33, 6
  %add35 = add i64 %mul28, %div34
  store i64 %add35, ptr %bodylen, align 8, !tbaa !10
  store i64 0, ptr %ii, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %28 = load i64, ptr %ii, align 8, !tbaa !10
  %29 = load i64, ptr %bodylen, align 8, !tbaa !10
  %cmp36 = icmp ult i64 %28, %29
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %p, align 8, !tbaa !4
  %31 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %30, i64 %31
  store i8 0, ptr %arrayidx, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, ptr %ii, align 8, !tbaa !10
  %inc = add i64 %32, 1
  store i64 %inc, ptr %ii, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %34 = load i64, ptr %bodylen, align 8, !tbaa !10
  %arrayidx38 = getelementptr inbounds i8, ptr %33, i64 %34
  store i8 10, ptr %arrayidx38, align 1, !tbaa !12
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %36 = load i64, ptr %bodylen, align 8, !tbaa !10
  %add39 = add i64 %36, 1
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 %add39
  store i8 0, ptr %arrayidx40, align 1, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !8
  store i64 0, ptr %org, align 8, !tbaa !10
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc66, %for.end
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %38 = load i32, ptr %n, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %37, %38
  br i1 %cmp42, label %for.body44, label %for.end70

for.body44:                                       ; preds = %for.cond41
  %39 = load ptr, ptr %e, align 8, !tbaa !4
  %40 = load ptr, ptr %v, align 8, !tbaa !4
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %arrayidx45 = getelementptr inbounds i64, ptr %40, i64 %idxprom
  %42 = load i64, ptr %arrayidx45, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i32, ptr %39, i64 %42
  store ptr %add.ptr, ptr %ei, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc63, %for.body44
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %44 = load ptr, ptr %d, align 8, !tbaa !4
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %44, i64 %idxprom47
  %46 = load i32, ptr %arrayidx48, align 4, !tbaa !8
  %cmp49 = icmp slt i32 %43, %46
  br i1 %cmp49, label %for.body51, label %for.end65

for.body51:                                       ; preds = %for.cond46
  %47 = load ptr, ptr %ei, align 8, !tbaa !4
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %47, i64 %idxprom52
  %49 = load i32, ptr %arrayidx53, align 4, !tbaa !8
  %conv54 = sext i32 %49 to i64
  %50 = load i64, ptr %org, align 8, !tbaa !10
  %add55 = add i64 %conv54, %50
  store i64 %add55, ptr %ii, align 8, !tbaa !10
  %51 = load i64, ptr %ii, align 8, !tbaa !10
  %rem56 = urem i64 %51, 6
  %arrayidx57 = getelementptr inbounds [6 x i8], ptr @sgtod6.g6bit, i64 0, i64 %rem56
  %52 = load i8, ptr %arrayidx57, align 1, !tbaa !12
  %conv58 = sext i8 %52 to i32
  %53 = load ptr, ptr %p, align 8, !tbaa !4
  %54 = load i64, ptr %ii, align 8, !tbaa !10
  %div59 = udiv i64 %54, 6
  %arrayidx60 = getelementptr inbounds i8, ptr %53, i64 %div59
  %55 = load i8, ptr %arrayidx60, align 1, !tbaa !12
  %conv61 = sext i8 %55 to i32
  %or = or i32 %conv61, %conv58
  %conv62 = trunc i32 %or to i8
  store i8 %conv62, ptr %arrayidx60, align 1, !tbaa !12
  br label %for.inc63

for.inc63:                                        ; preds = %for.body51
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %inc64 = add nsw i32 %56, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !8
  br label %for.cond46, !llvm.loop !106

for.end65:                                        ; preds = %for.cond46
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %57 = load i32, ptr %n, align 4, !tbaa !8
  %conv67 = sext i32 %57 to i64
  %58 = load i64, ptr %org, align 8, !tbaa !10
  %add68 = add i64 %58, %conv67
  store i64 %add68, ptr %org, align 8, !tbaa !10
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %inc69 = add nsw i32 %59, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !8
  br label %for.cond41, !llvm.loop !107

for.end70:                                        ; preds = %for.cond41
  store i64 0, ptr %ii, align 8, !tbaa !10
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc79, %for.end70
  %60 = load i64, ptr %ii, align 8, !tbaa !10
  %61 = load i64, ptr %bodylen, align 8, !tbaa !10
  %cmp72 = icmp ult i64 %60, %61
  br i1 %cmp72, label %for.body74, label %for.end81

for.body74:                                       ; preds = %for.cond71
  %62 = load ptr, ptr %p, align 8, !tbaa !4
  %63 = load i64, ptr %ii, align 8, !tbaa !10
  %arrayidx75 = getelementptr inbounds i8, ptr %62, i64 %63
  %64 = load i8, ptr %arrayidx75, align 1, !tbaa !12
  %conv76 = sext i8 %64 to i32
  %add77 = add nsw i32 %conv76, 63
  %conv78 = trunc i32 %add77 to i8
  store i8 %conv78, ptr %arrayidx75, align 1, !tbaa !12
  br label %for.inc79

for.inc79:                                        ; preds = %for.body74
  %65 = load i64, ptr %ii, align 8, !tbaa !10
  %inc80 = add i64 %65, 1
  store i64 %inc80, ptr %ii, align 8, !tbaa !10
  br label %for.cond71, !llvm.loop !108

for.end81:                                        ; preds = %for.cond71
  %66 = load ptr, ptr @gcode, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %org) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %bodylen) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  ret ptr %66
}

; Function Attrs: nounwind uwtable
define void @writeg6(ptr noundef %f, ptr noundef %g, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %2 = load i32, ptr %m.addr, align 4, !tbaa !8
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call ptr @ntog6(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  call void @writeline(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @writed6(ptr noundef %f, ptr noundef %g, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %2 = load i32, ptr %m.addr, align 4, !tbaa !8
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call ptr @ntod6(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  call void @writeline(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @writes6(ptr noundef %f, ptr noundef %g, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %1 = load i32, ptr %m.addr, align 4, !tbaa !8
  %2 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call ptr @ntos6(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  store ptr %call, ptr %s, align 8, !tbaa !4
  %3 = load ptr, ptr %s, align 8, !tbaa !4
  %4 = load i64, ptr @s6len, align 8, !tbaa !10
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call1 = call i64 @fwrite(ptr noundef %3, i64 noundef 1, i64 noundef %4, ptr noundef %5)
  %6 = load i64, ptr @s6len, align 8, !tbaa !10
  %cmp = icmp ne i64 %call1, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call2 = call i32 @ferror(ptr noundef %7) #12
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gt_abort(ptr noundef @.str.47)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeis6(ptr noundef %f, ptr noundef %g, ptr noundef %prevg, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %prevg.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %prevg, ptr %prevg.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %prevg.addr, align 8, !tbaa !4
  %2 = load i32, ptr %m.addr, align 4, !tbaa !8
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call ptr @ntois6(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  store ptr %call, ptr %s, align 8, !tbaa !4
  %4 = load ptr, ptr %s, align 8, !tbaa !4
  %5 = load i64, ptr @s6len, align 8, !tbaa !10
  %6 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call1 = call i64 @fwrite(ptr noundef %4, i64 noundef 1, i64 noundef %5, ptr noundef %6)
  %7 = load i64, ptr @s6len, align 8, !tbaa !10
  %cmp = icmp ne i64 %call1, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call2 = call i32 @ferror(ptr noundef %8) #12
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gt_abort(ptr noundef @.str.48)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @writeg6_sg(ptr noundef %f, ptr noundef %g) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %call = call ptr @sgtog6(ptr noundef %1)
  call void @writeline(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @writed6_sg(ptr noundef %f, ptr noundef %g) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %call = call ptr @sgtod6(ptr noundef %1)
  call void @writeline(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @writes6_sg(ptr noundef %f, ptr noundef %g) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %call = call ptr @sgtos6(ptr noundef %0)
  store ptr %call, ptr %s, align 8, !tbaa !4
  %1 = load ptr, ptr %s, align 8, !tbaa !4
  %2 = load i64, ptr @s6len, align 8, !tbaa !10
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call1 = call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %3)
  %4 = load i64, ptr @s6len, align 8, !tbaa !10
  %cmp = icmp ne i64 %call1, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call2 = call i32 @ferror(ptr noundef %5) #12
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @gt_abort(ptr noundef @.str.47)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @writepc_sg(ptr noundef %f, ptr noundef %sg) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %bytes = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  %k = alloca i64, align 8
  %v = alloca ptr, align 8
  %vi = alloca i64, align 8
  %w = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %di = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %di) #12
  %0 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nv, align 8, !tbaa !49
  store i32 %1, ptr %n, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %v1, align 8, !tbaa !52
  store ptr %3, ptr %v, align 8, !tbaa !4
  %4 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.sparsegraph, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %d2, align 8, !tbaa !54
  store ptr %5, ptr %d, align 8, !tbaa !4
  %6 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e3 = getelementptr inbounds %struct.sparsegraph, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %e3, align 8, !tbaa !62
  store ptr %7, ptr %e, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sle i32 %8, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 1, ptr %bytes, align 4, !tbaa !8
  br label %if.end7

if.else:                                          ; preds = %do.end
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp4 = icmp sle i32 %9, 65535
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 2, ptr %bytes, align 4, !tbaa !8
  br label %if.end

if.else6:                                         ; preds = %if.else
  store i32 4, ptr %bytes, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %bytes, align 4, !tbaa !8
  %conv = sext i32 %10 to i64
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %add = add nsw i32 1, %11
  %conv8 = sext i32 %add to i64
  %12 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %nde, align 8, !tbaa !60
  %add9 = add i64 %conv8, %13
  %mul = mul i64 %conv, %add9
  store i64 %mul, ptr %len, align 8, !tbaa !10
  %14 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.end7
  %15 = load i64, ptr %len, align 8, !tbaa !10
  %add13 = add i64 %15, 1
  store i64 %add13, ptr %len, align 8, !tbaa !10
  br label %if.end20

if.else14:                                        ; preds = %if.end7
  %16 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %16, 4
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.else14
  %17 = load i64, ptr %len, align 8, !tbaa !10
  %add18 = add i64 %17, 3
  store i64 %add18, ptr %len, align 8, !tbaa !10
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  %18 = load i64, ptr %len, align 8, !tbaa !10
  %19 = load i64, ptr @buff_sz, align 8, !tbaa !10
  %cmp21 = icmp ugt i64 %18, %19
  br i1 %cmp21, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end20
  %20 = load i64, ptr @buff_sz, align 8, !tbaa !10
  %tobool = icmp ne i64 %20, 0
  br i1 %tobool, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then23
  %21 = load ptr, ptr @buff, align 8, !tbaa !4
  call void @free(ptr noundef %21) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then23
  %22 = load i64, ptr %len, align 8, !tbaa !10
  store i64 %22, ptr @buff_sz, align 8, !tbaa !10
  %23 = load i64, ptr %len, align 8, !tbaa !10
  %mul26 = mul i64 %23, 1
  %call = call noalias ptr @malloc(i64 noundef %mul26) #16
  store ptr %call, ptr @buff, align 8, !tbaa !4
  %cmp27 = icmp eq ptr %call, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @gt_abort(ptr noundef @.str.49)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end20
  %24 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %24, 1
  br i1 %cmp32, label %if.then34, label %if.else58

if.then34:                                        ; preds = %if.end31
  store i64 0, ptr %j, align 8, !tbaa !10
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %conv35 = trunc i32 %25 to i8
  %26 = load ptr, ptr @buff, align 8, !tbaa !4
  %27 = load i64, ptr %j, align 8, !tbaa !10
  %inc = add i64 %27, 1
  store i64 %inc, ptr %j, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 %conv35, ptr %arrayidx, align 1, !tbaa !12
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.then34
  %28 = load i64, ptr %i, align 8, !tbaa !10
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %conv36 = sext i32 %29 to i64
  %cmp37 = icmp ult i64 %28, %conv36
  br i1 %cmp37, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %v, align 8, !tbaa !4
  %31 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds i64, ptr %30, i64 %31
  %32 = load i64, ptr %arrayidx39, align 8, !tbaa !10
  store i64 %32, ptr %vi, align 8, !tbaa !10
  %33 = load ptr, ptr %d, align 8, !tbaa !4
  %34 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx40 = getelementptr inbounds i32, ptr %33, i64 %34
  %35 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  store i32 %35, ptr %di, align 4, !tbaa !8
  store i64 0, ptr %k, align 8, !tbaa !10
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %for.body
  %36 = load i64, ptr %k, align 8, !tbaa !10
  %37 = load i32, ptr %di, align 4, !tbaa !8
  %conv42 = sext i32 %37 to i64
  %cmp43 = icmp ult i64 %36, %conv42
  br i1 %cmp43, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond41
  %38 = load ptr, ptr %e, align 8, !tbaa !4
  %39 = load i64, ptr %vi, align 8, !tbaa !10
  %40 = load i64, ptr %k, align 8, !tbaa !10
  %add46 = add i64 %39, %40
  %arrayidx47 = getelementptr inbounds i32, ptr %38, i64 %add46
  %41 = load i32, ptr %arrayidx47, align 4, !tbaa !8
  %add48 = add nsw i32 %41, 1
  %conv49 = trunc i32 %add48 to i8
  %42 = load ptr, ptr @buff, align 8, !tbaa !4
  %43 = load i64, ptr %j, align 8, !tbaa !10
  %inc50 = add i64 %43, 1
  store i64 %inc50, ptr %j, align 8, !tbaa !10
  %arrayidx51 = getelementptr inbounds i8, ptr %42, i64 %43
  store i8 %conv49, ptr %arrayidx51, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %44 = load i64, ptr %k, align 8, !tbaa !10
  %inc52 = add i64 %44, 1
  store i64 %inc52, ptr %k, align 8, !tbaa !10
  br label %for.cond41, !llvm.loop !109

for.end:                                          ; preds = %for.cond41
  %45 = load ptr, ptr @buff, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !10
  %inc53 = add i64 %46, 1
  store i64 %inc53, ptr %j, align 8, !tbaa !10
  %arrayidx54 = getelementptr inbounds i8, ptr %45, i64 %46
  store i8 0, ptr %arrayidx54, align 1, !tbaa !12
  br label %for.inc55

for.inc55:                                        ; preds = %for.end
  %47 = load i64, ptr %i, align 8, !tbaa !10
  %inc56 = add i64 %47, 1
  store i64 %inc56, ptr %i, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !110

for.end57:                                        ; preds = %for.cond
  br label %if.end203

if.else58:                                        ; preds = %if.end31
  %48 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp59 = icmp eq i32 %48, 2
  br i1 %cmp59, label %if.then61, label %if.else111

if.then61:                                        ; preds = %if.else58
  store i64 0, ptr %j, align 8, !tbaa !10
  %49 = load i32, ptr %n, align 4, !tbaa !8
  %conv62 = trunc i32 %49 to i8
  %50 = load ptr, ptr @buff, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !10
  %inc63 = add i64 %51, 1
  store i64 %inc63, ptr %j, align 8, !tbaa !10
  %arrayidx64 = getelementptr inbounds i8, ptr %50, i64 %51
  store i8 %conv62, ptr %arrayidx64, align 1, !tbaa !12
  %52 = load i32, ptr %n, align 4, !tbaa !8
  store i32 %52, ptr %w, align 4, !tbaa !8
  %53 = load i32, ptr %w, align 4, !tbaa !8
  %shr = lshr i32 %53, 8
  %and = and i32 %shr, 255
  %conv65 = trunc i32 %and to i8
  %54 = load ptr, ptr @buff, align 8, !tbaa !4
  %55 = load i64, ptr %j, align 8, !tbaa !10
  %inc66 = add i64 %55, 1
  store i64 %inc66, ptr %j, align 8, !tbaa !10
  %arrayidx67 = getelementptr inbounds i8, ptr %54, i64 %55
  store i8 %conv65, ptr %arrayidx67, align 1, !tbaa !12
  %56 = load i32, ptr %w, align 4, !tbaa !8
  %and68 = and i32 %56, 255
  %conv69 = trunc i32 %and68 to i8
  %57 = load ptr, ptr @buff, align 8, !tbaa !4
  %58 = load i64, ptr %j, align 8, !tbaa !10
  %inc70 = add i64 %58, 1
  store i64 %inc70, ptr %j, align 8, !tbaa !10
  %arrayidx71 = getelementptr inbounds i8, ptr %57, i64 %58
  store i8 %conv69, ptr %arrayidx71, align 1, !tbaa !12
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc108, %if.then61
  %59 = load i64, ptr %i, align 8, !tbaa !10
  %60 = load i32, ptr %n, align 4, !tbaa !8
  %conv73 = sext i32 %60 to i64
  %cmp74 = icmp ult i64 %59, %conv73
  br i1 %cmp74, label %for.body76, label %for.end110

for.body76:                                       ; preds = %for.cond72
  %61 = load ptr, ptr %v, align 8, !tbaa !4
  %62 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx77 = getelementptr inbounds i64, ptr %61, i64 %62
  %63 = load i64, ptr %arrayidx77, align 8, !tbaa !10
  store i64 %63, ptr %vi, align 8, !tbaa !10
  %64 = load ptr, ptr %d, align 8, !tbaa !4
  %65 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds i32, ptr %64, i64 %65
  %66 = load i32, ptr %arrayidx78, align 4, !tbaa !8
  store i32 %66, ptr %di, align 4, !tbaa !8
  store i64 0, ptr %k, align 8, !tbaa !10
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc96, %for.body76
  %67 = load i64, ptr %k, align 8, !tbaa !10
  %68 = load i32, ptr %di, align 4, !tbaa !8
  %conv80 = sext i32 %68 to i64
  %cmp81 = icmp ult i64 %67, %conv80
  br i1 %cmp81, label %for.body83, label %for.end98

for.body83:                                       ; preds = %for.cond79
  %69 = load ptr, ptr %e, align 8, !tbaa !4
  %70 = load i64, ptr %vi, align 8, !tbaa !10
  %71 = load i64, ptr %k, align 8, !tbaa !10
  %add84 = add i64 %70, %71
  %arrayidx85 = getelementptr inbounds i32, ptr %69, i64 %add84
  %72 = load i32, ptr %arrayidx85, align 4, !tbaa !8
  %add86 = add nsw i32 %72, 1
  store i32 %add86, ptr %w, align 4, !tbaa !8
  %73 = load i32, ptr %w, align 4, !tbaa !8
  %shr87 = lshr i32 %73, 8
  %and88 = and i32 %shr87, 255
  %conv89 = trunc i32 %and88 to i8
  %74 = load ptr, ptr @buff, align 8, !tbaa !4
  %75 = load i64, ptr %j, align 8, !tbaa !10
  %inc90 = add i64 %75, 1
  store i64 %inc90, ptr %j, align 8, !tbaa !10
  %arrayidx91 = getelementptr inbounds i8, ptr %74, i64 %75
  store i8 %conv89, ptr %arrayidx91, align 1, !tbaa !12
  %76 = load i32, ptr %w, align 4, !tbaa !8
  %and92 = and i32 %76, 255
  %conv93 = trunc i32 %and92 to i8
  %77 = load ptr, ptr @buff, align 8, !tbaa !4
  %78 = load i64, ptr %j, align 8, !tbaa !10
  %inc94 = add i64 %78, 1
  store i64 %inc94, ptr %j, align 8, !tbaa !10
  %arrayidx95 = getelementptr inbounds i8, ptr %77, i64 %78
  store i8 %conv93, ptr %arrayidx95, align 1, !tbaa !12
  br label %for.inc96

for.inc96:                                        ; preds = %for.body83
  %79 = load i64, ptr %k, align 8, !tbaa !10
  %inc97 = add i64 %79, 1
  store i64 %inc97, ptr %k, align 8, !tbaa !10
  br label %for.cond79, !llvm.loop !111

for.end98:                                        ; preds = %for.cond79
  store i32 0, ptr %w, align 4, !tbaa !8
  %80 = load i32, ptr %w, align 4, !tbaa !8
  %shr99 = lshr i32 %80, 8
  %and100 = and i32 %shr99, 255
  %conv101 = trunc i32 %and100 to i8
  %81 = load ptr, ptr @buff, align 8, !tbaa !4
  %82 = load i64, ptr %j, align 8, !tbaa !10
  %inc102 = add i64 %82, 1
  store i64 %inc102, ptr %j, align 8, !tbaa !10
  %arrayidx103 = getelementptr inbounds i8, ptr %81, i64 %82
  store i8 %conv101, ptr %arrayidx103, align 1, !tbaa !12
  %83 = load i32, ptr %w, align 4, !tbaa !8
  %and104 = and i32 %83, 255
  %conv105 = trunc i32 %and104 to i8
  %84 = load ptr, ptr @buff, align 8, !tbaa !4
  %85 = load i64, ptr %j, align 8, !tbaa !10
  %inc106 = add i64 %85, 1
  store i64 %inc106, ptr %j, align 8, !tbaa !10
  %arrayidx107 = getelementptr inbounds i8, ptr %84, i64 %85
  store i8 %conv105, ptr %arrayidx107, align 1, !tbaa !12
  br label %for.inc108

for.inc108:                                       ; preds = %for.end98
  %86 = load i64, ptr %i, align 8, !tbaa !10
  %inc109 = add i64 %86, 1
  store i64 %inc109, ptr %i, align 8, !tbaa !10
  br label %for.cond72, !llvm.loop !112

for.end110:                                       ; preds = %for.cond72
  br label %if.end202

if.else111:                                       ; preds = %if.else58
  store i64 0, ptr %j, align 8, !tbaa !10
  %87 = load i32, ptr %n, align 4, !tbaa !8
  %conv112 = trunc i32 %87 to i8
  %88 = load ptr, ptr @buff, align 8, !tbaa !4
  %89 = load i64, ptr %j, align 8, !tbaa !10
  %inc113 = add i64 %89, 1
  store i64 %inc113, ptr %j, align 8, !tbaa !10
  %arrayidx114 = getelementptr inbounds i8, ptr %88, i64 %89
  store i8 %conv112, ptr %arrayidx114, align 1, !tbaa !12
  %90 = load i32, ptr %n, align 4, !tbaa !8
  store i32 %90, ptr %w, align 4, !tbaa !8
  %91 = load i32, ptr %w, align 4, !tbaa !8
  %shr115 = lshr i32 %91, 8
  %and116 = and i32 %shr115, 255
  %conv117 = trunc i32 %and116 to i8
  %92 = load ptr, ptr @buff, align 8, !tbaa !4
  %93 = load i64, ptr %j, align 8, !tbaa !10
  %inc118 = add i64 %93, 1
  store i64 %inc118, ptr %j, align 8, !tbaa !10
  %arrayidx119 = getelementptr inbounds i8, ptr %92, i64 %93
  store i8 %conv117, ptr %arrayidx119, align 1, !tbaa !12
  %94 = load i32, ptr %w, align 4, !tbaa !8
  %and120 = and i32 %94, 255
  %conv121 = trunc i32 %and120 to i8
  %95 = load ptr, ptr @buff, align 8, !tbaa !4
  %96 = load i64, ptr %j, align 8, !tbaa !10
  %inc122 = add i64 %96, 1
  store i64 %inc122, ptr %j, align 8, !tbaa !10
  %arrayidx123 = getelementptr inbounds i8, ptr %95, i64 %96
  store i8 %conv121, ptr %arrayidx123, align 1, !tbaa !12
  %97 = load i32, ptr %n, align 4, !tbaa !8
  store i32 %97, ptr %w, align 4, !tbaa !8
  %98 = load i32, ptr %w, align 4, !tbaa !8
  %shr124 = lshr i32 %98, 24
  %and125 = and i32 %shr124, 255
  %conv126 = trunc i32 %and125 to i8
  %99 = load ptr, ptr @buff, align 8, !tbaa !4
  %100 = load i64, ptr %j, align 8, !tbaa !10
  %inc127 = add i64 %100, 1
  store i64 %inc127, ptr %j, align 8, !tbaa !10
  %arrayidx128 = getelementptr inbounds i8, ptr %99, i64 %100
  store i8 %conv126, ptr %arrayidx128, align 1, !tbaa !12
  %101 = load i32, ptr %w, align 4, !tbaa !8
  %shr129 = lshr i32 %101, 16
  %and130 = and i32 %shr129, 255
  %conv131 = trunc i32 %and130 to i8
  %102 = load ptr, ptr @buff, align 8, !tbaa !4
  %103 = load i64, ptr %j, align 8, !tbaa !10
  %inc132 = add i64 %103, 1
  store i64 %inc132, ptr %j, align 8, !tbaa !10
  %arrayidx133 = getelementptr inbounds i8, ptr %102, i64 %103
  store i8 %conv131, ptr %arrayidx133, align 1, !tbaa !12
  %104 = load i32, ptr %w, align 4, !tbaa !8
  %shr134 = lshr i32 %104, 8
  %and135 = and i32 %shr134, 255
  %conv136 = trunc i32 %and135 to i8
  %105 = load ptr, ptr @buff, align 8, !tbaa !4
  %106 = load i64, ptr %j, align 8, !tbaa !10
  %inc137 = add i64 %106, 1
  store i64 %inc137, ptr %j, align 8, !tbaa !10
  %arrayidx138 = getelementptr inbounds i8, ptr %105, i64 %106
  store i8 %conv136, ptr %arrayidx138, align 1, !tbaa !12
  %107 = load i32, ptr %w, align 4, !tbaa !8
  %and139 = and i32 %107, 255
  %conv140 = trunc i32 %and139 to i8
  %108 = load ptr, ptr @buff, align 8, !tbaa !4
  %109 = load i64, ptr %j, align 8, !tbaa !10
  %inc141 = add i64 %109, 1
  store i64 %inc141, ptr %j, align 8, !tbaa !10
  %arrayidx142 = getelementptr inbounds i8, ptr %108, i64 %109
  store i8 %conv140, ptr %arrayidx142, align 1, !tbaa !12
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc199, %if.else111
  %110 = load i64, ptr %i, align 8, !tbaa !10
  %111 = load i32, ptr %n, align 4, !tbaa !8
  %conv144 = sext i32 %111 to i64
  %cmp145 = icmp ult i64 %110, %conv144
  br i1 %cmp145, label %for.body147, label %for.end201

for.body147:                                      ; preds = %for.cond143
  %112 = load ptr, ptr %v, align 8, !tbaa !4
  %113 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx148 = getelementptr inbounds i64, ptr %112, i64 %113
  %114 = load i64, ptr %arrayidx148, align 8, !tbaa !10
  store i64 %114, ptr %vi, align 8, !tbaa !10
  %115 = load ptr, ptr %d, align 8, !tbaa !4
  %116 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx149 = getelementptr inbounds i32, ptr %115, i64 %116
  %117 = load i32, ptr %arrayidx149, align 4, !tbaa !8
  store i32 %117, ptr %di, align 4, !tbaa !8
  store i64 0, ptr %k, align 8, !tbaa !10
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc177, %for.body147
  %118 = load i64, ptr %k, align 8, !tbaa !10
  %119 = load i32, ptr %di, align 4, !tbaa !8
  %conv151 = sext i32 %119 to i64
  %cmp152 = icmp ult i64 %118, %conv151
  br i1 %cmp152, label %for.body154, label %for.end179

for.body154:                                      ; preds = %for.cond150
  %120 = load ptr, ptr %e, align 8, !tbaa !4
  %121 = load i64, ptr %vi, align 8, !tbaa !10
  %122 = load i64, ptr %k, align 8, !tbaa !10
  %add155 = add i64 %121, %122
  %arrayidx156 = getelementptr inbounds i32, ptr %120, i64 %add155
  %123 = load i32, ptr %arrayidx156, align 4, !tbaa !8
  %add157 = add nsw i32 %123, 1
  store i32 %add157, ptr %w, align 4, !tbaa !8
  %124 = load i32, ptr %w, align 4, !tbaa !8
  %shr158 = lshr i32 %124, 24
  %and159 = and i32 %shr158, 255
  %conv160 = trunc i32 %and159 to i8
  %125 = load ptr, ptr @buff, align 8, !tbaa !4
  %126 = load i64, ptr %j, align 8, !tbaa !10
  %inc161 = add i64 %126, 1
  store i64 %inc161, ptr %j, align 8, !tbaa !10
  %arrayidx162 = getelementptr inbounds i8, ptr %125, i64 %126
  store i8 %conv160, ptr %arrayidx162, align 1, !tbaa !12
  %127 = load i32, ptr %w, align 4, !tbaa !8
  %shr163 = lshr i32 %127, 16
  %and164 = and i32 %shr163, 255
  %conv165 = trunc i32 %and164 to i8
  %128 = load ptr, ptr @buff, align 8, !tbaa !4
  %129 = load i64, ptr %j, align 8, !tbaa !10
  %inc166 = add i64 %129, 1
  store i64 %inc166, ptr %j, align 8, !tbaa !10
  %arrayidx167 = getelementptr inbounds i8, ptr %128, i64 %129
  store i8 %conv165, ptr %arrayidx167, align 1, !tbaa !12
  %130 = load i32, ptr %w, align 4, !tbaa !8
  %shr168 = lshr i32 %130, 8
  %and169 = and i32 %shr168, 255
  %conv170 = trunc i32 %and169 to i8
  %131 = load ptr, ptr @buff, align 8, !tbaa !4
  %132 = load i64, ptr %j, align 8, !tbaa !10
  %inc171 = add i64 %132, 1
  store i64 %inc171, ptr %j, align 8, !tbaa !10
  %arrayidx172 = getelementptr inbounds i8, ptr %131, i64 %132
  store i8 %conv170, ptr %arrayidx172, align 1, !tbaa !12
  %133 = load i32, ptr %w, align 4, !tbaa !8
  %and173 = and i32 %133, 255
  %conv174 = trunc i32 %and173 to i8
  %134 = load ptr, ptr @buff, align 8, !tbaa !4
  %135 = load i64, ptr %j, align 8, !tbaa !10
  %inc175 = add i64 %135, 1
  store i64 %inc175, ptr %j, align 8, !tbaa !10
  %arrayidx176 = getelementptr inbounds i8, ptr %134, i64 %135
  store i8 %conv174, ptr %arrayidx176, align 1, !tbaa !12
  br label %for.inc177

for.inc177:                                       ; preds = %for.body154
  %136 = load i64, ptr %k, align 8, !tbaa !10
  %inc178 = add i64 %136, 1
  store i64 %inc178, ptr %k, align 8, !tbaa !10
  br label %for.cond150, !llvm.loop !113

for.end179:                                       ; preds = %for.cond150
  store i32 0, ptr %w, align 4, !tbaa !8
  %137 = load i32, ptr %w, align 4, !tbaa !8
  %shr180 = lshr i32 %137, 24
  %and181 = and i32 %shr180, 255
  %conv182 = trunc i32 %and181 to i8
  %138 = load ptr, ptr @buff, align 8, !tbaa !4
  %139 = load i64, ptr %j, align 8, !tbaa !10
  %inc183 = add i64 %139, 1
  store i64 %inc183, ptr %j, align 8, !tbaa !10
  %arrayidx184 = getelementptr inbounds i8, ptr %138, i64 %139
  store i8 %conv182, ptr %arrayidx184, align 1, !tbaa !12
  %140 = load i32, ptr %w, align 4, !tbaa !8
  %shr185 = lshr i32 %140, 16
  %and186 = and i32 %shr185, 255
  %conv187 = trunc i32 %and186 to i8
  %141 = load ptr, ptr @buff, align 8, !tbaa !4
  %142 = load i64, ptr %j, align 8, !tbaa !10
  %inc188 = add i64 %142, 1
  store i64 %inc188, ptr %j, align 8, !tbaa !10
  %arrayidx189 = getelementptr inbounds i8, ptr %141, i64 %142
  store i8 %conv187, ptr %arrayidx189, align 1, !tbaa !12
  %143 = load i32, ptr %w, align 4, !tbaa !8
  %shr190 = lshr i32 %143, 8
  %and191 = and i32 %shr190, 255
  %conv192 = trunc i32 %and191 to i8
  %144 = load ptr, ptr @buff, align 8, !tbaa !4
  %145 = load i64, ptr %j, align 8, !tbaa !10
  %inc193 = add i64 %145, 1
  store i64 %inc193, ptr %j, align 8, !tbaa !10
  %arrayidx194 = getelementptr inbounds i8, ptr %144, i64 %145
  store i8 %conv192, ptr %arrayidx194, align 1, !tbaa !12
  %146 = load i32, ptr %w, align 4, !tbaa !8
  %and195 = and i32 %146, 255
  %conv196 = trunc i32 %and195 to i8
  %147 = load ptr, ptr @buff, align 8, !tbaa !4
  %148 = load i64, ptr %j, align 8, !tbaa !10
  %inc197 = add i64 %148, 1
  store i64 %inc197, ptr %j, align 8, !tbaa !10
  %arrayidx198 = getelementptr inbounds i8, ptr %147, i64 %148
  store i8 %conv196, ptr %arrayidx198, align 1, !tbaa !12
  br label %for.inc199

for.inc199:                                       ; preds = %for.end179
  %149 = load i64, ptr %i, align 8, !tbaa !10
  %inc200 = add i64 %149, 1
  store i64 %inc200, ptr %i, align 8, !tbaa !10
  br label %for.cond143, !llvm.loop !114

for.end201:                                       ; preds = %for.cond143
  br label %if.end202

if.end202:                                        ; preds = %for.end201, %for.end110
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %for.end57
  %150 = load ptr, ptr @buff, align 8, !tbaa !4
  %151 = load i64, ptr %j, align 8, !tbaa !10
  %152 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call204 = call i64 @fwrite(ptr noundef %150, i64 noundef 1, i64 noundef %151, ptr noundef %152)
  %153 = load i64, ptr %j, align 8, !tbaa !10
  %cmp205 = icmp ne i64 %call204, %153
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end203
  call void @gt_abort(ptr noundef @.str.50)
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.end203
  call void @llvm.lifetime.end.p0(i64 4, ptr %di) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #12
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @readpc_sg(ptr noundef %f, ptr noundef %sg) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %w1 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %w3 = alloca i32, align 4
  %w4 = alloca i32, align 4
  %bytes = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %di = alloca i32, align 4
  %v = alloca ptr, align 8
  %vi = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %di) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call i32 @getc_unlocked(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %n, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %n, align 4, !tbaa !8
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %bytes, align 4, !tbaa !8
  br label %if.end44

if.else4:                                         ; preds = %if.else
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call5 = call i32 @getc_unlocked(ptr noundef %4)
  store i32 %call5, ptr %w1, align 4, !tbaa !8
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call6 = call i32 @getc_unlocked(ptr noundef %5)
  store i32 %call6, ptr %w2, align 4, !tbaa !8
  %6 = load i32, ptr %w2, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %6, -1
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else4
  store i32 -1, ptr %n, align 4, !tbaa !8
  br label %if.end

if.else9:                                         ; preds = %if.else4
  %7 = load i32, ptr %w1, align 4, !tbaa !8
  %shl = shl i32 %7, 8
  %8 = load i32, ptr %w2, align 4, !tbaa !8
  %or = or i32 %shl, %8
  store i32 %or, ptr %n, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %9, -1
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %10 = load i32, ptr %n, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %10, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %lor.lhs.false11, %if.end
  call void @gt_abort(ptr noundef @.str.51)
  br label %if.end43

if.else14:                                        ; preds = %lor.lhs.false11
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %cmp15 = icmp sgt i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  store i32 2, ptr %bytes, align 4, !tbaa !8
  br label %if.end42

if.else17:                                        ; preds = %if.else14
  %12 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call18 = call i32 @getc_unlocked(ptr noundef %12)
  store i32 %call18, ptr %w1, align 4, !tbaa !8
  %13 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call19 = call i32 @getc_unlocked(ptr noundef %13)
  store i32 %call19, ptr %w2, align 4, !tbaa !8
  %14 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call20 = call i32 @getc_unlocked(ptr noundef %14)
  store i32 %call20, ptr %w3, align 4, !tbaa !8
  %15 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call21 = call i32 @getc_unlocked(ptr noundef %15)
  store i32 %call21, ptr %w4, align 4, !tbaa !8
  %16 = load i32, ptr %w4, align 4, !tbaa !8
  %cmp22 = icmp eq i32 %16, -1
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else17
  store i32 -1, ptr %n, align 4, !tbaa !8
  br label %if.end31

if.else24:                                        ; preds = %if.else17
  %17 = load i32, ptr %w1, align 4, !tbaa !8
  %shl25 = shl i32 %17, 24
  %18 = load i32, ptr %w2, align 4, !tbaa !8
  %shl26 = shl i32 %18, 16
  %or27 = or i32 %shl25, %shl26
  %19 = load i32, ptr %w3, align 4, !tbaa !8
  %shl28 = shl i32 %19, 8
  %or29 = or i32 %or27, %shl28
  %20 = load i32, ptr %w4, align 4, !tbaa !8
  %or30 = or i32 %or29, %20
  store i32 %or30, ptr %n, align 4, !tbaa !8
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then23
  %21 = load i32, ptr %n, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %21, -1
  br i1 %cmp32, label %if.then35, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end31
  %22 = load i32, ptr %n, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %22, 0
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %lor.lhs.false33, %if.end31
  call void @gt_abort(ptr noundef @.str.52)
  br label %if.end41

if.else36:                                        ; preds = %lor.lhs.false33
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %cmp37 = icmp sgt i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else36
  store i32 4, ptr %bytes, align 4, !tbaa !8
  br label %if.end40

if.else39:                                        ; preds = %if.else36
  call void @gt_abort(ptr noundef @.str.53)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then16
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then13
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then3
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  %24 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %cmp46 = icmp eq ptr %24, null
  br i1 %cmp46, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end45
  %call48 = call noalias ptr @malloc(i64 noundef 80) #16
  store ptr %call48, ptr %sg.addr, align 8, !tbaa !4
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  call void @gt_abort(ptr noundef @.str.54)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then47
  br label %do.body

do.body:                                          ; preds = %if.end51
  %25 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v52 = getelementptr inbounds %struct.sparsegraph, ptr %25, i32 0, i32 1
  store ptr null, ptr %v52, align 8, !tbaa !52
  %26 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.sparsegraph, ptr %26, i32 0, i32 5
  store ptr null, ptr %w, align 8, !tbaa !79
  %27 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e53 = getelementptr inbounds %struct.sparsegraph, ptr %27, i32 0, i32 4
  store ptr null, ptr %e53, align 8, !tbaa !62
  %28 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d54 = getelementptr inbounds %struct.sparsegraph, ptr %28, i32 0, i32 3
  store ptr null, ptr %d54, align 8, !tbaa !54
  %29 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %wlen = getelementptr inbounds %struct.sparsegraph, ptr %29, i32 0, i32 9
  store i64 0, ptr %wlen, align 8, !tbaa !80
  %30 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %30, i32 0, i32 8
  store i64 0, ptr %elen, align 8, !tbaa !61
  %31 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %31, i32 0, i32 7
  store i64 0, ptr %dlen, align 8, !tbaa !53
  %32 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %32, i32 0, i32 6
  store i64 0, ptr %vlen, align 8, !tbaa !51
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.end45
  br label %do.body56

do.body56:                                        ; preds = %if.end55
  %33 = load i32, ptr %n, align 4, !tbaa !8
  %conv = sext i32 %33 to i64
  %34 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen57 = getelementptr inbounds %struct.sparsegraph, ptr %34, i32 0, i32 6
  %35 = load i64, ptr %vlen57, align 8, !tbaa !51
  %cmp58 = icmp ugt i64 %conv, %35
  br i1 %cmp58, label %if.then60, label %if.end74

if.then60:                                        ; preds = %do.body56
  %36 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen61 = getelementptr inbounds %struct.sparsegraph, ptr %36, i32 0, i32 6
  %37 = load i64, ptr %vlen61, align 8, !tbaa !51
  %tobool = icmp ne i64 %37, 0
  br i1 %tobool, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then60
  %38 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v63 = getelementptr inbounds %struct.sparsegraph, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %v63, align 8, !tbaa !52
  call void @free(ptr noundef %39) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.then60
  %40 = load i32, ptr %n, align 4, !tbaa !8
  %conv65 = sext i32 %40 to i64
  %41 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen66 = getelementptr inbounds %struct.sparsegraph, ptr %41, i32 0, i32 6
  store i64 %conv65, ptr %vlen66, align 8, !tbaa !51
  %42 = load i32, ptr %n, align 4, !tbaa !8
  %conv67 = sext i32 %42 to i64
  %mul = mul i64 %conv67, 8
  %call68 = call noalias ptr @malloc(i64 noundef %mul) #16
  %43 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v69 = getelementptr inbounds %struct.sparsegraph, ptr %43, i32 0, i32 1
  store ptr %call68, ptr %v69, align 8, !tbaa !52
  %cmp70 = icmp eq ptr %call68, null
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end64
  call void @gt_abort(ptr noundef @.str.55)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end64
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %do.body56
  %44 = load i32, ptr %n, align 4, !tbaa !8
  %conv75 = sext i32 %44 to i64
  %45 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen76 = getelementptr inbounds %struct.sparsegraph, ptr %45, i32 0, i32 7
  %46 = load i64, ptr %dlen76, align 8, !tbaa !53
  %cmp77 = icmp ugt i64 %conv75, %46
  br i1 %cmp77, label %if.then79, label %if.end95

if.then79:                                        ; preds = %if.end74
  %47 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen80 = getelementptr inbounds %struct.sparsegraph, ptr %47, i32 0, i32 7
  %48 = load i64, ptr %dlen80, align 8, !tbaa !53
  %tobool81 = icmp ne i64 %48, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then79
  %49 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d83 = getelementptr inbounds %struct.sparsegraph, ptr %49, i32 0, i32 3
  %50 = load ptr, ptr %d83, align 8, !tbaa !54
  call void @free(ptr noundef %50) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.then79
  %51 = load i32, ptr %n, align 4, !tbaa !8
  %conv85 = sext i32 %51 to i64
  %52 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen86 = getelementptr inbounds %struct.sparsegraph, ptr %52, i32 0, i32 7
  store i64 %conv85, ptr %dlen86, align 8, !tbaa !53
  %53 = load i32, ptr %n, align 4, !tbaa !8
  %conv87 = sext i32 %53 to i64
  %mul88 = mul i64 %conv87, 4
  %call89 = call noalias ptr @malloc(i64 noundef %mul88) #16
  %54 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d90 = getelementptr inbounds %struct.sparsegraph, ptr %54, i32 0, i32 3
  store ptr %call89, ptr %d90, align 8, !tbaa !54
  %cmp91 = icmp eq ptr %call89, null
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end84
  call void @gt_abort(ptr noundef @.str.55)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end84
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end74
  %55 = load i32, ptr %n, align 4, !tbaa !8
  %conv96 = sext i32 %55 to i64
  %mul97 = mul i64 2, %conv96
  %56 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen98 = getelementptr inbounds %struct.sparsegraph, ptr %56, i32 0, i32 8
  %57 = load i64, ptr %elen98, align 8, !tbaa !61
  %cmp99 = icmp ugt i64 %mul97, %57
  br i1 %cmp99, label %if.then101, label %if.end119

if.then101:                                       ; preds = %if.end95
  %58 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen102 = getelementptr inbounds %struct.sparsegraph, ptr %58, i32 0, i32 8
  %59 = load i64, ptr %elen102, align 8, !tbaa !61
  %tobool103 = icmp ne i64 %59, 0
  br i1 %tobool103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then101
  %60 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e105 = getelementptr inbounds %struct.sparsegraph, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %e105, align 8, !tbaa !62
  call void @free(ptr noundef %61) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.then101
  %62 = load i32, ptr %n, align 4, !tbaa !8
  %conv107 = sext i32 %62 to i64
  %mul108 = mul i64 2, %conv107
  %63 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen109 = getelementptr inbounds %struct.sparsegraph, ptr %63, i32 0, i32 8
  store i64 %mul108, ptr %elen109, align 8, !tbaa !61
  %64 = load i32, ptr %n, align 4, !tbaa !8
  %conv110 = sext i32 %64 to i64
  %mul111 = mul i64 2, %conv110
  %mul112 = mul i64 %mul111, 4
  %call113 = call noalias ptr @malloc(i64 noundef %mul112) #16
  %65 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e114 = getelementptr inbounds %struct.sparsegraph, ptr %65, i32 0, i32 4
  store ptr %call113, ptr %e114, align 8, !tbaa !62
  %cmp115 = icmp eq ptr %call113, null
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end106
  call void @gt_abort(ptr noundef @.str.55)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end106
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end95
  br label %do.cond120

do.cond120:                                       ; preds = %if.end119
  br label %do.end121

do.end121:                                        ; preds = %do.cond120
  br label %do.body122

do.body122:                                       ; preds = %do.end121
  %66 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v123 = getelementptr inbounds %struct.sparsegraph, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %v123, align 8, !tbaa !52
  store ptr %67, ptr %v, align 8, !tbaa !4
  %68 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d124 = getelementptr inbounds %struct.sparsegraph, ptr %68, i32 0, i32 3
  %69 = load ptr, ptr %d124, align 8, !tbaa !54
  store ptr %69, ptr %d, align 8, !tbaa !4
  %70 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e125 = getelementptr inbounds %struct.sparsegraph, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %e125, align 8, !tbaa !62
  store ptr %71, ptr %e, align 8, !tbaa !4
  br label %do.cond126

do.cond126:                                       ; preds = %do.body122
  br label %do.end127

do.end127:                                        ; preds = %do.cond126
  store i64 0, ptr %vi, align 8, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end127
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %73 = load i32, ptr %n, align 4, !tbaa !8
  %cmp128 = icmp slt i32 %72, %73
  br i1 %cmp128, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i64, ptr %vi, align 8, !tbaa !10
  %75 = load ptr, ptr %v, align 8, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %76 to i64
  %arrayidx = getelementptr inbounds i64, ptr %75, i64 %idxprom
  store i64 %74, ptr %arrayidx, align 8, !tbaa !10
  store i32 0, ptr %di, align 4, !tbaa !8
  br label %do.body130

do.body130:                                       ; preds = %do.cond211, %for.body
  %77 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp131 = icmp eq i32 %77, 1
  br i1 %cmp131, label %if.then133, label %if.else135

if.then133:                                       ; preds = %do.body130
  %78 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call134 = call i32 @getc_unlocked(ptr noundef %78)
  store i32 %call134, ptr %j, align 4, !tbaa !8
  br label %if.end165

if.else135:                                       ; preds = %do.body130
  %79 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp136 = icmp eq i32 %79, 2
  br i1 %cmp136, label %if.then138, label %if.else148

if.then138:                                       ; preds = %if.else135
  %80 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call139 = call i32 @getc_unlocked(ptr noundef %80)
  store i32 %call139, ptr %w1, align 4, !tbaa !8
  %81 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call140 = call i32 @getc_unlocked(ptr noundef %81)
  store i32 %call140, ptr %w2, align 4, !tbaa !8
  %82 = load i32, ptr %w2, align 4, !tbaa !8
  %cmp141 = icmp eq i32 %82, -1
  br i1 %cmp141, label %if.then143, label %if.else144

if.then143:                                       ; preds = %if.then138
  store i32 -1, ptr %j, align 4, !tbaa !8
  br label %if.end147

if.else144:                                       ; preds = %if.then138
  %83 = load i32, ptr %w1, align 4, !tbaa !8
  %shl145 = shl i32 %83, 8
  %84 = load i32, ptr %w2, align 4, !tbaa !8
  %or146 = or i32 %shl145, %84
  store i32 %or146, ptr %j, align 4, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then143
  br label %if.end164

if.else148:                                       ; preds = %if.else135
  %85 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call149 = call i32 @getc_unlocked(ptr noundef %85)
  store i32 %call149, ptr %w1, align 4, !tbaa !8
  %86 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call150 = call i32 @getc_unlocked(ptr noundef %86)
  store i32 %call150, ptr %w2, align 4, !tbaa !8
  %87 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call151 = call i32 @getc_unlocked(ptr noundef %87)
  store i32 %call151, ptr %w3, align 4, !tbaa !8
  %88 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call152 = call i32 @getc_unlocked(ptr noundef %88)
  store i32 %call152, ptr %w4, align 4, !tbaa !8
  %89 = load i32, ptr %w4, align 4, !tbaa !8
  %cmp153 = icmp eq i32 %89, -1
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.else148
  store i32 -1, ptr %j, align 4, !tbaa !8
  br label %if.end163

if.else156:                                       ; preds = %if.else148
  %90 = load i32, ptr %w1, align 4, !tbaa !8
  %shl157 = shl i32 %90, 24
  %91 = load i32, ptr %w2, align 4, !tbaa !8
  %shl158 = shl i32 %91, 16
  %or159 = or i32 %shl157, %shl158
  %92 = load i32, ptr %w3, align 4, !tbaa !8
  %shl160 = shl i32 %92, 8
  %or161 = or i32 %or159, %shl160
  %93 = load i32, ptr %w4, align 4, !tbaa !8
  %or162 = or i32 %or161, %93
  store i32 %or162, ptr %j, align 4, !tbaa !8
  br label %if.end163

if.end163:                                        ; preds = %if.else156, %if.then155
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end147
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then133
  %94 = load i32, ptr %j, align 4, !tbaa !8
  %cmp166 = icmp eq i32 %94, -1
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end165
  call void @gt_abort(ptr noundef @.str.56)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end165
  %95 = load i32, ptr %j, align 4, !tbaa !8
  %cmp170 = icmp sgt i32 %95, 0
  br i1 %cmp170, label %if.then172, label %if.else202

if.then172:                                       ; preds = %if.end169
  %96 = load i64, ptr %vi, align 8, !tbaa !10
  %97 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen173 = getelementptr inbounds %struct.sparsegraph, ptr %97, i32 0, i32 8
  %98 = load i64, ptr %elen173, align 8, !tbaa !61
  %cmp174 = icmp eq i64 %96, %98
  br i1 %cmp174, label %if.then176, label %if.end199

if.then176:                                       ; preds = %if.then172
  %99 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen177 = getelementptr inbounds %struct.sparsegraph, ptr %99, i32 0, i32 8
  %100 = load i64, ptr %elen177, align 8, !tbaa !61
  %mul178 = mul i64 2, %100
  %101 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen179 = getelementptr inbounds %struct.sparsegraph, ptr %101, i32 0, i32 8
  %102 = load i64, ptr %elen179, align 8, !tbaa !61
  %cmp180 = icmp ugt i64 %mul178, %102
  br i1 %cmp180, label %if.then182, label %if.end197

if.then182:                                       ; preds = %if.then176
  %103 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e183 = getelementptr inbounds %struct.sparsegraph, ptr %103, i32 0, i32 4
  %104 = load ptr, ptr %e183, align 8, !tbaa !62
  %105 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen184 = getelementptr inbounds %struct.sparsegraph, ptr %105, i32 0, i32 8
  %106 = load i64, ptr %elen184, align 8, !tbaa !61
  %mul185 = mul i64 2, %106
  %mul186 = mul i64 %mul185, 4
  %call187 = call ptr @realloc(ptr noundef %104, i64 noundef %mul186) #17
  %107 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e188 = getelementptr inbounds %struct.sparsegraph, ptr %107, i32 0, i32 4
  store ptr %call187, ptr %e188, align 8, !tbaa !62
  %cmp189 = icmp eq ptr %call187, null
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %if.then182
  call void @gt_abort(ptr noundef @.str.55)
  br label %if.end196

if.else192:                                       ; preds = %if.then182
  %108 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen193 = getelementptr inbounds %struct.sparsegraph, ptr %108, i32 0, i32 8
  %109 = load i64, ptr %elen193, align 8, !tbaa !61
  %mul194 = mul i64 2, %109
  %110 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen195 = getelementptr inbounds %struct.sparsegraph, ptr %110, i32 0, i32 8
  store i64 %mul194, ptr %elen195, align 8, !tbaa !61
  br label %if.end196

if.end196:                                        ; preds = %if.else192, %if.then191
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.then176
  %111 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e198 = getelementptr inbounds %struct.sparsegraph, ptr %111, i32 0, i32 4
  %112 = load ptr, ptr %e198, align 8, !tbaa !62
  store ptr %112, ptr %e, align 8, !tbaa !4
  br label %if.end199

if.end199:                                        ; preds = %if.end197, %if.then172
  %113 = load i32, ptr %j, align 4, !tbaa !8
  %sub = sub nsw i32 %113, 1
  %114 = load ptr, ptr %e, align 8, !tbaa !4
  %115 = load i64, ptr %vi, align 8, !tbaa !10
  %inc = add i64 %115, 1
  store i64 %inc, ptr %vi, align 8, !tbaa !10
  %arrayidx200 = getelementptr inbounds i32, ptr %114, i64 %115
  store i32 %sub, ptr %arrayidx200, align 4, !tbaa !8
  %116 = load i32, ptr %di, align 4, !tbaa !8
  %inc201 = add nsw i32 %116, 1
  store i32 %inc201, ptr %di, align 4, !tbaa !8
  br label %if.end210

if.else202:                                       ; preds = %if.end169
  %117 = load i32, ptr %j, align 4, !tbaa !8
  %cmp203 = icmp eq i32 %117, 0
  br i1 %cmp203, label %if.then205, label %if.else208

if.then205:                                       ; preds = %if.else202
  %118 = load i32, ptr %di, align 4, !tbaa !8
  %119 = load ptr, ptr %d, align 8, !tbaa !4
  %120 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom206 = sext i32 %120 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %119, i64 %idxprom206
  store i32 %118, ptr %arrayidx207, align 4, !tbaa !8
  br label %if.end209

if.else208:                                       ; preds = %if.else202
  call void @gt_abort(ptr noundef @.str.57)
  br label %if.end209

if.end209:                                        ; preds = %if.else208, %if.then205
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end199
  br label %do.cond211

do.cond211:                                       ; preds = %if.end210
  %121 = load i32, ptr %j, align 4, !tbaa !8
  %cmp212 = icmp ne i32 %121, 0
  br i1 %cmp212, label %do.body130, label %do.end214, !llvm.loop !115

do.end214:                                        ; preds = %do.cond211
  br label %for.inc

for.inc:                                          ; preds = %do.end214
  %122 = load i32, ptr %i, align 4, !tbaa !8
  %inc215 = add nsw i32 %122, 1
  store i32 %inc215, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %123 = load i32, ptr %n, align 4, !tbaa !8
  %124 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %124, i32 0, i32 2
  store i32 %123, ptr %nv, align 8, !tbaa !49
  %125 = load i64, ptr %vi, align 8, !tbaa !10
  %126 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %126, i32 0, i32 0
  store i64 %125, ptr %nde, align 8, !tbaa !60
  %127 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  store ptr %127, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %di) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w1) #12
  %128 = load ptr, ptr %retval, align 8
  ret ptr %128
}

; Function Attrs: nounwind uwtable
define ptr @readpcle_sg(ptr noundef %f, ptr noundef %sg) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %sg.addr = alloca ptr, align 8
  %w1 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %w3 = alloca i32, align 4
  %w4 = alloca i32, align 4
  %bytes = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %di = alloca i32, align 4
  %v = alloca ptr, align 8
  %vi = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %di) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #12
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call i32 @getc_unlocked(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !8
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %n, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %n, align 4, !tbaa !8
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %bytes, align 4, !tbaa !8
  br label %if.end44

if.else4:                                         ; preds = %if.else
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call5 = call i32 @getc_unlocked(ptr noundef %4)
  store i32 %call5, ptr %w2, align 4, !tbaa !8
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call6 = call i32 @getc_unlocked(ptr noundef %5)
  store i32 %call6, ptr %w1, align 4, !tbaa !8
  %6 = load i32, ptr %w1, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %6, -1
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else4
  store i32 -1, ptr %n, align 4, !tbaa !8
  br label %if.end

if.else9:                                         ; preds = %if.else4
  %7 = load i32, ptr %w1, align 4, !tbaa !8
  %shl = shl i32 %7, 8
  %8 = load i32, ptr %w2, align 4, !tbaa !8
  %or = or i32 %shl, %8
  store i32 %or, ptr %n, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %9, -1
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %10 = load i32, ptr %n, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %10, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %lor.lhs.false11, %if.end
  call void @gt_abort(ptr noundef @.str.58)
  br label %if.end43

if.else14:                                        ; preds = %lor.lhs.false11
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %cmp15 = icmp sgt i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  store i32 2, ptr %bytes, align 4, !tbaa !8
  br label %if.end42

if.else17:                                        ; preds = %if.else14
  %12 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call18 = call i32 @getc_unlocked(ptr noundef %12)
  store i32 %call18, ptr %w4, align 4, !tbaa !8
  %13 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call19 = call i32 @getc_unlocked(ptr noundef %13)
  store i32 %call19, ptr %w3, align 4, !tbaa !8
  %14 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call20 = call i32 @getc_unlocked(ptr noundef %14)
  store i32 %call20, ptr %w2, align 4, !tbaa !8
  %15 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call21 = call i32 @getc_unlocked(ptr noundef %15)
  store i32 %call21, ptr %w1, align 4, !tbaa !8
  %16 = load i32, ptr %w1, align 4, !tbaa !8
  %cmp22 = icmp eq i32 %16, -1
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else17
  store i32 -1, ptr %n, align 4, !tbaa !8
  br label %if.end31

if.else24:                                        ; preds = %if.else17
  %17 = load i32, ptr %w1, align 4, !tbaa !8
  %shl25 = shl i32 %17, 24
  %18 = load i32, ptr %w2, align 4, !tbaa !8
  %shl26 = shl i32 %18, 16
  %or27 = or i32 %shl25, %shl26
  %19 = load i32, ptr %w3, align 4, !tbaa !8
  %shl28 = shl i32 %19, 8
  %or29 = or i32 %or27, %shl28
  %20 = load i32, ptr %w4, align 4, !tbaa !8
  %or30 = or i32 %or29, %20
  store i32 %or30, ptr %n, align 4, !tbaa !8
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then23
  %21 = load i32, ptr %n, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %21, -1
  br i1 %cmp32, label %if.then35, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end31
  %22 = load i32, ptr %n, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %22, 0
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %lor.lhs.false33, %if.end31
  call void @gt_abort(ptr noundef @.str.59)
  br label %if.end41

if.else36:                                        ; preds = %lor.lhs.false33
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %cmp37 = icmp sgt i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else36
  store i32 4, ptr %bytes, align 4, !tbaa !8
  br label %if.end40

if.else39:                                        ; preds = %if.else36
  call void @gt_abort(ptr noundef @.str.60)
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then16
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then13
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then3
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  %24 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %cmp46 = icmp eq ptr %24, null
  br i1 %cmp46, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end45
  %call48 = call noalias ptr @malloc(i64 noundef 80) #16
  store ptr %call48, ptr %sg.addr, align 8, !tbaa !4
  %cmp49 = icmp eq ptr %call48, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  call void @gt_abort(ptr noundef @.str.61)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then47
  br label %do.body

do.body:                                          ; preds = %if.end51
  %25 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v52 = getelementptr inbounds %struct.sparsegraph, ptr %25, i32 0, i32 1
  store ptr null, ptr %v52, align 8, !tbaa !52
  %26 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.sparsegraph, ptr %26, i32 0, i32 5
  store ptr null, ptr %w, align 8, !tbaa !79
  %27 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e53 = getelementptr inbounds %struct.sparsegraph, ptr %27, i32 0, i32 4
  store ptr null, ptr %e53, align 8, !tbaa !62
  %28 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d54 = getelementptr inbounds %struct.sparsegraph, ptr %28, i32 0, i32 3
  store ptr null, ptr %d54, align 8, !tbaa !54
  %29 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %wlen = getelementptr inbounds %struct.sparsegraph, ptr %29, i32 0, i32 9
  store i64 0, ptr %wlen, align 8, !tbaa !80
  %30 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %30, i32 0, i32 8
  store i64 0, ptr %elen, align 8, !tbaa !61
  %31 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %31, i32 0, i32 7
  store i64 0, ptr %dlen, align 8, !tbaa !53
  %32 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %32, i32 0, i32 6
  store i64 0, ptr %vlen, align 8, !tbaa !51
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.end45
  br label %do.body56

do.body56:                                        ; preds = %if.end55
  %33 = load i32, ptr %n, align 4, !tbaa !8
  %conv = sext i32 %33 to i64
  %34 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen57 = getelementptr inbounds %struct.sparsegraph, ptr %34, i32 0, i32 6
  %35 = load i64, ptr %vlen57, align 8, !tbaa !51
  %cmp58 = icmp ugt i64 %conv, %35
  br i1 %cmp58, label %if.then60, label %if.end74

if.then60:                                        ; preds = %do.body56
  %36 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen61 = getelementptr inbounds %struct.sparsegraph, ptr %36, i32 0, i32 6
  %37 = load i64, ptr %vlen61, align 8, !tbaa !51
  %tobool = icmp ne i64 %37, 0
  br i1 %tobool, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then60
  %38 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v63 = getelementptr inbounds %struct.sparsegraph, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %v63, align 8, !tbaa !52
  call void @free(ptr noundef %39) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.then60
  %40 = load i32, ptr %n, align 4, !tbaa !8
  %conv65 = sext i32 %40 to i64
  %41 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %vlen66 = getelementptr inbounds %struct.sparsegraph, ptr %41, i32 0, i32 6
  store i64 %conv65, ptr %vlen66, align 8, !tbaa !51
  %42 = load i32, ptr %n, align 4, !tbaa !8
  %conv67 = sext i32 %42 to i64
  %mul = mul i64 %conv67, 8
  %call68 = call noalias ptr @malloc(i64 noundef %mul) #16
  %43 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v69 = getelementptr inbounds %struct.sparsegraph, ptr %43, i32 0, i32 1
  store ptr %call68, ptr %v69, align 8, !tbaa !52
  %cmp70 = icmp eq ptr %call68, null
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end64
  call void @gt_abort(ptr noundef @.str.62)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end64
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %do.body56
  %44 = load i32, ptr %n, align 4, !tbaa !8
  %conv75 = sext i32 %44 to i64
  %45 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen76 = getelementptr inbounds %struct.sparsegraph, ptr %45, i32 0, i32 7
  %46 = load i64, ptr %dlen76, align 8, !tbaa !53
  %cmp77 = icmp ugt i64 %conv75, %46
  br i1 %cmp77, label %if.then79, label %if.end95

if.then79:                                        ; preds = %if.end74
  %47 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen80 = getelementptr inbounds %struct.sparsegraph, ptr %47, i32 0, i32 7
  %48 = load i64, ptr %dlen80, align 8, !tbaa !53
  %tobool81 = icmp ne i64 %48, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then79
  %49 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d83 = getelementptr inbounds %struct.sparsegraph, ptr %49, i32 0, i32 3
  %50 = load ptr, ptr %d83, align 8, !tbaa !54
  call void @free(ptr noundef %50) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.then79
  %51 = load i32, ptr %n, align 4, !tbaa !8
  %conv85 = sext i32 %51 to i64
  %52 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %dlen86 = getelementptr inbounds %struct.sparsegraph, ptr %52, i32 0, i32 7
  store i64 %conv85, ptr %dlen86, align 8, !tbaa !53
  %53 = load i32, ptr %n, align 4, !tbaa !8
  %conv87 = sext i32 %53 to i64
  %mul88 = mul i64 %conv87, 4
  %call89 = call noalias ptr @malloc(i64 noundef %mul88) #16
  %54 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d90 = getelementptr inbounds %struct.sparsegraph, ptr %54, i32 0, i32 3
  store ptr %call89, ptr %d90, align 8, !tbaa !54
  %cmp91 = icmp eq ptr %call89, null
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end84
  call void @gt_abort(ptr noundef @.str.62)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end84
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end74
  %55 = load i32, ptr %n, align 4, !tbaa !8
  %conv96 = sext i32 %55 to i64
  %mul97 = mul i64 2, %conv96
  %56 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen98 = getelementptr inbounds %struct.sparsegraph, ptr %56, i32 0, i32 8
  %57 = load i64, ptr %elen98, align 8, !tbaa !61
  %cmp99 = icmp ugt i64 %mul97, %57
  br i1 %cmp99, label %if.then101, label %if.end119

if.then101:                                       ; preds = %if.end95
  %58 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen102 = getelementptr inbounds %struct.sparsegraph, ptr %58, i32 0, i32 8
  %59 = load i64, ptr %elen102, align 8, !tbaa !61
  %tobool103 = icmp ne i64 %59, 0
  br i1 %tobool103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then101
  %60 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e105 = getelementptr inbounds %struct.sparsegraph, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %e105, align 8, !tbaa !62
  call void @free(ptr noundef %61) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.then101
  %62 = load i32, ptr %n, align 4, !tbaa !8
  %conv107 = sext i32 %62 to i64
  %mul108 = mul i64 2, %conv107
  %63 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen109 = getelementptr inbounds %struct.sparsegraph, ptr %63, i32 0, i32 8
  store i64 %mul108, ptr %elen109, align 8, !tbaa !61
  %64 = load i32, ptr %n, align 4, !tbaa !8
  %conv110 = sext i32 %64 to i64
  %mul111 = mul i64 2, %conv110
  %mul112 = mul i64 %mul111, 4
  %call113 = call noalias ptr @malloc(i64 noundef %mul112) #16
  %65 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e114 = getelementptr inbounds %struct.sparsegraph, ptr %65, i32 0, i32 4
  store ptr %call113, ptr %e114, align 8, !tbaa !62
  %cmp115 = icmp eq ptr %call113, null
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end106
  call void @gt_abort(ptr noundef @.str.62)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end106
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end95
  br label %do.cond120

do.cond120:                                       ; preds = %if.end119
  br label %do.end121

do.end121:                                        ; preds = %do.cond120
  br label %do.body122

do.body122:                                       ; preds = %do.end121
  %66 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %v123 = getelementptr inbounds %struct.sparsegraph, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %v123, align 8, !tbaa !52
  store ptr %67, ptr %v, align 8, !tbaa !4
  %68 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %d124 = getelementptr inbounds %struct.sparsegraph, ptr %68, i32 0, i32 3
  %69 = load ptr, ptr %d124, align 8, !tbaa !54
  store ptr %69, ptr %d, align 8, !tbaa !4
  %70 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e125 = getelementptr inbounds %struct.sparsegraph, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %e125, align 8, !tbaa !62
  store ptr %71, ptr %e, align 8, !tbaa !4
  br label %do.cond126

do.cond126:                                       ; preds = %do.body122
  br label %do.end127

do.end127:                                        ; preds = %do.cond126
  store i64 0, ptr %vi, align 8, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end127
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %73 = load i32, ptr %n, align 4, !tbaa !8
  %cmp128 = icmp slt i32 %72, %73
  br i1 %cmp128, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i64, ptr %vi, align 8, !tbaa !10
  %75 = load ptr, ptr %v, align 8, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %76 to i64
  %arrayidx = getelementptr inbounds i64, ptr %75, i64 %idxprom
  store i64 %74, ptr %arrayidx, align 8, !tbaa !10
  store i32 0, ptr %di, align 4, !tbaa !8
  br label %do.body130

do.body130:                                       ; preds = %do.cond211, %for.body
  %77 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp131 = icmp eq i32 %77, 1
  br i1 %cmp131, label %if.then133, label %if.else135

if.then133:                                       ; preds = %do.body130
  %78 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call134 = call i32 @getc_unlocked(ptr noundef %78)
  store i32 %call134, ptr %j, align 4, !tbaa !8
  br label %if.end165

if.else135:                                       ; preds = %do.body130
  %79 = load i32, ptr %bytes, align 4, !tbaa !8
  %cmp136 = icmp eq i32 %79, 2
  br i1 %cmp136, label %if.then138, label %if.else148

if.then138:                                       ; preds = %if.else135
  %80 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call139 = call i32 @getc_unlocked(ptr noundef %80)
  store i32 %call139, ptr %w2, align 4, !tbaa !8
  %81 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call140 = call i32 @getc_unlocked(ptr noundef %81)
  store i32 %call140, ptr %w1, align 4, !tbaa !8
  %82 = load i32, ptr %w1, align 4, !tbaa !8
  %cmp141 = icmp eq i32 %82, -1
  br i1 %cmp141, label %if.then143, label %if.else144

if.then143:                                       ; preds = %if.then138
  store i32 -1, ptr %j, align 4, !tbaa !8
  br label %if.end147

if.else144:                                       ; preds = %if.then138
  %83 = load i32, ptr %w1, align 4, !tbaa !8
  %shl145 = shl i32 %83, 8
  %84 = load i32, ptr %w2, align 4, !tbaa !8
  %or146 = or i32 %shl145, %84
  store i32 %or146, ptr %j, align 4, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then143
  br label %if.end164

if.else148:                                       ; preds = %if.else135
  %85 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call149 = call i32 @getc_unlocked(ptr noundef %85)
  store i32 %call149, ptr %w4, align 4, !tbaa !8
  %86 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call150 = call i32 @getc_unlocked(ptr noundef %86)
  store i32 %call150, ptr %w3, align 4, !tbaa !8
  %87 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call151 = call i32 @getc_unlocked(ptr noundef %87)
  store i32 %call151, ptr %w2, align 4, !tbaa !8
  %88 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call152 = call i32 @getc_unlocked(ptr noundef %88)
  store i32 %call152, ptr %w1, align 4, !tbaa !8
  %89 = load i32, ptr %w1, align 4, !tbaa !8
  %cmp153 = icmp eq i32 %89, -1
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.else148
  store i32 -1, ptr %j, align 4, !tbaa !8
  br label %if.end163

if.else156:                                       ; preds = %if.else148
  %90 = load i32, ptr %w1, align 4, !tbaa !8
  %shl157 = shl i32 %90, 24
  %91 = load i32, ptr %w2, align 4, !tbaa !8
  %shl158 = shl i32 %91, 16
  %or159 = or i32 %shl157, %shl158
  %92 = load i32, ptr %w3, align 4, !tbaa !8
  %shl160 = shl i32 %92, 8
  %or161 = or i32 %or159, %shl160
  %93 = load i32, ptr %w4, align 4, !tbaa !8
  %or162 = or i32 %or161, %93
  store i32 %or162, ptr %j, align 4, !tbaa !8
  br label %if.end163

if.end163:                                        ; preds = %if.else156, %if.then155
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end147
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then133
  %94 = load i32, ptr %j, align 4, !tbaa !8
  %cmp166 = icmp eq i32 %94, -1
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end165
  call void @gt_abort(ptr noundef @.str.63)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end165
  %95 = load i32, ptr %j, align 4, !tbaa !8
  %cmp170 = icmp sgt i32 %95, 0
  br i1 %cmp170, label %if.then172, label %if.else202

if.then172:                                       ; preds = %if.end169
  %96 = load i64, ptr %vi, align 8, !tbaa !10
  %97 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen173 = getelementptr inbounds %struct.sparsegraph, ptr %97, i32 0, i32 8
  %98 = load i64, ptr %elen173, align 8, !tbaa !61
  %cmp174 = icmp eq i64 %96, %98
  br i1 %cmp174, label %if.then176, label %if.end199

if.then176:                                       ; preds = %if.then172
  %99 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen177 = getelementptr inbounds %struct.sparsegraph, ptr %99, i32 0, i32 8
  %100 = load i64, ptr %elen177, align 8, !tbaa !61
  %mul178 = mul i64 2, %100
  %101 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen179 = getelementptr inbounds %struct.sparsegraph, ptr %101, i32 0, i32 8
  %102 = load i64, ptr %elen179, align 8, !tbaa !61
  %cmp180 = icmp ugt i64 %mul178, %102
  br i1 %cmp180, label %if.then182, label %if.end197

if.then182:                                       ; preds = %if.then176
  %103 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e183 = getelementptr inbounds %struct.sparsegraph, ptr %103, i32 0, i32 4
  %104 = load ptr, ptr %e183, align 8, !tbaa !62
  %105 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen184 = getelementptr inbounds %struct.sparsegraph, ptr %105, i32 0, i32 8
  %106 = load i64, ptr %elen184, align 8, !tbaa !61
  %mul185 = mul i64 2, %106
  %mul186 = mul i64 %mul185, 4
  %call187 = call ptr @realloc(ptr noundef %104, i64 noundef %mul186) #17
  %107 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e188 = getelementptr inbounds %struct.sparsegraph, ptr %107, i32 0, i32 4
  store ptr %call187, ptr %e188, align 8, !tbaa !62
  %cmp189 = icmp eq ptr %call187, null
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %if.then182
  call void @gt_abort(ptr noundef @.str.62)
  br label %if.end196

if.else192:                                       ; preds = %if.then182
  %108 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen193 = getelementptr inbounds %struct.sparsegraph, ptr %108, i32 0, i32 8
  %109 = load i64, ptr %elen193, align 8, !tbaa !61
  %mul194 = mul i64 2, %109
  %110 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %elen195 = getelementptr inbounds %struct.sparsegraph, ptr %110, i32 0, i32 8
  store i64 %mul194, ptr %elen195, align 8, !tbaa !61
  br label %if.end196

if.end196:                                        ; preds = %if.else192, %if.then191
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.then176
  %111 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %e198 = getelementptr inbounds %struct.sparsegraph, ptr %111, i32 0, i32 4
  %112 = load ptr, ptr %e198, align 8, !tbaa !62
  store ptr %112, ptr %e, align 8, !tbaa !4
  br label %if.end199

if.end199:                                        ; preds = %if.end197, %if.then172
  %113 = load i32, ptr %j, align 4, !tbaa !8
  %sub = sub nsw i32 %113, 1
  %114 = load ptr, ptr %e, align 8, !tbaa !4
  %115 = load i64, ptr %vi, align 8, !tbaa !10
  %inc = add i64 %115, 1
  store i64 %inc, ptr %vi, align 8, !tbaa !10
  %arrayidx200 = getelementptr inbounds i32, ptr %114, i64 %115
  store i32 %sub, ptr %arrayidx200, align 4, !tbaa !8
  %116 = load i32, ptr %di, align 4, !tbaa !8
  %inc201 = add nsw i32 %116, 1
  store i32 %inc201, ptr %di, align 4, !tbaa !8
  br label %if.end210

if.else202:                                       ; preds = %if.end169
  %117 = load i32, ptr %j, align 4, !tbaa !8
  %cmp203 = icmp eq i32 %117, 0
  br i1 %cmp203, label %if.then205, label %if.else208

if.then205:                                       ; preds = %if.else202
  %118 = load i32, ptr %di, align 4, !tbaa !8
  %119 = load ptr, ptr %d, align 8, !tbaa !4
  %120 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom206 = sext i32 %120 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %119, i64 %idxprom206
  store i32 %118, ptr %arrayidx207, align 4, !tbaa !8
  br label %if.end209

if.else208:                                       ; preds = %if.else202
  call void @gt_abort(ptr noundef @.str.64)
  br label %if.end209

if.end209:                                        ; preds = %if.else208, %if.then205
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end199
  br label %do.cond211

do.cond211:                                       ; preds = %if.end210
  %121 = load i32, ptr %j, align 4, !tbaa !8
  %cmp212 = icmp ne i32 %121, 0
  br i1 %cmp212, label %do.body130, label %do.end214, !llvm.loop !117

do.end214:                                        ; preds = %do.cond211
  br label %for.inc

for.inc:                                          ; preds = %do.end214
  %122 = load i32, ptr %i, align 4, !tbaa !8
  %inc215 = add nsw i32 %122, 1
  store i32 %inc215, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  %123 = load i32, ptr %n, align 4, !tbaa !8
  %124 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %124, i32 0, i32 2
  store i32 %123, ptr %nv, align 8, !tbaa !49
  %125 = load i64, ptr %vi, align 8, !tbaa !10
  %126 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %126, i32 0, i32 0
  store i64 %125, ptr %nde, align 8, !tbaa !60
  %127 = load ptr, ptr %sg.addr, align 8, !tbaa !4
  store ptr %127, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %di) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %w1) #12
  %128 = load ptr, ptr %retval, align 8
  ret ptr %128
}

; Function Attrs: nounwind uwtable
define void @writelast(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load ptr, ptr @readg_line, align 8, !tbaa !4
  call void @writeline(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @longvalue(ptr noundef %ps, ptr noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %neg = alloca i32, align 4
  %pos = alloca i32, align 4
  %sofar = alloca i64, align 8
  %last = alloca i64, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %sofar) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  store i32 0, ptr %neg, align 4, !tbaa !8
  store i32 0, ptr %pos, align 4, !tbaa !8
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %neg, align 4, !tbaa !8
  %4 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %6 = load i8, ptr %5, align 1, !tbaa !12
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 43
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %pos, align 4, !tbaa !8
  %7 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr6, ptr %s, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !12
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp slt i32 %conv8, 48
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load ptr, ptr %s, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp sgt i32 %conv11, 57
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  %12 = load ptr, ptr %s, align 8, !tbaa !4
  %13 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %12, ptr %13, align 8, !tbaa !4
  %14 = load i32, ptr %pos, align 4, !tbaa !8
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then14
  %15 = load i32, ptr %neg, align 4, !tbaa !8
  %tobool15 = icmp ne i32 %15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then14
  %16 = phi i1 [ true, %if.then14 ], [ %tobool15, %lor.rhs ]
  %17 = zext i1 %16 to i64
  %cond = select i1 %16, i32 3, i32 1
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  store i64 0, ptr %sofar, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %18 = load ptr, ptr %s, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp sge i32 %conv17, 48
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load ptr, ptr %s, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp sle i32 %conv20, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %cmp21, %land.rhs ]
  br i1 %22, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %23 = load i64, ptr %sofar, align 8, !tbaa !10
  store i64 %23, ptr %last, align 8, !tbaa !10
  %24 = load i64, ptr %sofar, align 8, !tbaa !10
  %mul = mul nsw i64 %24, 10
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %26 = load i8, ptr %25, align 1, !tbaa !12
  %conv23 = sext i8 %26 to i32
  %sub = sub nsw i32 %conv23, 48
  %conv24 = sext i32 %sub to i64
  %add = add nsw i64 %mul, %conv24
  store i64 %add, ptr %sofar, align 8, !tbaa !10
  %27 = load i64, ptr %sofar, align 8, !tbaa !10
  %28 = load i64, ptr %last, align 8, !tbaa !10
  %cmp25 = icmp slt i64 %27, %28
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %for.body
  %29 = load i64, ptr %sofar, align 8, !tbaa !10
  %cmp28 = icmp sgt i64 %29, 2000000000
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false27, %for.body
  %30 = load ptr, ptr %s, align 8, !tbaa !4
  %31 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %30, ptr %31, align 8, !tbaa !4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false27
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %32 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr32 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr32, ptr %s, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !119

for.end:                                          ; preds = %land.end
  %33 = load ptr, ptr %s, align 8, !tbaa !4
  %34 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %33, ptr %34, align 8, !tbaa !4
  %35 = load i32, ptr %neg, align 4, !tbaa !8
  %tobool33 = icmp ne i32 %35, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %36 = load i64, ptr %sofar, align 8, !tbaa !10
  %sub34 = sub nsw i64 0, %36
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %37 = load i64, ptr %sofar, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond35 = phi i64 [ %sub34, %cond.true ], [ %37, %cond.false ]
  %38 = load ptr, ptr %l.addr, align 8, !tbaa !4
  store i64 %cond35, ptr %38, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then30, %lor.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %sofar) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg) #12
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @doublevalue(ptr noundef %ps, ptr noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %neg = alloca i32, align 4
  %pos = alloca i32, align 4
  %sofar = alloca double, align 8
  %weight = alloca double, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %sofar) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %weight) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  store i32 0, ptr %neg, align 4, !tbaa !8
  store i32 0, ptr %pos, align 4, !tbaa !8
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %neg, align 4, !tbaa !8
  %4 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %6 = load i8, ptr %5, align 1, !tbaa !12
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 43
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %pos, align 4, !tbaa !8
  %7 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr6, ptr %s, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !12
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp slt i32 %conv8, 48
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load ptr, ptr %s, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp sgt i32 %conv11, 57
  br i1 %cmp12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end7
  %12 = load ptr, ptr %s, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !12
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp ne i32 %conv14, 46
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %s, align 8, !tbaa !4
  %15 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %14, ptr %15, align 8, !tbaa !4
  %16 = load i32, ptr %pos, align 4, !tbaa !8
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then17
  %17 = load i32, ptr %neg, align 4, !tbaa !8
  %tobool18 = icmp ne i32 %17, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then17
  %18 = phi i1 [ true, %if.then17 ], [ %tobool18, %lor.rhs ]
  %19 = zext i1 %18 to i64
  %cond = select i1 %18, i32 3, i32 1
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store double 0.000000e+00, ptr %sofar, align 8, !tbaa !120
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %20 = load ptr, ptr %s, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp sge i32 %conv20, 48
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %22 = load ptr, ptr %s, align 8, !tbaa !4
  %23 = load i8, ptr %22, align 1, !tbaa !12
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp sle i32 %conv23, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %cmp24, %land.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %25 = load double, ptr %sofar, align 8, !tbaa !120
  %26 = load ptr, ptr %s, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !12
  %conv26 = sext i8 %27 to i32
  %sub = sub nsw i32 %conv26, 48
  %conv27 = sitofp i32 %sub to double
  %28 = call double @llvm.fmuladd.f64(double %25, double 1.000000e+01, double %conv27)
  store double %28, ptr %sofar, align 8, !tbaa !120
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr28 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr28, ptr %s, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !122

for.end:                                          ; preds = %land.end
  %30 = load ptr, ptr %s, align 8, !tbaa !4
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %conv29 = sext i8 %31 to i32
  %cmp30 = icmp eq i32 %conv29, 46
  br i1 %cmp30, label %if.then32, label %if.end50

if.then32:                                        ; preds = %for.end
  store double 1.000000e+00, ptr %weight, align 8, !tbaa !120
  %32 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr33 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr33, ptr %s, align 8, !tbaa !4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc47, %if.then32
  %33 = load ptr, ptr %s, align 8, !tbaa !4
  %34 = load i8, ptr %33, align 1, !tbaa !12
  %conv35 = sext i8 %34 to i32
  %cmp36 = icmp sge i32 %conv35, 48
  br i1 %cmp36, label %land.rhs38, label %land.end42

land.rhs38:                                       ; preds = %for.cond34
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  %36 = load i8, ptr %35, align 1, !tbaa !12
  %conv39 = sext i8 %36 to i32
  %cmp40 = icmp sle i32 %conv39, 57
  br label %land.end42

land.end42:                                       ; preds = %land.rhs38, %for.cond34
  %37 = phi i1 [ false, %for.cond34 ], [ %cmp40, %land.rhs38 ]
  br i1 %37, label %for.body43, label %for.end49

for.body43:                                       ; preds = %land.end42
  %38 = load double, ptr %weight, align 8, !tbaa !120
  %div = fdiv double %38, 1.000000e+01
  store double %div, ptr %weight, align 8, !tbaa !120
  %39 = load double, ptr %weight, align 8, !tbaa !120
  %40 = load ptr, ptr %s, align 8, !tbaa !4
  %41 = load i8, ptr %40, align 1, !tbaa !12
  %conv44 = sext i8 %41 to i32
  %sub45 = sub nsw i32 %conv44, 48
  %conv46 = sitofp i32 %sub45 to double
  %42 = load double, ptr %sofar, align 8, !tbaa !120
  %43 = call double @llvm.fmuladd.f64(double %39, double %conv46, double %42)
  store double %43, ptr %sofar, align 8, !tbaa !120
  br label %for.inc47

for.inc47:                                        ; preds = %for.body43
  %44 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr48 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr48, ptr %s, align 8, !tbaa !4
  br label %for.cond34, !llvm.loop !123

for.end49:                                        ; preds = %land.end42
  br label %if.end50

if.end50:                                         ; preds = %for.end49, %for.end
  %45 = load ptr, ptr %s, align 8, !tbaa !4
  %46 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %45, ptr %46, align 8, !tbaa !4
  %47 = load i32, ptr %neg, align 4, !tbaa !8
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end50
  %48 = load double, ptr %sofar, align 8, !tbaa !120
  %fneg = fneg double %48
  br label %cond.end

cond.false:                                       ; preds = %if.end50
  %49 = load double, ptr %sofar, align 8, !tbaa !120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond52 = phi double [ %fneg, %cond.true ], [ %49, %cond.false ]
  %50 = load ptr, ptr %l.addr, align 8, !tbaa !4
  store double %cond52, ptr %50, align 8, !tbaa !120
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %weight) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %sofar) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg) #12
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define void @arg_long(ptr noundef %ps, ptr noundef %val, ptr noundef %id) #0 {
entry:
  %ps.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call = call i32 @longvalue(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %code, align 4, !tbaa !8
  %2 = load i32, ptr %code, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %code, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %5 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.65, ptr noundef %5)
  call void @gt_abort(ptr noundef null)
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, ptr %code, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %8 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.66, ptr noundef %8)
  call void @gt_abort(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @arg_int(ptr noundef %ps, ptr noundef %val, ptr noundef %id) #0 {
entry:
  %ps.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  %longval = alloca i64, align 8
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %longval) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %call = call i32 @longvalue(ptr noundef %0, ptr noundef %longval)
  store i32 %call, ptr %code, align 4, !tbaa !8
  %1 = load i64, ptr %longval, align 8, !tbaa !10
  %conv = trunc i64 %1 to i32
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i32 %conv, ptr %2, align 4, !tbaa !8
  %3 = load i32, ptr %code, align 4, !tbaa !8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %code, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %6 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.65, ptr noundef %6)
  call void @gt_abort(ptr noundef null)
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i32, ptr %code, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %if.then11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.else
  %8 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %conv8 = sext i32 %9 to i64
  %10 = load i64, ptr %longval, align 8, !tbaa !10
  %cmp9 = icmp ne i64 %conv8, %10
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %lor.lhs.false7, %if.else
  %11 = load ptr, ptr @stderr, align 8, !tbaa !4
  %12 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.66, ptr noundef %12)
  call void @gt_abort(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then11, %lor.lhs.false7
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %longval) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @arg_double(ptr noundef %ps, ptr noundef %val, ptr noundef %id) #0 {
entry:
  %ps.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call = call i32 @doublevalue(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %code, align 4, !tbaa !8
  %2 = load i32, ptr %code, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %code, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %5 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.65, ptr noundef %5)
  call void @gt_abort(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @strhaschar(ptr noundef %s, i32 noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %c, ptr %c.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom2
  %5 = load i8, ptr %arrayidx3, align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %6 = load i32, ptr %c.addr, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %conv4, %6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @arg_range(ptr noundef %ps, ptr noundef %sep, ptr noundef %val1, ptr noundef %val2, ptr noundef %id) #0 {
entry:
  %ps.addr = alloca ptr, align 8
  %sep.addr = alloca ptr, align 8
  %val1.addr = alloca ptr, align 8
  %val2.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %sep, ptr %sep.addr, align 8, !tbaa !4
  store ptr %val1, ptr %val1.addr, align 8, !tbaa !4
  store ptr %val2, ptr %val2.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %val1.addr, align 8, !tbaa !4
  %call = call i32 @longvalue(ptr noundef %s, ptr noundef %2)
  store i32 %call, ptr %code, align 4, !tbaa !8
  %3 = load i32, ptr %code, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %code, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %6 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.67, ptr noundef %6)
  call void @gt_abort(ptr noundef null)
  br label %if.end7

if.else:                                          ; preds = %if.then
  %7 = load i32, ptr %code, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr @stderr, align 8, !tbaa !4
  %9 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.68, ptr noundef %9)
  call void @gt_abort(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end17

if.else8:                                         ; preds = %entry
  %10 = load ptr, ptr %s, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %conv = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else8
  %12 = load ptr, ptr %sep.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %s, align 8, !tbaa !4
  %14 = load i8, ptr %13, align 1, !tbaa !12
  %conv11 = sext i8 %14 to i32
  %call12 = call i32 @strhaschar(ptr noundef %12, i32 noundef %conv11)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.else15, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.else8
  %15 = load ptr, ptr @stderr, align 8, !tbaa !4
  %16 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.69, ptr noundef %16)
  call void @gt_abort(ptr noundef null)
  br label %if.end16

if.else15:                                        ; preds = %lor.lhs.false
  %17 = load ptr, ptr %val1.addr, align 8, !tbaa !4
  store i64 -2000000031, ptr %17, align 8, !tbaa !10
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end7
  %18 = load ptr, ptr %s, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else42

land.lhs.true:                                    ; preds = %if.end17
  %20 = load ptr, ptr %sep.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %s, align 8, !tbaa !4
  %22 = load i8, ptr %21, align 1, !tbaa !12
  %conv21 = sext i8 %22 to i32
  %call22 = call i32 @strhaschar(ptr noundef %20, i32 noundef %conv21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else42

if.then24:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !4
  %24 = load ptr, ptr %val2.addr, align 8, !tbaa !4
  %call25 = call i32 @longvalue(ptr noundef %s, ptr noundef %24)
  store i32 %call25, ptr %code, align 4, !tbaa !8
  %25 = load i32, ptr %code, align 4, !tbaa !8
  %cmp26 = icmp eq i32 %25, 1
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then24
  %26 = load ptr, ptr %val2.addr, align 8, !tbaa !4
  store i64 2000000031, ptr %26, align 8, !tbaa !10
  br label %if.end41

if.else29:                                        ; preds = %if.then24
  %27 = load i32, ptr %code, align 4, !tbaa !8
  %cmp30 = icmp eq i32 %27, 2
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else29
  %28 = load ptr, ptr @stderr, align 8, !tbaa !4
  %29 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.68, ptr noundef %29)
  call void @gt_abort(ptr noundef null)
  br label %if.end40

if.else34:                                        ; preds = %if.else29
  %30 = load i32, ptr %code, align 4, !tbaa !8
  %cmp35 = icmp eq i32 %30, 3
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else34
  %31 = load ptr, ptr @stderr, align 8, !tbaa !4
  %32 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.70, ptr noundef %32)
  call void @gt_abort(ptr noundef null)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.else34
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then28
  br label %if.end43

if.else42:                                        ; preds = %land.lhs.true, %if.end17
  %33 = load ptr, ptr %val1.addr, align 8, !tbaa !4
  %34 = load i64, ptr %33, align 8, !tbaa !10
  %35 = load ptr, ptr %val2.addr, align 8, !tbaa !4
  store i64 %34, ptr %35, align 8, !tbaa !10
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  %36 = load ptr, ptr %s, align 8, !tbaa !4
  %37 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %36, ptr %37, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @arg_sequence(ptr noundef %ps, ptr noundef %sep, ptr noundef %val, i32 noundef %maxvals, ptr noundef %numvals, ptr noundef %id) #0 {
entry:
  %ps.addr = alloca ptr, align 8
  %sep.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %maxvals.addr = alloca i32, align 4
  %numvals.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  %ival = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %sep, ptr %sep.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i32 %maxvals, ptr %maxvals.addr, align 4, !tbaa !8
  store ptr %numvals, ptr %numvals.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr %ival) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  store i32 0, ptr %ival, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ival, align 4, !tbaa !8
  %3 = load i32, ptr %maxvals.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %5 = load i32, ptr %ival, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom
  %call = call i32 @longvalue(ptr noundef %s, ptr noundef %arrayidx)
  store i32 %call, ptr %code, align 4, !tbaa !8
  %6 = load i32, ptr %code, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %6, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %8 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.71, ptr noundef %8)
  call void @gt_abort(ptr noundef null)
  br label %if.end11

if.else:                                          ; preds = %for.body
  %9 = load i32, ptr %code, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %9, 2
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr @stderr, align 8, !tbaa !4
  %11 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.68, ptr noundef %11)
  call void @gt_abort(ptr noundef null)
  br label %if.end10

if.else6:                                         ; preds = %if.else
  %12 = load i32, ptr %code, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else6
  %13 = load ptr, ptr @stderr, align 8, !tbaa !4
  %14 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.72, ptr noundef %14)
  call void @gt_abort(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %15 = load ptr, ptr %s, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %conv = sext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %17 = load ptr, ptr %sep.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %s, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv14 = sext i8 %19 to i32
  %call15 = call i32 @strhaschar(ptr noundef %17, i32 noundef %conv14)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end17, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  %20 = load i32, ptr %ival, align 4, !tbaa !8
  %add = add nsw i32 %20, 1
  %21 = load ptr, ptr %numvals.addr, align 8, !tbaa !4
  store i32 %add, ptr %21, align 4, !tbaa !8
  %22 = load ptr, ptr %s, align 8, !tbaa !4
  %23 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %22, ptr %23, align 8, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %25 = load i32, ptr %ival, align 4, !tbaa !8
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %ival, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !125

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr @stderr, align 8, !tbaa !4
  %27 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.73, ptr noundef %27)
  call void @gt_abort(ptr noundef null)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ival) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @arg_doublerange(ptr noundef %ps, ptr noundef %sep, ptr noundef %val1, ptr noundef %val2, ptr noundef %id) #0 {
entry:
  %ps.addr = alloca ptr, align 8
  %sep.addr = alloca ptr, align 8
  %val1.addr = alloca ptr, align 8
  %val2.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %code = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %sep, ptr %sep.addr, align 8, !tbaa !4
  store ptr %val1, ptr %val1.addr, align 8, !tbaa !4
  store ptr %val2, ptr %val2.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12
  %0 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %val1.addr, align 8, !tbaa !4
  %call = call i32 @doublevalue(ptr noundef %s, ptr noundef %2)
  store i32 %call, ptr %code, align 4, !tbaa !8
  %3 = load i32, ptr %code, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %code, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %6 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.67, ptr noundef %6)
  call void @gt_abort(ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end12

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %s, align 8, !tbaa !4
  %8 = load i8, ptr %7, align 1, !tbaa !12
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load ptr, ptr %sep.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %s, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %conv6 = sext i8 %11 to i32
  %call7 = call i32 @strhaschar(ptr noundef %9, i32 noundef %conv6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.else10, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  %12 = load ptr, ptr @stderr, align 8, !tbaa !4
  %13 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.69, ptr noundef %13)
  call void @gt_abort(ptr noundef null)
  br label %if.end11

if.else10:                                        ; preds = %lor.lhs.false
  %14 = load ptr, ptr %val1.addr, align 8, !tbaa !4
  store double 0xC1DDCD6507C00000, ptr %14, align 8, !tbaa !120
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %15 = load ptr, ptr %s, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %if.end12
  %17 = load ptr, ptr %sep.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %s, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !12
  %conv16 = sext i8 %19 to i32
  %call17 = call i32 @strhaschar(ptr noundef %17, i32 noundef %conv16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else31

if.then19:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !4
  %21 = load ptr, ptr %val2.addr, align 8, !tbaa !4
  %call20 = call i32 @doublevalue(ptr noundef %s, ptr noundef %21)
  store i32 %call20, ptr %code, align 4, !tbaa !8
  %22 = load i32, ptr %code, align 4, !tbaa !8
  %cmp21 = icmp eq i32 %22, 1
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then19
  %23 = load ptr, ptr %val2.addr, align 8, !tbaa !4
  store double 0x41DDCD6507C00000, ptr %23, align 8, !tbaa !120
  br label %if.end30

if.else24:                                        ; preds = %if.then19
  %24 = load i32, ptr %code, align 4, !tbaa !8
  %cmp25 = icmp eq i32 %24, 3
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else24
  %25 = load ptr, ptr @stderr, align 8, !tbaa !4
  %26 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.70, ptr noundef %26)
  call void @gt_abort(ptr noundef null)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then23
  br label %if.end32

if.else31:                                        ; preds = %land.lhs.true, %if.end12
  %27 = load ptr, ptr %val1.addr, align 8, !tbaa !4
  %28 = load double, ptr %27, align 8, !tbaa !120
  %29 = load ptr, ptr %val2.addr, align 8, !tbaa !4
  store double %28, ptr %29, align 8, !tbaa !120
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.end30
  %30 = load ptr, ptr %s, align 8, !tbaa !4
  %31 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  store ptr %30, ptr %31, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @writerange(ptr noundef %f, i32 noundef %c, i64 noundef %lo, i64 noundef %hi) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store i32 %c, ptr %c.addr, align 4, !tbaa !8
  store i64 %lo, ptr %lo.addr, align 8, !tbaa !10
  store i64 %hi, ptr %hi.addr, align 8, !tbaa !10
  %0 = load i32, ptr %c.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %2 = load i32, ptr %c.addr, align 4, !tbaa !8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.74, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %lo.addr, align 8, !tbaa !10
  %cmp1 = icmp ne i64 %3, -2000000031
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %5 = load i64, ptr %lo.addr, align 8, !tbaa !10
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.75, i64 noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load i64, ptr %lo.addr, align 8, !tbaa !10
  %7 = load i64, ptr %hi.addr, align 8, !tbaa !10
  %cmp5 = icmp ne i64 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.76)
  %9 = load i64, ptr %hi.addr, align 8, !tbaa !10
  %cmp8 = icmp ne i64 %9, 2000000031
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %10 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %11 = load i64, ptr %hi.addr, align 8, !tbaa !10
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.75, i64 noundef %11)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end4
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

declare void @perror(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #10

; Function Attrs: nounwind uwtable
define ptr @stringcopy(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %scopy = alloca ptr, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %scopy) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12
  store i64 0, ptr %len, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i64, ptr %len, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, ptr %len, align 8, !tbaa !10
  %inc = add i64 %3, 1
  store i64 %inc, ptr %len, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !126

for.end:                                          ; preds = %for.cond
  %4 = load i64, ptr %len, align 8, !tbaa !10
  %add = add i64 %4, 1
  %mul = mul i64 %add, 1
  %call = call noalias ptr @malloc(i64 noundef %mul) #16
  store ptr %call, ptr %scopy, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @gt_abort(ptr noundef @.str.79)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %if.end
  %5 = load i64, ptr %i, align 8, !tbaa !10
  %6 = load i64, ptr %len, align 8, !tbaa !10
  %cmp5 = icmp ule i64 %5, %6
  br i1 %cmp5, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond4
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %8 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx8, align 1, !tbaa !12
  %10 = load ptr, ptr %scopy, align 8, !tbaa !4
  %11 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %11
  store i8 %9, ptr %arrayidx9, align 1, !tbaa !12
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %12 = load i64, ptr %i, align 8, !tbaa !10
  %inc11 = add i64 %12, 1
  store i64 %inc11, ptr %i, align 8, !tbaa !10
  br label %for.cond4, !llvm.loop !127

for.end12:                                        ; preds = %for.cond4
  %13 = load ptr, ptr %scopy, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %scopy) #12
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define void @gtools_check(i32 noundef %wordsize, i32 noundef %m, i32 noundef %n, i32 noundef %version) #0 {
entry:
  %wordsize.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %version.addr = alloca i32, align 4
  store i32 %wordsize, ptr %wordsize.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  store i32 %version, ptr %version.addr, align 4, !tbaa !8
  %0 = load i32, ptr %wordsize.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.80)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.81)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp5 = icmp sgt i32 %4, 32
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.82)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end8:                                          ; preds = %if.end4
  %6 = load i32, ptr %version.addr, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %6, 26040
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.83)
  call void @exit(i32 noundef 1) #15
  unreachable

if.end12:                                         ; preds = %if.end8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

declare i32 @__uflow(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = !{!19, !5, i64 8}
!19 = !{!"_IO_FILE", !9, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !11, i64 120, !20, i64 128, !6, i64 130, !6, i64 131, !5, i64 136, !11, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !11, i64 184, !9, i64 192, !6, i64 196}
!20 = !{!"short", !6, i64 0}
!21 = !{!19, !5, i64 16}
!22 = distinct !{!22, !14, !15}
!23 = distinct !{!23, !14, !15}
!24 = distinct !{!24, !14, !15}
!25 = distinct !{!25, !14, !15}
!26 = distinct !{!26, !14, !15}
!27 = distinct !{!27, !14, !15}
!28 = distinct !{!28, !14, !15}
!29 = distinct !{!29, !14, !15}
!30 = distinct !{!30, !14, !15}
!31 = distinct !{!31, !14, !15}
!32 = distinct !{!32, !14, !15}
!33 = distinct !{!33, !14, !15}
!34 = distinct !{!34, !14, !15}
!35 = distinct !{!35, !14, !15}
!36 = distinct !{!36, !14, !15}
!37 = distinct !{!37, !14, !15}
!38 = distinct !{!38, !14, !15}
!39 = distinct !{!39, !14, !15}
!40 = distinct !{!40, !14, !15}
!41 = distinct !{!41, !14, !15}
!42 = distinct !{!42, !14, !15}
!43 = distinct !{!43, !14, !15}
!44 = distinct !{!44, !14, !15}
!45 = distinct !{!45, !14, !15}
!46 = distinct !{!46, !14, !15}
!47 = distinct !{!47, !14, !15}
!48 = distinct !{!48, !14, !15}
!49 = !{!50, !9, i64 16}
!50 = !{!"", !11, i64 0, !5, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!51 = !{!50, !11, i64 48}
!52 = !{!50, !5, i64 8}
!53 = !{!50, !11, i64 56}
!54 = !{!50, !5, i64 24}
!55 = distinct !{!55, !14, !15}
!56 = distinct !{!56, !14, !15}
!57 = distinct !{!57, !14, !15}
!58 = distinct !{!58, !14, !15}
!59 = distinct !{!59, !14, !15}
!60 = !{!50, !11, i64 0}
!61 = !{!50, !11, i64 64}
!62 = !{!50, !5, i64 32}
!63 = distinct !{!63, !14, !15}
!64 = distinct !{!64, !14, !15}
!65 = distinct !{!65, !14, !15}
!66 = distinct !{!66, !14, !15}
!67 = distinct !{!67, !14, !15}
!68 = distinct !{!68, !14, !15}
!69 = distinct !{!69, !14, !15}
!70 = distinct !{!70, !14, !15}
!71 = distinct !{!71, !14, !15}
!72 = distinct !{!72, !14, !15}
!73 = distinct !{!73, !14, !15}
!74 = distinct !{!74, !14, !15}
!75 = distinct !{!75, !14, !15}
!76 = distinct !{!76, !14, !15}
!77 = distinct !{!77, !14, !15}
!78 = distinct !{!78, !14, !15}
!79 = !{!50, !5, i64 40}
!80 = !{!50, !11, i64 72}
!81 = distinct !{!81, !14, !15}
!82 = distinct !{!82, !14, !15}
!83 = distinct !{!83, !14, !15}
!84 = distinct !{!84, !14, !15}
!85 = distinct !{!85, !14, !15}
!86 = distinct !{!86, !14, !15}
!87 = distinct !{!87, !14, !15}
!88 = distinct !{!88, !14, !15}
!89 = distinct !{!89, !14, !15}
!90 = distinct !{!90, !14, !15}
!91 = distinct !{!91, !14, !15}
!92 = distinct !{!92, !14, !15}
!93 = distinct !{!93, !14, !15}
!94 = distinct !{!94, !14, !15}
!95 = distinct !{!95, !14, !15}
!96 = distinct !{!96, !14, !15}
!97 = distinct !{!97, !14, !15}
!98 = distinct !{!98, !14, !15}
!99 = distinct !{!99, !14, !15}
!100 = distinct !{!100, !14, !15}
!101 = distinct !{!101, !14, !15}
!102 = distinct !{!102, !14, !15}
!103 = distinct !{!103, !14, !15}
!104 = distinct !{!104, !14, !15}
!105 = distinct !{!105, !14, !15}
!106 = distinct !{!106, !14, !15}
!107 = distinct !{!107, !14, !15}
!108 = distinct !{!108, !14, !15}
!109 = distinct !{!109, !14, !15}
!110 = distinct !{!110, !14, !15}
!111 = distinct !{!111, !14, !15}
!112 = distinct !{!112, !14, !15}
!113 = distinct !{!113, !14, !15}
!114 = distinct !{!114, !14, !15}
!115 = distinct !{!115, !14, !15}
!116 = distinct !{!116, !14, !15}
!117 = distinct !{!117, !14, !15}
!118 = distinct !{!118, !14, !15}
!119 = distinct !{!119, !14, !15}
!120 = !{!121, !121, i64 0}
!121 = !{!"double", !6, i64 0}
!122 = distinct !{!122, !14, !15}
!123 = distinct !{!123, !14, !15}
!124 = distinct !{!124, !14, !15}
!125 = distinct !{!125, !14, !15}
!126 = distinct !{!126, !14, !15}
!127 = distinct !{!127, !14, !15}
