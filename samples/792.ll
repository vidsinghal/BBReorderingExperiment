; ModuleID = 'samples/792.bc'
source_filename = "misc/wgsim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kseq_t = type { %struct.kstring_t, %struct.kstring_t, %struct.kstring_t, %struct.kstring_t, i32, ptr }
%struct.kstring_t = type { i64, i64, ptr }
%struct.mutseq_t = type { i32, i32, ptr }
%struct.__kstream_t = type { i32, i32, i32, i64, ptr, ptr }

@nst_nt4_table = dso_local constant [256 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\04\01\04\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04\04\04\00\04\01\04\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", align 16, !dbg !0
@ran_normal.iset = internal global i32 0, align 4, !dbg !92
@ran_normal.gset = internal global double 0.000000e+00, align 8, !dbg !102
@INDEL_EXTEND = internal global double 3.000000e-01, align 8, !dbg !200
@MUT_RATE = internal global double 1.000000e-03, align 8, !dbg !202
@INDEL_FRAC = internal global double 1.500000e-01, align 8, !dbg !204
@mutmsk = internal global i16 -4096, align 2, !dbg !206
@.str = private unnamed_addr constant [15 x i8] c"%s\09%d\09%c\09%c\09-\0A\00", align 1, !dbg !104
@.str.1 = private unnamed_addr constant [6 x i8] c"ACGTN\00", align 1, !dbg !109
@.str.2 = private unnamed_addr constant [7 x i8] c"%s\09%d\09\00", align 1, !dbg !114
@.str.3 = private unnamed_addr constant [6 x i8] c"\09-\09-\0A\00", align 1, !dbg !119
@.str.4 = private unnamed_addr constant [9 x i8] c"%s\09%d\09-\09\00", align 1, !dbg !121
@.str.5 = private unnamed_addr constant [4 x i8] c"\09-\0A\00", align 1, !dbg !126
@.str.6 = private unnamed_addr constant [15 x i8] c"%s\09%d\09%c\09%c\09+\0A\00", align 1, !dbg !131
@.str.7 = private unnamed_addr constant [17 x i8] c"XACMGRSVTWYHKDBN\00", align 1, !dbg !133
@.str.8 = private unnamed_addr constant [4 x i8] c"\09+\0A\00", align 1, !dbg !138
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !140
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"[wgsim] can't open '%s': %s\0A\00", align 1, !dbg !145
@ERR_RATE = internal global double 2.000000e-02, align 8, !dbg !208
@.str.11 = private unnamed_addr constant [64 x i8] c"[%s] calculating the total length of the reference sequence...\0A\00", align 1, !dbg !150
@__func__.wgsim_core = private unnamed_addr constant [11 x i8] c"wgsim_core\00", align 1, !dbg !155
@.str.12 = private unnamed_addr constant [39 x i8] c"[%s] %d sequences, total length: %llu\0A\00", align 1, !dbg !161
@.str.13 = private unnamed_addr constant [51 x i8] c"[%s] skip sequence '%s' as it is shorter than %d!\0A\00", align 1, !dbg !166
@MAX_N_RATIO = internal global double 5.000000e-02, align 8, !dbg !210
@.str.14 = private unnamed_addr constant [81 x i8] c"Failed to produce a sequence with insufficient Ns. Omitting some sequence-pairs\0A\00", align 1, !dbg !171
@.str.15 = private unnamed_addr constant [37 x i8] c"@%s_%u_%u_%d:%d:%d_%d:%d:%d_%llx/%d\0A\00", align 1, !dbg !176
@.str.16 = private unnamed_addr constant [7 x i8] c"\0A+\0A%s\0A\00", align 1, !dbg !181
@.str.17 = private unnamed_addr constant [24 x i8] c"e:d:s:N:1:2:r:R:hX:S:A:\00", align 1, !dbg !183
@optarg = external global ptr, align 8
@optind = external global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !188
@.str.19 = private unnamed_addr constant [25 x i8] c"[wgsim] file open error\0A\00", align 1, !dbg !190
@.str.20 = private unnamed_addr constant [19 x i8] c"[wgsim] seed = %d\0A\00", align 1, !dbg !195
@stdout = external global ptr, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !212
@.str.22 = private unnamed_addr constant [39 x i8] c"Program: wgsim (short read simulator)\0A\00", align 1, !dbg !214
@.str.23 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1, !dbg !216
@.str.24 = private unnamed_addr constant [5 x i8] c"1.13\00", align 1, !dbg !221
@.str.25 = private unnamed_addr constant [38 x i8] c"Contact: Heng Li <lh3@sanger.ac.uk>\0A\0A\00", align 1, !dbg !226
@.str.26 = private unnamed_addr constant [69 x i8] c"Usage:   wgsim [options] <in.ref.fa> <out.read1.fq> <out.read2.fq>\0A\0A\00", align 1, !dbg !231
@.str.27 = private unnamed_addr constant [47 x i8] c"Options: -e FLOAT      base error rate [%.3f]\0A\00", align 1, !dbg !236
@.str.28 = private unnamed_addr constant [66 x i8] c"         -d INT        outer distance between the two ends [500]\0A\00", align 1, !dbg !241
@.str.29 = private unnamed_addr constant [48 x i8] c"         -s INT        standard deviation [50]\0A\00", align 1, !dbg !246
@.str.30 = private unnamed_addr constant [55 x i8] c"         -N INT        number of read pairs [1000000]\0A\00", align 1, !dbg !251
@.str.31 = private unnamed_addr constant [54 x i8] c"         -1 INT        length of the first read [70]\0A\00", align 1, !dbg !256
@.str.32 = private unnamed_addr constant [55 x i8] c"         -2 INT        length of the second read [70]\0A\00", align 1, !dbg !261
@.str.33 = private unnamed_addr constant [49 x i8] c"         -r FLOAT      rate of mutations [%.4f]\0A\00", align 1, !dbg !263
@.str.34 = private unnamed_addr constant [50 x i8] c"         -R FLOAT      fraction of indels [%.2f]\0A\00", align 1, !dbg !268
@.str.35 = private unnamed_addr constant [64 x i8] c"         -X FLOAT      probability an indel is extended [%.2f]\0A\00", align 1, !dbg !273
@.str.36 = private unnamed_addr constant [76 x i8] c"         -S INT        seed for random generator [0, use the current time]\0A\00", align 1, !dbg !275
@.str.37 = private unnamed_addr constant [92 x i8] c"         -A FLOAT      discard if the fraction of ambiguous bases higher than FLOAT [%.2f]\0A\00", align 1, !dbg !280
@.str.38 = private unnamed_addr constant [39 x i8] c"         -h            haplotype mode\0A\00", align 1, !dbg !285

; Function Attrs: nounwind uwtable
define dso_local double @ran_normal() #0 !dbg !94 {
entry:
  %retval = alloca double, align 8
  %fac = alloca double, align 8
  %rsq = alloca double, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fac) #12, !dbg !298
  tail call void @llvm.dbg.declare(metadata ptr %fac, metadata !98, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsq) #12, !dbg !298
  tail call void @llvm.dbg.declare(metadata ptr %rsq, metadata !99, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #12, !dbg !298
  tail call void @llvm.dbg.declare(metadata ptr %v1, metadata !100, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #12, !dbg !298
  tail call void @llvm.dbg.declare(metadata ptr %v2, metadata !101, metadata !DIExpression()), !dbg !302
  %0 = load i32, ptr @ran_normal.iset, align 4, !dbg !303, !tbaa !305
  %cmp = icmp eq i32 %0, 0, !dbg !309
  br i1 %cmp, label %if.then, label %if.else, !dbg !310

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !311

do.body:                                          ; preds = %lor.end, %if.then
  %call = call double @drand48() #12, !dbg !313
  %1 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call, double -1.000000e+00), !dbg !315
  store double %1, ptr %v1, align 8, !dbg !316, !tbaa !317
  %call1 = call double @drand48() #12, !dbg !319
  %2 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call1, double -1.000000e+00), !dbg !320
  store double %2, ptr %v2, align 8, !dbg !321, !tbaa !317
  %3 = load double, ptr %v1, align 8, !dbg !322, !tbaa !317
  %4 = load double, ptr %v1, align 8, !dbg !323, !tbaa !317
  %5 = load double, ptr %v2, align 8, !dbg !324, !tbaa !317
  %6 = load double, ptr %v2, align 8, !dbg !325, !tbaa !317
  %mul2 = fmul double %5, %6, !dbg !326
  %7 = call double @llvm.fmuladd.f64(double %3, double %4, double %mul2), !dbg !327
  store double %7, ptr %rsq, align 8, !dbg !328, !tbaa !317
  br label %do.cond, !dbg !329

do.cond:                                          ; preds = %do.body
  %8 = load double, ptr %rsq, align 8, !dbg !330, !tbaa !317
  %cmp3 = fcmp oge double %8, 1.000000e+00, !dbg !331
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !332

lor.rhs:                                          ; preds = %do.cond
  %9 = load double, ptr %rsq, align 8, !dbg !333, !tbaa !317
  %cmp4 = fcmp oeq double %9, 0.000000e+00, !dbg !334
  br label %lor.end, !dbg !332

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %10 = phi i1 [ true, %do.cond ], [ %cmp4, %lor.rhs ]
  br i1 %10, label %do.body, label %do.end, !dbg !329, !llvm.loop !335

do.end:                                           ; preds = %lor.end
  %11 = load double, ptr %rsq, align 8, !dbg !338, !tbaa !317
  %call5 = call double @log(double noundef %11) #12, !dbg !339
  %mul = fmul double -2.000000e+00, %call5, !dbg !340
  %12 = load double, ptr %rsq, align 8, !dbg !341, !tbaa !317
  %div = fdiv double %mul, %12, !dbg !342
  %call6 = call double @sqrt(double noundef %div) #12, !dbg !343
  store double %call6, ptr %fac, align 8, !dbg !344, !tbaa !317
  %13 = load double, ptr %v1, align 8, !dbg !345, !tbaa !317
  %14 = load double, ptr %fac, align 8, !dbg !346, !tbaa !317
  %mul7 = fmul double %13, %14, !dbg !347
  store double %mul7, ptr @ran_normal.gset, align 8, !dbg !348, !tbaa !317
  store i32 1, ptr @ran_normal.iset, align 4, !dbg !349, !tbaa !305
  %15 = load double, ptr %v2, align 8, !dbg !350, !tbaa !317
  %16 = load double, ptr %fac, align 8, !dbg !351, !tbaa !317
  %mul8 = fmul double %15, %16, !dbg !352
  store double %mul8, ptr %retval, align 8, !dbg !353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !353

if.else:                                          ; preds = %entry
  store i32 0, ptr @ran_normal.iset, align 4, !dbg !354, !tbaa !305
  %17 = load double, ptr @ran_normal.gset, align 8, !dbg !356, !tbaa !317
  store double %17, ptr %retval, align 8, !dbg !357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !357

cleanup:                                          ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #12, !dbg !358
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #12, !dbg !358
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsq) #12, !dbg !358
  call void @llvm.lifetime.end.p0(i64 8, ptr %fac) #12, !dbg !358
  %18 = load double, ptr %retval, align 8, !dbg !358
  ret double %18, !dbg !358
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !359 double @drand48() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare !dbg !361 double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare !dbg !365 double @log(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @wgsim_mut_diref(ptr noundef %ks, i32 noundef %is_hap, ptr noundef %hap1, ptr noundef %hap2) #0 !dbg !366 {
entry:
  %ks.addr = alloca ptr, align 8
  %is_hap.addr = alloca i32, align 4
  %hap1.addr = alloca ptr, align 8
  %hap2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %deleting = alloca i32, align 4
  %ret = alloca [2 x ptr], align 16
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca double, align 8
  %num_ins = alloca i32, align 4
  %ins = alloca i32, align 4
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !379, metadata !DIExpression()), !dbg !403
  store i32 %is_hap, ptr %is_hap.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %is_hap.addr, metadata !380, metadata !DIExpression()), !dbg !404
  store ptr %hap1, ptr %hap1.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %hap1.addr, metadata !381, metadata !DIExpression()), !dbg !405
  store ptr %hap2, ptr %hap2.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %hap2.addr, metadata !382, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !407
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !383, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %deleting) #12, !dbg !407
  tail call void @llvm.dbg.declare(metadata ptr %deleting, metadata !384, metadata !DIExpression()), !dbg !409
  store i32 0, ptr %deleting, align 4, !dbg !409, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 16, ptr %ret) #12, !dbg !410
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !385, metadata !DIExpression()), !dbg !411
  %0 = load ptr, ptr %hap1.addr, align 8, !dbg !412, !tbaa !401
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !413
  store ptr %0, ptr %arrayidx, align 16, !dbg !414, !tbaa !401
  %1 = load ptr, ptr %hap2.addr, align 8, !dbg !415, !tbaa !401
  %arrayidx1 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !416
  store ptr %1, ptr %arrayidx1, align 8, !dbg !417, !tbaa !401
  %2 = load ptr, ptr %ks.addr, align 8, !dbg !418, !tbaa !401
  %seq = getelementptr inbounds %struct.kseq_t, ptr %2, i32 0, i32 2, !dbg !419
  %l = getelementptr inbounds %struct.kstring_t, ptr %seq, i32 0, i32 0, !dbg !420
  %3 = load i64, ptr %l, align 8, !dbg !420, !tbaa !421
  %conv = trunc i64 %3 to i32, !dbg !418
  %arrayidx2 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !425
  %4 = load ptr, ptr %arrayidx2, align 16, !dbg !425, !tbaa !401
  %l3 = getelementptr inbounds %struct.mutseq_t, ptr %4, i32 0, i32 0, !dbg !426
  store i32 %conv, ptr %l3, align 8, !dbg !427, !tbaa !428
  %5 = load ptr, ptr %ks.addr, align 8, !dbg !430, !tbaa !401
  %seq4 = getelementptr inbounds %struct.kseq_t, ptr %5, i32 0, i32 2, !dbg !431
  %l5 = getelementptr inbounds %struct.kstring_t, ptr %seq4, i32 0, i32 0, !dbg !432
  %6 = load i64, ptr %l5, align 8, !dbg !432, !tbaa !421
  %conv6 = trunc i64 %6 to i32, !dbg !430
  %arrayidx7 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !433
  %7 = load ptr, ptr %arrayidx7, align 8, !dbg !433, !tbaa !401
  %l8 = getelementptr inbounds %struct.mutseq_t, ptr %7, i32 0, i32 0, !dbg !434
  store i32 %conv6, ptr %l8, align 8, !dbg !435, !tbaa !428
  %8 = load ptr, ptr %ks.addr, align 8, !dbg !436, !tbaa !401
  %seq9 = getelementptr inbounds %struct.kseq_t, ptr %8, i32 0, i32 2, !dbg !437
  %m = getelementptr inbounds %struct.kstring_t, ptr %seq9, i32 0, i32 1, !dbg !438
  %9 = load i64, ptr %m, align 8, !dbg !438, !tbaa !439
  %conv10 = trunc i64 %9 to i32, !dbg !436
  %arrayidx11 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !440
  %10 = load ptr, ptr %arrayidx11, align 16, !dbg !440, !tbaa !401
  %m12 = getelementptr inbounds %struct.mutseq_t, ptr %10, i32 0, i32 1, !dbg !441
  store i32 %conv10, ptr %m12, align 4, !dbg !442, !tbaa !443
  %11 = load ptr, ptr %ks.addr, align 8, !dbg !444, !tbaa !401
  %seq13 = getelementptr inbounds %struct.kseq_t, ptr %11, i32 0, i32 2, !dbg !445
  %m14 = getelementptr inbounds %struct.kstring_t, ptr %seq13, i32 0, i32 1, !dbg !446
  %12 = load i64, ptr %m14, align 8, !dbg !446, !tbaa !439
  %conv15 = trunc i64 %12 to i32, !dbg !444
  %arrayidx16 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !447
  %13 = load ptr, ptr %arrayidx16, align 8, !dbg !447, !tbaa !401
  %m17 = getelementptr inbounds %struct.mutseq_t, ptr %13, i32 0, i32 1, !dbg !448
  store i32 %conv15, ptr %m17, align 4, !dbg !449, !tbaa !443
  %14 = load ptr, ptr %ks.addr, align 8, !dbg !450, !tbaa !401
  %seq18 = getelementptr inbounds %struct.kseq_t, ptr %14, i32 0, i32 2, !dbg !451
  %m19 = getelementptr inbounds %struct.kstring_t, ptr %seq18, i32 0, i32 1, !dbg !452
  %15 = load i64, ptr %m19, align 8, !dbg !452, !tbaa !439
  %call = call noalias ptr @calloc(i64 noundef %15, i64 noundef 2) #13, !dbg !453
  %arrayidx20 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !454
  %16 = load ptr, ptr %arrayidx20, align 16, !dbg !454, !tbaa !401
  %s = getelementptr inbounds %struct.mutseq_t, ptr %16, i32 0, i32 2, !dbg !455
  store ptr %call, ptr %s, align 8, !dbg !456, !tbaa !457
  %17 = load ptr, ptr %ks.addr, align 8, !dbg !458, !tbaa !401
  %seq21 = getelementptr inbounds %struct.kseq_t, ptr %17, i32 0, i32 2, !dbg !459
  %m22 = getelementptr inbounds %struct.kstring_t, ptr %seq21, i32 0, i32 1, !dbg !460
  %18 = load i64, ptr %m22, align 8, !dbg !460, !tbaa !439
  %call23 = call noalias ptr @calloc(i64 noundef %18, i64 noundef 2) #13, !dbg !461
  %arrayidx24 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !462
  %19 = load ptr, ptr %arrayidx24, align 8, !dbg !462, !tbaa !401
  %s25 = getelementptr inbounds %struct.mutseq_t, ptr %19, i32 0, i32 2, !dbg !463
  store ptr %call23, ptr %s25, align 8, !dbg !464, !tbaa !457
  store i32 0, ptr %i, align 4, !dbg !465, !tbaa !305
  br label %for.cond, !dbg !466

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, ptr %i, align 4, !dbg !467, !tbaa !305
  %conv26 = sext i32 %20 to i64, !dbg !467
  %21 = load ptr, ptr %ks.addr, align 8, !dbg !468, !tbaa !401
  %seq27 = getelementptr inbounds %struct.kseq_t, ptr %21, i32 0, i32 2, !dbg !469
  %l28 = getelementptr inbounds %struct.kstring_t, ptr %seq27, i32 0, i32 0, !dbg !470
  %22 = load i64, ptr %l28, align 8, !dbg !470, !tbaa !421
  %cmp = icmp ne i64 %conv26, %22, !dbg !471
  br i1 %cmp, label %for.body, label %for.end, !dbg !472

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !473
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !387, metadata !DIExpression()), !dbg !474
  %23 = load ptr, ptr %ks.addr, align 8, !dbg !475, !tbaa !401
  %seq30 = getelementptr inbounds %struct.kseq_t, ptr %23, i32 0, i32 2, !dbg !476
  %s31 = getelementptr inbounds %struct.kstring_t, ptr %seq30, i32 0, i32 2, !dbg !477
  %24 = load ptr, ptr %s31, align 8, !dbg !477, !tbaa !478
  %25 = load i32, ptr %i, align 4, !dbg !479, !tbaa !305
  %idxprom = sext i32 %25 to i64, !dbg !475
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 %idxprom, !dbg !475
  %26 = load i8, ptr %arrayidx32, align 1, !dbg !475, !tbaa !480
  %conv33 = sext i8 %26 to i32, !dbg !481
  %idxprom34 = sext i32 %conv33 to i64, !dbg !482
  %arrayidx35 = getelementptr inbounds [256 x i8], ptr @nst_nt4_table, i64 0, i64 %idxprom34, !dbg !482
  %27 = load i8, ptr %arrayidx35, align 1, !dbg !482, !tbaa !480
  %conv36 = zext i8 %27 to i16, !dbg !483
  %arrayidx37 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !484
  %28 = load ptr, ptr %arrayidx37, align 8, !dbg !484, !tbaa !401
  %s38 = getelementptr inbounds %struct.mutseq_t, ptr %28, i32 0, i32 2, !dbg !485
  %29 = load ptr, ptr %s38, align 8, !dbg !485, !tbaa !457
  %30 = load i32, ptr %i, align 4, !dbg !486, !tbaa !305
  %idxprom39 = sext i32 %30 to i64, !dbg !484
  %arrayidx40 = getelementptr inbounds i16, ptr %29, i64 %idxprom39, !dbg !484
  store i16 %conv36, ptr %arrayidx40, align 2, !dbg !487, !tbaa !488
  %arrayidx41 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !490
  %31 = load ptr, ptr %arrayidx41, align 16, !dbg !490, !tbaa !401
  %s42 = getelementptr inbounds %struct.mutseq_t, ptr %31, i32 0, i32 2, !dbg !491
  %32 = load ptr, ptr %s42, align 8, !dbg !491, !tbaa !457
  %33 = load i32, ptr %i, align 4, !dbg !492, !tbaa !305
  %idxprom43 = sext i32 %33 to i64, !dbg !490
  %arrayidx44 = getelementptr inbounds i16, ptr %32, i64 %idxprom43, !dbg !490
  store i16 %conv36, ptr %arrayidx44, align 2, !dbg !493, !tbaa !488
  %conv45 = zext i16 %conv36 to i32, !dbg !490
  store i32 %conv45, ptr %c, align 4, !dbg !494, !tbaa !305
  %34 = load i32, ptr %deleting, align 4, !dbg !495, !tbaa !305
  %tobool = icmp ne i32 %34, 0, !dbg !495
  br i1 %tobool, label %if.then, label %if.end70, !dbg !497

if.then:                                          ; preds = %for.body
  %call46 = call double @drand48() #12, !dbg !498
  %35 = load double, ptr @INDEL_EXTEND, align 8, !dbg !501, !tbaa !317
  %cmp47 = fcmp olt double %call46, %35, !dbg !502
  br i1 %cmp47, label %if.then49, label %if.else, !dbg !503

if.then49:                                        ; preds = %if.then
  %36 = load i32, ptr %deleting, align 4, !dbg !504, !tbaa !305
  %and = and i32 %36, 1, !dbg !507
  %tobool50 = icmp ne i32 %and, 0, !dbg !507
  br i1 %tobool50, label %if.then51, label %if.end, !dbg !508

if.then51:                                        ; preds = %if.then49
  %arrayidx52 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !509
  %37 = load ptr, ptr %arrayidx52, align 16, !dbg !509, !tbaa !401
  %s53 = getelementptr inbounds %struct.mutseq_t, ptr %37, i32 0, i32 2, !dbg !510
  %38 = load ptr, ptr %s53, align 8, !dbg !510, !tbaa !457
  %39 = load i32, ptr %i, align 4, !dbg !511, !tbaa !305
  %idxprom54 = sext i32 %39 to i64, !dbg !509
  %arrayidx55 = getelementptr inbounds i16, ptr %38, i64 %idxprom54, !dbg !509
  %40 = load i16, ptr %arrayidx55, align 2, !dbg !512, !tbaa !488
  %conv56 = zext i16 %40 to i32, !dbg !512
  %or = or i32 %conv56, 61440, !dbg !512
  %conv57 = trunc i32 %or to i16, !dbg !512
  store i16 %conv57, ptr %arrayidx55, align 2, !dbg !512, !tbaa !488
  br label %if.end, !dbg !509

if.end:                                           ; preds = %if.then51, %if.then49
  %41 = load i32, ptr %deleting, align 4, !dbg !513, !tbaa !305
  %and58 = and i32 %41, 2, !dbg !515
  %tobool59 = icmp ne i32 %and58, 0, !dbg !515
  br i1 %tobool59, label %if.then60, label %if.end68, !dbg !516

if.then60:                                        ; preds = %if.end
  %arrayidx61 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !517
  %42 = load ptr, ptr %arrayidx61, align 8, !dbg !517, !tbaa !401
  %s62 = getelementptr inbounds %struct.mutseq_t, ptr %42, i32 0, i32 2, !dbg !518
  %43 = load ptr, ptr %s62, align 8, !dbg !518, !tbaa !457
  %44 = load i32, ptr %i, align 4, !dbg !519, !tbaa !305
  %idxprom63 = sext i32 %44 to i64, !dbg !517
  %arrayidx64 = getelementptr inbounds i16, ptr %43, i64 %idxprom63, !dbg !517
  %45 = load i16, ptr %arrayidx64, align 2, !dbg !520, !tbaa !488
  %conv65 = zext i16 %45 to i32, !dbg !520
  %or66 = or i32 %conv65, 61440, !dbg !520
  %conv67 = trunc i32 %or66 to i16, !dbg !520
  store i16 %conv67, ptr %arrayidx64, align 2, !dbg !520, !tbaa !488
  br label %if.end68, !dbg !517

if.end68:                                         ; preds = %if.then60, %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.else:                                          ; preds = %if.then
  store i32 0, ptr %deleting, align 4, !dbg !522, !tbaa !305
  br label %if.end69

if.end69:                                         ; preds = %if.else
  br label %if.end70, !dbg !523

if.end70:                                         ; preds = %if.end69, %for.body
  %46 = load i32, ptr %c, align 4, !dbg !524, !tbaa !305
  %cmp71 = icmp slt i32 %46, 4, !dbg !525
  br i1 %cmp71, label %land.lhs.true, label %if.end187, !dbg !526

land.lhs.true:                                    ; preds = %if.end70
  %call73 = call double @drand48() #12, !dbg !527
  %47 = load double, ptr @MUT_RATE, align 8, !dbg !528, !tbaa !317
  %cmp74 = fcmp olt double %call73, %47, !dbg !529
  br i1 %cmp74, label %if.then76, label %if.end187, !dbg !530

if.then76:                                        ; preds = %land.lhs.true
  %call77 = call double @drand48() #12, !dbg !531
  %48 = load double, ptr @INDEL_FRAC, align 8, !dbg !532, !tbaa !317
  %cmp78 = fcmp oge double %call77, %48, !dbg !533
  br i1 %cmp78, label %if.then80, label %if.else111, !dbg !534

if.then80:                                        ; preds = %if.then76
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12, !dbg !535
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !391, metadata !DIExpression()), !dbg !536
  %call81 = call double @drand48() #12, !dbg !537
  store double %call81, ptr %r, align 8, !dbg !536, !tbaa !317
  %49 = load i32, ptr %c, align 4, !dbg !538, !tbaa !305
  %50 = load double, ptr %r, align 8, !dbg !539, !tbaa !317
  %51 = call double @llvm.fmuladd.f64(double %50, double 3.000000e+00, double 1.000000e+00), !dbg !540
  %conv82 = fptosi double %51 to i32, !dbg !541
  %add = add nsw i32 %49, %conv82, !dbg !542
  %and83 = and i32 %add, 3, !dbg !543
  store i32 %and83, ptr %c, align 4, !dbg !544, !tbaa !305
  %52 = load i32, ptr %is_hap.addr, align 4, !dbg !545, !tbaa !305
  %tobool84 = icmp ne i32 %52, 0, !dbg !545
  br i1 %tobool84, label %if.then88, label %lor.lhs.false, !dbg !547

lor.lhs.false:                                    ; preds = %if.then80
  %call85 = call double @drand48() #12, !dbg !548
  %cmp86 = fcmp olt double %call85, 3.333330e-01, !dbg !549
  br i1 %cmp86, label %if.then88, label %if.else99, !dbg !550

if.then88:                                        ; preds = %lor.lhs.false, %if.then80
  %53 = load i32, ptr %c, align 4, !dbg !551, !tbaa !305
  %or89 = or i32 57344, %53, !dbg !553
  %conv90 = trunc i32 %or89 to i16, !dbg !554
  %arrayidx91 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !555
  %54 = load ptr, ptr %arrayidx91, align 8, !dbg !555, !tbaa !401
  %s92 = getelementptr inbounds %struct.mutseq_t, ptr %54, i32 0, i32 2, !dbg !556
  %55 = load ptr, ptr %s92, align 8, !dbg !556, !tbaa !457
  %56 = load i32, ptr %i, align 4, !dbg !557, !tbaa !305
  %idxprom93 = sext i32 %56 to i64, !dbg !555
  %arrayidx94 = getelementptr inbounds i16, ptr %55, i64 %idxprom93, !dbg !555
  store i16 %conv90, ptr %arrayidx94, align 2, !dbg !558, !tbaa !488
  %arrayidx95 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !559
  %57 = load ptr, ptr %arrayidx95, align 16, !dbg !559, !tbaa !401
  %s96 = getelementptr inbounds %struct.mutseq_t, ptr %57, i32 0, i32 2, !dbg !560
  %58 = load ptr, ptr %s96, align 8, !dbg !560, !tbaa !457
  %59 = load i32, ptr %i, align 4, !dbg !561, !tbaa !305
  %idxprom97 = sext i32 %59 to i64, !dbg !559
  %arrayidx98 = getelementptr inbounds i16, ptr %58, i64 %idxprom97, !dbg !559
  store i16 %conv90, ptr %arrayidx98, align 2, !dbg !562, !tbaa !488
  br label %if.end110, !dbg !563

if.else99:                                        ; preds = %lor.lhs.false
  %60 = load i32, ptr %c, align 4, !dbg !564, !tbaa !305
  %or100 = or i32 57344, %60, !dbg !566
  %conv101 = trunc i32 %or100 to i16, !dbg !567
  %call102 = call double @drand48() #12, !dbg !568
  %cmp103 = fcmp olt double %call102, 5.000000e-01, !dbg !569
  %61 = zext i1 %cmp103 to i64, !dbg !568
  %cond = select i1 %cmp103, i32 0, i32 1, !dbg !568
  %idxprom105 = sext i32 %cond to i64, !dbg !570
  %arrayidx106 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 %idxprom105, !dbg !570
  %62 = load ptr, ptr %arrayidx106, align 8, !dbg !570, !tbaa !401
  %s107 = getelementptr inbounds %struct.mutseq_t, ptr %62, i32 0, i32 2, !dbg !571
  %63 = load ptr, ptr %s107, align 8, !dbg !571, !tbaa !457
  %64 = load i32, ptr %i, align 4, !dbg !572, !tbaa !305
  %idxprom108 = sext i32 %64 to i64, !dbg !570
  %arrayidx109 = getelementptr inbounds i16, ptr %63, i64 %idxprom108, !dbg !570
  store i16 %conv101, ptr %arrayidx109, align 2, !dbg !573, !tbaa !488
  br label %if.end110

if.end110:                                        ; preds = %if.else99, %if.then88
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12, !dbg !574
  br label %if.end186, !dbg !575

if.else111:                                       ; preds = %if.then76
  %call112 = call double @drand48() #12, !dbg !576
  %cmp113 = fcmp olt double %call112, 5.000000e-01, !dbg !577
  br i1 %cmp113, label %if.then115, label %if.else141, !dbg !578

if.then115:                                       ; preds = %if.else111
  %65 = load i32, ptr %is_hap.addr, align 4, !dbg !579, !tbaa !305
  %tobool116 = icmp ne i32 %65, 0, !dbg !579
  br i1 %tobool116, label %if.then121, label %lor.lhs.false117, !dbg !582

lor.lhs.false117:                                 ; preds = %if.then115
  %call118 = call double @drand48() #12, !dbg !583
  %cmp119 = fcmp olt double %call118, 3.333330e-01, !dbg !584
  br i1 %cmp119, label %if.then121, label %if.else130, !dbg !585

if.then121:                                       ; preds = %lor.lhs.false117, %if.then115
  %arrayidx122 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !586
  %66 = load ptr, ptr %arrayidx122, align 8, !dbg !586, !tbaa !401
  %s123 = getelementptr inbounds %struct.mutseq_t, ptr %66, i32 0, i32 2, !dbg !588
  %67 = load ptr, ptr %s123, align 8, !dbg !588, !tbaa !457
  %68 = load i32, ptr %i, align 4, !dbg !589, !tbaa !305
  %idxprom124 = sext i32 %68 to i64, !dbg !586
  %arrayidx125 = getelementptr inbounds i16, ptr %67, i64 %idxprom124, !dbg !586
  store i16 -4096, ptr %arrayidx125, align 2, !dbg !590, !tbaa !488
  %arrayidx126 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !591
  %69 = load ptr, ptr %arrayidx126, align 16, !dbg !591, !tbaa !401
  %s127 = getelementptr inbounds %struct.mutseq_t, ptr %69, i32 0, i32 2, !dbg !592
  %70 = load ptr, ptr %s127, align 8, !dbg !592, !tbaa !457
  %71 = load i32, ptr %i, align 4, !dbg !593, !tbaa !305
  %idxprom128 = sext i32 %71 to i64, !dbg !591
  %arrayidx129 = getelementptr inbounds i16, ptr %70, i64 %idxprom128, !dbg !591
  store i16 -4096, ptr %arrayidx129, align 2, !dbg !594, !tbaa !488
  store i32 3, ptr %deleting, align 4, !dbg !595, !tbaa !305
  br label %if.end140, !dbg !596

if.else130:                                       ; preds = %lor.lhs.false117
  %call131 = call double @drand48() #12, !dbg !597
  %cmp132 = fcmp olt double %call131, 5.000000e-01, !dbg !599
  %72 = zext i1 %cmp132 to i64, !dbg !597
  %cond134 = select i1 %cmp132, i32 1, i32 2, !dbg !597
  store i32 %cond134, ptr %deleting, align 4, !dbg !600, !tbaa !305
  %73 = load i32, ptr %deleting, align 4, !dbg !601, !tbaa !305
  %sub = sub nsw i32 %73, 1, !dbg !602
  %idxprom135 = sext i32 %sub to i64, !dbg !603
  %arrayidx136 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 %idxprom135, !dbg !603
  %74 = load ptr, ptr %arrayidx136, align 8, !dbg !603, !tbaa !401
  %s137 = getelementptr inbounds %struct.mutseq_t, ptr %74, i32 0, i32 2, !dbg !604
  %75 = load ptr, ptr %s137, align 8, !dbg !604, !tbaa !457
  %76 = load i32, ptr %i, align 4, !dbg !605, !tbaa !305
  %idxprom138 = sext i32 %76 to i64, !dbg !603
  %arrayidx139 = getelementptr inbounds i16, ptr %75, i64 %idxprom138, !dbg !603
  store i16 -4096, ptr %arrayidx139, align 2, !dbg !606, !tbaa !488
  br label %if.end140

if.end140:                                        ; preds = %if.else130, %if.then121
  br label %if.end185, !dbg !607

if.else141:                                       ; preds = %if.else111
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_ins) #12, !dbg !608
  tail call void @llvm.dbg.declare(metadata ptr %num_ins, metadata !396, metadata !DIExpression()), !dbg !609
  store i32 0, ptr %num_ins, align 4, !dbg !609, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins) #12, !dbg !608
  tail call void @llvm.dbg.declare(metadata ptr %ins, metadata !400, metadata !DIExpression()), !dbg !610
  store i32 0, ptr %ins, align 4, !dbg !610, !tbaa !305
  br label %do.body, !dbg !611

do.body:                                          ; preds = %land.end, %if.else141
  %77 = load i32, ptr %num_ins, align 4, !dbg !612, !tbaa !305
  %inc = add nsw i32 %77, 1, !dbg !612
  store i32 %inc, ptr %num_ins, align 4, !dbg !612, !tbaa !305
  %78 = load i32, ptr %ins, align 4, !dbg !614, !tbaa !305
  %shl = shl i32 %78, 2, !dbg !615
  %call142 = call double @drand48() #12, !dbg !616
  %mul = fmul double %call142, 4.000000e+00, !dbg !617
  %conv143 = fptosi double %mul to i32, !dbg !618
  %or144 = or i32 %shl, %conv143, !dbg !619
  store i32 %or144, ptr %ins, align 4, !dbg !620, !tbaa !305
  br label %do.cond, !dbg !621

do.cond:                                          ; preds = %do.body
  %79 = load i32, ptr %num_ins, align 4, !dbg !622, !tbaa !305
  %cmp145 = icmp slt i32 %79, 4, !dbg !623
  br i1 %cmp145, label %land.rhs, label %land.end, !dbg !624

land.rhs:                                         ; preds = %do.cond
  %call147 = call double @drand48() #12, !dbg !625
  %80 = load double, ptr @INDEL_EXTEND, align 8, !dbg !626, !tbaa !317
  %cmp148 = fcmp olt double %call147, %80, !dbg !627
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %81 = phi i1 [ false, %do.cond ], [ %cmp148, %land.rhs ], !dbg !628
  br i1 %81, label %do.body, label %do.end, !dbg !621, !llvm.loop !629

do.end:                                           ; preds = %land.end
  %82 = load i32, ptr %is_hap.addr, align 4, !dbg !631, !tbaa !305
  %tobool150 = icmp ne i32 %82, 0, !dbg !631
  br i1 %tobool150, label %if.then155, label %lor.lhs.false151, !dbg !633

lor.lhs.false151:                                 ; preds = %do.end
  %call152 = call double @drand48() #12, !dbg !634
  %cmp153 = fcmp olt double %call152, 3.333330e-01, !dbg !635
  br i1 %cmp153, label %if.then155, label %if.else169, !dbg !636

if.then155:                                       ; preds = %lor.lhs.false151, %do.end
  %83 = load i32, ptr %num_ins, align 4, !dbg !637, !tbaa !305
  %shl156 = shl i32 %83, 12, !dbg !639
  %84 = load i32, ptr %ins, align 4, !dbg !640, !tbaa !305
  %shl157 = shl i32 %84, 4, !dbg !641
  %or158 = or i32 %shl156, %shl157, !dbg !642
  %85 = load i32, ptr %c, align 4, !dbg !643, !tbaa !305
  %or159 = or i32 %or158, %85, !dbg !644
  %conv160 = trunc i32 %or159 to i16, !dbg !645
  %arrayidx161 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 1, !dbg !646
  %86 = load ptr, ptr %arrayidx161, align 8, !dbg !646, !tbaa !401
  %s162 = getelementptr inbounds %struct.mutseq_t, ptr %86, i32 0, i32 2, !dbg !647
  %87 = load ptr, ptr %s162, align 8, !dbg !647, !tbaa !457
  %88 = load i32, ptr %i, align 4, !dbg !648, !tbaa !305
  %idxprom163 = sext i32 %88 to i64, !dbg !646
  %arrayidx164 = getelementptr inbounds i16, ptr %87, i64 %idxprom163, !dbg !646
  store i16 %conv160, ptr %arrayidx164, align 2, !dbg !649, !tbaa !488
  %arrayidx165 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 0, !dbg !650
  %89 = load ptr, ptr %arrayidx165, align 16, !dbg !650, !tbaa !401
  %s166 = getelementptr inbounds %struct.mutseq_t, ptr %89, i32 0, i32 2, !dbg !651
  %90 = load ptr, ptr %s166, align 8, !dbg !651, !tbaa !457
  %91 = load i32, ptr %i, align 4, !dbg !652, !tbaa !305
  %idxprom167 = sext i32 %91 to i64, !dbg !650
  %arrayidx168 = getelementptr inbounds i16, ptr %90, i64 %idxprom167, !dbg !650
  store i16 %conv160, ptr %arrayidx168, align 2, !dbg !653, !tbaa !488
  br label %if.end184, !dbg !654

if.else169:                                       ; preds = %lor.lhs.false151
  %92 = load i32, ptr %num_ins, align 4, !dbg !655, !tbaa !305
  %shl170 = shl i32 %92, 12, !dbg !657
  %93 = load i32, ptr %ins, align 4, !dbg !658, !tbaa !305
  %shl171 = shl i32 %93, 4, !dbg !659
  %or172 = or i32 %shl170, %shl171, !dbg !660
  %94 = load i32, ptr %c, align 4, !dbg !661, !tbaa !305
  %or173 = or i32 %or172, %94, !dbg !662
  %conv174 = trunc i32 %or173 to i16, !dbg !663
  %call175 = call double @drand48() #12, !dbg !664
  %cmp176 = fcmp olt double %call175, 5.000000e-01, !dbg !665
  %95 = zext i1 %cmp176 to i64, !dbg !664
  %cond178 = select i1 %cmp176, i32 0, i32 1, !dbg !664
  %idxprom179 = sext i32 %cond178 to i64, !dbg !666
  %arrayidx180 = getelementptr inbounds [2 x ptr], ptr %ret, i64 0, i64 %idxprom179, !dbg !666
  %96 = load ptr, ptr %arrayidx180, align 8, !dbg !666, !tbaa !401
  %s181 = getelementptr inbounds %struct.mutseq_t, ptr %96, i32 0, i32 2, !dbg !667
  %97 = load ptr, ptr %s181, align 8, !dbg !667, !tbaa !457
  %98 = load i32, ptr %i, align 4, !dbg !668, !tbaa !305
  %idxprom182 = sext i32 %98 to i64, !dbg !666
  %arrayidx183 = getelementptr inbounds i16, ptr %97, i64 %idxprom182, !dbg !666
  store i16 %conv174, ptr %arrayidx183, align 2, !dbg !669, !tbaa !488
  br label %if.end184

if.end184:                                        ; preds = %if.else169, %if.then155
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins) #12, !dbg !670
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_ins) #12, !dbg !670
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end140
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end110
  br label %if.end187, !dbg !671

if.end187:                                        ; preds = %if.end186, %land.lhs.true, %if.end70
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !672
  br label %cleanup, !dbg !672

cleanup:                                          ; preds = %if.end187, %if.end68
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !672
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !673

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %99 = load i32, ptr %i, align 4, !dbg !674, !tbaa !305
  %inc188 = add nsw i32 %99, 1, !dbg !674
  store i32 %inc188, ptr %i, align 4, !dbg !674, !tbaa !305
  br label %for.cond, !dbg !675, !llvm.loop !676

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %ret) #12, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %deleting) #12, !dbg !678
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !678
  ret void, !dbg !678

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !679 noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @wgsim_print_mutref(ptr noundef %name, ptr noundef %ks, ptr noundef %hap1, ptr noundef %hap2) #0 !dbg !682 {
entry:
  %name.addr = alloca ptr, align 8
  %ks.addr = alloca ptr, align 8
  %hap1.addr = alloca ptr, align 8
  %hap2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca [3 x i32], align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i32, align 4
  %ins = alloca i32, align 4
  %n283 = alloca i32, align 4
  %ins288 = alloca i32, align 4
  %n321 = alloca i32, align 4
  %ins326 = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !687, metadata !DIExpression()), !dbg !722
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !688, metadata !DIExpression()), !dbg !723
  store ptr %hap1, ptr %hap1.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %hap1.addr, metadata !689, metadata !DIExpression()), !dbg !724
  store ptr %hap2, ptr %hap2.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %hap2.addr, metadata !690, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !726
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !691, metadata !DIExpression()), !dbg !727
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !726
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !692, metadata !DIExpression()), !dbg !728
  store i32 0, ptr %j, align 4, !dbg !728, !tbaa !305
  store i32 0, ptr %i, align 4, !dbg !729, !tbaa !305
  br label %for.cond, !dbg !730

for.cond:                                         ; preds = %for.inc349, %entry
  %0 = load i32, ptr %i, align 4, !dbg !731, !tbaa !305
  %conv = sext i32 %0 to i64, !dbg !731
  %1 = load ptr, ptr %ks.addr, align 8, !dbg !732, !tbaa !401
  %seq = getelementptr inbounds %struct.kseq_t, ptr %1, i32 0, i32 2, !dbg !733
  %l = getelementptr inbounds %struct.kstring_t, ptr %seq, i32 0, i32 0, !dbg !734
  %2 = load i64, ptr %l, align 8, !dbg !734, !tbaa !421
  %cmp = icmp ne i64 %conv, %2, !dbg !735
  br i1 %cmp, label %for.body, label %for.end351, !dbg !736

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 12, ptr %c) #12, !dbg !737
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !693, metadata !DIExpression()), !dbg !738
  %3 = load ptr, ptr %ks.addr, align 8, !dbg !739, !tbaa !401
  %seq2 = getelementptr inbounds %struct.kseq_t, ptr %3, i32 0, i32 2, !dbg !740
  %s = getelementptr inbounds %struct.kstring_t, ptr %seq2, i32 0, i32 2, !dbg !741
  %4 = load ptr, ptr %s, align 8, !dbg !741, !tbaa !478
  %5 = load i32, ptr %i, align 4, !dbg !742, !tbaa !305
  %idxprom = sext i32 %5 to i64, !dbg !739
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !739
  %6 = load i8, ptr %arrayidx, align 1, !dbg !739, !tbaa !480
  %conv3 = sext i8 %6 to i32, !dbg !743
  %idxprom4 = sext i32 %conv3 to i64, !dbg !744
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @nst_nt4_table, i64 0, i64 %idxprom4, !dbg !744
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !744, !tbaa !480
  %conv6 = zext i8 %7 to i32, !dbg !744
  %arrayidx7 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 0, !dbg !745
  store i32 %conv6, ptr %arrayidx7, align 4, !dbg !746, !tbaa !305
  %8 = load ptr, ptr %hap1.addr, align 8, !dbg !747, !tbaa !401
  %s8 = getelementptr inbounds %struct.mutseq_t, ptr %8, i32 0, i32 2, !dbg !748
  %9 = load ptr, ptr %s8, align 8, !dbg !748, !tbaa !457
  %10 = load i32, ptr %i, align 4, !dbg !749, !tbaa !305
  %idxprom9 = sext i32 %10 to i64, !dbg !747
  %arrayidx10 = getelementptr inbounds i16, ptr %9, i64 %idxprom9, !dbg !747
  %11 = load i16, ptr %arrayidx10, align 2, !dbg !747, !tbaa !488
  %conv11 = zext i16 %11 to i32, !dbg !747
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !750
  store i32 %conv11, ptr %arrayidx12, align 4, !dbg !751, !tbaa !305
  %12 = load ptr, ptr %hap2.addr, align 8, !dbg !752, !tbaa !401
  %s13 = getelementptr inbounds %struct.mutseq_t, ptr %12, i32 0, i32 2, !dbg !753
  %13 = load ptr, ptr %s13, align 8, !dbg !753, !tbaa !457
  %14 = load i32, ptr %i, align 4, !dbg !754, !tbaa !305
  %idxprom14 = sext i32 %14 to i64, !dbg !752
  %arrayidx15 = getelementptr inbounds i16, ptr %13, i64 %idxprom14, !dbg !752
  %15 = load i16, ptr %arrayidx15, align 2, !dbg !752, !tbaa !488
  %conv16 = zext i16 %15 to i32, !dbg !752
  %arrayidx17 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !755
  store i32 %conv16, ptr %arrayidx17, align 4, !dbg !756, !tbaa !305
  %arrayidx18 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 0, !dbg !757
  %16 = load i32, ptr %arrayidx18, align 4, !dbg !757, !tbaa !305
  %cmp19 = icmp sge i32 %16, 4, !dbg !759
  br i1 %cmp19, label %if.then, label %if.end, !dbg !760

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !761

if.end:                                           ; preds = %for.body
  %arrayidx21 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !762
  %17 = load i32, ptr %arrayidx21, align 4, !dbg !762, !tbaa !305
  %18 = load i16, ptr @mutmsk, align 2, !dbg !763, !tbaa !488
  %conv22 = zext i16 %18 to i32, !dbg !763
  %and = and i32 %17, %conv22, !dbg !764
  %cmp23 = icmp ne i32 %and, 0, !dbg !765
  br i1 %cmp23, label %if.then30, label %lor.lhs.false, !dbg !766

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx25 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !767
  %19 = load i32, ptr %arrayidx25, align 4, !dbg !767, !tbaa !305
  %20 = load i16, ptr @mutmsk, align 2, !dbg !768, !tbaa !488
  %conv26 = zext i16 %20 to i32, !dbg !768
  %and27 = and i32 %19, %conv26, !dbg !769
  %cmp28 = icmp ne i32 %and27, 0, !dbg !770
  br i1 %cmp28, label %if.then30, label %if.end348, !dbg !771

if.then30:                                        ; preds = %lor.lhs.false, %if.end
  %arrayidx31 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !772
  %21 = load i32, ptr %arrayidx31, align 4, !dbg !772, !tbaa !305
  %arrayidx32 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !773
  %22 = load i32, ptr %arrayidx32, align 4, !dbg !773, !tbaa !305
  %cmp33 = icmp eq i32 %21, %22, !dbg !774
  br i1 %cmp33, label %if.then35, label %if.else127, !dbg !775

if.then35:                                        ; preds = %if.then30
  %arrayidx36 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !776
  %23 = load i32, ptr %arrayidx36, align 4, !dbg !776, !tbaa !305
  %24 = load i16, ptr @mutmsk, align 2, !dbg !777, !tbaa !488
  %conv37 = zext i16 %24 to i32, !dbg !777
  %and38 = and i32 %23, %conv37, !dbg !778
  %cmp39 = icmp eq i32 %and38, 57344, !dbg !779
  br i1 %cmp39, label %if.then41, label %if.else, !dbg !780

if.then41:                                        ; preds = %if.then35
  %25 = load ptr, ptr %name.addr, align 8, !dbg !781, !tbaa !401
  %26 = load i32, ptr %i, align 4, !dbg !783, !tbaa !305
  %add = add nsw i32 %26, 1, !dbg !784
  %arrayidx42 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 0, !dbg !785
  %27 = load i32, ptr %arrayidx42, align 4, !dbg !785, !tbaa !305
  %idxprom43 = sext i32 %27 to i64, !dbg !786
  %arrayidx44 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom43, !dbg !786
  %28 = load i8, ptr %arrayidx44, align 1, !dbg !786, !tbaa !480
  %conv45 = sext i8 %28 to i32, !dbg !786
  %arrayidx46 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !787
  %29 = load i32, ptr %arrayidx46, align 4, !dbg !787, !tbaa !305
  %and47 = and i32 %29, 15, !dbg !788
  %idxprom48 = sext i32 %and47 to i64, !dbg !789
  %arrayidx49 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom48, !dbg !789
  %30 = load i8, ptr %arrayidx49, align 1, !dbg !789, !tbaa !480
  %conv50 = sext i8 %30 to i32, !dbg !789
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %25, i32 noundef %add, i32 noundef %conv45, i32 noundef %conv50), !dbg !790
  br label %if.end126, !dbg !791

if.else:                                          ; preds = %if.then35
  %arrayidx51 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !792
  %31 = load i32, ptr %arrayidx51, align 4, !dbg !792, !tbaa !305
  %32 = load i16, ptr @mutmsk, align 2, !dbg !793, !tbaa !488
  %conv52 = zext i16 %32 to i32, !dbg !793
  %and53 = and i32 %31, %conv52, !dbg !794
  %cmp54 = icmp eq i32 %and53, 61440, !dbg !795
  br i1 %cmp54, label %if.then56, label %if.else100, !dbg !796

if.then56:                                        ; preds = %if.else
  %33 = load i32, ptr %i, align 4, !dbg !797, !tbaa !305
  %34 = load i32, ptr %j, align 4, !dbg !800, !tbaa !305
  %cmp57 = icmp sge i32 %33, %34, !dbg !801
  br i1 %cmp57, label %if.then59, label %if.end99, !dbg !802

if.then59:                                        ; preds = %if.then56
  %35 = load ptr, ptr %name.addr, align 8, !dbg !803, !tbaa !401
  %36 = load i32, ptr %i, align 4, !dbg !805, !tbaa !305
  %add60 = add nsw i32 %36, 1, !dbg !806
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %35, i32 noundef %add60), !dbg !807
  %37 = load i32, ptr %i, align 4, !dbg !808, !tbaa !305
  store i32 %37, ptr %j, align 4, !dbg !810, !tbaa !305
  br label %for.cond62, !dbg !811

for.cond62:                                       ; preds = %for.inc, %if.then59
  %38 = load i32, ptr %j, align 4, !dbg !812, !tbaa !305
  %conv63 = sext i32 %38 to i64, !dbg !812
  %39 = load ptr, ptr %ks.addr, align 8, !dbg !814, !tbaa !401
  %seq64 = getelementptr inbounds %struct.kseq_t, ptr %39, i32 0, i32 2, !dbg !815
  %l65 = getelementptr inbounds %struct.kstring_t, ptr %seq64, i32 0, i32 0, !dbg !816
  %40 = load i64, ptr %l65, align 8, !dbg !816, !tbaa !421
  %cmp66 = icmp ult i64 %conv63, %40, !dbg !817
  br i1 %cmp66, label %land.lhs.true, label %land.end, !dbg !818

land.lhs.true:                                    ; preds = %for.cond62
  %41 = load ptr, ptr %hap1.addr, align 8, !dbg !819, !tbaa !401
  %s68 = getelementptr inbounds %struct.mutseq_t, ptr %41, i32 0, i32 2, !dbg !820
  %42 = load ptr, ptr %s68, align 8, !dbg !820, !tbaa !457
  %43 = load i32, ptr %j, align 4, !dbg !821, !tbaa !305
  %idxprom69 = sext i32 %43 to i64, !dbg !819
  %arrayidx70 = getelementptr inbounds i16, ptr %42, i64 %idxprom69, !dbg !819
  %44 = load i16, ptr %arrayidx70, align 2, !dbg !819, !tbaa !488
  %conv71 = zext i16 %44 to i32, !dbg !819
  %45 = load ptr, ptr %hap2.addr, align 8, !dbg !822, !tbaa !401
  %s72 = getelementptr inbounds %struct.mutseq_t, ptr %45, i32 0, i32 2, !dbg !823
  %46 = load ptr, ptr %s72, align 8, !dbg !823, !tbaa !457
  %47 = load i32, ptr %j, align 4, !dbg !824, !tbaa !305
  %idxprom73 = sext i32 %47 to i64, !dbg !822
  %arrayidx74 = getelementptr inbounds i16, ptr %46, i64 %idxprom73, !dbg !822
  %48 = load i16, ptr %arrayidx74, align 2, !dbg !822, !tbaa !488
  %conv75 = zext i16 %48 to i32, !dbg !822
  %cmp76 = icmp eq i32 %conv71, %conv75, !dbg !825
  br i1 %cmp76, label %land.rhs, label %land.end, !dbg !826

land.rhs:                                         ; preds = %land.lhs.true
  %49 = load ptr, ptr %hap1.addr, align 8, !dbg !827, !tbaa !401
  %s78 = getelementptr inbounds %struct.mutseq_t, ptr %49, i32 0, i32 2, !dbg !828
  %50 = load ptr, ptr %s78, align 8, !dbg !828, !tbaa !457
  %51 = load i32, ptr %j, align 4, !dbg !829, !tbaa !305
  %idxprom79 = sext i32 %51 to i64, !dbg !827
  %arrayidx80 = getelementptr inbounds i16, ptr %50, i64 %idxprom79, !dbg !827
  %52 = load i16, ptr %arrayidx80, align 2, !dbg !827, !tbaa !488
  %conv81 = zext i16 %52 to i32, !dbg !827
  %53 = load i16, ptr @mutmsk, align 2, !dbg !830, !tbaa !488
  %conv82 = zext i16 %53 to i32, !dbg !830
  %and83 = and i32 %conv81, %conv82, !dbg !831
  %cmp84 = icmp eq i32 %and83, 61440, !dbg !832
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond62
  %54 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond62 ], [ %cmp84, %land.rhs ], !dbg !833
  br i1 %54, label %for.body86, label %for.end, !dbg !834

for.body86:                                       ; preds = %land.end
  %55 = load ptr, ptr %ks.addr, align 8, !dbg !835, !tbaa !401
  %seq87 = getelementptr inbounds %struct.kseq_t, ptr %55, i32 0, i32 2, !dbg !836
  %s88 = getelementptr inbounds %struct.kstring_t, ptr %seq87, i32 0, i32 2, !dbg !837
  %56 = load ptr, ptr %s88, align 8, !dbg !837, !tbaa !478
  %57 = load i32, ptr %j, align 4, !dbg !838, !tbaa !305
  %idxprom89 = sext i32 %57 to i64, !dbg !835
  %arrayidx90 = getelementptr inbounds i8, ptr %56, i64 %idxprom89, !dbg !835
  %58 = load i8, ptr %arrayidx90, align 1, !dbg !835, !tbaa !480
  %conv91 = sext i8 %58 to i32, !dbg !839
  %idxprom92 = sext i32 %conv91 to i64, !dbg !840
  %arrayidx93 = getelementptr inbounds [256 x i8], ptr @nst_nt4_table, i64 0, i64 %idxprom92, !dbg !840
  %59 = load i8, ptr %arrayidx93, align 1, !dbg !840, !tbaa !480
  %idxprom94 = zext i8 %59 to i64, !dbg !841
  %arrayidx95 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom94, !dbg !841
  %60 = load i8, ptr %arrayidx95, align 1, !dbg !841, !tbaa !480
  %conv96 = sext i8 %60 to i32, !dbg !841
  %call97 = call i32 @putchar(i32 noundef %conv96), !dbg !842
  br label %for.inc, !dbg !842

for.inc:                                          ; preds = %for.body86
  %61 = load i32, ptr %j, align 4, !dbg !843, !tbaa !305
  %inc = add nsw i32 %61, 1, !dbg !843
  store i32 %inc, ptr %j, align 4, !dbg !843, !tbaa !305
  br label %for.cond62, !dbg !844, !llvm.loop !845

for.end:                                          ; preds = %land.end
  %call98 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !847
  br label %if.end99, !dbg !848

if.end99:                                         ; preds = %for.end, %if.then56
  br label %if.end125, !dbg !849

if.else100:                                       ; preds = %if.else
  %arrayidx101 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !850
  %62 = load i32, ptr %arrayidx101, align 4, !dbg !850, !tbaa !305
  %63 = load i16, ptr @mutmsk, align 2, !dbg !851, !tbaa !488
  %conv102 = zext i16 %63 to i32, !dbg !851
  %and103 = and i32 %62, %conv102, !dbg !852
  %shr = ashr i32 %and103, 12, !dbg !853
  %cmp104 = icmp sle i32 %shr, 4, !dbg !854
  br i1 %cmp104, label %if.then106, label %if.end124, !dbg !855

if.then106:                                       ; preds = %if.else100
  %64 = load ptr, ptr %name.addr, align 8, !dbg !856, !tbaa !401
  %65 = load i32, ptr %i, align 4, !dbg !857, !tbaa !305
  %add107 = add nsw i32 %65, 1, !dbg !858
  %call108 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %64, i32 noundef %add107), !dbg !859
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12, !dbg !860
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !700, metadata !DIExpression()), !dbg !861
  %arrayidx109 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !862
  %66 = load i32, ptr %arrayidx109, align 4, !dbg !862, !tbaa !305
  %67 = load i16, ptr @mutmsk, align 2, !dbg !863, !tbaa !488
  %conv110 = zext i16 %67 to i32, !dbg !863
  %and111 = and i32 %66, %conv110, !dbg !864
  %shr112 = ashr i32 %and111, 12, !dbg !865
  store i32 %shr112, ptr %n, align 4, !dbg !861, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins) #12, !dbg !860
  tail call void @llvm.dbg.declare(metadata ptr %ins, metadata !709, metadata !DIExpression()), !dbg !866
  %arrayidx113 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !867
  %68 = load i32, ptr %arrayidx113, align 4, !dbg !867, !tbaa !305
  %shr114 = ashr i32 %68, 4, !dbg !868
  store i32 %shr114, ptr %ins, align 4, !dbg !866, !tbaa !305
  br label %while.cond, !dbg !869

while.cond:                                       ; preds = %while.body, %if.then106
  %69 = load i32, ptr %n, align 4, !dbg !870, !tbaa !305
  %cmp115 = icmp sgt i32 %69, 0, !dbg !871
  br i1 %cmp115, label %while.body, label %while.end, !dbg !869

while.body:                                       ; preds = %while.cond
  %70 = load i32, ptr %ins, align 4, !dbg !872, !tbaa !305
  %and117 = and i32 %70, 3, !dbg !874
  %idxprom118 = sext i32 %and117 to i64, !dbg !875
  %arrayidx119 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom118, !dbg !875
  %71 = load i8, ptr %arrayidx119, align 1, !dbg !875, !tbaa !480
  %conv120 = sext i8 %71 to i32, !dbg !875
  %call121 = call i32 @putchar(i32 noundef %conv120), !dbg !876
  %72 = load i32, ptr %ins, align 4, !dbg !877, !tbaa !305
  %shr122 = ashr i32 %72, 2, !dbg !877
  store i32 %shr122, ptr %ins, align 4, !dbg !877, !tbaa !305
  %73 = load i32, ptr %n, align 4, !dbg !878, !tbaa !305
  %dec = add nsw i32 %73, -1, !dbg !878
  store i32 %dec, ptr %n, align 4, !dbg !878, !tbaa !305
  br label %while.cond, !dbg !869, !llvm.loop !879

while.end:                                        ; preds = %while.cond
  %call123 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !881
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins) #12, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12, !dbg !882
  br label %if.end124, !dbg !883

if.end124:                                        ; preds = %while.end, %if.else100
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end99
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then41
  br label %if.end347, !dbg !884

if.else127:                                       ; preds = %if.then30
  %arrayidx128 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !885
  %74 = load i32, ptr %arrayidx128, align 4, !dbg !885, !tbaa !305
  %75 = load i16, ptr @mutmsk, align 2, !dbg !886, !tbaa !488
  %conv129 = zext i16 %75 to i32, !dbg !886
  %and130 = and i32 %74, %conv129, !dbg !887
  %cmp131 = icmp eq i32 %and130, 57344, !dbg !888
  br i1 %cmp131, label %if.then139, label %lor.lhs.false133, !dbg !889

lor.lhs.false133:                                 ; preds = %if.else127
  %arrayidx134 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !890
  %76 = load i32, ptr %arrayidx134, align 4, !dbg !890, !tbaa !305
  %77 = load i16, ptr @mutmsk, align 2, !dbg !891, !tbaa !488
  %conv135 = zext i16 %77 to i32, !dbg !891
  %and136 = and i32 %76, %conv135, !dbg !892
  %cmp137 = icmp eq i32 %and136, 57344, !dbg !893
  br i1 %cmp137, label %if.then139, label %if.else154, !dbg !894

if.then139:                                       ; preds = %lor.lhs.false133, %if.else127
  %78 = load ptr, ptr %name.addr, align 8, !dbg !895, !tbaa !401
  %79 = load i32, ptr %i, align 4, !dbg !897, !tbaa !305
  %add140 = add nsw i32 %79, 1, !dbg !898
  %arrayidx141 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 0, !dbg !899
  %80 = load i32, ptr %arrayidx141, align 4, !dbg !899, !tbaa !305
  %idxprom142 = sext i32 %80 to i64, !dbg !900
  %arrayidx143 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom142, !dbg !900
  %81 = load i8, ptr %arrayidx143, align 1, !dbg !900, !tbaa !480
  %conv144 = sext i8 %81 to i32, !dbg !900
  %arrayidx145 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !901
  %82 = load i32, ptr %arrayidx145, align 4, !dbg !901, !tbaa !305
  %and146 = and i32 %82, 3, !dbg !902
  %shl = shl i32 1, %and146, !dbg !903
  %arrayidx147 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !904
  %83 = load i32, ptr %arrayidx147, align 4, !dbg !904, !tbaa !305
  %and148 = and i32 %83, 3, !dbg !905
  %shl149 = shl i32 1, %and148, !dbg !906
  %or = or i32 %shl, %shl149, !dbg !907
  %idxprom150 = sext i32 %or to i64, !dbg !908
  %arrayidx151 = getelementptr inbounds [17 x i8], ptr @.str.7, i64 0, i64 %idxprom150, !dbg !908
  %84 = load i8, ptr %arrayidx151, align 1, !dbg !908, !tbaa !480
  %conv152 = sext i8 %84 to i32, !dbg !908
  %call153 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %78, i32 noundef %add140, i32 noundef %conv144, i32 noundef %conv152), !dbg !909
  br label %if.end346, !dbg !910

if.else154:                                       ; preds = %lor.lhs.false133
  %arrayidx155 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !911
  %85 = load i32, ptr %arrayidx155, align 4, !dbg !911, !tbaa !305
  %86 = load i16, ptr @mutmsk, align 2, !dbg !912, !tbaa !488
  %conv156 = zext i16 %86 to i32, !dbg !912
  %and157 = and i32 %85, %conv156, !dbg !913
  %cmp158 = icmp eq i32 %and157, 61440, !dbg !914
  br i1 %cmp158, label %if.then160, label %if.else210, !dbg !915

if.then160:                                       ; preds = %if.else154
  %87 = load i32, ptr %i, align 4, !dbg !916, !tbaa !305
  %88 = load i32, ptr %j, align 4, !dbg !919, !tbaa !305
  %cmp161 = icmp sge i32 %87, %88, !dbg !920
  br i1 %cmp161, label %if.then163, label %if.end209, !dbg !921

if.then163:                                       ; preds = %if.then160
  %89 = load ptr, ptr %name.addr, align 8, !dbg !922, !tbaa !401
  %90 = load i32, ptr %i, align 4, !dbg !924, !tbaa !305
  %add164 = add nsw i32 %90, 1, !dbg !925
  %call165 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %89, i32 noundef %add164), !dbg !926
  %91 = load i32, ptr %i, align 4, !dbg !927, !tbaa !305
  store i32 %91, ptr %j, align 4, !dbg !929, !tbaa !305
  br label %for.cond166, !dbg !930

for.cond166:                                      ; preds = %for.inc205, %if.then163
  %92 = load i32, ptr %j, align 4, !dbg !931, !tbaa !305
  %conv167 = sext i32 %92 to i64, !dbg !931
  %93 = load ptr, ptr %ks.addr, align 8, !dbg !933, !tbaa !401
  %seq168 = getelementptr inbounds %struct.kseq_t, ptr %93, i32 0, i32 2, !dbg !934
  %l169 = getelementptr inbounds %struct.kstring_t, ptr %seq168, i32 0, i32 0, !dbg !935
  %94 = load i64, ptr %l169, align 8, !dbg !935, !tbaa !421
  %cmp170 = icmp ult i64 %conv167, %94, !dbg !936
  br i1 %cmp170, label %land.lhs.true172, label %land.end192, !dbg !937

land.lhs.true172:                                 ; preds = %for.cond166
  %95 = load ptr, ptr %hap1.addr, align 8, !dbg !938, !tbaa !401
  %s173 = getelementptr inbounds %struct.mutseq_t, ptr %95, i32 0, i32 2, !dbg !939
  %96 = load ptr, ptr %s173, align 8, !dbg !939, !tbaa !457
  %97 = load i32, ptr %j, align 4, !dbg !940, !tbaa !305
  %idxprom174 = sext i32 %97 to i64, !dbg !938
  %arrayidx175 = getelementptr inbounds i16, ptr %96, i64 %idxprom174, !dbg !938
  %98 = load i16, ptr %arrayidx175, align 2, !dbg !938, !tbaa !488
  %conv176 = zext i16 %98 to i32, !dbg !938
  %99 = load ptr, ptr %hap2.addr, align 8, !dbg !941, !tbaa !401
  %s177 = getelementptr inbounds %struct.mutseq_t, ptr %99, i32 0, i32 2, !dbg !942
  %100 = load ptr, ptr %s177, align 8, !dbg !942, !tbaa !457
  %101 = load i32, ptr %j, align 4, !dbg !943, !tbaa !305
  %idxprom178 = sext i32 %101 to i64, !dbg !941
  %arrayidx179 = getelementptr inbounds i16, ptr %100, i64 %idxprom178, !dbg !941
  %102 = load i16, ptr %arrayidx179, align 2, !dbg !941, !tbaa !488
  %conv180 = zext i16 %102 to i32, !dbg !941
  %cmp181 = icmp ne i32 %conv176, %conv180, !dbg !944
  br i1 %cmp181, label %land.rhs183, label %land.end192, !dbg !945

land.rhs183:                                      ; preds = %land.lhs.true172
  %103 = load ptr, ptr %hap1.addr, align 8, !dbg !946, !tbaa !401
  %s184 = getelementptr inbounds %struct.mutseq_t, ptr %103, i32 0, i32 2, !dbg !947
  %104 = load ptr, ptr %s184, align 8, !dbg !947, !tbaa !457
  %105 = load i32, ptr %j, align 4, !dbg !948, !tbaa !305
  %idxprom185 = sext i32 %105 to i64, !dbg !946
  %arrayidx186 = getelementptr inbounds i16, ptr %104, i64 %idxprom185, !dbg !946
  %106 = load i16, ptr %arrayidx186, align 2, !dbg !946, !tbaa !488
  %conv187 = zext i16 %106 to i32, !dbg !946
  %107 = load i16, ptr @mutmsk, align 2, !dbg !949, !tbaa !488
  %conv188 = zext i16 %107 to i32, !dbg !949
  %and189 = and i32 %conv187, %conv188, !dbg !950
  %cmp190 = icmp eq i32 %and189, 61440, !dbg !951
  br label %land.end192

land.end192:                                      ; preds = %land.rhs183, %land.lhs.true172, %for.cond166
  %108 = phi i1 [ false, %land.lhs.true172 ], [ false, %for.cond166 ], [ %cmp190, %land.rhs183 ], !dbg !952
  br i1 %108, label %for.body193, label %for.end207, !dbg !953

for.body193:                                      ; preds = %land.end192
  %109 = load ptr, ptr %ks.addr, align 8, !dbg !954, !tbaa !401
  %seq194 = getelementptr inbounds %struct.kseq_t, ptr %109, i32 0, i32 2, !dbg !955
  %s195 = getelementptr inbounds %struct.kstring_t, ptr %seq194, i32 0, i32 2, !dbg !956
  %110 = load ptr, ptr %s195, align 8, !dbg !956, !tbaa !478
  %111 = load i32, ptr %j, align 4, !dbg !957, !tbaa !305
  %idxprom196 = sext i32 %111 to i64, !dbg !954
  %arrayidx197 = getelementptr inbounds i8, ptr %110, i64 %idxprom196, !dbg !954
  %112 = load i8, ptr %arrayidx197, align 1, !dbg !954, !tbaa !480
  %conv198 = sext i8 %112 to i32, !dbg !958
  %idxprom199 = sext i32 %conv198 to i64, !dbg !959
  %arrayidx200 = getelementptr inbounds [256 x i8], ptr @nst_nt4_table, i64 0, i64 %idxprom199, !dbg !959
  %113 = load i8, ptr %arrayidx200, align 1, !dbg !959, !tbaa !480
  %idxprom201 = zext i8 %113 to i64, !dbg !960
  %arrayidx202 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom201, !dbg !960
  %114 = load i8, ptr %arrayidx202, align 1, !dbg !960, !tbaa !480
  %conv203 = sext i8 %114 to i32, !dbg !960
  %call204 = call i32 @putchar(i32 noundef %conv203), !dbg !961
  br label %for.inc205, !dbg !961

for.inc205:                                       ; preds = %for.body193
  %115 = load i32, ptr %j, align 4, !dbg !962, !tbaa !305
  %inc206 = add nsw i32 %115, 1, !dbg !962
  store i32 %inc206, ptr %j, align 4, !dbg !962, !tbaa !305
  br label %for.cond166, !dbg !963, !llvm.loop !964

for.end207:                                       ; preds = %land.end192
  %call208 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !966
  br label %if.end209, !dbg !967

if.end209:                                        ; preds = %for.end207, %if.then160
  br label %if.end345, !dbg !968

if.else210:                                       ; preds = %if.else154
  %arrayidx211 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !969
  %116 = load i32, ptr %arrayidx211, align 4, !dbg !969, !tbaa !305
  %117 = load i16, ptr @mutmsk, align 2, !dbg !970, !tbaa !488
  %conv212 = zext i16 %117 to i32, !dbg !970
  %and213 = and i32 %116, %conv212, !dbg !971
  %cmp214 = icmp eq i32 %and213, 61440, !dbg !972
  br i1 %cmp214, label %if.then216, label %if.else266, !dbg !973

if.then216:                                       ; preds = %if.else210
  %118 = load i32, ptr %i, align 4, !dbg !974, !tbaa !305
  %119 = load i32, ptr %j, align 4, !dbg !977, !tbaa !305
  %cmp217 = icmp sge i32 %118, %119, !dbg !978
  br i1 %cmp217, label %if.then219, label %if.end265, !dbg !979

if.then219:                                       ; preds = %if.then216
  %120 = load ptr, ptr %name.addr, align 8, !dbg !980, !tbaa !401
  %121 = load i32, ptr %i, align 4, !dbg !982, !tbaa !305
  %add220 = add nsw i32 %121, 1, !dbg !983
  %call221 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %120, i32 noundef %add220), !dbg !984
  %122 = load i32, ptr %i, align 4, !dbg !985, !tbaa !305
  store i32 %122, ptr %j, align 4, !dbg !987, !tbaa !305
  br label %for.cond222, !dbg !988

for.cond222:                                      ; preds = %for.inc261, %if.then219
  %123 = load i32, ptr %j, align 4, !dbg !989, !tbaa !305
  %conv223 = sext i32 %123 to i64, !dbg !989
  %124 = load ptr, ptr %ks.addr, align 8, !dbg !991, !tbaa !401
  %seq224 = getelementptr inbounds %struct.kseq_t, ptr %124, i32 0, i32 2, !dbg !992
  %l225 = getelementptr inbounds %struct.kstring_t, ptr %seq224, i32 0, i32 0, !dbg !993
  %125 = load i64, ptr %l225, align 8, !dbg !993, !tbaa !421
  %cmp226 = icmp ult i64 %conv223, %125, !dbg !994
  br i1 %cmp226, label %land.lhs.true228, label %land.end248, !dbg !995

land.lhs.true228:                                 ; preds = %for.cond222
  %126 = load ptr, ptr %hap1.addr, align 8, !dbg !996, !tbaa !401
  %s229 = getelementptr inbounds %struct.mutseq_t, ptr %126, i32 0, i32 2, !dbg !997
  %127 = load ptr, ptr %s229, align 8, !dbg !997, !tbaa !457
  %128 = load i32, ptr %j, align 4, !dbg !998, !tbaa !305
  %idxprom230 = sext i32 %128 to i64, !dbg !996
  %arrayidx231 = getelementptr inbounds i16, ptr %127, i64 %idxprom230, !dbg !996
  %129 = load i16, ptr %arrayidx231, align 2, !dbg !996, !tbaa !488
  %conv232 = zext i16 %129 to i32, !dbg !996
  %130 = load ptr, ptr %hap2.addr, align 8, !dbg !999, !tbaa !401
  %s233 = getelementptr inbounds %struct.mutseq_t, ptr %130, i32 0, i32 2, !dbg !1000
  %131 = load ptr, ptr %s233, align 8, !dbg !1000, !tbaa !457
  %132 = load i32, ptr %j, align 4, !dbg !1001, !tbaa !305
  %idxprom234 = sext i32 %132 to i64, !dbg !999
  %arrayidx235 = getelementptr inbounds i16, ptr %131, i64 %idxprom234, !dbg !999
  %133 = load i16, ptr %arrayidx235, align 2, !dbg !999, !tbaa !488
  %conv236 = zext i16 %133 to i32, !dbg !999
  %cmp237 = icmp ne i32 %conv232, %conv236, !dbg !1002
  br i1 %cmp237, label %land.rhs239, label %land.end248, !dbg !1003

land.rhs239:                                      ; preds = %land.lhs.true228
  %134 = load ptr, ptr %hap2.addr, align 8, !dbg !1004, !tbaa !401
  %s240 = getelementptr inbounds %struct.mutseq_t, ptr %134, i32 0, i32 2, !dbg !1005
  %135 = load ptr, ptr %s240, align 8, !dbg !1005, !tbaa !457
  %136 = load i32, ptr %j, align 4, !dbg !1006, !tbaa !305
  %idxprom241 = sext i32 %136 to i64, !dbg !1004
  %arrayidx242 = getelementptr inbounds i16, ptr %135, i64 %idxprom241, !dbg !1004
  %137 = load i16, ptr %arrayidx242, align 2, !dbg !1004, !tbaa !488
  %conv243 = zext i16 %137 to i32, !dbg !1004
  %138 = load i16, ptr @mutmsk, align 2, !dbg !1007, !tbaa !488
  %conv244 = zext i16 %138 to i32, !dbg !1007
  %and245 = and i32 %conv243, %conv244, !dbg !1008
  %cmp246 = icmp eq i32 %and245, 61440, !dbg !1009
  br label %land.end248

land.end248:                                      ; preds = %land.rhs239, %land.lhs.true228, %for.cond222
  %139 = phi i1 [ false, %land.lhs.true228 ], [ false, %for.cond222 ], [ %cmp246, %land.rhs239 ], !dbg !1010
  br i1 %139, label %for.body249, label %for.end263, !dbg !1011

for.body249:                                      ; preds = %land.end248
  %140 = load ptr, ptr %ks.addr, align 8, !dbg !1012, !tbaa !401
  %seq250 = getelementptr inbounds %struct.kseq_t, ptr %140, i32 0, i32 2, !dbg !1013
  %s251 = getelementptr inbounds %struct.kstring_t, ptr %seq250, i32 0, i32 2, !dbg !1014
  %141 = load ptr, ptr %s251, align 8, !dbg !1014, !tbaa !478
  %142 = load i32, ptr %j, align 4, !dbg !1015, !tbaa !305
  %idxprom252 = sext i32 %142 to i64, !dbg !1012
  %arrayidx253 = getelementptr inbounds i8, ptr %141, i64 %idxprom252, !dbg !1012
  %143 = load i8, ptr %arrayidx253, align 1, !dbg !1012, !tbaa !480
  %conv254 = sext i8 %143 to i32, !dbg !1016
  %idxprom255 = sext i32 %conv254 to i64, !dbg !1017
  %arrayidx256 = getelementptr inbounds [256 x i8], ptr @nst_nt4_table, i64 0, i64 %idxprom255, !dbg !1017
  %144 = load i8, ptr %arrayidx256, align 1, !dbg !1017, !tbaa !480
  %idxprom257 = zext i8 %144 to i64, !dbg !1018
  %arrayidx258 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom257, !dbg !1018
  %145 = load i8, ptr %arrayidx258, align 1, !dbg !1018, !tbaa !480
  %conv259 = sext i8 %145 to i32, !dbg !1018
  %call260 = call i32 @putchar(i32 noundef %conv259), !dbg !1019
  br label %for.inc261, !dbg !1019

for.inc261:                                       ; preds = %for.body249
  %146 = load i32, ptr %j, align 4, !dbg !1020, !tbaa !305
  %inc262 = add nsw i32 %146, 1, !dbg !1020
  store i32 %inc262, ptr %j, align 4, !dbg !1020, !tbaa !305
  br label %for.cond222, !dbg !1021, !llvm.loop !1022

for.end263:                                       ; preds = %land.end248
  %call264 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !1024
  br label %if.end265, !dbg !1025

if.end265:                                        ; preds = %for.end263, %if.then216
  br label %if.end344, !dbg !1026

if.else266:                                       ; preds = %if.else210
  %arrayidx267 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !1027
  %147 = load i32, ptr %arrayidx267, align 4, !dbg !1027, !tbaa !305
  %148 = load i16, ptr @mutmsk, align 2, !dbg !1028, !tbaa !488
  %conv268 = zext i16 %148 to i32, !dbg !1028
  %and269 = and i32 %147, %conv268, !dbg !1029
  %shr270 = ashr i32 %and269, 12, !dbg !1030
  %cmp271 = icmp sle i32 %shr270, 4, !dbg !1031
  br i1 %cmp271, label %land.lhs.true273, label %if.else304, !dbg !1032

land.lhs.true273:                                 ; preds = %if.else266
  %arrayidx274 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !1033
  %149 = load i32, ptr %arrayidx274, align 4, !dbg !1033, !tbaa !305
  %150 = load i16, ptr @mutmsk, align 2, !dbg !1034, !tbaa !488
  %conv275 = zext i16 %150 to i32, !dbg !1034
  %and276 = and i32 %149, %conv275, !dbg !1035
  %shr277 = ashr i32 %and276, 12, !dbg !1036
  %cmp278 = icmp sgt i32 %shr277, 0, !dbg !1037
  br i1 %cmp278, label %if.then280, label %if.else304, !dbg !1038

if.then280:                                       ; preds = %land.lhs.true273
  %151 = load ptr, ptr %name.addr, align 8, !dbg !1039, !tbaa !401
  %152 = load i32, ptr %i, align 4, !dbg !1040, !tbaa !305
  %add281 = add nsw i32 %152, 1, !dbg !1041
  %call282 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %151, i32 noundef %add281), !dbg !1042
  call void @llvm.lifetime.start.p0(i64 4, ptr %n283) #12, !dbg !1043
  tail call void @llvm.dbg.declare(metadata ptr %n283, metadata !710, metadata !DIExpression()), !dbg !1044
  %arrayidx284 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !1045
  %153 = load i32, ptr %arrayidx284, align 4, !dbg !1045, !tbaa !305
  %154 = load i16, ptr @mutmsk, align 2, !dbg !1046, !tbaa !488
  %conv285 = zext i16 %154 to i32, !dbg !1046
  %and286 = and i32 %153, %conv285, !dbg !1047
  %shr287 = ashr i32 %and286, 12, !dbg !1048
  store i32 %shr287, ptr %n283, align 4, !dbg !1044, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins288) #12, !dbg !1043
  tail call void @llvm.dbg.declare(metadata ptr %ins288, metadata !717, metadata !DIExpression()), !dbg !1049
  %arrayidx289 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 1, !dbg !1050
  %155 = load i32, ptr %arrayidx289, align 4, !dbg !1050, !tbaa !305
  %shr290 = ashr i32 %155, 4, !dbg !1051
  store i32 %shr290, ptr %ins288, align 4, !dbg !1049, !tbaa !305
  br label %while.cond291, !dbg !1052

while.cond291:                                    ; preds = %while.body294, %if.then280
  %156 = load i32, ptr %n283, align 4, !dbg !1053, !tbaa !305
  %cmp292 = icmp sgt i32 %156, 0, !dbg !1054
  br i1 %cmp292, label %while.body294, label %while.end302, !dbg !1052

while.body294:                                    ; preds = %while.cond291
  %157 = load i32, ptr %ins288, align 4, !dbg !1055, !tbaa !305
  %and295 = and i32 %157, 3, !dbg !1057
  %idxprom296 = sext i32 %and295 to i64, !dbg !1058
  %arrayidx297 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom296, !dbg !1058
  %158 = load i8, ptr %arrayidx297, align 1, !dbg !1058, !tbaa !480
  %conv298 = sext i8 %158 to i32, !dbg !1058
  %call299 = call i32 @putchar(i32 noundef %conv298), !dbg !1059
  %159 = load i32, ptr %ins288, align 4, !dbg !1060, !tbaa !305
  %shr300 = ashr i32 %159, 2, !dbg !1060
  store i32 %shr300, ptr %ins288, align 4, !dbg !1060, !tbaa !305
  %160 = load i32, ptr %n283, align 4, !dbg !1061, !tbaa !305
  %dec301 = add nsw i32 %160, -1, !dbg !1061
  store i32 %dec301, ptr %n283, align 4, !dbg !1061, !tbaa !305
  br label %while.cond291, !dbg !1052, !llvm.loop !1062

while.end302:                                     ; preds = %while.cond291
  %call303 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !1064
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins288) #12, !dbg !1065
  call void @llvm.lifetime.end.p0(i64 4, ptr %n283) #12, !dbg !1065
  br label %if.end343, !dbg !1066

if.else304:                                       ; preds = %land.lhs.true273, %if.else266
  %arrayidx305 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !1067
  %161 = load i32, ptr %arrayidx305, align 4, !dbg !1067, !tbaa !305
  %162 = load i16, ptr @mutmsk, align 2, !dbg !1068, !tbaa !488
  %conv306 = zext i16 %162 to i32, !dbg !1068
  %and307 = and i32 %161, %conv306, !dbg !1069
  %shr308 = ashr i32 %and307, 12, !dbg !1070
  %cmp309 = icmp sle i32 %shr308, 4, !dbg !1071
  br i1 %cmp309, label %if.then318, label %lor.lhs.false311, !dbg !1072

lor.lhs.false311:                                 ; preds = %if.else304
  %arrayidx312 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !1073
  %163 = load i32, ptr %arrayidx312, align 4, !dbg !1073, !tbaa !305
  %164 = load i16, ptr @mutmsk, align 2, !dbg !1074, !tbaa !488
  %conv313 = zext i16 %164 to i32, !dbg !1074
  %and314 = and i32 %163, %conv313, !dbg !1075
  %shr315 = ashr i32 %and314, 12, !dbg !1076
  %cmp316 = icmp sgt i32 %shr315, 0, !dbg !1077
  br i1 %cmp316, label %if.then318, label %if.end342, !dbg !1078

if.then318:                                       ; preds = %lor.lhs.false311, %if.else304
  %165 = load ptr, ptr %name.addr, align 8, !dbg !1079, !tbaa !401
  %166 = load i32, ptr %i, align 4, !dbg !1080, !tbaa !305
  %add319 = add nsw i32 %166, 1, !dbg !1081
  %call320 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %165, i32 noundef %add319), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 4, ptr %n321) #12, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %n321, metadata !718, metadata !DIExpression()), !dbg !1084
  %arrayidx322 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !1085
  %167 = load i32, ptr %arrayidx322, align 4, !dbg !1085, !tbaa !305
  %168 = load i16, ptr @mutmsk, align 2, !dbg !1086, !tbaa !488
  %conv323 = zext i16 %168 to i32, !dbg !1086
  %and324 = and i32 %167, %conv323, !dbg !1087
  %shr325 = ashr i32 %and324, 12, !dbg !1088
  store i32 %shr325, ptr %n321, align 4, !dbg !1084, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins326) #12, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %ins326, metadata !721, metadata !DIExpression()), !dbg !1089
  %arrayidx327 = getelementptr inbounds [3 x i32], ptr %c, i64 0, i64 2, !dbg !1090
  %169 = load i32, ptr %arrayidx327, align 4, !dbg !1090, !tbaa !305
  %shr328 = ashr i32 %169, 4, !dbg !1091
  store i32 %shr328, ptr %ins326, align 4, !dbg !1089, !tbaa !305
  br label %while.cond329, !dbg !1092

while.cond329:                                    ; preds = %while.body332, %if.then318
  %170 = load i32, ptr %n321, align 4, !dbg !1093, !tbaa !305
  %cmp330 = icmp sgt i32 %170, 0, !dbg !1094
  br i1 %cmp330, label %while.body332, label %while.end340, !dbg !1092

while.body332:                                    ; preds = %while.cond329
  %171 = load i32, ptr %ins326, align 4, !dbg !1095, !tbaa !305
  %and333 = and i32 %171, 3, !dbg !1097
  %idxprom334 = sext i32 %and333 to i64, !dbg !1098
  %arrayidx335 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom334, !dbg !1098
  %172 = load i8, ptr %arrayidx335, align 1, !dbg !1098, !tbaa !480
  %conv336 = sext i8 %172 to i32, !dbg !1098
  %call337 = call i32 @putchar(i32 noundef %conv336), !dbg !1099
  %173 = load i32, ptr %ins326, align 4, !dbg !1100, !tbaa !305
  %shr338 = ashr i32 %173, 2, !dbg !1100
  store i32 %shr338, ptr %ins326, align 4, !dbg !1100, !tbaa !305
  %174 = load i32, ptr %n321, align 4, !dbg !1101, !tbaa !305
  %dec339 = add nsw i32 %174, -1, !dbg !1101
  store i32 %dec339, ptr %n321, align 4, !dbg !1101, !tbaa !305
  br label %while.cond329, !dbg !1092, !llvm.loop !1102

while.end340:                                     ; preds = %while.cond329
  %call341 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !1104
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins326) #12, !dbg !1105
  call void @llvm.lifetime.end.p0(i64 4, ptr %n321) #12, !dbg !1105
  br label %if.end342, !dbg !1106

if.end342:                                        ; preds = %while.end340, %lor.lhs.false311
  br label %if.end343

if.end343:                                        ; preds = %if.end342, %while.end302
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.end265
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %if.end209
  br label %if.end346

if.end346:                                        ; preds = %if.end345, %if.then139
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.end126
  br label %if.end348, !dbg !1107

if.end348:                                        ; preds = %if.end347, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1108
  br label %cleanup, !dbg !1108

cleanup:                                          ; preds = %if.end348, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %c) #12, !dbg !1108
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc349
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc349, !dbg !1109

for.inc349:                                       ; preds = %cleanup.cont, %cleanup
  %175 = load i32, ptr %i, align 4, !dbg !1110, !tbaa !305
  %inc350 = add nsw i32 %175, 1, !dbg !1110
  store i32 %inc350, ptr %i, align 4, !dbg !1110, !tbaa !305
  br label %for.cond, !dbg !1111, !llvm.loop !1112

for.end351:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1114
  ret void, !dbg !1114

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1115 i32 @printf(ptr noundef, ...) #5

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putchar(i32 noundef %__c) #6 !dbg !1120 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !1125, metadata !DIExpression()), !dbg !1126
  %0 = load i32, ptr %__c.addr, align 4, !dbg !1127, !tbaa !305
  %1 = load ptr, ptr @stdout, align 8, !dbg !1128, !tbaa !401
  %call = call i32 @putc(i32 noundef %0, ptr noundef %1), !dbg !1129
  ret i32 %call, !dbg !1130
}

; Function Attrs: nounwind uwtable
define dso_local void @wgsim_core(ptr noundef %fpout1, ptr noundef %fpout2, ptr noundef %fn, i32 noundef %is_hap, i64 noundef %N, i32 noundef %dist, i32 noundef %std_dev, i32 noundef %size_l, i32 noundef %size_r) #0 !dbg !1131 {
entry:
  %fpout1.addr = alloca ptr, align 8
  %fpout2.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %is_hap.addr = alloca i32, align 4
  %N.addr = alloca i64, align 8
  %dist.addr = alloca i32, align 4
  %std_dev.addr = alloca i32, align 4
  %size_l.addr = alloca i32, align 4
  %size_r.addr = alloca i32, align 4
  %ks = alloca ptr, align 8
  %rseq = alloca [2 x %struct.mutseq_t], align 16
  %fp_fa = alloca ptr, align 8
  %tot_len = alloca i64, align 8
  %ii = alloca i64, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %n_ref = alloca i32, align 4
  %qstr = alloca ptr, align 8
  %size = alloca [2 x i32], align 4
  %Q = alloca i32, align 4
  %max_size = alloca i32, align 4
  %tmp_seq = alloca [2 x ptr], align 16
  %target = alloca ptr, align 8
  %max_loop = alloca i32, align 4
  %max_loop_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n_pairs = alloca i64, align 8
  %ran = alloca double, align 8
  %d = alloca i32, align 4
  %pos = alloca i32, align 4
  %s71 = alloca [2 x i32], align 4
  %is_flip = alloca i32, align 4
  %n_sub = alloca [2 x i32], align 4
  %n_indel = alloca [2 x i32], align 4
  %n_err = alloca [2 x i32], align 4
  %ext_coor = alloca [2 x i32], align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fpo = alloca [2 x ptr], align 16
  %c = alloca i32, align 4
  %mut_type = alloca i32, align 4
  %n = alloca i32, align 4
  %ins = alloca i32, align 4
  %c241 = alloca i32, align 4
  %mut_type245 = alloca i32, align 4
  %n286 = alloca i32, align 4
  %ins287 = alloca i32, align 4
  %n_n = alloca i32, align 4
  %c379 = alloca i32, align 4
  store ptr %fpout1, ptr %fpout1.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %fpout1.addr, metadata !1187, metadata !DIExpression()), !dbg !1262
  store ptr %fpout2, ptr %fpout2.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %fpout2.addr, metadata !1188, metadata !DIExpression()), !dbg !1263
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1189, metadata !DIExpression()), !dbg !1264
  store i32 %is_hap, ptr %is_hap.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %is_hap.addr, metadata !1190, metadata !DIExpression()), !dbg !1265
  store i64 %N, ptr %N.addr, align 8, !tbaa !1266
  tail call void @llvm.dbg.declare(metadata ptr %N.addr, metadata !1191, metadata !DIExpression()), !dbg !1267
  store i32 %dist, ptr %dist.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !1192, metadata !DIExpression()), !dbg !1268
  store i32 %std_dev, ptr %std_dev.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %std_dev.addr, metadata !1193, metadata !DIExpression()), !dbg !1269
  store i32 %size_l, ptr %size_l.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %size_l.addr, metadata !1194, metadata !DIExpression()), !dbg !1270
  store i32 %size_r, ptr %size_r.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %size_r.addr, metadata !1195, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %ks) #12, !dbg !1272
  tail call void @llvm.dbg.declare(metadata ptr %ks, metadata !1196, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 32, ptr %rseq) #12, !dbg !1274
  tail call void @llvm.dbg.declare(metadata ptr %rseq, metadata !1197, metadata !DIExpression()), !dbg !1275
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_fa) #12, !dbg !1276
  tail call void @llvm.dbg.declare(metadata ptr %fp_fa, metadata !1199, metadata !DIExpression()), !dbg !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_len) #12, !dbg !1278
  tail call void @llvm.dbg.declare(metadata ptr %tot_len, metadata !1200, metadata !DIExpression()), !dbg !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #12, !dbg !1278
  tail call void @llvm.dbg.declare(metadata ptr %ii, metadata !1201, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1281
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1202, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #12, !dbg !1281
  tail call void @llvm.dbg.declare(metadata ptr %l, metadata !1203, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ref) #12, !dbg !1281
  tail call void @llvm.dbg.declare(metadata ptr %n_ref, metadata !1204, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 8, ptr %qstr) #12, !dbg !1285
  tail call void @llvm.dbg.declare(metadata ptr %qstr, metadata !1205, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !1287
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1206, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q) #12, !dbg !1287
  tail call void @llvm.dbg.declare(metadata ptr %Q, metadata !1208, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_size) #12, !dbg !1287
  tail call void @llvm.dbg.declare(metadata ptr %max_size, metadata !1209, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_seq) #12, !dbg !1291
  tail call void @llvm.dbg.declare(metadata ptr %tmp_seq, metadata !1210, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #12, !dbg !1293
  tail call void @llvm.dbg.declare(metadata ptr %target, metadata !1212, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_loop) #12, !dbg !1295
  tail call void @llvm.dbg.declare(metadata ptr %max_loop, metadata !1213, metadata !DIExpression()), !dbg !1296
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_loop_err) #12, !dbg !1295
  tail call void @llvm.dbg.declare(metadata ptr %max_loop_err, metadata !1214, metadata !DIExpression()), !dbg !1297
  store i32 0, ptr %max_loop_err, align 4, !dbg !1297, !tbaa !305
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !1298, !tbaa !401
  %call = call ptr @gzopen(ptr noundef %0, ptr noundef @.str.9), !dbg !1299
  store ptr %call, ptr %fp_fa, align 8, !dbg !1300, !tbaa !401
  %1 = load ptr, ptr %fp_fa, align 8, !dbg !1301, !tbaa !401
  %cmp = icmp eq ptr %1, null, !dbg !1303
  br i1 %cmp, label %if.then, label %if.end, !dbg !1304

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !1305, !tbaa !401
  %3 = load ptr, ptr %fn.addr, align 8, !dbg !1307, !tbaa !401
  %call1 = call ptr @__errno_location() #14, !dbg !1308
  %4 = load i32, ptr %call1, align 4, !dbg !1308, !tbaa !305
  %call2 = call ptr @strerror(i32 noundef %4) #12, !dbg !1309
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.10, ptr noundef %3, ptr noundef %call2), !dbg !1310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup530, !dbg !1311

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %size_l.addr, align 4, !dbg !1312, !tbaa !305
  %6 = load i32, ptr %size_r.addr, align 4, !dbg !1313, !tbaa !305
  %cmp4 = icmp sgt i32 %5, %6, !dbg !1314
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !1312

cond.true:                                        ; preds = %if.end
  %7 = load i32, ptr %size_l.addr, align 4, !dbg !1315, !tbaa !305
  br label %cond.end, !dbg !1312

cond.false:                                       ; preds = %if.end
  %8 = load i32, ptr %size_r.addr, align 4, !dbg !1316, !tbaa !305
  br label %cond.end, !dbg !1312

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !1312
  store i32 %cond, ptr %l, align 4, !dbg !1317, !tbaa !305
  %9 = load i32, ptr %l, align 4, !dbg !1318, !tbaa !305
  %add = add nsw i32 %9, 1, !dbg !1319
  %conv = sext i32 %add to i64, !dbg !1318
  %call5 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 1) #13, !dbg !1320
  store ptr %call5, ptr %qstr, align 8, !dbg !1321, !tbaa !401
  %10 = load i32, ptr %l, align 4, !dbg !1322, !tbaa !305
  %add6 = add nsw i32 %10, 2, !dbg !1323
  %conv7 = sext i32 %add6 to i64, !dbg !1322
  %call8 = call noalias ptr @calloc(i64 noundef %conv7, i64 noundef 1) #13, !dbg !1324
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 0, !dbg !1325
  store ptr %call8, ptr %arrayidx, align 16, !dbg !1326, !tbaa !401
  %11 = load i32, ptr %l, align 4, !dbg !1327, !tbaa !305
  %add9 = add nsw i32 %11, 2, !dbg !1328
  %conv10 = sext i32 %add9 to i64, !dbg !1327
  %call11 = call noalias ptr @calloc(i64 noundef %conv10, i64 noundef 1) #13, !dbg !1329
  %arrayidx12 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1330
  store ptr %call11, ptr %arrayidx12, align 8, !dbg !1331, !tbaa !401
  %12 = load i32, ptr %size_l.addr, align 4, !dbg !1332, !tbaa !305
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %size, i64 0, i64 0, !dbg !1333
  store i32 %12, ptr %arrayidx13, align 4, !dbg !1334, !tbaa !305
  %13 = load i32, ptr %size_r.addr, align 4, !dbg !1335, !tbaa !305
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %size, i64 0, i64 1, !dbg !1336
  store i32 %13, ptr %arrayidx14, align 4, !dbg !1337, !tbaa !305
  %14 = load i32, ptr %size_l.addr, align 4, !dbg !1338, !tbaa !305
  %15 = load i32, ptr %size_r.addr, align 4, !dbg !1339, !tbaa !305
  %cmp15 = icmp sgt i32 %14, %15, !dbg !1340
  br i1 %cmp15, label %cond.true17, label %cond.false18, !dbg !1338

cond.true17:                                      ; preds = %cond.end
  %16 = load i32, ptr %size_l.addr, align 4, !dbg !1341, !tbaa !305
  br label %cond.end19, !dbg !1338

cond.false18:                                     ; preds = %cond.end
  %17 = load i32, ptr %size_r.addr, align 4, !dbg !1342, !tbaa !305
  br label %cond.end19, !dbg !1338

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ %16, %cond.true17 ], [ %17, %cond.false18 ], !dbg !1338
  store i32 %cond20, ptr %max_size, align 4, !dbg !1343, !tbaa !305
  %18 = load double, ptr @ERR_RATE, align 8, !dbg !1344, !tbaa !317
  %cmp21 = fcmp oeq double %18, 0.000000e+00, !dbg !1345
  br i1 %cmp21, label %cond.true23, label %cond.false24, !dbg !1346

cond.true23:                                      ; preds = %cond.end19
  br label %cond.end30, !dbg !1346

cond.false24:                                     ; preds = %cond.end19
  %19 = load double, ptr @ERR_RATE, align 8, !dbg !1347, !tbaa !317
  %call25 = call double @log(double noundef %19) #12, !dbg !1348
  %mul = fmul double -1.000000e+01, %call25, !dbg !1349
  %call26 = call double @log(double noundef 1.000000e+01) #12, !dbg !1350
  %div = fdiv double %mul, %call26, !dbg !1351
  %add27 = fadd double %div, 4.990000e-01, !dbg !1352
  %conv28 = fptosi double %add27 to i32, !dbg !1353
  %add29 = add nsw i32 %conv28, 33, !dbg !1354
  br label %cond.end30, !dbg !1346

cond.end30:                                       ; preds = %cond.false24, %cond.true23
  %cond31 = phi i32 [ 73, %cond.true23 ], [ %add29, %cond.false24 ], !dbg !1346
  store i32 %cond31, ptr %Q, align 4, !dbg !1355, !tbaa !305
  %20 = load ptr, ptr %fp_fa, align 8, !dbg !1356, !tbaa !401
  %call32 = call ptr @kseq_init(ptr noundef %20), !dbg !1357
  store ptr %call32, ptr %ks, align 8, !dbg !1358, !tbaa !401
  store i32 0, ptr %n_ref, align 4, !dbg !1359, !tbaa !305
  store i64 0, ptr %tot_len, align 8, !dbg !1360, !tbaa !1266
  %21 = load ptr, ptr @stderr, align 8, !dbg !1361, !tbaa !401
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.11, ptr noundef @__func__.wgsim_core), !dbg !1362
  br label %while.cond, !dbg !1363

while.cond:                                       ; preds = %while.body, %cond.end30
  %22 = load ptr, ptr %ks, align 8, !dbg !1364, !tbaa !401
  %call34 = call i32 @kseq_read(ptr noundef %22), !dbg !1365
  store i32 %call34, ptr %l, align 4, !dbg !1366, !tbaa !305
  %cmp35 = icmp sge i32 %call34, 0, !dbg !1367
  br i1 %cmp35, label %while.body, label %while.end, !dbg !1363

while.body:                                       ; preds = %while.cond
  %23 = load i32, ptr %l, align 4, !dbg !1368, !tbaa !305
  %conv37 = sext i32 %23 to i64, !dbg !1368
  %24 = load i64, ptr %tot_len, align 8, !dbg !1370, !tbaa !1266
  %add38 = add i64 %24, %conv37, !dbg !1370
  store i64 %add38, ptr %tot_len, align 8, !dbg !1370, !tbaa !1266
  %25 = load i32, ptr %n_ref, align 4, !dbg !1371, !tbaa !305
  %inc = add nsw i32 %25, 1, !dbg !1371
  store i32 %inc, ptr %n_ref, align 4, !dbg !1371, !tbaa !305
  br label %while.cond, !dbg !1363, !llvm.loop !1372

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr @stderr, align 8, !dbg !1374, !tbaa !401
  %27 = load i32, ptr %n_ref, align 4, !dbg !1375, !tbaa !305
  %28 = load i64, ptr %tot_len, align 8, !dbg !1376, !tbaa !1266
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.12, ptr noundef @__func__.wgsim_core, i32 noundef %27, i64 noundef %28), !dbg !1377
  %29 = load ptr, ptr %ks, align 8, !dbg !1378, !tbaa !401
  call void @kseq_destroy(ptr noundef %29), !dbg !1379
  %30 = load ptr, ptr %fp_fa, align 8, !dbg !1380, !tbaa !401
  %call40 = call i32 @gzclose(ptr noundef %30), !dbg !1381
  %31 = load ptr, ptr %fn.addr, align 8, !dbg !1382, !tbaa !401
  %call41 = call ptr @gzopen(ptr noundef %31, ptr noundef @.str.9), !dbg !1383
  store ptr %call41, ptr %fp_fa, align 8, !dbg !1384, !tbaa !401
  %32 = load ptr, ptr %fp_fa, align 8, !dbg !1385, !tbaa !401
  %call42 = call ptr @kseq_init(ptr noundef %32), !dbg !1386
  store ptr %call42, ptr %ks, align 8, !dbg !1387, !tbaa !401
  br label %while.cond43, !dbg !1388

while.cond43:                                     ; preds = %cleanup.cont525, %cleanup523, %while.end
  %33 = load ptr, ptr %ks, align 8, !dbg !1389, !tbaa !401
  %call44 = call i32 @kseq_read(ptr noundef %33), !dbg !1390
  store i32 %call44, ptr %l, align 4, !dbg !1391, !tbaa !305
  %cmp45 = icmp sge i32 %call44, 0, !dbg !1392
  br i1 %cmp45, label %while.body47, label %while.end526, !dbg !1388

while.body47:                                     ; preds = %while.cond43
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_pairs) #12, !dbg !1393
  tail call void @llvm.dbg.declare(metadata ptr %n_pairs, metadata !1215, metadata !DIExpression()), !dbg !1394
  %34 = load i32, ptr %l, align 4, !dbg !1395, !tbaa !305
  %conv48 = sitofp i32 %34 to x86_fp80, !dbg !1396
  %35 = load i64, ptr %tot_len, align 8, !dbg !1397, !tbaa !1266
  %conv49 = uitofp i64 %35 to x86_fp80, !dbg !1397
  %div50 = fdiv x86_fp80 %conv48, %conv49, !dbg !1398
  %36 = load i64, ptr %N.addr, align 8, !dbg !1399, !tbaa !1266
  %conv51 = uitofp i64 %36 to x86_fp80, !dbg !1399
  %37 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %div50, x86_fp80 %conv51, x86_fp80 0xK3FFE8000000000000000), !dbg !1400
  %conv53 = fptoui x86_fp80 %37 to i64, !dbg !1401
  store i64 %conv53, ptr %n_pairs, align 8, !dbg !1394, !tbaa !1266
  %38 = load i32, ptr %l, align 4, !dbg !1402, !tbaa !305
  %39 = load i32, ptr %dist.addr, align 4, !dbg !1404, !tbaa !305
  %40 = load i32, ptr %std_dev.addr, align 4, !dbg !1405, !tbaa !305
  %mul54 = mul nsw i32 3, %40, !dbg !1406
  %add55 = add nsw i32 %39, %mul54, !dbg !1407
  %cmp56 = icmp slt i32 %38, %add55, !dbg !1408
  br i1 %cmp56, label %if.then58, label %if.end62, !dbg !1409

if.then58:                                        ; preds = %while.body47
  %41 = load ptr, ptr @stderr, align 8, !dbg !1410, !tbaa !401
  %42 = load ptr, ptr %ks, align 8, !dbg !1412, !tbaa !401
  %name = getelementptr inbounds %struct.kseq_t, ptr %42, i32 0, i32 0, !dbg !1413
  %s = getelementptr inbounds %struct.kstring_t, ptr %name, i32 0, i32 2, !dbg !1414
  %43 = load ptr, ptr %s, align 8, !dbg !1414, !tbaa !1415
  %44 = load i32, ptr %dist.addr, align 4, !dbg !1416, !tbaa !305
  %45 = load i32, ptr %std_dev.addr, align 4, !dbg !1417, !tbaa !305
  %mul59 = mul nsw i32 3, %45, !dbg !1418
  %add60 = add nsw i32 %44, %mul59, !dbg !1419
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.13, ptr noundef @__func__.wgsim_core, ptr noundef %43, i32 noundef %add60), !dbg !1420
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup523, !dbg !1421, !llvm.loop !1422

if.end62:                                         ; preds = %while.body47
  %46 = load ptr, ptr %ks, align 8, !dbg !1424, !tbaa !401
  %47 = load i32, ptr %is_hap.addr, align 4, !dbg !1425, !tbaa !305
  %arraydecay = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 0, !dbg !1426
  %arraydecay63 = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 0, !dbg !1427
  %add.ptr = getelementptr inbounds %struct.mutseq_t, ptr %arraydecay63, i64 1, !dbg !1428
  call void @wgsim_mut_diref(ptr noundef %46, i32 noundef %47, ptr noundef %arraydecay, ptr noundef %add.ptr), !dbg !1429
  %48 = load ptr, ptr %ks, align 8, !dbg !1430, !tbaa !401
  %name64 = getelementptr inbounds %struct.kseq_t, ptr %48, i32 0, i32 0, !dbg !1431
  %s65 = getelementptr inbounds %struct.kstring_t, ptr %name64, i32 0, i32 2, !dbg !1432
  %49 = load ptr, ptr %s65, align 8, !dbg !1432, !tbaa !1415
  %50 = load ptr, ptr %ks, align 8, !dbg !1433, !tbaa !401
  %arraydecay66 = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 0, !dbg !1434
  %arraydecay67 = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 0, !dbg !1435
  %add.ptr68 = getelementptr inbounds %struct.mutseq_t, ptr %arraydecay67, i64 1, !dbg !1436
  call void @wgsim_print_mutref(ptr noundef %49, ptr noundef %50, ptr noundef %arraydecay66, ptr noundef %add.ptr68), !dbg !1437
  store i64 0, ptr %ii, align 8, !dbg !1438, !tbaa !1266
  br label %for.cond, !dbg !1439

for.cond:                                         ; preds = %for.inc516, %if.end62
  store i32 1000, ptr %max_loop, align 4, !dbg !1440, !tbaa !305
  %51 = load i64, ptr %ii, align 8, !dbg !1441, !tbaa !1266
  %52 = load i64, ptr %n_pairs, align 8, !dbg !1442, !tbaa !1266
  %cmp69 = icmp ne i64 %51, %52, !dbg !1443
  br i1 %cmp69, label %for.body, label %for.end518, !dbg !1444

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ran) #12, !dbg !1445
  tail call void @llvm.dbg.declare(metadata ptr %ran, metadata !1217, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #12, !dbg !1447
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !1221, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #12, !dbg !1447
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !1222, metadata !DIExpression()), !dbg !1449
  call void @llvm.lifetime.start.p0(i64 8, ptr %s71) #12, !dbg !1447
  tail call void @llvm.dbg.declare(metadata ptr %s71, metadata !1223, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_flip) #12, !dbg !1447
  tail call void @llvm.dbg.declare(metadata ptr %is_flip, metadata !1224, metadata !DIExpression()), !dbg !1451
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_sub) #12, !dbg !1452
  tail call void @llvm.dbg.declare(metadata ptr %n_sub, metadata !1225, metadata !DIExpression()), !dbg !1453
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_indel) #12, !dbg !1452
  tail call void @llvm.dbg.declare(metadata ptr %n_indel, metadata !1226, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_err) #12, !dbg !1452
  tail call void @llvm.dbg.declare(metadata ptr %n_err, metadata !1227, metadata !DIExpression()), !dbg !1455
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_coor) #12, !dbg !1452
  tail call void @llvm.dbg.declare(metadata ptr %ext_coor, metadata !1228, metadata !DIExpression()), !dbg !1456
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1452
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1229, metadata !DIExpression()), !dbg !1457
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12, !dbg !1452
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !1230, metadata !DIExpression()), !dbg !1458
  call void @llvm.lifetime.start.p0(i64 16, ptr %fpo) #12, !dbg !1459
  tail call void @llvm.dbg.declare(metadata ptr %fpo, metadata !1231, metadata !DIExpression()), !dbg !1460
  br label %try_again, !dbg !1459

try_again:                                        ; preds = %if.then428, %for.body
  tail call void @llvm.dbg.label(metadata !1233), !dbg !1461
  store i32 0, ptr %is_flip, align 4, !dbg !1462, !tbaa !305
  br label %do.body, !dbg !1463

do.body:                                          ; preds = %lor.end, %try_again
  %call72 = call double @ran_normal(), !dbg !1464
  store double %call72, ptr %ran, align 8, !dbg !1466, !tbaa !317
  %53 = load double, ptr %ran, align 8, !dbg !1467, !tbaa !317
  %54 = load i32, ptr %std_dev.addr, align 4, !dbg !1468, !tbaa !305
  %conv73 = sitofp i32 %54 to double, !dbg !1468
  %55 = load i32, ptr %dist.addr, align 4, !dbg !1469, !tbaa !305
  %conv75 = sitofp i32 %55 to double, !dbg !1469
  %56 = call double @llvm.fmuladd.f64(double %53, double %conv73, double %conv75), !dbg !1470
  store double %56, ptr %ran, align 8, !dbg !1471, !tbaa !317
  %57 = load double, ptr %ran, align 8, !dbg !1472, !tbaa !317
  %add76 = fadd double %57, 5.000000e-01, !dbg !1473
  %conv77 = fptosi double %add76 to i32, !dbg !1474
  store i32 %conv77, ptr %d, align 4, !dbg !1475, !tbaa !305
  %58 = load i32, ptr %d, align 4, !dbg !1476, !tbaa !305
  %59 = load i32, ptr %max_size, align 4, !dbg !1477, !tbaa !305
  %cmp78 = icmp sgt i32 %58, %59, !dbg !1478
  br i1 %cmp78, label %cond.true80, label %cond.false81, !dbg !1476

cond.true80:                                      ; preds = %do.body
  %60 = load i32, ptr %d, align 4, !dbg !1479, !tbaa !305
  br label %cond.end82, !dbg !1476

cond.false81:                                     ; preds = %do.body
  %61 = load i32, ptr %max_size, align 4, !dbg !1480, !tbaa !305
  br label %cond.end82, !dbg !1476

cond.end82:                                       ; preds = %cond.false81, %cond.true80
  %cond83 = phi i32 [ %60, %cond.true80 ], [ %61, %cond.false81 ], !dbg !1476
  store i32 %cond83, ptr %d, align 4, !dbg !1481, !tbaa !305
  %62 = load i32, ptr %l, align 4, !dbg !1482, !tbaa !305
  %63 = load i32, ptr %d, align 4, !dbg !1483, !tbaa !305
  %sub = sub nsw i32 %62, %63, !dbg !1484
  %add84 = add nsw i32 %sub, 1, !dbg !1485
  %conv85 = sitofp i32 %add84 to double, !dbg !1486
  %call86 = call double @drand48() #12, !dbg !1487
  %mul87 = fmul double %conv85, %call86, !dbg !1488
  %conv88 = fptosi double %mul87 to i32, !dbg !1489
  store i32 %conv88, ptr %pos, align 4, !dbg !1490, !tbaa !305
  br label %do.cond, !dbg !1491

do.cond:                                          ; preds = %cond.end82
  %64 = load i32, ptr %pos, align 4, !dbg !1492, !tbaa !305
  %cmp89 = icmp slt i32 %64, 0, !dbg !1493
  br i1 %cmp89, label %lor.end, label %lor.lhs.false, !dbg !1494

lor.lhs.false:                                    ; preds = %do.cond
  %65 = load i32, ptr %pos, align 4, !dbg !1495, !tbaa !305
  %conv91 = sext i32 %65 to i64, !dbg !1495
  %66 = load ptr, ptr %ks, align 8, !dbg !1496, !tbaa !401
  %seq = getelementptr inbounds %struct.kseq_t, ptr %66, i32 0, i32 2, !dbg !1497
  %l92 = getelementptr inbounds %struct.kstring_t, ptr %seq, i32 0, i32 0, !dbg !1498
  %67 = load i64, ptr %l92, align 8, !dbg !1498, !tbaa !421
  %cmp93 = icmp uge i64 %conv91, %67, !dbg !1499
  br i1 %cmp93, label %lor.end, label %lor.rhs, !dbg !1500

lor.rhs:                                          ; preds = %lor.lhs.false
  %68 = load i32, ptr %pos, align 4, !dbg !1501, !tbaa !305
  %69 = load i32, ptr %d, align 4, !dbg !1502, !tbaa !305
  %add95 = add nsw i32 %68, %69, !dbg !1503
  %sub96 = sub nsw i32 %add95, 1, !dbg !1504
  %conv97 = sext i32 %sub96 to i64, !dbg !1501
  %70 = load ptr, ptr %ks, align 8, !dbg !1505, !tbaa !401
  %seq98 = getelementptr inbounds %struct.kseq_t, ptr %70, i32 0, i32 2, !dbg !1506
  %l99 = getelementptr inbounds %struct.kstring_t, ptr %seq98, i32 0, i32 0, !dbg !1507
  %71 = load i64, ptr %l99, align 8, !dbg !1507, !tbaa !421
  %cmp100 = icmp uge i64 %conv97, %71, !dbg !1508
  br label %lor.end, !dbg !1500

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %72 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp100, %lor.rhs ]
  br i1 %72, label %do.body, label %do.end, !dbg !1491, !llvm.loop !1509

do.end:                                           ; preds = %lor.end
  %call102 = call double @drand48() #12, !dbg !1511
  %cmp103 = fcmp olt double %call102, 5.000000e-01, !dbg !1513
  br i1 %cmp103, label %if.then105, label %if.else, !dbg !1514

if.then105:                                       ; preds = %do.end
  %73 = load ptr, ptr %fpout1.addr, align 8, !dbg !1515, !tbaa !401
  %arrayidx106 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 0, !dbg !1517
  store ptr %73, ptr %arrayidx106, align 16, !dbg !1518, !tbaa !401
  %74 = load ptr, ptr %fpout2.addr, align 8, !dbg !1519, !tbaa !401
  %arrayidx107 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 1, !dbg !1520
  store ptr %74, ptr %arrayidx107, align 8, !dbg !1521, !tbaa !401
  %arrayidx108 = getelementptr inbounds [2 x i32], ptr %size, i64 0, i64 0, !dbg !1522
  %75 = load i32, ptr %arrayidx108, align 4, !dbg !1522, !tbaa !305
  %arrayidx109 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 0, !dbg !1523
  store i32 %75, ptr %arrayidx109, align 4, !dbg !1524, !tbaa !305
  %arrayidx110 = getelementptr inbounds [2 x i32], ptr %size, i64 0, i64 1, !dbg !1525
  %76 = load i32, ptr %arrayidx110, align 4, !dbg !1525, !tbaa !305
  %arrayidx111 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 1, !dbg !1526
  store i32 %76, ptr %arrayidx111, align 4, !dbg !1527, !tbaa !305
  br label %if.end118, !dbg !1528

if.else:                                          ; preds = %do.end
  %77 = load ptr, ptr %fpout1.addr, align 8, !dbg !1529, !tbaa !401
  %arrayidx112 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 1, !dbg !1531
  store ptr %77, ptr %arrayidx112, align 8, !dbg !1532, !tbaa !401
  %78 = load ptr, ptr %fpout2.addr, align 8, !dbg !1533, !tbaa !401
  %arrayidx113 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 0, !dbg !1534
  store ptr %78, ptr %arrayidx113, align 16, !dbg !1535, !tbaa !401
  %arrayidx114 = getelementptr inbounds [2 x i32], ptr %size, i64 0, i64 0, !dbg !1536
  %79 = load i32, ptr %arrayidx114, align 4, !dbg !1536, !tbaa !305
  %arrayidx115 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 1, !dbg !1537
  store i32 %79, ptr %arrayidx115, align 4, !dbg !1538, !tbaa !305
  %arrayidx116 = getelementptr inbounds [2 x i32], ptr %size, i64 0, i64 1, !dbg !1539
  %80 = load i32, ptr %arrayidx116, align 4, !dbg !1539, !tbaa !305
  %arrayidx117 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 0, !dbg !1540
  store i32 %80, ptr %arrayidx117, align 4, !dbg !1541, !tbaa !305
  store i32 1, ptr %is_flip, align 4, !dbg !1542, !tbaa !305
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then105
  %call119 = call double @drand48() #12, !dbg !1543
  %cmp120 = fcmp olt double %call119, 5.000000e-01, !dbg !1544
  %81 = zext i1 %cmp120 to i64, !dbg !1543
  %cond122 = select i1 %cmp120, i32 0, i32 1, !dbg !1543
  %idxprom = sext i32 %cond122 to i64, !dbg !1545
  %arrayidx123 = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 %idxprom, !dbg !1545
  %s124 = getelementptr inbounds %struct.mutseq_t, ptr %arrayidx123, i32 0, i32 2, !dbg !1546
  %82 = load ptr, ptr %s124, align 8, !dbg !1546, !tbaa !457
  store ptr %82, ptr %target, align 8, !dbg !1547, !tbaa !401
  %arrayidx125 = getelementptr inbounds [2 x i32], ptr %n_err, i64 0, i64 1, !dbg !1548
  store i32 0, ptr %arrayidx125, align 4, !dbg !1549, !tbaa !305
  %arrayidx126 = getelementptr inbounds [2 x i32], ptr %n_err, i64 0, i64 0, !dbg !1550
  store i32 0, ptr %arrayidx126, align 4, !dbg !1551, !tbaa !305
  %arrayidx127 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 1, !dbg !1552
  store i32 0, ptr %arrayidx127, align 4, !dbg !1553, !tbaa !305
  %arrayidx128 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 0, !dbg !1554
  store i32 0, ptr %arrayidx128, align 4, !dbg !1555, !tbaa !305
  %arrayidx129 = getelementptr inbounds [2 x i32], ptr %n_sub, i64 0, i64 1, !dbg !1556
  store i32 0, ptr %arrayidx129, align 4, !dbg !1557, !tbaa !305
  %arrayidx130 = getelementptr inbounds [2 x i32], ptr %n_sub, i64 0, i64 0, !dbg !1558
  store i32 0, ptr %arrayidx130, align 4, !dbg !1559, !tbaa !305
  %83 = load i32, ptr %pos, align 4, !dbg !1560, !tbaa !305
  store i32 %83, ptr %i, align 4, !dbg !1561, !tbaa !305
  store i32 0, ptr %k, align 4, !dbg !1562, !tbaa !305
  %arrayidx131 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 0, !dbg !1563
  store i32 -10, ptr %arrayidx131, align 4, !dbg !1564, !tbaa !305
  br label %for.cond132, !dbg !1565

for.cond132:                                      ; preds = %for.inc214, %if.end118
  %84 = load i32, ptr %i, align 4, !dbg !1566, !tbaa !305
  %cmp133 = icmp sge i32 %84, 0, !dbg !1567
  br i1 %cmp133, label %land.lhs.true, label %land.end, !dbg !1568

land.lhs.true:                                    ; preds = %for.cond132
  %85 = load i32, ptr %i, align 4, !dbg !1569, !tbaa !305
  %conv135 = sext i32 %85 to i64, !dbg !1569
  %86 = load ptr, ptr %ks, align 8, !dbg !1570, !tbaa !401
  %seq136 = getelementptr inbounds %struct.kseq_t, ptr %86, i32 0, i32 2, !dbg !1571
  %l137 = getelementptr inbounds %struct.kstring_t, ptr %seq136, i32 0, i32 0, !dbg !1572
  %87 = load i64, ptr %l137, align 8, !dbg !1572, !tbaa !421
  %cmp138 = icmp ult i64 %conv135, %87, !dbg !1573
  br i1 %cmp138, label %land.rhs, label %land.end, !dbg !1574

land.rhs:                                         ; preds = %land.lhs.true
  %88 = load i32, ptr %k, align 4, !dbg !1575, !tbaa !305
  %arrayidx140 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 0, !dbg !1576
  %89 = load i32, ptr %arrayidx140, align 4, !dbg !1576, !tbaa !305
  %cmp141 = icmp slt i32 %88, %89, !dbg !1577
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond132
  %90 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond132 ], [ %cmp141, %land.rhs ], !dbg !1578
  br i1 %90, label %for.body143, label %for.end216, !dbg !1579

for.body143:                                      ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !1580
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1234, metadata !DIExpression()), !dbg !1581
  %91 = load ptr, ptr %target, align 8, !dbg !1582, !tbaa !401
  %92 = load i32, ptr %i, align 4, !dbg !1583, !tbaa !305
  %idxprom144 = sext i32 %92 to i64, !dbg !1582
  %arrayidx145 = getelementptr inbounds i16, ptr %91, i64 %idxprom144, !dbg !1582
  %93 = load i16, ptr %arrayidx145, align 2, !dbg !1582, !tbaa !488
  %conv146 = zext i16 %93 to i32, !dbg !1582
  store i32 %conv146, ptr %c, align 4, !dbg !1581, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %mut_type) #12, !dbg !1580
  tail call void @llvm.dbg.declare(metadata ptr %mut_type, metadata !1238, metadata !DIExpression()), !dbg !1584
  %94 = load i32, ptr %c, align 4, !dbg !1585, !tbaa !305
  %95 = load i16, ptr @mutmsk, align 2, !dbg !1586, !tbaa !488
  %conv147 = zext i16 %95 to i32, !dbg !1586
  %and = and i32 %94, %conv147, !dbg !1587
  store i32 %and, ptr %mut_type, align 4, !dbg !1584, !tbaa !305
  %arrayidx148 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 0, !dbg !1588
  %96 = load i32, ptr %arrayidx148, align 4, !dbg !1588, !tbaa !305
  %cmp149 = icmp slt i32 %96, 0, !dbg !1590
  br i1 %cmp149, label %if.then151, label %if.end160, !dbg !1591

if.then151:                                       ; preds = %for.body143
  %97 = load i32, ptr %mut_type, align 4, !dbg !1592, !tbaa !305
  %cmp152 = icmp ne i32 %97, 0, !dbg !1595
  br i1 %cmp152, label %land.lhs.true154, label %if.end158, !dbg !1596

land.lhs.true154:                                 ; preds = %if.then151
  %98 = load i32, ptr %mut_type, align 4, !dbg !1597, !tbaa !305
  %cmp155 = icmp ne i32 %98, 57344, !dbg !1598
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !1599

if.then157:                                       ; preds = %land.lhs.true154
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1600

if.end158:                                        ; preds = %land.lhs.true154, %if.then151
  %99 = load i32, ptr %i, align 4, !dbg !1601, !tbaa !305
  %arrayidx159 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 0, !dbg !1602
  store i32 %99, ptr %arrayidx159, align 4, !dbg !1603, !tbaa !305
  br label %if.end160, !dbg !1604

if.end160:                                        ; preds = %if.end158, %for.body143
  %100 = load i32, ptr %mut_type, align 4, !dbg !1605, !tbaa !305
  %cmp161 = icmp eq i32 %100, 61440, !dbg !1606
  br i1 %cmp161, label %if.then163, label %if.else166, !dbg !1607

if.then163:                                       ; preds = %if.end160
  %arrayidx164 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 0, !dbg !1608
  %101 = load i32, ptr %arrayidx164, align 4, !dbg !1609, !tbaa !305
  %inc165 = add nsw i32 %101, 1, !dbg !1609
  store i32 %inc165, ptr %arrayidx164, align 4, !dbg !1609, !tbaa !305
  br label %if.end212, !dbg !1609

if.else166:                                       ; preds = %if.end160
  %102 = load i32, ptr %mut_type, align 4, !dbg !1610, !tbaa !305
  %cmp167 = icmp eq i32 %102, 0, !dbg !1611
  br i1 %cmp167, label %if.then172, label %lor.lhs.false169, !dbg !1612

lor.lhs.false169:                                 ; preds = %if.else166
  %103 = load i32, ptr %mut_type, align 4, !dbg !1613, !tbaa !305
  %cmp170 = icmp eq i32 %103, 57344, !dbg !1614
  br i1 %cmp170, label %if.then172, label %if.else185, !dbg !1615

if.then172:                                       ; preds = %lor.lhs.false169, %if.else166
  %104 = load i32, ptr %c, align 4, !dbg !1616, !tbaa !305
  %and173 = and i32 %104, 15, !dbg !1618
  %conv174 = trunc i32 %and173 to i8, !dbg !1616
  %arrayidx175 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 0, !dbg !1619
  %105 = load ptr, ptr %arrayidx175, align 16, !dbg !1619, !tbaa !401
  %106 = load i32, ptr %k, align 4, !dbg !1620, !tbaa !305
  %inc176 = add nsw i32 %106, 1, !dbg !1620
  store i32 %inc176, ptr %k, align 4, !dbg !1620, !tbaa !305
  %idxprom177 = sext i32 %106 to i64, !dbg !1619
  %arrayidx178 = getelementptr inbounds i8, ptr %105, i64 %idxprom177, !dbg !1619
  store i8 %conv174, ptr %arrayidx178, align 1, !dbg !1621, !tbaa !480
  %107 = load i32, ptr %mut_type, align 4, !dbg !1622, !tbaa !305
  %cmp179 = icmp eq i32 %107, 57344, !dbg !1624
  br i1 %cmp179, label %if.then181, label %if.end184, !dbg !1625

if.then181:                                       ; preds = %if.then172
  %arrayidx182 = getelementptr inbounds [2 x i32], ptr %n_sub, i64 0, i64 0, !dbg !1626
  %108 = load i32, ptr %arrayidx182, align 4, !dbg !1627, !tbaa !305
  %inc183 = add nsw i32 %108, 1, !dbg !1627
  store i32 %inc183, ptr %arrayidx182, align 4, !dbg !1627, !tbaa !305
  br label %if.end184, !dbg !1627

if.end184:                                        ; preds = %if.then181, %if.then172
  br label %if.end211, !dbg !1628

if.else185:                                       ; preds = %lor.lhs.false169
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #12, !dbg !1629
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1239, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins) #12, !dbg !1629
  tail call void @llvm.dbg.declare(metadata ptr %ins, metadata !1243, metadata !DIExpression()), !dbg !1631
  %arrayidx186 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 0, !dbg !1632
  %109 = load i32, ptr %arrayidx186, align 4, !dbg !1633, !tbaa !305
  %inc187 = add nsw i32 %109, 1, !dbg !1633
  store i32 %inc187, ptr %arrayidx186, align 4, !dbg !1633, !tbaa !305
  %110 = load i32, ptr %c, align 4, !dbg !1634, !tbaa !305
  %and188 = and i32 %110, 15, !dbg !1635
  %conv189 = trunc i32 %and188 to i8, !dbg !1634
  %arrayidx190 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 0, !dbg !1636
  %111 = load ptr, ptr %arrayidx190, align 16, !dbg !1636, !tbaa !401
  %112 = load i32, ptr %k, align 4, !dbg !1637, !tbaa !305
  %inc191 = add nsw i32 %112, 1, !dbg !1637
  store i32 %inc191, ptr %k, align 4, !dbg !1637, !tbaa !305
  %idxprom192 = sext i32 %112 to i64, !dbg !1636
  %arrayidx193 = getelementptr inbounds i8, ptr %111, i64 %idxprom192, !dbg !1636
  store i8 %conv189, ptr %arrayidx193, align 1, !dbg !1638, !tbaa !480
  %113 = load i32, ptr %mut_type, align 4, !dbg !1639, !tbaa !305
  %shr = ashr i32 %113, 12, !dbg !1641
  store i32 %shr, ptr %n, align 4, !dbg !1642, !tbaa !305
  %114 = load i32, ptr %c, align 4, !dbg !1643, !tbaa !305
  %shr194 = ashr i32 %114, 4, !dbg !1644
  store i32 %shr194, ptr %ins, align 4, !dbg !1645, !tbaa !305
  br label %for.cond195, !dbg !1646

for.cond195:                                      ; preds = %for.inc, %if.else185
  %115 = load i32, ptr %n, align 4, !dbg !1647, !tbaa !305
  %cmp196 = icmp sgt i32 %115, 0, !dbg !1649
  br i1 %cmp196, label %land.rhs198, label %land.end202, !dbg !1650

land.rhs198:                                      ; preds = %for.cond195
  %116 = load i32, ptr %k, align 4, !dbg !1651, !tbaa !305
  %arrayidx199 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 0, !dbg !1652
  %117 = load i32, ptr %arrayidx199, align 4, !dbg !1652, !tbaa !305
  %cmp200 = icmp slt i32 %116, %117, !dbg !1653
  br label %land.end202

land.end202:                                      ; preds = %land.rhs198, %for.cond195
  %118 = phi i1 [ false, %for.cond195 ], [ %cmp200, %land.rhs198 ], !dbg !1654
  br i1 %118, label %for.body203, label %for.end, !dbg !1655

for.body203:                                      ; preds = %land.end202
  %119 = load i32, ptr %ins, align 4, !dbg !1656, !tbaa !305
  %and204 = and i32 %119, 3, !dbg !1657
  %conv205 = trunc i32 %and204 to i8, !dbg !1656
  %arrayidx206 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 0, !dbg !1658
  %120 = load ptr, ptr %arrayidx206, align 16, !dbg !1658, !tbaa !401
  %121 = load i32, ptr %k, align 4, !dbg !1659, !tbaa !305
  %inc207 = add nsw i32 %121, 1, !dbg !1659
  store i32 %inc207, ptr %k, align 4, !dbg !1659, !tbaa !305
  %idxprom208 = sext i32 %121 to i64, !dbg !1658
  %arrayidx209 = getelementptr inbounds i8, ptr %120, i64 %idxprom208, !dbg !1658
  store i8 %conv205, ptr %arrayidx209, align 1, !dbg !1660, !tbaa !480
  br label %for.inc, !dbg !1658

for.inc:                                          ; preds = %for.body203
  %122 = load i32, ptr %n, align 4, !dbg !1661, !tbaa !305
  %dec = add nsw i32 %122, -1, !dbg !1661
  store i32 %dec, ptr %n, align 4, !dbg !1661, !tbaa !305
  %123 = load i32, ptr %ins, align 4, !dbg !1662, !tbaa !305
  %shr210 = ashr i32 %123, 2, !dbg !1662
  store i32 %shr210, ptr %ins, align 4, !dbg !1662, !tbaa !305
  br label %for.cond195, !dbg !1663, !llvm.loop !1664

for.end:                                          ; preds = %land.end202
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins) #12, !dbg !1666
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #12, !dbg !1666
  br label %if.end211

if.end211:                                        ; preds = %for.end, %if.end184
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.then163
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1667
  br label %cleanup, !dbg !1667

cleanup:                                          ; preds = %if.end212, %if.then157
  call void @llvm.lifetime.end.p0(i64 4, ptr %mut_type) #12, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !1667
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.inc214
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc214, !dbg !1668

for.inc214:                                       ; preds = %cleanup.cont, %cleanup
  %124 = load i32, ptr %i, align 4, !dbg !1669, !tbaa !305
  %inc215 = add nsw i32 %124, 1, !dbg !1669
  store i32 %inc215, ptr %i, align 4, !dbg !1669, !tbaa !305
  br label %for.cond132, !dbg !1670, !llvm.loop !1671

for.end216:                                       ; preds = %land.end
  %125 = load i32, ptr %k, align 4, !dbg !1673, !tbaa !305
  %arrayidx217 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 0, !dbg !1675
  %126 = load i32, ptr %arrayidx217, align 4, !dbg !1675, !tbaa !305
  %cmp218 = icmp ne i32 %125, %126, !dbg !1676
  br i1 %cmp218, label %if.then220, label %if.end222, !dbg !1677

if.then220:                                       ; preds = %for.end216
  %arrayidx221 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 0, !dbg !1678
  store i32 -10, ptr %arrayidx221, align 4, !dbg !1679, !tbaa !305
  br label %if.end222, !dbg !1678

if.end222:                                        ; preds = %if.then220, %for.end216
  %127 = load i32, ptr %pos, align 4, !dbg !1680, !tbaa !305
  %128 = load i32, ptr %d, align 4, !dbg !1681, !tbaa !305
  %add223 = add nsw i32 %127, %128, !dbg !1682
  %sub224 = sub nsw i32 %add223, 1, !dbg !1683
  store i32 %sub224, ptr %i, align 4, !dbg !1684, !tbaa !305
  store i32 0, ptr %k, align 4, !dbg !1685, !tbaa !305
  %arrayidx225 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 1, !dbg !1686
  store i32 -10, ptr %arrayidx225, align 4, !dbg !1687, !tbaa !305
  br label %for.cond226, !dbg !1688

for.cond226:                                      ; preds = %for.inc323, %if.end222
  %129 = load i32, ptr %i, align 4, !dbg !1689, !tbaa !305
  %cmp227 = icmp sge i32 %129, 0, !dbg !1690
  br i1 %cmp227, label %land.lhs.true229, label %land.end239, !dbg !1691

land.lhs.true229:                                 ; preds = %for.cond226
  %130 = load i32, ptr %i, align 4, !dbg !1692, !tbaa !305
  %conv230 = sext i32 %130 to i64, !dbg !1692
  %131 = load ptr, ptr %ks, align 8, !dbg !1693, !tbaa !401
  %seq231 = getelementptr inbounds %struct.kseq_t, ptr %131, i32 0, i32 2, !dbg !1694
  %l232 = getelementptr inbounds %struct.kstring_t, ptr %seq231, i32 0, i32 0, !dbg !1695
  %132 = load i64, ptr %l232, align 8, !dbg !1695, !tbaa !421
  %cmp233 = icmp ult i64 %conv230, %132, !dbg !1696
  br i1 %cmp233, label %land.rhs235, label %land.end239, !dbg !1697

land.rhs235:                                      ; preds = %land.lhs.true229
  %133 = load i32, ptr %k, align 4, !dbg !1698, !tbaa !305
  %arrayidx236 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 1, !dbg !1699
  %134 = load i32, ptr %arrayidx236, align 4, !dbg !1699, !tbaa !305
  %cmp237 = icmp slt i32 %133, %134, !dbg !1700
  br label %land.end239

land.end239:                                      ; preds = %land.rhs235, %land.lhs.true229, %for.cond226
  %135 = phi i1 [ false, %land.lhs.true229 ], [ false, %for.cond226 ], [ %cmp237, %land.rhs235 ], !dbg !1701
  br i1 %135, label %for.body240, label %for.end325, !dbg !1702

for.body240:                                      ; preds = %land.end239
  call void @llvm.lifetime.start.p0(i64 4, ptr %c241) #12, !dbg !1703
  tail call void @llvm.dbg.declare(metadata ptr %c241, metadata !1244, metadata !DIExpression()), !dbg !1704
  %136 = load ptr, ptr %target, align 8, !dbg !1705, !tbaa !401
  %137 = load i32, ptr %i, align 4, !dbg !1706, !tbaa !305
  %idxprom242 = sext i32 %137 to i64, !dbg !1705
  %arrayidx243 = getelementptr inbounds i16, ptr %136, i64 %idxprom242, !dbg !1705
  %138 = load i16, ptr %arrayidx243, align 2, !dbg !1705, !tbaa !488
  %conv244 = zext i16 %138 to i32, !dbg !1705
  store i32 %conv244, ptr %c241, align 4, !dbg !1704, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %mut_type245) #12, !dbg !1703
  tail call void @llvm.dbg.declare(metadata ptr %mut_type245, metadata !1248, metadata !DIExpression()), !dbg !1707
  %139 = load i32, ptr %c241, align 4, !dbg !1708, !tbaa !305
  %140 = load i16, ptr @mutmsk, align 2, !dbg !1709, !tbaa !488
  %conv246 = zext i16 %140 to i32, !dbg !1709
  %and247 = and i32 %139, %conv246, !dbg !1710
  store i32 %and247, ptr %mut_type245, align 4, !dbg !1707, !tbaa !305
  %arrayidx248 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 1, !dbg !1711
  %141 = load i32, ptr %arrayidx248, align 4, !dbg !1711, !tbaa !305
  %cmp249 = icmp slt i32 %141, 0, !dbg !1713
  br i1 %cmp249, label %if.then251, label %if.end260, !dbg !1714

if.then251:                                       ; preds = %for.body240
  %142 = load i32, ptr %mut_type245, align 4, !dbg !1715, !tbaa !305
  %cmp252 = icmp ne i32 %142, 0, !dbg !1718
  br i1 %cmp252, label %land.lhs.true254, label %if.end258, !dbg !1719

land.lhs.true254:                                 ; preds = %if.then251
  %143 = load i32, ptr %mut_type245, align 4, !dbg !1720, !tbaa !305
  %cmp255 = icmp ne i32 %143, 57344, !dbg !1721
  br i1 %cmp255, label %if.then257, label %if.end258, !dbg !1722

if.then257:                                       ; preds = %land.lhs.true254
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup319, !dbg !1723

if.end258:                                        ; preds = %land.lhs.true254, %if.then251
  %144 = load i32, ptr %i, align 4, !dbg !1724, !tbaa !305
  %arrayidx259 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 1, !dbg !1725
  store i32 %144, ptr %arrayidx259, align 4, !dbg !1726, !tbaa !305
  br label %if.end260, !dbg !1727

if.end260:                                        ; preds = %if.end258, %for.body240
  %145 = load i32, ptr %mut_type245, align 4, !dbg !1728, !tbaa !305
  %cmp261 = icmp eq i32 %145, 61440, !dbg !1729
  br i1 %cmp261, label %if.then263, label %if.else266, !dbg !1730

if.then263:                                       ; preds = %if.end260
  %arrayidx264 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 1, !dbg !1731
  %146 = load i32, ptr %arrayidx264, align 4, !dbg !1732, !tbaa !305
  %inc265 = add nsw i32 %146, 1, !dbg !1732
  store i32 %inc265, ptr %arrayidx264, align 4, !dbg !1732, !tbaa !305
  br label %if.end318, !dbg !1732

if.else266:                                       ; preds = %if.end260
  %147 = load i32, ptr %mut_type245, align 4, !dbg !1733, !tbaa !305
  %cmp267 = icmp eq i32 %147, 0, !dbg !1734
  br i1 %cmp267, label %if.then272, label %lor.lhs.false269, !dbg !1735

lor.lhs.false269:                                 ; preds = %if.else266
  %148 = load i32, ptr %mut_type245, align 4, !dbg !1736, !tbaa !305
  %cmp270 = icmp eq i32 %148, 57344, !dbg !1737
  br i1 %cmp270, label %if.then272, label %if.else285, !dbg !1738

if.then272:                                       ; preds = %lor.lhs.false269, %if.else266
  %149 = load i32, ptr %c241, align 4, !dbg !1739, !tbaa !305
  %and273 = and i32 %149, 15, !dbg !1741
  %conv274 = trunc i32 %and273 to i8, !dbg !1739
  %arrayidx275 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1742
  %150 = load ptr, ptr %arrayidx275, align 8, !dbg !1742, !tbaa !401
  %151 = load i32, ptr %k, align 4, !dbg !1743, !tbaa !305
  %inc276 = add nsw i32 %151, 1, !dbg !1743
  store i32 %inc276, ptr %k, align 4, !dbg !1743, !tbaa !305
  %idxprom277 = sext i32 %151 to i64, !dbg !1742
  %arrayidx278 = getelementptr inbounds i8, ptr %150, i64 %idxprom277, !dbg !1742
  store i8 %conv274, ptr %arrayidx278, align 1, !dbg !1744, !tbaa !480
  %152 = load i32, ptr %mut_type245, align 4, !dbg !1745, !tbaa !305
  %cmp279 = icmp eq i32 %152, 57344, !dbg !1747
  br i1 %cmp279, label %if.then281, label %if.end284, !dbg !1748

if.then281:                                       ; preds = %if.then272
  %arrayidx282 = getelementptr inbounds [2 x i32], ptr %n_sub, i64 0, i64 1, !dbg !1749
  %153 = load i32, ptr %arrayidx282, align 4, !dbg !1750, !tbaa !305
  %inc283 = add nsw i32 %153, 1, !dbg !1750
  store i32 %inc283, ptr %arrayidx282, align 4, !dbg !1750, !tbaa !305
  br label %if.end284, !dbg !1750

if.end284:                                        ; preds = %if.then281, %if.then272
  br label %if.end317, !dbg !1751

if.else285:                                       ; preds = %lor.lhs.false269
  call void @llvm.lifetime.start.p0(i64 4, ptr %n286) #12, !dbg !1752
  tail call void @llvm.dbg.declare(metadata ptr %n286, metadata !1249, metadata !DIExpression()), !dbg !1753
  call void @llvm.lifetime.start.p0(i64 4, ptr %ins287) #12, !dbg !1752
  tail call void @llvm.dbg.declare(metadata ptr %ins287, metadata !1253, metadata !DIExpression()), !dbg !1754
  %arrayidx288 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 1, !dbg !1755
  %154 = load i32, ptr %arrayidx288, align 4, !dbg !1756, !tbaa !305
  %inc289 = add nsw i32 %154, 1, !dbg !1756
  store i32 %inc289, ptr %arrayidx288, align 4, !dbg !1756, !tbaa !305
  %155 = load i32, ptr %mut_type245, align 4, !dbg !1757, !tbaa !305
  %shr290 = ashr i32 %155, 12, !dbg !1759
  store i32 %shr290, ptr %n286, align 4, !dbg !1760, !tbaa !305
  %156 = load i32, ptr %c241, align 4, !dbg !1761, !tbaa !305
  %shr291 = ashr i32 %156, 4, !dbg !1762
  store i32 %shr291, ptr %ins287, align 4, !dbg !1763, !tbaa !305
  br label %for.cond292, !dbg !1764

for.cond292:                                      ; preds = %for.body300, %if.else285
  %157 = load i32, ptr %n286, align 4, !dbg !1765, !tbaa !305
  %cmp293 = icmp sgt i32 %157, 0, !dbg !1767
  br i1 %cmp293, label %land.rhs295, label %land.end299, !dbg !1768

land.rhs295:                                      ; preds = %for.cond292
  %158 = load i32, ptr %k, align 4, !dbg !1769, !tbaa !305
  %arrayidx296 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 1, !dbg !1770
  %159 = load i32, ptr %arrayidx296, align 4, !dbg !1770, !tbaa !305
  %cmp297 = icmp slt i32 %158, %159, !dbg !1771
  br label %land.end299

land.end299:                                      ; preds = %land.rhs295, %for.cond292
  %160 = phi i1 [ false, %for.cond292 ], [ %cmp297, %land.rhs295 ], !dbg !1772
  br i1 %160, label %for.body300, label %for.end310, !dbg !1773

for.body300:                                      ; preds = %land.end299
  %161 = load i32, ptr %ins287, align 4, !dbg !1774, !tbaa !305
  %162 = load i32, ptr %n286, align 4, !dbg !1775, !tbaa !305
  %dec301 = add nsw i32 %162, -1, !dbg !1775
  store i32 %dec301, ptr %n286, align 4, !dbg !1775, !tbaa !305
  %mul302 = mul nsw i32 2, %dec301, !dbg !1776
  %shr303 = ashr i32 %161, %mul302, !dbg !1777
  %and304 = and i32 %shr303, 3, !dbg !1778
  %conv305 = trunc i32 %and304 to i8, !dbg !1779
  %arrayidx306 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1780
  %163 = load ptr, ptr %arrayidx306, align 8, !dbg !1780, !tbaa !401
  %164 = load i32, ptr %k, align 4, !dbg !1781, !tbaa !305
  %inc307 = add nsw i32 %164, 1, !dbg !1781
  store i32 %inc307, ptr %k, align 4, !dbg !1781, !tbaa !305
  %idxprom308 = sext i32 %164 to i64, !dbg !1780
  %arrayidx309 = getelementptr inbounds i8, ptr %163, i64 %idxprom308, !dbg !1780
  store i8 %conv305, ptr %arrayidx309, align 1, !dbg !1782, !tbaa !480
  br label %for.cond292, !dbg !1783, !llvm.loop !1784

for.end310:                                       ; preds = %land.end299
  %165 = load i32, ptr %c241, align 4, !dbg !1786, !tbaa !305
  %and311 = and i32 %165, 15, !dbg !1787
  %conv312 = trunc i32 %and311 to i8, !dbg !1786
  %arrayidx313 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1788
  %166 = load ptr, ptr %arrayidx313, align 8, !dbg !1788, !tbaa !401
  %167 = load i32, ptr %k, align 4, !dbg !1789, !tbaa !305
  %inc314 = add nsw i32 %167, 1, !dbg !1789
  store i32 %inc314, ptr %k, align 4, !dbg !1789, !tbaa !305
  %idxprom315 = sext i32 %167 to i64, !dbg !1788
  %arrayidx316 = getelementptr inbounds i8, ptr %166, i64 %idxprom315, !dbg !1788
  store i8 %conv312, ptr %arrayidx316, align 1, !dbg !1790, !tbaa !480
  call void @llvm.lifetime.end.p0(i64 4, ptr %ins287) #12, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 4, ptr %n286) #12, !dbg !1791
  br label %if.end317

if.end317:                                        ; preds = %for.end310, %if.end284
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.then263
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1792
  br label %cleanup319, !dbg !1792

cleanup319:                                       ; preds = %if.end318, %if.then257
  call void @llvm.lifetime.end.p0(i64 4, ptr %mut_type245) #12, !dbg !1792
  call void @llvm.lifetime.end.p0(i64 4, ptr %c241) #12, !dbg !1792
  %cleanup.dest321 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest321, label %unreachable [
    i32 0, label %cleanup.cont322
    i32 20, label %for.inc323
  ]

cleanup.cont322:                                  ; preds = %cleanup319
  br label %for.inc323, !dbg !1793

for.inc323:                                       ; preds = %cleanup.cont322, %cleanup319
  %168 = load i32, ptr %i, align 4, !dbg !1794, !tbaa !305
  %dec324 = add nsw i32 %168, -1, !dbg !1794
  store i32 %dec324, ptr %i, align 4, !dbg !1794, !tbaa !305
  br label %for.cond226, !dbg !1795, !llvm.loop !1796

for.end325:                                       ; preds = %land.end239
  %169 = load i32, ptr %k, align 4, !dbg !1798, !tbaa !305
  %arrayidx326 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 1, !dbg !1800
  %170 = load i32, ptr %arrayidx326, align 4, !dbg !1800, !tbaa !305
  %cmp327 = icmp ne i32 %169, %170, !dbg !1801
  br i1 %cmp327, label %if.then329, label %if.end331, !dbg !1802

if.then329:                                       ; preds = %for.end325
  %arrayidx330 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 1, !dbg !1803
  store i32 -10, ptr %arrayidx330, align 4, !dbg !1804, !tbaa !305
  br label %if.end331, !dbg !1803

if.end331:                                        ; preds = %if.then329, %for.end325
  store i32 0, ptr %k, align 4, !dbg !1805, !tbaa !305
  br label %for.cond332, !dbg !1807

for.cond332:                                      ; preds = %for.inc356, %if.end331
  %171 = load i32, ptr %k, align 4, !dbg !1808, !tbaa !305
  %arrayidx333 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 1, !dbg !1810
  %172 = load i32, ptr %arrayidx333, align 4, !dbg !1810, !tbaa !305
  %cmp334 = icmp slt i32 %171, %172, !dbg !1811
  br i1 %cmp334, label %for.body336, label %for.end358, !dbg !1812

for.body336:                                      ; preds = %for.cond332
  %arrayidx337 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1813
  %173 = load ptr, ptr %arrayidx337, align 8, !dbg !1813, !tbaa !401
  %174 = load i32, ptr %k, align 4, !dbg !1814, !tbaa !305
  %idxprom338 = sext i32 %174 to i64, !dbg !1813
  %arrayidx339 = getelementptr inbounds i8, ptr %173, i64 %idxprom338, !dbg !1813
  %175 = load i8, ptr %arrayidx339, align 1, !dbg !1813, !tbaa !480
  %conv340 = zext i8 %175 to i32, !dbg !1813
  %cmp341 = icmp slt i32 %conv340, 4, !dbg !1815
  br i1 %cmp341, label %cond.true343, label %cond.false349, !dbg !1813

cond.true343:                                     ; preds = %for.body336
  %arrayidx344 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1816
  %176 = load ptr, ptr %arrayidx344, align 8, !dbg !1816, !tbaa !401
  %177 = load i32, ptr %k, align 4, !dbg !1817, !tbaa !305
  %idxprom345 = sext i32 %177 to i64, !dbg !1816
  %arrayidx346 = getelementptr inbounds i8, ptr %176, i64 %idxprom345, !dbg !1816
  %178 = load i8, ptr %arrayidx346, align 1, !dbg !1816, !tbaa !480
  %conv347 = zext i8 %178 to i32, !dbg !1816
  %sub348 = sub nsw i32 3, %conv347, !dbg !1818
  br label %cond.end350, !dbg !1813

cond.false349:                                    ; preds = %for.body336
  br label %cond.end350, !dbg !1813

cond.end350:                                      ; preds = %cond.false349, %cond.true343
  %cond351 = phi i32 [ %sub348, %cond.true343 ], [ 4, %cond.false349 ], !dbg !1813
  %conv352 = trunc i32 %cond351 to i8, !dbg !1813
  %arrayidx353 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !1819
  %179 = load ptr, ptr %arrayidx353, align 8, !dbg !1819, !tbaa !401
  %180 = load i32, ptr %k, align 4, !dbg !1820, !tbaa !305
  %idxprom354 = sext i32 %180 to i64, !dbg !1819
  %arrayidx355 = getelementptr inbounds i8, ptr %179, i64 %idxprom354, !dbg !1819
  store i8 %conv352, ptr %arrayidx355, align 1, !dbg !1821, !tbaa !480
  br label %for.inc356, !dbg !1819

for.inc356:                                       ; preds = %cond.end350
  %181 = load i32, ptr %k, align 4, !dbg !1822, !tbaa !305
  %inc357 = add nsw i32 %181, 1, !dbg !1822
  store i32 %inc357, ptr %k, align 4, !dbg !1822, !tbaa !305
  br label %for.cond332, !dbg !1823, !llvm.loop !1824

for.end358:                                       ; preds = %for.cond332
  %arrayidx359 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 0, !dbg !1826
  %182 = load i32, ptr %arrayidx359, align 4, !dbg !1826, !tbaa !305
  %cmp360 = icmp slt i32 %182, 0, !dbg !1828
  br i1 %cmp360, label %if.then366, label %lor.lhs.false362, !dbg !1829

lor.lhs.false362:                                 ; preds = %for.end358
  %arrayidx363 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 1, !dbg !1830
  %183 = load i32, ptr %arrayidx363, align 4, !dbg !1830, !tbaa !305
  %cmp364 = icmp slt i32 %183, 0, !dbg !1831
  br i1 %cmp364, label %if.then366, label %if.end368, !dbg !1832

if.then366:                                       ; preds = %lor.lhs.false362, %for.end358
  %184 = load i64, ptr %ii, align 8, !dbg !1833, !tbaa !1266
  %dec367 = add i64 %184, -1, !dbg !1833
  store i64 %dec367, ptr %ii, align 8, !dbg !1833, !tbaa !1266
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup502, !dbg !1835

if.end368:                                        ; preds = %lor.lhs.false362
  store i32 0, ptr %j, align 4, !dbg !1836, !tbaa !305
  br label %for.cond369, !dbg !1837

for.cond369:                                      ; preds = %for.inc421, %if.end368
  %185 = load i32, ptr %j, align 4, !dbg !1838, !tbaa !305
  %cmp370 = icmp slt i32 %185, 2, !dbg !1839
  br i1 %cmp370, label %for.body372, label %for.end423, !dbg !1840

for.body372:                                      ; preds = %for.cond369
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_n) #12, !dbg !1841
  tail call void @llvm.dbg.declare(metadata ptr %n_n, metadata !1254, metadata !DIExpression()), !dbg !1842
  store i32 0, ptr %n_n, align 4, !dbg !1842, !tbaa !305
  store i32 0, ptr %i, align 4, !dbg !1843, !tbaa !305
  br label %for.cond373, !dbg !1844

for.cond373:                                      ; preds = %for.inc406, %for.body372
  %186 = load i32, ptr %i, align 4, !dbg !1845, !tbaa !305
  %187 = load i32, ptr %j, align 4, !dbg !1846, !tbaa !305
  %idxprom374 = sext i32 %187 to i64, !dbg !1847
  %arrayidx375 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 %idxprom374, !dbg !1847
  %188 = load i32, ptr %arrayidx375, align 4, !dbg !1847, !tbaa !305
  %cmp376 = icmp slt i32 %186, %188, !dbg !1848
  br i1 %cmp376, label %for.body378, label %for.end408, !dbg !1849

for.body378:                                      ; preds = %for.cond373
  call void @llvm.lifetime.start.p0(i64 4, ptr %c379) #12, !dbg !1850
  tail call void @llvm.dbg.declare(metadata ptr %c379, metadata !1258, metadata !DIExpression()), !dbg !1851
  %189 = load i32, ptr %j, align 4, !dbg !1852, !tbaa !305
  %idxprom380 = sext i32 %189 to i64, !dbg !1853
  %arrayidx381 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 %idxprom380, !dbg !1853
  %190 = load ptr, ptr %arrayidx381, align 8, !dbg !1853, !tbaa !401
  %191 = load i32, ptr %i, align 4, !dbg !1854, !tbaa !305
  %idxprom382 = sext i32 %191 to i64, !dbg !1853
  %arrayidx383 = getelementptr inbounds i8, ptr %190, i64 %idxprom382, !dbg !1853
  %192 = load i8, ptr %arrayidx383, align 1, !dbg !1853, !tbaa !480
  %conv384 = zext i8 %192 to i32, !dbg !1853
  store i32 %conv384, ptr %c379, align 4, !dbg !1851, !tbaa !305
  %193 = load i32, ptr %c379, align 4, !dbg !1855, !tbaa !305
  %cmp385 = icmp sge i32 %193, 4, !dbg !1857
  br i1 %cmp385, label %if.then387, label %if.else389, !dbg !1858

if.then387:                                       ; preds = %for.body378
  store i32 4, ptr %c379, align 4, !dbg !1859, !tbaa !305
  %194 = load i32, ptr %n_n, align 4, !dbg !1861, !tbaa !305
  %inc388 = add nsw i32 %194, 1, !dbg !1861
  store i32 %inc388, ptr %n_n, align 4, !dbg !1861, !tbaa !305
  br label %if.end400, !dbg !1862

if.else389:                                       ; preds = %for.body378
  %call390 = call double @drand48() #12, !dbg !1863
  %195 = load double, ptr @ERR_RATE, align 8, !dbg !1865, !tbaa !317
  %cmp391 = fcmp olt double %call390, %195, !dbg !1866
  br i1 %cmp391, label %if.then393, label %if.end399, !dbg !1867

if.then393:                                       ; preds = %if.else389
  %196 = load i32, ptr %c379, align 4, !dbg !1868, !tbaa !305
  %add394 = add nsw i32 %196, 1, !dbg !1870
  %and395 = and i32 %add394, 3, !dbg !1871
  store i32 %and395, ptr %c379, align 4, !dbg !1872, !tbaa !305
  %197 = load i32, ptr %j, align 4, !dbg !1873, !tbaa !305
  %idxprom396 = sext i32 %197 to i64, !dbg !1874
  %arrayidx397 = getelementptr inbounds [2 x i32], ptr %n_err, i64 0, i64 %idxprom396, !dbg !1874
  %198 = load i32, ptr %arrayidx397, align 4, !dbg !1875, !tbaa !305
  %inc398 = add nsw i32 %198, 1, !dbg !1875
  store i32 %inc398, ptr %arrayidx397, align 4, !dbg !1875, !tbaa !305
  br label %if.end399, !dbg !1876

if.end399:                                        ; preds = %if.then393, %if.else389
  br label %if.end400

if.end400:                                        ; preds = %if.end399, %if.then387
  %199 = load i32, ptr %c379, align 4, !dbg !1877, !tbaa !305
  %conv401 = trunc i32 %199 to i8, !dbg !1877
  %200 = load i32, ptr %j, align 4, !dbg !1878, !tbaa !305
  %idxprom402 = sext i32 %200 to i64, !dbg !1879
  %arrayidx403 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 %idxprom402, !dbg !1879
  %201 = load ptr, ptr %arrayidx403, align 8, !dbg !1879, !tbaa !401
  %202 = load i32, ptr %i, align 4, !dbg !1880, !tbaa !305
  %idxprom404 = sext i32 %202 to i64, !dbg !1879
  %arrayidx405 = getelementptr inbounds i8, ptr %201, i64 %idxprom404, !dbg !1879
  store i8 %conv401, ptr %arrayidx405, align 1, !dbg !1881, !tbaa !480
  call void @llvm.lifetime.end.p0(i64 4, ptr %c379) #12, !dbg !1882
  br label %for.inc406, !dbg !1883

for.inc406:                                       ; preds = %if.end400
  %203 = load i32, ptr %i, align 4, !dbg !1884, !tbaa !305
  %inc407 = add nsw i32 %203, 1, !dbg !1884
  store i32 %inc407, ptr %i, align 4, !dbg !1884, !tbaa !305
  br label %for.cond373, !dbg !1885, !llvm.loop !1886

for.end408:                                       ; preds = %for.cond373
  %204 = load i32, ptr %n_n, align 4, !dbg !1888, !tbaa !305
  %conv409 = sitofp i32 %204 to double, !dbg !1890
  %205 = load i32, ptr %j, align 4, !dbg !1891, !tbaa !305
  %idxprom410 = sext i32 %205 to i64, !dbg !1892
  %arrayidx411 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 %idxprom410, !dbg !1892
  %206 = load i32, ptr %arrayidx411, align 4, !dbg !1892, !tbaa !305
  %conv412 = sitofp i32 %206 to double, !dbg !1892
  %div413 = fdiv double %conv409, %conv412, !dbg !1893
  %207 = load double, ptr @MAX_N_RATIO, align 8, !dbg !1894, !tbaa !317
  %cmp414 = fcmp ogt double %div413, %207, !dbg !1895
  br i1 %cmp414, label %if.then416, label %if.end417, !dbg !1896

if.then416:                                       ; preds = %for.end408
  store i32 26, ptr %cleanup.dest.slot, align 4
  br label %cleanup418, !dbg !1897

if.end417:                                        ; preds = %for.end408
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1898
  br label %cleanup418, !dbg !1898

cleanup418:                                       ; preds = %if.end417, %if.then416
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_n) #12, !dbg !1898
  %cleanup.dest419 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest419, label %unreachable [
    i32 0, label %cleanup.cont420
    i32 26, label %for.end423
  ]

cleanup.cont420:                                  ; preds = %cleanup418
  br label %for.inc421, !dbg !1899

for.inc421:                                       ; preds = %cleanup.cont420
  %208 = load i32, ptr %j, align 4, !dbg !1900, !tbaa !305
  %inc422 = add nsw i32 %208, 1, !dbg !1900
  store i32 %inc422, ptr %j, align 4, !dbg !1900, !tbaa !305
  br label %for.cond369, !dbg !1901, !llvm.loop !1902

for.end423:                                       ; preds = %cleanup418, %for.cond369
  %209 = load i32, ptr %j, align 4, !dbg !1904, !tbaa !305
  %cmp424 = icmp slt i32 %209, 2, !dbg !1906
  br i1 %cmp424, label %if.then426, label %if.end434, !dbg !1907

if.then426:                                       ; preds = %for.end423
  %210 = load i32, ptr %max_loop, align 4, !dbg !1908, !tbaa !305
  %dec427 = add nsw i32 %210, -1, !dbg !1908
  store i32 %dec427, ptr %max_loop, align 4, !dbg !1908, !tbaa !305
  %tobool = icmp ne i32 %210, 0, !dbg !1908
  br i1 %tobool, label %if.then428, label %if.end429, !dbg !1911

if.then428:                                       ; preds = %if.then426
  br label %try_again, !dbg !1912

if.end429:                                        ; preds = %if.then426
  %211 = load i32, ptr %max_loop_err, align 4, !dbg !1913, !tbaa !305
  %tobool430 = icmp ne i32 %211, 0, !dbg !1913
  br i1 %tobool430, label %if.end433, label %if.then431, !dbg !1915

if.then431:                                       ; preds = %if.end429
  %212 = load ptr, ptr @stderr, align 8, !dbg !1916, !tbaa !401
  %call432 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.14), !dbg !1918
  store i32 1, ptr %max_loop_err, align 4, !dbg !1919, !tbaa !305
  br label %if.end433, !dbg !1920

if.end433:                                        ; preds = %if.then431, %if.end429
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup502, !dbg !1921

if.end434:                                        ; preds = %for.end423
  store i32 0, ptr %j, align 4, !dbg !1922, !tbaa !305
  br label %for.cond435, !dbg !1924

for.cond435:                                      ; preds = %for.inc499, %if.end434
  %213 = load i32, ptr %j, align 4, !dbg !1925, !tbaa !305
  %cmp436 = icmp slt i32 %213, 2, !dbg !1927
  br i1 %cmp436, label %for.body438, label %for.end501, !dbg !1928

for.body438:                                      ; preds = %for.cond435
  store i32 0, ptr %i, align 4, !dbg !1929, !tbaa !305
  br label %for.cond439, !dbg !1932

for.cond439:                                      ; preds = %for.inc448, %for.body438
  %214 = load i32, ptr %i, align 4, !dbg !1933, !tbaa !305
  %215 = load i32, ptr %j, align 4, !dbg !1935, !tbaa !305
  %idxprom440 = sext i32 %215 to i64, !dbg !1936
  %arrayidx441 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 %idxprom440, !dbg !1936
  %216 = load i32, ptr %arrayidx441, align 4, !dbg !1936, !tbaa !305
  %cmp442 = icmp slt i32 %214, %216, !dbg !1937
  br i1 %cmp442, label %for.body444, label %for.end450, !dbg !1938

for.body444:                                      ; preds = %for.cond439
  %217 = load i32, ptr %Q, align 4, !dbg !1939, !tbaa !305
  %conv445 = trunc i32 %217 to i8, !dbg !1939
  %218 = load ptr, ptr %qstr, align 8, !dbg !1940, !tbaa !401
  %219 = load i32, ptr %i, align 4, !dbg !1941, !tbaa !305
  %idxprom446 = sext i32 %219 to i64, !dbg !1940
  %arrayidx447 = getelementptr inbounds i8, ptr %218, i64 %idxprom446, !dbg !1940
  store i8 %conv445, ptr %arrayidx447, align 1, !dbg !1942, !tbaa !480
  br label %for.inc448, !dbg !1940

for.inc448:                                       ; preds = %for.body444
  %220 = load i32, ptr %i, align 4, !dbg !1943, !tbaa !305
  %inc449 = add nsw i32 %220, 1, !dbg !1943
  store i32 %inc449, ptr %i, align 4, !dbg !1943, !tbaa !305
  br label %for.cond439, !dbg !1944, !llvm.loop !1945

for.end450:                                       ; preds = %for.cond439
  %221 = load ptr, ptr %qstr, align 8, !dbg !1947, !tbaa !401
  %222 = load i32, ptr %i, align 4, !dbg !1948, !tbaa !305
  %idxprom451 = sext i32 %222 to i64, !dbg !1947
  %arrayidx452 = getelementptr inbounds i8, ptr %221, i64 %idxprom451, !dbg !1947
  store i8 0, ptr %arrayidx452, align 1, !dbg !1949, !tbaa !480
  %223 = load i32, ptr %j, align 4, !dbg !1950, !tbaa !305
  %idxprom453 = sext i32 %223 to i64, !dbg !1951
  %arrayidx454 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 %idxprom453, !dbg !1951
  %224 = load ptr, ptr %arrayidx454, align 8, !dbg !1951, !tbaa !401
  %225 = load ptr, ptr %ks, align 8, !dbg !1952, !tbaa !401
  %name455 = getelementptr inbounds %struct.kseq_t, ptr %225, i32 0, i32 0, !dbg !1953
  %s456 = getelementptr inbounds %struct.kstring_t, ptr %name455, i32 0, i32 2, !dbg !1954
  %226 = load ptr, ptr %s456, align 8, !dbg !1954, !tbaa !1415
  %arrayidx457 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 0, !dbg !1955
  %227 = load i32, ptr %arrayidx457, align 4, !dbg !1955, !tbaa !305
  %add458 = add nsw i32 %227, 1, !dbg !1956
  %arrayidx459 = getelementptr inbounds [2 x i32], ptr %ext_coor, i64 0, i64 1, !dbg !1957
  %228 = load i32, ptr %arrayidx459, align 4, !dbg !1957, !tbaa !305
  %add460 = add nsw i32 %228, 1, !dbg !1958
  %arrayidx461 = getelementptr inbounds [2 x i32], ptr %n_err, i64 0, i64 0, !dbg !1959
  %229 = load i32, ptr %arrayidx461, align 4, !dbg !1959, !tbaa !305
  %arrayidx462 = getelementptr inbounds [2 x i32], ptr %n_sub, i64 0, i64 0, !dbg !1960
  %230 = load i32, ptr %arrayidx462, align 4, !dbg !1960, !tbaa !305
  %arrayidx463 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 0, !dbg !1961
  %231 = load i32, ptr %arrayidx463, align 4, !dbg !1961, !tbaa !305
  %arrayidx464 = getelementptr inbounds [2 x i32], ptr %n_err, i64 0, i64 1, !dbg !1962
  %232 = load i32, ptr %arrayidx464, align 4, !dbg !1962, !tbaa !305
  %arrayidx465 = getelementptr inbounds [2 x i32], ptr %n_sub, i64 0, i64 1, !dbg !1963
  %233 = load i32, ptr %arrayidx465, align 4, !dbg !1963, !tbaa !305
  %arrayidx466 = getelementptr inbounds [2 x i32], ptr %n_indel, i64 0, i64 1, !dbg !1964
  %234 = load i32, ptr %arrayidx466, align 4, !dbg !1964, !tbaa !305
  %235 = load i64, ptr %ii, align 8, !dbg !1965, !tbaa !1266
  %236 = load i32, ptr %j, align 4, !dbg !1966, !tbaa !305
  %cmp467 = icmp eq i32 %236, 0, !dbg !1967
  br i1 %cmp467, label %cond.true469, label %cond.false471, !dbg !1966

cond.true469:                                     ; preds = %for.end450
  %237 = load i32, ptr %is_flip, align 4, !dbg !1968, !tbaa !305
  %add470 = add nsw i32 %237, 1, !dbg !1969
  br label %cond.end473, !dbg !1966

cond.false471:                                    ; preds = %for.end450
  %238 = load i32, ptr %is_flip, align 4, !dbg !1970, !tbaa !305
  %sub472 = sub nsw i32 2, %238, !dbg !1971
  br label %cond.end473, !dbg !1966

cond.end473:                                      ; preds = %cond.false471, %cond.true469
  %cond474 = phi i32 [ %add470, %cond.true469 ], [ %sub472, %cond.false471 ], !dbg !1966
  %call475 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.15, ptr noundef %226, i32 noundef %add458, i32 noundef %add460, i32 noundef %229, i32 noundef %230, i32 noundef %231, i32 noundef %232, i32 noundef %233, i32 noundef %234, i64 noundef %235, i32 noundef %cond474), !dbg !1972
  store i32 0, ptr %i, align 4, !dbg !1973, !tbaa !305
  br label %for.cond476, !dbg !1975

for.cond476:                                      ; preds = %for.inc493, %cond.end473
  %239 = load i32, ptr %i, align 4, !dbg !1976, !tbaa !305
  %240 = load i32, ptr %j, align 4, !dbg !1978, !tbaa !305
  %idxprom477 = sext i32 %240 to i64, !dbg !1979
  %arrayidx478 = getelementptr inbounds [2 x i32], ptr %s71, i64 0, i64 %idxprom477, !dbg !1979
  %241 = load i32, ptr %arrayidx478, align 4, !dbg !1979, !tbaa !305
  %cmp479 = icmp slt i32 %239, %241, !dbg !1980
  br i1 %cmp479, label %for.body481, label %for.end495, !dbg !1981

for.body481:                                      ; preds = %for.cond476
  %242 = load i32, ptr %j, align 4, !dbg !1982, !tbaa !305
  %idxprom482 = sext i32 %242 to i64, !dbg !1983
  %arrayidx483 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 %idxprom482, !dbg !1983
  %243 = load ptr, ptr %arrayidx483, align 8, !dbg !1983, !tbaa !401
  %244 = load i32, ptr %i, align 4, !dbg !1984, !tbaa !305
  %idxprom484 = sext i32 %244 to i64, !dbg !1983
  %arrayidx485 = getelementptr inbounds i8, ptr %243, i64 %idxprom484, !dbg !1983
  %245 = load i8, ptr %arrayidx485, align 1, !dbg !1983, !tbaa !480
  %conv486 = zext i8 %245 to i32, !dbg !1985
  %idxprom487 = sext i32 %conv486 to i64, !dbg !1986
  %arrayidx488 = getelementptr inbounds [6 x i8], ptr @.str.1, i64 0, i64 %idxprom487, !dbg !1986
  %246 = load i8, ptr %arrayidx488, align 1, !dbg !1986, !tbaa !480
  %conv489 = sext i8 %246 to i32, !dbg !1986
  %247 = load i32, ptr %j, align 4, !dbg !1987, !tbaa !305
  %idxprom490 = sext i32 %247 to i64, !dbg !1988
  %arrayidx491 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 %idxprom490, !dbg !1988
  %248 = load ptr, ptr %arrayidx491, align 8, !dbg !1988, !tbaa !401
  %call492 = call i32 @fputc(i32 noundef %conv489, ptr noundef %248), !dbg !1989
  br label %for.inc493, !dbg !1989

for.inc493:                                       ; preds = %for.body481
  %249 = load i32, ptr %i, align 4, !dbg !1990, !tbaa !305
  %inc494 = add nsw i32 %249, 1, !dbg !1990
  store i32 %inc494, ptr %i, align 4, !dbg !1990, !tbaa !305
  br label %for.cond476, !dbg !1991, !llvm.loop !1992

for.end495:                                       ; preds = %for.cond476
  %250 = load i32, ptr %j, align 4, !dbg !1994, !tbaa !305
  %idxprom496 = sext i32 %250 to i64, !dbg !1995
  %arrayidx497 = getelementptr inbounds [2 x ptr], ptr %fpo, i64 0, i64 %idxprom496, !dbg !1995
  %251 = load ptr, ptr %arrayidx497, align 8, !dbg !1995, !tbaa !401
  %252 = load ptr, ptr %qstr, align 8, !dbg !1996, !tbaa !401
  %call498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef @.str.16, ptr noundef %252), !dbg !1997
  br label %for.inc499, !dbg !1998

for.inc499:                                       ; preds = %for.end495
  %253 = load i32, ptr %j, align 4, !dbg !1999, !tbaa !305
  %inc500 = add nsw i32 %253, 1, !dbg !1999
  store i32 %inc500, ptr %j, align 4, !dbg !1999, !tbaa !305
  br label %for.cond435, !dbg !2000, !llvm.loop !2001

for.end501:                                       ; preds = %for.cond435
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2003
  br label %cleanup502, !dbg !2003

cleanup502:                                       ; preds = %for.end501, %if.end433, %if.then366
  call void @llvm.lifetime.end.p0(i64 16, ptr %fpo) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_coor) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_err) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_indel) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_sub) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_flip) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %s71) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %ran) #12, !dbg !2003
  %cleanup.dest514 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest514, label %unreachable [
    i32 0, label %cleanup.cont515
    i32 8, label %for.inc516
  ]

cleanup.cont515:                                  ; preds = %cleanup502
  br label %for.inc516, !dbg !2004

for.inc516:                                       ; preds = %cleanup.cont515, %cleanup502
  %254 = load i64, ptr %ii, align 8, !dbg !2005, !tbaa !1266
  %inc517 = add i64 %254, 1, !dbg !2005
  store i64 %inc517, ptr %ii, align 8, !dbg !2005, !tbaa !1266
  br label %for.cond, !dbg !2006, !llvm.loop !2007

for.end518:                                       ; preds = %for.cond
  %arrayidx519 = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 0, !dbg !2009
  %s520 = getelementptr inbounds %struct.mutseq_t, ptr %arrayidx519, i32 0, i32 2, !dbg !2010
  %255 = load ptr, ptr %s520, align 8, !dbg !2010, !tbaa !457
  call void @free(ptr noundef %255) #12, !dbg !2011
  %arrayidx521 = getelementptr inbounds [2 x %struct.mutseq_t], ptr %rseq, i64 0, i64 1, !dbg !2012
  %s522 = getelementptr inbounds %struct.mutseq_t, ptr %arrayidx521, i32 0, i32 2, !dbg !2013
  %256 = load ptr, ptr %s522, align 8, !dbg !2013, !tbaa !457
  call void @free(ptr noundef %256) #12, !dbg !2014
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1423
  br label %cleanup523, !dbg !1423

cleanup523:                                       ; preds = %for.end518, %if.then58
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_pairs) #12, !dbg !1423
  %cleanup.dest524 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest524, label %unreachable [
    i32 0, label %cleanup.cont525
    i32 4, label %while.cond43
  ]

cleanup.cont525:                                  ; preds = %cleanup523
  br label %while.cond43, !dbg !1388, !llvm.loop !1422

while.end526:                                     ; preds = %while.cond43
  %257 = load ptr, ptr %ks, align 8, !dbg !2015, !tbaa !401
  call void @kseq_destroy(ptr noundef %257), !dbg !2016
  %258 = load ptr, ptr %fp_fa, align 8, !dbg !2017, !tbaa !401
  %call527 = call i32 @gzclose(ptr noundef %258), !dbg !2018
  %259 = load ptr, ptr %qstr, align 8, !dbg !2019, !tbaa !401
  call void @free(ptr noundef %259) #12, !dbg !2020
  %arrayidx528 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 0, !dbg !2021
  %260 = load ptr, ptr %arrayidx528, align 16, !dbg !2021, !tbaa !401
  call void @free(ptr noundef %260) #12, !dbg !2022
  %arrayidx529 = getelementptr inbounds [2 x ptr], ptr %tmp_seq, i64 0, i64 1, !dbg !2023
  %261 = load ptr, ptr %arrayidx529, align 8, !dbg !2023, !tbaa !401
  call void @free(ptr noundef %261) #12, !dbg !2024
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2025
  br label %cleanup530, !dbg !2025

cleanup530:                                       ; preds = %while.end526, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_loop_err) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_loop) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_seq) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_size) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %qstr) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ref) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_len) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_fa) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 32, ptr %rseq) #12, !dbg !2025
  call void @llvm.lifetime.end.p0(i64 8, ptr %ks) #12, !dbg !2025
  %cleanup.dest546 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest546, label %unreachable [
    i32 0, label %cleanup.cont547
    i32 1, label %cleanup.cont547
  ]

cleanup.cont547:                                  ; preds = %cleanup530, %cleanup530
  ret void, !dbg !2025

unreachable:                                      ; preds = %cleanup530, %cleanup523, %cleanup502, %cleanup418, %cleanup319, %cleanup
  unreachable
}

declare !dbg !2026 ptr @gzopen(ptr noundef, ptr noundef) #5

declare !dbg !2029 i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind
declare !dbg !2033 ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2037 ptr @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal ptr @kseq_init(ptr noundef %fd) #0 !dbg !2042 {
entry:
  %fd.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12, !dbg !2048
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2047, metadata !DIExpression()), !dbg !2048
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 112) #13, !dbg !2048
  store ptr %call, ptr %s, align 8, !dbg !2048, !tbaa !401
  %0 = load ptr, ptr %fd.addr, align 8, !dbg !2048, !tbaa !401
  %call1 = call ptr @ks_init(ptr noundef %0), !dbg !2048
  %1 = load ptr, ptr %s, align 8, !dbg !2048, !tbaa !401
  %f = getelementptr inbounds %struct.kseq_t, ptr %1, i32 0, i32 5, !dbg !2048
  store ptr %call1, ptr %f, align 8, !dbg !2048, !tbaa !2049
  %2 = load ptr, ptr %s, align 8, !dbg !2048, !tbaa !401
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12, !dbg !2048
  ret ptr %2, !dbg !2048
}

; Function Attrs: nounwind uwtable
define internal i32 @kseq_read(ptr noundef %seq) #0 !dbg !2050 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %ks = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !2057
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2055, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 8, ptr %ks) #12, !dbg !2057
  tail call void @llvm.dbg.declare(metadata ptr %ks, metadata !2056, metadata !DIExpression()), !dbg !2057
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %f = getelementptr inbounds %struct.kseq_t, ptr %0, i32 0, i32 5, !dbg !2057
  %1 = load ptr, ptr %f, align 8, !dbg !2057, !tbaa !2049
  store ptr %1, ptr %ks, align 8, !dbg !2057, !tbaa !401
  %2 = load ptr, ptr %seq.addr, align 8, !dbg !2058, !tbaa !401
  %last_char = getelementptr inbounds %struct.kseq_t, ptr %2, i32 0, i32 4, !dbg !2058
  %3 = load i32, ptr %last_char, align 8, !dbg !2058, !tbaa !2060
  %cmp = icmp eq i32 %3, 0, !dbg !2058
  br i1 %cmp, label %if.then, label %if.end7, !dbg !2057

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !2061

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load ptr, ptr %ks, align 8, !dbg !2061, !tbaa !401
  %call = call i32 @ks_getc(ptr noundef %4), !dbg !2061
  store i32 %call, ptr %c, align 4, !dbg !2061, !tbaa !305
  %cmp1 = icmp ne i32 %call, -1, !dbg !2061
  br i1 %cmp1, label %land.lhs.true, label %land.end, !dbg !2061

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i32, ptr %c, align 4, !dbg !2061, !tbaa !305
  %cmp2 = icmp ne i32 %5, 62, !dbg !2061
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !2061

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32, ptr %c, align 4, !dbg !2061, !tbaa !305
  %cmp3 = icmp ne i32 %6, 64, !dbg !2061
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !2063
  br i1 %7, label %while.body, label %while.end, !dbg !2061

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !2061, !llvm.loop !2064

while.end:                                        ; preds = %land.end
  %8 = load i32, ptr %c, align 4, !dbg !2065, !tbaa !305
  %cmp4 = icmp eq i32 %8, -1, !dbg !2065
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2061

if.then5:                                         ; preds = %while.end
  store i32 -1, ptr %retval, align 4, !dbg !2065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2065

if.end:                                           ; preds = %while.end
  %9 = load i32, ptr %c, align 4, !dbg !2061, !tbaa !305
  %10 = load ptr, ptr %seq.addr, align 8, !dbg !2061, !tbaa !401
  %last_char6 = getelementptr inbounds %struct.kseq_t, ptr %10, i32 0, i32 4, !dbg !2061
  store i32 %9, ptr %last_char6, align 8, !dbg !2061, !tbaa !2060
  br label %if.end7, !dbg !2061

if.end7:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %qual = getelementptr inbounds %struct.kseq_t, ptr %11, i32 0, i32 3, !dbg !2057
  %l = getelementptr inbounds %struct.kstring_t, ptr %qual, i32 0, i32 0, !dbg !2057
  store i64 0, ptr %l, align 8, !dbg !2057, !tbaa !2067
  %12 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %seq8 = getelementptr inbounds %struct.kseq_t, ptr %12, i32 0, i32 2, !dbg !2057
  %l9 = getelementptr inbounds %struct.kstring_t, ptr %seq8, i32 0, i32 0, !dbg !2057
  store i64 0, ptr %l9, align 8, !dbg !2057, !tbaa !421
  %13 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %comment = getelementptr inbounds %struct.kseq_t, ptr %13, i32 0, i32 1, !dbg !2057
  %l10 = getelementptr inbounds %struct.kstring_t, ptr %comment, i32 0, i32 0, !dbg !2057
  store i64 0, ptr %l10, align 8, !dbg !2057, !tbaa !2068
  %14 = load ptr, ptr %ks, align 8, !dbg !2069, !tbaa !401
  %15 = load ptr, ptr %seq.addr, align 8, !dbg !2069, !tbaa !401
  %name = getelementptr inbounds %struct.kseq_t, ptr %15, i32 0, i32 0, !dbg !2069
  %call11 = call i32 @ks_getuntil(ptr noundef %14, i32 noundef 0, ptr noundef %name, ptr noundef %c), !dbg !2069
  %cmp12 = icmp slt i32 %call11, 0, !dbg !2069
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2057

if.then13:                                        ; preds = %if.end7
  store i32 -1, ptr %retval, align 4, !dbg !2069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2069

if.end14:                                         ; preds = %if.end7
  %16 = load i32, ptr %c, align 4, !dbg !2071, !tbaa !305
  %cmp15 = icmp ne i32 %16, 10, !dbg !2071
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !2057

if.then16:                                        ; preds = %if.end14
  %17 = load ptr, ptr %ks, align 8, !dbg !2071, !tbaa !401
  %18 = load ptr, ptr %seq.addr, align 8, !dbg !2071, !tbaa !401
  %comment17 = getelementptr inbounds %struct.kseq_t, ptr %18, i32 0, i32 1, !dbg !2071
  %call18 = call i32 @ks_getuntil(ptr noundef %17, i32 noundef 2, ptr noundef %comment17, ptr noundef null), !dbg !2071
  br label %if.end19, !dbg !2071

if.end19:                                         ; preds = %if.then16, %if.end14
  %19 = load ptr, ptr %seq.addr, align 8, !dbg !2073, !tbaa !401
  %seq20 = getelementptr inbounds %struct.kseq_t, ptr %19, i32 0, i32 2, !dbg !2073
  %s = getelementptr inbounds %struct.kstring_t, ptr %seq20, i32 0, i32 2, !dbg !2073
  %20 = load ptr, ptr %s, align 8, !dbg !2073, !tbaa !478
  %cmp21 = icmp eq ptr %20, null, !dbg !2073
  br i1 %cmp21, label %if.then22, label %if.end29, !dbg !2057

if.then22:                                        ; preds = %if.end19
  %21 = load ptr, ptr %seq.addr, align 8, !dbg !2075, !tbaa !401
  %seq23 = getelementptr inbounds %struct.kseq_t, ptr %21, i32 0, i32 2, !dbg !2075
  %m = getelementptr inbounds %struct.kstring_t, ptr %seq23, i32 0, i32 1, !dbg !2075
  store i64 256, ptr %m, align 8, !dbg !2075, !tbaa !439
  %22 = load ptr, ptr %seq.addr, align 8, !dbg !2075, !tbaa !401
  %seq24 = getelementptr inbounds %struct.kseq_t, ptr %22, i32 0, i32 2, !dbg !2075
  %m25 = getelementptr inbounds %struct.kstring_t, ptr %seq24, i32 0, i32 1, !dbg !2075
  %23 = load i64, ptr %m25, align 8, !dbg !2075, !tbaa !439
  %call26 = call noalias ptr @malloc(i64 noundef %23) #15, !dbg !2075
  %24 = load ptr, ptr %seq.addr, align 8, !dbg !2075, !tbaa !401
  %seq27 = getelementptr inbounds %struct.kseq_t, ptr %24, i32 0, i32 2, !dbg !2075
  %s28 = getelementptr inbounds %struct.kstring_t, ptr %seq27, i32 0, i32 2, !dbg !2075
  store ptr %call26, ptr %s28, align 8, !dbg !2075, !tbaa !478
  br label %if.end29, !dbg !2075

if.end29:                                         ; preds = %if.then22, %if.end19
  br label %while.cond30, !dbg !2057

while.cond30:                                     ; preds = %if.end43, %if.then42, %if.end29
  %25 = load ptr, ptr %ks, align 8, !dbg !2057, !tbaa !401
  %call31 = call i32 @ks_getc(ptr noundef %25), !dbg !2057
  store i32 %call31, ptr %c, align 4, !dbg !2057, !tbaa !305
  %cmp32 = icmp ne i32 %call31, -1, !dbg !2057
  br i1 %cmp32, label %land.lhs.true33, label %land.end39, !dbg !2057

land.lhs.true33:                                  ; preds = %while.cond30
  %26 = load i32, ptr %c, align 4, !dbg !2057, !tbaa !305
  %cmp34 = icmp ne i32 %26, 62, !dbg !2057
  br i1 %cmp34, label %land.lhs.true35, label %land.end39, !dbg !2057

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %27 = load i32, ptr %c, align 4, !dbg !2057, !tbaa !305
  %cmp36 = icmp ne i32 %27, 43, !dbg !2057
  br i1 %cmp36, label %land.rhs37, label %land.end39, !dbg !2057

land.rhs37:                                       ; preds = %land.lhs.true35
  %28 = load i32, ptr %c, align 4, !dbg !2057, !tbaa !305
  %cmp38 = icmp ne i32 %28, 64, !dbg !2057
  br label %land.end39

land.end39:                                       ; preds = %land.rhs37, %land.lhs.true35, %land.lhs.true33, %while.cond30
  %29 = phi i1 [ false, %land.lhs.true35 ], [ false, %land.lhs.true33 ], [ false, %while.cond30 ], [ %cmp38, %land.rhs37 ], !dbg !2077
  br i1 %29, label %while.body40, label %while.end50, !dbg !2057

while.body40:                                     ; preds = %land.end39
  %30 = load i32, ptr %c, align 4, !dbg !2078, !tbaa !305
  %cmp41 = icmp eq i32 %30, 10, !dbg !2078
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !2081

if.then42:                                        ; preds = %while.body40
  br label %while.cond30, !dbg !2078, !llvm.loop !2082

if.end43:                                         ; preds = %while.body40
  %31 = load i32, ptr %c, align 4, !dbg !2081, !tbaa !305
  %conv = trunc i32 %31 to i8, !dbg !2081
  %32 = load ptr, ptr %seq.addr, align 8, !dbg !2081, !tbaa !401
  %seq44 = getelementptr inbounds %struct.kseq_t, ptr %32, i32 0, i32 2, !dbg !2081
  %s45 = getelementptr inbounds %struct.kstring_t, ptr %seq44, i32 0, i32 2, !dbg !2081
  %33 = load ptr, ptr %s45, align 8, !dbg !2081, !tbaa !478
  %34 = load ptr, ptr %seq.addr, align 8, !dbg !2081, !tbaa !401
  %seq46 = getelementptr inbounds %struct.kseq_t, ptr %34, i32 0, i32 2, !dbg !2081
  %l47 = getelementptr inbounds %struct.kstring_t, ptr %seq46, i32 0, i32 0, !dbg !2081
  %35 = load i64, ptr %l47, align 8, !dbg !2081, !tbaa !421
  %inc = add i64 %35, 1, !dbg !2081
  store i64 %inc, ptr %l47, align 8, !dbg !2081, !tbaa !421
  %arrayidx = getelementptr inbounds i8, ptr %33, i64 %35, !dbg !2081
  store i8 %conv, ptr %arrayidx, align 1, !dbg !2081, !tbaa !480
  %36 = load ptr, ptr %ks, align 8, !dbg !2081, !tbaa !401
  %37 = load ptr, ptr %seq.addr, align 8, !dbg !2081, !tbaa !401
  %seq48 = getelementptr inbounds %struct.kseq_t, ptr %37, i32 0, i32 2, !dbg !2081
  %call49 = call i32 @ks_getuntil2(ptr noundef %36, i32 noundef 2, ptr noundef %seq48, ptr noundef null, i32 noundef 1), !dbg !2081
  br label %while.cond30, !dbg !2057, !llvm.loop !2082

while.end50:                                      ; preds = %land.end39
  %38 = load i32, ptr %c, align 4, !dbg !2083, !tbaa !305
  %cmp51 = icmp eq i32 %38, 62, !dbg !2083
  br i1 %cmp51, label %if.then55, label %lor.lhs.false, !dbg !2083

lor.lhs.false:                                    ; preds = %while.end50
  %39 = load i32, ptr %c, align 4, !dbg !2083, !tbaa !305
  %cmp53 = icmp eq i32 %39, 64, !dbg !2083
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !2057

if.then55:                                        ; preds = %lor.lhs.false, %while.end50
  %40 = load i32, ptr %c, align 4, !dbg !2083, !tbaa !305
  %41 = load ptr, ptr %seq.addr, align 8, !dbg !2083, !tbaa !401
  %last_char56 = getelementptr inbounds %struct.kseq_t, ptr %41, i32 0, i32 4, !dbg !2083
  store i32 %40, ptr %last_char56, align 8, !dbg !2083, !tbaa !2060
  br label %if.end57, !dbg !2083

if.end57:                                         ; preds = %if.then55, %lor.lhs.false
  %42 = load ptr, ptr %seq.addr, align 8, !dbg !2085, !tbaa !401
  %seq58 = getelementptr inbounds %struct.kseq_t, ptr %42, i32 0, i32 2, !dbg !2085
  %l59 = getelementptr inbounds %struct.kstring_t, ptr %seq58, i32 0, i32 0, !dbg !2085
  %43 = load i64, ptr %l59, align 8, !dbg !2085, !tbaa !421
  %add = add i64 %43, 1, !dbg !2085
  %44 = load ptr, ptr %seq.addr, align 8, !dbg !2085, !tbaa !401
  %seq60 = getelementptr inbounds %struct.kseq_t, ptr %44, i32 0, i32 2, !dbg !2085
  %m61 = getelementptr inbounds %struct.kstring_t, ptr %seq60, i32 0, i32 1, !dbg !2085
  %45 = load i64, ptr %m61, align 8, !dbg !2085, !tbaa !439
  %cmp62 = icmp uge i64 %add, %45, !dbg !2085
  br i1 %cmp62, label %if.then64, label %if.end144, !dbg !2057

if.then64:                                        ; preds = %if.end57
  %46 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq65 = getelementptr inbounds %struct.kseq_t, ptr %46, i32 0, i32 2, !dbg !2087
  %l66 = getelementptr inbounds %struct.kstring_t, ptr %seq65, i32 0, i32 0, !dbg !2087
  %47 = load i64, ptr %l66, align 8, !dbg !2087, !tbaa !421
  %add67 = add i64 %47, 2, !dbg !2087
  %48 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq68 = getelementptr inbounds %struct.kseq_t, ptr %48, i32 0, i32 2, !dbg !2087
  %m69 = getelementptr inbounds %struct.kstring_t, ptr %seq68, i32 0, i32 1, !dbg !2087
  store i64 %add67, ptr %m69, align 8, !dbg !2087, !tbaa !439
  %49 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq70 = getelementptr inbounds %struct.kseq_t, ptr %49, i32 0, i32 2, !dbg !2087
  %m71 = getelementptr inbounds %struct.kstring_t, ptr %seq70, i32 0, i32 1, !dbg !2087
  %50 = load i64, ptr %m71, align 8, !dbg !2087, !tbaa !439
  %cmp72 = icmp ugt i64 %50, 0, !dbg !2087
  br i1 %cmp72, label %cond.true, label %cond.false, !dbg !2087

cond.true:                                        ; preds = %if.then64
  %51 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq74 = getelementptr inbounds %struct.kseq_t, ptr %51, i32 0, i32 2, !dbg !2087
  %m75 = getelementptr inbounds %struct.kstring_t, ptr %seq74, i32 0, i32 1, !dbg !2087
  %52 = load i64, ptr %m75, align 8, !dbg !2087, !tbaa !439
  %dec = add i64 %52, -1, !dbg !2087
  store i64 %dec, ptr %m75, align 8, !dbg !2087, !tbaa !439
  %53 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq76 = getelementptr inbounds %struct.kseq_t, ptr %53, i32 0, i32 2, !dbg !2087
  %m77 = getelementptr inbounds %struct.kstring_t, ptr %seq76, i32 0, i32 1, !dbg !2087
  %54 = load i64, ptr %m77, align 8, !dbg !2087, !tbaa !439
  %shr = lshr i64 %54, 1, !dbg !2087
  %55 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq78 = getelementptr inbounds %struct.kseq_t, ptr %55, i32 0, i32 2, !dbg !2087
  %m79 = getelementptr inbounds %struct.kstring_t, ptr %seq78, i32 0, i32 1, !dbg !2087
  %56 = load i64, ptr %m79, align 8, !dbg !2087, !tbaa !439
  %or = or i64 %56, %shr, !dbg !2087
  store i64 %or, ptr %m79, align 8, !dbg !2087, !tbaa !439
  %57 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq80 = getelementptr inbounds %struct.kseq_t, ptr %57, i32 0, i32 2, !dbg !2087
  %m81 = getelementptr inbounds %struct.kstring_t, ptr %seq80, i32 0, i32 1, !dbg !2087
  %58 = load i64, ptr %m81, align 8, !dbg !2087, !tbaa !439
  %shr82 = lshr i64 %58, 2, !dbg !2087
  %59 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq83 = getelementptr inbounds %struct.kseq_t, ptr %59, i32 0, i32 2, !dbg !2087
  %m84 = getelementptr inbounds %struct.kstring_t, ptr %seq83, i32 0, i32 1, !dbg !2087
  %60 = load i64, ptr %m84, align 8, !dbg !2087, !tbaa !439
  %or85 = or i64 %60, %shr82, !dbg !2087
  store i64 %or85, ptr %m84, align 8, !dbg !2087, !tbaa !439
  %61 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq86 = getelementptr inbounds %struct.kseq_t, ptr %61, i32 0, i32 2, !dbg !2087
  %m87 = getelementptr inbounds %struct.kstring_t, ptr %seq86, i32 0, i32 1, !dbg !2087
  %62 = load i64, ptr %m87, align 8, !dbg !2087, !tbaa !439
  %shr88 = lshr i64 %62, 4, !dbg !2087
  %63 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq89 = getelementptr inbounds %struct.kseq_t, ptr %63, i32 0, i32 2, !dbg !2087
  %m90 = getelementptr inbounds %struct.kstring_t, ptr %seq89, i32 0, i32 1, !dbg !2087
  %64 = load i64, ptr %m90, align 8, !dbg !2087, !tbaa !439
  %or91 = or i64 %64, %shr88, !dbg !2087
  store i64 %or91, ptr %m90, align 8, !dbg !2087, !tbaa !439
  %65 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq92 = getelementptr inbounds %struct.kseq_t, ptr %65, i32 0, i32 2, !dbg !2087
  %m93 = getelementptr inbounds %struct.kstring_t, ptr %seq92, i32 0, i32 1, !dbg !2087
  %66 = load i64, ptr %m93, align 8, !dbg !2087, !tbaa !439
  %shr94 = lshr i64 %66, 8, !dbg !2087
  %67 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq95 = getelementptr inbounds %struct.kseq_t, ptr %67, i32 0, i32 2, !dbg !2087
  %m96 = getelementptr inbounds %struct.kstring_t, ptr %seq95, i32 0, i32 1, !dbg !2087
  %68 = load i64, ptr %m96, align 8, !dbg !2087, !tbaa !439
  %or97 = or i64 %68, %shr94, !dbg !2087
  store i64 %or97, ptr %m96, align 8, !dbg !2087, !tbaa !439
  %69 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq98 = getelementptr inbounds %struct.kseq_t, ptr %69, i32 0, i32 2, !dbg !2087
  %m99 = getelementptr inbounds %struct.kstring_t, ptr %seq98, i32 0, i32 1, !dbg !2087
  %70 = load i64, ptr %m99, align 8, !dbg !2087, !tbaa !439
  %shr100 = lshr i64 %70, 16, !dbg !2087
  %71 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq101 = getelementptr inbounds %struct.kseq_t, ptr %71, i32 0, i32 2, !dbg !2087
  %m102 = getelementptr inbounds %struct.kstring_t, ptr %seq101, i32 0, i32 1, !dbg !2087
  %72 = load i64, ptr %m102, align 8, !dbg !2087, !tbaa !439
  %or103 = or i64 %72, %shr100, !dbg !2087
  store i64 %or103, ptr %m102, align 8, !dbg !2087, !tbaa !439
  %73 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq104 = getelementptr inbounds %struct.kseq_t, ptr %73, i32 0, i32 2, !dbg !2087
  %m105 = getelementptr inbounds %struct.kstring_t, ptr %seq104, i32 0, i32 1, !dbg !2087
  %74 = load i64, ptr %m105, align 8, !dbg !2087, !tbaa !439
  %shr106 = lshr i64 %74, 32, !dbg !2087
  %75 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq107 = getelementptr inbounds %struct.kseq_t, ptr %75, i32 0, i32 2, !dbg !2087
  %m108 = getelementptr inbounds %struct.kstring_t, ptr %seq107, i32 0, i32 1, !dbg !2087
  %76 = load i64, ptr %m108, align 8, !dbg !2087, !tbaa !439
  %or109 = or i64 %76, %shr106, !dbg !2087
  store i64 %or109, ptr %m108, align 8, !dbg !2087, !tbaa !439
  %77 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq110 = getelementptr inbounds %struct.kseq_t, ptr %77, i32 0, i32 2, !dbg !2087
  %m111 = getelementptr inbounds %struct.kstring_t, ptr %seq110, i32 0, i32 1, !dbg !2087
  %78 = load i64, ptr %m111, align 8, !dbg !2087, !tbaa !439
  %79 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq112 = getelementptr inbounds %struct.kseq_t, ptr %79, i32 0, i32 2, !dbg !2087
  %m113 = getelementptr inbounds %struct.kstring_t, ptr %seq112, i32 0, i32 1, !dbg !2087
  %80 = load i64, ptr %m113, align 8, !dbg !2087, !tbaa !439
  %mul = mul i64 %80, 0, !dbg !2087
  %add114 = add i64 %mul, 1, !dbg !2087
  %sub = sub i64 0, %add114, !dbg !2087
  %cmp115 = icmp ugt i64 %sub, 0, !dbg !2087
  %lnot = xor i1 %cmp115, true, !dbg !2087
  %lnot.ext = zext i1 %lnot to i32, !dbg !2087
  %conv117 = sext i32 %lnot.ext to i64, !dbg !2087
  %sub118 = sub i64 63, %conv117, !dbg !2087
  %shr119 = lshr i64 %78, %sub118, !dbg !2087
  %and = and i64 %shr119, 1, !dbg !2087
  %tobool = icmp ne i64 %and, 0, !dbg !2087
  %lnot120 = xor i1 %tobool, true, !dbg !2087
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !2087
  %conv122 = sext i32 %lnot.ext121 to i64, !dbg !2087
  %81 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq123 = getelementptr inbounds %struct.kseq_t, ptr %81, i32 0, i32 2, !dbg !2087
  %m124 = getelementptr inbounds %struct.kstring_t, ptr %seq123, i32 0, i32 1, !dbg !2087
  %82 = load i64, ptr %m124, align 8, !dbg !2087, !tbaa !439
  %add125 = add i64 %82, %conv122, !dbg !2087
  store i64 %add125, ptr %m124, align 8, !dbg !2087, !tbaa !439
  %83 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq126 = getelementptr inbounds %struct.kseq_t, ptr %83, i32 0, i32 2, !dbg !2087
  %m127 = getelementptr inbounds %struct.kstring_t, ptr %seq126, i32 0, i32 1, !dbg !2087
  %84 = load i64, ptr %m127, align 8, !dbg !2087, !tbaa !439
  br label %cond.end, !dbg !2087

cond.false:                                       ; preds = %if.then64
  br label %cond.end, !dbg !2087

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %84, %cond.true ], [ 0, %cond.false ], !dbg !2087
  %85 = load ptr, ptr %seq.addr, align 8, !dbg !2089, !tbaa !401
  %seq128 = getelementptr inbounds %struct.kseq_t, ptr %85, i32 0, i32 2, !dbg !2089
  %l129 = getelementptr inbounds %struct.kstring_t, ptr %seq128, i32 0, i32 0, !dbg !2089
  %86 = load i64, ptr %l129, align 8, !dbg !2089, !tbaa !421
  %add130 = add i64 %86, 1, !dbg !2089
  %87 = load ptr, ptr %seq.addr, align 8, !dbg !2089, !tbaa !401
  %seq131 = getelementptr inbounds %struct.kseq_t, ptr %87, i32 0, i32 2, !dbg !2089
  %m132 = getelementptr inbounds %struct.kstring_t, ptr %seq131, i32 0, i32 1, !dbg !2089
  %88 = load i64, ptr %m132, align 8, !dbg !2089, !tbaa !439
  %cmp133 = icmp uge i64 %add130, %88, !dbg !2089
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !2087

if.then135:                                       ; preds = %cond.end
  store i32 -3, ptr %retval, align 4, !dbg !2089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2089

if.end136:                                        ; preds = %cond.end
  %89 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq137 = getelementptr inbounds %struct.kseq_t, ptr %89, i32 0, i32 2, !dbg !2087
  %s138 = getelementptr inbounds %struct.kstring_t, ptr %seq137, i32 0, i32 2, !dbg !2087
  %90 = load ptr, ptr %s138, align 8, !dbg !2087, !tbaa !478
  %91 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq139 = getelementptr inbounds %struct.kseq_t, ptr %91, i32 0, i32 2, !dbg !2087
  %m140 = getelementptr inbounds %struct.kstring_t, ptr %seq139, i32 0, i32 1, !dbg !2087
  %92 = load i64, ptr %m140, align 8, !dbg !2087, !tbaa !439
  %call141 = call ptr @realloc(ptr noundef %90, i64 noundef %92) #16, !dbg !2087
  %93 = load ptr, ptr %seq.addr, align 8, !dbg !2087, !tbaa !401
  %seq142 = getelementptr inbounds %struct.kseq_t, ptr %93, i32 0, i32 2, !dbg !2087
  %s143 = getelementptr inbounds %struct.kstring_t, ptr %seq142, i32 0, i32 2, !dbg !2087
  store ptr %call141, ptr %s143, align 8, !dbg !2087, !tbaa !478
  br label %if.end144, !dbg !2087

if.end144:                                        ; preds = %if.end136, %if.end57
  %94 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %seq145 = getelementptr inbounds %struct.kseq_t, ptr %94, i32 0, i32 2, !dbg !2057
  %s146 = getelementptr inbounds %struct.kstring_t, ptr %seq145, i32 0, i32 2, !dbg !2057
  %95 = load ptr, ptr %s146, align 8, !dbg !2057, !tbaa !478
  %96 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %seq147 = getelementptr inbounds %struct.kseq_t, ptr %96, i32 0, i32 2, !dbg !2057
  %l148 = getelementptr inbounds %struct.kstring_t, ptr %seq147, i32 0, i32 0, !dbg !2057
  %97 = load i64, ptr %l148, align 8, !dbg !2057, !tbaa !421
  %arrayidx149 = getelementptr inbounds i8, ptr %95, i64 %97, !dbg !2057
  store i8 0, ptr %arrayidx149, align 1, !dbg !2057, !tbaa !480
  %98 = load i32, ptr %c, align 4, !dbg !2091, !tbaa !305
  %cmp150 = icmp ne i32 %98, 43, !dbg !2091
  br i1 %cmp150, label %if.then152, label %if.end156, !dbg !2057

if.then152:                                       ; preds = %if.end144
  %99 = load ptr, ptr %seq.addr, align 8, !dbg !2091, !tbaa !401
  %seq153 = getelementptr inbounds %struct.kseq_t, ptr %99, i32 0, i32 2, !dbg !2091
  %l154 = getelementptr inbounds %struct.kstring_t, ptr %seq153, i32 0, i32 0, !dbg !2091
  %100 = load i64, ptr %l154, align 8, !dbg !2091, !tbaa !421
  %conv155 = trunc i64 %100 to i32, !dbg !2091
  store i32 %conv155, ptr %retval, align 4, !dbg !2091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2091

if.end156:                                        ; preds = %if.end144
  %101 = load ptr, ptr %seq.addr, align 8, !dbg !2093, !tbaa !401
  %qual157 = getelementptr inbounds %struct.kseq_t, ptr %101, i32 0, i32 3, !dbg !2093
  %m158 = getelementptr inbounds %struct.kstring_t, ptr %qual157, i32 0, i32 1, !dbg !2093
  %102 = load i64, ptr %m158, align 8, !dbg !2093, !tbaa !2095
  %103 = load ptr, ptr %seq.addr, align 8, !dbg !2093, !tbaa !401
  %seq159 = getelementptr inbounds %struct.kseq_t, ptr %103, i32 0, i32 2, !dbg !2093
  %m160 = getelementptr inbounds %struct.kstring_t, ptr %seq159, i32 0, i32 1, !dbg !2093
  %104 = load i64, ptr %m160, align 8, !dbg !2093, !tbaa !439
  %cmp161 = icmp ult i64 %102, %104, !dbg !2093
  br i1 %cmp161, label %if.then163, label %if.end175, !dbg !2057

if.then163:                                       ; preds = %if.end156
  %105 = load ptr, ptr %seq.addr, align 8, !dbg !2096, !tbaa !401
  %seq164 = getelementptr inbounds %struct.kseq_t, ptr %105, i32 0, i32 2, !dbg !2096
  %m165 = getelementptr inbounds %struct.kstring_t, ptr %seq164, i32 0, i32 1, !dbg !2096
  %106 = load i64, ptr %m165, align 8, !dbg !2096, !tbaa !439
  %107 = load ptr, ptr %seq.addr, align 8, !dbg !2096, !tbaa !401
  %qual166 = getelementptr inbounds %struct.kseq_t, ptr %107, i32 0, i32 3, !dbg !2096
  %m167 = getelementptr inbounds %struct.kstring_t, ptr %qual166, i32 0, i32 1, !dbg !2096
  store i64 %106, ptr %m167, align 8, !dbg !2096, !tbaa !2095
  %108 = load ptr, ptr %seq.addr, align 8, !dbg !2096, !tbaa !401
  %qual168 = getelementptr inbounds %struct.kseq_t, ptr %108, i32 0, i32 3, !dbg !2096
  %s169 = getelementptr inbounds %struct.kstring_t, ptr %qual168, i32 0, i32 2, !dbg !2096
  %109 = load ptr, ptr %s169, align 8, !dbg !2096, !tbaa !2098
  %110 = load ptr, ptr %seq.addr, align 8, !dbg !2096, !tbaa !401
  %qual170 = getelementptr inbounds %struct.kseq_t, ptr %110, i32 0, i32 3, !dbg !2096
  %m171 = getelementptr inbounds %struct.kstring_t, ptr %qual170, i32 0, i32 1, !dbg !2096
  %111 = load i64, ptr %m171, align 8, !dbg !2096, !tbaa !2095
  %call172 = call ptr @realloc(ptr noundef %109, i64 noundef %111) #16, !dbg !2096
  %112 = load ptr, ptr %seq.addr, align 8, !dbg !2096, !tbaa !401
  %qual173 = getelementptr inbounds %struct.kseq_t, ptr %112, i32 0, i32 3, !dbg !2096
  %s174 = getelementptr inbounds %struct.kstring_t, ptr %qual173, i32 0, i32 2, !dbg !2096
  store ptr %call172, ptr %s174, align 8, !dbg !2096, !tbaa !2098
  br label %if.end175, !dbg !2096

if.end175:                                        ; preds = %if.then163, %if.end156
  br label %while.cond176, !dbg !2057

while.cond176:                                    ; preds = %while.body184, %if.end175
  %113 = load ptr, ptr %ks, align 8, !dbg !2057, !tbaa !401
  %call177 = call i32 @ks_getc(ptr noundef %113), !dbg !2057
  store i32 %call177, ptr %c, align 4, !dbg !2057, !tbaa !305
  %cmp178 = icmp ne i32 %call177, -1, !dbg !2057
  br i1 %cmp178, label %land.rhs180, label %land.end183, !dbg !2057

land.rhs180:                                      ; preds = %while.cond176
  %114 = load i32, ptr %c, align 4, !dbg !2057, !tbaa !305
  %cmp181 = icmp ne i32 %114, 10, !dbg !2057
  br label %land.end183

land.end183:                                      ; preds = %land.rhs180, %while.cond176
  %115 = phi i1 [ false, %while.cond176 ], [ %cmp181, %land.rhs180 ], !dbg !2077
  br i1 %115, label %while.body184, label %while.end185, !dbg !2057

while.body184:                                    ; preds = %land.end183
  br label %while.cond176, !dbg !2057, !llvm.loop !2099

while.end185:                                     ; preds = %land.end183
  %116 = load i32, ptr %c, align 4, !dbg !2100, !tbaa !305
  %cmp186 = icmp eq i32 %116, -1, !dbg !2100
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !2057

if.then188:                                       ; preds = %while.end185
  store i32 -2, ptr %retval, align 4, !dbg !2100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2100

if.end189:                                        ; preds = %while.end185
  br label %while.cond190, !dbg !2057

while.cond190:                                    ; preds = %while.body203, %if.end189
  %117 = load ptr, ptr %ks, align 8, !dbg !2057, !tbaa !401
  %118 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %qual191 = getelementptr inbounds %struct.kseq_t, ptr %118, i32 0, i32 3, !dbg !2057
  %call192 = call i32 @ks_getuntil2(ptr noundef %117, i32 noundef 2, ptr noundef %qual191, ptr noundef null, i32 noundef 1), !dbg !2057
  %cmp193 = icmp sge i32 %call192, 0, !dbg !2057
  br i1 %cmp193, label %land.rhs195, label %land.end202, !dbg !2057

land.rhs195:                                      ; preds = %while.cond190
  %119 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %qual196 = getelementptr inbounds %struct.kseq_t, ptr %119, i32 0, i32 3, !dbg !2057
  %l197 = getelementptr inbounds %struct.kstring_t, ptr %qual196, i32 0, i32 0, !dbg !2057
  %120 = load i64, ptr %l197, align 8, !dbg !2057, !tbaa !2067
  %121 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %seq198 = getelementptr inbounds %struct.kseq_t, ptr %121, i32 0, i32 2, !dbg !2057
  %l199 = getelementptr inbounds %struct.kstring_t, ptr %seq198, i32 0, i32 0, !dbg !2057
  %122 = load i64, ptr %l199, align 8, !dbg !2057, !tbaa !421
  %cmp200 = icmp ult i64 %120, %122, !dbg !2057
  br label %land.end202

land.end202:                                      ; preds = %land.rhs195, %while.cond190
  %123 = phi i1 [ false, %while.cond190 ], [ %cmp200, %land.rhs195 ], !dbg !2077
  br i1 %123, label %while.body203, label %while.end204, !dbg !2057

while.body203:                                    ; preds = %land.end202
  br label %while.cond190, !dbg !2057, !llvm.loop !2102

while.end204:                                     ; preds = %land.end202
  %124 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %last_char205 = getelementptr inbounds %struct.kseq_t, ptr %124, i32 0, i32 4, !dbg !2057
  store i32 0, ptr %last_char205, align 8, !dbg !2057, !tbaa !2060
  %125 = load ptr, ptr %seq.addr, align 8, !dbg !2103, !tbaa !401
  %seq206 = getelementptr inbounds %struct.kseq_t, ptr %125, i32 0, i32 2, !dbg !2103
  %l207 = getelementptr inbounds %struct.kstring_t, ptr %seq206, i32 0, i32 0, !dbg !2103
  %126 = load i64, ptr %l207, align 8, !dbg !2103, !tbaa !421
  %127 = load ptr, ptr %seq.addr, align 8, !dbg !2103, !tbaa !401
  %qual208 = getelementptr inbounds %struct.kseq_t, ptr %127, i32 0, i32 3, !dbg !2103
  %l209 = getelementptr inbounds %struct.kstring_t, ptr %qual208, i32 0, i32 0, !dbg !2103
  %128 = load i64, ptr %l209, align 8, !dbg !2103, !tbaa !2067
  %cmp210 = icmp ne i64 %126, %128, !dbg !2103
  br i1 %cmp210, label %if.then212, label %if.end213, !dbg !2057

if.then212:                                       ; preds = %while.end204
  store i32 -2, ptr %retval, align 4, !dbg !2103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2103

if.end213:                                        ; preds = %while.end204
  %129 = load ptr, ptr %seq.addr, align 8, !dbg !2057, !tbaa !401
  %seq214 = getelementptr inbounds %struct.kseq_t, ptr %129, i32 0, i32 2, !dbg !2057
  %l215 = getelementptr inbounds %struct.kstring_t, ptr %seq214, i32 0, i32 0, !dbg !2057
  %130 = load i64, ptr %l215, align 8, !dbg !2057, !tbaa !421
  %conv216 = trunc i64 %130 to i32, !dbg !2057
  store i32 %conv216, ptr %retval, align 4, !dbg !2057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2057

cleanup:                                          ; preds = %if.end213, %if.then212, %if.then188, %if.then152, %if.then135, %if.then13, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ks) #12, !dbg !2057
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !2057
  %131 = load i32, ptr %retval, align 4, !dbg !2057
  ret i32 %131, !dbg !2057
}

; Function Attrs: nounwind uwtable
define internal void @kseq_destroy(ptr noundef %ks) #0 !dbg !2105 {
entry:
  %ks.addr = alloca ptr, align 8
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !2109, metadata !DIExpression()), !dbg !2110
  %0 = load ptr, ptr %ks.addr, align 8, !dbg !2111, !tbaa !401
  %tobool = icmp ne ptr %0, null, !dbg !2111
  br i1 %tobool, label %if.end, label %if.then, !dbg !2110

if.then:                                          ; preds = %entry
  br label %return, !dbg !2111

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ks.addr, align 8, !dbg !2110, !tbaa !401
  %name = getelementptr inbounds %struct.kseq_t, ptr %1, i32 0, i32 0, !dbg !2110
  %s = getelementptr inbounds %struct.kstring_t, ptr %name, i32 0, i32 2, !dbg !2110
  %2 = load ptr, ptr %s, align 8, !dbg !2110, !tbaa !1415
  call void @free(ptr noundef %2) #12, !dbg !2110
  %3 = load ptr, ptr %ks.addr, align 8, !dbg !2110, !tbaa !401
  %comment = getelementptr inbounds %struct.kseq_t, ptr %3, i32 0, i32 1, !dbg !2110
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %comment, i32 0, i32 2, !dbg !2110
  %4 = load ptr, ptr %s1, align 8, !dbg !2110, !tbaa !2113
  call void @free(ptr noundef %4) #12, !dbg !2110
  %5 = load ptr, ptr %ks.addr, align 8, !dbg !2110, !tbaa !401
  %seq = getelementptr inbounds %struct.kseq_t, ptr %5, i32 0, i32 2, !dbg !2110
  %s2 = getelementptr inbounds %struct.kstring_t, ptr %seq, i32 0, i32 2, !dbg !2110
  %6 = load ptr, ptr %s2, align 8, !dbg !2110, !tbaa !478
  call void @free(ptr noundef %6) #12, !dbg !2110
  %7 = load ptr, ptr %ks.addr, align 8, !dbg !2110, !tbaa !401
  %qual = getelementptr inbounds %struct.kseq_t, ptr %7, i32 0, i32 3, !dbg !2110
  %s3 = getelementptr inbounds %struct.kstring_t, ptr %qual, i32 0, i32 2, !dbg !2110
  %8 = load ptr, ptr %s3, align 8, !dbg !2110, !tbaa !2098
  call void @free(ptr noundef %8) #12, !dbg !2110
  %9 = load ptr, ptr %ks.addr, align 8, !dbg !2110, !tbaa !401
  %f = getelementptr inbounds %struct.kseq_t, ptr %9, i32 0, i32 5, !dbg !2110
  %10 = load ptr, ptr %f, align 8, !dbg !2110, !tbaa !2049
  call void @ks_destroy(ptr noundef %10), !dbg !2110
  %11 = load ptr, ptr %ks.addr, align 8, !dbg !2110, !tbaa !401
  call void @free(ptr noundef %11) #12, !dbg !2110
  br label %return, !dbg !2110

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2110
}

declare !dbg !2114 i32 @gzclose(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #3

declare !dbg !2117 i32 @fputc(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !2120 void @free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !2123 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %N = alloca i64, align 8
  %dist = alloca i32, align 4
  %std_dev = alloca i32, align 4
  %c = alloca i32, align 4
  %size_l = alloca i32, align 4
  %size_r = alloca i32, align 4
  %is_hap = alloca i32, align 4
  %fpout1 = alloca ptr, align 8
  %fpout2 = alloca ptr, align 8
  %seed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !2127, metadata !DIExpression()), !dbg !2142
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !2128, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.start.p0(i64 8, ptr %N) #12, !dbg !2144
  tail call void @llvm.dbg.declare(metadata ptr %N, metadata !2129, metadata !DIExpression()), !dbg !2145
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #12, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !2133, metadata !DIExpression()), !dbg !2147
  call void @llvm.lifetime.start.p0(i64 4, ptr %std_dev) #12, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %std_dev, metadata !2134, metadata !DIExpression()), !dbg !2148
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2135, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_l) #12, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %size_l, metadata !2136, metadata !DIExpression()), !dbg !2150
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_r) #12, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %size_r, metadata !2137, metadata !DIExpression()), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_hap) #12, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %is_hap, metadata !2138, metadata !DIExpression()), !dbg !2152
  store i32 0, ptr %is_hap, align 4, !dbg !2152, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpout1) #12, !dbg !2153
  tail call void @llvm.dbg.declare(metadata ptr %fpout1, metadata !2139, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpout2) #12, !dbg !2153
  tail call void @llvm.dbg.declare(metadata ptr %fpout2, metadata !2140, metadata !DIExpression()), !dbg !2155
  call void @llvm.lifetime.start.p0(i64 4, ptr %seed) #12, !dbg !2156
  tail call void @llvm.dbg.declare(metadata ptr %seed, metadata !2141, metadata !DIExpression()), !dbg !2157
  store i32 0, ptr %seed, align 4, !dbg !2157, !tbaa !305
  store i64 1000000, ptr %N, align 8, !dbg !2158, !tbaa !1266
  store i32 500, ptr %dist, align 4, !dbg !2159, !tbaa !305
  store i32 50, ptr %std_dev, align 4, !dbg !2160, !tbaa !305
  store i32 70, ptr %size_r, align 4, !dbg !2161, !tbaa !305
  store i32 70, ptr %size_l, align 4, !dbg !2162, !tbaa !305
  br label %while.cond, !dbg !2163

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !2164, !tbaa !305
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !2165, !tbaa !401
  %call = call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef @.str.17) #12, !dbg !2166
  store i32 %call, ptr %c, align 4, !dbg !2167, !tbaa !305
  %cmp = icmp sge i32 %call, 0, !dbg !2168
  br i1 %cmp, label %while.body, label %while.end, !dbg !2163

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4, !dbg !2169, !tbaa !305
  switch i32 %2, label %sw.epilog [
    i32 100, label %sw.bb
    i32 115, label %sw.bb2
    i32 78, label %sw.bb4
    i32 49, label %sw.bb6
    i32 50, label %sw.bb8
    i32 101, label %sw.bb10
    i32 114, label %sw.bb12
    i32 82, label %sw.bb14
    i32 88, label %sw.bb16
    i32 65, label %sw.bb18
    i32 83, label %sw.bb20
    i32 104, label %sw.bb22
  ], !dbg !2171

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8, !dbg !2172, !tbaa !401
  %call1 = call i32 @atoi(ptr noundef %3) #17, !dbg !2174
  store i32 %call1, ptr %dist, align 4, !dbg !2175, !tbaa !305
  br label %sw.epilog, !dbg !2176

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr @optarg, align 8, !dbg !2177, !tbaa !401
  %call3 = call i32 @atoi(ptr noundef %4) #17, !dbg !2178
  store i32 %call3, ptr %std_dev, align 4, !dbg !2179, !tbaa !305
  br label %sw.epilog, !dbg !2180

sw.bb4:                                           ; preds = %while.body
  %5 = load ptr, ptr @optarg, align 8, !dbg !2181, !tbaa !401
  %call5 = call i32 @atoi(ptr noundef %5) #17, !dbg !2182
  %conv = sext i32 %call5 to i64, !dbg !2182
  store i64 %conv, ptr %N, align 8, !dbg !2183, !tbaa !1266
  br label %sw.epilog, !dbg !2184

sw.bb6:                                           ; preds = %while.body
  %6 = load ptr, ptr @optarg, align 8, !dbg !2185, !tbaa !401
  %call7 = call i32 @atoi(ptr noundef %6) #17, !dbg !2186
  store i32 %call7, ptr %size_l, align 4, !dbg !2187, !tbaa !305
  br label %sw.epilog, !dbg !2188

sw.bb8:                                           ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8, !dbg !2189, !tbaa !401
  %call9 = call i32 @atoi(ptr noundef %7) #17, !dbg !2190
  store i32 %call9, ptr %size_r, align 4, !dbg !2191, !tbaa !305
  br label %sw.epilog, !dbg !2192

sw.bb10:                                          ; preds = %while.body
  %8 = load ptr, ptr @optarg, align 8, !dbg !2193, !tbaa !401
  %call11 = call double @atof(ptr noundef %8) #17, !dbg !2194
  store double %call11, ptr @ERR_RATE, align 8, !dbg !2195, !tbaa !317
  br label %sw.epilog, !dbg !2196

sw.bb12:                                          ; preds = %while.body
  %9 = load ptr, ptr @optarg, align 8, !dbg !2197, !tbaa !401
  %call13 = call double @atof(ptr noundef %9) #17, !dbg !2198
  store double %call13, ptr @MUT_RATE, align 8, !dbg !2199, !tbaa !317
  br label %sw.epilog, !dbg !2200

sw.bb14:                                          ; preds = %while.body
  %10 = load ptr, ptr @optarg, align 8, !dbg !2201, !tbaa !401
  %call15 = call double @atof(ptr noundef %10) #17, !dbg !2202
  store double %call15, ptr @INDEL_FRAC, align 8, !dbg !2203, !tbaa !317
  br label %sw.epilog, !dbg !2204

sw.bb16:                                          ; preds = %while.body
  %11 = load ptr, ptr @optarg, align 8, !dbg !2205, !tbaa !401
  %call17 = call double @atof(ptr noundef %11) #17, !dbg !2206
  store double %call17, ptr @INDEL_EXTEND, align 8, !dbg !2207, !tbaa !317
  br label %sw.epilog, !dbg !2208

sw.bb18:                                          ; preds = %while.body
  %12 = load ptr, ptr @optarg, align 8, !dbg !2209, !tbaa !401
  %call19 = call double @atof(ptr noundef %12) #17, !dbg !2210
  store double %call19, ptr @MAX_N_RATIO, align 8, !dbg !2211, !tbaa !317
  br label %sw.epilog, !dbg !2212

sw.bb20:                                          ; preds = %while.body
  %13 = load ptr, ptr @optarg, align 8, !dbg !2213, !tbaa !401
  %call21 = call i32 @atoi(ptr noundef %13) #17, !dbg !2214
  store i32 %call21, ptr %seed, align 4, !dbg !2215, !tbaa !305
  br label %sw.epilog, !dbg !2216

sw.bb22:                                          ; preds = %while.body
  store i32 1, ptr %is_hap, align 4, !dbg !2217, !tbaa !305
  br label %sw.epilog, !dbg !2218

sw.epilog:                                        ; preds = %while.body, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  br label %while.cond, !dbg !2163, !llvm.loop !2219

while.end:                                        ; preds = %while.cond
  %14 = load i32, ptr %argc.addr, align 4, !dbg !2221, !tbaa !305
  %15 = load i32, ptr @optind, align 4, !dbg !2223, !tbaa !305
  %sub = sub nsw i32 %14, %15, !dbg !2224
  %cmp23 = icmp slt i32 %sub, 3, !dbg !2225
  br i1 %cmp23, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %while.end
  %call25 = call i32 @simu_usage(), !dbg !2227
  store i32 %call25, ptr %retval, align 4, !dbg !2228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2228

if.end:                                           ; preds = %while.end
  %16 = load ptr, ptr %argv.addr, align 8, !dbg !2229, !tbaa !401
  %17 = load i32, ptr @optind, align 4, !dbg !2230, !tbaa !305
  %add = add nsw i32 %17, 1, !dbg !2231
  %idxprom = sext i32 %add to i64, !dbg !2229
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom, !dbg !2229
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !2229, !tbaa !401
  %call26 = call noalias ptr @fopen(ptr noundef %18, ptr noundef @.str.18), !dbg !2232
  store ptr %call26, ptr %fpout1, align 8, !dbg !2233, !tbaa !401
  %19 = load ptr, ptr %argv.addr, align 8, !dbg !2234, !tbaa !401
  %20 = load i32, ptr @optind, align 4, !dbg !2235, !tbaa !305
  %add27 = add nsw i32 %20, 2, !dbg !2236
  %idxprom28 = sext i32 %add27 to i64, !dbg !2234
  %arrayidx29 = getelementptr inbounds ptr, ptr %19, i64 %idxprom28, !dbg !2234
  %21 = load ptr, ptr %arrayidx29, align 8, !dbg !2234, !tbaa !401
  %call30 = call noalias ptr @fopen(ptr noundef %21, ptr noundef @.str.18), !dbg !2237
  store ptr %call30, ptr %fpout2, align 8, !dbg !2238, !tbaa !401
  %22 = load ptr, ptr %fpout1, align 8, !dbg !2239, !tbaa !401
  %tobool = icmp ne ptr %22, null, !dbg !2239
  br i1 %tobool, label %lor.lhs.false, label %if.then32, !dbg !2241

lor.lhs.false:                                    ; preds = %if.end
  %23 = load ptr, ptr %fpout2, align 8, !dbg !2242, !tbaa !401
  %tobool31 = icmp ne ptr %23, null, !dbg !2242
  br i1 %tobool31, label %if.end34, label %if.then32, !dbg !2243

if.then32:                                        ; preds = %lor.lhs.false, %if.end
  %24 = load ptr, ptr @stderr, align 8, !dbg !2244, !tbaa !401
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.19), !dbg !2246
  store i32 1, ptr %retval, align 4, !dbg !2247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2247

if.end34:                                         ; preds = %lor.lhs.false
  %25 = load i32, ptr %seed, align 4, !dbg !2248, !tbaa !305
  %cmp35 = icmp sle i32 %25, 0, !dbg !2250
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !2251

if.then37:                                        ; preds = %if.end34
  %call38 = call i64 @time(ptr noundef null) #12, !dbg !2252
  %and = and i64 %call38, 2147483647, !dbg !2253
  %conv39 = trunc i64 %and to i32, !dbg !2252
  store i32 %conv39, ptr %seed, align 4, !dbg !2254, !tbaa !305
  br label %if.end40, !dbg !2255

if.end40:                                         ; preds = %if.then37, %if.end34
  %26 = load ptr, ptr @stderr, align 8, !dbg !2256, !tbaa !401
  %27 = load i32, ptr %seed, align 4, !dbg !2257, !tbaa !305
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.20, i32 noundef %27), !dbg !2258
  %28 = load i32, ptr %seed, align 4, !dbg !2259, !tbaa !305
  %conv42 = sext i32 %28 to i64, !dbg !2259
  call void @hts_srand48(i64 noundef %conv42), !dbg !2260
  %29 = load ptr, ptr %fpout1, align 8, !dbg !2261, !tbaa !401
  %30 = load ptr, ptr %fpout2, align 8, !dbg !2262, !tbaa !401
  %31 = load ptr, ptr %argv.addr, align 8, !dbg !2263, !tbaa !401
  %32 = load i32, ptr @optind, align 4, !dbg !2264, !tbaa !305
  %idxprom43 = sext i32 %32 to i64, !dbg !2263
  %arrayidx44 = getelementptr inbounds ptr, ptr %31, i64 %idxprom43, !dbg !2263
  %33 = load ptr, ptr %arrayidx44, align 8, !dbg !2263, !tbaa !401
  %34 = load i32, ptr %is_hap, align 4, !dbg !2265, !tbaa !305
  %35 = load i64, ptr %N, align 8, !dbg !2266, !tbaa !1266
  %36 = load i32, ptr %dist, align 4, !dbg !2267, !tbaa !305
  %37 = load i32, ptr %std_dev, align 4, !dbg !2268, !tbaa !305
  %38 = load i32, ptr %size_l, align 4, !dbg !2269, !tbaa !305
  %39 = load i32, ptr %size_r, align 4, !dbg !2270, !tbaa !305
  call void @wgsim_core(ptr noundef %29, ptr noundef %30, ptr noundef %33, i32 noundef %34, i64 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39), !dbg !2271
  %40 = load ptr, ptr %fpout1, align 8, !dbg !2272, !tbaa !401
  %call45 = call i32 @fclose(ptr noundef %40), !dbg !2273
  %41 = load ptr, ptr %fpout2, align 8, !dbg !2274, !tbaa !401
  %call46 = call i32 @fclose(ptr noundef %41), !dbg !2275
  store i32 0, ptr %retval, align 4, !dbg !2276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2276

cleanup:                                          ; preds = %if.end40, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seed) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpout2) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpout1) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_hap) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_r) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_l) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %std_dev) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 8, ptr %N) #12, !dbg !2277
  %42 = load i32, ptr %retval, align 4, !dbg !2277
  ret i32 %42, !dbg !2277
}

; Function Attrs: nounwind
declare !dbg !2278 i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #8 !dbg !2284 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !2288, metadata !DIExpression()), !dbg !2289
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !2290, !tbaa !401
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #12, !dbg !2291
  %conv = trunc i64 %call to i32, !dbg !2292
  ret i32 %conv, !dbg !2293
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally double @atof(ptr noundef nonnull %__nptr) #8 !dbg !2294 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !2299, metadata !DIExpression()), !dbg !2300
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !2301, !tbaa !401
  %call = call double @strtod(ptr noundef %0, ptr noundef null) #12, !dbg !2302
  ret double %call, !dbg !2303
}

; Function Attrs: nounwind uwtable
define internal i32 @simu_usage() #0 !dbg !2304 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !2307, !tbaa !401
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.21), !dbg !2308
  %1 = load ptr, ptr @stderr, align 8, !dbg !2309, !tbaa !401
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.22), !dbg !2310
  %2 = load ptr, ptr @stderr, align 8, !dbg !2311, !tbaa !401
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.23, ptr noundef @.str.24), !dbg !2312
  %3 = load ptr, ptr @stderr, align 8, !dbg !2313, !tbaa !401
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.25), !dbg !2314
  %4 = load ptr, ptr @stderr, align 8, !dbg !2315, !tbaa !401
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.26), !dbg !2316
  %5 = load ptr, ptr @stderr, align 8, !dbg !2317, !tbaa !401
  %6 = load double, ptr @ERR_RATE, align 8, !dbg !2318, !tbaa !317
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.27, double noundef %6), !dbg !2319
  %7 = load ptr, ptr @stderr, align 8, !dbg !2320, !tbaa !401
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.28), !dbg !2321
  %8 = load ptr, ptr @stderr, align 8, !dbg !2322, !tbaa !401
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.29), !dbg !2323
  %9 = load ptr, ptr @stderr, align 8, !dbg !2324, !tbaa !401
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.30), !dbg !2325
  %10 = load ptr, ptr @stderr, align 8, !dbg !2326, !tbaa !401
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.31), !dbg !2327
  %11 = load ptr, ptr @stderr, align 8, !dbg !2328, !tbaa !401
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.32), !dbg !2329
  %12 = load ptr, ptr @stderr, align 8, !dbg !2330, !tbaa !401
  %13 = load double, ptr @MUT_RATE, align 8, !dbg !2331, !tbaa !317
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.33, double noundef %13), !dbg !2332
  %14 = load ptr, ptr @stderr, align 8, !dbg !2333, !tbaa !401
  %15 = load double, ptr @INDEL_FRAC, align 8, !dbg !2334, !tbaa !317
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.34, double noundef %15), !dbg !2335
  %16 = load ptr, ptr @stderr, align 8, !dbg !2336, !tbaa !401
  %17 = load double, ptr @INDEL_EXTEND, align 8, !dbg !2337, !tbaa !317
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.35, double noundef %17), !dbg !2338
  %18 = load ptr, ptr @stderr, align 8, !dbg !2339, !tbaa !401
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.36), !dbg !2340
  %19 = load ptr, ptr @stderr, align 8, !dbg !2341, !tbaa !401
  %20 = load double, ptr @MAX_N_RATIO, align 8, !dbg !2342, !tbaa !317
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.37, double noundef %20), !dbg !2343
  %21 = load ptr, ptr @stderr, align 8, !dbg !2344, !tbaa !401
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.38), !dbg !2345
  %22 = load ptr, ptr @stderr, align 8, !dbg !2346, !tbaa !401
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.21), !dbg !2347
  ret i32 1, !dbg !2348
}

declare !dbg !2349 noalias ptr @fopen(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !2352 i64 @time(ptr noundef) #2

declare !dbg !2360 void @hts_srand48(i64 noundef) #5

declare !dbg !2364 i32 @fclose(ptr noundef) #5

declare !dbg !2367 i32 @putc(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal ptr @ks_init(ptr noundef %f) #0 !dbg !2368 {
entry:
  %f.addr = alloca ptr, align 8
  %ks = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 8, ptr %ks) #12, !dbg !2374
  tail call void @llvm.dbg.declare(metadata ptr %ks, metadata !2373, metadata !DIExpression()), !dbg !2374
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #13, !dbg !2374
  store ptr %call, ptr %ks, align 8, !dbg !2374, !tbaa !401
  %0 = load ptr, ptr %f.addr, align 8, !dbg !2374, !tbaa !401
  %1 = load ptr, ptr %ks, align 8, !dbg !2374, !tbaa !401
  %f1 = getelementptr inbounds %struct.__kstream_t, ptr %1, i32 0, i32 4, !dbg !2374
  store ptr %0, ptr %f1, align 8, !dbg !2374, !tbaa !2375
  %2 = load ptr, ptr %ks, align 8, !dbg !2374, !tbaa !401
  %bufsize = getelementptr inbounds %struct.__kstream_t, ptr %2, i32 0, i32 2, !dbg !2374
  %bf.load = load i32, ptr %bufsize, align 8, !dbg !2374
  %bf.clear = and i32 %bf.load, 3, !dbg !2374
  %bf.set = or i32 %bf.clear, 65536, !dbg !2374
  store i32 %bf.set, ptr %bufsize, align 8, !dbg !2374
  %call2 = call noalias ptr @malloc(i64 noundef 16384) #15, !dbg !2374
  %3 = load ptr, ptr %ks, align 8, !dbg !2374, !tbaa !401
  %buf = getelementptr inbounds %struct.__kstream_t, ptr %3, i32 0, i32 5, !dbg !2374
  store ptr %call2, ptr %buf, align 8, !dbg !2374, !tbaa !2377
  %4 = load ptr, ptr %ks, align 8, !dbg !2374, !tbaa !401
  call void @llvm.lifetime.end.p0(i64 8, ptr %ks) #12, !dbg !2374
  ret ptr %4, !dbg !2374
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !2378 noalias ptr @malloc(i64 noundef) #9

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ks_getc(ptr noundef %ks) #6 !dbg !2381 {
entry:
  %retval = alloca i32, align 4
  %ks.addr = alloca ptr, align 8
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !2385, metadata !DIExpression()), !dbg !2386
  %0 = load ptr, ptr %ks.addr, align 8, !dbg !2387, !tbaa !401
  %is_eof = getelementptr inbounds %struct.__kstream_t, ptr %0, i32 0, i32 2, !dbg !2387
  %bf.load = load i32, ptr %is_eof, align 8, !dbg !2387
  %bf.shl = shl i32 %bf.load, 30, !dbg !2387
  %bf.ashr = ashr i32 %bf.shl, 30, !dbg !2387
  %tobool = icmp ne i32 %bf.ashr, 0, !dbg !2387
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2387

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %ks.addr, align 8, !dbg !2387, !tbaa !401
  %begin = getelementptr inbounds %struct.__kstream_t, ptr %1, i32 0, i32 0, !dbg !2387
  %2 = load i32, ptr %begin, align 8, !dbg !2387, !tbaa !2389
  %3 = load ptr, ptr %ks.addr, align 8, !dbg !2387, !tbaa !401
  %end = getelementptr inbounds %struct.__kstream_t, ptr %3, i32 0, i32 1, !dbg !2387
  %4 = load i32, ptr %end, align 4, !dbg !2387, !tbaa !2390
  %cmp = icmp sge i32 %2, %4, !dbg !2387
  br i1 %cmp, label %if.then, label %if.end, !dbg !2386

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !2387
  br label %return, !dbg !2387

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %ks.addr, align 8, !dbg !2391, !tbaa !401
  %begin1 = getelementptr inbounds %struct.__kstream_t, ptr %5, i32 0, i32 0, !dbg !2391
  %6 = load i32, ptr %begin1, align 8, !dbg !2391, !tbaa !2389
  %7 = load ptr, ptr %ks.addr, align 8, !dbg !2391, !tbaa !401
  %end2 = getelementptr inbounds %struct.__kstream_t, ptr %7, i32 0, i32 1, !dbg !2391
  %8 = load i32, ptr %end2, align 4, !dbg !2391, !tbaa !2390
  %cmp3 = icmp sge i32 %6, %8, !dbg !2391
  br i1 %cmp3, label %if.then4, label %if.end15, !dbg !2386

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %ks.addr, align 8, !dbg !2393, !tbaa !401
  %begin5 = getelementptr inbounds %struct.__kstream_t, ptr %9, i32 0, i32 0, !dbg !2393
  store i32 0, ptr %begin5, align 8, !dbg !2393, !tbaa !2389
  %10 = load ptr, ptr %ks.addr, align 8, !dbg !2393, !tbaa !401
  %f = getelementptr inbounds %struct.__kstream_t, ptr %10, i32 0, i32 4, !dbg !2393
  %11 = load ptr, ptr %f, align 8, !dbg !2393, !tbaa !2375
  %12 = load ptr, ptr %ks.addr, align 8, !dbg !2393, !tbaa !401
  %buf = getelementptr inbounds %struct.__kstream_t, ptr %12, i32 0, i32 5, !dbg !2393
  %13 = load ptr, ptr %buf, align 8, !dbg !2393, !tbaa !2377
  %14 = load ptr, ptr %ks.addr, align 8, !dbg !2393, !tbaa !401
  %bufsize = getelementptr inbounds %struct.__kstream_t, ptr %14, i32 0, i32 2, !dbg !2393
  %bf.load6 = load i32, ptr %bufsize, align 8, !dbg !2393
  %bf.ashr7 = ashr i32 %bf.load6, 2, !dbg !2393
  %call = call i32 @gzread(ptr noundef %11, ptr noundef %13, i32 noundef %bf.ashr7), !dbg !2393
  %15 = load ptr, ptr %ks.addr, align 8, !dbg !2393, !tbaa !401
  %end8 = getelementptr inbounds %struct.__kstream_t, ptr %15, i32 0, i32 1, !dbg !2393
  store i32 %call, ptr %end8, align 4, !dbg !2393, !tbaa !2390
  %16 = load ptr, ptr %ks.addr, align 8, !dbg !2395, !tbaa !401
  %end9 = getelementptr inbounds %struct.__kstream_t, ptr %16, i32 0, i32 1, !dbg !2395
  %17 = load i32, ptr %end9, align 4, !dbg !2395, !tbaa !2390
  %cmp10 = icmp eq i32 %17, 0, !dbg !2395
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !2393

if.then11:                                        ; preds = %if.then4
  %18 = load ptr, ptr %ks.addr, align 8, !dbg !2397, !tbaa !401
  %is_eof12 = getelementptr inbounds %struct.__kstream_t, ptr %18, i32 0, i32 2, !dbg !2397
  %bf.load13 = load i32, ptr %is_eof12, align 8, !dbg !2397
  %bf.clear = and i32 %bf.load13, -4, !dbg !2397
  %bf.set = or i32 %bf.clear, 1, !dbg !2397
  store i32 %bf.set, ptr %is_eof12, align 8, !dbg !2397
  store i32 -1, ptr %retval, align 4, !dbg !2397
  br label %return, !dbg !2397

if.end14:                                         ; preds = %if.then4
  br label %if.end15, !dbg !2393

if.end15:                                         ; preds = %if.end14, %if.end
  %19 = load ptr, ptr %ks.addr, align 8, !dbg !2386, !tbaa !401
  %seek_pos = getelementptr inbounds %struct.__kstream_t, ptr %19, i32 0, i32 3, !dbg !2386
  %20 = load i64, ptr %seek_pos, align 8, !dbg !2386, !tbaa !2399
  %inc = add i64 %20, 1, !dbg !2386
  store i64 %inc, ptr %seek_pos, align 8, !dbg !2386, !tbaa !2399
  %21 = load ptr, ptr %ks.addr, align 8, !dbg !2386, !tbaa !401
  %buf16 = getelementptr inbounds %struct.__kstream_t, ptr %21, i32 0, i32 5, !dbg !2386
  %22 = load ptr, ptr %buf16, align 8, !dbg !2386, !tbaa !2377
  %23 = load ptr, ptr %ks.addr, align 8, !dbg !2386, !tbaa !401
  %begin17 = getelementptr inbounds %struct.__kstream_t, ptr %23, i32 0, i32 0, !dbg !2386
  %24 = load i32, ptr %begin17, align 8, !dbg !2386, !tbaa !2389
  %inc18 = add nsw i32 %24, 1, !dbg !2386
  store i32 %inc18, ptr %begin17, align 8, !dbg !2386, !tbaa !2389
  %idxprom = sext i32 %24 to i64, !dbg !2386
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %idxprom, !dbg !2386
  %25 = load i8, ptr %arrayidx, align 1, !dbg !2386, !tbaa !480
  %conv = zext i8 %25 to i32, !dbg !2386
  store i32 %conv, ptr %retval, align 4, !dbg !2386
  br label %return, !dbg !2386

return:                                           ; preds = %if.end15, %if.then11, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2386
  ret i32 %26, !dbg !2386
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ks_getuntil(ptr noundef %ks, i32 noundef %delimiter, ptr noundef %str, ptr noundef %dret) #6 !dbg !2400 {
entry:
  %ks.addr = alloca ptr, align 8
  %delimiter.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %dret.addr = alloca ptr, align 8
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !2405, metadata !DIExpression()), !dbg !2409
  store i32 %delimiter, ptr %delimiter.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %delimiter.addr, metadata !2406, metadata !DIExpression()), !dbg !2409
  store ptr %str, ptr %str.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2407, metadata !DIExpression()), !dbg !2409
  store ptr %dret, ptr %dret.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %dret.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  %0 = load ptr, ptr %ks.addr, align 8, !dbg !2409, !tbaa !401
  %1 = load i32, ptr %delimiter.addr, align 4, !dbg !2409, !tbaa !305
  %2 = load ptr, ptr %str.addr, align 8, !dbg !2409, !tbaa !401
  %3 = load ptr, ptr %dret.addr, align 8, !dbg !2409, !tbaa !401
  %call = call i32 @ks_getuntil2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0), !dbg !2409
  ret i32 %call, !dbg !2409
}

; Function Attrs: nounwind uwtable
define internal i32 @ks_getuntil2(ptr noundef %ks, i32 noundef %delimiter, ptr noundef %str, ptr noundef %dret, i32 noundef %append) #0 !dbg !2410 {
entry:
  %retval = alloca i32, align 4
  %ks.addr = alloca ptr, align 8
  %delimiter.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %dret.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  %gotany = alloca i32, align 4
  %seek_pos = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !2414, metadata !DIExpression()), !dbg !2425
  store i32 %delimiter, ptr %delimiter.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %delimiter.addr, metadata !2415, metadata !DIExpression()), !dbg !2425
  store ptr %str, ptr %str.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2416, metadata !DIExpression()), !dbg !2425
  store ptr %dret, ptr %dret.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %dret.addr, metadata !2417, metadata !DIExpression()), !dbg !2425
  store i32 %append, ptr %append.addr, align 4, !tbaa !305
  tail call void @llvm.dbg.declare(metadata ptr %append.addr, metadata !2418, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotany) #12, !dbg !2425
  tail call void @llvm.dbg.declare(metadata ptr %gotany, metadata !2419, metadata !DIExpression()), !dbg !2425
  store i32 0, ptr %gotany, align 4, !dbg !2425, !tbaa !305
  %0 = load ptr, ptr %dret.addr, align 8, !dbg !2426, !tbaa !401
  %tobool = icmp ne ptr %0, null, !dbg !2426
  br i1 %tobool, label %if.then, label %if.end, !dbg !2425

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dret.addr, align 8, !dbg !2426, !tbaa !401
  store i32 0, ptr %1, align 4, !dbg !2426, !tbaa !305
  br label %if.end, !dbg !2426

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %append.addr, align 4, !dbg !2425, !tbaa !305
  %tobool1 = icmp ne i32 %2, 0, !dbg !2425
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2425

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %str.addr, align 8, !dbg !2425, !tbaa !401
  %l = getelementptr inbounds %struct.kstring_t, ptr %3, i32 0, i32 0, !dbg !2425
  %4 = load i64, ptr %l, align 8, !dbg !2425, !tbaa !2428
  br label %cond.end, !dbg !2425

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2425

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2425
  %5 = load ptr, ptr %str.addr, align 8, !dbg !2425, !tbaa !401
  %l2 = getelementptr inbounds %struct.kstring_t, ptr %5, i32 0, i32 0, !dbg !2425
  store i64 %cond, ptr %l2, align 8, !dbg !2425, !tbaa !2428
  call void @llvm.lifetime.start.p0(i64 8, ptr %seek_pos) #12, !dbg !2425
  tail call void @llvm.dbg.declare(metadata ptr %seek_pos, metadata !2420, metadata !DIExpression()), !dbg !2425
  %6 = load ptr, ptr %str.addr, align 8, !dbg !2425, !tbaa !401
  %l3 = getelementptr inbounds %struct.kstring_t, ptr %6, i32 0, i32 0, !dbg !2425
  %7 = load i64, ptr %l3, align 8, !dbg !2425, !tbaa !2428
  store i64 %7, ptr %seek_pos, align 8, !dbg !2425, !tbaa !1266
  br label %for.cond, !dbg !2425

for.cond:                                         ; preds = %cleanup.cont, %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2429
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2421, metadata !DIExpression()), !dbg !2429
  %8 = load ptr, ptr %ks.addr, align 8, !dbg !2430, !tbaa !401
  %begin = getelementptr inbounds %struct.__kstream_t, ptr %8, i32 0, i32 0, !dbg !2430
  %9 = load i32, ptr %begin, align 8, !dbg !2430, !tbaa !2389
  %10 = load ptr, ptr %ks.addr, align 8, !dbg !2430, !tbaa !401
  %end = getelementptr inbounds %struct.__kstream_t, ptr %10, i32 0, i32 1, !dbg !2430
  %11 = load i32, ptr %end, align 4, !dbg !2430, !tbaa !2390
  %cmp = icmp sge i32 %9, %11, !dbg !2430
  br i1 %cmp, label %if.then4, label %if.end18, !dbg !2429

if.then4:                                         ; preds = %for.cond
  %12 = load ptr, ptr %ks.addr, align 8, !dbg !2432, !tbaa !401
  %is_eof = getelementptr inbounds %struct.__kstream_t, ptr %12, i32 0, i32 2, !dbg !2432
  %bf.load = load i32, ptr %is_eof, align 8, !dbg !2432
  %bf.shl = shl i32 %bf.load, 30, !dbg !2432
  %bf.ashr = ashr i32 %bf.shl, 30, !dbg !2432
  %tobool5 = icmp ne i32 %bf.ashr, 0, !dbg !2432
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !2435

if.then6:                                         ; preds = %if.then4
  %13 = load ptr, ptr %ks.addr, align 8, !dbg !2436, !tbaa !401
  %begin7 = getelementptr inbounds %struct.__kstream_t, ptr %13, i32 0, i32 0, !dbg !2436
  store i32 0, ptr %begin7, align 8, !dbg !2436, !tbaa !2389
  %14 = load ptr, ptr %ks.addr, align 8, !dbg !2436, !tbaa !401
  %f = getelementptr inbounds %struct.__kstream_t, ptr %14, i32 0, i32 4, !dbg !2436
  %15 = load ptr, ptr %f, align 8, !dbg !2436, !tbaa !2375
  %16 = load ptr, ptr %ks.addr, align 8, !dbg !2436, !tbaa !401
  %buf = getelementptr inbounds %struct.__kstream_t, ptr %16, i32 0, i32 5, !dbg !2436
  %17 = load ptr, ptr %buf, align 8, !dbg !2436, !tbaa !2377
  %18 = load ptr, ptr %ks.addr, align 8, !dbg !2436, !tbaa !401
  %bufsize = getelementptr inbounds %struct.__kstream_t, ptr %18, i32 0, i32 2, !dbg !2436
  %bf.load8 = load i32, ptr %bufsize, align 8, !dbg !2436
  %bf.ashr9 = ashr i32 %bf.load8, 2, !dbg !2436
  %call = call i32 @gzread(ptr noundef %15, ptr noundef %17, i32 noundef %bf.ashr9), !dbg !2436
  %19 = load ptr, ptr %ks.addr, align 8, !dbg !2436, !tbaa !401
  %end10 = getelementptr inbounds %struct.__kstream_t, ptr %19, i32 0, i32 1, !dbg !2436
  store i32 %call, ptr %end10, align 4, !dbg !2436, !tbaa !2390
  %20 = load ptr, ptr %ks.addr, align 8, !dbg !2438, !tbaa !401
  %end11 = getelementptr inbounds %struct.__kstream_t, ptr %20, i32 0, i32 1, !dbg !2438
  %21 = load i32, ptr %end11, align 4, !dbg !2438, !tbaa !2390
  %cmp12 = icmp eq i32 %21, 0, !dbg !2438
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !2436

if.then13:                                        ; preds = %if.then6
  %22 = load ptr, ptr %ks.addr, align 8, !dbg !2440, !tbaa !401
  %is_eof14 = getelementptr inbounds %struct.__kstream_t, ptr %22, i32 0, i32 2, !dbg !2440
  %bf.load15 = load i32, ptr %is_eof14, align 8, !dbg !2440
  %bf.clear = and i32 %bf.load15, -4, !dbg !2440
  %bf.set = or i32 %bf.clear, 1, !dbg !2440
  store i32 %bf.set, ptr %is_eof14, align 8, !dbg !2440
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2440

if.end16:                                         ; preds = %if.then6
  br label %if.end17, !dbg !2436

if.else:                                          ; preds = %if.then4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

if.end17:                                         ; preds = %if.end16
  br label %if.end18, !dbg !2435

if.end18:                                         ; preds = %if.end17, %for.cond
  %23 = load i32, ptr %delimiter.addr, align 4, !dbg !2442, !tbaa !305
  %cmp19 = icmp eq i32 %23, 2, !dbg !2442
  br i1 %cmp19, label %if.then20, label %if.else30, !dbg !2429

if.then20:                                        ; preds = %if.end18
  %24 = load ptr, ptr %ks.addr, align 8, !dbg !2444, !tbaa !401
  %begin21 = getelementptr inbounds %struct.__kstream_t, ptr %24, i32 0, i32 0, !dbg !2444
  %25 = load i32, ptr %begin21, align 8, !dbg !2444, !tbaa !2389
  store i32 %25, ptr %i, align 4, !dbg !2444, !tbaa !305
  br label %for.cond22, !dbg !2444

for.cond22:                                       ; preds = %for.inc, %if.then20
  %26 = load i32, ptr %i, align 4, !dbg !2447, !tbaa !305
  %27 = load ptr, ptr %ks.addr, align 8, !dbg !2447, !tbaa !401
  %end23 = getelementptr inbounds %struct.__kstream_t, ptr %27, i32 0, i32 1, !dbg !2447
  %28 = load i32, ptr %end23, align 4, !dbg !2447, !tbaa !2390
  %cmp24 = icmp slt i32 %26, %28, !dbg !2447
  br i1 %cmp24, label %for.body, label %for.end, !dbg !2444

for.body:                                         ; preds = %for.cond22
  %29 = load ptr, ptr %ks.addr, align 8, !dbg !2449, !tbaa !401
  %buf25 = getelementptr inbounds %struct.__kstream_t, ptr %29, i32 0, i32 5, !dbg !2449
  %30 = load ptr, ptr %buf25, align 8, !dbg !2449, !tbaa !2377
  %31 = load i32, ptr %i, align 4, !dbg !2449, !tbaa !305
  %idxprom = sext i32 %31 to i64, !dbg !2449
  %arrayidx = getelementptr inbounds i8, ptr %30, i64 %idxprom, !dbg !2449
  %32 = load i8, ptr %arrayidx, align 1, !dbg !2449, !tbaa !480
  %conv = zext i8 %32 to i32, !dbg !2449
  %cmp26 = icmp eq i32 %conv, 10, !dbg !2449
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2447

if.then28:                                        ; preds = %for.body
  br label %for.end, !dbg !2449

if.end29:                                         ; preds = %for.body
  br label %for.inc, !dbg !2449

for.inc:                                          ; preds = %if.end29
  %33 = load i32, ptr %i, align 4, !dbg !2447, !tbaa !305
  %inc = add nsw i32 %33, 1, !dbg !2447
  store i32 %inc, ptr %i, align 4, !dbg !2447, !tbaa !305
  br label %for.cond22, !dbg !2447, !llvm.loop !2451

for.end:                                          ; preds = %if.then28, %for.cond22
  br label %if.end110, !dbg !2452

if.else30:                                        ; preds = %if.end18
  %34 = load i32, ptr %delimiter.addr, align 4, !dbg !2453, !tbaa !305
  %cmp31 = icmp sgt i32 %34, 2, !dbg !2453
  br i1 %cmp31, label %if.then33, label %if.else51, !dbg !2442

if.then33:                                        ; preds = %if.else30
  %35 = load ptr, ptr %ks.addr, align 8, !dbg !2455, !tbaa !401
  %begin34 = getelementptr inbounds %struct.__kstream_t, ptr %35, i32 0, i32 0, !dbg !2455
  %36 = load i32, ptr %begin34, align 8, !dbg !2455, !tbaa !2389
  store i32 %36, ptr %i, align 4, !dbg !2455, !tbaa !305
  br label %for.cond35, !dbg !2455

for.cond35:                                       ; preds = %for.inc48, %if.then33
  %37 = load i32, ptr %i, align 4, !dbg !2458, !tbaa !305
  %38 = load ptr, ptr %ks.addr, align 8, !dbg !2458, !tbaa !401
  %end36 = getelementptr inbounds %struct.__kstream_t, ptr %38, i32 0, i32 1, !dbg !2458
  %39 = load i32, ptr %end36, align 4, !dbg !2458, !tbaa !2390
  %cmp37 = icmp slt i32 %37, %39, !dbg !2458
  br i1 %cmp37, label %for.body39, label %for.end50, !dbg !2455

for.body39:                                       ; preds = %for.cond35
  %40 = load ptr, ptr %ks.addr, align 8, !dbg !2460, !tbaa !401
  %buf40 = getelementptr inbounds %struct.__kstream_t, ptr %40, i32 0, i32 5, !dbg !2460
  %41 = load ptr, ptr %buf40, align 8, !dbg !2460, !tbaa !2377
  %42 = load i32, ptr %i, align 4, !dbg !2460, !tbaa !305
  %idxprom41 = sext i32 %42 to i64, !dbg !2460
  %arrayidx42 = getelementptr inbounds i8, ptr %41, i64 %idxprom41, !dbg !2460
  %43 = load i8, ptr %arrayidx42, align 1, !dbg !2460, !tbaa !480
  %conv43 = zext i8 %43 to i32, !dbg !2460
  %44 = load i32, ptr %delimiter.addr, align 4, !dbg !2460, !tbaa !305
  %cmp44 = icmp eq i32 %conv43, %44, !dbg !2460
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !2458

if.then46:                                        ; preds = %for.body39
  br label %for.end50, !dbg !2460

if.end47:                                         ; preds = %for.body39
  br label %for.inc48, !dbg !2460

for.inc48:                                        ; preds = %if.end47
  %45 = load i32, ptr %i, align 4, !dbg !2458, !tbaa !305
  %inc49 = add nsw i32 %45, 1, !dbg !2458
  store i32 %inc49, ptr %i, align 4, !dbg !2458, !tbaa !305
  br label %for.cond35, !dbg !2458, !llvm.loop !2462

for.end50:                                        ; preds = %if.then46, %for.cond35
  br label %if.end109, !dbg !2463

if.else51:                                        ; preds = %if.else30
  %46 = load i32, ptr %delimiter.addr, align 4, !dbg !2464, !tbaa !305
  %cmp52 = icmp eq i32 %46, 0, !dbg !2464
  br i1 %cmp52, label %if.then54, label %if.else75, !dbg !2453

if.then54:                                        ; preds = %if.else51
  %47 = load ptr, ptr %ks.addr, align 8, !dbg !2466, !tbaa !401
  %begin55 = getelementptr inbounds %struct.__kstream_t, ptr %47, i32 0, i32 0, !dbg !2466
  %48 = load i32, ptr %begin55, align 8, !dbg !2466, !tbaa !2389
  store i32 %48, ptr %i, align 4, !dbg !2466, !tbaa !305
  br label %for.cond56, !dbg !2466

for.cond56:                                       ; preds = %for.inc72, %if.then54
  %49 = load i32, ptr %i, align 4, !dbg !2469, !tbaa !305
  %50 = load ptr, ptr %ks.addr, align 8, !dbg !2469, !tbaa !401
  %end57 = getelementptr inbounds %struct.__kstream_t, ptr %50, i32 0, i32 1, !dbg !2469
  %51 = load i32, ptr %end57, align 4, !dbg !2469, !tbaa !2390
  %cmp58 = icmp slt i32 %49, %51, !dbg !2469
  br i1 %cmp58, label %for.body60, label %for.end74, !dbg !2466

for.body60:                                       ; preds = %for.cond56
  %call61 = call ptr @__ctype_b_loc() #14, !dbg !2471
  %52 = load ptr, ptr %call61, align 8, !dbg !2471, !tbaa !401
  %53 = load ptr, ptr %ks.addr, align 8, !dbg !2471, !tbaa !401
  %buf62 = getelementptr inbounds %struct.__kstream_t, ptr %53, i32 0, i32 5, !dbg !2471
  %54 = load ptr, ptr %buf62, align 8, !dbg !2471, !tbaa !2377
  %55 = load i32, ptr %i, align 4, !dbg !2471, !tbaa !305
  %idxprom63 = sext i32 %55 to i64, !dbg !2471
  %arrayidx64 = getelementptr inbounds i8, ptr %54, i64 %idxprom63, !dbg !2471
  %56 = load i8, ptr %arrayidx64, align 1, !dbg !2471, !tbaa !480
  %conv65 = zext i8 %56 to i32, !dbg !2471
  %idxprom66 = sext i32 %conv65 to i64, !dbg !2471
  %arrayidx67 = getelementptr inbounds i16, ptr %52, i64 %idxprom66, !dbg !2471
  %57 = load i16, ptr %arrayidx67, align 2, !dbg !2471, !tbaa !488
  %conv68 = zext i16 %57 to i32, !dbg !2471
  %and = and i32 %conv68, 8192, !dbg !2471
  %tobool69 = icmp ne i32 %and, 0, !dbg !2471
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !2469

if.then70:                                        ; preds = %for.body60
  br label %for.end74, !dbg !2471

if.end71:                                         ; preds = %for.body60
  br label %for.inc72, !dbg !2471

for.inc72:                                        ; preds = %if.end71
  %58 = load i32, ptr %i, align 4, !dbg !2469, !tbaa !305
  %inc73 = add nsw i32 %58, 1, !dbg !2469
  store i32 %inc73, ptr %i, align 4, !dbg !2469, !tbaa !305
  br label %for.cond56, !dbg !2469, !llvm.loop !2473

for.end74:                                        ; preds = %if.then70, %for.cond56
  br label %if.end108, !dbg !2474

if.else75:                                        ; preds = %if.else51
  %59 = load i32, ptr %delimiter.addr, align 4, !dbg !2475, !tbaa !305
  %cmp76 = icmp eq i32 %59, 1, !dbg !2475
  br i1 %cmp76, label %if.then78, label %if.else106, !dbg !2464

if.then78:                                        ; preds = %if.else75
  %60 = load ptr, ptr %ks.addr, align 8, !dbg !2477, !tbaa !401
  %begin79 = getelementptr inbounds %struct.__kstream_t, ptr %60, i32 0, i32 0, !dbg !2477
  %61 = load i32, ptr %begin79, align 8, !dbg !2477, !tbaa !2389
  store i32 %61, ptr %i, align 4, !dbg !2477, !tbaa !305
  br label %for.cond80, !dbg !2477

for.cond80:                                       ; preds = %for.inc103, %if.then78
  %62 = load i32, ptr %i, align 4, !dbg !2480, !tbaa !305
  %63 = load ptr, ptr %ks.addr, align 8, !dbg !2480, !tbaa !401
  %end81 = getelementptr inbounds %struct.__kstream_t, ptr %63, i32 0, i32 1, !dbg !2480
  %64 = load i32, ptr %end81, align 4, !dbg !2480, !tbaa !2390
  %cmp82 = icmp slt i32 %62, %64, !dbg !2480
  br i1 %cmp82, label %for.body84, label %for.end105, !dbg !2477

for.body84:                                       ; preds = %for.cond80
  %call85 = call ptr @__ctype_b_loc() #14, !dbg !2482
  %65 = load ptr, ptr %call85, align 8, !dbg !2482, !tbaa !401
  %66 = load ptr, ptr %ks.addr, align 8, !dbg !2482, !tbaa !401
  %buf86 = getelementptr inbounds %struct.__kstream_t, ptr %66, i32 0, i32 5, !dbg !2482
  %67 = load ptr, ptr %buf86, align 8, !dbg !2482, !tbaa !2377
  %68 = load i32, ptr %i, align 4, !dbg !2482, !tbaa !305
  %idxprom87 = sext i32 %68 to i64, !dbg !2482
  %arrayidx88 = getelementptr inbounds i8, ptr %67, i64 %idxprom87, !dbg !2482
  %69 = load i8, ptr %arrayidx88, align 1, !dbg !2482, !tbaa !480
  %conv89 = zext i8 %69 to i32, !dbg !2482
  %idxprom90 = sext i32 %conv89 to i64, !dbg !2482
  %arrayidx91 = getelementptr inbounds i16, ptr %65, i64 %idxprom90, !dbg !2482
  %70 = load i16, ptr %arrayidx91, align 2, !dbg !2482, !tbaa !488
  %conv92 = zext i16 %70 to i32, !dbg !2482
  %and93 = and i32 %conv92, 8192, !dbg !2482
  %tobool94 = icmp ne i32 %and93, 0, !dbg !2482
  br i1 %tobool94, label %land.lhs.true, label %if.end102, !dbg !2482

land.lhs.true:                                    ; preds = %for.body84
  %71 = load ptr, ptr %ks.addr, align 8, !dbg !2482, !tbaa !401
  %buf95 = getelementptr inbounds %struct.__kstream_t, ptr %71, i32 0, i32 5, !dbg !2482
  %72 = load ptr, ptr %buf95, align 8, !dbg !2482, !tbaa !2377
  %73 = load i32, ptr %i, align 4, !dbg !2482, !tbaa !305
  %idxprom96 = sext i32 %73 to i64, !dbg !2482
  %arrayidx97 = getelementptr inbounds i8, ptr %72, i64 %idxprom96, !dbg !2482
  %74 = load i8, ptr %arrayidx97, align 1, !dbg !2482, !tbaa !480
  %conv98 = zext i8 %74 to i32, !dbg !2482
  %cmp99 = icmp ne i32 %conv98, 32, !dbg !2482
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !2480

if.then101:                                       ; preds = %land.lhs.true
  br label %for.end105, !dbg !2482

if.end102:                                        ; preds = %land.lhs.true, %for.body84
  br label %for.inc103, !dbg !2482

for.inc103:                                       ; preds = %if.end102
  %75 = load i32, ptr %i, align 4, !dbg !2480, !tbaa !305
  %inc104 = add nsw i32 %75, 1, !dbg !2480
  store i32 %inc104, ptr %i, align 4, !dbg !2480, !tbaa !305
  br label %for.cond80, !dbg !2480, !llvm.loop !2484

for.end105:                                       ; preds = %if.then101, %for.cond80
  br label %if.end107, !dbg !2485

if.else106:                                       ; preds = %if.else75
  store i32 0, ptr %i, align 4, !dbg !2475, !tbaa !305
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %for.end105
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %for.end74
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %for.end50
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %for.end
  %76 = load ptr, ptr %str.addr, align 8, !dbg !2429, !tbaa !401
  %77 = load i32, ptr %i, align 4, !dbg !2429, !tbaa !305
  %78 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %begin111 = getelementptr inbounds %struct.__kstream_t, ptr %78, i32 0, i32 0, !dbg !2429
  %79 = load i32, ptr %begin111, align 8, !dbg !2429, !tbaa !2389
  %sub = sub nsw i32 %77, %79, !dbg !2429
  %add = add nsw i32 %sub, 1, !dbg !2429
  %conv112 = sext i32 %add to i64, !dbg !2429
  %call113 = call i32 @ks_expand(ptr noundef %76, i64 noundef %conv112), !dbg !2429
  %80 = load i32, ptr %i, align 4, !dbg !2429, !tbaa !305
  %81 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %begin114 = getelementptr inbounds %struct.__kstream_t, ptr %81, i32 0, i32 0, !dbg !2429
  %82 = load i32, ptr %begin114, align 8, !dbg !2429, !tbaa !2389
  %sub115 = sub nsw i32 %80, %82, !dbg !2429
  %conv116 = sext i32 %sub115 to i64, !dbg !2429
  %83 = load i64, ptr %seek_pos, align 8, !dbg !2429, !tbaa !1266
  %add117 = add i64 %83, %conv116, !dbg !2429
  store i64 %add117, ptr %seek_pos, align 8, !dbg !2429, !tbaa !1266
  %84 = load i32, ptr %i, align 4, !dbg !2486, !tbaa !305
  %85 = load ptr, ptr %ks.addr, align 8, !dbg !2486, !tbaa !401
  %end118 = getelementptr inbounds %struct.__kstream_t, ptr %85, i32 0, i32 1, !dbg !2486
  %86 = load i32, ptr %end118, align 4, !dbg !2486, !tbaa !2390
  %cmp119 = icmp slt i32 %84, %86, !dbg !2486
  br i1 %cmp119, label %if.then121, label %if.end123, !dbg !2429

if.then121:                                       ; preds = %if.end110
  %87 = load i64, ptr %seek_pos, align 8, !dbg !2486, !tbaa !1266
  %inc122 = add i64 %87, 1, !dbg !2486
  store i64 %inc122, ptr %seek_pos, align 8, !dbg !2486, !tbaa !1266
  br label %if.end123, !dbg !2486

if.end123:                                        ; preds = %if.then121, %if.end110
  store i32 1, ptr %gotany, align 4, !dbg !2429, !tbaa !305
  %88 = load ptr, ptr %str.addr, align 8, !dbg !2429, !tbaa !401
  %s = getelementptr inbounds %struct.kstring_t, ptr %88, i32 0, i32 2, !dbg !2429
  %89 = load ptr, ptr %s, align 8, !dbg !2429, !tbaa !2488
  %90 = load ptr, ptr %str.addr, align 8, !dbg !2429, !tbaa !401
  %l124 = getelementptr inbounds %struct.kstring_t, ptr %90, i32 0, i32 0, !dbg !2429
  %91 = load i64, ptr %l124, align 8, !dbg !2429, !tbaa !2428
  %add.ptr = getelementptr inbounds i8, ptr %89, i64 %91, !dbg !2429
  %92 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %buf125 = getelementptr inbounds %struct.__kstream_t, ptr %92, i32 0, i32 5, !dbg !2429
  %93 = load ptr, ptr %buf125, align 8, !dbg !2429, !tbaa !2377
  %94 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %begin126 = getelementptr inbounds %struct.__kstream_t, ptr %94, i32 0, i32 0, !dbg !2429
  %95 = load i32, ptr %begin126, align 8, !dbg !2429, !tbaa !2389
  %idx.ext = sext i32 %95 to i64, !dbg !2429
  %add.ptr127 = getelementptr inbounds i8, ptr %93, i64 %idx.ext, !dbg !2429
  %96 = load i32, ptr %i, align 4, !dbg !2429, !tbaa !305
  %97 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %begin128 = getelementptr inbounds %struct.__kstream_t, ptr %97, i32 0, i32 0, !dbg !2429
  %98 = load i32, ptr %begin128, align 8, !dbg !2429, !tbaa !2389
  %sub129 = sub nsw i32 %96, %98, !dbg !2429
  %conv130 = sext i32 %sub129 to i64, !dbg !2429
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr127, i64 %conv130, i1 false), !dbg !2429
  %99 = load ptr, ptr %str.addr, align 8, !dbg !2429, !tbaa !401
  %l131 = getelementptr inbounds %struct.kstring_t, ptr %99, i32 0, i32 0, !dbg !2429
  %100 = load i64, ptr %l131, align 8, !dbg !2429, !tbaa !2428
  %101 = load i32, ptr %i, align 4, !dbg !2429, !tbaa !305
  %102 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %begin132 = getelementptr inbounds %struct.__kstream_t, ptr %102, i32 0, i32 0, !dbg !2429
  %103 = load i32, ptr %begin132, align 8, !dbg !2429, !tbaa !2389
  %sub133 = sub nsw i32 %101, %103, !dbg !2429
  %conv134 = sext i32 %sub133 to i64, !dbg !2429
  %add135 = add i64 %100, %conv134, !dbg !2429
  %104 = load ptr, ptr %str.addr, align 8, !dbg !2429, !tbaa !401
  %l136 = getelementptr inbounds %struct.kstring_t, ptr %104, i32 0, i32 0, !dbg !2429
  store i64 %add135, ptr %l136, align 8, !dbg !2429, !tbaa !2428
  %105 = load i32, ptr %i, align 4, !dbg !2429, !tbaa !305
  %add137 = add nsw i32 %105, 1, !dbg !2429
  %106 = load ptr, ptr %ks.addr, align 8, !dbg !2429, !tbaa !401
  %begin138 = getelementptr inbounds %struct.__kstream_t, ptr %106, i32 0, i32 0, !dbg !2429
  store i32 %add137, ptr %begin138, align 8, !dbg !2429, !tbaa !2389
  %107 = load i32, ptr %i, align 4, !dbg !2489, !tbaa !305
  %108 = load ptr, ptr %ks.addr, align 8, !dbg !2489, !tbaa !401
  %end139 = getelementptr inbounds %struct.__kstream_t, ptr %108, i32 0, i32 1, !dbg !2489
  %109 = load i32, ptr %end139, align 4, !dbg !2489, !tbaa !2390
  %cmp140 = icmp slt i32 %107, %109, !dbg !2489
  br i1 %cmp140, label %if.then142, label %if.end150, !dbg !2429

if.then142:                                       ; preds = %if.end123
  %110 = load ptr, ptr %dret.addr, align 8, !dbg !2491, !tbaa !401
  %tobool143 = icmp ne ptr %110, null, !dbg !2491
  br i1 %tobool143, label %if.then144, label %if.end149, !dbg !2494

if.then144:                                       ; preds = %if.then142
  %111 = load ptr, ptr %ks.addr, align 8, !dbg !2491, !tbaa !401
  %buf145 = getelementptr inbounds %struct.__kstream_t, ptr %111, i32 0, i32 5, !dbg !2491
  %112 = load ptr, ptr %buf145, align 8, !dbg !2491, !tbaa !2377
  %113 = load i32, ptr %i, align 4, !dbg !2491, !tbaa !305
  %idxprom146 = sext i32 %113 to i64, !dbg !2491
  %arrayidx147 = getelementptr inbounds i8, ptr %112, i64 %idxprom146, !dbg !2491
  %114 = load i8, ptr %arrayidx147, align 1, !dbg !2491, !tbaa !480
  %conv148 = zext i8 %114 to i32, !dbg !2491
  %115 = load ptr, ptr %dret.addr, align 8, !dbg !2491, !tbaa !401
  store i32 %conv148, ptr %115, align 4, !dbg !2491, !tbaa !305
  br label %if.end149, !dbg !2491

if.end149:                                        ; preds = %if.then144, %if.then142
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2494

if.end150:                                        ; preds = %if.end123
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2495
  br label %cleanup, !dbg !2495

cleanup:                                          ; preds = %if.end150, %if.end149, %if.else, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2495
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end151
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !2495, !llvm.loop !2496

for.end151:                                       ; preds = %cleanup
  %116 = load i32, ptr %gotany, align 4, !dbg !2498, !tbaa !305
  %tobool152 = icmp ne i32 %116, 0, !dbg !2498
  br i1 %tobool152, label %if.end165, label %land.lhs.true153, !dbg !2498

land.lhs.true153:                                 ; preds = %for.end151
  %117 = load ptr, ptr %ks.addr, align 8, !dbg !2498, !tbaa !401
  %is_eof154 = getelementptr inbounds %struct.__kstream_t, ptr %117, i32 0, i32 2, !dbg !2498
  %bf.load155 = load i32, ptr %is_eof154, align 8, !dbg !2498
  %bf.shl156 = shl i32 %bf.load155, 30, !dbg !2498
  %bf.ashr157 = ashr i32 %bf.shl156, 30, !dbg !2498
  %tobool158 = icmp ne i32 %bf.ashr157, 0, !dbg !2498
  br i1 %tobool158, label %land.lhs.true159, label %if.end165, !dbg !2498

land.lhs.true159:                                 ; preds = %land.lhs.true153
  %118 = load ptr, ptr %ks.addr, align 8, !dbg !2498, !tbaa !401
  %begin160 = getelementptr inbounds %struct.__kstream_t, ptr %118, i32 0, i32 0, !dbg !2498
  %119 = load i32, ptr %begin160, align 8, !dbg !2498, !tbaa !2389
  %120 = load ptr, ptr %ks.addr, align 8, !dbg !2498, !tbaa !401
  %end161 = getelementptr inbounds %struct.__kstream_t, ptr %120, i32 0, i32 1, !dbg !2498
  %121 = load i32, ptr %end161, align 4, !dbg !2498, !tbaa !2390
  %cmp162 = icmp sge i32 %119, %121, !dbg !2498
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !2425

if.then164:                                       ; preds = %land.lhs.true159
  store i32 -1, ptr %retval, align 4, !dbg !2498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !2498

if.end165:                                        ; preds = %land.lhs.true159, %land.lhs.true153, %for.end151
  %122 = load i64, ptr %seek_pos, align 8, !dbg !2425, !tbaa !1266
  %123 = load ptr, ptr %ks.addr, align 8, !dbg !2425, !tbaa !401
  %seek_pos166 = getelementptr inbounds %struct.__kstream_t, ptr %123, i32 0, i32 3, !dbg !2425
  %124 = load i64, ptr %seek_pos166, align 8, !dbg !2425, !tbaa !2399
  %add167 = add i64 %124, %122, !dbg !2425
  store i64 %add167, ptr %seek_pos166, align 8, !dbg !2425, !tbaa !2399
  %125 = load ptr, ptr %str.addr, align 8, !dbg !2500, !tbaa !401
  %s168 = getelementptr inbounds %struct.kstring_t, ptr %125, i32 0, i32 2, !dbg !2500
  %126 = load ptr, ptr %s168, align 8, !dbg !2500, !tbaa !2488
  %cmp169 = icmp eq ptr %126, null, !dbg !2500
  br i1 %cmp169, label %if.then171, label %if.else174, !dbg !2425

if.then171:                                       ; preds = %if.end165
  %127 = load ptr, ptr %str.addr, align 8, !dbg !2502, !tbaa !401
  %m = getelementptr inbounds %struct.kstring_t, ptr %127, i32 0, i32 1, !dbg !2502
  store i64 1, ptr %m, align 8, !dbg !2502, !tbaa !2504
  %call172 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 1) #13, !dbg !2502
  %128 = load ptr, ptr %str.addr, align 8, !dbg !2502, !tbaa !401
  %s173 = getelementptr inbounds %struct.kstring_t, ptr %128, i32 0, i32 2, !dbg !2502
  store ptr %call172, ptr %s173, align 8, !dbg !2502, !tbaa !2488
  br label %if.end192, !dbg !2502

if.else174:                                       ; preds = %if.end165
  %129 = load i32, ptr %delimiter.addr, align 4, !dbg !2505, !tbaa !305
  %cmp175 = icmp eq i32 %129, 2, !dbg !2505
  br i1 %cmp175, label %land.lhs.true177, label %if.end191, !dbg !2505

land.lhs.true177:                                 ; preds = %if.else174
  %130 = load ptr, ptr %str.addr, align 8, !dbg !2505, !tbaa !401
  %l178 = getelementptr inbounds %struct.kstring_t, ptr %130, i32 0, i32 0, !dbg !2505
  %131 = load i64, ptr %l178, align 8, !dbg !2505, !tbaa !2428
  %cmp179 = icmp ugt i64 %131, 1, !dbg !2505
  br i1 %cmp179, label %land.lhs.true181, label %if.end191, !dbg !2505

land.lhs.true181:                                 ; preds = %land.lhs.true177
  %132 = load ptr, ptr %str.addr, align 8, !dbg !2505, !tbaa !401
  %s182 = getelementptr inbounds %struct.kstring_t, ptr %132, i32 0, i32 2, !dbg !2505
  %133 = load ptr, ptr %s182, align 8, !dbg !2505, !tbaa !2488
  %134 = load ptr, ptr %str.addr, align 8, !dbg !2505, !tbaa !401
  %l183 = getelementptr inbounds %struct.kstring_t, ptr %134, i32 0, i32 0, !dbg !2505
  %135 = load i64, ptr %l183, align 8, !dbg !2505, !tbaa !2428
  %sub184 = sub i64 %135, 1, !dbg !2505
  %arrayidx185 = getelementptr inbounds i8, ptr %133, i64 %sub184, !dbg !2505
  %136 = load i8, ptr %arrayidx185, align 1, !dbg !2505, !tbaa !480
  %conv186 = sext i8 %136 to i32, !dbg !2505
  %cmp187 = icmp eq i32 %conv186, 13, !dbg !2505
  br i1 %cmp187, label %if.then189, label %if.end191, !dbg !2500

if.then189:                                       ; preds = %land.lhs.true181
  %137 = load ptr, ptr %str.addr, align 8, !dbg !2505, !tbaa !401
  %l190 = getelementptr inbounds %struct.kstring_t, ptr %137, i32 0, i32 0, !dbg !2505
  %138 = load i64, ptr %l190, align 8, !dbg !2505, !tbaa !2428
  %dec = add i64 %138, -1, !dbg !2505
  store i64 %dec, ptr %l190, align 8, !dbg !2505, !tbaa !2428
  br label %if.end191, !dbg !2505

if.end191:                                        ; preds = %if.then189, %land.lhs.true181, %land.lhs.true177, %if.else174
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then171
  %139 = load ptr, ptr %str.addr, align 8, !dbg !2425, !tbaa !401
  %s193 = getelementptr inbounds %struct.kstring_t, ptr %139, i32 0, i32 2, !dbg !2425
  %140 = load ptr, ptr %s193, align 8, !dbg !2425, !tbaa !2488
  %141 = load ptr, ptr %str.addr, align 8, !dbg !2425, !tbaa !401
  %l194 = getelementptr inbounds %struct.kstring_t, ptr %141, i32 0, i32 0, !dbg !2425
  %142 = load i64, ptr %l194, align 8, !dbg !2425, !tbaa !2428
  %arrayidx195 = getelementptr inbounds i8, ptr %140, i64 %142, !dbg !2425
  store i8 0, ptr %arrayidx195, align 1, !dbg !2425, !tbaa !480
  %143 = load ptr, ptr %str.addr, align 8, !dbg !2425, !tbaa !401
  %l196 = getelementptr inbounds %struct.kstring_t, ptr %143, i32 0, i32 0, !dbg !2425
  %144 = load i64, ptr %l196, align 8, !dbg !2425, !tbaa !2428
  %conv197 = trunc i64 %144 to i32, !dbg !2425
  store i32 %conv197, ptr %retval, align 4, !dbg !2425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !2425

cleanup198:                                       ; preds = %if.end192, %if.then164
  call void @llvm.lifetime.end.p0(i64 8, ptr %seek_pos) #12, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotany) #12, !dbg !2425
  %145 = load i32, ptr %retval, align 4, !dbg !2425
  ret i32 %145, !dbg !2425

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !2507 ptr @realloc(ptr noundef, i64 noundef) #10

declare !dbg !2510 i32 @gzread(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2513 ptr @__ctype_b_loc() #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ks_expand(ptr noundef %s, i64 noundef %expansion) #6 !dbg !2519 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %expansion.addr = alloca i64, align 8
  %new_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2523, metadata !DIExpression()), !dbg !2526
  store i64 %expansion, ptr %expansion.addr, align 8, !tbaa !1266
  tail call void @llvm.dbg.declare(metadata ptr %expansion.addr, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_size) #12, !dbg !2528
  tail call void @llvm.dbg.declare(metadata ptr %new_size, metadata !2525, metadata !DIExpression()), !dbg !2529
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2530, !tbaa !401
  %l = getelementptr inbounds %struct.kstring_t, ptr %0, i32 0, i32 0, !dbg !2531
  %1 = load i64, ptr %l, align 8, !dbg !2531, !tbaa !2428
  %2 = load i64, ptr %expansion.addr, align 8, !dbg !2532, !tbaa !1266
  %add = add i64 %1, %2, !dbg !2533
  store i64 %add, ptr %new_size, align 8, !dbg !2529, !tbaa !1266
  %3 = load i64, ptr %new_size, align 8, !dbg !2534, !tbaa !1266
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2536, !tbaa !401
  %l1 = getelementptr inbounds %struct.kstring_t, ptr %4, i32 0, i32 0, !dbg !2537
  %5 = load i64, ptr %l1, align 8, !dbg !2537, !tbaa !2428
  %cmp = icmp ult i64 %3, %5, !dbg !2538
  br i1 %cmp, label %if.then, label %if.end, !dbg !2539

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2540

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2541, !tbaa !401
  %7 = load i64, ptr %new_size, align 8, !dbg !2542, !tbaa !1266
  %call = call i32 @ks_resize(ptr noundef %6, i64 noundef %7), !dbg !2543
  store i32 %call, ptr %retval, align 4, !dbg !2544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2544

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_size) #12, !dbg !2545
  %8 = load i32, ptr %retval, align 4, !dbg !2545
  ret i32 %8, !dbg !2545
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ks_resize(ptr noundef %s, i64 noundef %size) #6 !dbg !2546 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2548, metadata !DIExpression()), !dbg !2553
  store i64 %size, ptr %size.addr, align 8, !tbaa !1266
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2549, metadata !DIExpression()), !dbg !2554
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2555, !tbaa !401
  %m = getelementptr inbounds %struct.kstring_t, ptr %0, i32 0, i32 1, !dbg !2556
  %1 = load i64, ptr %m, align 8, !dbg !2556, !tbaa !2504
  %2 = load i64, ptr %size.addr, align 8, !dbg !2557, !tbaa !1266
  %cmp = icmp ult i64 %1, %2, !dbg !2558
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2559

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !2560
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2550, metadata !DIExpression()), !dbg !2561
  %3 = load i64, ptr %size.addr, align 8, !dbg !2562, !tbaa !1266
  %cmp1 = icmp ugt i64 %3, 4611686018427387903, !dbg !2563
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2564

cond.true:                                        ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2565, !tbaa !1266
  br label %cond.end, !dbg !2564

cond.false:                                       ; preds = %if.then
  %5 = load i64, ptr %size.addr, align 8, !dbg !2566, !tbaa !1266
  %6 = load i64, ptr %size.addr, align 8, !dbg !2567, !tbaa !1266
  %shr = lshr i64 %6, 1, !dbg !2568
  %add = add i64 %5, %shr, !dbg !2569
  br label %cond.end, !dbg !2564

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %add, %cond.false ], !dbg !2564
  store i64 %cond, ptr %size.addr, align 8, !dbg !2570, !tbaa !1266
  %7 = load ptr, ptr %s.addr, align 8, !dbg !2571, !tbaa !401
  %s2 = getelementptr inbounds %struct.kstring_t, ptr %7, i32 0, i32 2, !dbg !2572
  %8 = load ptr, ptr %s2, align 8, !dbg !2572, !tbaa !2488
  %9 = load i64, ptr %size.addr, align 8, !dbg !2573, !tbaa !1266
  %call = call ptr @realloc(ptr noundef %8, i64 noundef %9) #16, !dbg !2574
  store ptr %call, ptr %tmp, align 8, !dbg !2575, !tbaa !401
  %10 = load ptr, ptr %tmp, align 8, !dbg !2576, !tbaa !401
  %tobool = icmp ne ptr %10, null, !dbg !2576
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2578

if.then3:                                         ; preds = %cond.end
  store i32 -1, ptr %retval, align 4, !dbg !2579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2579

if.end:                                           ; preds = %cond.end
  %11 = load ptr, ptr %tmp, align 8, !dbg !2580, !tbaa !401
  %12 = load ptr, ptr %s.addr, align 8, !dbg !2581, !tbaa !401
  %s4 = getelementptr inbounds %struct.kstring_t, ptr %12, i32 0, i32 2, !dbg !2582
  store ptr %11, ptr %s4, align 8, !dbg !2583, !tbaa !2488
  %13 = load i64, ptr %size.addr, align 8, !dbg !2584, !tbaa !1266
  %14 = load ptr, ptr %s.addr, align 8, !dbg !2585, !tbaa !401
  %m5 = getelementptr inbounds %struct.kstring_t, ptr %14, i32 0, i32 1, !dbg !2586
  store i64 %13, ptr %m5, align 8, !dbg !2587, !tbaa !2504
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2588
  br label %cleanup, !dbg !2588

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !2588
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !2589

if.end6:                                          ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

return:                                           ; preds = %if.end6, %cleanup
  %15 = load i32, ptr %retval, align 4, !dbg !2591
  ret i32 %15, !dbg !2591

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @ks_destroy(ptr noundef %ks) #0 !dbg !2592 {
entry:
  %ks.addr = alloca ptr, align 8
  store ptr %ks, ptr %ks.addr, align 8, !tbaa !401
  tail call void @llvm.dbg.declare(metadata ptr %ks.addr, metadata !2596, metadata !DIExpression()), !dbg !2597
  %0 = load ptr, ptr %ks.addr, align 8, !dbg !2598, !tbaa !401
  %tobool = icmp ne ptr %0, null, !dbg !2598
  br i1 %tobool, label %if.end, label %if.then, !dbg !2597

if.then:                                          ; preds = %entry
  br label %return, !dbg !2598

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ks.addr, align 8, !dbg !2597, !tbaa !401
  %buf = getelementptr inbounds %struct.__kstream_t, ptr %1, i32 0, i32 5, !dbg !2597
  %2 = load ptr, ptr %buf, align 8, !dbg !2597, !tbaa !2377
  call void @free(ptr noundef %2) #12, !dbg !2597
  %3 = load ptr, ptr %ks.addr, align 8, !dbg !2597, !tbaa !401
  call void @free(ptr noundef %3) #12, !dbg !2597
  br label %return, !dbg !2597

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2597
}

; Function Attrs: nounwind
declare !dbg !2600 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !2604 double @strtod(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nst_nt4_table", scope: !2, file: !3, line: 48, type: !287, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !91, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "misc/wgsim.c", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "5bc450efa665b467b8e54e2615d9d9ad")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "muttype_t", file: !3, line: 92, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "NOCHANGE", value: 0)
!9 = !DIEnumerator(name: "INSERT", value: 4096)
!10 = !DIEnumerator(name: "SUBSTITUTE", value: 57344)
!11 = !DIEnumerator(name: "DELETE", value: 61440)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!15 = !DIEnumerator(name: "_ISupper", value: 256)
!16 = !DIEnumerator(name: "_ISlower", value: 512)
!17 = !DIEnumerator(name: "_ISalpha", value: 1024)
!18 = !DIEnumerator(name: "_ISdigit", value: 2048)
!19 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!20 = !DIEnumerator(name: "_ISspace", value: 8192)
!21 = !DIEnumerator(name: "_ISprint", value: 16384)
!22 = !DIEnumerator(name: "_ISgraph", value: 32768)
!23 = !DIEnumerator(name: "_ISblank", value: 1)
!24 = !DIEnumerator(name: "_IScntrl", value: 2)
!25 = !DIEnumerator(name: "_ISpunct", value: 4)
!26 = !DIEnumerator(name: "_ISalnum", value: 8)
!27 = !{!28, !29, !31, !32, !33, !35, !41, !42, !45, !46, !47, !66, !83, !30, !90}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "mut_t", file: !3, line: 93, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !39, line: 38, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !37, line: 27, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !39, line: 45, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!46 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "kseq_t", file: !3, line: 46, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 46, size: 896, elements: !50)
!50 = !{!51, !61, !62, !63, !64, !65}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !3, line: 46, baseType: !52, size: 192)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "kstring_t", file: !53, line: 71, baseType: !54)
!53 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/kstring.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "532459e2e5dea934e82fd1dc844130c8")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstring_t", file: !53, line: 68, size: 192, elements: !55)
!55 = !{!56, !59, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !54, file: !53, line: 69, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 70, baseType: !44)
!58 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!59 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !54, file: !53, line: 69, baseType: !57, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !54, file: !53, line: 70, baseType: !33, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !49, file: !3, line: 46, baseType: !52, size: 192, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !49, file: !3, line: 46, baseType: !52, size: 192, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !49, file: !3, line: 46, baseType: !52, size: 192, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "last_char", scope: !49, file: !3, line: 46, baseType: !31, size: 32, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !49, file: !3, line: 46, baseType: !66, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "kstream_t", file: !3, line: 46, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kstream_t", file: !3, line: 46, size: 320, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !89}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !68, file: !3, line: 46, baseType: !31, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !68, file: !3, line: 46, baseType: !31, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "is_eof", scope: !68, file: !3, line: 46, baseType: !31, size: 2, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !68, file: !3, line: 46, baseType: !31, size: 30, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "seek_pos", scope: !68, file: !3, line: 46, baseType: !42, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !68, file: !3, line: 46, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !77, line: 1287, baseType: !78)
!77 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/zlib-ng-2.1.4-lf6r7k4krys7xeuhd6faiwtpvvvf43ts/include/zlib.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "6de5f76a2b2462480db006f0a81f31fb")
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !77, line: 1784, size: 192, elements: !80)
!80 = !{!81, !82, !84}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !79, file: !77, line: 1785, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !77, line: 1786, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !79, file: !77, line: 1787, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !86, line: 85, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 152, baseType: !88)
!88 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !68, file: !3, line: 46, baseType: !83, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!91 = !{!0, !92, !102, !104, !109, !114, !119, !121, !126, !131, !133, !138, !140, !145, !150, !155, !161, !166, !171, !176, !181, !183, !188, !190, !195, !200, !202, !204, !206, !208, !210, !212, !214, !216, !221, !226, !231, !236, !241, !246, !251, !256, !261, !263, !268, !273, !275, !280, !285}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "iset", scope: !94, file: !3, line: 71, type: !31, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "ran_normal", scope: !3, file: !3, line: 69, type: !95, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!46}
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(name: "fac", scope: !94, file: !3, line: 73, type: !46)
!99 = !DILocalVariable(name: "rsq", scope: !94, file: !3, line: 73, type: !46)
!100 = !DILocalVariable(name: "v1", scope: !94, file: !3, line: 73, type: !46)
!101 = !DILocalVariable(name: "v2", scope: !94, file: !3, line: 73, type: !46)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "gset", scope: !94, file: !3, line: 72, type: !46, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 120, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 15)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 6)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 56, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 7)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !111, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 72, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 9)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 4)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !106, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 136, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 17)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !128, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 2)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 232, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 29)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 64)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 88, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!159 = !{!160}
!160 = !DISubrange(count: 11)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 312, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 39)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 408, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 51)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 648, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 81)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 296, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 37)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 401, type: !116, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 444, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 24)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !142, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 464, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 200, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 25)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 152, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 19)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "INDEL_EXTEND", scope: !2, file: !3, line: 104, type: !46, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "MUT_RATE", scope: !2, file: !3, line: 102, type: !46, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "INDEL_FRAC", scope: !2, file: !3, line: 103, type: !46, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "mutmsk", scope: !2, file: !3, line: 94, type: !29, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "ERR_RATE", scope: !2, file: !3, line: 101, type: !46, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "MAX_N_RATIO", scope: !2, file: !3, line: 105, type: !46, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !142, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !163, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 104, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 13)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 40, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 5)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 304, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 38)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 552, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 69)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 376, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 47)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 528, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 66)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 384, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 48)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 440, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 55)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 432, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 54)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !253, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 392, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 49)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 400, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 50)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !152, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 608, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 76)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 736, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 92)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !163, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 2048, elements: !289)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!289 = !{!290}
!290 = !DISubrange(count: 256)
!291 = !{i32 7, !"Dwarf Version", i32 5}
!292 = !{i32 2, !"Debug Info Version", i32 3}
!293 = !{i32 1, !"wchar_size", i32 4}
!294 = !{i32 8, !"PIC Level", i32 2}
!295 = !{i32 7, !"PIE Level", i32 2}
!296 = !{i32 7, !"uwtable", i32 2}
!297 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!298 = !DILocation(line: 73, column: 5, scope: !94)
!299 = !DILocation(line: 73, column: 12, scope: !94)
!300 = !DILocation(line: 73, column: 17, scope: !94)
!301 = !DILocation(line: 73, column: 22, scope: !94)
!302 = !DILocation(line: 73, column: 26, scope: !94)
!303 = !DILocation(line: 74, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !94, file: !3, line: 74, column: 9)
!305 = !{!306, !306, i64 0}
!306 = !{!"int", !307, i64 0}
!307 = !{!"omnipotent char", !308, i64 0}
!308 = !{!"Simple C/C++ TBAA"}
!309 = !DILocation(line: 74, column: 14, scope: !304)
!310 = !DILocation(line: 74, column: 9, scope: !94)
!311 = !DILocation(line: 75, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 74, column: 20)
!313 = !DILocation(line: 76, column: 24, scope: !314)
!314 = distinct !DILexicalBlock(scope: !312, file: !3, line: 75, column: 12)
!315 = !DILocation(line: 76, column: 34, scope: !314)
!316 = !DILocation(line: 76, column: 16, scope: !314)
!317 = !{!318, !318, i64 0}
!318 = !{!"double", !307, i64 0}
!319 = !DILocation(line: 77, column: 24, scope: !314)
!320 = !DILocation(line: 77, column: 34, scope: !314)
!321 = !DILocation(line: 77, column: 16, scope: !314)
!322 = !DILocation(line: 78, column: 19, scope: !314)
!323 = !DILocation(line: 78, column: 24, scope: !314)
!324 = !DILocation(line: 78, column: 29, scope: !314)
!325 = !DILocation(line: 78, column: 34, scope: !314)
!326 = !DILocation(line: 78, column: 32, scope: !314)
!327 = !DILocation(line: 78, column: 27, scope: !314)
!328 = !DILocation(line: 78, column: 17, scope: !314)
!329 = !DILocation(line: 79, column: 9, scope: !314)
!330 = !DILocation(line: 79, column: 18, scope: !312)
!331 = !DILocation(line: 79, column: 22, scope: !312)
!332 = !DILocation(line: 79, column: 29, scope: !312)
!333 = !DILocation(line: 79, column: 32, scope: !312)
!334 = !DILocation(line: 79, column: 36, scope: !312)
!335 = distinct !{!335, !311, !336, !337}
!336 = !DILocation(line: 79, column: 42, scope: !312)
!337 = !{!"llvm.loop.mustprogress"}
!338 = !DILocation(line: 80, column: 31, scope: !312)
!339 = !DILocation(line: 80, column: 27, scope: !312)
!340 = !DILocation(line: 80, column: 25, scope: !312)
!341 = !DILocation(line: 80, column: 38, scope: !312)
!342 = !DILocation(line: 80, column: 36, scope: !312)
!343 = !DILocation(line: 80, column: 15, scope: !312)
!344 = !DILocation(line: 80, column: 13, scope: !312)
!345 = !DILocation(line: 81, column: 16, scope: !312)
!346 = !DILocation(line: 81, column: 21, scope: !312)
!347 = !DILocation(line: 81, column: 19, scope: !312)
!348 = !DILocation(line: 81, column: 14, scope: !312)
!349 = !DILocation(line: 82, column: 14, scope: !312)
!350 = !DILocation(line: 83, column: 16, scope: !312)
!351 = !DILocation(line: 83, column: 21, scope: !312)
!352 = !DILocation(line: 83, column: 19, scope: !312)
!353 = !DILocation(line: 83, column: 9, scope: !312)
!354 = !DILocation(line: 85, column: 14, scope: !355)
!355 = distinct !DILexicalBlock(scope: !304, file: !3, line: 84, column: 12)
!356 = !DILocation(line: 86, column: 16, scope: !355)
!357 = !DILocation(line: 86, column: 9, scope: !355)
!358 = !DILocation(line: 88, column: 1, scope: !94)
!359 = !DISubprogram(name: "drand48", scope: !360, file: !360, line: 468, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!361 = !DISubprogram(name: "sqrt", scope: !362, file: !362, line: 143, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!363 = !DISubroutineType(types: !364)
!364 = !{!46, !46}
!365 = !DISubprogram(name: "log", scope: !362, file: !362, line: 104, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = distinct !DISubprogram(name: "wgsim_mut_diref", scope: !3, file: !3, line: 107, type: !367, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369, !31, !371, !371}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutseq_t", file: !3, line: 99, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 96, size: 128, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !373, file: !3, line: 97, baseType: !31, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !373, file: !3, line: 97, baseType: !31, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !373, file: !3, line: 98, baseType: !28, size: 64, offset: 64)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !387, !391, !396, !400}
!379 = !DILocalVariable(name: "ks", arg: 1, scope: !366, file: !3, line: 107, type: !369)
!380 = !DILocalVariable(name: "is_hap", arg: 2, scope: !366, file: !3, line: 107, type: !31)
!381 = !DILocalVariable(name: "hap1", arg: 3, scope: !366, file: !3, line: 107, type: !371)
!382 = !DILocalVariable(name: "hap2", arg: 4, scope: !366, file: !3, line: 107, type: !371)
!383 = !DILocalVariable(name: "i", scope: !366, file: !3, line: 109, type: !31)
!384 = !DILocalVariable(name: "deleting", scope: !366, file: !3, line: 109, type: !31)
!385 = !DILocalVariable(name: "ret", scope: !366, file: !3, line: 110, type: !386)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !143)
!387 = !DILocalVariable(name: "c", scope: !388, file: !3, line: 118, type: !31)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 117, column: 38)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 117, column: 5)
!390 = distinct !DILexicalBlock(scope: !366, file: !3, line: 117, column: 5)
!391 = !DILocalVariable(name: "r", scope: !392, file: !3, line: 129, type: !46)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 128, column: 42)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 128, column: 17)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 127, column: 44)
!395 = distinct !DILexicalBlock(scope: !388, file: !3, line: 127, column: 13)
!396 = !DILocalVariable(name: "num_ins", scope: !397, file: !3, line: 146, type: !31)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 145, column: 24)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 137, column: 21)
!399 = distinct !DILexicalBlock(scope: !393, file: !3, line: 136, column: 20)
!400 = !DILocalVariable(name: "ins", scope: !397, file: !3, line: 146, type: !31)
!401 = !{!402, !402, i64 0}
!402 = !{!"any pointer", !307, i64 0}
!403 = !DILocation(line: 107, column: 36, scope: !366)
!404 = !DILocation(line: 107, column: 44, scope: !366)
!405 = !DILocation(line: 107, column: 62, scope: !366)
!406 = !DILocation(line: 107, column: 78, scope: !366)
!407 = !DILocation(line: 109, column: 5, scope: !366)
!408 = !DILocation(line: 109, column: 9, scope: !366)
!409 = !DILocation(line: 109, column: 12, scope: !366)
!410 = !DILocation(line: 110, column: 5, scope: !366)
!411 = !DILocation(line: 110, column: 15, scope: !366)
!412 = !DILocation(line: 112, column: 14, scope: !366)
!413 = !DILocation(line: 112, column: 5, scope: !366)
!414 = !DILocation(line: 112, column: 12, scope: !366)
!415 = !DILocation(line: 112, column: 29, scope: !366)
!416 = !DILocation(line: 112, column: 20, scope: !366)
!417 = !DILocation(line: 112, column: 27, scope: !366)
!418 = !DILocation(line: 113, column: 17, scope: !366)
!419 = !DILocation(line: 113, column: 21, scope: !366)
!420 = !DILocation(line: 113, column: 25, scope: !366)
!421 = !{!422, !424, i64 48}
!422 = !{!"", !423, i64 0, !423, i64 24, !423, i64 48, !423, i64 72, !306, i64 96, !402, i64 104}
!423 = !{!"kstring_t", !424, i64 0, !424, i64 8, !402, i64 16}
!424 = !{!"long", !307, i64 0}
!425 = !DILocation(line: 113, column: 5, scope: !366)
!426 = !DILocation(line: 113, column: 13, scope: !366)
!427 = !DILocation(line: 113, column: 15, scope: !366)
!428 = !{!429, !306, i64 0}
!429 = !{!"", !306, i64 0, !306, i64 4, !402, i64 8}
!430 = !DILocation(line: 113, column: 40, scope: !366)
!431 = !DILocation(line: 113, column: 44, scope: !366)
!432 = !DILocation(line: 113, column: 48, scope: !366)
!433 = !DILocation(line: 113, column: 28, scope: !366)
!434 = !DILocation(line: 113, column: 36, scope: !366)
!435 = !DILocation(line: 113, column: 38, scope: !366)
!436 = !DILocation(line: 114, column: 17, scope: !366)
!437 = !DILocation(line: 114, column: 21, scope: !366)
!438 = !DILocation(line: 114, column: 25, scope: !366)
!439 = !{!422, !424, i64 56}
!440 = !DILocation(line: 114, column: 5, scope: !366)
!441 = !DILocation(line: 114, column: 13, scope: !366)
!442 = !DILocation(line: 114, column: 15, scope: !366)
!443 = !{!429, !306, i64 4}
!444 = !DILocation(line: 114, column: 40, scope: !366)
!445 = !DILocation(line: 114, column: 44, scope: !366)
!446 = !DILocation(line: 114, column: 48, scope: !366)
!447 = !DILocation(line: 114, column: 28, scope: !366)
!448 = !DILocation(line: 114, column: 36, scope: !366)
!449 = !DILocation(line: 114, column: 38, scope: !366)
!450 = !DILocation(line: 115, column: 33, scope: !366)
!451 = !DILocation(line: 115, column: 37, scope: !366)
!452 = !DILocation(line: 115, column: 41, scope: !366)
!453 = !DILocation(line: 115, column: 26, scope: !366)
!454 = !DILocation(line: 115, column: 5, scope: !366)
!455 = !DILocation(line: 115, column: 13, scope: !366)
!456 = !DILocation(line: 115, column: 15, scope: !366)
!457 = !{!429, !402, i64 8}
!458 = !DILocation(line: 116, column: 33, scope: !366)
!459 = !DILocation(line: 116, column: 37, scope: !366)
!460 = !DILocation(line: 116, column: 41, scope: !366)
!461 = !DILocation(line: 116, column: 26, scope: !366)
!462 = !DILocation(line: 116, column: 5, scope: !366)
!463 = !DILocation(line: 116, column: 13, scope: !366)
!464 = !DILocation(line: 116, column: 15, scope: !366)
!465 = !DILocation(line: 117, column: 12, scope: !390)
!466 = !DILocation(line: 117, column: 10, scope: !390)
!467 = !DILocation(line: 117, column: 17, scope: !389)
!468 = !DILocation(line: 117, column: 22, scope: !389)
!469 = !DILocation(line: 117, column: 26, scope: !389)
!470 = !DILocation(line: 117, column: 30, scope: !389)
!471 = !DILocation(line: 117, column: 19, scope: !389)
!472 = !DILocation(line: 117, column: 5, scope: !390)
!473 = !DILocation(line: 118, column: 9, scope: !388)
!474 = !DILocation(line: 118, column: 13, scope: !388)
!475 = !DILocation(line: 119, column: 69, scope: !388)
!476 = !DILocation(line: 119, column: 73, scope: !388)
!477 = !DILocation(line: 119, column: 77, scope: !388)
!478 = !{!422, !402, i64 64}
!479 = !DILocation(line: 119, column: 79, scope: !388)
!480 = !{!307, !307, i64 0}
!481 = !DILocation(line: 119, column: 64, scope: !388)
!482 = !DILocation(line: 119, column: 50, scope: !388)
!483 = !DILocation(line: 119, column: 43, scope: !388)
!484 = !DILocation(line: 119, column: 28, scope: !388)
!485 = !DILocation(line: 119, column: 36, scope: !388)
!486 = !DILocation(line: 119, column: 38, scope: !388)
!487 = !DILocation(line: 119, column: 41, scope: !388)
!488 = !{!489, !489, i64 0}
!489 = !{!"short", !307, i64 0}
!490 = !DILocation(line: 119, column: 13, scope: !388)
!491 = !DILocation(line: 119, column: 21, scope: !388)
!492 = !DILocation(line: 119, column: 23, scope: !388)
!493 = !DILocation(line: 119, column: 26, scope: !388)
!494 = !DILocation(line: 119, column: 11, scope: !388)
!495 = !DILocation(line: 120, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !388, file: !3, line: 120, column: 13)
!497 = !DILocation(line: 120, column: 13, scope: !388)
!498 = !DILocation(line: 121, column: 17, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 121, column: 17)
!500 = distinct !DILexicalBlock(scope: !496, file: !3, line: 120, column: 23)
!501 = !DILocation(line: 121, column: 29, scope: !499)
!502 = !DILocation(line: 121, column: 27, scope: !499)
!503 = !DILocation(line: 121, column: 17, scope: !500)
!504 = !DILocation(line: 122, column: 21, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 122, column: 21)
!506 = distinct !DILexicalBlock(scope: !499, file: !3, line: 121, column: 43)
!507 = !DILocation(line: 122, column: 30, scope: !505)
!508 = !DILocation(line: 122, column: 21, scope: !506)
!509 = !DILocation(line: 122, column: 35, scope: !505)
!510 = !DILocation(line: 122, column: 43, scope: !505)
!511 = !DILocation(line: 122, column: 45, scope: !505)
!512 = !DILocation(line: 122, column: 48, scope: !505)
!513 = !DILocation(line: 123, column: 21, scope: !514)
!514 = distinct !DILexicalBlock(scope: !506, file: !3, line: 123, column: 21)
!515 = !DILocation(line: 123, column: 30, scope: !514)
!516 = !DILocation(line: 123, column: 21, scope: !506)
!517 = !DILocation(line: 123, column: 35, scope: !514)
!518 = !DILocation(line: 123, column: 43, scope: !514)
!519 = !DILocation(line: 123, column: 45, scope: !514)
!520 = !DILocation(line: 123, column: 48, scope: !514)
!521 = !DILocation(line: 124, column: 17, scope: !506)
!522 = !DILocation(line: 125, column: 29, scope: !499)
!523 = !DILocation(line: 126, column: 9, scope: !500)
!524 = !DILocation(line: 127, column: 13, scope: !395)
!525 = !DILocation(line: 127, column: 15, scope: !395)
!526 = !DILocation(line: 127, column: 19, scope: !395)
!527 = !DILocation(line: 127, column: 22, scope: !395)
!528 = !DILocation(line: 127, column: 34, scope: !395)
!529 = !DILocation(line: 127, column: 32, scope: !395)
!530 = !DILocation(line: 127, column: 13, scope: !388)
!531 = !DILocation(line: 128, column: 17, scope: !393)
!532 = !DILocation(line: 128, column: 30, scope: !393)
!533 = !DILocation(line: 128, column: 27, scope: !393)
!534 = !DILocation(line: 128, column: 17, scope: !394)
!535 = !DILocation(line: 129, column: 17, scope: !392)
!536 = !DILocation(line: 129, column: 24, scope: !392)
!537 = !DILocation(line: 129, column: 28, scope: !392)
!538 = !DILocation(line: 130, column: 22, scope: !392)
!539 = !DILocation(line: 130, column: 32, scope: !392)
!540 = !DILocation(line: 130, column: 40, scope: !392)
!541 = !DILocation(line: 130, column: 26, scope: !392)
!542 = !DILocation(line: 130, column: 24, scope: !392)
!543 = !DILocation(line: 130, column: 46, scope: !392)
!544 = !DILocation(line: 130, column: 19, scope: !392)
!545 = !DILocation(line: 131, column: 21, scope: !546)
!546 = distinct !DILexicalBlock(scope: !392, file: !3, line: 131, column: 21)
!547 = !DILocation(line: 131, column: 28, scope: !546)
!548 = !DILocation(line: 131, column: 31, scope: !546)
!549 = !DILocation(line: 131, column: 41, scope: !546)
!550 = !DILocation(line: 131, column: 21, scope: !392)
!551 = !DILocation(line: 132, column: 62, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 131, column: 53)
!553 = !DILocation(line: 132, column: 61, scope: !552)
!554 = !DILocation(line: 132, column: 51, scope: !552)
!555 = !DILocation(line: 132, column: 36, scope: !552)
!556 = !DILocation(line: 132, column: 44, scope: !552)
!557 = !DILocation(line: 132, column: 46, scope: !552)
!558 = !DILocation(line: 132, column: 49, scope: !552)
!559 = !DILocation(line: 132, column: 21, scope: !552)
!560 = !DILocation(line: 132, column: 29, scope: !552)
!561 = !DILocation(line: 132, column: 31, scope: !552)
!562 = !DILocation(line: 132, column: 34, scope: !552)
!563 = !DILocation(line: 133, column: 17, scope: !552)
!564 = !DILocation(line: 134, column: 63, scope: !565)
!565 = distinct !DILexicalBlock(scope: !546, file: !3, line: 133, column: 24)
!566 = !DILocation(line: 134, column: 62, scope: !565)
!567 = !DILocation(line: 134, column: 52, scope: !565)
!568 = !DILocation(line: 134, column: 25, scope: !565)
!569 = !DILocation(line: 134, column: 34, scope: !565)
!570 = !DILocation(line: 134, column: 21, scope: !565)
!571 = !DILocation(line: 134, column: 45, scope: !565)
!572 = !DILocation(line: 134, column: 47, scope: !565)
!573 = !DILocation(line: 134, column: 50, scope: !565)
!574 = !DILocation(line: 136, column: 13, scope: !393)
!575 = !DILocation(line: 136, column: 13, scope: !392)
!576 = !DILocation(line: 137, column: 21, scope: !398)
!577 = !DILocation(line: 137, column: 31, scope: !398)
!578 = !DILocation(line: 137, column: 21, scope: !399)
!579 = !DILocation(line: 138, column: 25, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 138, column: 25)
!581 = distinct !DILexicalBlock(scope: !398, file: !3, line: 137, column: 38)
!582 = !DILocation(line: 138, column: 32, scope: !580)
!583 = !DILocation(line: 138, column: 35, scope: !580)
!584 = !DILocation(line: 138, column: 45, scope: !580)
!585 = !DILocation(line: 138, column: 25, scope: !581)
!586 = !DILocation(line: 139, column: 40, scope: !587)
!587 = distinct !DILexicalBlock(scope: !580, file: !3, line: 138, column: 57)
!588 = !DILocation(line: 139, column: 48, scope: !587)
!589 = !DILocation(line: 139, column: 50, scope: !587)
!590 = !DILocation(line: 139, column: 53, scope: !587)
!591 = !DILocation(line: 139, column: 25, scope: !587)
!592 = !DILocation(line: 139, column: 33, scope: !587)
!593 = !DILocation(line: 139, column: 35, scope: !587)
!594 = !DILocation(line: 139, column: 38, scope: !587)
!595 = !DILocation(line: 140, column: 34, scope: !587)
!596 = !DILocation(line: 141, column: 21, scope: !587)
!597 = !DILocation(line: 142, column: 36, scope: !598)
!598 = distinct !DILexicalBlock(scope: !580, file: !3, line: 141, column: 28)
!599 = !DILocation(line: 142, column: 45, scope: !598)
!600 = !DILocation(line: 142, column: 34, scope: !598)
!601 = !DILocation(line: 143, column: 29, scope: !598)
!602 = !DILocation(line: 143, column: 37, scope: !598)
!603 = !DILocation(line: 143, column: 25, scope: !598)
!604 = !DILocation(line: 143, column: 42, scope: !598)
!605 = !DILocation(line: 143, column: 44, scope: !598)
!606 = !DILocation(line: 143, column: 47, scope: !598)
!607 = !DILocation(line: 145, column: 17, scope: !581)
!608 = !DILocation(line: 146, column: 21, scope: !397)
!609 = !DILocation(line: 146, column: 25, scope: !397)
!610 = !DILocation(line: 146, column: 38, scope: !397)
!611 = !DILocation(line: 147, column: 21, scope: !397)
!612 = !DILocation(line: 148, column: 32, scope: !613)
!613 = distinct !DILexicalBlock(scope: !397, file: !3, line: 147, column: 24)
!614 = !DILocation(line: 149, column: 32, scope: !613)
!615 = !DILocation(line: 149, column: 36, scope: !613)
!616 = !DILocation(line: 149, column: 50, scope: !613)
!617 = !DILocation(line: 149, column: 60, scope: !613)
!618 = !DILocation(line: 149, column: 44, scope: !613)
!619 = !DILocation(line: 149, column: 42, scope: !613)
!620 = !DILocation(line: 149, column: 29, scope: !613)
!621 = !DILocation(line: 150, column: 21, scope: !613)
!622 = !DILocation(line: 150, column: 30, scope: !397)
!623 = !DILocation(line: 150, column: 38, scope: !397)
!624 = !DILocation(line: 150, column: 42, scope: !397)
!625 = !DILocation(line: 150, column: 45, scope: !397)
!626 = !DILocation(line: 150, column: 57, scope: !397)
!627 = !DILocation(line: 150, column: 55, scope: !397)
!628 = !DILocation(line: 0, scope: !397)
!629 = distinct !{!629, !611, !630, !337}
!630 = !DILocation(line: 150, column: 69, scope: !397)
!631 = !DILocation(line: 152, column: 25, scope: !632)
!632 = distinct !DILexicalBlock(scope: !397, file: !3, line: 152, column: 25)
!633 = !DILocation(line: 152, column: 32, scope: !632)
!634 = !DILocation(line: 152, column: 35, scope: !632)
!635 = !DILocation(line: 152, column: 45, scope: !632)
!636 = !DILocation(line: 152, column: 25, scope: !397)
!637 = !DILocation(line: 153, column: 56, scope: !638)
!638 = distinct !DILexicalBlock(scope: !632, file: !3, line: 152, column: 57)
!639 = !DILocation(line: 153, column: 64, scope: !638)
!640 = !DILocation(line: 153, column: 74, scope: !638)
!641 = !DILocation(line: 153, column: 78, scope: !638)
!642 = !DILocation(line: 153, column: 71, scope: !638)
!643 = !DILocation(line: 153, column: 86, scope: !638)
!644 = !DILocation(line: 153, column: 84, scope: !638)
!645 = !DILocation(line: 153, column: 55, scope: !638)
!646 = !DILocation(line: 153, column: 40, scope: !638)
!647 = !DILocation(line: 153, column: 48, scope: !638)
!648 = !DILocation(line: 153, column: 50, scope: !638)
!649 = !DILocation(line: 153, column: 53, scope: !638)
!650 = !DILocation(line: 153, column: 25, scope: !638)
!651 = !DILocation(line: 153, column: 33, scope: !638)
!652 = !DILocation(line: 153, column: 35, scope: !638)
!653 = !DILocation(line: 153, column: 38, scope: !638)
!654 = !DILocation(line: 154, column: 21, scope: !638)
!655 = !DILocation(line: 155, column: 57, scope: !656)
!656 = distinct !DILexicalBlock(scope: !632, file: !3, line: 154, column: 28)
!657 = !DILocation(line: 155, column: 65, scope: !656)
!658 = !DILocation(line: 155, column: 75, scope: !656)
!659 = !DILocation(line: 155, column: 79, scope: !656)
!660 = !DILocation(line: 155, column: 72, scope: !656)
!661 = !DILocation(line: 155, column: 87, scope: !656)
!662 = !DILocation(line: 155, column: 85, scope: !656)
!663 = !DILocation(line: 155, column: 56, scope: !656)
!664 = !DILocation(line: 155, column: 29, scope: !656)
!665 = !DILocation(line: 155, column: 38, scope: !656)
!666 = !DILocation(line: 155, column: 25, scope: !656)
!667 = !DILocation(line: 155, column: 49, scope: !656)
!668 = !DILocation(line: 155, column: 51, scope: !656)
!669 = !DILocation(line: 155, column: 54, scope: !656)
!670 = !DILocation(line: 157, column: 17, scope: !398)
!671 = !DILocation(line: 159, column: 9, scope: !394)
!672 = !DILocation(line: 160, column: 5, scope: !389)
!673 = !DILocation(line: 160, column: 5, scope: !388)
!674 = !DILocation(line: 117, column: 33, scope: !389)
!675 = !DILocation(line: 117, column: 5, scope: !389)
!676 = distinct !{!676, !472, !677, !337}
!677 = !DILocation(line: 160, column: 5, scope: !390)
!678 = !DILocation(line: 161, column: 1, scope: !366)
!679 = !DISubprogram(name: "calloc", scope: !360, file: !360, line: 543, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DISubroutineType(types: !681)
!681 = !{!32, !57, !57}
!682 = distinct !DISubprogram(name: "wgsim_print_mutref", scope: !3, file: !3, line: 162, type: !683, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !685, !369, !371, !371}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !700, !709, !710, !717, !718, !721}
!687 = !DILocalVariable(name: "name", arg: 1, scope: !682, file: !3, line: 162, type: !685)
!688 = !DILocalVariable(name: "ks", arg: 2, scope: !682, file: !3, line: 162, type: !369)
!689 = !DILocalVariable(name: "hap1", arg: 3, scope: !682, file: !3, line: 162, type: !371)
!690 = !DILocalVariable(name: "hap2", arg: 4, scope: !682, file: !3, line: 162, type: !371)
!691 = !DILocalVariable(name: "i", scope: !682, file: !3, line: 164, type: !31)
!692 = !DILocalVariable(name: "j", scope: !682, file: !3, line: 164, type: !31)
!693 = !DILocalVariable(name: "c", scope: !694, file: !3, line: 166, type: !697)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 165, column: 38)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 165, column: 5)
!696 = distinct !DILexicalBlock(scope: !682, file: !3, line: 165, column: 5)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 3)
!700 = !DILocalVariable(name: "n", scope: !701, file: !3, line: 183, type: !31)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 181, column: 58)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 181, column: 28)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 174, column: 28)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 172, column: 21)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 171, column: 31)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 171, column: 17)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 170, column: 73)
!708 = distinct !DILexicalBlock(scope: !694, file: !3, line: 170, column: 13)
!709 = !DILocalVariable(name: "ins", scope: !701, file: !3, line: 183, type: !31)
!710 = !DILocalVariable(name: "n", scope: !711, file: !3, line: 210, type: !31)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 208, column: 89)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 208, column: 28)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 201, column: 28)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 194, column: 28)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 192, column: 21)
!716 = distinct !DILexicalBlock(scope: !706, file: !3, line: 191, column: 20)
!717 = !DILocalVariable(name: "ins", scope: !711, file: !3, line: 210, type: !31)
!718 = !DILocalVariable(name: "n", scope: !719, file: !3, line: 219, type: !31)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 217, column: 89)
!720 = distinct !DILexicalBlock(scope: !712, file: !3, line: 217, column: 28)
!721 = !DILocalVariable(name: "ins", scope: !719, file: !3, line: 219, type: !31)
!722 = !DILocation(line: 162, column: 37, scope: !682)
!723 = !DILocation(line: 162, column: 57, scope: !682)
!724 = !DILocation(line: 162, column: 71, scope: !682)
!725 = !DILocation(line: 162, column: 87, scope: !682)
!726 = !DILocation(line: 164, column: 5, scope: !682)
!727 = !DILocation(line: 164, column: 9, scope: !682)
!728 = !DILocation(line: 164, column: 12, scope: !682)
!729 = !DILocation(line: 165, column: 12, scope: !696)
!730 = !DILocation(line: 165, column: 10, scope: !696)
!731 = !DILocation(line: 165, column: 17, scope: !695)
!732 = !DILocation(line: 165, column: 22, scope: !695)
!733 = !DILocation(line: 165, column: 26, scope: !695)
!734 = !DILocation(line: 165, column: 30, scope: !695)
!735 = !DILocation(line: 165, column: 19, scope: !695)
!736 = !DILocation(line: 165, column: 5, scope: !696)
!737 = !DILocation(line: 166, column: 9, scope: !694)
!738 = !DILocation(line: 166, column: 13, scope: !694)
!739 = !DILocation(line: 167, column: 35, scope: !694)
!740 = !DILocation(line: 167, column: 39, scope: !694)
!741 = !DILocation(line: 167, column: 43, scope: !694)
!742 = !DILocation(line: 167, column: 45, scope: !694)
!743 = !DILocation(line: 167, column: 30, scope: !694)
!744 = !DILocation(line: 167, column: 16, scope: !694)
!745 = !DILocation(line: 167, column: 9, scope: !694)
!746 = !DILocation(line: 167, column: 14, scope: !694)
!747 = !DILocation(line: 168, column: 16, scope: !694)
!748 = !DILocation(line: 168, column: 22, scope: !694)
!749 = !DILocation(line: 168, column: 24, scope: !694)
!750 = !DILocation(line: 168, column: 9, scope: !694)
!751 = !DILocation(line: 168, column: 14, scope: !694)
!752 = !DILocation(line: 168, column: 35, scope: !694)
!753 = !DILocation(line: 168, column: 41, scope: !694)
!754 = !DILocation(line: 168, column: 43, scope: !694)
!755 = !DILocation(line: 168, column: 28, scope: !694)
!756 = !DILocation(line: 168, column: 33, scope: !694)
!757 = !DILocation(line: 169, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !694, file: !3, line: 169, column: 13)
!759 = !DILocation(line: 169, column: 18, scope: !758)
!760 = !DILocation(line: 169, column: 13, scope: !694)
!761 = !DILocation(line: 169, column: 24, scope: !758)
!762 = !DILocation(line: 170, column: 14, scope: !708)
!763 = !DILocation(line: 170, column: 21, scope: !708)
!764 = !DILocation(line: 170, column: 19, scope: !708)
!765 = !DILocation(line: 170, column: 29, scope: !708)
!766 = !DILocation(line: 170, column: 41, scope: !708)
!767 = !DILocation(line: 170, column: 45, scope: !708)
!768 = !DILocation(line: 170, column: 52, scope: !708)
!769 = !DILocation(line: 170, column: 50, scope: !708)
!770 = !DILocation(line: 170, column: 60, scope: !708)
!771 = !DILocation(line: 170, column: 13, scope: !694)
!772 = !DILocation(line: 171, column: 17, scope: !706)
!773 = !DILocation(line: 171, column: 25, scope: !706)
!774 = !DILocation(line: 171, column: 22, scope: !706)
!775 = !DILocation(line: 171, column: 17, scope: !707)
!776 = !DILocation(line: 172, column: 22, scope: !704)
!777 = !DILocation(line: 172, column: 27, scope: !704)
!778 = !DILocation(line: 172, column: 26, scope: !704)
!779 = !DILocation(line: 172, column: 35, scope: !704)
!780 = !DILocation(line: 172, column: 21, scope: !705)
!781 = !DILocation(line: 173, column: 51, scope: !782)
!782 = distinct !DILexicalBlock(scope: !704, file: !3, line: 172, column: 50)
!783 = !DILocation(line: 173, column: 57, scope: !782)
!784 = !DILocation(line: 173, column: 58, scope: !782)
!785 = !DILocation(line: 173, column: 70, scope: !782)
!786 = !DILocation(line: 173, column: 62, scope: !782)
!787 = !DILocation(line: 173, column: 85, scope: !782)
!788 = !DILocation(line: 173, column: 89, scope: !782)
!789 = !DILocation(line: 173, column: 77, scope: !782)
!790 = !DILocation(line: 173, column: 21, scope: !782)
!791 = !DILocation(line: 174, column: 17, scope: !782)
!792 = !DILocation(line: 174, column: 29, scope: !703)
!793 = !DILocation(line: 174, column: 34, scope: !703)
!794 = !DILocation(line: 174, column: 33, scope: !703)
!795 = !DILocation(line: 174, column: 42, scope: !703)
!796 = !DILocation(line: 174, column: 28, scope: !704)
!797 = !DILocation(line: 175, column: 25, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 175, column: 25)
!799 = distinct !DILexicalBlock(scope: !703, file: !3, line: 174, column: 53)
!800 = !DILocation(line: 175, column: 30, scope: !798)
!801 = !DILocation(line: 175, column: 27, scope: !798)
!802 = !DILocation(line: 175, column: 25, scope: !799)
!803 = !DILocation(line: 176, column: 44, scope: !804)
!804 = distinct !DILexicalBlock(scope: !798, file: !3, line: 175, column: 33)
!805 = !DILocation(line: 176, column: 50, scope: !804)
!806 = !DILocation(line: 176, column: 51, scope: !804)
!807 = !DILocation(line: 176, column: 25, scope: !804)
!808 = !DILocation(line: 177, column: 34, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !3, line: 177, column: 25)
!810 = !DILocation(line: 177, column: 32, scope: !809)
!811 = !DILocation(line: 177, column: 30, scope: !809)
!812 = !DILocation(line: 177, column: 37, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !3, line: 177, column: 25)
!814 = !DILocation(line: 177, column: 41, scope: !813)
!815 = !DILocation(line: 177, column: 45, scope: !813)
!816 = !DILocation(line: 177, column: 49, scope: !813)
!817 = !DILocation(line: 177, column: 39, scope: !813)
!818 = !DILocation(line: 177, column: 51, scope: !813)
!819 = !DILocation(line: 177, column: 54, scope: !813)
!820 = !DILocation(line: 177, column: 60, scope: !813)
!821 = !DILocation(line: 177, column: 62, scope: !813)
!822 = !DILocation(line: 177, column: 68, scope: !813)
!823 = !DILocation(line: 177, column: 74, scope: !813)
!824 = !DILocation(line: 177, column: 76, scope: !813)
!825 = !DILocation(line: 177, column: 65, scope: !813)
!826 = !DILocation(line: 177, column: 79, scope: !813)
!827 = !DILocation(line: 177, column: 83, scope: !813)
!828 = !DILocation(line: 177, column: 89, scope: !813)
!829 = !DILocation(line: 177, column: 91, scope: !813)
!830 = !DILocation(line: 177, column: 94, scope: !813)
!831 = !DILocation(line: 177, column: 93, scope: !813)
!832 = !DILocation(line: 177, column: 102, scope: !813)
!833 = !DILocation(line: 0, scope: !813)
!834 = !DILocation(line: 177, column: 25, scope: !809)
!835 = !DILocation(line: 178, column: 64, scope: !813)
!836 = !DILocation(line: 178, column: 68, scope: !813)
!837 = !DILocation(line: 178, column: 72, scope: !813)
!838 = !DILocation(line: 178, column: 74, scope: !813)
!839 = !DILocation(line: 178, column: 59, scope: !813)
!840 = !DILocation(line: 178, column: 45, scope: !813)
!841 = !DILocation(line: 178, column: 37, scope: !813)
!842 = !DILocation(line: 178, column: 29, scope: !813)
!843 = !DILocation(line: 177, column: 113, scope: !813)
!844 = !DILocation(line: 177, column: 25, scope: !813)
!845 = distinct !{!845, !834, !846, !337}
!846 = !DILocation(line: 178, column: 78, scope: !809)
!847 = !DILocation(line: 179, column: 25, scope: !804)
!848 = !DILocation(line: 180, column: 21, scope: !804)
!849 = !DILocation(line: 181, column: 17, scope: !799)
!850 = !DILocation(line: 181, column: 30, scope: !702)
!851 = !DILocation(line: 181, column: 37, scope: !702)
!852 = !DILocation(line: 181, column: 35, scope: !702)
!853 = !DILocation(line: 181, column: 45, scope: !702)
!854 = !DILocation(line: 181, column: 52, scope: !702)
!855 = !DILocation(line: 181, column: 28, scope: !703)
!856 = !DILocation(line: 182, column: 43, scope: !701)
!857 = !DILocation(line: 182, column: 49, scope: !701)
!858 = !DILocation(line: 182, column: 50, scope: !701)
!859 = !DILocation(line: 182, column: 21, scope: !701)
!860 = !DILocation(line: 183, column: 21, scope: !701)
!861 = !DILocation(line: 183, column: 25, scope: !701)
!862 = !DILocation(line: 183, column: 30, scope: !701)
!863 = !DILocation(line: 183, column: 35, scope: !701)
!864 = !DILocation(line: 183, column: 34, scope: !701)
!865 = !DILocation(line: 183, column: 43, scope: !701)
!866 = !DILocation(line: 183, column: 50, scope: !701)
!867 = !DILocation(line: 183, column: 56, scope: !701)
!868 = !DILocation(line: 183, column: 61, scope: !701)
!869 = !DILocation(line: 184, column: 21, scope: !701)
!870 = !DILocation(line: 184, column: 28, scope: !701)
!871 = !DILocation(line: 184, column: 30, scope: !701)
!872 = !DILocation(line: 185, column: 41, scope: !873)
!873 = distinct !DILexicalBlock(scope: !701, file: !3, line: 184, column: 35)
!874 = !DILocation(line: 185, column: 45, scope: !873)
!875 = !DILocation(line: 185, column: 33, scope: !873)
!876 = !DILocation(line: 185, column: 25, scope: !873)
!877 = !DILocation(line: 186, column: 29, scope: !873)
!878 = !DILocation(line: 187, column: 26, scope: !873)
!879 = distinct !{!879, !869, !880, !337}
!880 = !DILocation(line: 188, column: 21, scope: !701)
!881 = !DILocation(line: 189, column: 21, scope: !701)
!882 = !DILocation(line: 190, column: 17, scope: !702)
!883 = !DILocation(line: 190, column: 17, scope: !701)
!884 = !DILocation(line: 191, column: 13, scope: !705)
!885 = !DILocation(line: 192, column: 22, scope: !715)
!886 = !DILocation(line: 192, column: 27, scope: !715)
!887 = !DILocation(line: 192, column: 26, scope: !715)
!888 = !DILocation(line: 192, column: 35, scope: !715)
!889 = !DILocation(line: 192, column: 49, scope: !715)
!890 = !DILocation(line: 192, column: 53, scope: !715)
!891 = !DILocation(line: 192, column: 58, scope: !715)
!892 = !DILocation(line: 192, column: 57, scope: !715)
!893 = !DILocation(line: 192, column: 66, scope: !715)
!894 = !DILocation(line: 192, column: 21, scope: !716)
!895 = !DILocation(line: 193, column: 51, scope: !896)
!896 = distinct !DILexicalBlock(scope: !715, file: !3, line: 192, column: 81)
!897 = !DILocation(line: 193, column: 57, scope: !896)
!898 = !DILocation(line: 193, column: 58, scope: !896)
!899 = !DILocation(line: 193, column: 70, scope: !896)
!900 = !DILocation(line: 193, column: 62, scope: !896)
!901 = !DILocation(line: 193, column: 100, scope: !896)
!902 = !DILocation(line: 193, column: 104, scope: !896)
!903 = !DILocation(line: 193, column: 97, scope: !896)
!904 = !DILocation(line: 193, column: 114, scope: !896)
!905 = !DILocation(line: 193, column: 118, scope: !896)
!906 = !DILocation(line: 193, column: 111, scope: !896)
!907 = !DILocation(line: 193, column: 109, scope: !896)
!908 = !DILocation(line: 193, column: 77, scope: !896)
!909 = !DILocation(line: 193, column: 21, scope: !896)
!910 = !DILocation(line: 194, column: 17, scope: !896)
!911 = !DILocation(line: 194, column: 29, scope: !714)
!912 = !DILocation(line: 194, column: 34, scope: !714)
!913 = !DILocation(line: 194, column: 33, scope: !714)
!914 = !DILocation(line: 194, column: 42, scope: !714)
!915 = !DILocation(line: 194, column: 28, scope: !715)
!916 = !DILocation(line: 195, column: 25, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 195, column: 25)
!918 = distinct !DILexicalBlock(scope: !714, file: !3, line: 194, column: 53)
!919 = !DILocation(line: 195, column: 30, scope: !917)
!920 = !DILocation(line: 195, column: 27, scope: !917)
!921 = !DILocation(line: 195, column: 25, scope: !918)
!922 = !DILocation(line: 196, column: 44, scope: !923)
!923 = distinct !DILexicalBlock(scope: !917, file: !3, line: 195, column: 33)
!924 = !DILocation(line: 196, column: 50, scope: !923)
!925 = !DILocation(line: 196, column: 51, scope: !923)
!926 = !DILocation(line: 196, column: 25, scope: !923)
!927 = !DILocation(line: 197, column: 34, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 197, column: 25)
!929 = !DILocation(line: 197, column: 32, scope: !928)
!930 = !DILocation(line: 197, column: 30, scope: !928)
!931 = !DILocation(line: 197, column: 37, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !3, line: 197, column: 25)
!933 = !DILocation(line: 197, column: 41, scope: !932)
!934 = !DILocation(line: 197, column: 45, scope: !932)
!935 = !DILocation(line: 197, column: 49, scope: !932)
!936 = !DILocation(line: 197, column: 39, scope: !932)
!937 = !DILocation(line: 197, column: 51, scope: !932)
!938 = !DILocation(line: 197, column: 54, scope: !932)
!939 = !DILocation(line: 197, column: 60, scope: !932)
!940 = !DILocation(line: 197, column: 62, scope: !932)
!941 = !DILocation(line: 197, column: 68, scope: !932)
!942 = !DILocation(line: 197, column: 74, scope: !932)
!943 = !DILocation(line: 197, column: 76, scope: !932)
!944 = !DILocation(line: 197, column: 65, scope: !932)
!945 = !DILocation(line: 197, column: 79, scope: !932)
!946 = !DILocation(line: 197, column: 83, scope: !932)
!947 = !DILocation(line: 197, column: 89, scope: !932)
!948 = !DILocation(line: 197, column: 91, scope: !932)
!949 = !DILocation(line: 197, column: 94, scope: !932)
!950 = !DILocation(line: 197, column: 93, scope: !932)
!951 = !DILocation(line: 197, column: 102, scope: !932)
!952 = !DILocation(line: 0, scope: !932)
!953 = !DILocation(line: 197, column: 25, scope: !928)
!954 = !DILocation(line: 198, column: 64, scope: !932)
!955 = !DILocation(line: 198, column: 68, scope: !932)
!956 = !DILocation(line: 198, column: 72, scope: !932)
!957 = !DILocation(line: 198, column: 74, scope: !932)
!958 = !DILocation(line: 198, column: 59, scope: !932)
!959 = !DILocation(line: 198, column: 45, scope: !932)
!960 = !DILocation(line: 198, column: 37, scope: !932)
!961 = !DILocation(line: 198, column: 29, scope: !932)
!962 = !DILocation(line: 197, column: 113, scope: !932)
!963 = !DILocation(line: 197, column: 25, scope: !932)
!964 = distinct !{!964, !953, !965, !337}
!965 = !DILocation(line: 198, column: 78, scope: !928)
!966 = !DILocation(line: 199, column: 25, scope: !923)
!967 = !DILocation(line: 200, column: 21, scope: !923)
!968 = !DILocation(line: 201, column: 17, scope: !918)
!969 = !DILocation(line: 201, column: 29, scope: !713)
!970 = !DILocation(line: 201, column: 34, scope: !713)
!971 = !DILocation(line: 201, column: 33, scope: !713)
!972 = !DILocation(line: 201, column: 42, scope: !713)
!973 = !DILocation(line: 201, column: 28, scope: !714)
!974 = !DILocation(line: 202, column: 25, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 202, column: 25)
!976 = distinct !DILexicalBlock(scope: !713, file: !3, line: 201, column: 53)
!977 = !DILocation(line: 202, column: 30, scope: !975)
!978 = !DILocation(line: 202, column: 27, scope: !975)
!979 = !DILocation(line: 202, column: 25, scope: !976)
!980 = !DILocation(line: 203, column: 44, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 202, column: 33)
!982 = !DILocation(line: 203, column: 50, scope: !981)
!983 = !DILocation(line: 203, column: 51, scope: !981)
!984 = !DILocation(line: 203, column: 25, scope: !981)
!985 = !DILocation(line: 204, column: 34, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !3, line: 204, column: 25)
!987 = !DILocation(line: 204, column: 32, scope: !986)
!988 = !DILocation(line: 204, column: 30, scope: !986)
!989 = !DILocation(line: 204, column: 37, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 204, column: 25)
!991 = !DILocation(line: 204, column: 41, scope: !990)
!992 = !DILocation(line: 204, column: 45, scope: !990)
!993 = !DILocation(line: 204, column: 49, scope: !990)
!994 = !DILocation(line: 204, column: 39, scope: !990)
!995 = !DILocation(line: 204, column: 51, scope: !990)
!996 = !DILocation(line: 204, column: 54, scope: !990)
!997 = !DILocation(line: 204, column: 60, scope: !990)
!998 = !DILocation(line: 204, column: 62, scope: !990)
!999 = !DILocation(line: 204, column: 68, scope: !990)
!1000 = !DILocation(line: 204, column: 74, scope: !990)
!1001 = !DILocation(line: 204, column: 76, scope: !990)
!1002 = !DILocation(line: 204, column: 65, scope: !990)
!1003 = !DILocation(line: 204, column: 79, scope: !990)
!1004 = !DILocation(line: 204, column: 83, scope: !990)
!1005 = !DILocation(line: 204, column: 89, scope: !990)
!1006 = !DILocation(line: 204, column: 91, scope: !990)
!1007 = !DILocation(line: 204, column: 94, scope: !990)
!1008 = !DILocation(line: 204, column: 93, scope: !990)
!1009 = !DILocation(line: 204, column: 102, scope: !990)
!1010 = !DILocation(line: 0, scope: !990)
!1011 = !DILocation(line: 204, column: 25, scope: !986)
!1012 = !DILocation(line: 205, column: 64, scope: !990)
!1013 = !DILocation(line: 205, column: 68, scope: !990)
!1014 = !DILocation(line: 205, column: 72, scope: !990)
!1015 = !DILocation(line: 205, column: 74, scope: !990)
!1016 = !DILocation(line: 205, column: 59, scope: !990)
!1017 = !DILocation(line: 205, column: 45, scope: !990)
!1018 = !DILocation(line: 205, column: 37, scope: !990)
!1019 = !DILocation(line: 205, column: 29, scope: !990)
!1020 = !DILocation(line: 204, column: 113, scope: !990)
!1021 = !DILocation(line: 204, column: 25, scope: !990)
!1022 = distinct !{!1022, !1011, !1023, !337}
!1023 = !DILocation(line: 205, column: 78, scope: !986)
!1024 = !DILocation(line: 206, column: 25, scope: !981)
!1025 = !DILocation(line: 207, column: 21, scope: !981)
!1026 = !DILocation(line: 208, column: 17, scope: !976)
!1027 = !DILocation(line: 208, column: 30, scope: !712)
!1028 = !DILocation(line: 208, column: 37, scope: !712)
!1029 = !DILocation(line: 208, column: 35, scope: !712)
!1030 = !DILocation(line: 208, column: 45, scope: !712)
!1031 = !DILocation(line: 208, column: 52, scope: !712)
!1032 = !DILocation(line: 208, column: 57, scope: !712)
!1033 = !DILocation(line: 208, column: 62, scope: !712)
!1034 = !DILocation(line: 208, column: 69, scope: !712)
!1035 = !DILocation(line: 208, column: 67, scope: !712)
!1036 = !DILocation(line: 208, column: 77, scope: !712)
!1037 = !DILocation(line: 208, column: 84, scope: !712)
!1038 = !DILocation(line: 208, column: 28, scope: !713)
!1039 = !DILocation(line: 209, column: 43, scope: !711)
!1040 = !DILocation(line: 209, column: 49, scope: !711)
!1041 = !DILocation(line: 209, column: 50, scope: !711)
!1042 = !DILocation(line: 209, column: 21, scope: !711)
!1043 = !DILocation(line: 210, column: 21, scope: !711)
!1044 = !DILocation(line: 210, column: 25, scope: !711)
!1045 = !DILocation(line: 210, column: 30, scope: !711)
!1046 = !DILocation(line: 210, column: 35, scope: !711)
!1047 = !DILocation(line: 210, column: 34, scope: !711)
!1048 = !DILocation(line: 210, column: 43, scope: !711)
!1049 = !DILocation(line: 210, column: 50, scope: !711)
!1050 = !DILocation(line: 210, column: 56, scope: !711)
!1051 = !DILocation(line: 210, column: 61, scope: !711)
!1052 = !DILocation(line: 211, column: 21, scope: !711)
!1053 = !DILocation(line: 211, column: 28, scope: !711)
!1054 = !DILocation(line: 211, column: 30, scope: !711)
!1055 = !DILocation(line: 212, column: 41, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !711, file: !3, line: 211, column: 35)
!1057 = !DILocation(line: 212, column: 45, scope: !1056)
!1058 = !DILocation(line: 212, column: 33, scope: !1056)
!1059 = !DILocation(line: 212, column: 25, scope: !1056)
!1060 = !DILocation(line: 213, column: 29, scope: !1056)
!1061 = !DILocation(line: 214, column: 26, scope: !1056)
!1062 = distinct !{!1062, !1052, !1063, !337}
!1063 = !DILocation(line: 215, column: 21, scope: !711)
!1064 = !DILocation(line: 216, column: 21, scope: !711)
!1065 = !DILocation(line: 217, column: 17, scope: !712)
!1066 = !DILocation(line: 217, column: 17, scope: !711)
!1067 = !DILocation(line: 217, column: 30, scope: !720)
!1068 = !DILocation(line: 217, column: 37, scope: !720)
!1069 = !DILocation(line: 217, column: 35, scope: !720)
!1070 = !DILocation(line: 217, column: 45, scope: !720)
!1071 = !DILocation(line: 217, column: 52, scope: !720)
!1072 = !DILocation(line: 217, column: 57, scope: !720)
!1073 = !DILocation(line: 217, column: 62, scope: !720)
!1074 = !DILocation(line: 217, column: 69, scope: !720)
!1075 = !DILocation(line: 217, column: 67, scope: !720)
!1076 = !DILocation(line: 217, column: 77, scope: !720)
!1077 = !DILocation(line: 217, column: 84, scope: !720)
!1078 = !DILocation(line: 217, column: 28, scope: !712)
!1079 = !DILocation(line: 218, column: 43, scope: !719)
!1080 = !DILocation(line: 218, column: 49, scope: !719)
!1081 = !DILocation(line: 218, column: 50, scope: !719)
!1082 = !DILocation(line: 218, column: 21, scope: !719)
!1083 = !DILocation(line: 219, column: 21, scope: !719)
!1084 = !DILocation(line: 219, column: 25, scope: !719)
!1085 = !DILocation(line: 219, column: 30, scope: !719)
!1086 = !DILocation(line: 219, column: 35, scope: !719)
!1087 = !DILocation(line: 219, column: 34, scope: !719)
!1088 = !DILocation(line: 219, column: 43, scope: !719)
!1089 = !DILocation(line: 219, column: 50, scope: !719)
!1090 = !DILocation(line: 219, column: 56, scope: !719)
!1091 = !DILocation(line: 219, column: 61, scope: !719)
!1092 = !DILocation(line: 220, column: 21, scope: !719)
!1093 = !DILocation(line: 220, column: 28, scope: !719)
!1094 = !DILocation(line: 220, column: 30, scope: !719)
!1095 = !DILocation(line: 221, column: 41, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !719, file: !3, line: 220, column: 35)
!1097 = !DILocation(line: 221, column: 45, scope: !1096)
!1098 = !DILocation(line: 221, column: 33, scope: !1096)
!1099 = !DILocation(line: 221, column: 25, scope: !1096)
!1100 = !DILocation(line: 222, column: 29, scope: !1096)
!1101 = !DILocation(line: 223, column: 26, scope: !1096)
!1102 = distinct !{!1102, !1092, !1103, !337}
!1103 = !DILocation(line: 224, column: 21, scope: !719)
!1104 = !DILocation(line: 225, column: 21, scope: !719)
!1105 = !DILocation(line: 226, column: 17, scope: !720)
!1106 = !DILocation(line: 226, column: 17, scope: !719)
!1107 = !DILocation(line: 228, column: 9, scope: !707)
!1108 = !DILocation(line: 229, column: 5, scope: !695)
!1109 = !DILocation(line: 229, column: 5, scope: !694)
!1110 = !DILocation(line: 165, column: 33, scope: !695)
!1111 = !DILocation(line: 165, column: 5, scope: !695)
!1112 = distinct !{!1112, !736, !1113, !337}
!1113 = !DILocation(line: 229, column: 5, scope: !696)
!1114 = !DILocation(line: 230, column: 1, scope: !682)
!1115 = !DISubprogram(name: "printf", scope: !1116, file: !1116, line: 356, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!31, !1119, null}
!1119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !685)
!1120 = distinct !DISubprogram(name: "putchar", scope: !1121, file: !1121, line: 82, type: !1122, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1124)
!1121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!31, !31}
!1124 = !{!1125}
!1125 = !DILocalVariable(name: "__c", arg: 1, scope: !1120, file: !1121, line: 82, type: !31)
!1126 = !DILocation(line: 82, column: 14, scope: !1120)
!1127 = !DILocation(line: 84, column: 16, scope: !1120)
!1128 = !DILocation(line: 84, column: 21, scope: !1120)
!1129 = !DILocation(line: 84, column: 10, scope: !1120)
!1130 = !DILocation(line: 84, column: 3, scope: !1120)
!1131 = distinct !DISubprogram(name: "wgsim_core", scope: !3, file: !3, line: 232, type: !1132, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1186)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1134, !1134, !685, !31, !42, !31, !31, !31, !31}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1136, line: 7, baseType: !1137)
!1136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1138, line: 49, size: 1728, elements: !1139)
!1138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1155, !1157, !1158, !1159, !1160, !1161, !1163, !1167, !1170, !1172, !1175, !1178, !1179, !1180, !1181, !1182}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1137, file: !1138, line: 51, baseType: !31, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1137, file: !1138, line: 54, baseType: !33, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1137, file: !1138, line: 55, baseType: !33, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1137, file: !1138, line: 56, baseType: !33, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1137, file: !1138, line: 57, baseType: !33, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1137, file: !1138, line: 58, baseType: !33, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1137, file: !1138, line: 59, baseType: !33, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1137, file: !1138, line: 60, baseType: !33, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1137, file: !1138, line: 61, baseType: !33, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1137, file: !1138, line: 64, baseType: !33, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1137, file: !1138, line: 65, baseType: !33, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1137, file: !1138, line: 66, baseType: !33, size: 64, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1137, file: !1138, line: 68, baseType: !1153, size: 64, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1138, line: 36, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1137, file: !1138, line: 70, baseType: !1156, size: 64, offset: 832)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1137, file: !1138, line: 72, baseType: !31, size: 32, offset: 896)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1137, file: !1138, line: 73, baseType: !31, size: 32, offset: 928)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1137, file: !1138, line: 74, baseType: !87, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1137, file: !1138, line: 77, baseType: !30, size: 16, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1137, file: !1138, line: 78, baseType: !1162, size: 8, offset: 1040)
!1162 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1137, file: !1138, line: 79, baseType: !1164, size: 8, offset: 1048)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 1)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1137, file: !1138, line: 81, baseType: !1168, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1138, line: 43, baseType: null)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1137, file: !1138, line: 89, baseType: !1171, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 153, baseType: !88)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1137, file: !1138, line: 91, baseType: !1173, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1138, line: 37, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1137, file: !1138, line: 92, baseType: !1176, size: 64, offset: 1280)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1138, line: 38, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1137, file: !1138, line: 93, baseType: !1156, size: 64, offset: 1344)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1137, file: !1138, line: 94, baseType: !32, size: 64, offset: 1408)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1137, file: !1138, line: 95, baseType: !57, size: 64, offset: 1472)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1137, file: !1138, line: 96, baseType: !31, size: 32, offset: 1536)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1137, file: !1138, line: 98, baseType: !1183, size: 160, offset: 1568)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 20)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1208, !1209, !1210, !1212, !1213, !1214, !1215, !1217, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1233, !1234, !1238, !1239, !1243, !1244, !1248, !1249, !1253, !1254, !1258}
!1187 = !DILocalVariable(name: "fpout1", arg: 1, scope: !1131, file: !3, line: 232, type: !1134)
!1188 = !DILocalVariable(name: "fpout2", arg: 2, scope: !1131, file: !3, line: 232, type: !1134)
!1189 = !DILocalVariable(name: "fn", arg: 3, scope: !1131, file: !3, line: 232, type: !685)
!1190 = !DILocalVariable(name: "is_hap", arg: 4, scope: !1131, file: !3, line: 232, type: !31)
!1191 = !DILocalVariable(name: "N", arg: 5, scope: !1131, file: !3, line: 232, type: !42)
!1192 = !DILocalVariable(name: "dist", arg: 6, scope: !1131, file: !3, line: 232, type: !31)
!1193 = !DILocalVariable(name: "std_dev", arg: 7, scope: !1131, file: !3, line: 232, type: !31)
!1194 = !DILocalVariable(name: "size_l", arg: 8, scope: !1131, file: !3, line: 232, type: !31)
!1195 = !DILocalVariable(name: "size_r", arg: 9, scope: !1131, file: !3, line: 232, type: !31)
!1196 = !DILocalVariable(name: "ks", scope: !1131, file: !3, line: 234, type: !47)
!1197 = !DILocalVariable(name: "rseq", scope: !1131, file: !3, line: 235, type: !1198)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 256, elements: !143)
!1199 = !DILocalVariable(name: "fp_fa", scope: !1131, file: !3, line: 236, type: !76)
!1200 = !DILocalVariable(name: "tot_len", scope: !1131, file: !3, line: 237, type: !42)
!1201 = !DILocalVariable(name: "ii", scope: !1131, file: !3, line: 237, type: !42)
!1202 = !DILocalVariable(name: "i", scope: !1131, file: !3, line: 238, type: !31)
!1203 = !DILocalVariable(name: "l", scope: !1131, file: !3, line: 238, type: !31)
!1204 = !DILocalVariable(name: "n_ref", scope: !1131, file: !3, line: 238, type: !31)
!1205 = !DILocalVariable(name: "qstr", scope: !1131, file: !3, line: 239, type: !33)
!1206 = !DILocalVariable(name: "size", scope: !1131, file: !3, line: 240, type: !1207)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !143)
!1208 = !DILocalVariable(name: "Q", scope: !1131, file: !3, line: 240, type: !31)
!1209 = !DILocalVariable(name: "max_size", scope: !1131, file: !3, line: 240, type: !31)
!1210 = !DILocalVariable(name: "tmp_seq", scope: !1131, file: !3, line: 241, type: !1211)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !143)
!1212 = !DILocalVariable(name: "target", scope: !1131, file: !3, line: 242, type: !28)
!1213 = !DILocalVariable(name: "max_loop", scope: !1131, file: !3, line: 243, type: !31)
!1214 = !DILocalVariable(name: "max_loop_err", scope: !1131, file: !3, line: 243, type: !31)
!1215 = !DILocalVariable(name: "n_pairs", scope: !1216, file: !3, line: 274, type: !42)
!1216 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 273, column: 38)
!1217 = !DILocalVariable(name: "ran", scope: !1218, file: !3, line: 285, type: !46)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 284, column: 60)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 284, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 284, column: 9)
!1221 = !DILocalVariable(name: "d", scope: !1218, file: !3, line: 286, type: !31)
!1222 = !DILocalVariable(name: "pos", scope: !1218, file: !3, line: 286, type: !31)
!1223 = !DILocalVariable(name: "s", scope: !1218, file: !3, line: 286, type: !1207)
!1224 = !DILocalVariable(name: "is_flip", scope: !1218, file: !3, line: 286, type: !31)
!1225 = !DILocalVariable(name: "n_sub", scope: !1218, file: !3, line: 287, type: !1207)
!1226 = !DILocalVariable(name: "n_indel", scope: !1218, file: !3, line: 287, type: !1207)
!1227 = !DILocalVariable(name: "n_err", scope: !1218, file: !3, line: 287, type: !1207)
!1228 = !DILocalVariable(name: "ext_coor", scope: !1218, file: !3, line: 287, type: !1207)
!1229 = !DILocalVariable(name: "j", scope: !1218, file: !3, line: 287, type: !31)
!1230 = !DILocalVariable(name: "k", scope: !1218, file: !3, line: 287, type: !31)
!1231 = !DILocalVariable(name: "fpo", scope: !1218, file: !3, line: 288, type: !1232)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 128, elements: !143)
!1233 = !DILabel(scope: !1218, name: "try_again", file: !3, line: 290)
!1234 = !DILocalVariable(name: "c", scope: !1235, file: !3, line: 317, type: !31)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 316, column: 95)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 316, column: 13)
!1237 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 316, column: 13)
!1238 = !DILocalVariable(name: "mut_type", scope: !1235, file: !3, line: 317, type: !31)
!1239 = !DILocalVariable(name: "n", scope: !1240, file: !3, line: 327, type: !31)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 326, column: 24)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 323, column: 26)
!1242 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 322, column: 21)
!1243 = !DILocalVariable(name: "ins", scope: !1240, file: !3, line: 327, type: !31)
!1244 = !DILocalVariable(name: "c", scope: !1245, file: !3, line: 338, type: !31)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 337, column: 103)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 337, column: 13)
!1247 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 337, column: 13)
!1248 = !DILocalVariable(name: "mut_type", scope: !1245, file: !3, line: 338, type: !31)
!1249 = !DILocalVariable(name: "n", scope: !1250, file: !3, line: 348, type: !31)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 347, column: 24)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 344, column: 26)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 343, column: 21)
!1253 = !DILocalVariable(name: "ins", scope: !1250, file: !3, line: 348, type: !31)
!1254 = !DILocalVariable(name: "n_n", scope: !1255, file: !3, line: 367, type: !31)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 366, column: 37)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 366, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 366, column: 13)
!1258 = !DILocalVariable(name: "c", scope: !1259, file: !3, line: 369, type: !31)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 368, column: 44)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 368, column: 17)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 368, column: 17)
!1262 = !DILocation(line: 232, column: 23, scope: !1131)
!1263 = !DILocation(line: 232, column: 37, scope: !1131)
!1264 = !DILocation(line: 232, column: 57, scope: !1131)
!1265 = !DILocation(line: 232, column: 65, scope: !1131)
!1266 = !{!424, !424, i64 0}
!1267 = !DILocation(line: 232, column: 82, scope: !1131)
!1268 = !DILocation(line: 232, column: 89, scope: !1131)
!1269 = !DILocation(line: 232, column: 99, scope: !1131)
!1270 = !DILocation(line: 232, column: 112, scope: !1131)
!1271 = !DILocation(line: 232, column: 124, scope: !1131)
!1272 = !DILocation(line: 234, column: 5, scope: !1131)
!1273 = !DILocation(line: 234, column: 13, scope: !1131)
!1274 = !DILocation(line: 235, column: 5, scope: !1131)
!1275 = !DILocation(line: 235, column: 14, scope: !1131)
!1276 = !DILocation(line: 236, column: 5, scope: !1131)
!1277 = !DILocation(line: 236, column: 12, scope: !1131)
!1278 = !DILocation(line: 237, column: 5, scope: !1131)
!1279 = !DILocation(line: 237, column: 14, scope: !1131)
!1280 = !DILocation(line: 237, column: 23, scope: !1131)
!1281 = !DILocation(line: 238, column: 5, scope: !1131)
!1282 = !DILocation(line: 238, column: 9, scope: !1131)
!1283 = !DILocation(line: 238, column: 12, scope: !1131)
!1284 = !DILocation(line: 238, column: 15, scope: !1131)
!1285 = !DILocation(line: 239, column: 5, scope: !1131)
!1286 = !DILocation(line: 239, column: 11, scope: !1131)
!1287 = !DILocation(line: 240, column: 5, scope: !1131)
!1288 = !DILocation(line: 240, column: 9, scope: !1131)
!1289 = !DILocation(line: 240, column: 18, scope: !1131)
!1290 = !DILocation(line: 240, column: 21, scope: !1131)
!1291 = !DILocation(line: 241, column: 5, scope: !1131)
!1292 = !DILocation(line: 241, column: 14, scope: !1131)
!1293 = !DILocation(line: 242, column: 5, scope: !1131)
!1294 = !DILocation(line: 242, column: 12, scope: !1131)
!1295 = !DILocation(line: 243, column: 5, scope: !1131)
!1296 = !DILocation(line: 243, column: 9, scope: !1131)
!1297 = !DILocation(line: 243, column: 19, scope: !1131)
!1298 = !DILocation(line: 245, column: 20, scope: !1131)
!1299 = !DILocation(line: 245, column: 13, scope: !1131)
!1300 = !DILocation(line: 245, column: 11, scope: !1131)
!1301 = !DILocation(line: 246, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 246, column: 9)
!1303 = !DILocation(line: 246, column: 15, scope: !1302)
!1304 = !DILocation(line: 246, column: 9, scope: !1131)
!1305 = !DILocation(line: 247, column: 17, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 246, column: 24)
!1307 = !DILocation(line: 247, column: 58, scope: !1306)
!1308 = !DILocation(line: 247, column: 71, scope: !1306)
!1309 = !DILocation(line: 247, column: 62, scope: !1306)
!1310 = !DILocation(line: 247, column: 9, scope: !1306)
!1311 = !DILocation(line: 248, column: 9, scope: !1306)
!1312 = !DILocation(line: 251, column: 9, scope: !1131)
!1313 = !DILocation(line: 251, column: 18, scope: !1131)
!1314 = !DILocation(line: 251, column: 16, scope: !1131)
!1315 = !DILocation(line: 251, column: 26, scope: !1131)
!1316 = !DILocation(line: 251, column: 35, scope: !1131)
!1317 = !DILocation(line: 251, column: 7, scope: !1131)
!1318 = !DILocation(line: 252, column: 26, scope: !1131)
!1319 = !DILocation(line: 252, column: 27, scope: !1131)
!1320 = !DILocation(line: 252, column: 19, scope: !1131)
!1321 = !DILocation(line: 252, column: 10, scope: !1131)
!1322 = !DILocation(line: 253, column: 35, scope: !1131)
!1323 = !DILocation(line: 253, column: 36, scope: !1131)
!1324 = !DILocation(line: 253, column: 28, scope: !1131)
!1325 = !DILocation(line: 253, column: 5, scope: !1131)
!1326 = !DILocation(line: 253, column: 16, scope: !1131)
!1327 = !DILocation(line: 254, column: 35, scope: !1131)
!1328 = !DILocation(line: 254, column: 36, scope: !1131)
!1329 = !DILocation(line: 254, column: 28, scope: !1131)
!1330 = !DILocation(line: 254, column: 5, scope: !1131)
!1331 = !DILocation(line: 254, column: 16, scope: !1131)
!1332 = !DILocation(line: 255, column: 15, scope: !1131)
!1333 = !DILocation(line: 255, column: 5, scope: !1131)
!1334 = !DILocation(line: 255, column: 13, scope: !1131)
!1335 = !DILocation(line: 255, column: 33, scope: !1131)
!1336 = !DILocation(line: 255, column: 23, scope: !1131)
!1337 = !DILocation(line: 255, column: 31, scope: !1131)
!1338 = !DILocation(line: 256, column: 16, scope: !1131)
!1339 = !DILocation(line: 256, column: 25, scope: !1131)
!1340 = !DILocation(line: 256, column: 23, scope: !1131)
!1341 = !DILocation(line: 256, column: 33, scope: !1131)
!1342 = !DILocation(line: 256, column: 42, scope: !1131)
!1343 = !DILocation(line: 256, column: 14, scope: !1131)
!1344 = !DILocation(line: 258, column: 10, scope: !1131)
!1345 = !DILocation(line: 258, column: 19, scope: !1131)
!1346 = !DILocation(line: 258, column: 9, scope: !1131)
!1347 = !DILocation(line: 258, column: 52, scope: !1131)
!1348 = !DILocation(line: 258, column: 48, scope: !1131)
!1349 = !DILocation(line: 258, column: 46, scope: !1131)
!1350 = !DILocation(line: 258, column: 64, scope: !1131)
!1351 = !DILocation(line: 258, column: 62, scope: !1131)
!1352 = !DILocation(line: 258, column: 74, scope: !1131)
!1353 = !DILocation(line: 258, column: 34, scope: !1131)
!1354 = !DILocation(line: 258, column: 83, scope: !1131)
!1355 = !DILocation(line: 258, column: 7, scope: !1131)
!1356 = !DILocation(line: 260, column: 20, scope: !1131)
!1357 = !DILocation(line: 260, column: 10, scope: !1131)
!1358 = !DILocation(line: 260, column: 8, scope: !1131)
!1359 = !DILocation(line: 261, column: 21, scope: !1131)
!1360 = !DILocation(line: 261, column: 13, scope: !1131)
!1361 = !DILocation(line: 262, column: 13, scope: !1131)
!1362 = !DILocation(line: 262, column: 5, scope: !1131)
!1363 = !DILocation(line: 263, column: 5, scope: !1131)
!1364 = !DILocation(line: 263, column: 27, scope: !1131)
!1365 = !DILocation(line: 263, column: 17, scope: !1131)
!1366 = !DILocation(line: 263, column: 15, scope: !1131)
!1367 = !DILocation(line: 263, column: 32, scope: !1131)
!1368 = !DILocation(line: 264, column: 20, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 263, column: 38)
!1370 = !DILocation(line: 264, column: 17, scope: !1369)
!1371 = !DILocation(line: 265, column: 9, scope: !1369)
!1372 = distinct !{!1372, !1363, !1373, !337}
!1373 = !DILocation(line: 266, column: 5, scope: !1131)
!1374 = !DILocation(line: 267, column: 13, scope: !1131)
!1375 = !DILocation(line: 267, column: 74, scope: !1131)
!1376 = !DILocation(line: 267, column: 92, scope: !1131)
!1377 = !DILocation(line: 267, column: 5, scope: !1131)
!1378 = !DILocation(line: 268, column: 18, scope: !1131)
!1379 = !DILocation(line: 268, column: 5, scope: !1131)
!1380 = !DILocation(line: 269, column: 13, scope: !1131)
!1381 = !DILocation(line: 269, column: 5, scope: !1131)
!1382 = !DILocation(line: 271, column: 20, scope: !1131)
!1383 = !DILocation(line: 271, column: 13, scope: !1131)
!1384 = !DILocation(line: 271, column: 11, scope: !1131)
!1385 = !DILocation(line: 272, column: 20, scope: !1131)
!1386 = !DILocation(line: 272, column: 10, scope: !1131)
!1387 = !DILocation(line: 272, column: 8, scope: !1131)
!1388 = !DILocation(line: 273, column: 5, scope: !1131)
!1389 = !DILocation(line: 273, column: 27, scope: !1131)
!1390 = !DILocation(line: 273, column: 17, scope: !1131)
!1391 = !DILocation(line: 273, column: 15, scope: !1131)
!1392 = !DILocation(line: 273, column: 32, scope: !1131)
!1393 = !DILocation(line: 274, column: 9, scope: !1216)
!1394 = !DILocation(line: 274, column: 18, scope: !1216)
!1395 = !DILocation(line: 274, column: 52, scope: !1216)
!1396 = !DILocation(line: 274, column: 39, scope: !1216)
!1397 = !DILocation(line: 274, column: 56, scope: !1216)
!1398 = !DILocation(line: 274, column: 54, scope: !1216)
!1399 = !DILocation(line: 274, column: 66, scope: !1216)
!1400 = !DILocation(line: 274, column: 68, scope: !1216)
!1401 = !DILocation(line: 274, column: 28, scope: !1216)
!1402 = !DILocation(line: 275, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 275, column: 13)
!1404 = !DILocation(line: 275, column: 17, scope: !1403)
!1405 = !DILocation(line: 275, column: 28, scope: !1403)
!1406 = !DILocation(line: 275, column: 26, scope: !1403)
!1407 = !DILocation(line: 275, column: 22, scope: !1403)
!1408 = !DILocation(line: 275, column: 15, scope: !1403)
!1409 = !DILocation(line: 275, column: 13, scope: !1216)
!1410 = !DILocation(line: 276, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 275, column: 37)
!1412 = !DILocation(line: 276, column: 94, scope: !1411)
!1413 = !DILocation(line: 276, column: 98, scope: !1411)
!1414 = !DILocation(line: 276, column: 103, scope: !1411)
!1415 = !{!422, !402, i64 16}
!1416 = !DILocation(line: 276, column: 106, scope: !1411)
!1417 = !DILocation(line: 276, column: 117, scope: !1411)
!1418 = !DILocation(line: 276, column: 115, scope: !1411)
!1419 = !DILocation(line: 276, column: 111, scope: !1411)
!1420 = !DILocation(line: 276, column: 13, scope: !1411)
!1421 = !DILocation(line: 277, column: 13, scope: !1411)
!1422 = distinct !{!1422, !1388, !1423, !337}
!1423 = !DILocation(line: 405, column: 5, scope: !1131)
!1424 = !DILocation(line: 281, column: 25, scope: !1216)
!1425 = !DILocation(line: 281, column: 29, scope: !1216)
!1426 = !DILocation(line: 281, column: 37, scope: !1216)
!1427 = !DILocation(line: 281, column: 43, scope: !1216)
!1428 = !DILocation(line: 281, column: 47, scope: !1216)
!1429 = !DILocation(line: 281, column: 9, scope: !1216)
!1430 = !DILocation(line: 282, column: 28, scope: !1216)
!1431 = !DILocation(line: 282, column: 32, scope: !1216)
!1432 = !DILocation(line: 282, column: 37, scope: !1216)
!1433 = !DILocation(line: 282, column: 40, scope: !1216)
!1434 = !DILocation(line: 282, column: 44, scope: !1216)
!1435 = !DILocation(line: 282, column: 50, scope: !1216)
!1436 = !DILocation(line: 282, column: 54, scope: !1216)
!1437 = !DILocation(line: 282, column: 9, scope: !1216)
!1438 = !DILocation(line: 284, column: 17, scope: !1220)
!1439 = !DILocation(line: 284, column: 14, scope: !1220)
!1440 = !DILocation(line: 284, column: 31, scope: !1219)
!1441 = !DILocation(line: 284, column: 39, scope: !1219)
!1442 = !DILocation(line: 284, column: 45, scope: !1219)
!1443 = !DILocation(line: 284, column: 42, scope: !1219)
!1444 = !DILocation(line: 284, column: 9, scope: !1220)
!1445 = !DILocation(line: 285, column: 13, scope: !1218)
!1446 = !DILocation(line: 285, column: 20, scope: !1218)
!1447 = !DILocation(line: 286, column: 13, scope: !1218)
!1448 = !DILocation(line: 286, column: 17, scope: !1218)
!1449 = !DILocation(line: 286, column: 20, scope: !1218)
!1450 = !DILocation(line: 286, column: 25, scope: !1218)
!1451 = !DILocation(line: 286, column: 31, scope: !1218)
!1452 = !DILocation(line: 287, column: 13, scope: !1218)
!1453 = !DILocation(line: 287, column: 17, scope: !1218)
!1454 = !DILocation(line: 287, column: 27, scope: !1218)
!1455 = !DILocation(line: 287, column: 39, scope: !1218)
!1456 = !DILocation(line: 287, column: 49, scope: !1218)
!1457 = !DILocation(line: 287, column: 62, scope: !1218)
!1458 = !DILocation(line: 287, column: 65, scope: !1218)
!1459 = !DILocation(line: 288, column: 13, scope: !1218)
!1460 = !DILocation(line: 288, column: 19, scope: !1218)
!1461 = !DILocation(line: 290, column: 9, scope: !1218)
!1462 = !DILocation(line: 291, column: 21, scope: !1218)
!1463 = !DILocation(line: 293, column: 13, scope: !1218)
!1464 = !DILocation(line: 294, column: 23, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 293, column: 16)
!1466 = !DILocation(line: 294, column: 21, scope: !1465)
!1467 = !DILocation(line: 295, column: 23, scope: !1465)
!1468 = !DILocation(line: 295, column: 29, scope: !1465)
!1469 = !DILocation(line: 295, column: 39, scope: !1465)
!1470 = !DILocation(line: 295, column: 37, scope: !1465)
!1471 = !DILocation(line: 295, column: 21, scope: !1465)
!1472 = !DILocation(line: 296, column: 27, scope: !1465)
!1473 = !DILocation(line: 296, column: 31, scope: !1465)
!1474 = !DILocation(line: 296, column: 21, scope: !1465)
!1475 = !DILocation(line: 296, column: 19, scope: !1465)
!1476 = !DILocation(line: 297, column: 21, scope: !1465)
!1477 = !DILocation(line: 297, column: 25, scope: !1465)
!1478 = !DILocation(line: 297, column: 23, scope: !1465)
!1479 = !DILocation(line: 297, column: 35, scope: !1465)
!1480 = !DILocation(line: 297, column: 39, scope: !1465)
!1481 = !DILocation(line: 297, column: 19, scope: !1465)
!1482 = !DILocation(line: 298, column: 30, scope: !1465)
!1483 = !DILocation(line: 298, column: 34, scope: !1465)
!1484 = !DILocation(line: 298, column: 32, scope: !1465)
!1485 = !DILocation(line: 298, column: 36, scope: !1465)
!1486 = !DILocation(line: 298, column: 29, scope: !1465)
!1487 = !DILocation(line: 298, column: 43, scope: !1465)
!1488 = !DILocation(line: 298, column: 41, scope: !1465)
!1489 = !DILocation(line: 298, column: 23, scope: !1465)
!1490 = !DILocation(line: 298, column: 21, scope: !1465)
!1491 = !DILocation(line: 299, column: 13, scope: !1465)
!1492 = !DILocation(line: 299, column: 22, scope: !1218)
!1493 = !DILocation(line: 299, column: 26, scope: !1218)
!1494 = !DILocation(line: 299, column: 30, scope: !1218)
!1495 = !DILocation(line: 299, column: 33, scope: !1218)
!1496 = !DILocation(line: 299, column: 40, scope: !1218)
!1497 = !DILocation(line: 299, column: 44, scope: !1218)
!1498 = !DILocation(line: 299, column: 48, scope: !1218)
!1499 = !DILocation(line: 299, column: 37, scope: !1218)
!1500 = !DILocation(line: 299, column: 50, scope: !1218)
!1501 = !DILocation(line: 299, column: 53, scope: !1218)
!1502 = !DILocation(line: 299, column: 59, scope: !1218)
!1503 = !DILocation(line: 299, column: 57, scope: !1218)
!1504 = !DILocation(line: 299, column: 61, scope: !1218)
!1505 = !DILocation(line: 299, column: 68, scope: !1218)
!1506 = !DILocation(line: 299, column: 72, scope: !1218)
!1507 = !DILocation(line: 299, column: 76, scope: !1218)
!1508 = !DILocation(line: 299, column: 65, scope: !1218)
!1509 = distinct !{!1509, !1463, !1510, !337}
!1510 = !DILocation(line: 299, column: 77, scope: !1218)
!1511 = !DILocation(line: 302, column: 17, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 302, column: 17)
!1513 = !DILocation(line: 302, column: 27, scope: !1512)
!1514 = !DILocation(line: 302, column: 17, scope: !1218)
!1515 = !DILocation(line: 303, column: 26, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 302, column: 34)
!1517 = !DILocation(line: 303, column: 17, scope: !1516)
!1518 = !DILocation(line: 303, column: 24, scope: !1516)
!1519 = !DILocation(line: 303, column: 43, scope: !1516)
!1520 = !DILocation(line: 303, column: 34, scope: !1516)
!1521 = !DILocation(line: 303, column: 41, scope: !1516)
!1522 = !DILocation(line: 304, column: 24, scope: !1516)
!1523 = !DILocation(line: 304, column: 17, scope: !1516)
!1524 = !DILocation(line: 304, column: 22, scope: !1516)
!1525 = !DILocation(line: 304, column: 40, scope: !1516)
!1526 = !DILocation(line: 304, column: 33, scope: !1516)
!1527 = !DILocation(line: 304, column: 38, scope: !1516)
!1528 = !DILocation(line: 305, column: 13, scope: !1516)
!1529 = !DILocation(line: 306, column: 26, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 305, column: 20)
!1531 = !DILocation(line: 306, column: 17, scope: !1530)
!1532 = !DILocation(line: 306, column: 24, scope: !1530)
!1533 = !DILocation(line: 306, column: 43, scope: !1530)
!1534 = !DILocation(line: 306, column: 34, scope: !1530)
!1535 = !DILocation(line: 306, column: 41, scope: !1530)
!1536 = !DILocation(line: 307, column: 24, scope: !1530)
!1537 = !DILocation(line: 307, column: 17, scope: !1530)
!1538 = !DILocation(line: 307, column: 22, scope: !1530)
!1539 = !DILocation(line: 307, column: 40, scope: !1530)
!1540 = !DILocation(line: 307, column: 33, scope: !1530)
!1541 = !DILocation(line: 307, column: 38, scope: !1530)
!1542 = !DILocation(line: 308, column: 25, scope: !1530)
!1543 = !DILocation(line: 312, column: 27, scope: !1218)
!1544 = !DILocation(line: 312, column: 36, scope: !1218)
!1545 = !DILocation(line: 312, column: 22, scope: !1218)
!1546 = !DILocation(line: 312, column: 46, scope: !1218)
!1547 = !DILocation(line: 312, column: 20, scope: !1218)
!1548 = !DILocation(line: 313, column: 72, scope: !1218)
!1549 = !DILocation(line: 313, column: 81, scope: !1218)
!1550 = !DILocation(line: 313, column: 61, scope: !1218)
!1551 = !DILocation(line: 313, column: 70, scope: !1218)
!1552 = !DILocation(line: 313, column: 48, scope: !1218)
!1553 = !DILocation(line: 313, column: 59, scope: !1218)
!1554 = !DILocation(line: 313, column: 35, scope: !1218)
!1555 = !DILocation(line: 313, column: 46, scope: !1218)
!1556 = !DILocation(line: 313, column: 24, scope: !1218)
!1557 = !DILocation(line: 313, column: 33, scope: !1218)
!1558 = !DILocation(line: 313, column: 13, scope: !1218)
!1559 = !DILocation(line: 313, column: 22, scope: !1218)
!1560 = !DILocation(line: 316, column: 22, scope: !1237)
!1561 = !DILocation(line: 316, column: 20, scope: !1237)
!1562 = !DILocation(line: 316, column: 29, scope: !1237)
!1563 = !DILocation(line: 316, column: 34, scope: !1237)
!1564 = !DILocation(line: 316, column: 46, scope: !1237)
!1565 = !DILocation(line: 316, column: 18, scope: !1237)
!1566 = !DILocation(line: 316, column: 53, scope: !1236)
!1567 = !DILocation(line: 316, column: 55, scope: !1236)
!1568 = !DILocation(line: 316, column: 60, scope: !1236)
!1569 = !DILocation(line: 316, column: 63, scope: !1236)
!1570 = !DILocation(line: 316, column: 67, scope: !1236)
!1571 = !DILocation(line: 316, column: 71, scope: !1236)
!1572 = !DILocation(line: 316, column: 75, scope: !1236)
!1573 = !DILocation(line: 316, column: 65, scope: !1236)
!1574 = !DILocation(line: 316, column: 77, scope: !1236)
!1575 = !DILocation(line: 316, column: 80, scope: !1236)
!1576 = !DILocation(line: 316, column: 84, scope: !1236)
!1577 = !DILocation(line: 316, column: 82, scope: !1236)
!1578 = !DILocation(line: 0, scope: !1236)
!1579 = !DILocation(line: 316, column: 13, scope: !1237)
!1580 = !DILocation(line: 317, column: 17, scope: !1235)
!1581 = !DILocation(line: 317, column: 21, scope: !1235)
!1582 = !DILocation(line: 317, column: 25, scope: !1235)
!1583 = !DILocation(line: 317, column: 32, scope: !1235)
!1584 = !DILocation(line: 317, column: 36, scope: !1235)
!1585 = !DILocation(line: 317, column: 47, scope: !1235)
!1586 = !DILocation(line: 317, column: 51, scope: !1235)
!1587 = !DILocation(line: 317, column: 49, scope: !1235)
!1588 = !DILocation(line: 318, column: 21, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 318, column: 21)
!1590 = !DILocation(line: 318, column: 33, scope: !1589)
!1591 = !DILocation(line: 318, column: 21, scope: !1235)
!1592 = !DILocation(line: 319, column: 25, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 319, column: 25)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 318, column: 38)
!1595 = !DILocation(line: 319, column: 34, scope: !1593)
!1596 = !DILocation(line: 319, column: 46, scope: !1593)
!1597 = !DILocation(line: 319, column: 49, scope: !1593)
!1598 = !DILocation(line: 319, column: 58, scope: !1593)
!1599 = !DILocation(line: 319, column: 25, scope: !1594)
!1600 = !DILocation(line: 319, column: 73, scope: !1593)
!1601 = !DILocation(line: 320, column: 35, scope: !1594)
!1602 = !DILocation(line: 320, column: 21, scope: !1594)
!1603 = !DILocation(line: 320, column: 33, scope: !1594)
!1604 = !DILocation(line: 321, column: 17, scope: !1594)
!1605 = !DILocation(line: 322, column: 21, scope: !1242)
!1606 = !DILocation(line: 322, column: 30, scope: !1242)
!1607 = !DILocation(line: 322, column: 21, scope: !1235)
!1608 = !DILocation(line: 322, column: 43, scope: !1242)
!1609 = !DILocation(line: 322, column: 41, scope: !1242)
!1610 = !DILocation(line: 323, column: 26, scope: !1241)
!1611 = !DILocation(line: 323, column: 35, scope: !1241)
!1612 = !DILocation(line: 323, column: 47, scope: !1241)
!1613 = !DILocation(line: 323, column: 50, scope: !1241)
!1614 = !DILocation(line: 323, column: 59, scope: !1241)
!1615 = !DILocation(line: 323, column: 26, scope: !1242)
!1616 = !DILocation(line: 324, column: 39, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 323, column: 74)
!1618 = !DILocation(line: 324, column: 41, scope: !1617)
!1619 = !DILocation(line: 324, column: 21, scope: !1617)
!1620 = !DILocation(line: 324, column: 33, scope: !1617)
!1621 = !DILocation(line: 324, column: 37, scope: !1617)
!1622 = !DILocation(line: 325, column: 25, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 325, column: 25)
!1624 = !DILocation(line: 325, column: 34, scope: !1623)
!1625 = !DILocation(line: 325, column: 25, scope: !1617)
!1626 = !DILocation(line: 325, column: 51, scope: !1623)
!1627 = !DILocation(line: 325, column: 49, scope: !1623)
!1628 = !DILocation(line: 326, column: 17, scope: !1617)
!1629 = !DILocation(line: 327, column: 21, scope: !1240)
!1630 = !DILocation(line: 327, column: 25, scope: !1240)
!1631 = !DILocation(line: 327, column: 28, scope: !1240)
!1632 = !DILocation(line: 328, column: 23, scope: !1240)
!1633 = !DILocation(line: 328, column: 21, scope: !1240)
!1634 = !DILocation(line: 329, column: 39, scope: !1240)
!1635 = !DILocation(line: 329, column: 41, scope: !1240)
!1636 = !DILocation(line: 329, column: 21, scope: !1240)
!1637 = !DILocation(line: 329, column: 33, scope: !1240)
!1638 = !DILocation(line: 329, column: 37, scope: !1240)
!1639 = !DILocation(line: 330, column: 30, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 330, column: 21)
!1641 = !DILocation(line: 330, column: 38, scope: !1640)
!1642 = !DILocation(line: 330, column: 28, scope: !1640)
!1643 = !DILocation(line: 330, column: 50, scope: !1640)
!1644 = !DILocation(line: 330, column: 51, scope: !1640)
!1645 = !DILocation(line: 330, column: 48, scope: !1640)
!1646 = !DILocation(line: 330, column: 26, scope: !1640)
!1647 = !DILocation(line: 330, column: 56, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 330, column: 21)
!1649 = !DILocation(line: 330, column: 58, scope: !1648)
!1650 = !DILocation(line: 330, column: 62, scope: !1648)
!1651 = !DILocation(line: 330, column: 65, scope: !1648)
!1652 = !DILocation(line: 330, column: 69, scope: !1648)
!1653 = !DILocation(line: 330, column: 67, scope: !1648)
!1654 = !DILocation(line: 0, scope: !1648)
!1655 = !DILocation(line: 330, column: 21, scope: !1640)
!1656 = !DILocation(line: 331, column: 43, scope: !1648)
!1657 = !DILocation(line: 331, column: 47, scope: !1648)
!1658 = !DILocation(line: 331, column: 25, scope: !1648)
!1659 = !DILocation(line: 331, column: 37, scope: !1648)
!1660 = !DILocation(line: 331, column: 41, scope: !1648)
!1661 = !DILocation(line: 330, column: 75, scope: !1648)
!1662 = !DILocation(line: 330, column: 84, scope: !1648)
!1663 = !DILocation(line: 330, column: 21, scope: !1648)
!1664 = distinct !{!1664, !1655, !1665, !337}
!1665 = !DILocation(line: 331, column: 49, scope: !1640)
!1666 = !DILocation(line: 332, column: 17, scope: !1241)
!1667 = !DILocation(line: 333, column: 13, scope: !1236)
!1668 = !DILocation(line: 333, column: 13, scope: !1235)
!1669 = !DILocation(line: 316, column: 90, scope: !1236)
!1670 = !DILocation(line: 316, column: 13, scope: !1236)
!1671 = distinct !{!1671, !1579, !1672, !337}
!1672 = !DILocation(line: 333, column: 13, scope: !1237)
!1673 = !DILocation(line: 334, column: 17, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 334, column: 17)
!1675 = !DILocation(line: 334, column: 22, scope: !1674)
!1676 = !DILocation(line: 334, column: 19, scope: !1674)
!1677 = !DILocation(line: 334, column: 17, scope: !1218)
!1678 = !DILocation(line: 334, column: 28, scope: !1674)
!1679 = !DILocation(line: 334, column: 40, scope: !1674)
!1680 = !DILocation(line: 337, column: 22, scope: !1247)
!1681 = !DILocation(line: 337, column: 28, scope: !1247)
!1682 = !DILocation(line: 337, column: 26, scope: !1247)
!1683 = !DILocation(line: 337, column: 30, scope: !1247)
!1684 = !DILocation(line: 337, column: 20, scope: !1247)
!1685 = !DILocation(line: 337, column: 37, scope: !1247)
!1686 = !DILocation(line: 337, column: 42, scope: !1247)
!1687 = !DILocation(line: 337, column: 54, scope: !1247)
!1688 = !DILocation(line: 337, column: 18, scope: !1247)
!1689 = !DILocation(line: 337, column: 61, scope: !1246)
!1690 = !DILocation(line: 337, column: 63, scope: !1246)
!1691 = !DILocation(line: 337, column: 68, scope: !1246)
!1692 = !DILocation(line: 337, column: 71, scope: !1246)
!1693 = !DILocation(line: 337, column: 75, scope: !1246)
!1694 = !DILocation(line: 337, column: 79, scope: !1246)
!1695 = !DILocation(line: 337, column: 83, scope: !1246)
!1696 = !DILocation(line: 337, column: 73, scope: !1246)
!1697 = !DILocation(line: 337, column: 85, scope: !1246)
!1698 = !DILocation(line: 337, column: 88, scope: !1246)
!1699 = !DILocation(line: 337, column: 92, scope: !1246)
!1700 = !DILocation(line: 337, column: 90, scope: !1246)
!1701 = !DILocation(line: 0, scope: !1246)
!1702 = !DILocation(line: 337, column: 13, scope: !1247)
!1703 = !DILocation(line: 338, column: 17, scope: !1245)
!1704 = !DILocation(line: 338, column: 21, scope: !1245)
!1705 = !DILocation(line: 338, column: 25, scope: !1245)
!1706 = !DILocation(line: 338, column: 32, scope: !1245)
!1707 = !DILocation(line: 338, column: 36, scope: !1245)
!1708 = !DILocation(line: 338, column: 47, scope: !1245)
!1709 = !DILocation(line: 338, column: 51, scope: !1245)
!1710 = !DILocation(line: 338, column: 49, scope: !1245)
!1711 = !DILocation(line: 339, column: 21, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 339, column: 21)
!1713 = !DILocation(line: 339, column: 33, scope: !1712)
!1714 = !DILocation(line: 339, column: 21, scope: !1245)
!1715 = !DILocation(line: 340, column: 25, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 340, column: 25)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 339, column: 38)
!1718 = !DILocation(line: 340, column: 34, scope: !1716)
!1719 = !DILocation(line: 340, column: 46, scope: !1716)
!1720 = !DILocation(line: 340, column: 49, scope: !1716)
!1721 = !DILocation(line: 340, column: 58, scope: !1716)
!1722 = !DILocation(line: 340, column: 25, scope: !1717)
!1723 = !DILocation(line: 340, column: 73, scope: !1716)
!1724 = !DILocation(line: 341, column: 35, scope: !1717)
!1725 = !DILocation(line: 341, column: 21, scope: !1717)
!1726 = !DILocation(line: 341, column: 33, scope: !1717)
!1727 = !DILocation(line: 342, column: 17, scope: !1717)
!1728 = !DILocation(line: 343, column: 21, scope: !1252)
!1729 = !DILocation(line: 343, column: 30, scope: !1252)
!1730 = !DILocation(line: 343, column: 21, scope: !1245)
!1731 = !DILocation(line: 343, column: 43, scope: !1252)
!1732 = !DILocation(line: 343, column: 41, scope: !1252)
!1733 = !DILocation(line: 344, column: 26, scope: !1251)
!1734 = !DILocation(line: 344, column: 35, scope: !1251)
!1735 = !DILocation(line: 344, column: 47, scope: !1251)
!1736 = !DILocation(line: 344, column: 50, scope: !1251)
!1737 = !DILocation(line: 344, column: 59, scope: !1251)
!1738 = !DILocation(line: 344, column: 26, scope: !1252)
!1739 = !DILocation(line: 345, column: 39, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 344, column: 74)
!1741 = !DILocation(line: 345, column: 41, scope: !1740)
!1742 = !DILocation(line: 345, column: 21, scope: !1740)
!1743 = !DILocation(line: 345, column: 33, scope: !1740)
!1744 = !DILocation(line: 345, column: 37, scope: !1740)
!1745 = !DILocation(line: 346, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 346, column: 25)
!1747 = !DILocation(line: 346, column: 34, scope: !1746)
!1748 = !DILocation(line: 346, column: 25, scope: !1740)
!1749 = !DILocation(line: 346, column: 51, scope: !1746)
!1750 = !DILocation(line: 346, column: 49, scope: !1746)
!1751 = !DILocation(line: 347, column: 17, scope: !1740)
!1752 = !DILocation(line: 348, column: 21, scope: !1250)
!1753 = !DILocation(line: 348, column: 25, scope: !1250)
!1754 = !DILocation(line: 348, column: 28, scope: !1250)
!1755 = !DILocation(line: 349, column: 23, scope: !1250)
!1756 = !DILocation(line: 349, column: 21, scope: !1250)
!1757 = !DILocation(line: 350, column: 30, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 350, column: 21)
!1759 = !DILocation(line: 350, column: 38, scope: !1758)
!1760 = !DILocation(line: 350, column: 28, scope: !1758)
!1761 = !DILocation(line: 350, column: 50, scope: !1758)
!1762 = !DILocation(line: 350, column: 51, scope: !1758)
!1763 = !DILocation(line: 350, column: 48, scope: !1758)
!1764 = !DILocation(line: 350, column: 26, scope: !1758)
!1765 = !DILocation(line: 350, column: 56, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 350, column: 21)
!1767 = !DILocation(line: 350, column: 58, scope: !1766)
!1768 = !DILocation(line: 350, column: 62, scope: !1766)
!1769 = !DILocation(line: 350, column: 65, scope: !1766)
!1770 = !DILocation(line: 350, column: 69, scope: !1766)
!1771 = !DILocation(line: 350, column: 67, scope: !1766)
!1772 = !DILocation(line: 0, scope: !1766)
!1773 = !DILocation(line: 350, column: 21, scope: !1758)
!1774 = !DILocation(line: 351, column: 44, scope: !1766)
!1775 = !DILocation(line: 351, column: 52, scope: !1766)
!1776 = !DILocation(line: 351, column: 51, scope: !1766)
!1777 = !DILocation(line: 351, column: 47, scope: !1766)
!1778 = !DILocation(line: 351, column: 58, scope: !1766)
!1779 = !DILocation(line: 351, column: 43, scope: !1766)
!1780 = !DILocation(line: 351, column: 25, scope: !1766)
!1781 = !DILocation(line: 351, column: 37, scope: !1766)
!1782 = !DILocation(line: 351, column: 41, scope: !1766)
!1783 = !DILocation(line: 350, column: 21, scope: !1766)
!1784 = distinct !{!1784, !1773, !1785, !337}
!1785 = !DILocation(line: 351, column: 60, scope: !1758)
!1786 = !DILocation(line: 352, column: 39, scope: !1250)
!1787 = !DILocation(line: 352, column: 41, scope: !1250)
!1788 = !DILocation(line: 352, column: 21, scope: !1250)
!1789 = !DILocation(line: 352, column: 33, scope: !1250)
!1790 = !DILocation(line: 352, column: 37, scope: !1250)
!1791 = !DILocation(line: 353, column: 17, scope: !1251)
!1792 = !DILocation(line: 354, column: 13, scope: !1246)
!1793 = !DILocation(line: 354, column: 13, scope: !1245)
!1794 = !DILocation(line: 337, column: 98, scope: !1246)
!1795 = !DILocation(line: 337, column: 13, scope: !1246)
!1796 = distinct !{!1796, !1702, !1797, !337}
!1797 = !DILocation(line: 354, column: 13, scope: !1247)
!1798 = !DILocation(line: 355, column: 17, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 355, column: 17)
!1800 = !DILocation(line: 355, column: 22, scope: !1799)
!1801 = !DILocation(line: 355, column: 19, scope: !1799)
!1802 = !DILocation(line: 355, column: 17, scope: !1218)
!1803 = !DILocation(line: 355, column: 28, scope: !1799)
!1804 = !DILocation(line: 355, column: 40, scope: !1799)
!1805 = !DILocation(line: 359, column: 20, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 359, column: 13)
!1807 = !DILocation(line: 359, column: 18, scope: !1806)
!1808 = !DILocation(line: 359, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 359, column: 13)
!1810 = !DILocation(line: 359, column: 29, scope: !1809)
!1811 = !DILocation(line: 359, column: 27, scope: !1809)
!1812 = !DILocation(line: 359, column: 13, scope: !1806)
!1813 = !DILocation(line: 359, column: 56, scope: !1809)
!1814 = !DILocation(line: 359, column: 67, scope: !1809)
!1815 = !DILocation(line: 359, column: 70, scope: !1809)
!1816 = !DILocation(line: 359, column: 79, scope: !1809)
!1817 = !DILocation(line: 359, column: 90, scope: !1809)
!1818 = !DILocation(line: 359, column: 77, scope: !1809)
!1819 = !DILocation(line: 359, column: 40, scope: !1809)
!1820 = !DILocation(line: 359, column: 51, scope: !1809)
!1821 = !DILocation(line: 359, column: 54, scope: !1809)
!1822 = !DILocation(line: 359, column: 35, scope: !1809)
!1823 = !DILocation(line: 359, column: 13, scope: !1809)
!1824 = distinct !{!1824, !1812, !1825, !337}
!1825 = !DILocation(line: 359, column: 95, scope: !1806)
!1826 = !DILocation(line: 360, column: 17, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 360, column: 17)
!1828 = !DILocation(line: 360, column: 29, scope: !1827)
!1829 = !DILocation(line: 360, column: 33, scope: !1827)
!1830 = !DILocation(line: 360, column: 36, scope: !1827)
!1831 = !DILocation(line: 360, column: 48, scope: !1827)
!1832 = !DILocation(line: 360, column: 17, scope: !1218)
!1833 = !DILocation(line: 361, column: 17, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 360, column: 53)
!1835 = !DILocation(line: 362, column: 17, scope: !1834)
!1836 = !DILocation(line: 366, column: 20, scope: !1257)
!1837 = !DILocation(line: 366, column: 18, scope: !1257)
!1838 = !DILocation(line: 366, column: 25, scope: !1256)
!1839 = !DILocation(line: 366, column: 27, scope: !1256)
!1840 = !DILocation(line: 366, column: 13, scope: !1257)
!1841 = !DILocation(line: 367, column: 17, scope: !1255)
!1842 = !DILocation(line: 367, column: 21, scope: !1255)
!1843 = !DILocation(line: 368, column: 24, scope: !1261)
!1844 = !DILocation(line: 368, column: 22, scope: !1261)
!1845 = !DILocation(line: 368, column: 29, scope: !1260)
!1846 = !DILocation(line: 368, column: 35, scope: !1260)
!1847 = !DILocation(line: 368, column: 33, scope: !1260)
!1848 = !DILocation(line: 368, column: 31, scope: !1260)
!1849 = !DILocation(line: 368, column: 17, scope: !1261)
!1850 = !DILocation(line: 369, column: 21, scope: !1259)
!1851 = !DILocation(line: 369, column: 25, scope: !1259)
!1852 = !DILocation(line: 369, column: 37, scope: !1259)
!1853 = !DILocation(line: 369, column: 29, scope: !1259)
!1854 = !DILocation(line: 369, column: 40, scope: !1259)
!1855 = !DILocation(line: 370, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 370, column: 25)
!1857 = !DILocation(line: 370, column: 27, scope: !1856)
!1858 = !DILocation(line: 370, column: 25, scope: !1259)
!1859 = !DILocation(line: 371, column: 27, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 370, column: 33)
!1861 = !DILocation(line: 372, column: 25, scope: !1860)
!1862 = !DILocation(line: 373, column: 21, scope: !1860)
!1863 = !DILocation(line: 373, column: 32, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 373, column: 32)
!1865 = !DILocation(line: 373, column: 44, scope: !1864)
!1866 = !DILocation(line: 373, column: 42, scope: !1864)
!1867 = !DILocation(line: 373, column: 32, scope: !1856)
!1868 = !DILocation(line: 375, column: 30, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 373, column: 54)
!1870 = !DILocation(line: 375, column: 32, scope: !1869)
!1871 = !DILocation(line: 375, column: 37, scope: !1869)
!1872 = !DILocation(line: 375, column: 27, scope: !1869)
!1873 = !DILocation(line: 376, column: 33, scope: !1869)
!1874 = !DILocation(line: 376, column: 27, scope: !1869)
!1875 = !DILocation(line: 376, column: 25, scope: !1869)
!1876 = !DILocation(line: 377, column: 21, scope: !1869)
!1877 = !DILocation(line: 378, column: 37, scope: !1259)
!1878 = !DILocation(line: 378, column: 29, scope: !1259)
!1879 = !DILocation(line: 378, column: 21, scope: !1259)
!1880 = !DILocation(line: 378, column: 32, scope: !1259)
!1881 = !DILocation(line: 378, column: 35, scope: !1259)
!1882 = !DILocation(line: 379, column: 17, scope: !1260)
!1883 = !DILocation(line: 379, column: 17, scope: !1259)
!1884 = !DILocation(line: 368, column: 39, scope: !1260)
!1885 = !DILocation(line: 368, column: 17, scope: !1260)
!1886 = distinct !{!1886, !1849, !1887, !337}
!1887 = !DILocation(line: 379, column: 17, scope: !1261)
!1888 = !DILocation(line: 380, column: 29, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 380, column: 21)
!1890 = !DILocation(line: 380, column: 21, scope: !1889)
!1891 = !DILocation(line: 380, column: 37, scope: !1889)
!1892 = !DILocation(line: 380, column: 35, scope: !1889)
!1893 = !DILocation(line: 380, column: 33, scope: !1889)
!1894 = !DILocation(line: 380, column: 42, scope: !1889)
!1895 = !DILocation(line: 380, column: 40, scope: !1889)
!1896 = !DILocation(line: 380, column: 21, scope: !1255)
!1897 = !DILocation(line: 380, column: 55, scope: !1889)
!1898 = !DILocation(line: 381, column: 13, scope: !1256)
!1899 = !DILocation(line: 381, column: 13, scope: !1255)
!1900 = !DILocation(line: 366, column: 32, scope: !1256)
!1901 = !DILocation(line: 366, column: 13, scope: !1256)
!1902 = distinct !{!1902, !1840, !1903, !337}
!1903 = !DILocation(line: 381, column: 13, scope: !1257)
!1904 = !DILocation(line: 382, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 382, column: 17)
!1906 = !DILocation(line: 382, column: 19, scope: !1905)
!1907 = !DILocation(line: 382, column: 17, scope: !1218)
!1908 = !DILocation(line: 383, column: 29, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 383, column: 21)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 382, column: 24)
!1911 = !DILocation(line: 383, column: 21, scope: !1910)
!1912 = !DILocation(line: 383, column: 33, scope: !1909)
!1913 = !DILocation(line: 384, column: 22, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 384, column: 21)
!1915 = !DILocation(line: 384, column: 21, scope: !1910)
!1916 = !DILocation(line: 385, column: 29, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 384, column: 36)
!1918 = !DILocation(line: 385, column: 21, scope: !1917)
!1919 = !DILocation(line: 387, column: 34, scope: !1917)
!1920 = !DILocation(line: 388, column: 17, scope: !1917)
!1921 = !DILocation(line: 389, column: 17, scope: !1910)
!1922 = !DILocation(line: 393, column: 20, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 393, column: 13)
!1924 = !DILocation(line: 393, column: 18, scope: !1923)
!1925 = !DILocation(line: 393, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 393, column: 13)
!1927 = !DILocation(line: 393, column: 27, scope: !1926)
!1928 = !DILocation(line: 393, column: 13, scope: !1923)
!1929 = !DILocation(line: 394, column: 24, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 394, column: 17)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 393, column: 37)
!1932 = !DILocation(line: 394, column: 22, scope: !1930)
!1933 = !DILocation(line: 394, column: 29, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 394, column: 17)
!1935 = !DILocation(line: 394, column: 35, scope: !1934)
!1936 = !DILocation(line: 394, column: 33, scope: !1934)
!1937 = !DILocation(line: 394, column: 31, scope: !1934)
!1938 = !DILocation(line: 394, column: 17, scope: !1930)
!1939 = !DILocation(line: 394, column: 54, scope: !1934)
!1940 = !DILocation(line: 394, column: 44, scope: !1934)
!1941 = !DILocation(line: 394, column: 49, scope: !1934)
!1942 = !DILocation(line: 394, column: 52, scope: !1934)
!1943 = !DILocation(line: 394, column: 39, scope: !1934)
!1944 = !DILocation(line: 394, column: 17, scope: !1934)
!1945 = distinct !{!1945, !1938, !1946, !337}
!1946 = !DILocation(line: 394, column: 54, scope: !1930)
!1947 = !DILocation(line: 395, column: 17, scope: !1931)
!1948 = !DILocation(line: 395, column: 22, scope: !1931)
!1949 = !DILocation(line: 395, column: 25, scope: !1931)
!1950 = !DILocation(line: 396, column: 29, scope: !1931)
!1951 = !DILocation(line: 396, column: 25, scope: !1931)
!1952 = !DILocation(line: 396, column: 74, scope: !1931)
!1953 = !DILocation(line: 396, column: 78, scope: !1931)
!1954 = !DILocation(line: 396, column: 83, scope: !1931)
!1955 = !DILocation(line: 396, column: 86, scope: !1931)
!1956 = !DILocation(line: 396, column: 97, scope: !1931)
!1957 = !DILocation(line: 396, column: 101, scope: !1931)
!1958 = !DILocation(line: 396, column: 112, scope: !1931)
!1959 = !DILocation(line: 397, column: 25, scope: !1931)
!1960 = !DILocation(line: 397, column: 35, scope: !1931)
!1961 = !DILocation(line: 397, column: 45, scope: !1931)
!1962 = !DILocation(line: 397, column: 57, scope: !1931)
!1963 = !DILocation(line: 397, column: 67, scope: !1931)
!1964 = !DILocation(line: 397, column: 77, scope: !1931)
!1965 = !DILocation(line: 398, column: 36, scope: !1931)
!1966 = !DILocation(line: 398, column: 40, scope: !1931)
!1967 = !DILocation(line: 398, column: 41, scope: !1931)
!1968 = !DILocation(line: 398, column: 46, scope: !1931)
!1969 = !DILocation(line: 398, column: 53, scope: !1931)
!1970 = !DILocation(line: 398, column: 60, scope: !1931)
!1971 = !DILocation(line: 398, column: 59, scope: !1931)
!1972 = !DILocation(line: 396, column: 17, scope: !1931)
!1973 = !DILocation(line: 399, column: 24, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 399, column: 17)
!1975 = !DILocation(line: 399, column: 22, scope: !1974)
!1976 = !DILocation(line: 399, column: 29, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 399, column: 17)
!1978 = !DILocation(line: 399, column: 35, scope: !1977)
!1979 = !DILocation(line: 399, column: 33, scope: !1977)
!1980 = !DILocation(line: 399, column: 31, scope: !1977)
!1981 = !DILocation(line: 399, column: 17, scope: !1974)
!1982 = !DILocation(line: 400, column: 48, scope: !1977)
!1983 = !DILocation(line: 400, column: 40, scope: !1977)
!1984 = !DILocation(line: 400, column: 51, scope: !1977)
!1985 = !DILocation(line: 400, column: 35, scope: !1977)
!1986 = !DILocation(line: 400, column: 27, scope: !1977)
!1987 = !DILocation(line: 400, column: 60, scope: !1977)
!1988 = !DILocation(line: 400, column: 56, scope: !1977)
!1989 = !DILocation(line: 400, column: 21, scope: !1977)
!1990 = !DILocation(line: 399, column: 39, scope: !1977)
!1991 = !DILocation(line: 399, column: 17, scope: !1977)
!1992 = distinct !{!1992, !1981, !1993, !337}
!1993 = !DILocation(line: 400, column: 62, scope: !1974)
!1994 = !DILocation(line: 401, column: 29, scope: !1931)
!1995 = !DILocation(line: 401, column: 25, scope: !1931)
!1996 = !DILocation(line: 401, column: 46, scope: !1931)
!1997 = !DILocation(line: 401, column: 17, scope: !1931)
!1998 = !DILocation(line: 402, column: 13, scope: !1931)
!1999 = !DILocation(line: 393, column: 32, scope: !1926)
!2000 = !DILocation(line: 393, column: 13, scope: !1926)
!2001 = distinct !{!2001, !1928, !2002, !337}
!2002 = !DILocation(line: 402, column: 13, scope: !1923)
!2003 = !DILocation(line: 403, column: 9, scope: !1219)
!2004 = !DILocation(line: 403, column: 9, scope: !1218)
!2005 = !DILocation(line: 284, column: 54, scope: !1219)
!2006 = !DILocation(line: 284, column: 9, scope: !1219)
!2007 = distinct !{!2007, !1444, !2008, !337}
!2008 = !DILocation(line: 403, column: 9, scope: !1220)
!2009 = !DILocation(line: 404, column: 14, scope: !1216)
!2010 = !DILocation(line: 404, column: 22, scope: !1216)
!2011 = !DILocation(line: 404, column: 9, scope: !1216)
!2012 = !DILocation(line: 404, column: 31, scope: !1216)
!2013 = !DILocation(line: 404, column: 39, scope: !1216)
!2014 = !DILocation(line: 404, column: 26, scope: !1216)
!2015 = !DILocation(line: 406, column: 18, scope: !1131)
!2016 = !DILocation(line: 406, column: 5, scope: !1131)
!2017 = !DILocation(line: 407, column: 13, scope: !1131)
!2018 = !DILocation(line: 407, column: 5, scope: !1131)
!2019 = !DILocation(line: 408, column: 10, scope: !1131)
!2020 = !DILocation(line: 408, column: 5, scope: !1131)
!2021 = !DILocation(line: 409, column: 10, scope: !1131)
!2022 = !DILocation(line: 409, column: 5, scope: !1131)
!2023 = !DILocation(line: 409, column: 28, scope: !1131)
!2024 = !DILocation(line: 409, column: 23, scope: !1131)
!2025 = !DILocation(line: 410, column: 1, scope: !1131)
!2026 = !DISubprogram(name: "gzopen", scope: !77, file: !77, line: 1828, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!76, !685, !685}
!2029 = !DISubprogram(name: "fprintf", scope: !1116, file: !1116, line: 350, type: !2030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!31, !2032, !1119, null}
!2032 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1134)
!2033 = !DISubprogram(name: "strerror", scope: !2034, file: !2034, line: 419, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2034 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!33, !31}
!2037 = !DISubprogram(name: "__errno_location", scope: !2038, file: !2038, line: 37, type: !2039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2038 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!2042 = distinct !DISubprogram(name: "kseq_init", scope: !3, file: !3, line: 46, type: !2043, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!47, !76}
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "fd", arg: 1, scope: !2042, file: !3, line: 46, type: !76)
!2047 = !DILocalVariable(name: "s", scope: !2042, file: !3, line: 46, type: !47)
!2048 = !DILocation(line: 46, column: 1, scope: !2042)
!2049 = !{!422, !402, i64 104}
!2050 = distinct !DISubprogram(name: "kseq_read", scope: !3, file: !3, line: 46, type: !2051, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!31, !47}
!2053 = !{!2054, !2055, !2056}
!2054 = !DILocalVariable(name: "seq", arg: 1, scope: !2050, file: !3, line: 46, type: !47)
!2055 = !DILocalVariable(name: "c", scope: !2050, file: !3, line: 46, type: !31)
!2056 = !DILocalVariable(name: "ks", scope: !2050, file: !3, line: 46, type: !66)
!2057 = !DILocation(line: 46, column: 1, scope: !2050)
!2058 = !DILocation(line: 46, column: 1, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2060 = !{!422, !306, i64 96}
!2061 = !DILocation(line: 46, column: 1, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 46, column: 1)
!2063 = !DILocation(line: 0, scope: !2062)
!2064 = distinct !{!2064, !2061, !2061, !337}
!2065 = !DILocation(line: 46, column: 1, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 46, column: 1)
!2067 = !{!422, !424, i64 72}
!2068 = !{!422, !424, i64 24}
!2069 = !DILocation(line: 46, column: 1, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2071 = !DILocation(line: 46, column: 1, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2073 = !DILocation(line: 46, column: 1, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2075 = !DILocation(line: 46, column: 1, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 46, column: 1)
!2077 = !DILocation(line: 0, scope: !2050)
!2078 = !DILocation(line: 46, column: 1, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 46, column: 1)
!2080 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2081 = !DILocation(line: 46, column: 1, scope: !2080)
!2082 = distinct !{!2082, !2057, !2057, !337}
!2083 = !DILocation(line: 46, column: 1, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2085 = !DILocation(line: 46, column: 1, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2087 = !DILocation(line: 46, column: 1, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 46, column: 1)
!2089 = !DILocation(line: 46, column: 1, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 46, column: 1)
!2091 = !DILocation(line: 46, column: 1, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2093 = !DILocation(line: 46, column: 1, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2095 = !{!422, !424, i64 80}
!2096 = !DILocation(line: 46, column: 1, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 46, column: 1)
!2098 = !{!422, !402, i64 88}
!2099 = distinct !{!2099, !2057, !2057, !337}
!2100 = !DILocation(line: 46, column: 1, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2102 = distinct !{!2102, !2057, !2057, !337}
!2103 = !DILocation(line: 46, column: 1, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 46, column: 1)
!2105 = distinct !DISubprogram(name: "kseq_destroy", scope: !3, file: !3, line: 46, type: !2106, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !47}
!2108 = !{!2109}
!2109 = !DILocalVariable(name: "ks", arg: 1, scope: !2105, file: !3, line: 46, type: !47)
!2110 = !DILocation(line: 46, column: 1, scope: !2105)
!2111 = !DILocation(line: 46, column: 1, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 46, column: 1)
!2113 = !{!422, !402, i64 40}
!2114 = !DISubprogram(name: "gzclose", scope: !77, file: !77, line: 1611, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!31, !76}
!2117 = !DISubprogram(name: "fputc", scope: !1116, file: !1116, line: 549, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!31, !31, !1134}
!2120 = !DISubprogram(name: "free", scope: !360, file: !360, line: 555, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !32}
!2123 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 435, type: !2124, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!31, !31, !90}
!2126 = !{!2127, !2128, !2129, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2127 = !DILocalVariable(name: "argc", arg: 1, scope: !2123, file: !3, line: 435, type: !31)
!2128 = !DILocalVariable(name: "argv", arg: 2, scope: !2123, file: !3, line: 435, type: !90)
!2129 = !DILocalVariable(name: "N", scope: !2123, file: !3, line: 437, type: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2131, line: 27, baseType: !2132)
!2131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !39, line: 44, baseType: !88)
!2133 = !DILocalVariable(name: "dist", scope: !2123, file: !3, line: 438, type: !31)
!2134 = !DILocalVariable(name: "std_dev", scope: !2123, file: !3, line: 438, type: !31)
!2135 = !DILocalVariable(name: "c", scope: !2123, file: !3, line: 438, type: !31)
!2136 = !DILocalVariable(name: "size_l", scope: !2123, file: !3, line: 438, type: !31)
!2137 = !DILocalVariable(name: "size_r", scope: !2123, file: !3, line: 438, type: !31)
!2138 = !DILocalVariable(name: "is_hap", scope: !2123, file: !3, line: 438, type: !31)
!2139 = !DILocalVariable(name: "fpout1", scope: !2123, file: !3, line: 439, type: !1134)
!2140 = !DILocalVariable(name: "fpout2", scope: !2123, file: !3, line: 439, type: !1134)
!2141 = !DILocalVariable(name: "seed", scope: !2123, file: !3, line: 440, type: !31)
!2142 = !DILocation(line: 435, column: 14, scope: !2123)
!2143 = !DILocation(line: 435, column: 26, scope: !2123)
!2144 = !DILocation(line: 437, column: 5, scope: !2123)
!2145 = !DILocation(line: 437, column: 13, scope: !2123)
!2146 = !DILocation(line: 438, column: 5, scope: !2123)
!2147 = !DILocation(line: 438, column: 9, scope: !2123)
!2148 = !DILocation(line: 438, column: 15, scope: !2123)
!2149 = !DILocation(line: 438, column: 24, scope: !2123)
!2150 = !DILocation(line: 438, column: 27, scope: !2123)
!2151 = !DILocation(line: 438, column: 35, scope: !2123)
!2152 = !DILocation(line: 438, column: 43, scope: !2123)
!2153 = !DILocation(line: 439, column: 5, scope: !2123)
!2154 = !DILocation(line: 439, column: 11, scope: !2123)
!2155 = !DILocation(line: 439, column: 20, scope: !2123)
!2156 = !DILocation(line: 440, column: 5, scope: !2123)
!2157 = !DILocation(line: 440, column: 9, scope: !2123)
!2158 = !DILocation(line: 442, column: 7, scope: !2123)
!2159 = !DILocation(line: 442, column: 23, scope: !2123)
!2160 = !DILocation(line: 442, column: 38, scope: !2123)
!2161 = !DILocation(line: 443, column: 21, scope: !2123)
!2162 = !DILocation(line: 443, column: 12, scope: !2123)
!2163 = !DILocation(line: 444, column: 5, scope: !2123)
!2164 = !DILocation(line: 444, column: 24, scope: !2123)
!2165 = !DILocation(line: 444, column: 30, scope: !2123)
!2166 = !DILocation(line: 444, column: 17, scope: !2123)
!2167 = !DILocation(line: 444, column: 15, scope: !2123)
!2168 = !DILocation(line: 444, column: 64, scope: !2123)
!2169 = !DILocation(line: 445, column: 17, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 444, column: 70)
!2171 = !DILocation(line: 445, column: 9, scope: !2170)
!2172 = !DILocation(line: 446, column: 31, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 445, column: 20)
!2174 = !DILocation(line: 446, column: 26, scope: !2173)
!2175 = !DILocation(line: 446, column: 24, scope: !2173)
!2176 = !DILocation(line: 446, column: 40, scope: !2173)
!2177 = !DILocation(line: 447, column: 34, scope: !2173)
!2178 = !DILocation(line: 447, column: 29, scope: !2173)
!2179 = !DILocation(line: 447, column: 27, scope: !2173)
!2180 = !DILocation(line: 447, column: 43, scope: !2173)
!2181 = !DILocation(line: 448, column: 28, scope: !2173)
!2182 = !DILocation(line: 448, column: 23, scope: !2173)
!2183 = !DILocation(line: 448, column: 21, scope: !2173)
!2184 = !DILocation(line: 448, column: 37, scope: !2173)
!2185 = !DILocation(line: 449, column: 33, scope: !2173)
!2186 = !DILocation(line: 449, column: 28, scope: !2173)
!2187 = !DILocation(line: 449, column: 26, scope: !2173)
!2188 = !DILocation(line: 449, column: 42, scope: !2173)
!2189 = !DILocation(line: 450, column: 33, scope: !2173)
!2190 = !DILocation(line: 450, column: 28, scope: !2173)
!2191 = !DILocation(line: 450, column: 26, scope: !2173)
!2192 = !DILocation(line: 450, column: 42, scope: !2173)
!2193 = !DILocation(line: 451, column: 35, scope: !2173)
!2194 = !DILocation(line: 451, column: 30, scope: !2173)
!2195 = !DILocation(line: 451, column: 28, scope: !2173)
!2196 = !DILocation(line: 451, column: 44, scope: !2173)
!2197 = !DILocation(line: 452, column: 35, scope: !2173)
!2198 = !DILocation(line: 452, column: 30, scope: !2173)
!2199 = !DILocation(line: 452, column: 28, scope: !2173)
!2200 = !DILocation(line: 452, column: 44, scope: !2173)
!2201 = !DILocation(line: 453, column: 37, scope: !2173)
!2202 = !DILocation(line: 453, column: 32, scope: !2173)
!2203 = !DILocation(line: 453, column: 30, scope: !2173)
!2204 = !DILocation(line: 453, column: 46, scope: !2173)
!2205 = !DILocation(line: 454, column: 39, scope: !2173)
!2206 = !DILocation(line: 454, column: 34, scope: !2173)
!2207 = !DILocation(line: 454, column: 32, scope: !2173)
!2208 = !DILocation(line: 454, column: 48, scope: !2173)
!2209 = !DILocation(line: 455, column: 38, scope: !2173)
!2210 = !DILocation(line: 455, column: 33, scope: !2173)
!2211 = !DILocation(line: 455, column: 31, scope: !2173)
!2212 = !DILocation(line: 455, column: 47, scope: !2173)
!2213 = !DILocation(line: 456, column: 31, scope: !2173)
!2214 = !DILocation(line: 456, column: 26, scope: !2173)
!2215 = !DILocation(line: 456, column: 24, scope: !2173)
!2216 = !DILocation(line: 456, column: 40, scope: !2173)
!2217 = !DILocation(line: 457, column: 26, scope: !2173)
!2218 = !DILocation(line: 457, column: 31, scope: !2173)
!2219 = distinct !{!2219, !2163, !2220, !337}
!2220 = !DILocation(line: 459, column: 5, scope: !2123)
!2221 = !DILocation(line: 460, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 460, column: 9)
!2223 = !DILocation(line: 460, column: 16, scope: !2222)
!2224 = !DILocation(line: 460, column: 14, scope: !2222)
!2225 = !DILocation(line: 460, column: 23, scope: !2222)
!2226 = !DILocation(line: 460, column: 9, scope: !2123)
!2227 = !DILocation(line: 460, column: 35, scope: !2222)
!2228 = !DILocation(line: 460, column: 28, scope: !2222)
!2229 = !DILocation(line: 461, column: 20, scope: !2123)
!2230 = !DILocation(line: 461, column: 25, scope: !2123)
!2231 = !DILocation(line: 461, column: 31, scope: !2123)
!2232 = !DILocation(line: 461, column: 14, scope: !2123)
!2233 = !DILocation(line: 461, column: 12, scope: !2123)
!2234 = !DILocation(line: 462, column: 20, scope: !2123)
!2235 = !DILocation(line: 462, column: 25, scope: !2123)
!2236 = !DILocation(line: 462, column: 31, scope: !2123)
!2237 = !DILocation(line: 462, column: 14, scope: !2123)
!2238 = !DILocation(line: 462, column: 12, scope: !2123)
!2239 = !DILocation(line: 463, column: 10, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 463, column: 9)
!2241 = !DILocation(line: 463, column: 17, scope: !2240)
!2242 = !DILocation(line: 463, column: 21, scope: !2240)
!2243 = !DILocation(line: 463, column: 9, scope: !2123)
!2244 = !DILocation(line: 464, column: 17, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 463, column: 29)
!2246 = !DILocation(line: 464, column: 9, scope: !2245)
!2247 = !DILocation(line: 465, column: 9, scope: !2245)
!2248 = !DILocation(line: 467, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 467, column: 9)
!2250 = !DILocation(line: 467, column: 14, scope: !2249)
!2251 = !DILocation(line: 467, column: 9, scope: !2123)
!2252 = !DILocation(line: 467, column: 27, scope: !2249)
!2253 = !DILocation(line: 467, column: 34, scope: !2249)
!2254 = !DILocation(line: 467, column: 25, scope: !2249)
!2255 = !DILocation(line: 467, column: 20, scope: !2249)
!2256 = !DILocation(line: 468, column: 13, scope: !2123)
!2257 = !DILocation(line: 468, column: 44, scope: !2123)
!2258 = !DILocation(line: 468, column: 5, scope: !2123)
!2259 = !DILocation(line: 469, column: 17, scope: !2123)
!2260 = !DILocation(line: 469, column: 5, scope: !2123)
!2261 = !DILocation(line: 470, column: 16, scope: !2123)
!2262 = !DILocation(line: 470, column: 24, scope: !2123)
!2263 = !DILocation(line: 470, column: 32, scope: !2123)
!2264 = !DILocation(line: 470, column: 37, scope: !2123)
!2265 = !DILocation(line: 470, column: 46, scope: !2123)
!2266 = !DILocation(line: 470, column: 54, scope: !2123)
!2267 = !DILocation(line: 470, column: 57, scope: !2123)
!2268 = !DILocation(line: 470, column: 63, scope: !2123)
!2269 = !DILocation(line: 470, column: 72, scope: !2123)
!2270 = !DILocation(line: 470, column: 80, scope: !2123)
!2271 = !DILocation(line: 470, column: 5, scope: !2123)
!2272 = !DILocation(line: 472, column: 12, scope: !2123)
!2273 = !DILocation(line: 472, column: 5, scope: !2123)
!2274 = !DILocation(line: 472, column: 28, scope: !2123)
!2275 = !DILocation(line: 472, column: 21, scope: !2123)
!2276 = !DILocation(line: 473, column: 5, scope: !2123)
!2277 = !DILocation(line: 474, column: 1, scope: !2123)
!2278 = !DISubprogram(name: "getopt", scope: !2279, file: !2279, line: 91, type: !2280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_core.h", directory: "", checksumkind: CSK_MD5, checksum: "81ab788980ce9d5be2ba931a6ae17301")
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!31, !31, !2282, !685}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!2284 = distinct !DISubprogram(name: "atoi", scope: !360, file: !360, line: 362, type: !2285, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!31, !685}
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2284, file: !360, line: 362, type: !685)
!2289 = !DILocation(line: 362, column: 1, scope: !2284)
!2290 = !DILocation(line: 364, column: 24, scope: !2284)
!2291 = !DILocation(line: 364, column: 16, scope: !2284)
!2292 = !DILocation(line: 364, column: 10, scope: !2284)
!2293 = !DILocation(line: 364, column: 3, scope: !2284)
!2294 = distinct !DISubprogram(name: "atof", scope: !2295, file: !2295, line: 25, type: !2296, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "", checksumkind: CSK_MD5, checksum: "adfe1626ff4efc68ac58c367ff5f206b")
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!46, !685}
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2294, file: !2295, line: 25, type: !685)
!2300 = !DILocation(line: 25, column: 1, scope: !2294)
!2301 = !DILocation(line: 27, column: 18, scope: !2294)
!2302 = !DILocation(line: 27, column: 10, scope: !2294)
!2303 = !DILocation(line: 27, column: 3, scope: !2294)
!2304 = distinct !DISubprogram(name: "simu_usage", scope: !3, file: !3, line: 412, type: !2305, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!31}
!2307 = !DILocation(line: 414, column: 13, scope: !2304)
!2308 = !DILocation(line: 414, column: 5, scope: !2304)
!2309 = !DILocation(line: 415, column: 13, scope: !2304)
!2310 = !DILocation(line: 415, column: 5, scope: !2304)
!2311 = !DILocation(line: 416, column: 13, scope: !2304)
!2312 = !DILocation(line: 416, column: 5, scope: !2304)
!2313 = !DILocation(line: 417, column: 13, scope: !2304)
!2314 = !DILocation(line: 417, column: 5, scope: !2304)
!2315 = !DILocation(line: 418, column: 13, scope: !2304)
!2316 = !DILocation(line: 418, column: 5, scope: !2304)
!2317 = !DILocation(line: 419, column: 13, scope: !2304)
!2318 = !DILocation(line: 419, column: 72, scope: !2304)
!2319 = !DILocation(line: 419, column: 5, scope: !2304)
!2320 = !DILocation(line: 420, column: 13, scope: !2304)
!2321 = !DILocation(line: 420, column: 5, scope: !2304)
!2322 = !DILocation(line: 421, column: 13, scope: !2304)
!2323 = !DILocation(line: 421, column: 5, scope: !2304)
!2324 = !DILocation(line: 422, column: 13, scope: !2304)
!2325 = !DILocation(line: 422, column: 5, scope: !2304)
!2326 = !DILocation(line: 423, column: 13, scope: !2304)
!2327 = !DILocation(line: 423, column: 5, scope: !2304)
!2328 = !DILocation(line: 424, column: 13, scope: !2304)
!2329 = !DILocation(line: 424, column: 5, scope: !2304)
!2330 = !DILocation(line: 425, column: 13, scope: !2304)
!2331 = !DILocation(line: 425, column: 74, scope: !2304)
!2332 = !DILocation(line: 425, column: 5, scope: !2304)
!2333 = !DILocation(line: 426, column: 13, scope: !2304)
!2334 = !DILocation(line: 426, column: 75, scope: !2304)
!2335 = !DILocation(line: 426, column: 5, scope: !2304)
!2336 = !DILocation(line: 427, column: 13, scope: !2304)
!2337 = !DILocation(line: 427, column: 89, scope: !2304)
!2338 = !DILocation(line: 427, column: 5, scope: !2304)
!2339 = !DILocation(line: 428, column: 13, scope: !2304)
!2340 = !DILocation(line: 428, column: 5, scope: !2304)
!2341 = !DILocation(line: 429, column: 13, scope: !2304)
!2342 = !DILocation(line: 429, column: 117, scope: !2304)
!2343 = !DILocation(line: 429, column: 5, scope: !2304)
!2344 = !DILocation(line: 430, column: 13, scope: !2304)
!2345 = !DILocation(line: 430, column: 5, scope: !2304)
!2346 = !DILocation(line: 431, column: 13, scope: !2304)
!2347 = !DILocation(line: 431, column: 5, scope: !2304)
!2348 = !DILocation(line: 432, column: 5, scope: !2304)
!2349 = !DISubprogram(name: "fopen", scope: !1116, file: !1116, line: 258, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!1134, !1119, !1119}
!2352 = !DISubprogram(name: "time", scope: !2353, file: !2353, line: 76, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2356, !2359}
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2357, line: 10, baseType: !2358)
!2357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !39, line: 160, baseType: !88)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2360 = !DISubprogram(name: "hts_srand48", scope: !2361, file: !2361, line: 41, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/hts_os.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "1d46ed01ed5832fdcad4ef4911b0a6e5")
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !88}
!2364 = !DISubprogram(name: "fclose", scope: !1116, file: !1116, line: 178, type: !2365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!31, !1134}
!2367 = !DISubprogram(name: "putc", scope: !1116, file: !1116, line: 550, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2368 = distinct !DISubprogram(name: "ks_init", scope: !3, file: !3, line: 46, type: !2369, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!66, !76}
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "f", arg: 1, scope: !2368, file: !3, line: 46, type: !76)
!2373 = !DILocalVariable(name: "ks", scope: !2368, file: !3, line: 46, type: !66)
!2374 = !DILocation(line: 46, column: 1, scope: !2368)
!2375 = !{!2376, !402, i64 24}
!2376 = !{!"__kstream_t", !306, i64 0, !306, i64 4, !306, i64 8, !306, i64 8, !424, i64 16, !402, i64 24, !402, i64 32}
!2377 = !{!2376, !402, i64 32}
!2378 = !DISubprogram(name: "malloc", scope: !360, file: !360, line: 540, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!32, !57}
!2381 = distinct !DISubprogram(name: "ks_getc", scope: !3, file: !3, line: 46, type: !2382, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!31, !66}
!2384 = !{!2385}
!2385 = !DILocalVariable(name: "ks", arg: 1, scope: !2381, file: !3, line: 46, type: !66)
!2386 = !DILocation(line: 46, column: 1, scope: !2381)
!2387 = !DILocation(line: 46, column: 1, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 46, column: 1)
!2389 = !{!2376, !306, i64 0}
!2390 = !{!2376, !306, i64 4}
!2391 = !DILocation(line: 46, column: 1, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 46, column: 1)
!2393 = !DILocation(line: 46, column: 1, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 46, column: 1)
!2395 = !DILocation(line: 46, column: 1, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 46, column: 1)
!2397 = !DILocation(line: 46, column: 1, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 46, column: 1)
!2399 = !{!2376, !424, i64 16}
!2400 = distinct !DISubprogram(name: "ks_getuntil", scope: !3, file: !3, line: 46, type: !2401, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2404)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!31, !66, !31, !2403, !2041}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DILocalVariable(name: "ks", arg: 1, scope: !2400, file: !3, line: 46, type: !66)
!2406 = !DILocalVariable(name: "delimiter", arg: 2, scope: !2400, file: !3, line: 46, type: !31)
!2407 = !DILocalVariable(name: "str", arg: 3, scope: !2400, file: !3, line: 46, type: !2403)
!2408 = !DILocalVariable(name: "dret", arg: 4, scope: !2400, file: !3, line: 46, type: !2041)
!2409 = !DILocation(line: 46, column: 1, scope: !2400)
!2410 = distinct !DISubprogram(name: "ks_getuntil2", scope: !3, file: !3, line: 46, type: !2411, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!31, !66, !31, !2403, !2041, !31}
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2414 = !DILocalVariable(name: "ks", arg: 1, scope: !2410, file: !3, line: 46, type: !66)
!2415 = !DILocalVariable(name: "delimiter", arg: 2, scope: !2410, file: !3, line: 46, type: !31)
!2416 = !DILocalVariable(name: "str", arg: 3, scope: !2410, file: !3, line: 46, type: !2403)
!2417 = !DILocalVariable(name: "dret", arg: 4, scope: !2410, file: !3, line: 46, type: !2041)
!2418 = !DILocalVariable(name: "append", arg: 5, scope: !2410, file: !3, line: 46, type: !31)
!2419 = !DILocalVariable(name: "gotany", scope: !2410, file: !3, line: 46, type: !31)
!2420 = !DILocalVariable(name: "seek_pos", scope: !2410, file: !3, line: 46, type: !42)
!2421 = !DILocalVariable(name: "i", scope: !2422, file: !3, line: 46, type: !31)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 46, column: 1)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 46, column: 1)
!2424 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 46, column: 1)
!2425 = !DILocation(line: 46, column: 1, scope: !2410)
!2426 = !DILocation(line: 46, column: 1, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 46, column: 1)
!2428 = !{!423, !424, i64 0}
!2429 = !DILocation(line: 46, column: 1, scope: !2422)
!2430 = !DILocation(line: 46, column: 1, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 46, column: 1)
!2432 = !DILocation(line: 46, column: 1, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 46, column: 1)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 46, column: 1)
!2435 = !DILocation(line: 46, column: 1, scope: !2434)
!2436 = !DILocation(line: 46, column: 1, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 46, column: 1)
!2438 = !DILocation(line: 46, column: 1, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 46, column: 1)
!2440 = !DILocation(line: 46, column: 1, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 46, column: 1)
!2442 = !DILocation(line: 46, column: 1, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 46, column: 1)
!2444 = !DILocation(line: 46, column: 1, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 46, column: 1)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 46, column: 1)
!2447 = !DILocation(line: 46, column: 1, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 46, column: 1)
!2449 = !DILocation(line: 46, column: 1, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 46, column: 1)
!2451 = distinct !{!2451, !2444, !2444, !337}
!2452 = !DILocation(line: 46, column: 1, scope: !2446)
!2453 = !DILocation(line: 46, column: 1, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 46, column: 1)
!2455 = !DILocation(line: 46, column: 1, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 46, column: 1)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 46, column: 1)
!2458 = !DILocation(line: 46, column: 1, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 46, column: 1)
!2460 = !DILocation(line: 46, column: 1, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 46, column: 1)
!2462 = distinct !{!2462, !2455, !2455, !337}
!2463 = !DILocation(line: 46, column: 1, scope: !2457)
!2464 = !DILocation(line: 46, column: 1, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 46, column: 1)
!2466 = !DILocation(line: 46, column: 1, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 46, column: 1)
!2468 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 46, column: 1)
!2469 = !DILocation(line: 46, column: 1, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 46, column: 1)
!2471 = !DILocation(line: 46, column: 1, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 46, column: 1)
!2473 = distinct !{!2473, !2466, !2466, !337}
!2474 = !DILocation(line: 46, column: 1, scope: !2468)
!2475 = !DILocation(line: 46, column: 1, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 46, column: 1)
!2477 = !DILocation(line: 46, column: 1, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 46, column: 1)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 46, column: 1)
!2480 = !DILocation(line: 46, column: 1, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 46, column: 1)
!2482 = !DILocation(line: 46, column: 1, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 46, column: 1)
!2484 = distinct !{!2484, !2477, !2477, !337}
!2485 = !DILocation(line: 46, column: 1, scope: !2479)
!2486 = !DILocation(line: 46, column: 1, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 46, column: 1)
!2488 = !{!423, !402, i64 16}
!2489 = !DILocation(line: 46, column: 1, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 46, column: 1)
!2491 = !DILocation(line: 46, column: 1, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 46, column: 1)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 46, column: 1)
!2494 = !DILocation(line: 46, column: 1, scope: !2493)
!2495 = !DILocation(line: 46, column: 1, scope: !2423)
!2496 = distinct !{!2496, !2497, !2497}
!2497 = !DILocation(line: 46, column: 1, scope: !2424)
!2498 = !DILocation(line: 46, column: 1, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 46, column: 1)
!2500 = !DILocation(line: 46, column: 1, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 46, column: 1)
!2502 = !DILocation(line: 46, column: 1, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 46, column: 1)
!2504 = !{!423, !424, i64 8}
!2505 = !DILocation(line: 46, column: 1, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 46, column: 1)
!2507 = !DISubprogram(name: "realloc", scope: !360, file: !360, line: 551, type: !2508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!32, !32, !57}
!2510 = !DISubprogram(name: "gzread", scope: !77, file: !77, line: 1377, type: !2511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!31, !76, !32, !6}
!2513 = !DISubprogram(name: "__ctype_b_loc", scope: !13, file: !13, line: 79, type: !2514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!2519 = distinct !DISubprogram(name: "ks_expand", scope: !53, file: !53, line: 163, type: !2520, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!31, !2403, !57}
!2522 = !{!2523, !2524, !2525}
!2523 = !DILocalVariable(name: "s", arg: 1, scope: !2519, file: !53, line: 163, type: !2403)
!2524 = !DILocalVariable(name: "expansion", arg: 2, scope: !2519, file: !53, line: 163, type: !57)
!2525 = !DILocalVariable(name: "new_size", scope: !2519, file: !53, line: 165, type: !57)
!2526 = !DILocation(line: 163, column: 40, scope: !2519)
!2527 = !DILocation(line: 163, column: 50, scope: !2519)
!2528 = !DILocation(line: 165, column: 5, scope: !2519)
!2529 = !DILocation(line: 165, column: 12, scope: !2519)
!2530 = !DILocation(line: 165, column: 23, scope: !2519)
!2531 = !DILocation(line: 165, column: 26, scope: !2519)
!2532 = !DILocation(line: 165, column: 30, scope: !2519)
!2533 = !DILocation(line: 165, column: 28, scope: !2519)
!2534 = !DILocation(line: 167, column: 9, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2519, file: !53, line: 167, column: 9)
!2536 = !DILocation(line: 167, column: 20, scope: !2535)
!2537 = !DILocation(line: 167, column: 23, scope: !2535)
!2538 = !DILocation(line: 167, column: 18, scope: !2535)
!2539 = !DILocation(line: 167, column: 9, scope: !2519)
!2540 = !DILocation(line: 168, column: 9, scope: !2535)
!2541 = !DILocation(line: 169, column: 22, scope: !2519)
!2542 = !DILocation(line: 169, column: 25, scope: !2519)
!2543 = !DILocation(line: 169, column: 12, scope: !2519)
!2544 = !DILocation(line: 169, column: 5, scope: !2519)
!2545 = !DILocation(line: 170, column: 1, scope: !2519)
!2546 = distinct !DISubprogram(name: "ks_resize", scope: !53, file: !53, line: 148, type: !2520, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2547)
!2547 = !{!2548, !2549, !2550}
!2548 = !DILocalVariable(name: "s", arg: 1, scope: !2546, file: !53, line: 148, type: !2403)
!2549 = !DILocalVariable(name: "size", arg: 2, scope: !2546, file: !53, line: 148, type: !57)
!2550 = !DILocalVariable(name: "tmp", scope: !2551, file: !53, line: 151, type: !33)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !53, line: 150, column: 19)
!2552 = distinct !DILexicalBlock(scope: !2546, file: !53, line: 150, column: 6)
!2553 = !DILocation(line: 148, column: 40, scope: !2546)
!2554 = !DILocation(line: 148, column: 50, scope: !2546)
!2555 = !DILocation(line: 150, column: 6, scope: !2552)
!2556 = !DILocation(line: 150, column: 9, scope: !2552)
!2557 = !DILocation(line: 150, column: 13, scope: !2552)
!2558 = !DILocation(line: 150, column: 11, scope: !2552)
!2559 = !DILocation(line: 150, column: 6, scope: !2546)
!2560 = !DILocation(line: 151, column: 6, scope: !2551)
!2561 = !DILocation(line: 151, column: 12, scope: !2551)
!2562 = !DILocation(line: 152, column: 14, scope: !2551)
!2563 = !DILocation(line: 152, column: 19, scope: !2551)
!2564 = !DILocation(line: 152, column: 13, scope: !2551)
!2565 = !DILocation(line: 152, column: 38, scope: !2551)
!2566 = !DILocation(line: 152, column: 45, scope: !2551)
!2567 = !DILocation(line: 152, column: 53, scope: !2551)
!2568 = !DILocation(line: 152, column: 58, scope: !2551)
!2569 = !DILocation(line: 152, column: 50, scope: !2551)
!2570 = !DILocation(line: 152, column: 11, scope: !2551)
!2571 = !DILocation(line: 153, column: 27, scope: !2551)
!2572 = !DILocation(line: 153, column: 30, scope: !2551)
!2573 = !DILocation(line: 153, column: 33, scope: !2551)
!2574 = !DILocation(line: 153, column: 19, scope: !2551)
!2575 = !DILocation(line: 153, column: 10, scope: !2551)
!2576 = !DILocation(line: 154, column: 11, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2551, file: !53, line: 154, column: 10)
!2578 = !DILocation(line: 154, column: 10, scope: !2551)
!2579 = !DILocation(line: 155, column: 10, scope: !2577)
!2580 = !DILocation(line: 156, column: 13, scope: !2551)
!2581 = !DILocation(line: 156, column: 6, scope: !2551)
!2582 = !DILocation(line: 156, column: 9, scope: !2551)
!2583 = !DILocation(line: 156, column: 11, scope: !2551)
!2584 = !DILocation(line: 157, column: 13, scope: !2551)
!2585 = !DILocation(line: 157, column: 6, scope: !2551)
!2586 = !DILocation(line: 157, column: 9, scope: !2551)
!2587 = !DILocation(line: 157, column: 11, scope: !2551)
!2588 = !DILocation(line: 158, column: 2, scope: !2552)
!2589 = !DILocation(line: 158, column: 2, scope: !2551)
!2590 = !DILocation(line: 159, column: 2, scope: !2546)
!2591 = !DILocation(line: 160, column: 1, scope: !2546)
!2592 = distinct !DISubprogram(name: "ks_destroy", scope: !3, file: !3, line: 46, type: !2593, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !66}
!2595 = !{!2596}
!2596 = !DILocalVariable(name: "ks", arg: 1, scope: !2592, file: !3, line: 46, type: !66)
!2597 = !DILocation(line: 46, column: 1, scope: !2592)
!2598 = !DILocation(line: 46, column: 1, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 46, column: 1)
!2600 = !DISubprogram(name: "strtol", scope: !360, file: !360, line: 177, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!88, !1119, !2603, !31}
!2603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!2604 = !DISubprogram(name: "strtod", scope: !360, file: !360, line: 118, type: !2605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!46, !1119, !2603}
