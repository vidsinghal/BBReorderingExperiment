; ModuleID = 'samples/763.bc'
source_filename = "bamshuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.elem_t = type { i32, ptr }
%struct.bam1_t = type { %struct.bam1_core_t, i64, ptr, i32, i32, i32 }
%struct.bam1_core_t = type { i64, i32, i16, i8, i8, i16, i16, i32, i32, i32, i64, i64 }
%struct.ks_isort_stack_t = type { ptr, ptr, i32 }
%struct.sam_global_args = type { %struct.htsFormat, %struct.htsFormat, ptr, i32, i32 }
%struct.htsFormat = type { i32, i32, %struct.anon, i32, i16, ptr }
%struct.anon = type { i16, i16 }
%struct.htsThreadPool = type { ptr, i32 }
%struct.bam_list_t = type { ptr, ptr, i64, i64 }
%struct.bam_item_t = type { i32, ptr }
%struct.kh_bam_store_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.store_item_t = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"collate\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"/tmp/collate%x\00", align 1, !dbg !7
@main_bamshuf.lopts = internal constant [10 x %struct.option] [%struct.option { ptr @.str.2, i32 1, ptr null, i32 63 }, %struct.option { ptr @.str.3, i32 1, ptr null, i32 129 }, %struct.option { ptr @.str.4, i32 1, ptr null, i32 130 }, %struct.option { ptr @.str.5, i32 1, ptr null, i32 131 }, %struct.option { ptr @.str.6, i32 1, ptr null, i32 132 }, %struct.option { ptr @.str.7, i32 1, ptr null, i32 64 }, %struct.option { ptr @.str.8, i32 0, ptr null, i32 134 }, %struct.option { ptr @.str.9, i32 1, ptr null, i32 135 }, %struct.option { ptr @.str.10, i32 0, ptr null, i32 1 }, %struct.option zeroinitializer], align 16, !dbg !12
@.str.2 = private unnamed_addr constant [10 x i8] c"input-fmt\00", align 1, !dbg !287
@.str.3 = private unnamed_addr constant [17 x i8] c"input-fmt-option\00", align 1, !dbg !292
@.str.4 = private unnamed_addr constant [11 x i8] c"output-fmt\00", align 1, !dbg !297
@.str.5 = private unnamed_addr constant [18 x i8] c"output-fmt-option\00", align 1, !dbg !302
@.str.6 = private unnamed_addr constant [10 x i8] c"reference\00", align 1, !dbg !307
@.str.7 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !309
@.str.8 = private unnamed_addr constant [12 x i8] c"write-index\00", align 1, !dbg !311
@.str.9 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1, !dbg !316
@.str.10 = private unnamed_addr constant [6 x i8] c"no-PG\00", align 1, !dbg !318
@.str.11 = private unnamed_addr constant [14 x i8] c"n:l:uOo:@:fr:\00", align 1, !dbg !323
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@optind = external global i32, align 4
@.str.12 = private unnamed_addr constant [53 x i8] c"collate: -o and -O options cannot be used together.\0A\00", align 1, !dbg !328
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to create arg_list\00", align 1, !dbg !333
@.str.14 = private unnamed_addr constant [441 x i8] c"Usage: samtools collate [-Ou] [-o <name>] [-n nFiles] [-l cLevel] <in.bam> [<prefix>]\0A\0AOptions:\0A      -O       output to stdout\0A      -o       output file name (use prefix if not set)\0A      -u       uncompressed BAM output\0A      -f       fast (only primary alignments)\0A      -r       working reads stored (with -f) [%d]\0A      -l INT   compression level [%d]\0A      -n INT   number of temporary files [%d]\0A      --no-PG  do not add a PG line\0A\00", align 1, !dbg !338
@.str.15 = private unnamed_addr constant [9 x i8] c"-....@-.\00", align 1, !dbg !343
@.str.16 = private unnamed_addr constant [62 x i8] c"  <prefix> is required unless the -o or -O options are used.\0A\00", align 1, !dbg !348
@.str.17 = private unnamed_addr constant [28 x i8] c"Error creating thread pool\0A\00", align 1, !dbg !353
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !358
@.str.19 = private unnamed_addr constant [28 x i8] c"Cannot open input file \22%s\22\00", align 1, !dbg !363
@.str.20 = private unnamed_addr constant [31 x i8] c"Couldn't read header for '%s'\0A\00", align 1, !dbg !365
@.str.21 = private unnamed_addr constant [3 x i8] c"HD\00", align 1, !dbg !370
@.str.22 = private unnamed_addr constant [3 x i8] c"SO\00", align 1, !dbg !375
@.str.23 = private unnamed_addr constant [9 x i8] c"unsorted\00", align 1, !dbg !377
@.str.24 = private unnamed_addr constant [3 x i8] c"GO\00", align 1, !dbg !379
@.str.25 = private unnamed_addr constant [6 x i8] c"query\00", align 1, !dbg !381
@.str.26 = private unnamed_addr constant [3 x i8] c"VN\00", align 1, !dbg !383
@.str.27 = private unnamed_addr constant [4 x i8] c"1.6\00", align 1, !dbg !385
@.str.28 = private unnamed_addr constant [26 x i8] c"failed to update HD line\0A\00", align 1, !dbg !390
@.str.29 = private unnamed_addr constant [5 x i8] c"wb%d\00", align 1, !dbg !392
@.str.30 = private unnamed_addr constant [7 x i8] c"%s.bam\00", align 1, !dbg !397
@.str.31 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1, !dbg !402
@.str.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !404
@.str.33 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !406
@.str.34 = private unnamed_addr constant [28 x i8] c"Cannot open standard output\00", align 1, !dbg !408
@.str.35 = private unnamed_addr constant [33 x i8] c"Cannot open output file \22%s.bam\22\00", align 1, !dbg !410
@.str.36 = private unnamed_addr constant [9 x i8] c"samtools\00", align 1, !dbg !415
@.str.37 = private unnamed_addr constant [3 x i8] c"CL\00", align 1, !dbg !417
@.str.38 = private unnamed_addr constant [40 x i8] c"failed to add PG line to header of \22%s\22\00", align 1, !dbg !419
@.str.39 = private unnamed_addr constant [22 x i8] c"Couldn't write header\00", align 1, !dbg !424
@.str.40 = private unnamed_addr constant [12 x i8] c"%s.%04d.bam\00", align 1, !dbg !429
@.str.41 = private unnamed_addr constant [5 x i8] c"wxb1\00", align 1, !dbg !431
@.str.42 = private unnamed_addr constant [35 x i8] c"Cannot open intermediate file \22%s\22\00", align 1, !dbg !433
@.str.43 = private unnamed_addr constant [48 x i8] c"Couldn't write header to intermediate file \22%s\22\00", align 1, !dbg !438
@.str.44 = private unnamed_addr constant [45 x i8] c"[collate[ ERROR: unable to create bam list.\0A\00", align 1, !dbg !443
@.str.45 = private unnamed_addr constant [40 x i8] c"[collate] ERROR: could not write line.\0A\00", align 1, !dbg !448
@.str.46 = private unnamed_addr constant [44 x i8] c"[collate] ERROR: stored value not in hash.\0A\00", align 1, !dbg !450
@.str.47 = private unnamed_addr constant [41 x i8] c"[collate] ERROR: value already in hash.\0A\00", align 1, !dbg !455
@.str.48 = private unnamed_addr constant [43 x i8] c"[collate] ERROR: unable to store in hash.\0A\00", align 1, !dbg !460
@.str.49 = private unnamed_addr constant [48 x i8] c"[collate] ERROR: could not write r1 alignment.\0A\00", align 1, !dbg !465
@.str.50 = private unnamed_addr constant [48 x i8] c"[collate] ERROR: could not write r2 alignment.\0A\00", align 1, !dbg !467
@.str.51 = private unnamed_addr constant [26 x i8] c"Error reading input file\0A\00", align 1, !dbg !469
@.str.52 = private unnamed_addr constant [23 x i8] c"Error on closing '%s'\0A\00", align 1, !dbg !471
@.str.53 = private unnamed_addr constant [19 x i8] c"Couldn't open \22%s\22\00", align 1, !dbg !476
@.str.54 = private unnamed_addr constant [20 x i8] c"Error reading '%s'\0A\00", align 1, !dbg !481
@.str.55 = private unnamed_addr constant [24 x i8] c"Error writing to output\00", align 1, !dbg !486
@.str.56 = private unnamed_addr constant [25 x i8] c"Error on closing output\0A\00", align 1, !dbg !491
@.str.57 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1, !dbg !496
@.str.58 = private unnamed_addr constant [41 x i8] c"Couldn't write to intermediate file \22%s\22\00", align 1, !dbg !502

; Function Attrs: nounwind uwtable
define dso_local i32 @ks_mergesort_bamshuf(i64 noundef %n, ptr noundef %array, ptr noundef %temp) #0 !dbg !547 {
entry:
  %n.addr = alloca i64, align 8
  %array.addr = alloca ptr, align 8
  %temp.addr = alloca ptr, align 8
  %a2 = alloca [2 x ptr], align 16
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %curr = alloca i32, align 4
  %shift = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca ptr, align 8
  %eb = alloca ptr, align 8
  %i26 = alloca i64, align 8
  %step = alloca i64, align 8
  %p32 = alloca ptr, align 8
  %j = alloca ptr, align 8
  %k = alloca ptr, align 8
  %ea = alloca ptr, align 8
  %eb33 = alloca ptr, align 8
  %p88 = alloca ptr, align 8
  %i90 = alloca ptr, align 8
  %eb92 = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !551, metadata !DIExpression()), !dbg !588
  store ptr %array, ptr %array.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !552, metadata !DIExpression()), !dbg !588
  store ptr %temp, ptr %temp.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !553, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 16, ptr %a2) #14, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %a2, metadata !554, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #14, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !556, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #14, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !557, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr) #14, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %curr, metadata !558, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #14, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %shift, metadata !559, metadata !DIExpression()), !dbg !588
  %0 = load ptr, ptr %array.addr, align 8, !dbg !588, !tbaa !589
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 0, !dbg !588
  store ptr %0, ptr %arrayidx, align 16, !dbg !588, !tbaa !589
  %1 = load ptr, ptr %temp.addr, align 8, !dbg !588, !tbaa !589
  %tobool = icmp ne ptr %1, null, !dbg !588
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !588

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %temp.addr, align 8, !dbg !588, !tbaa !589
  br label %cond.end, !dbg !588

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8, !dbg !588, !tbaa !584
  %mul = mul i64 16, %3, !dbg !588
  %call = call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !588
  br label %cond.end, !dbg !588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %call, %cond.false ], !dbg !588
  %arrayidx1 = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 1, !dbg !588
  store ptr %cond, ptr %arrayidx1, align 8, !dbg !588, !tbaa !589
  store i32 0, ptr %curr, align 4, !dbg !591, !tbaa !592
  store i32 0, ptr %shift, align 4, !dbg !591, !tbaa !592
  br label %for.cond, !dbg !591

for.cond:                                         ; preds = %for.inc84, %cond.end
  %4 = load i32, ptr %shift, align 4, !dbg !594, !tbaa !592
  %sh_prom = zext i32 %4 to i64, !dbg !594
  %shl = shl i64 1, %sh_prom, !dbg !594
  %5 = load i64, ptr %n.addr, align 8, !dbg !594, !tbaa !584
  %cmp = icmp ult i64 %shl, %5, !dbg !594
  br i1 %cmp, label %for.body, label %for.end85, !dbg !591

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %curr, align 4, !dbg !595, !tbaa !592
  %idxprom = sext i32 %6 to i64, !dbg !595
  %arrayidx2 = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 %idxprom, !dbg !595
  %7 = load ptr, ptr %arrayidx2, align 8, !dbg !595, !tbaa !589
  store ptr %7, ptr %a, align 8, !dbg !595, !tbaa !589
  %8 = load i32, ptr %curr, align 4, !dbg !595, !tbaa !592
  %sub = sub nsw i32 1, %8, !dbg !595
  %idxprom3 = sext i32 %sub to i64, !dbg !595
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 %idxprom3, !dbg !595
  %9 = load ptr, ptr %arrayidx4, align 8, !dbg !595, !tbaa !589
  store ptr %9, ptr %b, align 8, !dbg !595, !tbaa !589
  %10 = load i32, ptr %shift, align 4, !dbg !596, !tbaa !592
  %cmp5 = icmp eq i32 %10, 0, !dbg !596
  br i1 %cmp5, label %if.then, label %if.else25, !dbg !595

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !597
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !560, metadata !DIExpression()), !dbg !597
  %11 = load ptr, ptr %b, align 8, !dbg !597, !tbaa !589
  store ptr %11, ptr %p, align 8, !dbg !597, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !597
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !566, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 8, ptr %eb) #14, !dbg !597
  tail call void @llvm.dbg.declare(metadata ptr %eb, metadata !567, metadata !DIExpression()), !dbg !597
  %12 = load ptr, ptr %a, align 8, !dbg !597, !tbaa !589
  %13 = load i64, ptr %n.addr, align 8, !dbg !597, !tbaa !584
  %add.ptr = getelementptr inbounds %struct.elem_t, ptr %12, i64 %13, !dbg !597
  store ptr %add.ptr, ptr %eb, align 8, !dbg !597, !tbaa !589
  %14 = load ptr, ptr %a, align 8, !dbg !598, !tbaa !589
  store ptr %14, ptr %i, align 8, !dbg !598, !tbaa !589
  br label %for.cond6, !dbg !598

for.cond6:                                        ; preds = %for.inc, %if.then
  %15 = load ptr, ptr %i, align 8, !dbg !600, !tbaa !589
  %16 = load ptr, ptr %eb, align 8, !dbg !600, !tbaa !589
  %cmp7 = icmp ult ptr %15, %16, !dbg !600
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !598

for.body8:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %i, align 8, !dbg !602, !tbaa !589
  %18 = load ptr, ptr %eb, align 8, !dbg !602, !tbaa !589
  %add.ptr9 = getelementptr inbounds %struct.elem_t, ptr %18, i64 -1, !dbg !602
  %cmp10 = icmp eq ptr %17, %add.ptr9, !dbg !602
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !605

if.then11:                                        ; preds = %for.body8
  %19 = load ptr, ptr %p, align 8, !dbg !602, !tbaa !589
  %incdec.ptr = getelementptr inbounds %struct.elem_t, ptr %19, i32 1, !dbg !602
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !602, !tbaa !589
  %20 = load ptr, ptr %i, align 8, !dbg !602, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 16, i1 false), !dbg !602, !tbaa.struct !606
  br label %if.end23, !dbg !602

if.else:                                          ; preds = %for.body8
  %21 = load ptr, ptr %i, align 8, !dbg !607, !tbaa !589
  %add.ptr12 = getelementptr inbounds %struct.elem_t, ptr %21, i64 1, !dbg !607
  %22 = load ptr, ptr %i, align 8, !dbg !607, !tbaa !589
  %23 = getelementptr inbounds { i32, ptr }, ptr %add.ptr12, i32 0, i32 0, !dbg !607
  %24 = load i32, ptr %23, align 8, !dbg !607
  %25 = getelementptr inbounds { i32, ptr }, ptr %add.ptr12, i32 0, i32 1, !dbg !607
  %26 = load ptr, ptr %25, align 8, !dbg !607
  %27 = getelementptr inbounds { i32, ptr }, ptr %22, i32 0, i32 0, !dbg !607
  %28 = load i32, ptr %27, align 8, !dbg !607
  %29 = getelementptr inbounds { i32, ptr }, ptr %22, i32 0, i32 1, !dbg !607
  %30 = load ptr, ptr %29, align 8, !dbg !607
  %call13 = call i32 @elem_lt(i32 %24, ptr %26, i32 %28, ptr %30), !dbg !607
  %tobool14 = icmp ne i32 %call13, 0, !dbg !607
  br i1 %tobool14, label %if.then15, label %if.else19, !dbg !610

if.then15:                                        ; preds = %if.else
  %31 = load ptr, ptr %p, align 8, !dbg !611, !tbaa !589
  %incdec.ptr16 = getelementptr inbounds %struct.elem_t, ptr %31, i32 1, !dbg !611
  store ptr %incdec.ptr16, ptr %p, align 8, !dbg !611, !tbaa !589
  %32 = load ptr, ptr %i, align 8, !dbg !611, !tbaa !589
  %add.ptr17 = getelementptr inbounds %struct.elem_t, ptr %32, i64 1, !dbg !611
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %add.ptr17, i64 16, i1 false), !dbg !611, !tbaa.struct !606
  %33 = load ptr, ptr %p, align 8, !dbg !611, !tbaa !589
  %incdec.ptr18 = getelementptr inbounds %struct.elem_t, ptr %33, i32 1, !dbg !611
  store ptr %incdec.ptr18, ptr %p, align 8, !dbg !611, !tbaa !589
  %34 = load ptr, ptr %i, align 8, !dbg !611, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 16, i1 false), !dbg !611, !tbaa.struct !606
  br label %if.end, !dbg !611

if.else19:                                        ; preds = %if.else
  %35 = load ptr, ptr %p, align 8, !dbg !613, !tbaa !589
  %incdec.ptr20 = getelementptr inbounds %struct.elem_t, ptr %35, i32 1, !dbg !613
  store ptr %incdec.ptr20, ptr %p, align 8, !dbg !613, !tbaa !589
  %36 = load ptr, ptr %i, align 8, !dbg !613, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %36, i64 16, i1 false), !dbg !613, !tbaa.struct !606
  %37 = load ptr, ptr %p, align 8, !dbg !613, !tbaa !589
  %incdec.ptr21 = getelementptr inbounds %struct.elem_t, ptr %37, i32 1, !dbg !613
  store ptr %incdec.ptr21, ptr %p, align 8, !dbg !613, !tbaa !589
  %38 = load ptr, ptr %i, align 8, !dbg !613, !tbaa !589
  %add.ptr22 = getelementptr inbounds %struct.elem_t, ptr %38, i64 1, !dbg !613
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %add.ptr22, i64 16, i1 false), !dbg !613, !tbaa.struct !606
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then15
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then11
  br label %for.inc, !dbg !605

for.inc:                                          ; preds = %if.end23
  %39 = load ptr, ptr %i, align 8, !dbg !600, !tbaa !589
  %add.ptr24 = getelementptr inbounds %struct.elem_t, ptr %39, i64 2, !dbg !600
  store ptr %add.ptr24, ptr %i, align 8, !dbg !600, !tbaa !589
  br label %for.cond6, !dbg !600, !llvm.loop !615

for.end:                                          ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 8, ptr %eb) #14, !dbg !596
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !596
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !596
  br label %if.end82, !dbg !597

if.else25:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i26) #14, !dbg !617
  tail call void @llvm.dbg.declare(metadata ptr %i26, metadata !568, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 8, ptr %step) #14, !dbg !617
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !570, metadata !DIExpression()), !dbg !617
  %40 = load i32, ptr %shift, align 4, !dbg !617, !tbaa !592
  %sh_prom27 = zext i32 %40 to i64, !dbg !617
  %shl28 = shl i64 1, %sh_prom27, !dbg !617
  store i64 %shl28, ptr %step, align 8, !dbg !617, !tbaa !584
  store i64 0, ptr %i26, align 8, !dbg !618, !tbaa !584
  br label %for.cond29, !dbg !618

for.cond29:                                       ; preds = %for.inc78, %if.else25
  %41 = load i64, ptr %i26, align 8, !dbg !619, !tbaa !584
  %42 = load i64, ptr %n.addr, align 8, !dbg !619, !tbaa !584
  %cmp30 = icmp ult i64 %41, %42, !dbg !619
  br i1 %cmp30, label %for.body31, label %for.end81, !dbg !618

for.body31:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %p32) #14, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %p32, metadata !571, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #14, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !575, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #14, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !576, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 8, ptr %ea) #14, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %ea, metadata !577, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 8, ptr %eb33) #14, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %eb33, metadata !578, metadata !DIExpression()), !dbg !620
  %43 = load i64, ptr %n.addr, align 8, !dbg !621, !tbaa !584
  %44 = load i64, ptr %i26, align 8, !dbg !621, !tbaa !584
  %45 = load i64, ptr %step, align 8, !dbg !621, !tbaa !584
  %add = add i64 %44, %45, !dbg !621
  %cmp34 = icmp ult i64 %43, %add, !dbg !621
  br i1 %cmp34, label %if.then35, label %if.else37, !dbg !620

if.then35:                                        ; preds = %for.body31
  %46 = load ptr, ptr %a, align 8, !dbg !623, !tbaa !589
  %47 = load i64, ptr %n.addr, align 8, !dbg !623, !tbaa !584
  %add.ptr36 = getelementptr inbounds %struct.elem_t, ptr %46, i64 %47, !dbg !623
  store ptr %add.ptr36, ptr %ea, align 8, !dbg !623, !tbaa !589
  %48 = load ptr, ptr %a, align 8, !dbg !623, !tbaa !589
  store ptr %48, ptr %eb33, align 8, !dbg !623, !tbaa !589
  br label %if.end50, !dbg !623

if.else37:                                        ; preds = %for.body31
  %49 = load ptr, ptr %a, align 8, !dbg !625, !tbaa !589
  %50 = load i64, ptr %i26, align 8, !dbg !625, !tbaa !584
  %add.ptr38 = getelementptr inbounds %struct.elem_t, ptr %49, i64 %50, !dbg !625
  %51 = load i64, ptr %step, align 8, !dbg !625, !tbaa !584
  %add.ptr39 = getelementptr inbounds %struct.elem_t, ptr %add.ptr38, i64 %51, !dbg !625
  store ptr %add.ptr39, ptr %ea, align 8, !dbg !625, !tbaa !589
  %52 = load ptr, ptr %a, align 8, !dbg !625, !tbaa !589
  %53 = load i64, ptr %n.addr, align 8, !dbg !625, !tbaa !584
  %54 = load i64, ptr %i26, align 8, !dbg !625, !tbaa !584
  %55 = load i64, ptr %step, align 8, !dbg !625, !tbaa !584
  %shl40 = shl i64 %55, 1, !dbg !625
  %add41 = add i64 %54, %shl40, !dbg !625
  %cmp42 = icmp ult i64 %53, %add41, !dbg !625
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !625

cond.true43:                                      ; preds = %if.else37
  %56 = load i64, ptr %n.addr, align 8, !dbg !625, !tbaa !584
  br label %cond.end47, !dbg !625

cond.false44:                                     ; preds = %if.else37
  %57 = load i64, ptr %i26, align 8, !dbg !625, !tbaa !584
  %58 = load i64, ptr %step, align 8, !dbg !625, !tbaa !584
  %shl45 = shl i64 %58, 1, !dbg !625
  %add46 = add i64 %57, %shl45, !dbg !625
  br label %cond.end47, !dbg !625

cond.end47:                                       ; preds = %cond.false44, %cond.true43
  %cond48 = phi i64 [ %56, %cond.true43 ], [ %add46, %cond.false44 ], !dbg !625
  %add.ptr49 = getelementptr inbounds %struct.elem_t, ptr %52, i64 %cond48, !dbg !625
  store ptr %add.ptr49, ptr %eb33, align 8, !dbg !625, !tbaa !589
  br label %if.end50

if.end50:                                         ; preds = %cond.end47, %if.then35
  %59 = load ptr, ptr %a, align 8, !dbg !620, !tbaa !589
  %60 = load i64, ptr %i26, align 8, !dbg !620, !tbaa !584
  %add.ptr51 = getelementptr inbounds %struct.elem_t, ptr %59, i64 %60, !dbg !620
  store ptr %add.ptr51, ptr %j, align 8, !dbg !620, !tbaa !589
  %61 = load ptr, ptr %a, align 8, !dbg !620, !tbaa !589
  %62 = load i64, ptr %i26, align 8, !dbg !620, !tbaa !584
  %add.ptr52 = getelementptr inbounds %struct.elem_t, ptr %61, i64 %62, !dbg !620
  %63 = load i64, ptr %step, align 8, !dbg !620, !tbaa !584
  %add.ptr53 = getelementptr inbounds %struct.elem_t, ptr %add.ptr52, i64 %63, !dbg !620
  store ptr %add.ptr53, ptr %k, align 8, !dbg !620, !tbaa !589
  %64 = load ptr, ptr %b, align 8, !dbg !620, !tbaa !589
  %65 = load i64, ptr %i26, align 8, !dbg !620, !tbaa !584
  %add.ptr54 = getelementptr inbounds %struct.elem_t, ptr %64, i64 %65, !dbg !620
  store ptr %add.ptr54, ptr %p32, align 8, !dbg !620, !tbaa !589
  br label %while.cond, !dbg !620

while.cond:                                       ; preds = %if.end65, %if.end50
  %66 = load ptr, ptr %j, align 8, !dbg !620, !tbaa !589
  %67 = load ptr, ptr %ea, align 8, !dbg !620, !tbaa !589
  %cmp55 = icmp ult ptr %66, %67, !dbg !620
  br i1 %cmp55, label %land.rhs, label %land.end, !dbg !620

land.rhs:                                         ; preds = %while.cond
  %68 = load ptr, ptr %k, align 8, !dbg !620, !tbaa !589
  %69 = load ptr, ptr %eb33, align 8, !dbg !620, !tbaa !589
  %cmp56 = icmp ult ptr %68, %69, !dbg !620
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %70 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ], !dbg !627
  br i1 %70, label %while.body, label %while.end, !dbg !620

while.body:                                       ; preds = %land.end
  %71 = load ptr, ptr %k, align 8, !dbg !628, !tbaa !589
  %72 = load ptr, ptr %j, align 8, !dbg !628, !tbaa !589
  %73 = getelementptr inbounds { i32, ptr }, ptr %71, i32 0, i32 0, !dbg !628
  %74 = load i32, ptr %73, align 8, !dbg !628
  %75 = getelementptr inbounds { i32, ptr }, ptr %71, i32 0, i32 1, !dbg !628
  %76 = load ptr, ptr %75, align 8, !dbg !628
  %77 = getelementptr inbounds { i32, ptr }, ptr %72, i32 0, i32 0, !dbg !628
  %78 = load i32, ptr %77, align 8, !dbg !628
  %79 = getelementptr inbounds { i32, ptr }, ptr %72, i32 0, i32 1, !dbg !628
  %80 = load ptr, ptr %79, align 8, !dbg !628
  %call57 = call i32 @elem_lt(i32 %74, ptr %76, i32 %78, ptr %80), !dbg !628
  %tobool58 = icmp ne i32 %call57, 0, !dbg !628
  br i1 %tobool58, label %if.then59, label %if.else62, !dbg !631

if.then59:                                        ; preds = %while.body
  %81 = load ptr, ptr %p32, align 8, !dbg !628, !tbaa !589
  %incdec.ptr60 = getelementptr inbounds %struct.elem_t, ptr %81, i32 1, !dbg !628
  store ptr %incdec.ptr60, ptr %p32, align 8, !dbg !628, !tbaa !589
  %82 = load ptr, ptr %k, align 8, !dbg !628, !tbaa !589
  %incdec.ptr61 = getelementptr inbounds %struct.elem_t, ptr %82, i32 1, !dbg !628
  store ptr %incdec.ptr61, ptr %k, align 8, !dbg !628, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %81, ptr align 8 %82, i64 16, i1 false), !dbg !628, !tbaa.struct !606
  br label %if.end65, !dbg !628

if.else62:                                        ; preds = %while.body
  %83 = load ptr, ptr %p32, align 8, !dbg !628, !tbaa !589
  %incdec.ptr63 = getelementptr inbounds %struct.elem_t, ptr %83, i32 1, !dbg !628
  store ptr %incdec.ptr63, ptr %p32, align 8, !dbg !628, !tbaa !589
  %84 = load ptr, ptr %j, align 8, !dbg !628, !tbaa !589
  %incdec.ptr64 = getelementptr inbounds %struct.elem_t, ptr %84, i32 1, !dbg !628
  store ptr %incdec.ptr64, ptr %j, align 8, !dbg !628, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %83, ptr align 8 %84, i64 16, i1 false), !dbg !628, !tbaa.struct !606
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then59
  br label %while.cond, !dbg !620, !llvm.loop !632

while.end:                                        ; preds = %land.end
  br label %while.cond66, !dbg !620

while.cond66:                                     ; preds = %while.body68, %while.end
  %85 = load ptr, ptr %j, align 8, !dbg !620, !tbaa !589
  %86 = load ptr, ptr %ea, align 8, !dbg !620, !tbaa !589
  %cmp67 = icmp ult ptr %85, %86, !dbg !620
  br i1 %cmp67, label %while.body68, label %while.end71, !dbg !620

while.body68:                                     ; preds = %while.cond66
  %87 = load ptr, ptr %p32, align 8, !dbg !620, !tbaa !589
  %incdec.ptr69 = getelementptr inbounds %struct.elem_t, ptr %87, i32 1, !dbg !620
  store ptr %incdec.ptr69, ptr %p32, align 8, !dbg !620, !tbaa !589
  %88 = load ptr, ptr %j, align 8, !dbg !620, !tbaa !589
  %incdec.ptr70 = getelementptr inbounds %struct.elem_t, ptr %88, i32 1, !dbg !620
  store ptr %incdec.ptr70, ptr %j, align 8, !dbg !620, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %87, ptr align 8 %88, i64 16, i1 false), !dbg !620, !tbaa.struct !606
  br label %while.cond66, !dbg !620, !llvm.loop !633

while.end71:                                      ; preds = %while.cond66
  br label %while.cond72, !dbg !620

while.cond72:                                     ; preds = %while.body74, %while.end71
  %89 = load ptr, ptr %k, align 8, !dbg !620, !tbaa !589
  %90 = load ptr, ptr %eb33, align 8, !dbg !620, !tbaa !589
  %cmp73 = icmp ult ptr %89, %90, !dbg !620
  br i1 %cmp73, label %while.body74, label %while.end77, !dbg !620

while.body74:                                     ; preds = %while.cond72
  %91 = load ptr, ptr %p32, align 8, !dbg !620, !tbaa !589
  %incdec.ptr75 = getelementptr inbounds %struct.elem_t, ptr %91, i32 1, !dbg !620
  store ptr %incdec.ptr75, ptr %p32, align 8, !dbg !620, !tbaa !589
  %92 = load ptr, ptr %k, align 8, !dbg !620, !tbaa !589
  %incdec.ptr76 = getelementptr inbounds %struct.elem_t, ptr %92, i32 1, !dbg !620
  store ptr %incdec.ptr76, ptr %k, align 8, !dbg !620, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %91, ptr align 8 %92, i64 16, i1 false), !dbg !620, !tbaa.struct !606
  br label %while.cond72, !dbg !620, !llvm.loop !634

while.end77:                                      ; preds = %while.cond72
  call void @llvm.lifetime.end.p0(i64 8, ptr %eb33) #14, !dbg !619
  call void @llvm.lifetime.end.p0(i64 8, ptr %ea) #14, !dbg !619
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #14, !dbg !619
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #14, !dbg !619
  call void @llvm.lifetime.end.p0(i64 8, ptr %p32) #14, !dbg !619
  br label %for.inc78, !dbg !620

for.inc78:                                        ; preds = %while.end77
  %93 = load i64, ptr %step, align 8, !dbg !619, !tbaa !584
  %shl79 = shl i64 %93, 1, !dbg !619
  %94 = load i64, ptr %i26, align 8, !dbg !619, !tbaa !584
  %add80 = add i64 %94, %shl79, !dbg !619
  store i64 %add80, ptr %i26, align 8, !dbg !619, !tbaa !584
  br label %for.cond29, !dbg !619, !llvm.loop !635

for.end81:                                        ; preds = %for.cond29
  call void @llvm.lifetime.end.p0(i64 8, ptr %step) #14, !dbg !596
  call void @llvm.lifetime.end.p0(i64 8, ptr %i26) #14, !dbg !596
  br label %if.end82

if.end82:                                         ; preds = %for.end81, %for.end
  %95 = load i32, ptr %curr, align 4, !dbg !595, !tbaa !592
  %sub83 = sub nsw i32 1, %95, !dbg !595
  store i32 %sub83, ptr %curr, align 4, !dbg !595, !tbaa !592
  br label %for.inc84, !dbg !595

for.inc84:                                        ; preds = %if.end82
  %96 = load i32, ptr %shift, align 4, !dbg !594, !tbaa !592
  %inc = add nsw i32 %96, 1, !dbg !594
  store i32 %inc, ptr %shift, align 4, !dbg !594, !tbaa !592
  br label %for.cond, !dbg !594, !llvm.loop !636

for.end85:                                        ; preds = %for.cond
  %97 = load i32, ptr %curr, align 4, !dbg !637, !tbaa !592
  %cmp86 = icmp eq i32 %97, 1, !dbg !637
  br i1 %cmp86, label %if.then87, label %if.end101, !dbg !588

if.then87:                                        ; preds = %for.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %p88) #14, !dbg !638
  tail call void @llvm.dbg.declare(metadata ptr %p88, metadata !579, metadata !DIExpression()), !dbg !638
  %arrayidx89 = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 0, !dbg !638
  %98 = load ptr, ptr %arrayidx89, align 16, !dbg !638, !tbaa !589
  store ptr %98, ptr %p88, align 8, !dbg !638, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %i90) #14, !dbg !638
  tail call void @llvm.dbg.declare(metadata ptr %i90, metadata !582, metadata !DIExpression()), !dbg !638
  %arrayidx91 = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 1, !dbg !638
  %99 = load ptr, ptr %arrayidx91, align 8, !dbg !638, !tbaa !589
  store ptr %99, ptr %i90, align 8, !dbg !638, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %eb92) #14, !dbg !638
  tail call void @llvm.dbg.declare(metadata ptr %eb92, metadata !583, metadata !DIExpression()), !dbg !638
  %100 = load ptr, ptr %array.addr, align 8, !dbg !638, !tbaa !589
  %101 = load i64, ptr %n.addr, align 8, !dbg !638, !tbaa !584
  %add.ptr93 = getelementptr inbounds %struct.elem_t, ptr %100, i64 %101, !dbg !638
  store ptr %add.ptr93, ptr %eb92, align 8, !dbg !638, !tbaa !589
  br label %for.cond94, !dbg !638

for.cond94:                                       ; preds = %for.inc98, %if.then87
  %102 = load ptr, ptr %p88, align 8, !dbg !639, !tbaa !589
  %103 = load ptr, ptr %eb92, align 8, !dbg !639, !tbaa !589
  %cmp95 = icmp ult ptr %102, %103, !dbg !639
  br i1 %cmp95, label %for.body96, label %for.end100, !dbg !642

for.body96:                                       ; preds = %for.cond94
  %104 = load ptr, ptr %p88, align 8, !dbg !639, !tbaa !589
  %incdec.ptr97 = getelementptr inbounds %struct.elem_t, ptr %104, i32 1, !dbg !639
  store ptr %incdec.ptr97, ptr %p88, align 8, !dbg !639, !tbaa !589
  %105 = load ptr, ptr %i90, align 8, !dbg !639, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %104, ptr align 8 %105, i64 16, i1 false), !dbg !639, !tbaa.struct !606
  br label %for.inc98, !dbg !639

for.inc98:                                        ; preds = %for.body96
  %106 = load ptr, ptr %i90, align 8, !dbg !639, !tbaa !589
  %incdec.ptr99 = getelementptr inbounds %struct.elem_t, ptr %106, i32 1, !dbg !639
  store ptr %incdec.ptr99, ptr %i90, align 8, !dbg !639, !tbaa !589
  br label %for.cond94, !dbg !639, !llvm.loop !643

for.end100:                                       ; preds = %for.cond94
  call void @llvm.lifetime.end.p0(i64 8, ptr %eb92) #14, !dbg !637
  call void @llvm.lifetime.end.p0(i64 8, ptr %i90) #14, !dbg !637
  call void @llvm.lifetime.end.p0(i64 8, ptr %p88) #14, !dbg !637
  br label %if.end101, !dbg !638

if.end101:                                        ; preds = %for.end100, %for.end85
  %107 = load ptr, ptr %temp.addr, align 8, !dbg !644, !tbaa !589
  %cmp102 = icmp eq ptr %107, null, !dbg !644
  br i1 %cmp102, label %if.then103, label %if.end105, !dbg !588

if.then103:                                       ; preds = %if.end101
  %arrayidx104 = getelementptr inbounds [2 x ptr], ptr %a2, i64 0, i64 1, !dbg !644
  %108 = load ptr, ptr %arrayidx104, align 8, !dbg !644, !tbaa !589
  call void @free(ptr noundef %108) #14, !dbg !644
  br label %if.end105, !dbg !644

if.end105:                                        ; preds = %if.then103, %if.end101
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #14, !dbg !588
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr) #14, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #14, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #14, !dbg !588
  call void @llvm.lifetime.end.p0(i64 16, ptr %a2) #14, !dbg !588
  ret i32 0, !dbg !588
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !646 noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @elem_lt(i32 %x.coerce0, ptr %x.coerce1, i32 %y.coerce0, ptr %y.coerce1) #4 !dbg !650 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.elem_t, align 8
  %y = alloca %struct.elem_t, align 8
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i32, ptr }, ptr %x, i32 0, i32 0
  store i32 %x.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i32, ptr }, ptr %x, i32 0, i32 1
  store ptr %x.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { i32, ptr }, ptr %y, i32 0, i32 0
  store i32 %y.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %y, i32 0, i32 1
  store ptr %y.coerce1, ptr %3, align 8
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !654, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !655, metadata !DIExpression()), !dbg !660
  %key = getelementptr inbounds %struct.elem_t, ptr %x, i32 0, i32 0, !dbg !661
  %4 = load i32, ptr %key, align 8, !dbg !661, !tbaa !663
  %key1 = getelementptr inbounds %struct.elem_t, ptr %y, i32 0, i32 0, !dbg !665
  %5 = load i32, ptr %key1, align 8, !dbg !665, !tbaa !663
  %cmp = icmp ult i32 %4, %5, !dbg !666
  br i1 %cmp, label %if.then, label %if.end, !dbg !667

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !668
  br label %return, !dbg !668

if.end:                                           ; preds = %entry
  %key2 = getelementptr inbounds %struct.elem_t, ptr %x, i32 0, i32 0, !dbg !669
  %6 = load i32, ptr %key2, align 8, !dbg !669, !tbaa !663
  %key3 = getelementptr inbounds %struct.elem_t, ptr %y, i32 0, i32 0, !dbg !670
  %7 = load i32, ptr %key3, align 8, !dbg !670, !tbaa !663
  %cmp4 = icmp eq i32 %6, %7, !dbg !671
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !672

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #14, !dbg !673
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !656, metadata !DIExpression()), !dbg !674
  %b = getelementptr inbounds %struct.elem_t, ptr %x, i32 0, i32 1, !dbg !675
  %8 = load ptr, ptr %b, align 8, !dbg !675, !tbaa !676
  %data = getelementptr inbounds %struct.bam1_t, ptr %8, i32 0, i32 2, !dbg !675
  %9 = load ptr, ptr %data, align 8, !dbg !675, !tbaa !677
  %b6 = getelementptr inbounds %struct.elem_t, ptr %y, i32 0, i32 1, !dbg !681
  %10 = load ptr, ptr %b6, align 8, !dbg !681, !tbaa !676
  %data7 = getelementptr inbounds %struct.bam1_t, ptr %10, i32 0, i32 2, !dbg !681
  %11 = load ptr, ptr %data7, align 8, !dbg !681, !tbaa !677
  %call = call i32 @strcmp(ptr noundef %9, ptr noundef %11) #16, !dbg !682
  store i32 %call, ptr %t, align 4, !dbg !683, !tbaa !592
  %12 = load i32, ptr %t, align 4, !dbg !684, !tbaa !592
  %cmp8 = icmp slt i32 %12, 0, !dbg !686
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !687

if.then9:                                         ; preds = %if.then5
  store i32 1, ptr %retval, align 4, !dbg !688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !688

if.end10:                                         ; preds = %if.then5
  %13 = load i32, ptr %t, align 4, !dbg !689, !tbaa !592
  %cmp11 = icmp eq i32 %13, 0, !dbg !690
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !691

land.rhs:                                         ; preds = %if.end10
  %b12 = getelementptr inbounds %struct.elem_t, ptr %x, i32 0, i32 1, !dbg !692
  %14 = load ptr, ptr %b12, align 8, !dbg !692, !tbaa !676
  %core = getelementptr inbounds %struct.bam1_t, ptr %14, i32 0, i32 0, !dbg !693
  %flag = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 5, !dbg !694
  %15 = load i16, ptr %flag, align 8, !dbg !694, !tbaa !695
  %conv = zext i16 %15 to i32, !dbg !696
  %shr = ashr i32 %conv, 6, !dbg !697
  %and = and i32 %shr, 3, !dbg !698
  %b13 = getelementptr inbounds %struct.elem_t, ptr %y, i32 0, i32 1, !dbg !699
  %16 = load ptr, ptr %b13, align 8, !dbg !699, !tbaa !676
  %core14 = getelementptr inbounds %struct.bam1_t, ptr %16, i32 0, i32 0, !dbg !700
  %flag15 = getelementptr inbounds %struct.bam1_core_t, ptr %core14, i32 0, i32 5, !dbg !701
  %17 = load i16, ptr %flag15, align 8, !dbg !701, !tbaa !695
  %conv16 = zext i16 %17 to i32, !dbg !702
  %shr17 = ashr i32 %conv16, 6, !dbg !703
  %and18 = and i32 %shr17, 3, !dbg !704
  %cmp19 = icmp slt i32 %and, %and18, !dbg !705
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end10
  %18 = phi i1 [ false, %if.end10 ], [ %cmp19, %land.rhs ], !dbg !706
  %land.ext = zext i1 %18 to i32, !dbg !691
  store i32 %land.ext, ptr %retval, align 4, !dbg !707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !707

cleanup:                                          ; preds = %land.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #14, !dbg !708
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !709
  br label %return, !dbg !709

return:                                           ; preds = %if.else, %cleanup, %if.then
  %19 = load i32, ptr %retval, align 4, !dbg !710
  ret i32 %19, !dbg !710
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !711 void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local void @ks_heapadjust_bamshuf(i64 noundef %i, i64 noundef %n, ptr noundef %l) #0 !dbg !714 {
entry:
  %i.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %l.addr = alloca ptr, align 8
  %k = alloca i64, align 8
  %tmp = alloca %struct.elem_t, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !718, metadata !DIExpression()), !dbg !723
  store i64 %n, ptr %n.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !719, metadata !DIExpression()), !dbg !723
  store ptr %l, ptr %l.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !720, metadata !DIExpression()), !dbg !723
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #14, !dbg !723
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !721, metadata !DIExpression()), !dbg !723
  %0 = load i64, ptr %i.addr, align 8, !dbg !723, !tbaa !584
  store i64 %0, ptr %k, align 8, !dbg !723, !tbaa !584
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #14, !dbg !723
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !722, metadata !DIExpression()), !dbg !723
  %1 = load ptr, ptr %l.addr, align 8, !dbg !723, !tbaa !589
  %2 = load i64, ptr %i.addr, align 8, !dbg !723, !tbaa !584
  %arrayidx = getelementptr inbounds %struct.elem_t, ptr %1, i64 %2, !dbg !723
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %arrayidx, i64 16, i1 false), !dbg !723, !tbaa.struct !606
  br label %while.cond, !dbg !723

while.cond:                                       ; preds = %if.end9, %entry
  %3 = load i64, ptr %k, align 8, !dbg !723, !tbaa !584
  %shl = shl i64 %3, 1, !dbg !723
  %add = add i64 %shl, 1, !dbg !723
  store i64 %add, ptr %k, align 8, !dbg !723, !tbaa !584
  %4 = load i64, ptr %n.addr, align 8, !dbg !723, !tbaa !584
  %cmp = icmp ult i64 %add, %4, !dbg !723
  br i1 %cmp, label %while.body, label %while.end, !dbg !723

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %k, align 8, !dbg !724, !tbaa !584
  %6 = load i64, ptr %n.addr, align 8, !dbg !724, !tbaa !584
  %sub = sub i64 %6, 1, !dbg !724
  %cmp1 = icmp ne i64 %5, %sub, !dbg !724
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !724

land.lhs.true:                                    ; preds = %while.body
  %7 = load ptr, ptr %l.addr, align 8, !dbg !724, !tbaa !589
  %8 = load i64, ptr %k, align 8, !dbg !724, !tbaa !584
  %arrayidx2 = getelementptr inbounds %struct.elem_t, ptr %7, i64 %8, !dbg !724
  %9 = load ptr, ptr %l.addr, align 8, !dbg !724, !tbaa !589
  %10 = load i64, ptr %k, align 8, !dbg !724, !tbaa !584
  %add3 = add i64 %10, 1, !dbg !724
  %arrayidx4 = getelementptr inbounds %struct.elem_t, ptr %9, i64 %add3, !dbg !724
  %11 = getelementptr inbounds { i32, ptr }, ptr %arrayidx2, i32 0, i32 0, !dbg !724
  %12 = load i32, ptr %11, align 8, !dbg !724
  %13 = getelementptr inbounds { i32, ptr }, ptr %arrayidx2, i32 0, i32 1, !dbg !724
  %14 = load ptr, ptr %13, align 8, !dbg !724
  %15 = getelementptr inbounds { i32, ptr }, ptr %arrayidx4, i32 0, i32 0, !dbg !724
  %16 = load i32, ptr %15, align 8, !dbg !724
  %17 = getelementptr inbounds { i32, ptr }, ptr %arrayidx4, i32 0, i32 1, !dbg !724
  %18 = load ptr, ptr %17, align 8, !dbg !724
  %call = call i32 @elem_lt(i32 %12, ptr %14, i32 %16, ptr %18), !dbg !724
  %tobool = icmp ne i32 %call, 0, !dbg !724
  br i1 %tobool, label %if.then, label %if.end, !dbg !727

if.then:                                          ; preds = %land.lhs.true
  %19 = load i64, ptr %k, align 8, !dbg !724, !tbaa !584
  %inc = add i64 %19, 1, !dbg !724
  store i64 %inc, ptr %k, align 8, !dbg !724, !tbaa !584
  br label %if.end, !dbg !724

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %20 = load ptr, ptr %l.addr, align 8, !dbg !728, !tbaa !589
  %21 = load i64, ptr %k, align 8, !dbg !728, !tbaa !584
  %arrayidx5 = getelementptr inbounds %struct.elem_t, ptr %20, i64 %21, !dbg !728
  %22 = getelementptr inbounds { i32, ptr }, ptr %arrayidx5, i32 0, i32 0, !dbg !728
  %23 = load i32, ptr %22, align 8, !dbg !728
  %24 = getelementptr inbounds { i32, ptr }, ptr %arrayidx5, i32 0, i32 1, !dbg !728
  %25 = load ptr, ptr %24, align 8, !dbg !728
  %26 = getelementptr inbounds { i32, ptr }, ptr %tmp, i32 0, i32 0, !dbg !728
  %27 = load i32, ptr %26, align 8, !dbg !728
  %28 = getelementptr inbounds { i32, ptr }, ptr %tmp, i32 0, i32 1, !dbg !728
  %29 = load ptr, ptr %28, align 8, !dbg !728
  %call6 = call i32 @elem_lt(i32 %23, ptr %25, i32 %27, ptr %29), !dbg !728
  %tobool7 = icmp ne i32 %call6, 0, !dbg !728
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !727

if.then8:                                         ; preds = %if.end
  br label %while.end, !dbg !728

if.end9:                                          ; preds = %if.end
  %30 = load ptr, ptr %l.addr, align 8, !dbg !727, !tbaa !589
  %31 = load i64, ptr %i.addr, align 8, !dbg !727, !tbaa !584
  %arrayidx10 = getelementptr inbounds %struct.elem_t, ptr %30, i64 %31, !dbg !727
  %32 = load ptr, ptr %l.addr, align 8, !dbg !727, !tbaa !589
  %33 = load i64, ptr %k, align 8, !dbg !727, !tbaa !584
  %arrayidx11 = getelementptr inbounds %struct.elem_t, ptr %32, i64 %33, !dbg !727
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx10, ptr align 8 %arrayidx11, i64 16, i1 false), !dbg !727, !tbaa.struct !606
  %34 = load i64, ptr %k, align 8, !dbg !727, !tbaa !584
  store i64 %34, ptr %i.addr, align 8, !dbg !727, !tbaa !584
  br label %while.cond, !dbg !723, !llvm.loop !730

while.end:                                        ; preds = %if.then8, %while.cond
  %35 = load ptr, ptr %l.addr, align 8, !dbg !723, !tbaa !589
  %36 = load i64, ptr %i.addr, align 8, !dbg !723, !tbaa !584
  %arrayidx12 = getelementptr inbounds %struct.elem_t, ptr %35, i64 %36, !dbg !723
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx12, ptr align 8 %tmp, i64 16, i1 false), !dbg !723, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #14, !dbg !723
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #14, !dbg !723
  ret void, !dbg !723
}

; Function Attrs: nounwind uwtable
define dso_local void @ks_heapmake_bamshuf(i64 noundef %lsize, ptr noundef %l) #0 !dbg !731 {
entry:
  %lsize.addr = alloca i64, align 8
  %l.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store i64 %lsize, ptr %lsize.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %lsize.addr, metadata !735, metadata !DIExpression()), !dbg !738
  store ptr %l, ptr %l.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !736, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !738
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !737, metadata !DIExpression()), !dbg !738
  %0 = load i64, ptr %lsize.addr, align 8, !dbg !739, !tbaa !584
  %shr = lshr i64 %0, 1, !dbg !739
  %sub = sub i64 %shr, 1, !dbg !739
  store i64 %sub, ptr %i, align 8, !dbg !739, !tbaa !584
  br label %for.cond, !dbg !739

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !dbg !741, !tbaa !584
  %cmp = icmp ne i64 %1, -1, !dbg !741
  br i1 %cmp, label %for.body, label %for.end, !dbg !739

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %i, align 8, !dbg !741, !tbaa !584
  %3 = load i64, ptr %lsize.addr, align 8, !dbg !741, !tbaa !584
  %4 = load ptr, ptr %l.addr, align 8, !dbg !741, !tbaa !589
  call void @ks_heapadjust_bamshuf(i64 noundef %2, i64 noundef %3, ptr noundef %4), !dbg !741
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8, !dbg !741, !tbaa !584
  %dec = add i64 %5, -1, !dbg !741
  store i64 %dec, ptr %i, align 8, !dbg !741, !tbaa !584
  br label %for.cond, !dbg !741, !llvm.loop !743

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !738
  ret void, !dbg !738
}

; Function Attrs: nounwind uwtable
define dso_local void @ks_heapsort_bamshuf(i64 noundef %lsize, ptr noundef %l) #0 !dbg !744 {
entry:
  %lsize.addr = alloca i64, align 8
  %l.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct.elem_t, align 8
  store i64 %lsize, ptr %lsize.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %lsize.addr, metadata !746, metadata !DIExpression()), !dbg !753
  store ptr %l, ptr %l.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !747, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !753
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !748, metadata !DIExpression()), !dbg !753
  %0 = load i64, ptr %lsize.addr, align 8, !dbg !754, !tbaa !584
  %sub = sub i64 %0, 1, !dbg !754
  store i64 %sub, ptr %i, align 8, !dbg !754, !tbaa !584
  br label %for.cond, !dbg !754

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !dbg !755, !tbaa !584
  %cmp = icmp ugt i64 %1, 0, !dbg !755
  br i1 %cmp, label %for.body, label %for.end, !dbg !754

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #14, !dbg !756
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !749, metadata !DIExpression()), !dbg !756
  %2 = load ptr, ptr %l.addr, align 8, !dbg !756, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %2, i64 16, i1 false), !dbg !756, !tbaa.struct !606
  %3 = load ptr, ptr %l.addr, align 8, !dbg !756, !tbaa !589
  %4 = load ptr, ptr %l.addr, align 8, !dbg !756, !tbaa !589
  %5 = load i64, ptr %i, align 8, !dbg !756, !tbaa !584
  %arrayidx = getelementptr inbounds %struct.elem_t, ptr %4, i64 %5, !dbg !756
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %arrayidx, i64 16, i1 false), !dbg !756, !tbaa.struct !606
  %6 = load ptr, ptr %l.addr, align 8, !dbg !756, !tbaa !589
  %7 = load i64, ptr %i, align 8, !dbg !756, !tbaa !584
  %arrayidx1 = getelementptr inbounds %struct.elem_t, ptr %6, i64 %7, !dbg !756
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1, ptr align 8 %tmp, i64 16, i1 false), !dbg !756, !tbaa.struct !606
  %8 = load i64, ptr %i, align 8, !dbg !756, !tbaa !584
  %9 = load ptr, ptr %l.addr, align 8, !dbg !756, !tbaa !589
  call void @ks_heapadjust_bamshuf(i64 noundef 0, i64 noundef %8, ptr noundef %9), !dbg !756
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #14, !dbg !755
  br label %for.inc, !dbg !756

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8, !dbg !755, !tbaa !584
  %dec = add i64 %10, -1, !dbg !755
  store i64 %dec, ptr %i, align 8, !dbg !755, !tbaa !584
  br label %for.cond, !dbg !755, !llvm.loop !757

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !753
  ret void, !dbg !753
}

; Function Attrs: nounwind uwtable
define dso_local void @ks_combsort_bamshuf(i64 noundef %n, ptr noundef %a) #0 !dbg !758 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %shrink_factor = alloca double, align 8
  %do_swap = alloca i32, align 4
  %gap = alloca i64, align 8
  %tmp = alloca %struct.elem_t, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !760, metadata !DIExpression()), !dbg !768
  store ptr %a, ptr %a.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !761, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 8, ptr %shrink_factor) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %shrink_factor, metadata !762, metadata !DIExpression()), !dbg !768
  store double 0x3FF3F5114C5FC35D, ptr %shrink_factor, align 8, !dbg !768, !tbaa !769
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_swap) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %do_swap, metadata !763, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 8, ptr %gap) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %gap, metadata !764, metadata !DIExpression()), !dbg !768
  %0 = load i64, ptr %n.addr, align 8, !dbg !768, !tbaa !584
  store i64 %0, ptr %gap, align 8, !dbg !768, !tbaa !584
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !765, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !766, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !767, metadata !DIExpression()), !dbg !768
  br label %do.body, !dbg !768

do.body:                                          ; preds = %lor.end, %entry
  %1 = load i64, ptr %gap, align 8, !dbg !771, !tbaa !584
  %cmp = icmp ugt i64 %1, 2, !dbg !771
  br i1 %cmp, label %if.then, label %if.end7, !dbg !774

if.then:                                          ; preds = %do.body
  %2 = load i64, ptr %gap, align 8, !dbg !775, !tbaa !584
  %conv = uitofp i64 %2 to double, !dbg !775
  %div = fdiv double %conv, 0x3FF3F5114C5FC35D, !dbg !775
  %conv1 = fptoui double %div to i64, !dbg !775
  store i64 %conv1, ptr %gap, align 8, !dbg !775, !tbaa !584
  %3 = load i64, ptr %gap, align 8, !dbg !777, !tbaa !584
  %cmp2 = icmp eq i64 %3, 9, !dbg !777
  br i1 %cmp2, label %if.then6, label %lor.lhs.false, !dbg !777

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i64, ptr %gap, align 8, !dbg !777, !tbaa !584
  %cmp4 = icmp eq i64 %4, 10, !dbg !777
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !775

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i64 11, ptr %gap, align 8, !dbg !777, !tbaa !584
  br label %if.end, !dbg !777

if.end:                                           ; preds = %if.then6, %lor.lhs.false
  br label %if.end7, !dbg !775

if.end7:                                          ; preds = %if.end, %do.body
  store i32 0, ptr %do_swap, align 4, !dbg !774, !tbaa !592
  %5 = load ptr, ptr %a.addr, align 8, !dbg !779, !tbaa !589
  store ptr %5, ptr %i, align 8, !dbg !779, !tbaa !589
  br label %for.cond, !dbg !779

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load ptr, ptr %i, align 8, !dbg !781, !tbaa !589
  %7 = load ptr, ptr %a.addr, align 8, !dbg !781, !tbaa !589
  %8 = load i64, ptr %n.addr, align 8, !dbg !781, !tbaa !584
  %add.ptr = getelementptr inbounds %struct.elem_t, ptr %7, i64 %8, !dbg !781
  %9 = load i64, ptr %gap, align 8, !dbg !781, !tbaa !584
  %idx.neg = sub i64 0, %9, !dbg !781
  %add.ptr8 = getelementptr inbounds %struct.elem_t, ptr %add.ptr, i64 %idx.neg, !dbg !781
  %cmp9 = icmp ult ptr %6, %add.ptr8, !dbg !781
  br i1 %cmp9, label %for.body, label %for.end, !dbg !779

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %i, align 8, !dbg !783, !tbaa !589
  %11 = load i64, ptr %gap, align 8, !dbg !783, !tbaa !584
  %add.ptr11 = getelementptr inbounds %struct.elem_t, ptr %10, i64 %11, !dbg !783
  store ptr %add.ptr11, ptr %j, align 8, !dbg !783, !tbaa !589
  %12 = load ptr, ptr %j, align 8, !dbg !785, !tbaa !589
  %13 = load ptr, ptr %i, align 8, !dbg !785, !tbaa !589
  %14 = getelementptr inbounds { i32, ptr }, ptr %12, i32 0, i32 0, !dbg !785
  %15 = load i32, ptr %14, align 8, !dbg !785
  %16 = getelementptr inbounds { i32, ptr }, ptr %12, i32 0, i32 1, !dbg !785
  %17 = load ptr, ptr %16, align 8, !dbg !785
  %18 = getelementptr inbounds { i32, ptr }, ptr %13, i32 0, i32 0, !dbg !785
  %19 = load i32, ptr %18, align 8, !dbg !785
  %20 = getelementptr inbounds { i32, ptr }, ptr %13, i32 0, i32 1, !dbg !785
  %21 = load ptr, ptr %20, align 8, !dbg !785
  %call = call i32 @elem_lt(i32 %15, ptr %17, i32 %19, ptr %21), !dbg !785
  %tobool = icmp ne i32 %call, 0, !dbg !785
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !783

if.then12:                                        ; preds = %for.body
  %22 = load ptr, ptr %i, align 8, !dbg !787, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %22, i64 16, i1 false), !dbg !787, !tbaa.struct !606
  %23 = load ptr, ptr %i, align 8, !dbg !787, !tbaa !589
  %24 = load ptr, ptr %j, align 8, !dbg !787, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %24, i64 16, i1 false), !dbg !787, !tbaa.struct !606
  %25 = load ptr, ptr %j, align 8, !dbg !787, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 8 %tmp, i64 16, i1 false), !dbg !787, !tbaa.struct !606
  store i32 1, ptr %do_swap, align 4, !dbg !787, !tbaa !592
  br label %if.end13, !dbg !787

if.end13:                                         ; preds = %if.then12, %for.body
  br label %for.inc, !dbg !783

for.inc:                                          ; preds = %if.end13
  %26 = load ptr, ptr %i, align 8, !dbg !781, !tbaa !589
  %incdec.ptr = getelementptr inbounds %struct.elem_t, ptr %26, i32 1, !dbg !781
  store ptr %incdec.ptr, ptr %i, align 8, !dbg !781, !tbaa !589
  br label %for.cond, !dbg !781, !llvm.loop !789

for.end:                                          ; preds = %for.cond
  br label %do.cond, !dbg !774

do.cond:                                          ; preds = %for.end
  %27 = load i32, ptr %do_swap, align 4, !dbg !768, !tbaa !592
  %tobool14 = icmp ne i32 %27, 0, !dbg !768
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !768

lor.rhs:                                          ; preds = %do.cond
  %28 = load i64, ptr %gap, align 8, !dbg !768, !tbaa !584
  %cmp15 = icmp ugt i64 %28, 2, !dbg !768
  br label %lor.end, !dbg !768

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %29 = phi i1 [ true, %do.cond ], [ %cmp15, %lor.rhs ]
  br i1 %29, label %do.body, label %do.end, !dbg !774, !llvm.loop !790

do.end:                                           ; preds = %lor.end
  %30 = load i64, ptr %gap, align 8, !dbg !791, !tbaa !584
  %cmp17 = icmp ne i64 %30, 1, !dbg !791
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !768

if.then19:                                        ; preds = %do.end
  %31 = load ptr, ptr %a.addr, align 8, !dbg !791, !tbaa !589
  %32 = load ptr, ptr %a.addr, align 8, !dbg !791, !tbaa !589
  %33 = load i64, ptr %n.addr, align 8, !dbg !791, !tbaa !584
  %add.ptr20 = getelementptr inbounds %struct.elem_t, ptr %32, i64 %33, !dbg !791
  call void @__ks_insertsort_bamshuf(ptr noundef %31, ptr noundef %add.ptr20), !dbg !791
  br label %if.end21, !dbg !791

if.end21:                                         ; preds = %if.then19, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #14, !dbg !768
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !768
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #14, !dbg !768
  call void @llvm.lifetime.end.p0(i64 8, ptr %gap) #14, !dbg !768
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_swap) #14, !dbg !768
  call void @llvm.lifetime.end.p0(i64 8, ptr %shrink_factor) #14, !dbg !768
  ret void, !dbg !768
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__ks_insertsort_bamshuf(ptr noundef %s, ptr noundef %t) #4 !dbg !793 {
entry:
  %s.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  %swap_tmp = alloca %struct.elem_t, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !797, metadata !DIExpression()), !dbg !802
  store ptr %t, ptr %t.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !798, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !802
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !799, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #14, !dbg !802
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !800, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 16, ptr %swap_tmp) #14, !dbg !802
  tail call void @llvm.dbg.declare(metadata ptr %swap_tmp, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load ptr, ptr %s.addr, align 8, !dbg !803, !tbaa !589
  %add.ptr = getelementptr inbounds %struct.elem_t, ptr %0, i64 1, !dbg !803
  store ptr %add.ptr, ptr %i, align 8, !dbg !803, !tbaa !589
  br label %for.cond, !dbg !803

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load ptr, ptr %i, align 8, !dbg !805, !tbaa !589
  %2 = load ptr, ptr %t.addr, align 8, !dbg !805, !tbaa !589
  %cmp = icmp ult ptr %1, %2, !dbg !805
  br i1 %cmp, label %for.body, label %for.end9, !dbg !803

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %i, align 8, !dbg !807, !tbaa !589
  store ptr %3, ptr %j, align 8, !dbg !807, !tbaa !589
  br label %for.cond1, !dbg !807

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load ptr, ptr %j, align 8, !dbg !809, !tbaa !589
  %5 = load ptr, ptr %s.addr, align 8, !dbg !809, !tbaa !589
  %cmp2 = icmp ugt ptr %4, %5, !dbg !809
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !809

land.rhs:                                         ; preds = %for.cond1
  %6 = load ptr, ptr %j, align 8, !dbg !809, !tbaa !589
  %7 = load ptr, ptr %j, align 8, !dbg !809, !tbaa !589
  %add.ptr3 = getelementptr inbounds %struct.elem_t, ptr %7, i64 -1, !dbg !809
  %8 = getelementptr inbounds { i32, ptr }, ptr %6, i32 0, i32 0, !dbg !809
  %9 = load i32, ptr %8, align 8, !dbg !809
  %10 = getelementptr inbounds { i32, ptr }, ptr %6, i32 0, i32 1, !dbg !809
  %11 = load ptr, ptr %10, align 8, !dbg !809
  %12 = getelementptr inbounds { i32, ptr }, ptr %add.ptr3, i32 0, i32 0, !dbg !809
  %13 = load i32, ptr %12, align 8, !dbg !809
  %14 = getelementptr inbounds { i32, ptr }, ptr %add.ptr3, i32 0, i32 1, !dbg !809
  %15 = load ptr, ptr %14, align 8, !dbg !809
  %call = call i32 @elem_lt(i32 %9, ptr %11, i32 %13, ptr %15), !dbg !809
  %tobool = icmp ne i32 %call, 0, !dbg !809
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond1
  %16 = phi i1 [ false, %for.cond1 ], [ %tobool, %land.rhs ], !dbg !811
  br i1 %16, label %for.body4, label %for.end, !dbg !807

for.body4:                                        ; preds = %land.end
  %17 = load ptr, ptr %j, align 8, !dbg !812, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %swap_tmp, ptr align 8 %17, i64 16, i1 false), !dbg !812, !tbaa.struct !606
  %18 = load ptr, ptr %j, align 8, !dbg !812, !tbaa !589
  %19 = load ptr, ptr %j, align 8, !dbg !812, !tbaa !589
  %add.ptr5 = getelementptr inbounds %struct.elem_t, ptr %19, i64 -1, !dbg !812
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %add.ptr5, i64 16, i1 false), !dbg !812, !tbaa.struct !606
  %20 = load ptr, ptr %j, align 8, !dbg !812, !tbaa !589
  %add.ptr6 = getelementptr inbounds %struct.elem_t, ptr %20, i64 -1, !dbg !812
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr6, ptr align 8 %swap_tmp, i64 16, i1 false), !dbg !812, !tbaa.struct !606
  br label %for.inc, !dbg !812

for.inc:                                          ; preds = %for.body4
  %21 = load ptr, ptr %j, align 8, !dbg !809, !tbaa !589
  %incdec.ptr = getelementptr inbounds %struct.elem_t, ptr %21, i32 -1, !dbg !809
  store ptr %incdec.ptr, ptr %j, align 8, !dbg !809, !tbaa !589
  br label %for.cond1, !dbg !809, !llvm.loop !814

for.end:                                          ; preds = %land.end
  br label %for.inc7, !dbg !807

for.inc7:                                         ; preds = %for.end
  %22 = load ptr, ptr %i, align 8, !dbg !805, !tbaa !589
  %incdec.ptr8 = getelementptr inbounds %struct.elem_t, ptr %22, i32 1, !dbg !805
  store ptr %incdec.ptr8, ptr %i, align 8, !dbg !805, !tbaa !589
  br label %for.cond, !dbg !805, !llvm.loop !815

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %swap_tmp) #14, !dbg !802
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #14, !dbg !802
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !802
  ret void, !dbg !802
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ks_introsort_bamshuf(i64 noundef %n, ptr noundef %a) #0 !dbg !816 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %d = alloca i32, align 4
  %top = alloca ptr, align 8
  %stack = alloca ptr, align 8
  %rp = alloca %struct.elem_t, align 8
  %swap_tmp = alloca %struct.elem_t, align 8
  %s = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  %k = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !820, metadata !DIExpression()), !dbg !832
  store ptr %a, ptr %a.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !821, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !822, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !823, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %stack, metadata !824, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 16, ptr %rp) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %rp, metadata !825, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 16, ptr %swap_tmp) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %swap_tmp, metadata !826, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !827, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !828, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !829, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !830, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #14, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !831, metadata !DIExpression()), !dbg !832
  %0 = load i64, ptr %n.addr, align 8, !dbg !833, !tbaa !584
  %cmp = icmp ult i64 %0, 1, !dbg !833
  br i1 %cmp, label %if.then, label %if.else, !dbg !832

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !833

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !835, !tbaa !584
  %cmp1 = icmp eq i64 %1, 2, !dbg !835
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !833

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %a.addr, align 8, !dbg !837, !tbaa !589
  %arrayidx = getelementptr inbounds %struct.elem_t, ptr %2, i64 1, !dbg !837
  %3 = load ptr, ptr %a.addr, align 8, !dbg !837, !tbaa !589
  %arrayidx3 = getelementptr inbounds %struct.elem_t, ptr %3, i64 0, !dbg !837
  %4 = getelementptr inbounds { i32, ptr }, ptr %arrayidx, i32 0, i32 0, !dbg !837
  %5 = load i32, ptr %4, align 8, !dbg !837
  %6 = getelementptr inbounds { i32, ptr }, ptr %arrayidx, i32 0, i32 1, !dbg !837
  %7 = load ptr, ptr %6, align 8, !dbg !837
  %8 = getelementptr inbounds { i32, ptr }, ptr %arrayidx3, i32 0, i32 0, !dbg !837
  %9 = load i32, ptr %8, align 8, !dbg !837
  %10 = getelementptr inbounds { i32, ptr }, ptr %arrayidx3, i32 0, i32 1, !dbg !837
  %11 = load ptr, ptr %10, align 8, !dbg !837
  %call = call i32 @elem_lt(i32 %5, ptr %7, i32 %9, ptr %11), !dbg !837
  %tobool = icmp ne i32 %call, 0, !dbg !837
  br i1 %tobool, label %if.then4, label %if.end, !dbg !840

if.then4:                                         ; preds = %if.then2
  %12 = load ptr, ptr %a.addr, align 8, !dbg !841, !tbaa !589
  %arrayidx5 = getelementptr inbounds %struct.elem_t, ptr %12, i64 0, !dbg !841
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %swap_tmp, ptr align 8 %arrayidx5, i64 16, i1 false), !dbg !841, !tbaa.struct !606
  %13 = load ptr, ptr %a.addr, align 8, !dbg !841, !tbaa !589
  %arrayidx6 = getelementptr inbounds %struct.elem_t, ptr %13, i64 0, !dbg !841
  %14 = load ptr, ptr %a.addr, align 8, !dbg !841, !tbaa !589
  %arrayidx7 = getelementptr inbounds %struct.elem_t, ptr %14, i64 1, !dbg !841
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx6, ptr align 8 %arrayidx7, i64 16, i1 false), !dbg !841, !tbaa.struct !606
  %15 = load ptr, ptr %a.addr, align 8, !dbg !841, !tbaa !589
  %arrayidx8 = getelementptr inbounds %struct.elem_t, ptr %15, i64 1, !dbg !841
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx8, ptr align 8 %swap_tmp, i64 16, i1 false), !dbg !841, !tbaa.struct !606
  br label %if.end, !dbg !841

if.end:                                           ; preds = %if.then4, %if.then2
  store i32 0, ptr %retval, align 4, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !840

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  store i32 2, ptr %d, align 4, !dbg !843, !tbaa !592
  br label %for.cond, !dbg !843

for.cond:                                         ; preds = %for.inc, %if.end10
  %16 = load i32, ptr %d, align 4, !dbg !845, !tbaa !592
  %sh_prom = zext i32 %16 to i64, !dbg !845
  %shl = shl i64 1, %sh_prom, !dbg !845
  %17 = load i64, ptr %n.addr, align 8, !dbg !845, !tbaa !584
  %cmp11 = icmp ult i64 %shl, %17, !dbg !845
  br i1 %cmp11, label %for.body, label %for.end, !dbg !843

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !843

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %d, align 4, !dbg !845, !tbaa !592
  %inc = add nsw i32 %18, 1, !dbg !845
  store i32 %inc, ptr %d, align 4, !dbg !845, !tbaa !592
  br label %for.cond, !dbg !845, !llvm.loop !847

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %d, align 4, !dbg !832, !tbaa !592
  %conv = sext i32 %19 to i64, !dbg !832
  %mul = mul i64 8, %conv, !dbg !832
  %add = add i64 %mul, 2, !dbg !832
  %mul12 = mul i64 24, %add, !dbg !832
  %call13 = call noalias ptr @malloc(i64 noundef %mul12) #15, !dbg !832
  store ptr %call13, ptr %stack, align 8, !dbg !832, !tbaa !589
  %20 = load ptr, ptr %stack, align 8, !dbg !832, !tbaa !589
  store ptr %20, ptr %top, align 8, !dbg !832, !tbaa !589
  %21 = load ptr, ptr %a.addr, align 8, !dbg !832, !tbaa !589
  store ptr %21, ptr %s, align 8, !dbg !832, !tbaa !589
  %22 = load ptr, ptr %a.addr, align 8, !dbg !832, !tbaa !589
  %23 = load i64, ptr %n.addr, align 8, !dbg !832, !tbaa !584
  %sub = sub i64 %23, 1, !dbg !832
  %add.ptr = getelementptr inbounds %struct.elem_t, ptr %22, i64 %sub, !dbg !832
  store ptr %add.ptr, ptr %t, align 8, !dbg !832, !tbaa !589
  %24 = load i32, ptr %d, align 4, !dbg !832, !tbaa !592
  %shl14 = shl i32 %24, 1, !dbg !832
  store i32 %shl14, ptr %d, align 4, !dbg !832, !tbaa !592
  br label %while.cond, !dbg !832

while.cond:                                       ; preds = %if.end129, %if.then20, %for.end
  br label %while.body, !dbg !832

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %s, align 8, !dbg !848, !tbaa !589
  %26 = load ptr, ptr %t, align 8, !dbg !848, !tbaa !589
  %cmp15 = icmp ult ptr %25, %26, !dbg !848
  br i1 %cmp15, label %if.then17, label %if.else118, !dbg !851

if.then17:                                        ; preds = %while.body
  %27 = load i32, ptr %d, align 4, !dbg !852, !tbaa !592
  %dec = add nsw i32 %27, -1, !dbg !852
  store i32 %dec, ptr %d, align 4, !dbg !852, !tbaa !592
  %cmp18 = icmp eq i32 %dec, 0, !dbg !852
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !855

if.then20:                                        ; preds = %if.then17
  %28 = load ptr, ptr %t, align 8, !dbg !856, !tbaa !589
  %29 = load ptr, ptr %s, align 8, !dbg !856, !tbaa !589
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64, !dbg !856
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64, !dbg !856
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !856
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16, !dbg !856
  %add21 = add nsw i64 %sub.ptr.div, 1, !dbg !856
  %30 = load ptr, ptr %s, align 8, !dbg !856, !tbaa !589
  call void @ks_combsort_bamshuf(i64 noundef %add21, ptr noundef %30), !dbg !856
  %31 = load ptr, ptr %s, align 8, !dbg !856, !tbaa !589
  store ptr %31, ptr %t, align 8, !dbg !856, !tbaa !589
  br label %while.cond, !dbg !856, !llvm.loop !858

if.end22:                                         ; preds = %if.then17
  %32 = load ptr, ptr %s, align 8, !dbg !855, !tbaa !589
  store ptr %32, ptr %i, align 8, !dbg !855, !tbaa !589
  %33 = load ptr, ptr %t, align 8, !dbg !855, !tbaa !589
  store ptr %33, ptr %j, align 8, !dbg !855, !tbaa !589
  %34 = load ptr, ptr %i, align 8, !dbg !855, !tbaa !589
  %35 = load ptr, ptr %j, align 8, !dbg !855, !tbaa !589
  %36 = load ptr, ptr %i, align 8, !dbg !855, !tbaa !589
  %sub.ptr.lhs.cast23 = ptrtoint ptr %35 to i64, !dbg !855
  %sub.ptr.rhs.cast24 = ptrtoint ptr %36 to i64, !dbg !855
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24, !dbg !855
  %sub.ptr.div26 = sdiv exact i64 %sub.ptr.sub25, 16, !dbg !855
  %shr = ashr i64 %sub.ptr.div26, 1, !dbg !855
  %add.ptr27 = getelementptr inbounds %struct.elem_t, ptr %34, i64 %shr, !dbg !855
  %add.ptr28 = getelementptr inbounds %struct.elem_t, ptr %add.ptr27, i64 1, !dbg !855
  store ptr %add.ptr28, ptr %k, align 8, !dbg !855, !tbaa !589
  %37 = load ptr, ptr %k, align 8, !dbg !859, !tbaa !589
  %38 = load ptr, ptr %i, align 8, !dbg !859, !tbaa !589
  %39 = getelementptr inbounds { i32, ptr }, ptr %37, i32 0, i32 0, !dbg !859
  %40 = load i32, ptr %39, align 8, !dbg !859
  %41 = getelementptr inbounds { i32, ptr }, ptr %37, i32 0, i32 1, !dbg !859
  %42 = load ptr, ptr %41, align 8, !dbg !859
  %43 = getelementptr inbounds { i32, ptr }, ptr %38, i32 0, i32 0, !dbg !859
  %44 = load i32, ptr %43, align 8, !dbg !859
  %45 = getelementptr inbounds { i32, ptr }, ptr %38, i32 0, i32 1, !dbg !859
  %46 = load ptr, ptr %45, align 8, !dbg !859
  %call29 = call i32 @elem_lt(i32 %40, ptr %42, i32 %44, ptr %46), !dbg !859
  %tobool30 = icmp ne i32 %call29, 0, !dbg !859
  br i1 %tobool30, label %if.then31, label %if.else36, !dbg !855

if.then31:                                        ; preds = %if.end22
  %47 = load ptr, ptr %k, align 8, !dbg !861, !tbaa !589
  %48 = load ptr, ptr %j, align 8, !dbg !861, !tbaa !589
  %49 = getelementptr inbounds { i32, ptr }, ptr %47, i32 0, i32 0, !dbg !861
  %50 = load i32, ptr %49, align 8, !dbg !861
  %51 = getelementptr inbounds { i32, ptr }, ptr %47, i32 0, i32 1, !dbg !861
  %52 = load ptr, ptr %51, align 8, !dbg !861
  %53 = getelementptr inbounds { i32, ptr }, ptr %48, i32 0, i32 0, !dbg !861
  %54 = load i32, ptr %53, align 8, !dbg !861
  %55 = getelementptr inbounds { i32, ptr }, ptr %48, i32 0, i32 1, !dbg !861
  %56 = load ptr, ptr %55, align 8, !dbg !861
  %call32 = call i32 @elem_lt(i32 %50, ptr %52, i32 %54, ptr %56), !dbg !861
  %tobool33 = icmp ne i32 %call32, 0, !dbg !861
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !864

if.then34:                                        ; preds = %if.then31
  %57 = load ptr, ptr %j, align 8, !dbg !861, !tbaa !589
  store ptr %57, ptr %k, align 8, !dbg !861, !tbaa !589
  br label %if.end35, !dbg !861

if.end35:                                         ; preds = %if.then34, %if.then31
  br label %if.end39, !dbg !864

if.else36:                                        ; preds = %if.end22
  %58 = load ptr, ptr %j, align 8, !dbg !859, !tbaa !589
  %59 = load ptr, ptr %i, align 8, !dbg !859, !tbaa !589
  %60 = getelementptr inbounds { i32, ptr }, ptr %58, i32 0, i32 0, !dbg !859
  %61 = load i32, ptr %60, align 8, !dbg !859
  %62 = getelementptr inbounds { i32, ptr }, ptr %58, i32 0, i32 1, !dbg !859
  %63 = load ptr, ptr %62, align 8, !dbg !859
  %64 = getelementptr inbounds { i32, ptr }, ptr %59, i32 0, i32 0, !dbg !859
  %65 = load i32, ptr %64, align 8, !dbg !859
  %66 = getelementptr inbounds { i32, ptr }, ptr %59, i32 0, i32 1, !dbg !859
  %67 = load ptr, ptr %66, align 8, !dbg !859
  %call37 = call i32 @elem_lt(i32 %61, ptr %63, i32 %65, ptr %67), !dbg !859
  %tobool38 = icmp ne i32 %call37, 0, !dbg !859
  br i1 %tobool38, label %cond.true, label %cond.false, !dbg !859

cond.true:                                        ; preds = %if.else36
  %68 = load ptr, ptr %i, align 8, !dbg !859, !tbaa !589
  br label %cond.end, !dbg !859

cond.false:                                       ; preds = %if.else36
  %69 = load ptr, ptr %j, align 8, !dbg !859, !tbaa !589
  br label %cond.end, !dbg !859

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %68, %cond.true ], [ %69, %cond.false ], !dbg !859
  store ptr %cond, ptr %k, align 8, !dbg !859, !tbaa !589
  br label %if.end39

if.end39:                                         ; preds = %cond.end, %if.end35
  %70 = load ptr, ptr %k, align 8, !dbg !855, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rp, ptr align 8 %70, i64 16, i1 false), !dbg !855, !tbaa.struct !606
  %71 = load ptr, ptr %k, align 8, !dbg !865, !tbaa !589
  %72 = load ptr, ptr %t, align 8, !dbg !865, !tbaa !589
  %cmp40 = icmp ne ptr %71, %72, !dbg !865
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !855

if.then42:                                        ; preds = %if.end39
  %73 = load ptr, ptr %k, align 8, !dbg !867, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %swap_tmp, ptr align 8 %73, i64 16, i1 false), !dbg !867, !tbaa.struct !606
  %74 = load ptr, ptr %k, align 8, !dbg !867, !tbaa !589
  %75 = load ptr, ptr %t, align 8, !dbg !867, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %74, ptr align 8 %75, i64 16, i1 false), !dbg !867, !tbaa.struct !606
  %76 = load ptr, ptr %t, align 8, !dbg !867, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 8 %swap_tmp, i64 16, i1 false), !dbg !867, !tbaa.struct !606
  br label %if.end43, !dbg !867

if.end43:                                         ; preds = %if.then42, %if.end39
  br label %for.cond44, !dbg !855

for.cond44:                                       ; preds = %if.end58, %if.end43
  br label %do.body, !dbg !869

do.body:                                          ; preds = %do.cond, %for.cond44
  %77 = load ptr, ptr %i, align 8, !dbg !869, !tbaa !589
  %incdec.ptr = getelementptr inbounds %struct.elem_t, ptr %77, i32 1, !dbg !869
  store ptr %incdec.ptr, ptr %i, align 8, !dbg !869, !tbaa !589
  br label %do.cond, !dbg !869

do.cond:                                          ; preds = %do.body
  %78 = load ptr, ptr %i, align 8, !dbg !869, !tbaa !589
  %79 = getelementptr inbounds { i32, ptr }, ptr %78, i32 0, i32 0, !dbg !869
  %80 = load i32, ptr %79, align 8, !dbg !869
  %81 = getelementptr inbounds { i32, ptr }, ptr %78, i32 0, i32 1, !dbg !869
  %82 = load ptr, ptr %81, align 8, !dbg !869
  %83 = getelementptr inbounds { i32, ptr }, ptr %rp, i32 0, i32 0, !dbg !869
  %84 = load i32, ptr %83, align 8, !dbg !869
  %85 = getelementptr inbounds { i32, ptr }, ptr %rp, i32 0, i32 1, !dbg !869
  %86 = load ptr, ptr %85, align 8, !dbg !869
  %call45 = call i32 @elem_lt(i32 %80, ptr %82, i32 %84, ptr %86), !dbg !869
  %tobool46 = icmp ne i32 %call45, 0, !dbg !869
  br i1 %tobool46, label %do.body, label %do.end, !dbg !869, !llvm.loop !873

do.end:                                           ; preds = %do.cond
  br label %do.body47, !dbg !869

do.body47:                                        ; preds = %land.end, %do.end
  %87 = load ptr, ptr %j, align 8, !dbg !869, !tbaa !589
  %incdec.ptr48 = getelementptr inbounds %struct.elem_t, ptr %87, i32 -1, !dbg !869
  store ptr %incdec.ptr48, ptr %j, align 8, !dbg !869, !tbaa !589
  br label %do.cond49, !dbg !869

do.cond49:                                        ; preds = %do.body47
  %88 = load ptr, ptr %i, align 8, !dbg !869, !tbaa !589
  %89 = load ptr, ptr %j, align 8, !dbg !869, !tbaa !589
  %cmp50 = icmp ule ptr %88, %89, !dbg !869
  br i1 %cmp50, label %land.rhs, label %land.end, !dbg !869

land.rhs:                                         ; preds = %do.cond49
  %90 = load ptr, ptr %j, align 8, !dbg !869, !tbaa !589
  %91 = getelementptr inbounds { i32, ptr }, ptr %rp, i32 0, i32 0, !dbg !869
  %92 = load i32, ptr %91, align 8, !dbg !869
  %93 = getelementptr inbounds { i32, ptr }, ptr %rp, i32 0, i32 1, !dbg !869
  %94 = load ptr, ptr %93, align 8, !dbg !869
  %95 = getelementptr inbounds { i32, ptr }, ptr %90, i32 0, i32 0, !dbg !869
  %96 = load i32, ptr %95, align 8, !dbg !869
  %97 = getelementptr inbounds { i32, ptr }, ptr %90, i32 0, i32 1, !dbg !869
  %98 = load ptr, ptr %97, align 8, !dbg !869
  %call52 = call i32 @elem_lt(i32 %92, ptr %94, i32 %96, ptr %98), !dbg !869
  %tobool53 = icmp ne i32 %call52, 0, !dbg !869
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond49
  %99 = phi i1 [ false, %do.cond49 ], [ %tobool53, %land.rhs ], !dbg !874
  br i1 %99, label %do.body47, label %do.end54, !dbg !869, !llvm.loop !875

do.end54:                                         ; preds = %land.end
  %100 = load ptr, ptr %j, align 8, !dbg !876, !tbaa !589
  %101 = load ptr, ptr %i, align 8, !dbg !876, !tbaa !589
  %cmp55 = icmp ule ptr %100, %101, !dbg !876
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !869

if.then57:                                        ; preds = %do.end54
  br label %for.end59, !dbg !876

if.end58:                                         ; preds = %do.end54
  %102 = load ptr, ptr %i, align 8, !dbg !869, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %swap_tmp, ptr align 8 %102, i64 16, i1 false), !dbg !869, !tbaa.struct !606
  %103 = load ptr, ptr %i, align 8, !dbg !869, !tbaa !589
  %104 = load ptr, ptr %j, align 8, !dbg !869, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %103, ptr align 8 %104, i64 16, i1 false), !dbg !869, !tbaa.struct !606
  %105 = load ptr, ptr %j, align 8, !dbg !869, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %105, ptr align 8 %swap_tmp, i64 16, i1 false), !dbg !869, !tbaa.struct !606
  br label %for.cond44, !dbg !878, !llvm.loop !879

for.end59:                                        ; preds = %if.then57
  %106 = load ptr, ptr %i, align 8, !dbg !855, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %swap_tmp, ptr align 8 %106, i64 16, i1 false), !dbg !855, !tbaa.struct !606
  %107 = load ptr, ptr %i, align 8, !dbg !855, !tbaa !589
  %108 = load ptr, ptr %t, align 8, !dbg !855, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %107, ptr align 8 %108, i64 16, i1 false), !dbg !855, !tbaa.struct !606
  %109 = load ptr, ptr %t, align 8, !dbg !855, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %109, ptr align 8 %swap_tmp, i64 16, i1 false), !dbg !855, !tbaa.struct !606
  %110 = load ptr, ptr %i, align 8, !dbg !881, !tbaa !589
  %111 = load ptr, ptr %s, align 8, !dbg !881, !tbaa !589
  %sub.ptr.lhs.cast60 = ptrtoint ptr %110 to i64, !dbg !881
  %sub.ptr.rhs.cast61 = ptrtoint ptr %111 to i64, !dbg !881
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61, !dbg !881
  %sub.ptr.div63 = sdiv exact i64 %sub.ptr.sub62, 16, !dbg !881
  %112 = load ptr, ptr %t, align 8, !dbg !881, !tbaa !589
  %113 = load ptr, ptr %i, align 8, !dbg !881, !tbaa !589
  %sub.ptr.lhs.cast64 = ptrtoint ptr %112 to i64, !dbg !881
  %sub.ptr.rhs.cast65 = ptrtoint ptr %113 to i64, !dbg !881
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65, !dbg !881
  %sub.ptr.div67 = sdiv exact i64 %sub.ptr.sub66, 16, !dbg !881
  %cmp68 = icmp sgt i64 %sub.ptr.div63, %sub.ptr.div67, !dbg !881
  br i1 %cmp68, label %if.then70, label %if.else92, !dbg !855

if.then70:                                        ; preds = %for.end59
  %114 = load ptr, ptr %i, align 8, !dbg !883, !tbaa !589
  %115 = load ptr, ptr %s, align 8, !dbg !883, !tbaa !589
  %sub.ptr.lhs.cast71 = ptrtoint ptr %114 to i64, !dbg !883
  %sub.ptr.rhs.cast72 = ptrtoint ptr %115 to i64, !dbg !883
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72, !dbg !883
  %sub.ptr.div74 = sdiv exact i64 %sub.ptr.sub73, 16, !dbg !883
  %cmp75 = icmp sgt i64 %sub.ptr.div74, 16, !dbg !883
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !886

if.then77:                                        ; preds = %if.then70
  %116 = load ptr, ptr %s, align 8, !dbg !887, !tbaa !589
  %117 = load ptr, ptr %top, align 8, !dbg !887, !tbaa !589
  %left = getelementptr inbounds %struct.ks_isort_stack_t, ptr %117, i32 0, i32 0, !dbg !887
  store ptr %116, ptr %left, align 8, !dbg !887, !tbaa !889
  %118 = load ptr, ptr %i, align 8, !dbg !887, !tbaa !589
  %add.ptr78 = getelementptr inbounds %struct.elem_t, ptr %118, i64 -1, !dbg !887
  %119 = load ptr, ptr %top, align 8, !dbg !887, !tbaa !589
  %right = getelementptr inbounds %struct.ks_isort_stack_t, ptr %119, i32 0, i32 1, !dbg !887
  store ptr %add.ptr78, ptr %right, align 8, !dbg !887, !tbaa !891
  %120 = load i32, ptr %d, align 4, !dbg !887, !tbaa !592
  %121 = load ptr, ptr %top, align 8, !dbg !887, !tbaa !589
  %depth = getelementptr inbounds %struct.ks_isort_stack_t, ptr %121, i32 0, i32 2, !dbg !887
  store i32 %120, ptr %depth, align 8, !dbg !887, !tbaa !892
  %122 = load ptr, ptr %top, align 8, !dbg !887, !tbaa !589
  %incdec.ptr79 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %122, i32 1, !dbg !887
  store ptr %incdec.ptr79, ptr %top, align 8, !dbg !887, !tbaa !589
  br label %if.end80, !dbg !887

if.end80:                                         ; preds = %if.then77, %if.then70
  %123 = load ptr, ptr %t, align 8, !dbg !886, !tbaa !589
  %124 = load ptr, ptr %i, align 8, !dbg !886, !tbaa !589
  %sub.ptr.lhs.cast81 = ptrtoint ptr %123 to i64, !dbg !886
  %sub.ptr.rhs.cast82 = ptrtoint ptr %124 to i64, !dbg !886
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82, !dbg !886
  %sub.ptr.div84 = sdiv exact i64 %sub.ptr.sub83, 16, !dbg !886
  %cmp85 = icmp sgt i64 %sub.ptr.div84, 16, !dbg !886
  br i1 %cmp85, label %cond.true87, label %cond.false89, !dbg !886

cond.true87:                                      ; preds = %if.end80
  %125 = load ptr, ptr %i, align 8, !dbg !886, !tbaa !589
  %add.ptr88 = getelementptr inbounds %struct.elem_t, ptr %125, i64 1, !dbg !886
  br label %cond.end90, !dbg !886

cond.false89:                                     ; preds = %if.end80
  %126 = load ptr, ptr %t, align 8, !dbg !886, !tbaa !589
  br label %cond.end90, !dbg !886

cond.end90:                                       ; preds = %cond.false89, %cond.true87
  %cond91 = phi ptr [ %add.ptr88, %cond.true87 ], [ %126, %cond.false89 ], !dbg !886
  store ptr %cond91, ptr %s, align 8, !dbg !886, !tbaa !589
  br label %if.end117, !dbg !886

if.else92:                                        ; preds = %for.end59
  %127 = load ptr, ptr %t, align 8, !dbg !893, !tbaa !589
  %128 = load ptr, ptr %i, align 8, !dbg !893, !tbaa !589
  %sub.ptr.lhs.cast93 = ptrtoint ptr %127 to i64, !dbg !893
  %sub.ptr.rhs.cast94 = ptrtoint ptr %128 to i64, !dbg !893
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94, !dbg !893
  %sub.ptr.div96 = sdiv exact i64 %sub.ptr.sub95, 16, !dbg !893
  %cmp97 = icmp sgt i64 %sub.ptr.div96, 16, !dbg !893
  br i1 %cmp97, label %if.then99, label %if.end105, !dbg !896

if.then99:                                        ; preds = %if.else92
  %129 = load ptr, ptr %i, align 8, !dbg !897, !tbaa !589
  %add.ptr100 = getelementptr inbounds %struct.elem_t, ptr %129, i64 1, !dbg !897
  %130 = load ptr, ptr %top, align 8, !dbg !897, !tbaa !589
  %left101 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %130, i32 0, i32 0, !dbg !897
  store ptr %add.ptr100, ptr %left101, align 8, !dbg !897, !tbaa !889
  %131 = load ptr, ptr %t, align 8, !dbg !897, !tbaa !589
  %132 = load ptr, ptr %top, align 8, !dbg !897, !tbaa !589
  %right102 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %132, i32 0, i32 1, !dbg !897
  store ptr %131, ptr %right102, align 8, !dbg !897, !tbaa !891
  %133 = load i32, ptr %d, align 4, !dbg !897, !tbaa !592
  %134 = load ptr, ptr %top, align 8, !dbg !897, !tbaa !589
  %depth103 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %134, i32 0, i32 2, !dbg !897
  store i32 %133, ptr %depth103, align 8, !dbg !897, !tbaa !892
  %135 = load ptr, ptr %top, align 8, !dbg !897, !tbaa !589
  %incdec.ptr104 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %135, i32 1, !dbg !897
  store ptr %incdec.ptr104, ptr %top, align 8, !dbg !897, !tbaa !589
  br label %if.end105, !dbg !897

if.end105:                                        ; preds = %if.then99, %if.else92
  %136 = load ptr, ptr %i, align 8, !dbg !896, !tbaa !589
  %137 = load ptr, ptr %s, align 8, !dbg !896, !tbaa !589
  %sub.ptr.lhs.cast106 = ptrtoint ptr %136 to i64, !dbg !896
  %sub.ptr.rhs.cast107 = ptrtoint ptr %137 to i64, !dbg !896
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107, !dbg !896
  %sub.ptr.div109 = sdiv exact i64 %sub.ptr.sub108, 16, !dbg !896
  %cmp110 = icmp sgt i64 %sub.ptr.div109, 16, !dbg !896
  br i1 %cmp110, label %cond.true112, label %cond.false114, !dbg !896

cond.true112:                                     ; preds = %if.end105
  %138 = load ptr, ptr %i, align 8, !dbg !896, !tbaa !589
  %add.ptr113 = getelementptr inbounds %struct.elem_t, ptr %138, i64 -1, !dbg !896
  br label %cond.end115, !dbg !896

cond.false114:                                    ; preds = %if.end105
  %139 = load ptr, ptr %s, align 8, !dbg !896, !tbaa !589
  br label %cond.end115, !dbg !896

cond.end115:                                      ; preds = %cond.false114, %cond.true112
  %cond116 = phi ptr [ %add.ptr113, %cond.true112 ], [ %139, %cond.false114 ], !dbg !896
  store ptr %cond116, ptr %t, align 8, !dbg !896, !tbaa !589
  br label %if.end117

if.end117:                                        ; preds = %cond.end115, %cond.end90
  br label %if.end129, !dbg !855

if.else118:                                       ; preds = %while.body
  %140 = load ptr, ptr %top, align 8, !dbg !899, !tbaa !589
  %141 = load ptr, ptr %stack, align 8, !dbg !899, !tbaa !589
  %cmp119 = icmp eq ptr %140, %141, !dbg !899
  br i1 %cmp119, label %if.then121, label %if.else123, !dbg !902

if.then121:                                       ; preds = %if.else118
  %142 = load ptr, ptr %stack, align 8, !dbg !903, !tbaa !589
  call void @free(ptr noundef %142) #14, !dbg !903
  %143 = load ptr, ptr %a.addr, align 8, !dbg !903, !tbaa !589
  %144 = load ptr, ptr %a.addr, align 8, !dbg !903, !tbaa !589
  %145 = load i64, ptr %n.addr, align 8, !dbg !903, !tbaa !584
  %add.ptr122 = getelementptr inbounds %struct.elem_t, ptr %144, i64 %145, !dbg !903
  call void @__ks_insertsort_bamshuf(ptr noundef %143, ptr noundef %add.ptr122), !dbg !903
  store i32 0, ptr %retval, align 4, !dbg !903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !903

if.else123:                                       ; preds = %if.else118
  %146 = load ptr, ptr %top, align 8, !dbg !905, !tbaa !589
  %incdec.ptr124 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %146, i32 -1, !dbg !905
  store ptr %incdec.ptr124, ptr %top, align 8, !dbg !905, !tbaa !589
  %147 = load ptr, ptr %top, align 8, !dbg !905, !tbaa !589
  %left125 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %147, i32 0, i32 0, !dbg !905
  %148 = load ptr, ptr %left125, align 8, !dbg !905, !tbaa !889
  store ptr %148, ptr %s, align 8, !dbg !905, !tbaa !589
  %149 = load ptr, ptr %top, align 8, !dbg !905, !tbaa !589
  %right126 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %149, i32 0, i32 1, !dbg !905
  %150 = load ptr, ptr %right126, align 8, !dbg !905, !tbaa !891
  store ptr %150, ptr %t, align 8, !dbg !905, !tbaa !589
  %151 = load ptr, ptr %top, align 8, !dbg !905, !tbaa !589
  %depth127 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %151, i32 0, i32 2, !dbg !905
  %152 = load i32, ptr %depth127, align 8, !dbg !905, !tbaa !892
  store i32 %152, ptr %d, align 4, !dbg !905, !tbaa !592
  br label %if.end128

if.end128:                                        ; preds = %if.else123
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end117
  br label %while.cond, !dbg !832, !llvm.loop !858

cleanup:                                          ; preds = %if.then121, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 16, ptr %swap_tmp) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 16, ptr %rp) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #14, !dbg !832
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #14, !dbg !832
  %153 = load i32, ptr %retval, align 4, !dbg !832
  ret i32 %153, !dbg !832
}

; Function Attrs: nounwind uwtable
define dso_local { i32, ptr } @ks_ksmall_bamshuf(i64 noundef %n, ptr noundef %arr, i64 noundef %kk) #0 !dbg !907 {
entry:
  %retval = alloca %struct.elem_t, align 8
  %n.addr = alloca i64, align 8
  %arr.addr = alloca ptr, align 8
  %kk.addr = alloca i64, align 8
  %low = alloca ptr, align 8
  %high = alloca ptr, align 8
  %k = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %hh = alloca ptr, align 8
  %mid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca %struct.elem_t, align 8
  %t13 = alloca %struct.elem_t, align 8
  %t18 = alloca %struct.elem_t, align 8
  %t23 = alloca %struct.elem_t, align 8
  %t25 = alloca %struct.elem_t, align 8
  %t41 = alloca %struct.elem_t, align 8
  %t42 = alloca %struct.elem_t, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !911, metadata !DIExpression()), !dbg !946
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %arr.addr, metadata !912, metadata !DIExpression()), !dbg !946
  store i64 %kk, ptr %kk.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %kk.addr, metadata !913, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %low, metadata !914, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %high, metadata !915, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #14, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !916, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #14, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !917, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %hh) #14, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %hh, metadata !918, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %mid) #14, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %mid, metadata !919, metadata !DIExpression()), !dbg !946
  %0 = load ptr, ptr %arr.addr, align 8, !dbg !946, !tbaa !589
  store ptr %0, ptr %low, align 8, !dbg !946, !tbaa !589
  %1 = load ptr, ptr %arr.addr, align 8, !dbg !946, !tbaa !589
  %2 = load i64, ptr %n.addr, align 8, !dbg !946, !tbaa !584
  %add.ptr = getelementptr inbounds %struct.elem_t, ptr %1, i64 %2, !dbg !946
  %add.ptr1 = getelementptr inbounds %struct.elem_t, ptr %add.ptr, i64 -1, !dbg !946
  store ptr %add.ptr1, ptr %high, align 8, !dbg !946, !tbaa !589
  %3 = load ptr, ptr %arr.addr, align 8, !dbg !946, !tbaa !589
  %4 = load i64, ptr %kk.addr, align 8, !dbg !946, !tbaa !584
  %add.ptr2 = getelementptr inbounds %struct.elem_t, ptr %3, i64 %4, !dbg !946
  store ptr %add.ptr2, ptr %k, align 8, !dbg !946, !tbaa !589
  br label %for.cond, !dbg !946

for.cond:                                         ; preds = %if.end49, %entry
  %5 = load ptr, ptr %high, align 8, !dbg !947, !tbaa !589
  %6 = load ptr, ptr %low, align 8, !dbg !947, !tbaa !589
  %cmp = icmp ule ptr %5, %6, !dbg !947
  br i1 %cmp, label %if.then, label %if.end, !dbg !949

if.then:                                          ; preds = %for.cond
  %7 = load ptr, ptr %k, align 8, !dbg !947, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %7, i64 16, i1 false), !dbg !947, !tbaa.struct !606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !947

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %high, align 8, !dbg !950, !tbaa !589
  %9 = load ptr, ptr %low, align 8, !dbg !950, !tbaa !589
  %add.ptr3 = getelementptr inbounds %struct.elem_t, ptr %9, i64 1, !dbg !950
  %cmp4 = icmp eq ptr %8, %add.ptr3, !dbg !950
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !949

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %high, align 8, !dbg !951, !tbaa !589
  %11 = load ptr, ptr %low, align 8, !dbg !951, !tbaa !589
  %12 = getelementptr inbounds { i32, ptr }, ptr %10, i32 0, i32 0, !dbg !951
  %13 = load i32, ptr %12, align 8, !dbg !951
  %14 = getelementptr inbounds { i32, ptr }, ptr %10, i32 0, i32 1, !dbg !951
  %15 = load ptr, ptr %14, align 8, !dbg !951
  %16 = getelementptr inbounds { i32, ptr }, ptr %11, i32 0, i32 0, !dbg !951
  %17 = load i32, ptr %16, align 8, !dbg !951
  %18 = getelementptr inbounds { i32, ptr }, ptr %11, i32 0, i32 1, !dbg !951
  %19 = load ptr, ptr %18, align 8, !dbg !951
  %call = call i32 @elem_lt(i32 %13, ptr %15, i32 %17, ptr %19), !dbg !951
  %tobool = icmp ne i32 %call, 0, !dbg !951
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !952

if.then6:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 16, ptr %t) #14, !dbg !953
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !920, metadata !DIExpression()), !dbg !953
  %20 = load ptr, ptr %low, align 8, !dbg !953, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %20, i64 16, i1 false), !dbg !953, !tbaa.struct !606
  %21 = load ptr, ptr %low, align 8, !dbg !953, !tbaa !589
  %22 = load ptr, ptr %high, align 8, !dbg !953, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %22, i64 16, i1 false), !dbg !953, !tbaa.struct !606
  %23 = load ptr, ptr %high, align 8, !dbg !953, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %t, i64 16, i1 false), !dbg !953, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t) #14, !dbg !951
  br label %if.end7, !dbg !953

if.end7:                                          ; preds = %if.then6, %if.then5
  %24 = load ptr, ptr %k, align 8, !dbg !952, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %24, i64 16, i1 false), !dbg !952, !tbaa.struct !606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !952

if.end8:                                          ; preds = %if.end
  %25 = load ptr, ptr %low, align 8, !dbg !949, !tbaa !589
  %26 = load ptr, ptr %high, align 8, !dbg !949, !tbaa !589
  %27 = load ptr, ptr %low, align 8, !dbg !949, !tbaa !589
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i64, !dbg !949
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i64, !dbg !949
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !949
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16, !dbg !949
  %div = sdiv i64 %sub.ptr.div, 2, !dbg !949
  %add.ptr9 = getelementptr inbounds %struct.elem_t, ptr %25, i64 %div, !dbg !949
  store ptr %add.ptr9, ptr %mid, align 8, !dbg !949, !tbaa !589
  %28 = load ptr, ptr %high, align 8, !dbg !954, !tbaa !589
  %29 = load ptr, ptr %mid, align 8, !dbg !954, !tbaa !589
  %30 = getelementptr inbounds { i32, ptr }, ptr %28, i32 0, i32 0, !dbg !954
  %31 = load i32, ptr %30, align 8, !dbg !954
  %32 = getelementptr inbounds { i32, ptr }, ptr %28, i32 0, i32 1, !dbg !954
  %33 = load ptr, ptr %32, align 8, !dbg !954
  %34 = getelementptr inbounds { i32, ptr }, ptr %29, i32 0, i32 0, !dbg !954
  %35 = load i32, ptr %34, align 8, !dbg !954
  %36 = getelementptr inbounds { i32, ptr }, ptr %29, i32 0, i32 1, !dbg !954
  %37 = load ptr, ptr %36, align 8, !dbg !954
  %call10 = call i32 @elem_lt(i32 %31, ptr %33, i32 %35, ptr %37), !dbg !954
  %tobool11 = icmp ne i32 %call10, 0, !dbg !954
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !949

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 16, ptr %t13) #14, !dbg !955
  tail call void @llvm.dbg.declare(metadata ptr %t13, metadata !928, metadata !DIExpression()), !dbg !955
  %38 = load ptr, ptr %mid, align 8, !dbg !955, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t13, ptr align 8 %38, i64 16, i1 false), !dbg !955, !tbaa.struct !606
  %39 = load ptr, ptr %mid, align 8, !dbg !955, !tbaa !589
  %40 = load ptr, ptr %high, align 8, !dbg !955, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %40, i64 16, i1 false), !dbg !955, !tbaa.struct !606
  %41 = load ptr, ptr %high, align 8, !dbg !955, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %41, ptr align 8 %t13, i64 16, i1 false), !dbg !955, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t13) #14, !dbg !954
  br label %if.end14, !dbg !955

if.end14:                                         ; preds = %if.then12, %if.end8
  %42 = load ptr, ptr %high, align 8, !dbg !956, !tbaa !589
  %43 = load ptr, ptr %low, align 8, !dbg !956, !tbaa !589
  %44 = getelementptr inbounds { i32, ptr }, ptr %42, i32 0, i32 0, !dbg !956
  %45 = load i32, ptr %44, align 8, !dbg !956
  %46 = getelementptr inbounds { i32, ptr }, ptr %42, i32 0, i32 1, !dbg !956
  %47 = load ptr, ptr %46, align 8, !dbg !956
  %48 = getelementptr inbounds { i32, ptr }, ptr %43, i32 0, i32 0, !dbg !956
  %49 = load i32, ptr %48, align 8, !dbg !956
  %50 = getelementptr inbounds { i32, ptr }, ptr %43, i32 0, i32 1, !dbg !956
  %51 = load ptr, ptr %50, align 8, !dbg !956
  %call15 = call i32 @elem_lt(i32 %45, ptr %47, i32 %49, ptr %51), !dbg !956
  %tobool16 = icmp ne i32 %call15, 0, !dbg !956
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !949

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 16, ptr %t18) #14, !dbg !957
  tail call void @llvm.dbg.declare(metadata ptr %t18, metadata !931, metadata !DIExpression()), !dbg !957
  %52 = load ptr, ptr %low, align 8, !dbg !957, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t18, ptr align 8 %52, i64 16, i1 false), !dbg !957, !tbaa.struct !606
  %53 = load ptr, ptr %low, align 8, !dbg !957, !tbaa !589
  %54 = load ptr, ptr %high, align 8, !dbg !957, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %53, ptr align 8 %54, i64 16, i1 false), !dbg !957, !tbaa.struct !606
  %55 = load ptr, ptr %high, align 8, !dbg !957, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %55, ptr align 8 %t18, i64 16, i1 false), !dbg !957, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t18) #14, !dbg !956
  br label %if.end19, !dbg !957

if.end19:                                         ; preds = %if.then17, %if.end14
  %56 = load ptr, ptr %low, align 8, !dbg !958, !tbaa !589
  %57 = load ptr, ptr %mid, align 8, !dbg !958, !tbaa !589
  %58 = getelementptr inbounds { i32, ptr }, ptr %56, i32 0, i32 0, !dbg !958
  %59 = load i32, ptr %58, align 8, !dbg !958
  %60 = getelementptr inbounds { i32, ptr }, ptr %56, i32 0, i32 1, !dbg !958
  %61 = load ptr, ptr %60, align 8, !dbg !958
  %62 = getelementptr inbounds { i32, ptr }, ptr %57, i32 0, i32 0, !dbg !958
  %63 = load i32, ptr %62, align 8, !dbg !958
  %64 = getelementptr inbounds { i32, ptr }, ptr %57, i32 0, i32 1, !dbg !958
  %65 = load ptr, ptr %64, align 8, !dbg !958
  %call20 = call i32 @elem_lt(i32 %59, ptr %61, i32 %63, ptr %65), !dbg !958
  %tobool21 = icmp ne i32 %call20, 0, !dbg !958
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !949

if.then22:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 16, ptr %t23) #14, !dbg !959
  tail call void @llvm.dbg.declare(metadata ptr %t23, metadata !934, metadata !DIExpression()), !dbg !959
  %66 = load ptr, ptr %mid, align 8, !dbg !959, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t23, ptr align 8 %66, i64 16, i1 false), !dbg !959, !tbaa.struct !606
  %67 = load ptr, ptr %mid, align 8, !dbg !959, !tbaa !589
  %68 = load ptr, ptr %low, align 8, !dbg !959, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %67, ptr align 8 %68, i64 16, i1 false), !dbg !959, !tbaa.struct !606
  %69 = load ptr, ptr %low, align 8, !dbg !959, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %69, ptr align 8 %t23, i64 16, i1 false), !dbg !959, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t23) #14, !dbg !958
  br label %if.end24, !dbg !959

if.end24:                                         ; preds = %if.then22, %if.end19
  call void @llvm.lifetime.start.p0(i64 16, ptr %t25) #14, !dbg !960
  tail call void @llvm.dbg.declare(metadata ptr %t25, metadata !937, metadata !DIExpression()), !dbg !960
  %70 = load ptr, ptr %mid, align 8, !dbg !960, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t25, ptr align 8 %70, i64 16, i1 false), !dbg !960, !tbaa.struct !606
  %71 = load ptr, ptr %mid, align 8, !dbg !960, !tbaa !589
  %72 = load ptr, ptr %low, align 8, !dbg !960, !tbaa !589
  %add.ptr26 = getelementptr inbounds %struct.elem_t, ptr %72, i64 1, !dbg !960
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %71, ptr align 8 %add.ptr26, i64 16, i1 false), !dbg !960, !tbaa.struct !606
  %73 = load ptr, ptr %low, align 8, !dbg !960, !tbaa !589
  %add.ptr27 = getelementptr inbounds %struct.elem_t, ptr %73, i64 1, !dbg !960
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr27, ptr align 8 %t25, i64 16, i1 false), !dbg !960, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t25) #14, !dbg !949
  %74 = load ptr, ptr %low, align 8, !dbg !949, !tbaa !589
  %add.ptr28 = getelementptr inbounds %struct.elem_t, ptr %74, i64 1, !dbg !949
  store ptr %add.ptr28, ptr %ll, align 8, !dbg !949, !tbaa !589
  %75 = load ptr, ptr %high, align 8, !dbg !949, !tbaa !589
  store ptr %75, ptr %hh, align 8, !dbg !949, !tbaa !589
  br label %for.cond29, !dbg !949

for.cond29:                                       ; preds = %if.end40, %if.end24
  br label %do.body, !dbg !961

do.body:                                          ; preds = %do.cond, %for.cond29
  %76 = load ptr, ptr %ll, align 8, !dbg !961, !tbaa !589
  %incdec.ptr = getelementptr inbounds %struct.elem_t, ptr %76, i32 1, !dbg !961
  store ptr %incdec.ptr, ptr %ll, align 8, !dbg !961, !tbaa !589
  br label %do.cond, !dbg !961

do.cond:                                          ; preds = %do.body
  %77 = load ptr, ptr %ll, align 8, !dbg !961, !tbaa !589
  %78 = load ptr, ptr %low, align 8, !dbg !961, !tbaa !589
  %79 = getelementptr inbounds { i32, ptr }, ptr %77, i32 0, i32 0, !dbg !961
  %80 = load i32, ptr %79, align 8, !dbg !961
  %81 = getelementptr inbounds { i32, ptr }, ptr %77, i32 0, i32 1, !dbg !961
  %82 = load ptr, ptr %81, align 8, !dbg !961
  %83 = getelementptr inbounds { i32, ptr }, ptr %78, i32 0, i32 0, !dbg !961
  %84 = load i32, ptr %83, align 8, !dbg !961
  %85 = getelementptr inbounds { i32, ptr }, ptr %78, i32 0, i32 1, !dbg !961
  %86 = load ptr, ptr %85, align 8, !dbg !961
  %call30 = call i32 @elem_lt(i32 %80, ptr %82, i32 %84, ptr %86), !dbg !961
  %tobool31 = icmp ne i32 %call30, 0, !dbg !961
  br i1 %tobool31, label %do.body, label %do.end, !dbg !961, !llvm.loop !962

do.end:                                           ; preds = %do.cond
  br label %do.body32, !dbg !961

do.body32:                                        ; preds = %do.cond34, %do.end
  %87 = load ptr, ptr %hh, align 8, !dbg !961, !tbaa !589
  %incdec.ptr33 = getelementptr inbounds %struct.elem_t, ptr %87, i32 -1, !dbg !961
  store ptr %incdec.ptr33, ptr %hh, align 8, !dbg !961, !tbaa !589
  br label %do.cond34, !dbg !961

do.cond34:                                        ; preds = %do.body32
  %88 = load ptr, ptr %low, align 8, !dbg !961, !tbaa !589
  %89 = load ptr, ptr %hh, align 8, !dbg !961, !tbaa !589
  %90 = getelementptr inbounds { i32, ptr }, ptr %88, i32 0, i32 0, !dbg !961
  %91 = load i32, ptr %90, align 8, !dbg !961
  %92 = getelementptr inbounds { i32, ptr }, ptr %88, i32 0, i32 1, !dbg !961
  %93 = load ptr, ptr %92, align 8, !dbg !961
  %94 = getelementptr inbounds { i32, ptr }, ptr %89, i32 0, i32 0, !dbg !961
  %95 = load i32, ptr %94, align 8, !dbg !961
  %96 = getelementptr inbounds { i32, ptr }, ptr %89, i32 0, i32 1, !dbg !961
  %97 = load ptr, ptr %96, align 8, !dbg !961
  %call35 = call i32 @elem_lt(i32 %91, ptr %93, i32 %95, ptr %97), !dbg !961
  %tobool36 = icmp ne i32 %call35, 0, !dbg !961
  br i1 %tobool36, label %do.body32, label %do.end37, !dbg !961, !llvm.loop !963

do.end37:                                         ; preds = %do.cond34
  %98 = load ptr, ptr %hh, align 8, !dbg !964, !tbaa !589
  %99 = load ptr, ptr %ll, align 8, !dbg !964, !tbaa !589
  %cmp38 = icmp ult ptr %98, %99, !dbg !964
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !961

if.then39:                                        ; preds = %do.end37
  br label %for.end, !dbg !964

if.end40:                                         ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 16, ptr %t41) #14, !dbg !966
  tail call void @llvm.dbg.declare(metadata ptr %t41, metadata !939, metadata !DIExpression()), !dbg !966
  %100 = load ptr, ptr %ll, align 8, !dbg !966, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t41, ptr align 8 %100, i64 16, i1 false), !dbg !966, !tbaa.struct !606
  %101 = load ptr, ptr %ll, align 8, !dbg !966, !tbaa !589
  %102 = load ptr, ptr %hh, align 8, !dbg !966, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %101, ptr align 8 %102, i64 16, i1 false), !dbg !966, !tbaa.struct !606
  %103 = load ptr, ptr %hh, align 8, !dbg !966, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %103, ptr align 8 %t41, i64 16, i1 false), !dbg !966, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t41) #14, !dbg !961
  br label %for.cond29, !dbg !967, !llvm.loop !968

for.end:                                          ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 16, ptr %t42) #14, !dbg !970
  tail call void @llvm.dbg.declare(metadata ptr %t42, metadata !944, metadata !DIExpression()), !dbg !970
  %104 = load ptr, ptr %low, align 8, !dbg !970, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t42, ptr align 8 %104, i64 16, i1 false), !dbg !970, !tbaa.struct !606
  %105 = load ptr, ptr %low, align 8, !dbg !970, !tbaa !589
  %106 = load ptr, ptr %hh, align 8, !dbg !970, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %105, ptr align 8 %106, i64 16, i1 false), !dbg !970, !tbaa.struct !606
  %107 = load ptr, ptr %hh, align 8, !dbg !970, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %107, ptr align 8 %t42, i64 16, i1 false), !dbg !970, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %t42) #14, !dbg !949
  %108 = load ptr, ptr %hh, align 8, !dbg !971, !tbaa !589
  %109 = load ptr, ptr %k, align 8, !dbg !971, !tbaa !589
  %cmp43 = icmp ule ptr %108, %109, !dbg !971
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !949

if.then44:                                        ; preds = %for.end
  %110 = load ptr, ptr %ll, align 8, !dbg !971, !tbaa !589
  store ptr %110, ptr %low, align 8, !dbg !971, !tbaa !589
  br label %if.end45, !dbg !971

if.end45:                                         ; preds = %if.then44, %for.end
  %111 = load ptr, ptr %hh, align 8, !dbg !973, !tbaa !589
  %112 = load ptr, ptr %k, align 8, !dbg !973, !tbaa !589
  %cmp46 = icmp uge ptr %111, %112, !dbg !973
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !949

if.then47:                                        ; preds = %if.end45
  %113 = load ptr, ptr %hh, align 8, !dbg !973, !tbaa !589
  %add.ptr48 = getelementptr inbounds %struct.elem_t, ptr %113, i64 -1, !dbg !973
  store ptr %add.ptr48, ptr %high, align 8, !dbg !973, !tbaa !589
  br label %if.end49, !dbg !973

if.end49:                                         ; preds = %if.then47, %if.end45
  br label %for.cond, !dbg !975, !llvm.loop !976

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mid) #14, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %hh) #14, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #14, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #14, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !946
  %114 = load { i32, ptr }, ptr %retval, align 8, !dbg !946
  ret { i32, ptr } %114, !dbg !946
}

; Function Attrs: nounwind uwtable
define dso_local void @ks_shuffle_bamshuf(i64 noundef %n, ptr noundef %a) #0 !dbg !978 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca %struct.elem_t, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !980, metadata !DIExpression()), !dbg !988
  store ptr %a, ptr %a.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !988
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !988
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !983, metadata !DIExpression()), !dbg !988
  %0 = load i64, ptr %n.addr, align 8, !dbg !989, !tbaa !584
  %conv = trunc i64 %0 to i32, !dbg !989
  store i32 %conv, ptr %i, align 4, !dbg !989, !tbaa !592
  br label %for.cond, !dbg !989

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !990, !tbaa !592
  %cmp = icmp sgt i32 %1, 1, !dbg !990
  br i1 %cmp, label %for.body, label %for.end, !dbg !989

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #14, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !984, metadata !DIExpression()), !dbg !991
  %call = call double @hts_drand48(), !dbg !991
  %2 = load i32, ptr %i, align 4, !dbg !991, !tbaa !592
  %conv2 = sitofp i32 %2 to double, !dbg !991
  %mul = fmul double %call, %conv2, !dbg !991
  %conv3 = fptosi double %mul to i32, !dbg !991
  store i32 %conv3, ptr %j, align 4, !dbg !991, !tbaa !592
  %3 = load ptr, ptr %a.addr, align 8, !dbg !991, !tbaa !589
  %4 = load i32, ptr %j, align 4, !dbg !991, !tbaa !592
  %idxprom = sext i32 %4 to i64, !dbg !991
  %arrayidx = getelementptr inbounds %struct.elem_t, ptr %3, i64 %idxprom, !dbg !991
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %arrayidx, i64 16, i1 false), !dbg !991, !tbaa.struct !606
  %5 = load ptr, ptr %a.addr, align 8, !dbg !991, !tbaa !589
  %6 = load i32, ptr %j, align 4, !dbg !991, !tbaa !592
  %idxprom4 = sext i32 %6 to i64, !dbg !991
  %arrayidx5 = getelementptr inbounds %struct.elem_t, ptr %5, i64 %idxprom4, !dbg !991
  %7 = load ptr, ptr %a.addr, align 8, !dbg !991, !tbaa !589
  %8 = load i32, ptr %i, align 4, !dbg !991, !tbaa !592
  %sub = sub nsw i32 %8, 1, !dbg !991
  %idxprom6 = sext i32 %sub to i64, !dbg !991
  %arrayidx7 = getelementptr inbounds %struct.elem_t, ptr %7, i64 %idxprom6, !dbg !991
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx5, ptr align 8 %arrayidx7, i64 16, i1 false), !dbg !991, !tbaa.struct !606
  %9 = load ptr, ptr %a.addr, align 8, !dbg !991, !tbaa !589
  %10 = load i32, ptr %i, align 4, !dbg !991, !tbaa !592
  %sub8 = sub nsw i32 %10, 1, !dbg !991
  %idxprom9 = sext i32 %sub8 to i64, !dbg !991
  %arrayidx10 = getelementptr inbounds %struct.elem_t, ptr %9, i64 %idxprom9, !dbg !991
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx10, ptr align 8 %tmp, i64 16, i1 false), !dbg !991, !tbaa.struct !606
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #14, !dbg !990
  br label %for.inc, !dbg !991

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !990, !tbaa !592
  %dec = add nsw i32 %11, -1, !dbg !990
  store i32 %dec, ptr %i, align 4, !dbg !990, !tbaa !592
  br label %for.cond, !dbg !990, !llvm.loop !992

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !988
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !988
  ret void, !dbg !988
}

declare !dbg !993 double @hts_drand48() #6

; Function Attrs: nounwind uwtable
define dso_local ptr @generate_prefix() #0 !dbg !996 {
entry:
  %retval = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  %pid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix) #14, !dbg !1002
  tail call void @llvm.dbg.declare(metadata ptr %prefix, metadata !1000, metadata !DIExpression()), !dbg !1003
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #14, !dbg !1004
  tail call void @llvm.dbg.declare(metadata ptr %pid, metadata !1001, metadata !DIExpression()), !dbg !1005
  %call = call i32 @getpid() #14, !dbg !1006
  store i32 %call, ptr %pid, align 4, !dbg !1005, !tbaa !592
  %call1 = call noalias ptr @malloc(i64 noundef 64) #15, !dbg !1007
  store ptr %call1, ptr %prefix, align 8, !dbg !1008, !tbaa !589
  %0 = load ptr, ptr %prefix, align 8, !dbg !1009, !tbaa !589
  %tobool = icmp ne ptr %0, null, !dbg !1009
  br i1 %tobool, label %if.end, label %if.then, !dbg !1011

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str), !dbg !1012
  store ptr null, ptr %retval, align 8, !dbg !1014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1014

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %prefix, align 8, !dbg !1015, !tbaa !589
  %2 = load i32, ptr %pid, align 4, !dbg !1016, !tbaa !592
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef 64, ptr noundef @.str.1, i32 noundef %2) #14, !dbg !1017
  %3 = load ptr, ptr %prefix, align 8, !dbg !1018, !tbaa !589
  store ptr %3, ptr %retval, align 8, !dbg !1019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1019

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #14, !dbg !1020
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix) #14, !dbg !1020
  %4 = load ptr, ptr %retval, align 8, !dbg !1020
  ret ptr %4, !dbg !1020
}

; Function Attrs: nounwind
declare !dbg !1021 i32 @getpid() #5

declare !dbg !1026 void @perror(ptr noundef) #6

; Function Attrs: nounwind
declare !dbg !1030 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main_bamshuf(i32 noundef %argc, ptr noundef %argv) #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %n_files = alloca i32, align 4
  %clevel = alloca i32, align 4
  %is_stdout = alloca i32, align 4
  %is_un = alloca i32, align 4
  %fast_coll = alloca i32, align 4
  %reads_store = alloca i32, align 4
  %ret = alloca i32, align 4
  %pre_mem = alloca i32, align 4
  %no_pg = alloca i32, align 4
  %output_file = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  %arg_list = alloca ptr, align 8
  %ga = alloca %struct.sam_global_args, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !505, metadata !DIExpression()), !dbg !1035
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !506, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !507, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_files) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %n_files, metadata !508, metadata !DIExpression()), !dbg !1039
  store i32 64, ptr %n_files, align 4, !dbg !1039, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %clevel) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %clevel, metadata !509, metadata !DIExpression()), !dbg !1040
  store i32 1, ptr %clevel, align 4, !dbg !1040, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_stdout) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %is_stdout, metadata !510, metadata !DIExpression()), !dbg !1041
  store i32 0, ptr %is_stdout, align 4, !dbg !1041, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_un) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %is_un, metadata !511, metadata !DIExpression()), !dbg !1042
  store i32 0, ptr %is_un, align 4, !dbg !1042, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %fast_coll) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %fast_coll, metadata !512, metadata !DIExpression()), !dbg !1043
  store i32 0, ptr %fast_coll, align 4, !dbg !1043, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %reads_store) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %reads_store, metadata !513, metadata !DIExpression()), !dbg !1044
  store i32 10000, ptr %reads_store, align 4, !dbg !1044, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !514, metadata !DIExpression()), !dbg !1045
  call void @llvm.lifetime.start.p0(i64 4, ptr %pre_mem) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %pre_mem, metadata !515, metadata !DIExpression()), !dbg !1046
  store i32 0, ptr %pre_mem, align 4, !dbg !1046, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_pg) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %no_pg, metadata !516, metadata !DIExpression()), !dbg !1047
  store i32 0, ptr %no_pg, align 4, !dbg !1047, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_file) #14, !dbg !1048
  tail call void @llvm.dbg.declare(metadata ptr %output_file, metadata !517, metadata !DIExpression()), !dbg !1049
  store ptr null, ptr %output_file, align 8, !dbg !1049, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix) #14, !dbg !1050
  tail call void @llvm.dbg.declare(metadata ptr %prefix, metadata !518, metadata !DIExpression()), !dbg !1051
  store ptr null, ptr %prefix, align 8, !dbg !1051, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg_list) #14, !dbg !1050
  tail call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !519, metadata !DIExpression()), !dbg !1052
  store ptr null, ptr %arg_list, align 8, !dbg !1052, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 80, ptr %ga) #14, !dbg !1053
  tail call void @llvm.dbg.declare(metadata ptr %ga, metadata !520, metadata !DIExpression()), !dbg !1054
  call void @llvm.memset.p0.i64(ptr align 8 %ga, i8 0, i64 80, i1 false), !dbg !1054
  br label %while.cond, !dbg !1055

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !1056, !tbaa !592
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !1057, !tbaa !589
  %call = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.11, ptr noundef @main_bamshuf.lopts, ptr noundef null) #14, !dbg !1058
  store i32 %call, ptr %c, align 4, !dbg !1059, !tbaa !592
  %cmp = icmp sge i32 %call, 0, !dbg !1060
  br i1 %cmp, label %while.body, label %while.end, !dbg !1055

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4, !dbg !1061, !tbaa !592
  switch i32 %2, label %sw.default [
    i32 110, label %sw.bb
    i32 108, label %sw.bb2
    i32 117, label %sw.bb4
    i32 79, label %sw.bb5
    i32 111, label %sw.bb6
    i32 102, label %sw.bb7
    i32 114, label %sw.bb8
    i32 1, label %sw.bb10
    i32 63, label %sw.bb13
  ], !dbg !1063

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8, !dbg !1064, !tbaa !589
  %call1 = call i32 @atoi(ptr noundef %3) #16, !dbg !1066
  store i32 %call1, ptr %n_files, align 4, !dbg !1067, !tbaa !592
  br label %sw.epilog, !dbg !1068

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr @optarg, align 8, !dbg !1069, !tbaa !589
  %call3 = call i32 @atoi(ptr noundef %4) #16, !dbg !1070
  store i32 %call3, ptr %clevel, align 4, !dbg !1071, !tbaa !592
  br label %sw.epilog, !dbg !1072

sw.bb4:                                           ; preds = %while.body
  store i32 1, ptr %is_un, align 4, !dbg !1073, !tbaa !592
  br label %sw.epilog, !dbg !1074

sw.bb5:                                           ; preds = %while.body
  store i32 1, ptr %is_stdout, align 4, !dbg !1075, !tbaa !592
  br label %sw.epilog, !dbg !1076

sw.bb6:                                           ; preds = %while.body
  %5 = load ptr, ptr @optarg, align 8, !dbg !1077, !tbaa !589
  store ptr %5, ptr %output_file, align 8, !dbg !1078, !tbaa !589
  br label %sw.epilog, !dbg !1079

sw.bb7:                                           ; preds = %while.body
  store i32 1, ptr %fast_coll, align 4, !dbg !1080, !tbaa !592
  br label %sw.epilog, !dbg !1081

sw.bb8:                                           ; preds = %while.body
  %6 = load ptr, ptr @optarg, align 8, !dbg !1082, !tbaa !589
  %call9 = call i32 @atoi(ptr noundef %6) #16, !dbg !1083
  store i32 %call9, ptr %reads_store, align 4, !dbg !1084, !tbaa !592
  br label %sw.epilog, !dbg !1085

sw.bb10:                                          ; preds = %while.body
  store i32 1, ptr %no_pg, align 4, !dbg !1086, !tbaa !592
  br label %sw.epilog, !dbg !1087

sw.default:                                       ; preds = %while.body
  %7 = load i32, ptr %c, align 4, !dbg !1088, !tbaa !592
  %8 = load ptr, ptr @optarg, align 8, !dbg !1090, !tbaa !589
  %call11 = call i32 @parse_sam_global_opt(i32 noundef %7, ptr noundef %8, ptr noundef @main_bamshuf.lopts, ptr noundef %ga), !dbg !1091
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1092
  br i1 %cmp12, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %sw.default
  br label %sw.epilog, !dbg !1094

if.end:                                           ; preds = %sw.default
  br label %sw.bb13, !dbg !1095

sw.bb13:                                          ; preds = %while.body, %if.end
  %9 = load ptr, ptr @stderr, align 8, !dbg !1096, !tbaa !589
  %10 = load i32, ptr %n_files, align 4, !dbg !1097, !tbaa !592
  %11 = load i32, ptr %reads_store, align 4, !dbg !1098, !tbaa !592
  %call14 = call i32 @usage(ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !1099
  store i32 %call14, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1100

sw.epilog:                                        ; preds = %if.then, %sw.bb10, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb
  br label %while.cond, !dbg !1055, !llvm.loop !1101

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %is_un, align 4, !dbg !1103, !tbaa !592
  %tobool = icmp ne i32 %12, 0, !dbg !1103
  br i1 %tobool, label %if.then15, label %if.end16, !dbg !1105

if.then15:                                        ; preds = %while.end
  store i32 0, ptr %clevel, align 4, !dbg !1106, !tbaa !592
  br label %if.end16, !dbg !1107

if.end16:                                         ; preds = %if.then15, %while.end
  %13 = load i32, ptr %argc.addr, align 4, !dbg !1108, !tbaa !592
  %14 = load i32, ptr @optind, align 4, !dbg !1110, !tbaa !592
  %add = add nsw i32 %14, 2, !dbg !1111
  %cmp17 = icmp sge i32 %13, %add, !dbg !1112
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !1113

if.then18:                                        ; preds = %if.end16
  %15 = load ptr, ptr %argv.addr, align 8, !dbg !1114, !tbaa !589
  %16 = load i32, ptr @optind, align 4, !dbg !1115, !tbaa !592
  %add19 = add nsw i32 %16, 1, !dbg !1116
  %idxprom = sext i32 %add19 to i64, !dbg !1114
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom, !dbg !1114
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !1114, !tbaa !589
  store ptr %17, ptr %prefix, align 8, !dbg !1117, !tbaa !589
  br label %if.end20, !dbg !1118

if.end20:                                         ; preds = %if.then18, %if.end16
  %18 = load ptr, ptr %prefix, align 8, !dbg !1119, !tbaa !589
  %tobool21 = icmp ne ptr %18, null, !dbg !1119
  br i1 %tobool21, label %if.end27, label %lor.lhs.false, !dbg !1121

lor.lhs.false:                                    ; preds = %if.end20
  %19 = load i32, ptr %is_stdout, align 4, !dbg !1122, !tbaa !592
  %tobool22 = icmp ne i32 %19, 0, !dbg !1122
  br i1 %tobool22, label %if.end27, label %lor.lhs.false23, !dbg !1123

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %20 = load ptr, ptr %output_file, align 8, !dbg !1124, !tbaa !589
  %tobool24 = icmp ne ptr %20, null, !dbg !1124
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !1125

if.then25:                                        ; preds = %lor.lhs.false23
  %21 = load ptr, ptr @stderr, align 8, !dbg !1126, !tbaa !589
  %22 = load i32, ptr %n_files, align 4, !dbg !1127, !tbaa !592
  %23 = load i32, ptr %reads_store, align 4, !dbg !1128, !tbaa !592
  %call26 = call i32 @usage(ptr noundef %21, i32 noundef %22, i32 noundef %23), !dbg !1129
  store i32 %call26, ptr %retval, align 4, !dbg !1130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1130

if.end27:                                         ; preds = %lor.lhs.false23, %lor.lhs.false, %if.end20
  %24 = load i32, ptr %is_stdout, align 4, !dbg !1131, !tbaa !592
  %tobool28 = icmp ne i32 %24, 0, !dbg !1131
  br i1 %tobool28, label %land.lhs.true, label %if.end33, !dbg !1133

land.lhs.true:                                    ; preds = %if.end27
  %25 = load ptr, ptr %output_file, align 8, !dbg !1134, !tbaa !589
  %tobool29 = icmp ne ptr %25, null, !dbg !1134
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !1135

if.then30:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr @stderr, align 8, !dbg !1136, !tbaa !589
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.12), !dbg !1138
  %27 = load ptr, ptr @stderr, align 8, !dbg !1139, !tbaa !589
  %28 = load i32, ptr %n_files, align 4, !dbg !1140, !tbaa !592
  %29 = load i32, ptr %reads_store, align 4, !dbg !1141, !tbaa !592
  %call32 = call i32 @usage(ptr noundef %27, i32 noundef %28, i32 noundef %29), !dbg !1142
  store i32 %call32, ptr %retval, align 4, !dbg !1143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1143

if.end33:                                         ; preds = %land.lhs.true, %if.end27
  %30 = load ptr, ptr %prefix, align 8, !dbg !1144, !tbaa !589
  %tobool34 = icmp ne ptr %30, null, !dbg !1144
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !1146

if.then35:                                        ; preds = %if.end33
  %call36 = call ptr @generate_prefix(), !dbg !1147
  store ptr %call36, ptr %prefix, align 8, !dbg !1149, !tbaa !589
  store i32 1, ptr %pre_mem, align 4, !dbg !1150, !tbaa !592
  br label %if.end37, !dbg !1151

if.end37:                                         ; preds = %if.then35, %if.end33
  %31 = load ptr, ptr %prefix, align 8, !dbg !1152, !tbaa !589
  %tobool38 = icmp ne ptr %31, null, !dbg !1152
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !1154

if.then39:                                        ; preds = %if.end37
  store i32 1, ptr %retval, align 4, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1155

if.end40:                                         ; preds = %if.end37
  %32 = load i32, ptr %no_pg, align 4, !dbg !1156, !tbaa !592
  %tobool41 = icmp ne i32 %32, 0, !dbg !1156
  br i1 %tobool41, label %if.end47, label %land.lhs.true42, !dbg !1158

land.lhs.true42:                                  ; preds = %if.end40
  %33 = load i32, ptr %argc.addr, align 4, !dbg !1159, !tbaa !592
  %add43 = add nsw i32 %33, 1, !dbg !1160
  %34 = load ptr, ptr %argv.addr, align 8, !dbg !1161, !tbaa !589
  %add.ptr = getelementptr inbounds ptr, ptr %34, i64 -1, !dbg !1162
  %call44 = call ptr @stringify_argv(i32 noundef %add43, ptr noundef %add.ptr), !dbg !1163
  store ptr %call44, ptr %arg_list, align 8, !dbg !1164, !tbaa !589
  %tobool45 = icmp ne ptr %call44, null, !dbg !1164
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !1165

if.then46:                                        ; preds = %land.lhs.true42
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str, ptr noundef @.str.13), !dbg !1166
  store i32 1, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end47:                                         ; preds = %land.lhs.true42, %if.end40
  %35 = load ptr, ptr %argv.addr, align 8, !dbg !1169, !tbaa !589
  %36 = load i32, ptr @optind, align 4, !dbg !1170, !tbaa !592
  %idxprom48 = sext i32 %36 to i64, !dbg !1169
  %arrayidx49 = getelementptr inbounds ptr, ptr %35, i64 %idxprom48, !dbg !1169
  %37 = load ptr, ptr %arrayidx49, align 8, !dbg !1169, !tbaa !589
  %38 = load i32, ptr %n_files, align 4, !dbg !1171, !tbaa !592
  %39 = load ptr, ptr %prefix, align 8, !dbg !1172, !tbaa !589
  %40 = load i32, ptr %clevel, align 4, !dbg !1173, !tbaa !592
  %41 = load i32, ptr %is_stdout, align 4, !dbg !1174, !tbaa !592
  %42 = load ptr, ptr %output_file, align 8, !dbg !1175, !tbaa !589
  %43 = load i32, ptr %fast_coll, align 4, !dbg !1176, !tbaa !592
  %44 = load i32, ptr %reads_store, align 4, !dbg !1177, !tbaa !592
  %45 = load ptr, ptr %arg_list, align 8, !dbg !1178, !tbaa !589
  %46 = load i32, ptr %no_pg, align 4, !dbg !1179, !tbaa !592
  %call50 = call i32 @bamshuf(ptr noundef %37, i32 noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44, ptr noundef %ga, ptr noundef %45, i32 noundef %46), !dbg !1180
  store i32 %call50, ptr %ret, align 4, !dbg !1181, !tbaa !592
  %47 = load i32, ptr %pre_mem, align 4, !dbg !1182, !tbaa !592
  %tobool51 = icmp ne i32 %47, 0, !dbg !1182
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1184

if.then52:                                        ; preds = %if.end47
  %48 = load ptr, ptr %prefix, align 8, !dbg !1185, !tbaa !589
  call void @free(ptr noundef %48) #14, !dbg !1186
  br label %if.end53, !dbg !1186

if.end53:                                         ; preds = %if.then52, %if.end47
  %49 = load ptr, ptr %arg_list, align 8, !dbg !1187, !tbaa !589
  call void @free(ptr noundef %49) #14, !dbg !1188
  %50 = load i32, ptr %ret, align 4, !dbg !1189, !tbaa !592
  store i32 %50, ptr %retval, align 4, !dbg !1190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1190

cleanup:                                          ; preds = %if.end53, %if.then46, %if.then39, %if.then30, %if.then25, %sw.bb13
  call void @llvm.lifetime.end.p0(i64 80, ptr %ga) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg_list) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_file) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_pg) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %pre_mem) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %reads_store) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %fast_coll) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_un) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_stdout) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %clevel) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_files) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #14, !dbg !1191
  %51 = load i32, ptr %retval, align 4, !dbg !1191
  ret i32 %51, !dbg !1191
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare !dbg !1192 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #8 !dbg !1198 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !1204, !tbaa !589
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #14, !dbg !1205
  %conv = trunc i64 %call to i32, !dbg !1206
  ret i32 %conv, !dbg !1207
}

declare !dbg !1208 i32 @parse_sam_global_opt(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal i32 @usage(ptr noundef %fp, i32 noundef %n_files, i32 noundef %reads_store) #0 !dbg !1212 {
entry:
  %fp.addr = alloca ptr, align 8
  %n_files.addr = alloca i32, align 4
  %reads_store.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1265, metadata !DIExpression()), !dbg !1268
  store i32 %n_files, ptr %n_files.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %n_files.addr, metadata !1266, metadata !DIExpression()), !dbg !1269
  store i32 %reads_store, ptr %reads_store.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %reads_store.addr, metadata !1267, metadata !DIExpression()), !dbg !1270
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !1271, !tbaa !589
  %1 = load i32, ptr %reads_store.addr, align 4, !dbg !1272, !tbaa !592
  %2 = load i32, ptr %n_files.addr, align 4, !dbg !1273, !tbaa !592
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.14, i32 noundef %1, i32 noundef 1, i32 noundef %2), !dbg !1274
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !1275, !tbaa !589
  call void @sam_global_opt_help(ptr noundef %3, ptr noundef @.str.15), !dbg !1276
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !1277, !tbaa !589
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.16), !dbg !1278
  ret i32 1, !dbg !1279
}

declare !dbg !1280 i32 @fprintf(ptr noundef, ptr noundef, ...) #6

declare !dbg !1284 ptr @stringify_argv(i32 noundef, ptr noundef) #6

declare !dbg !1287 void @print_error(ptr noundef, ptr noundef, ...) #6

; Function Attrs: nounwind uwtable
define internal i32 @bamshuf(ptr noundef %fn, i32 noundef %n_files, ptr noundef %pre, i32 noundef %clevel, i32 noundef %is_stdout, ptr noundef %output_file, i32 noundef %fast, i32 noundef %store_max, ptr noundef %ga, ptr noundef %arg_list, i32 noundef %no_pg) #0 !dbg !1291 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %n_files.addr = alloca i32, align 4
  %pre.addr = alloca ptr, align 8
  %clevel.addr = alloca i32, align 4
  %is_stdout.addr = alloca i32, align 4
  %output_file.addr = alloca ptr, align 8
  %fast.addr = alloca i32, align 4
  %store_max.addr = alloca i32, align 4
  %ga.addr = alloca ptr, align 8
  %arg_list.addr = alloca ptr, align 8
  %no_pg.addr = alloca i32, align 4
  %fp = alloca ptr, align 8
  %fpw = alloca ptr, align 8
  %fpt = alloca ptr, align 8
  %fnt = alloca ptr, align 8
  %modew = alloca [8 x i8], align 1
  %b = alloca ptr, align 8
  %i = alloca i32, align 4
  %counter = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %h = alloca ptr, align 8
  %j = alloca i64, align 8
  %max_cnt = alloca i64, align 8
  %cnt = alloca ptr, align 8
  %a = alloca ptr, align 8
  %p = alloca %struct.htsThreadPool, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fnw = alloca ptr, align 8
  %stored = alloca ptr, align 8
  %itr = alloca i32, align 4
  %list = alloca %struct.bam_list_t, align 8
  %err = alloca i32, align 4
  %ret = alloca i32, align 4
  %b198 = alloca ptr, align 8
  %readflag = alloca i32, align 4
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %b318 = alloca ptr, align 8
  %c = alloca i64, align 8
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1295, metadata !DIExpression()), !dbg !1371
  store i32 %n_files, ptr %n_files.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %n_files.addr, metadata !1296, metadata !DIExpression()), !dbg !1372
  store ptr %pre, ptr %pre.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %pre.addr, metadata !1297, metadata !DIExpression()), !dbg !1373
  store i32 %clevel, ptr %clevel.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %clevel.addr, metadata !1298, metadata !DIExpression()), !dbg !1374
  store i32 %is_stdout, ptr %is_stdout.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %is_stdout.addr, metadata !1299, metadata !DIExpression()), !dbg !1375
  store ptr %output_file, ptr %output_file.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %output_file.addr, metadata !1300, metadata !DIExpression()), !dbg !1376
  store i32 %fast, ptr %fast.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %fast.addr, metadata !1301, metadata !DIExpression()), !dbg !1377
  store i32 %store_max, ptr %store_max.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %store_max.addr, metadata !1302, metadata !DIExpression()), !dbg !1378
  store ptr %ga, ptr %ga.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %ga.addr, metadata !1303, metadata !DIExpression()), !dbg !1379
  store ptr %arg_list, ptr %arg_list.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %arg_list.addr, metadata !1304, metadata !DIExpression()), !dbg !1380
  store i32 %no_pg, ptr %no_pg.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %no_pg.addr, metadata !1305, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !1306, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpw) #14, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %fpw, metadata !1307, metadata !DIExpression()), !dbg !1384
  store ptr null, ptr %fpw, align 8, !dbg !1384, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpt) #14, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %fpt, metadata !1308, metadata !DIExpression()), !dbg !1385
  store ptr null, ptr %fpt, align 8, !dbg !1385, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnt) #14, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %fnt, metadata !1309, metadata !DIExpression()), !dbg !1387
  store ptr null, ptr %fnt, align 8, !dbg !1387, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %modew) #14, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %modew, metadata !1310, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #14, !dbg !1389
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1311, metadata !DIExpression()), !dbg !1390
  store ptr null, ptr %b, align 8, !dbg !1390, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1312, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #14, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %counter, metadata !1313, metadata !DIExpression()), !dbg !1393
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #14, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %l, metadata !1314, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #14, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1315, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #14, !dbg !1396
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !1316, metadata !DIExpression()), !dbg !1397
  store ptr null, ptr %h, align 8, !dbg !1397, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #14, !dbg !1398
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1319, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_cnt) #14, !dbg !1398
  tail call void @llvm.dbg.declare(metadata ptr %max_cnt, metadata !1320, metadata !DIExpression()), !dbg !1400
  store i64 0, ptr %max_cnt, align 8, !dbg !1400, !tbaa !584
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnt) #14, !dbg !1398
  tail call void @llvm.dbg.declare(metadata ptr %cnt, metadata !1321, metadata !DIExpression()), !dbg !1401
  store ptr null, ptr %cnt, align 8, !dbg !1401, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #14, !dbg !1402
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !1322, metadata !DIExpression()), !dbg !1403
  store ptr null, ptr %a, align 8, !dbg !1403, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 16, ptr %p) #14, !dbg !1404
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1323, metadata !DIExpression()), !dbg !1405
  call void @llvm.memset.p0.i64(ptr align 8 %p, i8 0, i64 16, i1 false), !dbg !1405
  %0 = load ptr, ptr %ga.addr, align 8, !dbg !1406, !tbaa !589
  %nthreads = getelementptr inbounds %struct.sam_global_args, ptr %0, i32 0, i32 3, !dbg !1408
  %1 = load i32, ptr %nthreads, align 8, !dbg !1408, !tbaa !1409
  %cmp = icmp sgt i32 %1, 0, !dbg !1413
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1414

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ga.addr, align 8, !dbg !1415, !tbaa !589
  %nthreads1 = getelementptr inbounds %struct.sam_global_args, ptr %2, i32 0, i32 3, !dbg !1418
  %3 = load i32, ptr %nthreads1, align 8, !dbg !1418, !tbaa !1409
  %call = call ptr @hts_tpool_init(i32 noundef %3), !dbg !1419
  %pool = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !1420
  store ptr %call, ptr %pool, align 8, !dbg !1421, !tbaa !1422
  %tobool = icmp ne ptr %call, null, !dbg !1421
  br i1 %tobool, label %if.end, label %if.then2, !dbg !1424

if.then2:                                         ; preds = %if.then
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.17), !dbg !1425
  store i32 1, ptr %retval, align 4, !dbg !1427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup576, !dbg !1427

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !1428

if.end3:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %fn.addr, align 8, !dbg !1429, !tbaa !589
  %5 = load ptr, ptr %ga.addr, align 8, !dbg !1429, !tbaa !589
  %in = getelementptr inbounds %struct.sam_global_args, ptr %5, i32 0, i32 0, !dbg !1429
  %call4 = call ptr @hts_open_format(ptr noundef %4, ptr noundef @.str.18, ptr noundef %in), !dbg !1429
  store ptr %call4, ptr %fp, align 8, !dbg !1430, !tbaa !589
  %6 = load ptr, ptr %fp, align 8, !dbg !1431, !tbaa !589
  %cmp5 = icmp eq ptr %6, null, !dbg !1433
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1434

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %fn.addr, align 8, !dbg !1435, !tbaa !589
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.19, ptr noundef %7), !dbg !1437
  store i32 1, ptr %retval, align 4, !dbg !1438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup576, !dbg !1438

if.end7:                                          ; preds = %if.end3
  %pool8 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !1439
  %8 = load ptr, ptr %pool8, align 8, !dbg !1439, !tbaa !1422
  %tobool9 = icmp ne ptr %8, null, !dbg !1441
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1442

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr %fp, align 8, !dbg !1443, !tbaa !589
  %call11 = call i32 (ptr, i32, ...) @hts_set_opt(ptr noundef %9, i32 noundef 102, ptr noundef %p), !dbg !1444
  br label %if.end12, !dbg !1444

if.end12:                                         ; preds = %if.then10, %if.end7
  %10 = load ptr, ptr %fp, align 8, !dbg !1445, !tbaa !589
  %call13 = call ptr @sam_hdr_read(ptr noundef %10), !dbg !1446
  store ptr %call13, ptr %h, align 8, !dbg !1447, !tbaa !589
  %11 = load ptr, ptr %h, align 8, !dbg !1448, !tbaa !589
  %cmp14 = icmp eq ptr %11, null, !dbg !1450
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1451

if.then15:                                        ; preds = %if.end12
  %12 = load ptr, ptr @stderr, align 8, !dbg !1452, !tbaa !589
  %13 = load ptr, ptr %fn.addr, align 8, !dbg !1454, !tbaa !589
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.20, ptr noundef %13), !dbg !1455
  br label %fail, !dbg !1456

if.end17:                                         ; preds = %if.end12
  %14 = load ptr, ptr %h, align 8, !dbg !1457, !tbaa !589
  %call18 = call i32 (ptr, ptr, ptr, ptr, ...) @sam_hdr_update_line(ptr noundef %14, ptr noundef @.str.21, ptr noundef null, ptr noundef null, ptr noundef @.str.22, ptr noundef @.str.23, ptr noundef @.str.24, ptr noundef @.str.25, ptr noundef null), !dbg !1457
  %cmp19 = icmp eq i32 -1, %call18, !dbg !1459
  br i1 %cmp19, label %land.lhs.true, label %if.end23, !dbg !1460

land.lhs.true:                                    ; preds = %if.end17
  %15 = load ptr, ptr %h, align 8, !dbg !1461, !tbaa !589
  %call20 = call i32 (ptr, ptr, ...) @sam_hdr_add_line(ptr noundef %15, ptr noundef @.str.21, ptr noundef @.str.26, ptr noundef @.str.27, ptr noundef @.str.22, ptr noundef @.str.23, ptr noundef @.str.24, ptr noundef @.str.25, ptr noundef null), !dbg !1462
  %cmp21 = icmp eq i32 -1, %call20, !dbg !1463
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1464

if.then22:                                        ; preds = %land.lhs.true
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str, ptr noundef @.str.28), !dbg !1465
  br label %fail, !dbg !1467

if.end23:                                         ; preds = %land.lhs.true, %if.end17
  %16 = load ptr, ptr %pre.addr, align 8, !dbg !1468, !tbaa !589
  %call24 = call i64 @strlen(ptr noundef %16) #16, !dbg !1469
  %conv = trunc i64 %call24 to i32, !dbg !1469
  store i32 %conv, ptr %l, align 4, !dbg !1470, !tbaa !592
  %arraydecay = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1471
  %17 = load i32, ptr %clevel.addr, align 4, !dbg !1472, !tbaa !592
  %cmp25 = icmp sge i32 %17, 0, !dbg !1473
  br i1 %cmp25, label %land.lhs.true27, label %cond.false, !dbg !1474

land.lhs.true27:                                  ; preds = %if.end23
  %18 = load i32, ptr %clevel.addr, align 4, !dbg !1475, !tbaa !592
  %cmp28 = icmp sle i32 %18, 9, !dbg !1476
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !1477

cond.true:                                        ; preds = %land.lhs.true27
  %19 = load i32, ptr %clevel.addr, align 4, !dbg !1478, !tbaa !592
  br label %cond.end, !dbg !1477

cond.false:                                       ; preds = %land.lhs.true27, %if.end23
  br label %cond.end, !dbg !1477

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 1, %cond.false ], !dbg !1477
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.29, i32 noundef %cond) #14, !dbg !1479
  %20 = load i32, ptr %is_stdout.addr, align 4, !dbg !1480, !tbaa !592
  %tobool31 = icmp ne i32 %20, 0, !dbg !1480
  br i1 %tobool31, label %if.else51, label %land.lhs.true32, !dbg !1481

land.lhs.true32:                                  ; preds = %cond.end
  %21 = load ptr, ptr %output_file.addr, align 8, !dbg !1482, !tbaa !589
  %tobool33 = icmp ne ptr %21, null, !dbg !1482
  br i1 %tobool33, label %if.else51, label %if.then34, !dbg !1483

if.then34:                                        ; preds = %land.lhs.true32
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnw) #14, !dbg !1484
  tail call void @llvm.dbg.declare(metadata ptr %fnw, metadata !1331, metadata !DIExpression()), !dbg !1485
  %22 = load i32, ptr %l, align 4, !dbg !1486, !tbaa !592
  %add = add nsw i32 %22, 5, !dbg !1487
  %conv35 = sext i32 %add to i64, !dbg !1486
  %call36 = call noalias ptr @calloc(i64 noundef %conv35, i64 noundef 1) #17, !dbg !1488
  store ptr %call36, ptr %fnw, align 8, !dbg !1485, !tbaa !589
  %23 = load ptr, ptr %fnw, align 8, !dbg !1489, !tbaa !589
  %tobool37 = icmp ne ptr %23, null, !dbg !1489
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !1491

if.then38:                                        ; preds = %if.then34
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1492

if.end39:                                         ; preds = %if.then34
  %24 = load ptr, ptr %ga.addr, align 8, !dbg !1493, !tbaa !589
  %out = getelementptr inbounds %struct.sam_global_args, ptr %24, i32 0, i32 1, !dbg !1495
  %format = getelementptr inbounds %struct.htsFormat, ptr %out, i32 0, i32 1, !dbg !1496
  %25 = load i32, ptr %format, align 4, !dbg !1496, !tbaa !1497
  %cmp40 = icmp eq i32 %25, 0, !dbg !1498
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !1499

if.then42:                                        ; preds = %if.end39
  %26 = load ptr, ptr %fnw, align 8, !dbg !1500, !tbaa !589
  %27 = load ptr, ptr %pre.addr, align 8, !dbg !1501, !tbaa !589
  %call43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef @.str.30, ptr noundef %27) #14, !dbg !1502
  br label %if.end47, !dbg !1502

if.else:                                          ; preds = %if.end39
  %28 = load ptr, ptr %fnw, align 8, !dbg !1503, !tbaa !589
  %29 = load ptr, ptr %pre.addr, align 8, !dbg !1504, !tbaa !589
  %30 = load ptr, ptr %ga.addr, align 8, !dbg !1505, !tbaa !589
  %out44 = getelementptr inbounds %struct.sam_global_args, ptr %30, i32 0, i32 1, !dbg !1506
  %call45 = call ptr @hts_format_file_extension(ptr noundef %out44), !dbg !1507
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef @.str.31, ptr noundef %29, ptr noundef %call45) #14, !dbg !1508
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then42
  %31 = load ptr, ptr %fnw, align 8, !dbg !1509, !tbaa !589
  %arraydecay48 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1509
  %32 = load ptr, ptr %ga.addr, align 8, !dbg !1509, !tbaa !589
  %out49 = getelementptr inbounds %struct.sam_global_args, ptr %32, i32 0, i32 1, !dbg !1509
  %call50 = call ptr @hts_open_format(ptr noundef %31, ptr noundef %arraydecay48, ptr noundef %out49), !dbg !1509
  store ptr %call50, ptr %fpw, align 8, !dbg !1510, !tbaa !589
  %33 = load ptr, ptr %fnw, align 8, !dbg !1511, !tbaa !589
  call void @free(ptr noundef %33) #14, !dbg !1512
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1513
  br label %cleanup, !dbg !1513

cleanup:                                          ; preds = %if.then38, %if.end47
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnw) #14, !dbg !1513
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup576 [
    i32 0, label %cleanup.cont
    i32 3, label %mem_fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end79, !dbg !1514

if.else51:                                        ; preds = %land.lhs.true32, %cond.end
  %34 = load ptr, ptr %output_file.addr, align 8, !dbg !1515, !tbaa !589
  %tobool52 = icmp ne ptr %34, null, !dbg !1515
  br i1 %tobool52, label %if.then53, label %if.else74, !dbg !1517

if.then53:                                        ; preds = %if.else51
  %arrayidx = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1518
  store i8 119, ptr %arrayidx, align 1, !dbg !1520, !tbaa !1521
  %arrayidx54 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 1, !dbg !1522
  store i8 0, ptr %arrayidx54, align 1, !dbg !1523, !tbaa !1521
  %arraydecay55 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1524
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay55, i64 1, !dbg !1525
  %35 = load ptr, ptr %output_file.addr, align 8, !dbg !1526, !tbaa !589
  %call56 = call i32 @sam_open_mode(ptr noundef %add.ptr, ptr noundef %35, ptr noundef null), !dbg !1527
  %arraydecay57 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1528
  %call58 = call i64 @strlen(ptr noundef %arraydecay57) #16, !dbg !1529
  store i64 %call58, ptr %j, align 8, !dbg !1530, !tbaa !584
  %arraydecay59 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1531
  %36 = load i64, ptr %j, align 8, !dbg !1532, !tbaa !584
  %add.ptr60 = getelementptr inbounds i8, ptr %arraydecay59, i64 %36, !dbg !1533
  %37 = load i64, ptr %j, align 8, !dbg !1534, !tbaa !584
  %sub = sub i64 8, %37, !dbg !1535
  %38 = load i32, ptr %clevel.addr, align 4, !dbg !1536, !tbaa !592
  %cmp61 = icmp sge i32 %38, 0, !dbg !1537
  br i1 %cmp61, label %land.lhs.true63, label %cond.false67, !dbg !1538

land.lhs.true63:                                  ; preds = %if.then53
  %39 = load i32, ptr %clevel.addr, align 4, !dbg !1539, !tbaa !592
  %cmp64 = icmp sle i32 %39, 9, !dbg !1540
  br i1 %cmp64, label %cond.true66, label %cond.false67, !dbg !1541

cond.true66:                                      ; preds = %land.lhs.true63
  %40 = load i32, ptr %clevel.addr, align 4, !dbg !1542, !tbaa !592
  br label %cond.end68, !dbg !1541

cond.false67:                                     ; preds = %land.lhs.true63, %if.then53
  br label %cond.end68, !dbg !1541

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %40, %cond.true66 ], [ 1, %cond.false67 ], !dbg !1541
  %call70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr60, i64 noundef %sub, ptr noundef @.str.32, i32 noundef %cond69) #14, !dbg !1543
  %41 = load ptr, ptr %output_file.addr, align 8, !dbg !1544, !tbaa !589
  %arraydecay71 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1544
  %42 = load ptr, ptr %ga.addr, align 8, !dbg !1544, !tbaa !589
  %out72 = getelementptr inbounds %struct.sam_global_args, ptr %42, i32 0, i32 1, !dbg !1544
  %call73 = call ptr @hts_open_format(ptr noundef %41, ptr noundef %arraydecay71, ptr noundef %out72), !dbg !1544
  store ptr %call73, ptr %fpw, align 8, !dbg !1545, !tbaa !589
  br label %if.end78, !dbg !1546

if.else74:                                        ; preds = %if.else51
  %arraydecay75 = getelementptr inbounds [8 x i8], ptr %modew, i64 0, i64 0, !dbg !1547
  %43 = load ptr, ptr %ga.addr, align 8, !dbg !1547, !tbaa !589
  %out76 = getelementptr inbounds %struct.sam_global_args, ptr %43, i32 0, i32 1, !dbg !1547
  %call77 = call ptr @hts_open_format(ptr noundef @.str.33, ptr noundef %arraydecay75, ptr noundef %out76), !dbg !1547
  store ptr %call77, ptr %fpw, align 8, !dbg !1548, !tbaa !589
  br label %if.end78

if.end78:                                         ; preds = %if.else74, %cond.end68
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %cleanup.cont
  %44 = load ptr, ptr %fpw, align 8, !dbg !1549, !tbaa !589
  %cmp80 = icmp eq ptr %44, null, !dbg !1551
  br i1 %cmp80, label %if.then82, label %if.end87, !dbg !1552

if.then82:                                        ; preds = %if.end79
  %45 = load i32, ptr %is_stdout.addr, align 4, !dbg !1553, !tbaa !592
  %tobool83 = icmp ne i32 %45, 0, !dbg !1553
  br i1 %tobool83, label %if.then84, label %if.else85, !dbg !1556

if.then84:                                        ; preds = %if.then82
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.34), !dbg !1557
  br label %if.end86, !dbg !1557

if.else85:                                        ; preds = %if.then82
  %46 = load ptr, ptr %pre.addr, align 8, !dbg !1558, !tbaa !589
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.35, ptr noundef %46), !dbg !1559
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.then84
  br label %fail, !dbg !1560

if.end87:                                         ; preds = %if.end79
  %pool88 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !1561
  %47 = load ptr, ptr %pool88, align 8, !dbg !1561, !tbaa !1422
  %tobool89 = icmp ne ptr %47, null, !dbg !1563
  br i1 %tobool89, label %if.then90, label %if.end92, !dbg !1564

if.then90:                                        ; preds = %if.end87
  %48 = load ptr, ptr %fpw, align 8, !dbg !1565, !tbaa !589
  %call91 = call i32 (ptr, i32, ...) @hts_set_opt(ptr noundef %48, i32 noundef 102, ptr noundef %p), !dbg !1566
  br label %if.end92, !dbg !1566

if.end92:                                         ; preds = %if.then90, %if.end87
  %49 = load i32, ptr %no_pg.addr, align 4, !dbg !1567, !tbaa !592
  %tobool93 = icmp ne i32 %49, 0, !dbg !1567
  br i1 %tobool93, label %if.end106, label %land.lhs.true94, !dbg !1569

land.lhs.true94:                                  ; preds = %if.end92
  %50 = load ptr, ptr %h, align 8, !dbg !1570, !tbaa !589
  %call95 = call ptr @samtools_version(), !dbg !1571
  %51 = load ptr, ptr %arg_list.addr, align 8, !dbg !1572, !tbaa !589
  %tobool96 = icmp ne ptr %51, null, !dbg !1572
  %52 = zext i1 %tobool96 to i64, !dbg !1572
  %cond97 = select i1 %tobool96, ptr @.str.37, ptr null, !dbg !1572
  %53 = load ptr, ptr %arg_list.addr, align 8, !dbg !1573, !tbaa !589
  %tobool98 = icmp ne ptr %53, null, !dbg !1573
  br i1 %tobool98, label %cond.true99, label %cond.false100, !dbg !1573

cond.true99:                                      ; preds = %land.lhs.true94
  %54 = load ptr, ptr %arg_list.addr, align 8, !dbg !1574, !tbaa !589
  br label %cond.end101, !dbg !1573

cond.false100:                                    ; preds = %land.lhs.true94
  br label %cond.end101, !dbg !1573

cond.end101:                                      ; preds = %cond.false100, %cond.true99
  %cond102 = phi ptr [ %54, %cond.true99 ], [ null, %cond.false100 ], !dbg !1573
  %call103 = call i32 (ptr, ptr, ...) @sam_hdr_add_pg(ptr noundef %50, ptr noundef @.str.36, ptr noundef @.str.26, ptr noundef %call95, ptr noundef %cond97, ptr noundef %cond102, ptr noundef null), !dbg !1575
  %tobool104 = icmp ne i32 %call103, 0, !dbg !1575
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !1576

if.then105:                                       ; preds = %cond.end101
  %55 = load ptr, ptr %output_file.addr, align 8, !dbg !1577, !tbaa !589
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str, ptr noundef @.str.38, ptr noundef %55), !dbg !1579
  br label %fail, !dbg !1580

if.end106:                                        ; preds = %cond.end101, %if.end92
  %56 = load ptr, ptr %fpw, align 8, !dbg !1581, !tbaa !589
  %57 = load ptr, ptr %h, align 8, !dbg !1583, !tbaa !589
  %call107 = call i32 @sam_hdr_write(ptr noundef %56, ptr noundef %57), !dbg !1584
  %cmp108 = icmp slt i32 %call107, 0, !dbg !1585
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !1586

if.then110:                                       ; preds = %if.end106
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.39), !dbg !1587
  br label %fail, !dbg !1589

if.end111:                                        ; preds = %if.end106
  %58 = load i32, ptr %n_files.addr, align 4, !dbg !1590, !tbaa !592
  %conv112 = sext i32 %58 to i64, !dbg !1590
  %call113 = call noalias ptr @calloc(i64 noundef %conv112, i64 noundef 8) #17, !dbg !1591
  store ptr %call113, ptr %fnt, align 8, !dbg !1592, !tbaa !589
  %59 = load ptr, ptr %fnt, align 8, !dbg !1593, !tbaa !589
  %tobool114 = icmp ne ptr %59, null, !dbg !1593
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !1595

if.then115:                                       ; preds = %if.end111
  br label %mem_fail, !dbg !1596

if.end116:                                        ; preds = %if.end111
  %60 = load i32, ptr %n_files.addr, align 4, !dbg !1597, !tbaa !592
  %conv117 = sext i32 %60 to i64, !dbg !1597
  %call118 = call noalias ptr @calloc(i64 noundef %conv117, i64 noundef 8) #17, !dbg !1598
  store ptr %call118, ptr %fpt, align 8, !dbg !1599, !tbaa !589
  %61 = load ptr, ptr %fpt, align 8, !dbg !1600, !tbaa !589
  %tobool119 = icmp ne ptr %61, null, !dbg !1600
  br i1 %tobool119, label %if.end121, label %if.then120, !dbg !1602

if.then120:                                       ; preds = %if.end116
  br label %mem_fail, !dbg !1603

if.end121:                                        ; preds = %if.end116
  %62 = load i32, ptr %n_files.addr, align 4, !dbg !1604, !tbaa !592
  %conv122 = sext i32 %62 to i64, !dbg !1604
  %call123 = call noalias ptr @calloc(i64 noundef %conv122, i64 noundef 8) #17, !dbg !1605
  store ptr %call123, ptr %cnt, align 8, !dbg !1606, !tbaa !589
  %63 = load ptr, ptr %cnt, align 8, !dbg !1607, !tbaa !589
  %tobool124 = icmp ne ptr %63, null, !dbg !1607
  br i1 %tobool124, label %if.end126, label %if.then125, !dbg !1609

if.then125:                                       ; preds = %if.end121
  br label %mem_fail, !dbg !1610

if.end126:                                        ; preds = %if.end121
  store i32 0, ptr %counter, align 4, !dbg !1611, !tbaa !592
  store i32 0, ptr %i, align 4, !dbg !1613, !tbaa !592
  br label %for.cond, !dbg !1614

for.cond:                                         ; preds = %for.inc, %if.end126
  %64 = load i32, ptr %i, align 4, !dbg !1615, !tbaa !592
  %65 = load i32, ptr %n_files.addr, align 4, !dbg !1617, !tbaa !592
  %cmp127 = icmp slt i32 %64, %65, !dbg !1618
  br i1 %cmp127, label %for.body, label %for.end, !dbg !1619

for.body:                                         ; preds = %for.cond
  %66 = load i32, ptr %l, align 4, !dbg !1620, !tbaa !592
  %add129 = add nsw i32 %66, 20, !dbg !1622
  %conv130 = sext i32 %add129 to i64, !dbg !1620
  %call131 = call noalias ptr @calloc(i64 noundef %conv130, i64 noundef 1) #17, !dbg !1623
  %67 = load ptr, ptr %fnt, align 8, !dbg !1624, !tbaa !589
  %68 = load i32, ptr %i, align 4, !dbg !1625, !tbaa !592
  %idxprom = sext i32 %68 to i64, !dbg !1624
  %arrayidx132 = getelementptr inbounds ptr, ptr %67, i64 %idxprom, !dbg !1624
  store ptr %call131, ptr %arrayidx132, align 8, !dbg !1626, !tbaa !589
  %69 = load ptr, ptr %fnt, align 8, !dbg !1627, !tbaa !589
  %70 = load i32, ptr %i, align 4, !dbg !1629, !tbaa !592
  %idxprom133 = sext i32 %70 to i64, !dbg !1627
  %arrayidx134 = getelementptr inbounds ptr, ptr %69, i64 %idxprom133, !dbg !1627
  %71 = load ptr, ptr %arrayidx134, align 8, !dbg !1627, !tbaa !589
  %tobool135 = icmp ne ptr %71, null, !dbg !1627
  br i1 %tobool135, label %if.end137, label %if.then136, !dbg !1630

if.then136:                                       ; preds = %for.body
  br label %mem_fail, !dbg !1631

if.end137:                                        ; preds = %for.body
  br label %do.body, !dbg !1632

do.body:                                          ; preds = %land.end, %if.end137
  %72 = load ptr, ptr %fnt, align 8, !dbg !1633, !tbaa !589
  %73 = load i32, ptr %i, align 4, !dbg !1635, !tbaa !592
  %idxprom138 = sext i32 %73 to i64, !dbg !1633
  %arrayidx139 = getelementptr inbounds ptr, ptr %72, i64 %idxprom138, !dbg !1633
  %74 = load ptr, ptr %arrayidx139, align 8, !dbg !1633, !tbaa !589
  %75 = load ptr, ptr %pre.addr, align 8, !dbg !1636, !tbaa !589
  %76 = load i32, ptr %counter, align 4, !dbg !1637, !tbaa !592
  %inc = add nsw i32 %76, 1, !dbg !1637
  store i32 %inc, ptr %counter, align 4, !dbg !1637, !tbaa !592
  %call140 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %74, ptr noundef @.str.40, ptr noundef %75, i32 noundef %76) #14, !dbg !1638
  %77 = load ptr, ptr %fnt, align 8, !dbg !1639, !tbaa !589
  %78 = load i32, ptr %i, align 4, !dbg !1639, !tbaa !592
  %idxprom141 = sext i32 %78 to i64, !dbg !1639
  %arrayidx142 = getelementptr inbounds ptr, ptr %77, i64 %idxprom141, !dbg !1639
  %79 = load ptr, ptr %arrayidx142, align 8, !dbg !1639, !tbaa !589
  %call143 = call ptr @hts_open(ptr noundef %79, ptr noundef @.str.41), !dbg !1639
  %80 = load ptr, ptr %fpt, align 8, !dbg !1640, !tbaa !589
  %81 = load i32, ptr %i, align 4, !dbg !1641, !tbaa !592
  %idxprom144 = sext i32 %81 to i64, !dbg !1640
  %arrayidx145 = getelementptr inbounds ptr, ptr %80, i64 %idxprom144, !dbg !1640
  store ptr %call143, ptr %arrayidx145, align 8, !dbg !1642, !tbaa !589
  br label %do.cond, !dbg !1643

do.cond:                                          ; preds = %do.body
  %82 = load ptr, ptr %fpt, align 8, !dbg !1644, !tbaa !589
  %83 = load i32, ptr %i, align 4, !dbg !1645, !tbaa !592
  %idxprom146 = sext i32 %83 to i64, !dbg !1644
  %arrayidx147 = getelementptr inbounds ptr, ptr %82, i64 %idxprom146, !dbg !1644
  %84 = load ptr, ptr %arrayidx147, align 8, !dbg !1644, !tbaa !589
  %tobool148 = icmp ne ptr %84, null, !dbg !1644
  br i1 %tobool148, label %land.end, label %land.rhs, !dbg !1646

land.rhs:                                         ; preds = %do.cond
  %call149 = call ptr @__errno_location() #18, !dbg !1647
  %85 = load i32, ptr %call149, align 4, !dbg !1647, !tbaa !592
  %cmp150 = icmp eq i32 %85, 17, !dbg !1648
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %86 = phi i1 [ false, %do.cond ], [ %cmp150, %land.rhs ], !dbg !1649
  br i1 %86, label %do.body, label %do.end, !dbg !1643, !llvm.loop !1650

do.end:                                           ; preds = %land.end
  %87 = load ptr, ptr %fpt, align 8, !dbg !1652, !tbaa !589
  %88 = load i32, ptr %i, align 4, !dbg !1654, !tbaa !592
  %idxprom152 = sext i32 %88 to i64, !dbg !1652
  %arrayidx153 = getelementptr inbounds ptr, ptr %87, i64 %idxprom152, !dbg !1652
  %89 = load ptr, ptr %arrayidx153, align 8, !dbg !1652, !tbaa !589
  %cmp154 = icmp eq ptr %89, null, !dbg !1655
  br i1 %cmp154, label %if.then156, label %if.end159, !dbg !1656

if.then156:                                       ; preds = %do.end
  %90 = load ptr, ptr %fnt, align 8, !dbg !1657, !tbaa !589
  %91 = load i32, ptr %i, align 4, !dbg !1659, !tbaa !592
  %idxprom157 = sext i32 %91 to i64, !dbg !1657
  %arrayidx158 = getelementptr inbounds ptr, ptr %90, i64 %idxprom157, !dbg !1657
  %92 = load ptr, ptr %arrayidx158, align 8, !dbg !1657, !tbaa !589
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.42, ptr noundef %92), !dbg !1660
  br label %fail, !dbg !1661

if.end159:                                        ; preds = %do.end
  %pool160 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !1662
  %93 = load ptr, ptr %pool160, align 8, !dbg !1662, !tbaa !1422
  %tobool161 = icmp ne ptr %93, null, !dbg !1664
  br i1 %tobool161, label %if.then162, label %if.end166, !dbg !1665

if.then162:                                       ; preds = %if.end159
  %94 = load ptr, ptr %fpt, align 8, !dbg !1666, !tbaa !589
  %95 = load i32, ptr %i, align 4, !dbg !1667, !tbaa !592
  %idxprom163 = sext i32 %95 to i64, !dbg !1666
  %arrayidx164 = getelementptr inbounds ptr, ptr %94, i64 %idxprom163, !dbg !1666
  %96 = load ptr, ptr %arrayidx164, align 8, !dbg !1666, !tbaa !589
  %call165 = call i32 (ptr, i32, ...) @hts_set_opt(ptr noundef %96, i32 noundef 102, ptr noundef %p), !dbg !1668
  br label %if.end166, !dbg !1668

if.end166:                                        ; preds = %if.then162, %if.end159
  %97 = load ptr, ptr %fpt, align 8, !dbg !1669, !tbaa !589
  %98 = load i32, ptr %i, align 4, !dbg !1671, !tbaa !592
  %idxprom167 = sext i32 %98 to i64, !dbg !1669
  %arrayidx168 = getelementptr inbounds ptr, ptr %97, i64 %idxprom167, !dbg !1669
  %99 = load ptr, ptr %arrayidx168, align 8, !dbg !1669, !tbaa !589
  %100 = load ptr, ptr %h, align 8, !dbg !1672, !tbaa !589
  %call169 = call i32 @sam_hdr_write(ptr noundef %99, ptr noundef %100), !dbg !1673
  %cmp170 = icmp slt i32 %call169, 0, !dbg !1674
  br i1 %cmp170, label %if.then172, label %if.end175, !dbg !1675

if.then172:                                       ; preds = %if.end166
  %101 = load ptr, ptr %fnt, align 8, !dbg !1676, !tbaa !589
  %102 = load i32, ptr %i, align 4, !dbg !1678, !tbaa !592
  %idxprom173 = sext i32 %102 to i64, !dbg !1676
  %arrayidx174 = getelementptr inbounds ptr, ptr %101, i64 %idxprom173, !dbg !1676
  %103 = load ptr, ptr %arrayidx174, align 8, !dbg !1676, !tbaa !589
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.43, ptr noundef %103), !dbg !1679
  br label %fail, !dbg !1680

if.end175:                                        ; preds = %if.end166
  br label %for.inc, !dbg !1681

for.inc:                                          ; preds = %if.end175
  %104 = load i32, ptr %i, align 4, !dbg !1682, !tbaa !592
  %inc176 = add nsw i32 %104, 1, !dbg !1682
  store i32 %inc176, ptr %i, align 4, !dbg !1682, !tbaa !592
  br label %for.cond, !dbg !1683, !llvm.loop !1684

for.end:                                          ; preds = %for.cond
  %105 = load i32, ptr %fast.addr, align 4, !dbg !1686, !tbaa !592
  %tobool177 = icmp ne i32 %105, 0, !dbg !1686
  br i1 %tobool177, label %if.then178, label %if.else364, !dbg !1687

if.then178:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %stored) #14, !dbg !1688
  tail call void @llvm.dbg.declare(metadata ptr %stored, metadata !1334, metadata !DIExpression()), !dbg !1689
  %call179 = call ptr @kh_init_bam_store(), !dbg !1690
  store ptr %call179, ptr %stored, align 8, !dbg !1689, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %itr) #14, !dbg !1691
  tail call void @llvm.dbg.declare(metadata ptr %itr, metadata !1337, metadata !DIExpression()), !dbg !1692
  call void @llvm.lifetime.start.p0(i64 32, ptr %list) #14, !dbg !1693
  tail call void @llvm.dbg.declare(metadata ptr %list, metadata !1339, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1695
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1347, metadata !DIExpression()), !dbg !1696
  store i32 0, ptr %err, align 4, !dbg !1696, !tbaa !592
  %106 = load ptr, ptr %stored, align 8, !dbg !1697, !tbaa !589
  %tobool180 = icmp ne ptr %106, null, !dbg !1697
  br i1 %tobool180, label %if.end182, label %if.then181, !dbg !1699

if.then181:                                       ; preds = %if.then178
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup358, !dbg !1700

if.end182:                                        ; preds = %if.then178
  %107 = load i32, ptr %store_max.addr, align 4, !dbg !1701, !tbaa !592
  %cmp183 = icmp slt i32 %107, 2, !dbg !1703
  br i1 %cmp183, label %if.then185, label %if.end186, !dbg !1704

if.then185:                                       ; preds = %if.end182
  store i32 2, ptr %store_max.addr, align 4, !dbg !1705, !tbaa !592
  br label %if.end186, !dbg !1706

if.end186:                                        ; preds = %if.then185, %if.end182
  %108 = load i32, ptr %store_max.addr, align 4, !dbg !1707, !tbaa !592
  %conv187 = sext i32 %108 to i64, !dbg !1707
  %call188 = call i32 @create_bam_list(ptr noundef %list, i64 noundef %conv187), !dbg !1709
  %tobool189 = icmp ne i32 %call188, 0, !dbg !1709
  br i1 %tobool189, label %if.then190, label %if.end192, !dbg !1710

if.then190:                                       ; preds = %if.end186
  %109 = load ptr, ptr @stderr, align 8, !dbg !1711, !tbaa !589
  %call191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.44), !dbg !1713
  store i32 1, ptr %err, align 4, !dbg !1714, !tbaa !592
  br label %fast_fail, !dbg !1715

if.end192:                                        ; preds = %if.end186
  br label %while.cond, !dbg !1716

while.cond:                                       ; preds = %cleanup.cont308, %if.end192
  %110 = load ptr, ptr %fp, align 8, !dbg !1717, !tbaa !589
  %111 = load ptr, ptr %h, align 8, !dbg !1718, !tbaa !589
  %items = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 1, !dbg !1719
  %112 = load ptr, ptr %items, align 8, !dbg !1719, !tbaa !1720
  %index = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1722
  %113 = load i64, ptr %index, align 8, !dbg !1722, !tbaa !1723
  %arrayidx193 = getelementptr inbounds %struct.bam_item_t, ptr %112, i64 %113, !dbg !1724
  %b194 = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx193, i32 0, i32 1, !dbg !1725
  %114 = load ptr, ptr %b194, align 8, !dbg !1725, !tbaa !676
  %call195 = call i32 @sam_read1(ptr noundef %110, ptr noundef %111, ptr noundef %114), !dbg !1726
  store i32 %call195, ptr %r, align 4, !dbg !1727, !tbaa !592
  %cmp196 = icmp sge i32 %call195, 0, !dbg !1728
  br i1 %cmp196, label %while.body, label %while.end, !dbg !1716

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !1729
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1348, metadata !DIExpression()), !dbg !1730
  call void @llvm.lifetime.start.p0(i64 8, ptr %b198) #14, !dbg !1731
  tail call void @llvm.dbg.declare(metadata ptr %b198, metadata !1350, metadata !DIExpression()), !dbg !1732
  %items199 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 1, !dbg !1733
  %115 = load ptr, ptr %items199, align 8, !dbg !1733, !tbaa !1720
  %index200 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1734
  %116 = load i64, ptr %index200, align 8, !dbg !1734, !tbaa !1723
  %arrayidx201 = getelementptr inbounds %struct.bam_item_t, ptr %115, i64 %116, !dbg !1735
  %b202 = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx201, i32 0, i32 1, !dbg !1736
  %117 = load ptr, ptr %b202, align 8, !dbg !1736, !tbaa !676
  store ptr %117, ptr %b198, align 8, !dbg !1732, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %readflag) #14, !dbg !1737
  tail call void @llvm.dbg.declare(metadata ptr %readflag, metadata !1351, metadata !DIExpression()), !dbg !1738
  %118 = load ptr, ptr %b198, align 8, !dbg !1739, !tbaa !589
  %core = getelementptr inbounds %struct.bam1_t, ptr %118, i32 0, i32 0, !dbg !1740
  %flag = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 5, !dbg !1741
  %119 = load i16, ptr %flag, align 8, !dbg !1741, !tbaa !695
  %conv203 = zext i16 %119 to i32, !dbg !1739
  %and = and i32 %conv203, 192, !dbg !1742
  store i32 %and, ptr %readflag, align 4, !dbg !1738, !tbaa !592
  %120 = load ptr, ptr %b198, align 8, !dbg !1743, !tbaa !589
  %core204 = getelementptr inbounds %struct.bam1_t, ptr %120, i32 0, i32 0, !dbg !1744
  %flag205 = getelementptr inbounds %struct.bam1_core_t, ptr %core204, i32 0, i32 5, !dbg !1745
  %121 = load i16, ptr %flag205, align 8, !dbg !1745, !tbaa !695
  %conv206 = zext i16 %121 to i32, !dbg !1743
  %and207 = and i32 %conv206, 2304, !dbg !1746
  %tobool208 = icmp ne i32 %and207, 0, !dbg !1746
  br i1 %tobool208, label %if.end303, label %land.lhs.true209, !dbg !1747

land.lhs.true209:                                 ; preds = %while.body
  %122 = load i32, ptr %readflag, align 4, !dbg !1748, !tbaa !592
  %cmp210 = icmp eq i32 %122, 64, !dbg !1749
  br i1 %cmp210, label %if.then214, label %lor.lhs.false, !dbg !1750

lor.lhs.false:                                    ; preds = %land.lhs.true209
  %123 = load i32, ptr %readflag, align 4, !dbg !1751, !tbaa !592
  %cmp212 = icmp eq i32 %123, 128, !dbg !1752
  br i1 %cmp212, label %if.then214, label %if.end303, !dbg !1753

if.then214:                                       ; preds = %lor.lhs.false, %land.lhs.true209
  %124 = load ptr, ptr %stored, align 8, !dbg !1754, !tbaa !589
  %125 = load ptr, ptr %b198, align 8, !dbg !1754, !tbaa !589
  %data = getelementptr inbounds %struct.bam1_t, ptr %125, i32 0, i32 2, !dbg !1754
  %126 = load ptr, ptr %data, align 8, !dbg !1754, !tbaa !677
  %call215 = call i32 @kh_get_bam_store(ptr noundef %124, ptr noundef %126), !dbg !1754
  store i32 %call215, ptr %itr, align 4, !dbg !1755, !tbaa !592
  %127 = load i32, ptr %itr, align 4, !dbg !1756, !tbaa !592
  %128 = load ptr, ptr %stored, align 8, !dbg !1757, !tbaa !589
  %n_buckets = getelementptr inbounds %struct.kh_bam_store_s, ptr %128, i32 0, i32 0, !dbg !1757
  %129 = load i32, ptr %n_buckets, align 8, !dbg !1757, !tbaa !1758
  %cmp216 = icmp eq i32 %127, %129, !dbg !1760
  br i1 %cmp216, label %if.then218, label %if.else263, !dbg !1761

if.then218:                                       ; preds = %if.then214
  %130 = load ptr, ptr %stored, align 8, !dbg !1762, !tbaa !589
  %131 = load ptr, ptr %b198, align 8, !dbg !1762, !tbaa !589
  %data219 = getelementptr inbounds %struct.bam1_t, ptr %131, i32 0, i32 2, !dbg !1762
  %132 = load ptr, ptr %data219, align 8, !dbg !1762, !tbaa !677
  %call220 = call i32 @kh_put_bam_store(ptr noundef %130, ptr noundef %132, ptr noundef %ret), !dbg !1762
  store i32 %call220, ptr %itr, align 4, !dbg !1764, !tbaa !592
  %133 = load i32, ptr %ret, align 4, !dbg !1765, !tbaa !592
  %cmp221 = icmp sgt i32 %133, 0, !dbg !1767
  br i1 %cmp221, label %if.then223, label %if.else255, !dbg !1768

if.then223:                                       ; preds = %if.then218
  %call224 = call ptr @store_bam(ptr noundef %list), !dbg !1769
  %134 = load ptr, ptr %stored, align 8, !dbg !1771, !tbaa !589
  %vals = getelementptr inbounds %struct.kh_bam_store_s, ptr %134, i32 0, i32 6, !dbg !1771
  %135 = load ptr, ptr %vals, align 8, !dbg !1771, !tbaa !1772
  %136 = load i32, ptr %itr, align 4, !dbg !1771, !tbaa !592
  %idxprom225 = zext i32 %136 to i64, !dbg !1771
  %arrayidx226 = getelementptr inbounds %struct.store_item_t, ptr %135, i64 %idxprom225, !dbg !1771
  %bi = getelementptr inbounds %struct.store_item_t, ptr %arrayidx226, i32 0, i32 0, !dbg !1773
  store ptr %call224, ptr %bi, align 8, !dbg !1774, !tbaa !1775
  %call227 = call i32 @write_bam_needed(ptr noundef %list), !dbg !1777
  %tobool228 = icmp ne i32 %call227, 0, !dbg !1777
  br i1 %tobool228, label %if.then229, label %if.end254, !dbg !1779

if.then229:                                       ; preds = %if.then223
  %items230 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 1, !dbg !1780
  %137 = load ptr, ptr %items230, align 8, !dbg !1780, !tbaa !1720
  %index231 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1783
  %138 = load i64, ptr %index231, align 8, !dbg !1783, !tbaa !1723
  %arrayidx232 = getelementptr inbounds %struct.bam_item_t, ptr %137, i64 %138, !dbg !1784
  %b233 = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx232, i32 0, i32 1, !dbg !1785
  %139 = load ptr, ptr %b233, align 8, !dbg !1785, !tbaa !676
  %140 = load ptr, ptr %cnt, align 8, !dbg !1786, !tbaa !589
  %141 = load ptr, ptr %fpt, align 8, !dbg !1787, !tbaa !589
  %142 = load ptr, ptr %fnt, align 8, !dbg !1788, !tbaa !589
  %143 = load ptr, ptr %h, align 8, !dbg !1789, !tbaa !589
  %144 = load i32, ptr %n_files.addr, align 4, !dbg !1790, !tbaa !592
  %call234 = call i32 @write_to_bin_file(ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, i32 noundef %144), !dbg !1791
  %cmp235 = icmp slt i32 %call234, 0, !dbg !1792
  br i1 %cmp235, label %if.then237, label %if.else239, !dbg !1793

if.then237:                                       ; preds = %if.then229
  %145 = load ptr, ptr @stderr, align 8, !dbg !1794, !tbaa !589
  %call238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef @.str.45), !dbg !1796
  store i32 1, ptr %err, align 4, !dbg !1797, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup304, !dbg !1798

if.else239:                                       ; preds = %if.then229
  call void @mark_bam_as_written(ptr noundef %list), !dbg !1799
  %146 = load ptr, ptr %stored, align 8, !dbg !1801, !tbaa !589
  %items240 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 1, !dbg !1801
  %147 = load ptr, ptr %items240, align 8, !dbg !1801, !tbaa !1720
  %index241 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1801
  %148 = load i64, ptr %index241, align 8, !dbg !1801, !tbaa !1723
  %arrayidx242 = getelementptr inbounds %struct.bam_item_t, ptr %147, i64 %148, !dbg !1801
  %b243 = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx242, i32 0, i32 1, !dbg !1801
  %149 = load ptr, ptr %b243, align 8, !dbg !1801, !tbaa !676
  %data244 = getelementptr inbounds %struct.bam1_t, ptr %149, i32 0, i32 2, !dbg !1801
  %150 = load ptr, ptr %data244, align 8, !dbg !1801, !tbaa !677
  %call245 = call i32 @kh_get_bam_store(ptr noundef %146, ptr noundef %150), !dbg !1801
  store i32 %call245, ptr %itr, align 4, !dbg !1802, !tbaa !592
  %151 = load i32, ptr %itr, align 4, !dbg !1803, !tbaa !592
  %152 = load ptr, ptr %stored, align 8, !dbg !1805, !tbaa !589
  %n_buckets246 = getelementptr inbounds %struct.kh_bam_store_s, ptr %152, i32 0, i32 0, !dbg !1805
  %153 = load i32, ptr %n_buckets246, align 8, !dbg !1805, !tbaa !1758
  %cmp247 = icmp ne i32 %151, %153, !dbg !1806
  br i1 %cmp247, label %if.then249, label %if.else250, !dbg !1807

if.then249:                                       ; preds = %if.else239
  %154 = load ptr, ptr %stored, align 8, !dbg !1808, !tbaa !589
  %155 = load i32, ptr %itr, align 4, !dbg !1808, !tbaa !592
  call void @kh_del_bam_store(ptr noundef %154, i32 noundef %155), !dbg !1808
  br label %if.end252, !dbg !1810

if.else250:                                       ; preds = %if.else239
  %156 = load ptr, ptr @stderr, align 8, !dbg !1811, !tbaa !589
  %call251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.46), !dbg !1813
  store i32 1, ptr %err, align 4, !dbg !1814, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup304, !dbg !1815

if.end252:                                        ; preds = %if.then249
  br label %if.end253

if.end253:                                        ; preds = %if.end252
  br label %if.end254, !dbg !1816

if.end254:                                        ; preds = %if.end253, %if.then223
  br label %if.end262, !dbg !1817

if.else255:                                       ; preds = %if.then218
  %157 = load i32, ptr %ret, align 4, !dbg !1818, !tbaa !592
  %cmp256 = icmp eq i32 %157, 0, !dbg !1820
  br i1 %cmp256, label %if.then258, label %if.else260, !dbg !1821

if.then258:                                       ; preds = %if.else255
  %158 = load ptr, ptr @stderr, align 8, !dbg !1822, !tbaa !589
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef @.str.47), !dbg !1824
  store i32 1, ptr %err, align 4, !dbg !1825, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup304, !dbg !1826

if.else260:                                       ; preds = %if.else255
  %159 = load ptr, ptr @stderr, align 8, !dbg !1827, !tbaa !589
  %call261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.48), !dbg !1829
  store i32 1, ptr %err, align 4, !dbg !1830, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup304, !dbg !1831

if.end262:                                        ; preds = %if.end254
  br label %if.end302, !dbg !1832

if.else263:                                       ; preds = %if.then214
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #14, !dbg !1833
  tail call void @llvm.dbg.declare(metadata ptr %r1, metadata !1352, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2) #14, !dbg !1833
  tail call void @llvm.dbg.declare(metadata ptr %r2, metadata !1357, metadata !DIExpression()), !dbg !1835
  %160 = load ptr, ptr %b198, align 8, !dbg !1836, !tbaa !589
  %core264 = getelementptr inbounds %struct.bam1_t, ptr %160, i32 0, i32 0, !dbg !1838
  %flag265 = getelementptr inbounds %struct.bam1_core_t, ptr %core264, i32 0, i32 5, !dbg !1839
  %161 = load i16, ptr %flag265, align 8, !dbg !1839, !tbaa !695
  %conv266 = zext i16 %161 to i32, !dbg !1836
  %and267 = and i32 %conv266, 64, !dbg !1840
  %tobool268 = icmp ne i32 %and267, 0, !dbg !1840
  br i1 %tobool268, label %if.then269, label %if.else275, !dbg !1841

if.then269:                                       ; preds = %if.else263
  %162 = load ptr, ptr %b198, align 8, !dbg !1842, !tbaa !589
  store ptr %162, ptr %r1, align 8, !dbg !1844, !tbaa !589
  %163 = load ptr, ptr %stored, align 8, !dbg !1845, !tbaa !589
  %vals270 = getelementptr inbounds %struct.kh_bam_store_s, ptr %163, i32 0, i32 6, !dbg !1845
  %164 = load ptr, ptr %vals270, align 8, !dbg !1845, !tbaa !1772
  %165 = load i32, ptr %itr, align 4, !dbg !1845, !tbaa !592
  %idxprom271 = zext i32 %165 to i64, !dbg !1845
  %arrayidx272 = getelementptr inbounds %struct.store_item_t, ptr %164, i64 %idxprom271, !dbg !1845
  %bi273 = getelementptr inbounds %struct.store_item_t, ptr %arrayidx272, i32 0, i32 0, !dbg !1846
  %166 = load ptr, ptr %bi273, align 8, !dbg !1846, !tbaa !1775
  %b274 = getelementptr inbounds %struct.bam_item_t, ptr %166, i32 0, i32 1, !dbg !1847
  %167 = load ptr, ptr %b274, align 8, !dbg !1847, !tbaa !676
  store ptr %167, ptr %r2, align 8, !dbg !1848, !tbaa !589
  br label %if.end281, !dbg !1849

if.else275:                                       ; preds = %if.else263
  %168 = load ptr, ptr %stored, align 8, !dbg !1850, !tbaa !589
  %vals276 = getelementptr inbounds %struct.kh_bam_store_s, ptr %168, i32 0, i32 6, !dbg !1850
  %169 = load ptr, ptr %vals276, align 8, !dbg !1850, !tbaa !1772
  %170 = load i32, ptr %itr, align 4, !dbg !1850, !tbaa !592
  %idxprom277 = zext i32 %170 to i64, !dbg !1850
  %arrayidx278 = getelementptr inbounds %struct.store_item_t, ptr %169, i64 %idxprom277, !dbg !1850
  %bi279 = getelementptr inbounds %struct.store_item_t, ptr %arrayidx278, i32 0, i32 0, !dbg !1852
  %171 = load ptr, ptr %bi279, align 8, !dbg !1852, !tbaa !1775
  %b280 = getelementptr inbounds %struct.bam_item_t, ptr %171, i32 0, i32 1, !dbg !1853
  %172 = load ptr, ptr %b280, align 8, !dbg !1853, !tbaa !676
  store ptr %172, ptr %r1, align 8, !dbg !1854, !tbaa !589
  %173 = load ptr, ptr %b198, align 8, !dbg !1855, !tbaa !589
  store ptr %173, ptr %r2, align 8, !dbg !1856, !tbaa !589
  br label %if.end281

if.end281:                                        ; preds = %if.else275, %if.then269
  %174 = load ptr, ptr %fpw, align 8, !dbg !1857, !tbaa !589
  %175 = load ptr, ptr %h, align 8, !dbg !1859, !tbaa !589
  %176 = load ptr, ptr %r1, align 8, !dbg !1860, !tbaa !589
  %call282 = call i32 @sam_write1(ptr noundef %174, ptr noundef %175, ptr noundef %176), !dbg !1861
  %cmp283 = icmp slt i32 %call282, 0, !dbg !1862
  br i1 %cmp283, label %if.then285, label %if.end287, !dbg !1863

if.then285:                                       ; preds = %if.end281
  %177 = load ptr, ptr @stderr, align 8, !dbg !1864, !tbaa !589
  %call286 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.49), !dbg !1866
  store i32 1, ptr %err, align 4, !dbg !1867, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup298, !dbg !1868

if.end287:                                        ; preds = %if.end281
  %178 = load ptr, ptr %fpw, align 8, !dbg !1869, !tbaa !589
  %179 = load ptr, ptr %h, align 8, !dbg !1871, !tbaa !589
  %180 = load ptr, ptr %r2, align 8, !dbg !1872, !tbaa !589
  %call288 = call i32 @sam_write1(ptr noundef %178, ptr noundef %179, ptr noundef %180), !dbg !1873
  %cmp289 = icmp slt i32 %call288, 0, !dbg !1874
  br i1 %cmp289, label %if.then291, label %if.end293, !dbg !1875

if.then291:                                       ; preds = %if.end287
  %181 = load ptr, ptr @stderr, align 8, !dbg !1876, !tbaa !589
  %call292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str.50), !dbg !1878
  store i32 1, ptr %err, align 4, !dbg !1879, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup298, !dbg !1880

if.end293:                                        ; preds = %if.end287
  call void @mark_bam_as_written(ptr noundef %list), !dbg !1881
  %182 = load ptr, ptr %stored, align 8, !dbg !1882, !tbaa !589
  %vals294 = getelementptr inbounds %struct.kh_bam_store_s, ptr %182, i32 0, i32 6, !dbg !1882
  %183 = load ptr, ptr %vals294, align 8, !dbg !1882, !tbaa !1772
  %184 = load i32, ptr %itr, align 4, !dbg !1882, !tbaa !592
  %idxprom295 = zext i32 %184 to i64, !dbg !1882
  %arrayidx296 = getelementptr inbounds %struct.store_item_t, ptr %183, i64 %idxprom295, !dbg !1882
  %bi297 = getelementptr inbounds %struct.store_item_t, ptr %arrayidx296, i32 0, i32 0, !dbg !1883
  %185 = load ptr, ptr %bi297, align 8, !dbg !1883, !tbaa !1775
  %written = getelementptr inbounds %struct.bam_item_t, ptr %185, i32 0, i32 0, !dbg !1884
  store i32 1, ptr %written, align 8, !dbg !1885, !tbaa !663
  %186 = load ptr, ptr %stored, align 8, !dbg !1886, !tbaa !589
  %187 = load i32, ptr %itr, align 4, !dbg !1886, !tbaa !592
  call void @kh_del_bam_store(ptr noundef %186, i32 noundef %187), !dbg !1886
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1887
  br label %cleanup298, !dbg !1887

cleanup298:                                       ; preds = %if.then291, %if.then285, %if.end293
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2) #14, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #14, !dbg !1887
  %cleanup.dest300 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest300, label %cleanup304 [
    i32 0, label %cleanup.cont301
  ]

cleanup.cont301:                                  ; preds = %cleanup298
  br label %if.end302

if.end302:                                        ; preds = %cleanup.cont301, %if.end262
  br label %if.end303, !dbg !1888

if.end303:                                        ; preds = %if.end302, %lor.lhs.false, %while.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1889
  br label %cleanup304, !dbg !1889

cleanup304:                                       ; preds = %if.else260, %if.then258, %if.else250, %if.then237, %if.end303, %cleanup298
  call void @llvm.lifetime.end.p0(i64 4, ptr %readflag) #14, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %b198) #14, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !1889
  %cleanup.dest307 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest307, label %cleanup358 [
    i32 0, label %cleanup.cont308
    i32 9, label %fast_fail
  ]

cleanup.cont308:                                  ; preds = %cleanup304
  br label %while.cond, !dbg !1716, !llvm.loop !1890

while.end:                                        ; preds = %while.cond
  %index309 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1891
  store i64 0, ptr %index309, align 8, !dbg !1892, !tbaa !1723
  br label %for.cond310, !dbg !1893

for.cond310:                                      ; preds = %for.inc334, %while.end
  %index311 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1894
  %188 = load i64, ptr %index311, align 8, !dbg !1894, !tbaa !1723
  %size = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 2, !dbg !1895
  %189 = load i64, ptr %size, align 8, !dbg !1895, !tbaa !1896
  %cmp312 = icmp ult i64 %188, %189, !dbg !1897
  br i1 %cmp312, label %for.body314, label %for.end337, !dbg !1898

for.body314:                                      ; preds = %for.cond310
  %call315 = call i32 @write_bam_needed(ptr noundef %list), !dbg !1899
  %tobool316 = icmp ne i32 %call315, 0, !dbg !1899
  br i1 %tobool316, label %if.then317, label %if.end333, !dbg !1900

if.then317:                                       ; preds = %for.body314
  call void @llvm.lifetime.start.p0(i64 8, ptr %b318) #14, !dbg !1901
  tail call void @llvm.dbg.declare(metadata ptr %b318, metadata !1358, metadata !DIExpression()), !dbg !1902
  %items319 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 1, !dbg !1903
  %190 = load ptr, ptr %items319, align 8, !dbg !1903, !tbaa !1720
  %index320 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1904
  %191 = load i64, ptr %index320, align 8, !dbg !1904, !tbaa !1723
  %arrayidx321 = getelementptr inbounds %struct.bam_item_t, ptr %190, i64 %191, !dbg !1905
  %b322 = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx321, i32 0, i32 1, !dbg !1906
  %192 = load ptr, ptr %b322, align 8, !dbg !1906, !tbaa !676
  store ptr %192, ptr %b318, align 8, !dbg !1902, !tbaa !589
  %193 = load ptr, ptr %b318, align 8, !dbg !1907, !tbaa !589
  %194 = load ptr, ptr %cnt, align 8, !dbg !1909, !tbaa !589
  %195 = load ptr, ptr %fpt, align 8, !dbg !1910, !tbaa !589
  %196 = load ptr, ptr %fnt, align 8, !dbg !1911, !tbaa !589
  %197 = load ptr, ptr %h, align 8, !dbg !1912, !tbaa !589
  %198 = load i32, ptr %n_files.addr, align 4, !dbg !1913, !tbaa !592
  %call323 = call i32 @write_to_bin_file(ptr noundef %193, ptr noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197, i32 noundef %198), !dbg !1914
  %tobool324 = icmp ne i32 %call323, 0, !dbg !1914
  br i1 %tobool324, label %if.then325, label %if.else326, !dbg !1915

if.then325:                                       ; preds = %if.then317
  store i32 1, ptr %err, align 4, !dbg !1916, !tbaa !592
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup330, !dbg !1918

if.else326:                                       ; preds = %if.then317
  %199 = load ptr, ptr %stored, align 8, !dbg !1919, !tbaa !589
  %200 = load ptr, ptr %b318, align 8, !dbg !1919, !tbaa !589
  %data327 = getelementptr inbounds %struct.bam1_t, ptr %200, i32 0, i32 2, !dbg !1919
  %201 = load ptr, ptr %data327, align 8, !dbg !1919, !tbaa !677
  %call328 = call i32 @kh_get_bam_store(ptr noundef %199, ptr noundef %201), !dbg !1919
  store i32 %call328, ptr %itr, align 4, !dbg !1921, !tbaa !592
  %202 = load ptr, ptr %stored, align 8, !dbg !1922, !tbaa !589
  %203 = load i32, ptr %itr, align 4, !dbg !1922, !tbaa !592
  call void @kh_del_bam_store(ptr noundef %202, i32 noundef %203), !dbg !1922
  br label %if.end329

if.end329:                                        ; preds = %if.else326
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1923
  br label %cleanup330, !dbg !1923

cleanup330:                                       ; preds = %if.then325, %if.end329
  call void @llvm.lifetime.end.p0(i64 8, ptr %b318) #14, !dbg !1923
  %cleanup.dest331 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest331, label %cleanup358 [
    i32 0, label %cleanup.cont332
    i32 9, label %fast_fail
  ]

cleanup.cont332:                                  ; preds = %cleanup330
  br label %if.end333, !dbg !1924

if.end333:                                        ; preds = %cleanup.cont332, %for.body314
  br label %for.inc334, !dbg !1925

for.inc334:                                       ; preds = %if.end333
  %index335 = getelementptr inbounds %struct.bam_list_t, ptr %list, i32 0, i32 3, !dbg !1926
  %204 = load i64, ptr %index335, align 8, !dbg !1927, !tbaa !1723
  %inc336 = add i64 %204, 1, !dbg !1927
  store i64 %inc336, ptr %index335, align 8, !dbg !1927, !tbaa !1723
  br label %for.cond310, !dbg !1928, !llvm.loop !1929

for.end337:                                       ; preds = %for.cond310
  br label %fast_fail, !dbg !1930

fast_fail:                                        ; preds = %for.end337, %cleanup330, %cleanup304, %if.then190
  tail call void @llvm.dbg.label(metadata !1364), !dbg !1931
  %205 = load i32, ptr %err, align 4, !dbg !1932, !tbaa !592
  %tobool338 = icmp ne i32 %205, 0, !dbg !1932
  br i1 %tobool338, label %if.then339, label %if.else356, !dbg !1934

if.then339:                                       ; preds = %fast_fail
  store i32 0, ptr %itr, align 4, !dbg !1935, !tbaa !592
  br label %for.cond340, !dbg !1938

for.cond340:                                      ; preds = %for.inc353, %if.then339
  %206 = load i32, ptr %itr, align 4, !dbg !1939, !tbaa !592
  %207 = load ptr, ptr %stored, align 8, !dbg !1941, !tbaa !589
  %n_buckets341 = getelementptr inbounds %struct.kh_bam_store_s, ptr %207, i32 0, i32 0, !dbg !1941
  %208 = load i32, ptr %n_buckets341, align 8, !dbg !1941, !tbaa !1758
  %cmp342 = icmp ne i32 %206, %208, !dbg !1942
  br i1 %cmp342, label %for.body344, label %for.end355, !dbg !1943

for.body344:                                      ; preds = %for.cond340
  %209 = load ptr, ptr %stored, align 8, !dbg !1944, !tbaa !589
  %flags = getelementptr inbounds %struct.kh_bam_store_s, ptr %209, i32 0, i32 4, !dbg !1944
  %210 = load ptr, ptr %flags, align 8, !dbg !1944, !tbaa !1947
  %211 = load i32, ptr %itr, align 4, !dbg !1944, !tbaa !592
  %shr = lshr i32 %211, 4, !dbg !1944
  %idxprom345 = zext i32 %shr to i64, !dbg !1944
  %arrayidx346 = getelementptr inbounds i32, ptr %210, i64 %idxprom345, !dbg !1944
  %212 = load i32, ptr %arrayidx346, align 4, !dbg !1944, !tbaa !592
  %213 = load i32, ptr %itr, align 4, !dbg !1944, !tbaa !592
  %and347 = and i32 %213, 15, !dbg !1944
  %shl = shl i32 %and347, 1, !dbg !1944
  %shr348 = lshr i32 %212, %shl, !dbg !1944
  %and349 = and i32 %shr348, 3, !dbg !1944
  %tobool350 = icmp ne i32 %and349, 0, !dbg !1944
  br i1 %tobool350, label %if.end352, label %if.then351, !dbg !1948

if.then351:                                       ; preds = %for.body344
  %214 = load ptr, ptr %stored, align 8, !dbg !1949, !tbaa !589
  %215 = load i32, ptr %itr, align 4, !dbg !1949, !tbaa !592
  call void @kh_del_bam_store(ptr noundef %214, i32 noundef %215), !dbg !1949
  br label %if.end352, !dbg !1951

if.end352:                                        ; preds = %if.then351, %for.body344
  br label %for.inc353, !dbg !1952

for.inc353:                                       ; preds = %if.end352
  %216 = load i32, ptr %itr, align 4, !dbg !1953, !tbaa !592
  %inc354 = add i32 %216, 1, !dbg !1953
  store i32 %inc354, ptr %itr, align 4, !dbg !1953, !tbaa !592
  br label %for.cond340, !dbg !1954, !llvm.loop !1955

for.end355:                                       ; preds = %for.cond340
  %217 = load ptr, ptr %stored, align 8, !dbg !1957, !tbaa !589
  call void @kh_destroy_bam_store(ptr noundef %217), !dbg !1957
  call void @destroy_bam_list(ptr noundef %list), !dbg !1958
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup358, !dbg !1959

if.else356:                                       ; preds = %fast_fail
  %218 = load ptr, ptr %stored, align 8, !dbg !1960, !tbaa !589
  call void @kh_destroy_bam_store(ptr noundef %218), !dbg !1960
  call void @destroy_bam_list(ptr noundef %list), !dbg !1962
  br label %if.end357

if.end357:                                        ; preds = %if.else356
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1963
  br label %cleanup358, !dbg !1963

cleanup358:                                       ; preds = %for.end355, %if.then181, %if.end357, %cleanup330, %cleanup304
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1963
  call void @llvm.lifetime.end.p0(i64 32, ptr %list) #14, !dbg !1963
  call void @llvm.lifetime.end.p0(i64 4, ptr %itr) #14, !dbg !1963
  call void @llvm.lifetime.end.p0(i64 8, ptr %stored) #14, !dbg !1963
  %cleanup.dest362 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest362, label %cleanup576 [
    i32 0, label %cleanup.cont363
    i32 3, label %mem_fail
    i32 2, label %fail
  ]

cleanup.cont363:                                  ; preds = %cleanup358
  br label %if.end379, !dbg !1964

if.else364:                                       ; preds = %for.end
  %call365 = call ptr @bam_init1(), !dbg !1965
  store ptr %call365, ptr %b, align 8, !dbg !1967, !tbaa !589
  %219 = load ptr, ptr %b, align 8, !dbg !1968, !tbaa !589
  %tobool366 = icmp ne ptr %219, null, !dbg !1968
  br i1 %tobool366, label %if.end368, label %if.then367, !dbg !1970

if.then367:                                       ; preds = %if.else364
  br label %mem_fail, !dbg !1971

if.end368:                                        ; preds = %if.else364
  br label %while.cond369, !dbg !1972

while.cond369:                                    ; preds = %if.end377, %if.end368
  %220 = load ptr, ptr %fp, align 8, !dbg !1973, !tbaa !589
  %221 = load ptr, ptr %h, align 8, !dbg !1974, !tbaa !589
  %222 = load ptr, ptr %b, align 8, !dbg !1975, !tbaa !589
  %call370 = call i32 @sam_read1(ptr noundef %220, ptr noundef %221, ptr noundef %222), !dbg !1976
  store i32 %call370, ptr %r, align 4, !dbg !1977, !tbaa !592
  %cmp371 = icmp sge i32 %call370, 0, !dbg !1978
  br i1 %cmp371, label %while.body373, label %while.end378, !dbg !1972

while.body373:                                    ; preds = %while.cond369
  %223 = load ptr, ptr %b, align 8, !dbg !1979, !tbaa !589
  %224 = load ptr, ptr %cnt, align 8, !dbg !1982, !tbaa !589
  %225 = load ptr, ptr %fpt, align 8, !dbg !1983, !tbaa !589
  %226 = load ptr, ptr %fnt, align 8, !dbg !1984, !tbaa !589
  %227 = load ptr, ptr %h, align 8, !dbg !1985, !tbaa !589
  %228 = load i32, ptr %n_files.addr, align 4, !dbg !1986, !tbaa !592
  %call374 = call i32 @write_to_bin_file(ptr noundef %223, ptr noundef %224, ptr noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %228), !dbg !1987
  %tobool375 = icmp ne i32 %call374, 0, !dbg !1987
  br i1 %tobool375, label %if.then376, label %if.end377, !dbg !1988

if.then376:                                       ; preds = %while.body373
  %229 = load ptr, ptr %b, align 8, !dbg !1989, !tbaa !589
  call void @bam_destroy1(ptr noundef %229), !dbg !1991
  br label %fail, !dbg !1992

if.end377:                                        ; preds = %while.body373
  br label %while.cond369, !dbg !1972, !llvm.loop !1993

while.end378:                                     ; preds = %while.cond369
  %230 = load ptr, ptr %b, align 8, !dbg !1995, !tbaa !589
  call void @bam_destroy1(ptr noundef %230), !dbg !1996
  br label %if.end379

if.end379:                                        ; preds = %while.end378, %cleanup.cont363
  %231 = load i32, ptr %r, align 4, !dbg !1997, !tbaa !592
  %cmp380 = icmp slt i32 %231, -1, !dbg !1999
  br i1 %cmp380, label %if.then382, label %if.end384, !dbg !2000

if.then382:                                       ; preds = %if.end379
  %232 = load ptr, ptr @stderr, align 8, !dbg !2001, !tbaa !589
  %call383 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.51), !dbg !2003
  br label %fail, !dbg !2004

if.end384:                                        ; preds = %if.end379
  store i32 0, ptr %i, align 4, !dbg !2005, !tbaa !592
  br label %for.cond385, !dbg !2007

for.cond385:                                      ; preds = %for.inc409, %if.end384
  %233 = load i32, ptr %i, align 4, !dbg !2008, !tbaa !592
  %234 = load i32, ptr %n_files.addr, align 4, !dbg !2010, !tbaa !592
  %cmp386 = icmp slt i32 %233, %234, !dbg !2011
  br i1 %cmp386, label %for.body388, label %for.end411, !dbg !2012

for.body388:                                      ; preds = %for.cond385
  %235 = load ptr, ptr %fpt, align 8, !dbg !2013, !tbaa !589
  %236 = load i32, ptr %i, align 4, !dbg !2013, !tbaa !592
  %idxprom389 = sext i32 %236 to i64, !dbg !2013
  %arrayidx390 = getelementptr inbounds ptr, ptr %235, i64 %idxprom389, !dbg !2013
  %237 = load ptr, ptr %arrayidx390, align 8, !dbg !2013, !tbaa !589
  %call391 = call i32 @hts_close(ptr noundef %237), !dbg !2013
  store i32 %call391, ptr %r, align 4, !dbg !2015, !tbaa !592
  %238 = load ptr, ptr %fpt, align 8, !dbg !2016, !tbaa !589
  %239 = load i32, ptr %i, align 4, !dbg !2017, !tbaa !592
  %idxprom392 = sext i32 %239 to i64, !dbg !2016
  %arrayidx393 = getelementptr inbounds ptr, ptr %238, i64 %idxprom392, !dbg !2016
  store ptr null, ptr %arrayidx393, align 8, !dbg !2018, !tbaa !589
  %240 = load i32, ptr %r, align 4, !dbg !2019, !tbaa !592
  %cmp394 = icmp slt i32 %240, 0, !dbg !2021
  br i1 %cmp394, label %if.then396, label %if.end400, !dbg !2022

if.then396:                                       ; preds = %for.body388
  %241 = load ptr, ptr @stderr, align 8, !dbg !2023, !tbaa !589
  %242 = load ptr, ptr %fnt, align 8, !dbg !2025, !tbaa !589
  %243 = load i32, ptr %i, align 4, !dbg !2026, !tbaa !592
  %idxprom397 = sext i32 %243 to i64, !dbg !2025
  %arrayidx398 = getelementptr inbounds ptr, ptr %242, i64 %idxprom397, !dbg !2025
  %244 = load ptr, ptr %arrayidx398, align 8, !dbg !2025, !tbaa !589
  %call399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef @.str.52, ptr noundef %244), !dbg !2027
  store i32 1, ptr %retval, align 4, !dbg !2028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup576, !dbg !2028

if.end400:                                        ; preds = %for.body388
  %245 = load i64, ptr %max_cnt, align 8, !dbg !2029, !tbaa !584
  %246 = load ptr, ptr %cnt, align 8, !dbg !2031, !tbaa !589
  %247 = load i32, ptr %i, align 4, !dbg !2032, !tbaa !592
  %idxprom401 = sext i32 %247 to i64, !dbg !2031
  %arrayidx402 = getelementptr inbounds i64, ptr %246, i64 %idxprom401, !dbg !2031
  %248 = load i64, ptr %arrayidx402, align 8, !dbg !2031, !tbaa !584
  %cmp403 = icmp slt i64 %245, %248, !dbg !2033
  br i1 %cmp403, label %if.then405, label %if.end408, !dbg !2034

if.then405:                                       ; preds = %if.end400
  %249 = load ptr, ptr %cnt, align 8, !dbg !2035, !tbaa !589
  %250 = load i32, ptr %i, align 4, !dbg !2036, !tbaa !592
  %idxprom406 = sext i32 %250 to i64, !dbg !2035
  %arrayidx407 = getelementptr inbounds i64, ptr %249, i64 %idxprom406, !dbg !2035
  %251 = load i64, ptr %arrayidx407, align 8, !dbg !2035, !tbaa !584
  store i64 %251, ptr %max_cnt, align 8, !dbg !2037, !tbaa !584
  br label %if.end408, !dbg !2038

if.end408:                                        ; preds = %if.then405, %if.end400
  br label %for.inc409, !dbg !2039

for.inc409:                                       ; preds = %if.end408
  %252 = load i32, ptr %i, align 4, !dbg !2040, !tbaa !592
  %inc410 = add nsw i32 %252, 1, !dbg !2040
  store i32 %inc410, ptr %i, align 4, !dbg !2040, !tbaa !592
  br label %for.cond385, !dbg !2041, !llvm.loop !2042

for.end411:                                       ; preds = %for.cond385
  %253 = load ptr, ptr %fpt, align 8, !dbg !2044, !tbaa !589
  call void @free(ptr noundef %253) #14, !dbg !2045
  store ptr null, ptr %fpt, align 8, !dbg !2046, !tbaa !589
  %254 = load ptr, ptr %fp, align 8, !dbg !2047, !tbaa !589
  %call412 = call i32 @hts_close(ptr noundef %254), !dbg !2047
  store ptr null, ptr %fp, align 8, !dbg !2048, !tbaa !589
  %255 = load i64, ptr %max_cnt, align 8, !dbg !2049, !tbaa !584
  %mul = mul i64 %255, 16, !dbg !2050
  %call413 = call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !2051
  store ptr %call413, ptr %a, align 8, !dbg !2052, !tbaa !589
  %256 = load ptr, ptr %a, align 8, !dbg !2053, !tbaa !589
  %tobool414 = icmp ne ptr %256, null, !dbg !2053
  br i1 %tobool414, label %if.end416, label %if.then415, !dbg !2055

if.then415:                                       ; preds = %for.end411
  br label %mem_fail, !dbg !2056

if.end416:                                        ; preds = %for.end411
  store i64 0, ptr %j, align 8, !dbg !2057, !tbaa !584
  br label %for.cond417, !dbg !2059

for.cond417:                                      ; preds = %for.inc429, %if.end416
  %257 = load i64, ptr %j, align 8, !dbg !2060, !tbaa !584
  %258 = load i64, ptr %max_cnt, align 8, !dbg !2062, !tbaa !584
  %cmp418 = icmp slt i64 %257, %258, !dbg !2063
  br i1 %cmp418, label %for.body420, label %for.end431, !dbg !2064

for.body420:                                      ; preds = %for.cond417
  %call421 = call ptr @bam_init1(), !dbg !2065
  %259 = load ptr, ptr %a, align 8, !dbg !2067, !tbaa !589
  %260 = load i64, ptr %j, align 8, !dbg !2068, !tbaa !584
  %arrayidx422 = getelementptr inbounds %struct.elem_t, ptr %259, i64 %260, !dbg !2067
  %b423 = getelementptr inbounds %struct.elem_t, ptr %arrayidx422, i32 0, i32 1, !dbg !2069
  store ptr %call421, ptr %b423, align 8, !dbg !2070, !tbaa !676
  %261 = load ptr, ptr %a, align 8, !dbg !2071, !tbaa !589
  %262 = load i64, ptr %j, align 8, !dbg !2073, !tbaa !584
  %arrayidx424 = getelementptr inbounds %struct.elem_t, ptr %261, i64 %262, !dbg !2071
  %b425 = getelementptr inbounds %struct.elem_t, ptr %arrayidx424, i32 0, i32 1, !dbg !2074
  %263 = load ptr, ptr %b425, align 8, !dbg !2074, !tbaa !676
  %tobool426 = icmp ne ptr %263, null, !dbg !2071
  br i1 %tobool426, label %if.end428, label %if.then427, !dbg !2075

if.then427:                                       ; preds = %for.body420
  %264 = load i64, ptr %j, align 8, !dbg !2076, !tbaa !584
  store i64 %264, ptr %max_cnt, align 8, !dbg !2078, !tbaa !584
  br label %mem_fail, !dbg !2079

if.end428:                                        ; preds = %for.body420
  br label %for.inc429, !dbg !2080

for.inc429:                                       ; preds = %if.end428
  %265 = load i64, ptr %j, align 8, !dbg !2081, !tbaa !584
  %inc430 = add nsw i64 %265, 1, !dbg !2081
  store i64 %inc430, ptr %j, align 8, !dbg !2081, !tbaa !584
  br label %for.cond417, !dbg !2082, !llvm.loop !2083

for.end431:                                       ; preds = %for.cond417
  store i32 0, ptr %i, align 4, !dbg !2085, !tbaa !592
  br label %for.cond432, !dbg !2086

for.cond432:                                      ; preds = %for.inc502, %for.end431
  %266 = load i32, ptr %i, align 4, !dbg !2087, !tbaa !592
  %267 = load i32, ptr %n_files.addr, align 4, !dbg !2088, !tbaa !592
  %cmp433 = icmp slt i32 %266, %267, !dbg !2089
  br i1 %cmp433, label %for.body435, label %for.end504, !dbg !2090

for.body435:                                      ; preds = %for.cond432
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #14, !dbg !2091
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1365, metadata !DIExpression()), !dbg !2092
  %268 = load ptr, ptr %cnt, align 8, !dbg !2093, !tbaa !589
  %269 = load i32, ptr %i, align 4, !dbg !2094, !tbaa !592
  %idxprom436 = sext i32 %269 to i64, !dbg !2093
  %arrayidx437 = getelementptr inbounds i64, ptr %268, i64 %idxprom436, !dbg !2093
  %270 = load i64, ptr %arrayidx437, align 8, !dbg !2093, !tbaa !584
  store i64 %270, ptr %c, align 8, !dbg !2092, !tbaa !584
  %271 = load ptr, ptr %fnt, align 8, !dbg !2095, !tbaa !589
  %272 = load i32, ptr %i, align 4, !dbg !2095, !tbaa !592
  %idxprom438 = sext i32 %272 to i64, !dbg !2095
  %arrayidx439 = getelementptr inbounds ptr, ptr %271, i64 %idxprom438, !dbg !2095
  %273 = load ptr, ptr %arrayidx439, align 8, !dbg !2095, !tbaa !589
  %274 = load ptr, ptr %ga.addr, align 8, !dbg !2095, !tbaa !589
  %in440 = getelementptr inbounds %struct.sam_global_args, ptr %274, i32 0, i32 0, !dbg !2095
  %call441 = call ptr @hts_open_format(ptr noundef %273, ptr noundef @.str.18, ptr noundef %in440), !dbg !2095
  store ptr %call441, ptr %fp, align 8, !dbg !2096, !tbaa !589
  %275 = load ptr, ptr %fp, align 8, !dbg !2097, !tbaa !589
  %cmp442 = icmp eq ptr null, %275, !dbg !2099
  br i1 %cmp442, label %if.then444, label %if.end447, !dbg !2100

if.then444:                                       ; preds = %for.body435
  %276 = load ptr, ptr %fnt, align 8, !dbg !2101, !tbaa !589
  %277 = load i32, ptr %i, align 4, !dbg !2103, !tbaa !592
  %idxprom445 = sext i32 %277 to i64, !dbg !2101
  %arrayidx446 = getelementptr inbounds ptr, ptr %276, i64 %idxprom445, !dbg !2101
  %278 = load ptr, ptr %arrayidx446, align 8, !dbg !2101, !tbaa !589
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.53, ptr noundef %278), !dbg !2104
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup499, !dbg !2105

if.end447:                                        ; preds = %for.body435
  %pool448 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !2106
  %279 = load ptr, ptr %pool448, align 8, !dbg !2106, !tbaa !1422
  %tobool449 = icmp ne ptr %279, null, !dbg !2108
  br i1 %tobool449, label %if.then450, label %if.end452, !dbg !2109

if.then450:                                       ; preds = %if.end447
  %280 = load ptr, ptr %fp, align 8, !dbg !2110, !tbaa !589
  %call451 = call i32 (ptr, i32, ...) @hts_set_opt(ptr noundef %280, i32 noundef 102, ptr noundef %p), !dbg !2111
  br label %if.end452, !dbg !2111

if.end452:                                        ; preds = %if.then450, %if.end447
  %281 = load ptr, ptr %fp, align 8, !dbg !2112, !tbaa !589
  %call453 = call ptr @sam_hdr_read(ptr noundef %281), !dbg !2113
  call void @sam_hdr_destroy(ptr noundef %call453), !dbg !2114
  store i64 0, ptr %j, align 8, !dbg !2115, !tbaa !584
  br label %for.cond454, !dbg !2117

for.cond454:                                      ; preds = %for.inc473, %if.end452
  %282 = load i64, ptr %j, align 8, !dbg !2118, !tbaa !584
  %283 = load i64, ptr %c, align 8, !dbg !2120, !tbaa !584
  %cmp455 = icmp slt i64 %282, %283, !dbg !2121
  br i1 %cmp455, label %for.body457, label %for.end475, !dbg !2122

for.body457:                                      ; preds = %for.cond454
  %284 = load ptr, ptr %fp, align 8, !dbg !2123, !tbaa !589
  %285 = load ptr, ptr %h, align 8, !dbg !2126, !tbaa !589
  %286 = load ptr, ptr %a, align 8, !dbg !2127, !tbaa !589
  %287 = load i64, ptr %j, align 8, !dbg !2128, !tbaa !584
  %arrayidx458 = getelementptr inbounds %struct.elem_t, ptr %286, i64 %287, !dbg !2127
  %b459 = getelementptr inbounds %struct.elem_t, ptr %arrayidx458, i32 0, i32 1, !dbg !2129
  %288 = load ptr, ptr %b459, align 8, !dbg !2129, !tbaa !676
  %call460 = call i32 @sam_read1(ptr noundef %284, ptr noundef %285, ptr noundef %288), !dbg !2130
  %cmp461 = icmp slt i32 %call460, 0, !dbg !2131
  br i1 %cmp461, label %if.then463, label %if.end467, !dbg !2132

if.then463:                                       ; preds = %for.body457
  %289 = load ptr, ptr @stderr, align 8, !dbg !2133, !tbaa !589
  %290 = load ptr, ptr %fnt, align 8, !dbg !2135, !tbaa !589
  %291 = load i32, ptr %i, align 4, !dbg !2136, !tbaa !592
  %idxprom464 = sext i32 %291 to i64, !dbg !2135
  %arrayidx465 = getelementptr inbounds ptr, ptr %290, i64 %idxprom464, !dbg !2135
  %292 = load ptr, ptr %arrayidx465, align 8, !dbg !2135, !tbaa !589
  %call466 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef @.str.54, ptr noundef %292), !dbg !2137
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup499, !dbg !2138

if.end467:                                        ; preds = %for.body457
  %293 = load ptr, ptr %a, align 8, !dbg !2139, !tbaa !589
  %294 = load i64, ptr %j, align 8, !dbg !2139, !tbaa !584
  %arrayidx468 = getelementptr inbounds %struct.elem_t, ptr %293, i64 %294, !dbg !2139
  %b469 = getelementptr inbounds %struct.elem_t, ptr %arrayidx468, i32 0, i32 1, !dbg !2139
  %295 = load ptr, ptr %b469, align 8, !dbg !2139, !tbaa !676
  %data470 = getelementptr inbounds %struct.bam1_t, ptr %295, i32 0, i32 2, !dbg !2139
  %296 = load ptr, ptr %data470, align 8, !dbg !2139, !tbaa !677
  %call471 = call i32 @hash_X31_Wang(ptr noundef %296), !dbg !2140
  %297 = load ptr, ptr %a, align 8, !dbg !2141, !tbaa !589
  %298 = load i64, ptr %j, align 8, !dbg !2142, !tbaa !584
  %arrayidx472 = getelementptr inbounds %struct.elem_t, ptr %297, i64 %298, !dbg !2141
  %key = getelementptr inbounds %struct.elem_t, ptr %arrayidx472, i32 0, i32 0, !dbg !2143
  store i32 %call471, ptr %key, align 8, !dbg !2144, !tbaa !663
  br label %for.inc473, !dbg !2145

for.inc473:                                       ; preds = %if.end467
  %299 = load i64, ptr %j, align 8, !dbg !2146, !tbaa !584
  %inc474 = add nsw i64 %299, 1, !dbg !2146
  store i64 %inc474, ptr %j, align 8, !dbg !2146, !tbaa !584
  br label %for.cond454, !dbg !2147, !llvm.loop !2148

for.end475:                                       ; preds = %for.cond454
  %300 = load ptr, ptr %fp, align 8, !dbg !2150, !tbaa !589
  %call476 = call i32 @hts_close(ptr noundef %300), !dbg !2150
  %301 = load ptr, ptr %fnt, align 8, !dbg !2151, !tbaa !589
  %302 = load i32, ptr %i, align 4, !dbg !2152, !tbaa !592
  %idxprom477 = sext i32 %302 to i64, !dbg !2151
  %arrayidx478 = getelementptr inbounds ptr, ptr %301, i64 %idxprom477, !dbg !2151
  %303 = load ptr, ptr %arrayidx478, align 8, !dbg !2151, !tbaa !589
  %call479 = call i32 @unlink(ptr noundef %303) #14, !dbg !2153
  %304 = load ptr, ptr %fnt, align 8, !dbg !2154, !tbaa !589
  %305 = load i32, ptr %i, align 4, !dbg !2155, !tbaa !592
  %idxprom480 = sext i32 %305 to i64, !dbg !2154
  %arrayidx481 = getelementptr inbounds ptr, ptr %304, i64 %idxprom480, !dbg !2154
  %306 = load ptr, ptr %arrayidx481, align 8, !dbg !2154, !tbaa !589
  call void @free(ptr noundef %306) #14, !dbg !2156
  %307 = load ptr, ptr %fnt, align 8, !dbg !2157, !tbaa !589
  %308 = load i32, ptr %i, align 4, !dbg !2158, !tbaa !592
  %idxprom482 = sext i32 %308 to i64, !dbg !2157
  %arrayidx483 = getelementptr inbounds ptr, ptr %307, i64 %idxprom482, !dbg !2157
  store ptr null, ptr %arrayidx483, align 8, !dbg !2159, !tbaa !589
  %309 = load i64, ptr %c, align 8, !dbg !2160, !tbaa !584
  %310 = load ptr, ptr %a, align 8, !dbg !2160, !tbaa !589
  %call484 = call i32 @ks_introsort_bamshuf(i64 noundef %309, ptr noundef %310), !dbg !2160
  store i64 0, ptr %j, align 8, !dbg !2161, !tbaa !584
  br label %for.cond485, !dbg !2163

for.cond485:                                      ; preds = %for.inc496, %for.end475
  %311 = load i64, ptr %j, align 8, !dbg !2164, !tbaa !584
  %312 = load i64, ptr %c, align 8, !dbg !2166, !tbaa !584
  %cmp486 = icmp slt i64 %311, %312, !dbg !2167
  br i1 %cmp486, label %for.body488, label %for.end498, !dbg !2168

for.body488:                                      ; preds = %for.cond485
  %313 = load ptr, ptr %fpw, align 8, !dbg !2169, !tbaa !589
  %314 = load ptr, ptr %h, align 8, !dbg !2172, !tbaa !589
  %315 = load ptr, ptr %a, align 8, !dbg !2173, !tbaa !589
  %316 = load i64, ptr %j, align 8, !dbg !2174, !tbaa !584
  %arrayidx489 = getelementptr inbounds %struct.elem_t, ptr %315, i64 %316, !dbg !2173
  %b490 = getelementptr inbounds %struct.elem_t, ptr %arrayidx489, i32 0, i32 1, !dbg !2175
  %317 = load ptr, ptr %b490, align 8, !dbg !2175, !tbaa !676
  %call491 = call i32 @sam_write1(ptr noundef %313, ptr noundef %314, ptr noundef %317), !dbg !2176
  %cmp492 = icmp slt i32 %call491, 0, !dbg !2177
  br i1 %cmp492, label %if.then494, label %if.end495, !dbg !2178

if.then494:                                       ; preds = %for.body488
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.55), !dbg !2179
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup499, !dbg !2181

if.end495:                                        ; preds = %for.body488
  br label %for.inc496, !dbg !2182

for.inc496:                                       ; preds = %if.end495
  %318 = load i64, ptr %j, align 8, !dbg !2183, !tbaa !584
  %inc497 = add nsw i64 %318, 1, !dbg !2183
  store i64 %inc497, ptr %j, align 8, !dbg !2183, !tbaa !584
  br label %for.cond485, !dbg !2184, !llvm.loop !2185

for.end498:                                       ; preds = %for.cond485
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2187
  br label %cleanup499, !dbg !2187

cleanup499:                                       ; preds = %if.then494, %if.then463, %if.then444, %for.end498
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #14, !dbg !2187
  %cleanup.dest500 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest500, label %cleanup576 [
    i32 0, label %cleanup.cont501
    i32 2, label %fail
  ]

cleanup.cont501:                                  ; preds = %cleanup499
  br label %for.inc502, !dbg !2188

for.inc502:                                       ; preds = %cleanup.cont501
  %319 = load i32, ptr %i, align 4, !dbg !2189, !tbaa !592
  %inc503 = add nsw i32 %319, 1, !dbg !2189
  store i32 %inc503, ptr %i, align 4, !dbg !2189, !tbaa !592
  br label %for.cond432, !dbg !2190, !llvm.loop !2191

for.end504:                                       ; preds = %for.cond432
  %320 = load ptr, ptr %h, align 8, !dbg !2193, !tbaa !589
  call void @sam_hdr_destroy(ptr noundef %320), !dbg !2194
  store i64 0, ptr %j, align 8, !dbg !2195, !tbaa !584
  br label %for.cond505, !dbg !2197

for.cond505:                                      ; preds = %for.inc511, %for.end504
  %321 = load i64, ptr %j, align 8, !dbg !2198, !tbaa !584
  %322 = load i64, ptr %max_cnt, align 8, !dbg !2200, !tbaa !584
  %cmp506 = icmp slt i64 %321, %322, !dbg !2201
  br i1 %cmp506, label %for.body508, label %for.end513, !dbg !2202

for.body508:                                      ; preds = %for.cond505
  %323 = load ptr, ptr %a, align 8, !dbg !2203, !tbaa !589
  %324 = load i64, ptr %j, align 8, !dbg !2204, !tbaa !584
  %arrayidx509 = getelementptr inbounds %struct.elem_t, ptr %323, i64 %324, !dbg !2203
  %b510 = getelementptr inbounds %struct.elem_t, ptr %arrayidx509, i32 0, i32 1, !dbg !2205
  %325 = load ptr, ptr %b510, align 8, !dbg !2205, !tbaa !676
  call void @bam_destroy1(ptr noundef %325), !dbg !2206
  br label %for.inc511, !dbg !2206

for.inc511:                                       ; preds = %for.body508
  %326 = load i64, ptr %j, align 8, !dbg !2207, !tbaa !584
  %inc512 = add nsw i64 %326, 1, !dbg !2207
  store i64 %inc512, ptr %j, align 8, !dbg !2207, !tbaa !584
  br label %for.cond505, !dbg !2208, !llvm.loop !2209

for.end513:                                       ; preds = %for.cond505
  %327 = load ptr, ptr %a, align 8, !dbg !2211, !tbaa !589
  call void @free(ptr noundef %327) #14, !dbg !2212
  %328 = load ptr, ptr %fnt, align 8, !dbg !2213, !tbaa !589
  call void @free(ptr noundef %328) #14, !dbg !2214
  %329 = load ptr, ptr %cnt, align 8, !dbg !2215, !tbaa !589
  call void @free(ptr noundef %329) #14, !dbg !2216
  %330 = load ptr, ptr %ga.addr, align 8, !dbg !2217, !tbaa !589
  call void @sam_global_args_free(ptr noundef %330), !dbg !2218
  %331 = load ptr, ptr %fpw, align 8, !dbg !2219, !tbaa !589
  %call514 = call i32 @hts_close(ptr noundef %331), !dbg !2219
  %cmp515 = icmp slt i32 %call514, 0, !dbg !2221
  br i1 %cmp515, label %if.then517, label %if.end519, !dbg !2222

if.then517:                                       ; preds = %for.end513
  %332 = load ptr, ptr @stderr, align 8, !dbg !2223, !tbaa !589
  %call518 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef @.str.56), !dbg !2225
  store i32 1, ptr %retval, align 4, !dbg !2226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup576, !dbg !2226

if.end519:                                        ; preds = %for.end513
  %pool520 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !2227
  %333 = load ptr, ptr %pool520, align 8, !dbg !2227, !tbaa !1422
  %tobool521 = icmp ne ptr %333, null, !dbg !2229
  br i1 %tobool521, label %if.then522, label %if.end524, !dbg !2230

if.then522:                                       ; preds = %if.end519
  %pool523 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !2231
  %334 = load ptr, ptr %pool523, align 8, !dbg !2231, !tbaa !1422
  call void @hts_tpool_destroy(ptr noundef %334), !dbg !2232
  br label %if.end524, !dbg !2232

if.end524:                                        ; preds = %if.then522, %if.end519
  store i32 0, ptr %retval, align 4, !dbg !2233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup576, !dbg !2233

mem_fail:                                         ; preds = %cleanup358, %cleanup, %if.then427, %if.then415, %if.then367, %if.then136, %if.then125, %if.then120, %if.then115
  tail call void @llvm.dbg.label(metadata !1369), !dbg !2234
  %335 = load ptr, ptr @stderr, align 8, !dbg !2235, !tbaa !589
  %call525 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef @.str.57), !dbg !2236
  br label %fail, !dbg !2236

fail:                                             ; preds = %mem_fail, %cleanup499, %cleanup358, %if.then382, %if.then376, %if.then172, %if.then156, %if.then110, %if.then105, %if.end86, %if.then22, %if.then15
  tail call void @llvm.dbg.label(metadata !1370), !dbg !2237
  %336 = load ptr, ptr %fp, align 8, !dbg !2238, !tbaa !589
  %tobool526 = icmp ne ptr %336, null, !dbg !2238
  br i1 %tobool526, label %if.then527, label %if.end529, !dbg !2240

if.then527:                                       ; preds = %fail
  %337 = load ptr, ptr %fp, align 8, !dbg !2241, !tbaa !589
  %call528 = call i32 @hts_close(ptr noundef %337), !dbg !2241
  br label %if.end529, !dbg !2241

if.end529:                                        ; preds = %if.then527, %fail
  %338 = load ptr, ptr %fpw, align 8, !dbg !2242, !tbaa !589
  %tobool530 = icmp ne ptr %338, null, !dbg !2242
  br i1 %tobool530, label %if.then531, label %if.end533, !dbg !2244

if.then531:                                       ; preds = %if.end529
  %339 = load ptr, ptr %fpw, align 8, !dbg !2245, !tbaa !589
  %call532 = call i32 @hts_close(ptr noundef %339), !dbg !2245
  br label %if.end533, !dbg !2245

if.end533:                                        ; preds = %if.then531, %if.end529
  %340 = load ptr, ptr %h, align 8, !dbg !2246, !tbaa !589
  %tobool534 = icmp ne ptr %340, null, !dbg !2246
  br i1 %tobool534, label %if.then535, label %if.end536, !dbg !2248

if.then535:                                       ; preds = %if.end533
  %341 = load ptr, ptr %h, align 8, !dbg !2249, !tbaa !589
  call void @sam_hdr_destroy(ptr noundef %341), !dbg !2250
  br label %if.end536, !dbg !2250

if.end536:                                        ; preds = %if.then535, %if.end533
  store i32 0, ptr %i, align 4, !dbg !2251, !tbaa !592
  br label %for.cond537, !dbg !2253

for.cond537:                                      ; preds = %for.inc556, %if.end536
  %342 = load i32, ptr %i, align 4, !dbg !2254, !tbaa !592
  %343 = load i32, ptr %n_files.addr, align 4, !dbg !2256, !tbaa !592
  %cmp538 = icmp slt i32 %342, %343, !dbg !2257
  br i1 %cmp538, label %for.body540, label %for.end558, !dbg !2258

for.body540:                                      ; preds = %for.cond537
  %344 = load ptr, ptr %fnt, align 8, !dbg !2259, !tbaa !589
  %tobool541 = icmp ne ptr %344, null, !dbg !2259
  br i1 %tobool541, label %if.then542, label %if.end545, !dbg !2262

if.then542:                                       ; preds = %for.body540
  %345 = load ptr, ptr %fnt, align 8, !dbg !2263, !tbaa !589
  %346 = load i32, ptr %i, align 4, !dbg !2264, !tbaa !592
  %idxprom543 = sext i32 %346 to i64, !dbg !2263
  %arrayidx544 = getelementptr inbounds ptr, ptr %345, i64 %idxprom543, !dbg !2263
  %347 = load ptr, ptr %arrayidx544, align 8, !dbg !2263, !tbaa !589
  call void @free(ptr noundef %347) #14, !dbg !2265
  br label %if.end545, !dbg !2265

if.end545:                                        ; preds = %if.then542, %for.body540
  %348 = load ptr, ptr %fpt, align 8, !dbg !2266, !tbaa !589
  %tobool546 = icmp ne ptr %348, null, !dbg !2266
  br i1 %tobool546, label %land.lhs.true547, label %if.end555, !dbg !2268

land.lhs.true547:                                 ; preds = %if.end545
  %349 = load ptr, ptr %fpt, align 8, !dbg !2269, !tbaa !589
  %350 = load i32, ptr %i, align 4, !dbg !2270, !tbaa !592
  %idxprom548 = sext i32 %350 to i64, !dbg !2269
  %arrayidx549 = getelementptr inbounds ptr, ptr %349, i64 %idxprom548, !dbg !2269
  %351 = load ptr, ptr %arrayidx549, align 8, !dbg !2269, !tbaa !589
  %tobool550 = icmp ne ptr %351, null, !dbg !2269
  br i1 %tobool550, label %if.then551, label %if.end555, !dbg !2271

if.then551:                                       ; preds = %land.lhs.true547
  %352 = load ptr, ptr %fpt, align 8, !dbg !2272, !tbaa !589
  %353 = load i32, ptr %i, align 4, !dbg !2272, !tbaa !592
  %idxprom552 = sext i32 %353 to i64, !dbg !2272
  %arrayidx553 = getelementptr inbounds ptr, ptr %352, i64 %idxprom552, !dbg !2272
  %354 = load ptr, ptr %arrayidx553, align 8, !dbg !2272, !tbaa !589
  %call554 = call i32 @hts_close(ptr noundef %354), !dbg !2272
  br label %if.end555, !dbg !2272

if.end555:                                        ; preds = %if.then551, %land.lhs.true547, %if.end545
  br label %for.inc556, !dbg !2273

for.inc556:                                       ; preds = %if.end555
  %355 = load i32, ptr %i, align 4, !dbg !2274, !tbaa !592
  %inc557 = add nsw i32 %355, 1, !dbg !2274
  store i32 %inc557, ptr %i, align 4, !dbg !2274, !tbaa !592
  br label %for.cond537, !dbg !2275, !llvm.loop !2276

for.end558:                                       ; preds = %for.cond537
  %356 = load ptr, ptr %a, align 8, !dbg !2278, !tbaa !589
  %tobool559 = icmp ne ptr %356, null, !dbg !2278
  br i1 %tobool559, label %if.then560, label %if.end570, !dbg !2280

if.then560:                                       ; preds = %for.end558
  store i64 0, ptr %j, align 8, !dbg !2281, !tbaa !584
  br label %for.cond561, !dbg !2284

for.cond561:                                      ; preds = %for.inc567, %if.then560
  %357 = load i64, ptr %j, align 8, !dbg !2285, !tbaa !584
  %358 = load i64, ptr %max_cnt, align 8, !dbg !2287, !tbaa !584
  %cmp562 = icmp slt i64 %357, %358, !dbg !2288
  br i1 %cmp562, label %for.body564, label %for.end569, !dbg !2289

for.body564:                                      ; preds = %for.cond561
  %359 = load ptr, ptr %a, align 8, !dbg !2290, !tbaa !589
  %360 = load i64, ptr %j, align 8, !dbg !2291, !tbaa !584
  %arrayidx565 = getelementptr inbounds %struct.elem_t, ptr %359, i64 %360, !dbg !2290
  %b566 = getelementptr inbounds %struct.elem_t, ptr %arrayidx565, i32 0, i32 1, !dbg !2292
  %361 = load ptr, ptr %b566, align 8, !dbg !2292, !tbaa !676
  call void @bam_destroy1(ptr noundef %361), !dbg !2293
  br label %for.inc567, !dbg !2293

for.inc567:                                       ; preds = %for.body564
  %362 = load i64, ptr %j, align 8, !dbg !2294, !tbaa !584
  %inc568 = add nsw i64 %362, 1, !dbg !2294
  store i64 %inc568, ptr %j, align 8, !dbg !2294, !tbaa !584
  br label %for.cond561, !dbg !2295, !llvm.loop !2296

for.end569:                                       ; preds = %for.cond561
  %363 = load ptr, ptr %a, align 8, !dbg !2298, !tbaa !589
  call void @free(ptr noundef %363) #14, !dbg !2299
  br label %if.end570, !dbg !2300

if.end570:                                        ; preds = %for.end569, %for.end558
  %364 = load ptr, ptr %fnt, align 8, !dbg !2301, !tbaa !589
  call void @free(ptr noundef %364) #14, !dbg !2302
  %365 = load ptr, ptr %fpt, align 8, !dbg !2303, !tbaa !589
  call void @free(ptr noundef %365) #14, !dbg !2304
  %366 = load ptr, ptr %cnt, align 8, !dbg !2305, !tbaa !589
  call void @free(ptr noundef %366) #14, !dbg !2306
  %pool571 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !2307
  %367 = load ptr, ptr %pool571, align 8, !dbg !2307, !tbaa !1422
  %tobool572 = icmp ne ptr %367, null, !dbg !2309
  br i1 %tobool572, label %if.then573, label %if.end575, !dbg !2310

if.then573:                                       ; preds = %if.end570
  %pool574 = getelementptr inbounds %struct.htsThreadPool, ptr %p, i32 0, i32 0, !dbg !2311
  %368 = load ptr, ptr %pool574, align 8, !dbg !2311, !tbaa !1422
  call void @hts_tpool_destroy(ptr noundef %368), !dbg !2312
  br label %if.end575, !dbg !2312

if.end575:                                        ; preds = %if.then573, %if.end570
  %369 = load ptr, ptr %ga.addr, align 8, !dbg !2313, !tbaa !589
  call void @sam_global_args_free(ptr noundef %369), !dbg !2314
  store i32 1, ptr %retval, align 4, !dbg !2315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup576, !dbg !2315

cleanup576:                                       ; preds = %if.end575, %if.end524, %if.then517, %cleanup499, %if.then396, %cleanup358, %cleanup, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 16, ptr %p) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnt) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_cnt) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %modew) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnt) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpt) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpw) #14, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14, !dbg !2316
  %370 = load i32, ptr %retval, align 4, !dbg !2316
  ret i32 %370, !dbg !2316
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2317 i32 @strcmp(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind
declare !dbg !2321 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

declare !dbg !2325 void @sam_global_opt_help(ptr noundef, ptr noundef) #6

declare !dbg !2328 ptr @hts_tpool_init(i32 noundef) #6

declare !dbg !2334 void @print_error_errno(ptr noundef, ptr noundef, ...) #6

declare !dbg !2335 ptr @hts_open_format(ptr noundef, ptr noundef, ptr noundef) #6

declare !dbg !2341 i32 @hts_set_opt(ptr noundef, i32 noundef, ...) #6

declare !dbg !2344 ptr @sam_hdr_read(ptr noundef) #6

declare !dbg !2347 i32 @sam_hdr_update_line(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #6

declare !dbg !2350 i32 @sam_hdr_add_line(ptr noundef, ptr noundef, ...) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2353 i64 @strlen(ptr noundef) #9

; Function Attrs: nounwind
declare !dbg !2356 i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !2359 noalias ptr @calloc(i64 noundef, i64 noundef) #10

declare !dbg !2362 ptr @hts_format_file_extension(ptr noundef) #6

declare !dbg !2365 i32 @sam_open_mode(ptr noundef, ptr noundef, ptr noundef) #6

declare !dbg !2368 i32 @sam_hdr_add_pg(ptr noundef, ptr noundef, ...) #6

declare !dbg !2369 ptr @samtools_version() #6

declare !dbg !2372 i32 @sam_hdr_write(ptr noundef, ptr noundef) #6

declare !dbg !2377 ptr @hts_open(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2380 ptr @__errno_location() #11

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @kh_init_bam_store() #4 !dbg !2384 {
entry:
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #17, !dbg !2387
  ret ptr %call, !dbg !2387
}

; Function Attrs: nounwind uwtable
define internal i32 @create_bam_list(ptr noundef %list, i64 noundef %max_size) #0 !dbg !2388 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %max_size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2393, metadata !DIExpression()), !dbg !2396
  store i64 %max_size, ptr %max_size.addr, align 8, !tbaa !584
  tail call void @llvm.dbg.declare(metadata ptr %max_size.addr, metadata !2394, metadata !DIExpression()), !dbg !2397
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !2398
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2395, metadata !DIExpression()), !dbg !2399
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2400, !tbaa !589
  %index = getelementptr inbounds %struct.bam_list_t, ptr %0, i32 0, i32 3, !dbg !2401
  store i64 0, ptr %index, align 8, !dbg !2402, !tbaa !1723
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2403, !tbaa !589
  %size = getelementptr inbounds %struct.bam_list_t, ptr %1, i32 0, i32 2, !dbg !2404
  store i64 0, ptr %size, align 8, !dbg !2405, !tbaa !1896
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2406, !tbaa !589
  %items = getelementptr inbounds %struct.bam_list_t, ptr %2, i32 0, i32 1, !dbg !2407
  store ptr null, ptr %items, align 8, !dbg !2408, !tbaa !1720
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2409, !tbaa !589
  %bam_pool = getelementptr inbounds %struct.bam_list_t, ptr %3, i32 0, i32 0, !dbg !2410
  store ptr null, ptr %bam_pool, align 8, !dbg !2411, !tbaa !2412
  %4 = load i64, ptr %max_size.addr, align 8, !dbg !2413, !tbaa !584
  %mul = mul i64 %4, 16, !dbg !2415
  %call = call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !2416
  %5 = load ptr, ptr %list.addr, align 8, !dbg !2417, !tbaa !589
  %items1 = getelementptr inbounds %struct.bam_list_t, ptr %5, i32 0, i32 1, !dbg !2418
  store ptr %call, ptr %items1, align 8, !dbg !2419, !tbaa !1720
  %cmp = icmp eq ptr %call, null, !dbg !2420
  br i1 %cmp, label %if.then, label %if.end, !dbg !2421

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2422

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %max_size.addr, align 8, !dbg !2424, !tbaa !584
  %call2 = call noalias ptr @calloc(i64 noundef %6, i64 noundef 80) #17, !dbg !2426
  %7 = load ptr, ptr %list.addr, align 8, !dbg !2427, !tbaa !589
  %bam_pool3 = getelementptr inbounds %struct.bam_list_t, ptr %7, i32 0, i32 0, !dbg !2428
  store ptr %call2, ptr %bam_pool3, align 8, !dbg !2429, !tbaa !2412
  %cmp4 = icmp eq ptr %call2, null, !dbg !2430
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2431

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

if.end6:                                          ; preds = %if.end
  store i64 0, ptr %i, align 8, !dbg !2434, !tbaa !584
  br label %for.cond, !dbg !2436

for.cond:                                         ; preds = %for.inc, %if.end6
  %8 = load i64, ptr %i, align 8, !dbg !2437, !tbaa !584
  %9 = load i64, ptr %max_size.addr, align 8, !dbg !2439, !tbaa !584
  %cmp7 = icmp ult i64 %8, %9, !dbg !2440
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2441

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %list.addr, align 8, !dbg !2442, !tbaa !589
  %bam_pool8 = getelementptr inbounds %struct.bam_list_t, ptr %10, i32 0, i32 0, !dbg !2444
  %11 = load ptr, ptr %bam_pool8, align 8, !dbg !2444, !tbaa !2412
  %12 = load i64, ptr %i, align 8, !dbg !2445, !tbaa !584
  %arrayidx = getelementptr inbounds %struct.bam1_t, ptr %11, i64 %12, !dbg !2442
  %13 = load ptr, ptr %list.addr, align 8, !dbg !2446, !tbaa !589
  %items9 = getelementptr inbounds %struct.bam_list_t, ptr %13, i32 0, i32 1, !dbg !2447
  %14 = load ptr, ptr %items9, align 8, !dbg !2447, !tbaa !1720
  %15 = load i64, ptr %i, align 8, !dbg !2448, !tbaa !584
  %arrayidx10 = getelementptr inbounds %struct.bam_item_t, ptr %14, i64 %15, !dbg !2446
  %b = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx10, i32 0, i32 1, !dbg !2449
  store ptr %arrayidx, ptr %b, align 8, !dbg !2450, !tbaa !676
  %16 = load ptr, ptr %list.addr, align 8, !dbg !2451, !tbaa !589
  %items11 = getelementptr inbounds %struct.bam_list_t, ptr %16, i32 0, i32 1, !dbg !2452
  %17 = load ptr, ptr %items11, align 8, !dbg !2452, !tbaa !1720
  %18 = load i64, ptr %i, align 8, !dbg !2453, !tbaa !584
  %arrayidx12 = getelementptr inbounds %struct.bam_item_t, ptr %17, i64 %18, !dbg !2451
  %written = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx12, i32 0, i32 0, !dbg !2454
  store i32 1, ptr %written, align 8, !dbg !2455, !tbaa !663
  br label %for.inc, !dbg !2456

for.inc:                                          ; preds = %for.body
  %19 = load i64, ptr %i, align 8, !dbg !2457, !tbaa !584
  %inc = add i64 %19, 1, !dbg !2457
  store i64 %inc, ptr %i, align 8, !dbg !2457, !tbaa !584
  br label %for.cond, !dbg !2458, !llvm.loop !2459

for.end:                                          ; preds = %for.cond
  %20 = load i64, ptr %max_size.addr, align 8, !dbg !2461, !tbaa !584
  %21 = load ptr, ptr %list.addr, align 8, !dbg !2462, !tbaa !589
  %size13 = getelementptr inbounds %struct.bam_list_t, ptr %21, i32 0, i32 2, !dbg !2463
  store i64 %20, ptr %size13, align 8, !dbg !2464, !tbaa !1896
  %22 = load ptr, ptr %list.addr, align 8, !dbg !2465, !tbaa !589
  %index14 = getelementptr inbounds %struct.bam_list_t, ptr %22, i32 0, i32 3, !dbg !2466
  store i64 0, ptr %index14, align 8, !dbg !2467, !tbaa !1723
  store i32 0, ptr %retval, align 4, !dbg !2468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2468

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !2469
  %23 = load i32, ptr %retval, align 4, !dbg !2469
  ret i32 %23, !dbg !2469
}

declare !dbg !2470 i32 @sam_read1(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_bam_store(ptr noundef %h, ptr noundef %key) #4 !dbg !2473 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2479, metadata !DIExpression()), !dbg !2488
  store ptr %key, ptr %key.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2480, metadata !DIExpression()), !dbg !2488
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2489, !tbaa !589
  %n_buckets = getelementptr inbounds %struct.kh_bam_store_s, ptr %0, i32 0, i32 0, !dbg !2489
  %1 = load i32, ptr %n_buckets, align 8, !dbg !2489, !tbaa !1758
  %tobool = icmp ne i32 %1, 0, !dbg !2489
  br i1 %tobool, label %if.then, label %if.else, !dbg !2488

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2481, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2484, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #14, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !2485, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #14, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !2486, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #14, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !2487, metadata !DIExpression()), !dbg !2490
  store i32 0, ptr %step, align 4, !dbg !2490, !tbaa !592
  %2 = load ptr, ptr %h.addr, align 8, !dbg !2490, !tbaa !589
  %n_buckets1 = getelementptr inbounds %struct.kh_bam_store_s, ptr %2, i32 0, i32 0, !dbg !2490
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !2490, !tbaa !1758
  %sub = sub i32 %3, 1, !dbg !2490
  store i32 %sub, ptr %mask, align 4, !dbg !2490, !tbaa !592
  %4 = load ptr, ptr %key.addr, align 8, !dbg !2490, !tbaa !589
  %call = call i32 @__ac_X31_hash_string(ptr noundef %4), !dbg !2490
  store i32 %call, ptr %k, align 4, !dbg !2490, !tbaa !592
  %5 = load i32, ptr %k, align 4, !dbg !2490, !tbaa !592
  %6 = load i32, ptr %mask, align 4, !dbg !2490, !tbaa !592
  %and = and i32 %5, %6, !dbg !2490
  store i32 %and, ptr %i, align 4, !dbg !2490, !tbaa !592
  %7 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  store i32 %7, ptr %last, align 4, !dbg !2490, !tbaa !592
  br label %while.cond, !dbg !2490

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !2490, !tbaa !589
  %flags = getelementptr inbounds %struct.kh_bam_store_s, ptr %8, i32 0, i32 4, !dbg !2490
  %9 = load ptr, ptr %flags, align 8, !dbg !2490, !tbaa !1947
  %10 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %shr = lshr i32 %10, 4, !dbg !2490
  %idxprom = zext i32 %shr to i64, !dbg !2490
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !2490
  %11 = load i32, ptr %arrayidx, align 4, !dbg !2490, !tbaa !592
  %12 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %and2 = and i32 %12, 15, !dbg !2490
  %shl = shl i32 %and2, 1, !dbg !2490
  %shr3 = lshr i32 %11, %shl, !dbg !2490
  %and4 = and i32 %shr3, 2, !dbg !2490
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2490
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !2490

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %h.addr, align 8, !dbg !2490, !tbaa !589
  %flags6 = getelementptr inbounds %struct.kh_bam_store_s, ptr %13, i32 0, i32 4, !dbg !2490
  %14 = load ptr, ptr %flags6, align 8, !dbg !2490, !tbaa !1947
  %15 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %shr7 = lshr i32 %15, 4, !dbg !2490
  %idxprom8 = zext i32 %shr7 to i64, !dbg !2490
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8, !dbg !2490
  %16 = load i32, ptr %arrayidx9, align 4, !dbg !2490, !tbaa !592
  %17 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %and10 = and i32 %17, 15, !dbg !2490
  %shl11 = shl i32 %and10, 1, !dbg !2490
  %shr12 = lshr i32 %16, %shl11, !dbg !2490
  %and13 = and i32 %shr12, 1, !dbg !2490
  %tobool14 = icmp ne i32 %and13, 0, !dbg !2490
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !2490

lor.rhs:                                          ; preds = %land.rhs
  %18 = load ptr, ptr %h.addr, align 8, !dbg !2490, !tbaa !589
  %keys = getelementptr inbounds %struct.kh_bam_store_s, ptr %18, i32 0, i32 5, !dbg !2490
  %19 = load ptr, ptr %keys, align 8, !dbg !2490, !tbaa !2491
  %20 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %idxprom15 = zext i32 %20 to i64, !dbg !2490
  %arrayidx16 = getelementptr inbounds ptr, ptr %19, i64 %idxprom15, !dbg !2490
  %21 = load ptr, ptr %arrayidx16, align 8, !dbg !2490, !tbaa !589
  %22 = load ptr, ptr %key.addr, align 8, !dbg !2490, !tbaa !589
  %call17 = call i32 @strcmp(ptr noundef %21, ptr noundef %22) #16, !dbg !2490
  %cmp = icmp eq i32 %call17, 0, !dbg !2490
  %lnot = xor i1 %cmp, true, !dbg !2490
  br label %lor.end, !dbg !2490

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %23, %lor.end ], !dbg !2492
  br i1 %24, label %while.body, label %while.end, !dbg !2490

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %i, align 4, !dbg !2493, !tbaa !592
  %26 = load i32, ptr %step, align 4, !dbg !2493, !tbaa !592
  %inc = add i32 %26, 1, !dbg !2493
  store i32 %inc, ptr %step, align 4, !dbg !2493, !tbaa !592
  %add = add i32 %25, %inc, !dbg !2493
  %27 = load i32, ptr %mask, align 4, !dbg !2493, !tbaa !592
  %and18 = and i32 %add, %27, !dbg !2493
  store i32 %and18, ptr %i, align 4, !dbg !2493, !tbaa !592
  %28 = load i32, ptr %i, align 4, !dbg !2495, !tbaa !592
  %29 = load i32, ptr %last, align 4, !dbg !2495, !tbaa !592
  %cmp19 = icmp eq i32 %28, %29, !dbg !2495
  br i1 %cmp19, label %if.then20, label %if.end, !dbg !2493

if.then20:                                        ; preds = %while.body
  %30 = load ptr, ptr %h.addr, align 8, !dbg !2495, !tbaa !589
  %n_buckets21 = getelementptr inbounds %struct.kh_bam_store_s, ptr %30, i32 0, i32 0, !dbg !2495
  %31 = load i32, ptr %n_buckets21, align 8, !dbg !2495, !tbaa !1758
  store i32 %31, ptr %retval, align 4, !dbg !2495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2495

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !2490, !llvm.loop !2497

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %h.addr, align 8, !dbg !2490, !tbaa !589
  %flags22 = getelementptr inbounds %struct.kh_bam_store_s, ptr %32, i32 0, i32 4, !dbg !2490
  %33 = load ptr, ptr %flags22, align 8, !dbg !2490, !tbaa !1947
  %34 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %shr23 = lshr i32 %34, 4, !dbg !2490
  %idxprom24 = zext i32 %shr23 to i64, !dbg !2490
  %arrayidx25 = getelementptr inbounds i32, ptr %33, i64 %idxprom24, !dbg !2490
  %35 = load i32, ptr %arrayidx25, align 4, !dbg !2490, !tbaa !592
  %36 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  %and26 = and i32 %36, 15, !dbg !2490
  %shl27 = shl i32 %and26, 1, !dbg !2490
  %shr28 = lshr i32 %35, %shl27, !dbg !2490
  %and29 = and i32 %shr28, 3, !dbg !2490
  %tobool30 = icmp ne i32 %and29, 0, !dbg !2490
  br i1 %tobool30, label %cond.true, label %cond.false, !dbg !2490

cond.true:                                        ; preds = %while.end
  %37 = load ptr, ptr %h.addr, align 8, !dbg !2490, !tbaa !589
  %n_buckets31 = getelementptr inbounds %struct.kh_bam_store_s, ptr %37, i32 0, i32 0, !dbg !2490
  %38 = load i32, ptr %n_buckets31, align 8, !dbg !2490, !tbaa !1758
  br label %cond.end, !dbg !2490

cond.false:                                       ; preds = %while.end
  %39 = load i32, ptr %i, align 4, !dbg !2490, !tbaa !592
  br label %cond.end, !dbg !2490

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !2490
  store i32 %cond, ptr %retval, align 4, !dbg !2490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2490

cleanup:                                          ; preds = %cond.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #14, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #14, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #14, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !2489
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2489
  br label %return, !dbg !2489

return:                                           ; preds = %if.else, %cleanup
  %40 = load i32, ptr %retval, align 4, !dbg !2488
  ret i32 %40, !dbg !2488
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_bam_store(ptr noundef %h, ptr noundef %key, ptr noundef %ret) #4 !dbg !2498 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %site = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2502, metadata !DIExpression()), !dbg !2513
  store ptr %key, ptr %key.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2503, metadata !DIExpression()), !dbg !2513
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !2504, metadata !DIExpression()), !dbg !2513
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #14, !dbg !2513
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !2505, metadata !DIExpression()), !dbg !2513
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2514, !tbaa !589
  %n_occupied = getelementptr inbounds %struct.kh_bam_store_s, ptr %0, i32 0, i32 2, !dbg !2514
  %1 = load i32, ptr %n_occupied, align 8, !dbg !2514, !tbaa !2516
  %2 = load ptr, ptr %h.addr, align 8, !dbg !2514, !tbaa !589
  %upper_bound = getelementptr inbounds %struct.kh_bam_store_s, ptr %2, i32 0, i32 3, !dbg !2514
  %3 = load i32, ptr %upper_bound, align 4, !dbg !2514, !tbaa !2517
  %cmp = icmp uge i32 %1, %3, !dbg !2514
  br i1 %cmp, label %if.then, label %if.end14, !dbg !2513

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %h.addr, align 8, !dbg !2518, !tbaa !589
  %n_buckets = getelementptr inbounds %struct.kh_bam_store_s, ptr %4, i32 0, i32 0, !dbg !2518
  %5 = load i32, ptr %n_buckets, align 8, !dbg !2518, !tbaa !1758
  %6 = load ptr, ptr %h.addr, align 8, !dbg !2518, !tbaa !589
  %size = getelementptr inbounds %struct.kh_bam_store_s, ptr %6, i32 0, i32 1, !dbg !2518
  %7 = load i32, ptr %size, align 4, !dbg !2518, !tbaa !2521
  %shl = shl i32 %7, 1, !dbg !2518
  %cmp1 = icmp ugt i32 %5, %shl, !dbg !2518
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2522

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !2523, !tbaa !589
  %9 = load ptr, ptr %h.addr, align 8, !dbg !2523, !tbaa !589
  %n_buckets3 = getelementptr inbounds %struct.kh_bam_store_s, ptr %9, i32 0, i32 0, !dbg !2523
  %10 = load i32, ptr %n_buckets3, align 8, !dbg !2523, !tbaa !1758
  %sub = sub i32 %10, 1, !dbg !2523
  %call = call i32 @kh_resize_bam_store(ptr noundef %8, i32 noundef %sub), !dbg !2523
  %cmp4 = icmp slt i32 %call, 0, !dbg !2523
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2526

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %ret.addr, align 8, !dbg !2527, !tbaa !589
  store i32 -1, ptr %11, align 4, !dbg !2527, !tbaa !592
  %12 = load ptr, ptr %h.addr, align 8, !dbg !2527, !tbaa !589
  %n_buckets6 = getelementptr inbounds %struct.kh_bam_store_s, ptr %12, i32 0, i32 0, !dbg !2527
  %13 = load i32, ptr %n_buckets6, align 8, !dbg !2527, !tbaa !1758
  store i32 %13, ptr %retval, align 4, !dbg !2527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2527

if.end:                                           ; preds = %if.then2
  br label %if.end13, !dbg !2526

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %h.addr, align 8, !dbg !2529, !tbaa !589
  %15 = load ptr, ptr %h.addr, align 8, !dbg !2529, !tbaa !589
  %n_buckets7 = getelementptr inbounds %struct.kh_bam_store_s, ptr %15, i32 0, i32 0, !dbg !2529
  %16 = load i32, ptr %n_buckets7, align 8, !dbg !2529, !tbaa !1758
  %add = add i32 %16, 1, !dbg !2529
  %call8 = call i32 @kh_resize_bam_store(ptr noundef %14, i32 noundef %add), !dbg !2529
  %cmp9 = icmp slt i32 %call8, 0, !dbg !2529
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2518

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %ret.addr, align 8, !dbg !2531, !tbaa !589
  store i32 -1, ptr %17, align 4, !dbg !2531, !tbaa !592
  %18 = load ptr, ptr %h.addr, align 8, !dbg !2531, !tbaa !589
  %n_buckets11 = getelementptr inbounds %struct.kh_bam_store_s, ptr %18, i32 0, i32 0, !dbg !2531
  %19 = load i32, ptr %n_buckets11, align 8, !dbg !2531, !tbaa !1758
  store i32 %19, ptr %retval, align 4, !dbg !2531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2531

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14, !dbg !2522

if.end14:                                         ; preds = %if.end13, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2508, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 4, ptr %site) #14, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %site, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #14, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #14, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !2511, metadata !DIExpression()), !dbg !2533
  %20 = load ptr, ptr %h.addr, align 8, !dbg !2533, !tbaa !589
  %n_buckets15 = getelementptr inbounds %struct.kh_bam_store_s, ptr %20, i32 0, i32 0, !dbg !2533
  %21 = load i32, ptr %n_buckets15, align 8, !dbg !2533, !tbaa !1758
  %sub16 = sub i32 %21, 1, !dbg !2533
  store i32 %sub16, ptr %mask, align 4, !dbg !2533, !tbaa !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #14, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !2512, metadata !DIExpression()), !dbg !2533
  store i32 0, ptr %step, align 4, !dbg !2533, !tbaa !592
  %22 = load ptr, ptr %h.addr, align 8, !dbg !2533, !tbaa !589
  %n_buckets17 = getelementptr inbounds %struct.kh_bam_store_s, ptr %22, i32 0, i32 0, !dbg !2533
  %23 = load i32, ptr %n_buckets17, align 8, !dbg !2533, !tbaa !1758
  store i32 %23, ptr %site, align 4, !dbg !2533, !tbaa !592
  store i32 %23, ptr %x, align 4, !dbg !2533, !tbaa !592
  %24 = load ptr, ptr %key.addr, align 8, !dbg !2533, !tbaa !589
  %call18 = call i32 @__ac_X31_hash_string(ptr noundef %24), !dbg !2533
  store i32 %call18, ptr %k, align 4, !dbg !2533, !tbaa !592
  %25 = load i32, ptr %k, align 4, !dbg !2533, !tbaa !592
  %26 = load i32, ptr %mask, align 4, !dbg !2533, !tbaa !592
  %and = and i32 %25, %26, !dbg !2533
  store i32 %and, ptr %i, align 4, !dbg !2533, !tbaa !592
  %27 = load ptr, ptr %h.addr, align 8, !dbg !2534, !tbaa !589
  %flags = getelementptr inbounds %struct.kh_bam_store_s, ptr %27, i32 0, i32 4, !dbg !2534
  %28 = load ptr, ptr %flags, align 8, !dbg !2534, !tbaa !1947
  %29 = load i32, ptr %i, align 4, !dbg !2534, !tbaa !592
  %shr = lshr i32 %29, 4, !dbg !2534
  %idxprom = zext i32 %shr to i64, !dbg !2534
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom, !dbg !2534
  %30 = load i32, ptr %arrayidx, align 4, !dbg !2534, !tbaa !592
  %31 = load i32, ptr %i, align 4, !dbg !2534, !tbaa !592
  %and19 = and i32 %31, 15, !dbg !2534
  %shl20 = shl i32 %and19, 1, !dbg !2534
  %shr21 = lshr i32 %30, %shl20, !dbg !2534
  %and22 = and i32 %shr21, 2, !dbg !2534
  %tobool = icmp ne i32 %and22, 0, !dbg !2534
  br i1 %tobool, label %if.then23, label %if.else24, !dbg !2533

if.then23:                                        ; preds = %if.end14
  %32 = load i32, ptr %i, align 4, !dbg !2534, !tbaa !592
  store i32 %32, ptr %x, align 4, !dbg !2534, !tbaa !592
  br label %if.end81, !dbg !2534

if.else24:                                        ; preds = %if.end14
  %33 = load i32, ptr %i, align 4, !dbg !2536, !tbaa !592
  store i32 %33, ptr %last, align 4, !dbg !2536, !tbaa !592
  br label %while.cond, !dbg !2536

while.cond:                                       ; preds = %if.end62, %if.else24
  %34 = load ptr, ptr %h.addr, align 8, !dbg !2536, !tbaa !589
  %flags25 = getelementptr inbounds %struct.kh_bam_store_s, ptr %34, i32 0, i32 4, !dbg !2536
  %35 = load ptr, ptr %flags25, align 8, !dbg !2536, !tbaa !1947
  %36 = load i32, ptr %i, align 4, !dbg !2536, !tbaa !592
  %shr26 = lshr i32 %36, 4, !dbg !2536
  %idxprom27 = zext i32 %shr26 to i64, !dbg !2536
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 %idxprom27, !dbg !2536
  %37 = load i32, ptr %arrayidx28, align 4, !dbg !2536, !tbaa !592
  %38 = load i32, ptr %i, align 4, !dbg !2536, !tbaa !592
  %and29 = and i32 %38, 15, !dbg !2536
  %shl30 = shl i32 %and29, 1, !dbg !2536
  %shr31 = lshr i32 %37, %shl30, !dbg !2536
  %and32 = and i32 %shr31, 2, !dbg !2536
  %tobool33 = icmp ne i32 %and32, 0, !dbg !2536
  br i1 %tobool33, label %land.end, label %land.rhs, !dbg !2536

land.rhs:                                         ; preds = %while.cond
  %39 = load ptr, ptr %h.addr, align 8, !dbg !2536, !tbaa !589
  %flags34 = getelementptr inbounds %struct.kh_bam_store_s, ptr %39, i32 0, i32 4, !dbg !2536
  %40 = load ptr, ptr %flags34, align 8, !dbg !2536, !tbaa !1947
  %41 = load i32, ptr %i, align 4, !dbg !2536, !tbaa !592
  %shr35 = lshr i32 %41, 4, !dbg !2536
  %idxprom36 = zext i32 %shr35 to i64, !dbg !2536
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36, !dbg !2536
  %42 = load i32, ptr %arrayidx37, align 4, !dbg !2536, !tbaa !592
  %43 = load i32, ptr %i, align 4, !dbg !2536, !tbaa !592
  %and38 = and i32 %43, 15, !dbg !2536
  %shl39 = shl i32 %and38, 1, !dbg !2536
  %shr40 = lshr i32 %42, %shl39, !dbg !2536
  %and41 = and i32 %shr40, 1, !dbg !2536
  %tobool42 = icmp ne i32 %and41, 0, !dbg !2536
  br i1 %tobool42, label %lor.end, label %lor.rhs, !dbg !2536

lor.rhs:                                          ; preds = %land.rhs
  %44 = load ptr, ptr %h.addr, align 8, !dbg !2536, !tbaa !589
  %keys = getelementptr inbounds %struct.kh_bam_store_s, ptr %44, i32 0, i32 5, !dbg !2536
  %45 = load ptr, ptr %keys, align 8, !dbg !2536, !tbaa !2491
  %46 = load i32, ptr %i, align 4, !dbg !2536, !tbaa !592
  %idxprom43 = zext i32 %46 to i64, !dbg !2536
  %arrayidx44 = getelementptr inbounds ptr, ptr %45, i64 %idxprom43, !dbg !2536
  %47 = load ptr, ptr %arrayidx44, align 8, !dbg !2536, !tbaa !589
  %48 = load ptr, ptr %key.addr, align 8, !dbg !2536, !tbaa !589
  %call45 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #16, !dbg !2536
  %cmp46 = icmp eq i32 %call45, 0, !dbg !2536
  %lnot = xor i1 %cmp46, true, !dbg !2536
  br label %lor.end, !dbg !2536

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %49, %lor.end ], !dbg !2538
  br i1 %50, label %while.body, label %while.end, !dbg !2536

while.body:                                       ; preds = %land.end
  %51 = load ptr, ptr %h.addr, align 8, !dbg !2539, !tbaa !589
  %flags47 = getelementptr inbounds %struct.kh_bam_store_s, ptr %51, i32 0, i32 4, !dbg !2539
  %52 = load ptr, ptr %flags47, align 8, !dbg !2539, !tbaa !1947
  %53 = load i32, ptr %i, align 4, !dbg !2539, !tbaa !592
  %shr48 = lshr i32 %53, 4, !dbg !2539
  %idxprom49 = zext i32 %shr48 to i64, !dbg !2539
  %arrayidx50 = getelementptr inbounds i32, ptr %52, i64 %idxprom49, !dbg !2539
  %54 = load i32, ptr %arrayidx50, align 4, !dbg !2539, !tbaa !592
  %55 = load i32, ptr %i, align 4, !dbg !2539, !tbaa !592
  %and51 = and i32 %55, 15, !dbg !2539
  %shl52 = shl i32 %and51, 1, !dbg !2539
  %shr53 = lshr i32 %54, %shl52, !dbg !2539
  %and54 = and i32 %shr53, 1, !dbg !2539
  %tobool55 = icmp ne i32 %and54, 0, !dbg !2539
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !2542

if.then56:                                        ; preds = %while.body
  %56 = load i32, ptr %i, align 4, !dbg !2539, !tbaa !592
  store i32 %56, ptr %site, align 4, !dbg !2539, !tbaa !592
  br label %if.end57, !dbg !2539

if.end57:                                         ; preds = %if.then56, %while.body
  %57 = load i32, ptr %i, align 4, !dbg !2542, !tbaa !592
  %58 = load i32, ptr %step, align 4, !dbg !2542, !tbaa !592
  %inc = add i32 %58, 1, !dbg !2542
  store i32 %inc, ptr %step, align 4, !dbg !2542, !tbaa !592
  %add58 = add i32 %57, %inc, !dbg !2542
  %59 = load i32, ptr %mask, align 4, !dbg !2542, !tbaa !592
  %and59 = and i32 %add58, %59, !dbg !2542
  store i32 %and59, ptr %i, align 4, !dbg !2542, !tbaa !592
  %60 = load i32, ptr %i, align 4, !dbg !2543, !tbaa !592
  %61 = load i32, ptr %last, align 4, !dbg !2543, !tbaa !592
  %cmp60 = icmp eq i32 %60, %61, !dbg !2543
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2542

if.then61:                                        ; preds = %if.end57
  %62 = load i32, ptr %site, align 4, !dbg !2545, !tbaa !592
  store i32 %62, ptr %x, align 4, !dbg !2545, !tbaa !592
  br label %while.end, !dbg !2545

if.end62:                                         ; preds = %if.end57
  br label %while.cond, !dbg !2536, !llvm.loop !2547

while.end:                                        ; preds = %if.then61, %land.end
  %63 = load i32, ptr %x, align 4, !dbg !2548, !tbaa !592
  %64 = load ptr, ptr %h.addr, align 8, !dbg !2548, !tbaa !589
  %n_buckets63 = getelementptr inbounds %struct.kh_bam_store_s, ptr %64, i32 0, i32 0, !dbg !2548
  %65 = load i32, ptr %n_buckets63, align 8, !dbg !2548, !tbaa !1758
  %cmp64 = icmp eq i32 %63, %65, !dbg !2548
  br i1 %cmp64, label %if.then65, label %if.end80, !dbg !2536

if.then65:                                        ; preds = %while.end
  %66 = load ptr, ptr %h.addr, align 8, !dbg !2550, !tbaa !589
  %flags66 = getelementptr inbounds %struct.kh_bam_store_s, ptr %66, i32 0, i32 4, !dbg !2550
  %67 = load ptr, ptr %flags66, align 8, !dbg !2550, !tbaa !1947
  %68 = load i32, ptr %i, align 4, !dbg !2550, !tbaa !592
  %shr67 = lshr i32 %68, 4, !dbg !2550
  %idxprom68 = zext i32 %shr67 to i64, !dbg !2550
  %arrayidx69 = getelementptr inbounds i32, ptr %67, i64 %idxprom68, !dbg !2550
  %69 = load i32, ptr %arrayidx69, align 4, !dbg !2550, !tbaa !592
  %70 = load i32, ptr %i, align 4, !dbg !2550, !tbaa !592
  %and70 = and i32 %70, 15, !dbg !2550
  %shl71 = shl i32 %and70, 1, !dbg !2550
  %shr72 = lshr i32 %69, %shl71, !dbg !2550
  %and73 = and i32 %shr72, 2, !dbg !2550
  %tobool74 = icmp ne i32 %and73, 0, !dbg !2550
  br i1 %tobool74, label %land.lhs.true, label %if.else78, !dbg !2550

land.lhs.true:                                    ; preds = %if.then65
  %71 = load i32, ptr %site, align 4, !dbg !2550, !tbaa !592
  %72 = load ptr, ptr %h.addr, align 8, !dbg !2550, !tbaa !589
  %n_buckets75 = getelementptr inbounds %struct.kh_bam_store_s, ptr %72, i32 0, i32 0, !dbg !2550
  %73 = load i32, ptr %n_buckets75, align 8, !dbg !2550, !tbaa !1758
  %cmp76 = icmp ne i32 %71, %73, !dbg !2550
  br i1 %cmp76, label %if.then77, label %if.else78, !dbg !2553

if.then77:                                        ; preds = %land.lhs.true
  %74 = load i32, ptr %site, align 4, !dbg !2550, !tbaa !592
  store i32 %74, ptr %x, align 4, !dbg !2550, !tbaa !592
  br label %if.end79, !dbg !2550

if.else78:                                        ; preds = %land.lhs.true, %if.then65
  %75 = load i32, ptr %i, align 4, !dbg !2550, !tbaa !592
  store i32 %75, ptr %x, align 4, !dbg !2550, !tbaa !592
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  br label %if.end80, !dbg !2553

if.end80:                                         ; preds = %if.end79, %while.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #14, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #14, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #14, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 4, ptr %site) #14, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !2513
  %76 = load ptr, ptr %h.addr, align 8, !dbg !2554, !tbaa !589
  %flags82 = getelementptr inbounds %struct.kh_bam_store_s, ptr %76, i32 0, i32 4, !dbg !2554
  %77 = load ptr, ptr %flags82, align 8, !dbg !2554, !tbaa !1947
  %78 = load i32, ptr %x, align 4, !dbg !2554, !tbaa !592
  %shr83 = lshr i32 %78, 4, !dbg !2554
  %idxprom84 = zext i32 %shr83 to i64, !dbg !2554
  %arrayidx85 = getelementptr inbounds i32, ptr %77, i64 %idxprom84, !dbg !2554
  %79 = load i32, ptr %arrayidx85, align 4, !dbg !2554, !tbaa !592
  %80 = load i32, ptr %x, align 4, !dbg !2554, !tbaa !592
  %and86 = and i32 %80, 15, !dbg !2554
  %shl87 = shl i32 %and86, 1, !dbg !2554
  %shr88 = lshr i32 %79, %shl87, !dbg !2554
  %and89 = and i32 %shr88, 2, !dbg !2554
  %tobool90 = icmp ne i32 %and89, 0, !dbg !2554
  br i1 %tobool90, label %if.then91, label %if.else108, !dbg !2513

if.then91:                                        ; preds = %if.end81
  %81 = load ptr, ptr %key.addr, align 8, !dbg !2556, !tbaa !589
  %82 = load ptr, ptr %h.addr, align 8, !dbg !2556, !tbaa !589
  %keys92 = getelementptr inbounds %struct.kh_bam_store_s, ptr %82, i32 0, i32 5, !dbg !2556
  %83 = load ptr, ptr %keys92, align 8, !dbg !2556, !tbaa !2491
  %84 = load i32, ptr %x, align 4, !dbg !2556, !tbaa !592
  %idxprom93 = zext i32 %84 to i64, !dbg !2556
  %arrayidx94 = getelementptr inbounds ptr, ptr %83, i64 %idxprom93, !dbg !2556
  store ptr %81, ptr %arrayidx94, align 8, !dbg !2556, !tbaa !589
  %85 = load i32, ptr %x, align 4, !dbg !2556, !tbaa !592
  %and95 = and i32 %85, 15, !dbg !2556
  %shl96 = shl i32 %and95, 1, !dbg !2556
  %sh_prom = zext i32 %shl96 to i64, !dbg !2556
  %shl97 = shl i64 3, %sh_prom, !dbg !2556
  %not = xor i64 %shl97, -1, !dbg !2556
  %86 = load ptr, ptr %h.addr, align 8, !dbg !2556, !tbaa !589
  %flags98 = getelementptr inbounds %struct.kh_bam_store_s, ptr %86, i32 0, i32 4, !dbg !2556
  %87 = load ptr, ptr %flags98, align 8, !dbg !2556, !tbaa !1947
  %88 = load i32, ptr %x, align 4, !dbg !2556, !tbaa !592
  %shr99 = lshr i32 %88, 4, !dbg !2556
  %idxprom100 = zext i32 %shr99 to i64, !dbg !2556
  %arrayidx101 = getelementptr inbounds i32, ptr %87, i64 %idxprom100, !dbg !2556
  %89 = load i32, ptr %arrayidx101, align 4, !dbg !2556, !tbaa !592
  %conv = zext i32 %89 to i64, !dbg !2556
  %and102 = and i64 %conv, %not, !dbg !2556
  %conv103 = trunc i64 %and102 to i32, !dbg !2556
  store i32 %conv103, ptr %arrayidx101, align 4, !dbg !2556, !tbaa !592
  %90 = load ptr, ptr %h.addr, align 8, !dbg !2556, !tbaa !589
  %size104 = getelementptr inbounds %struct.kh_bam_store_s, ptr %90, i32 0, i32 1, !dbg !2556
  %91 = load i32, ptr %size104, align 4, !dbg !2556, !tbaa !2521
  %inc105 = add i32 %91, 1, !dbg !2556
  store i32 %inc105, ptr %size104, align 4, !dbg !2556, !tbaa !2521
  %92 = load ptr, ptr %h.addr, align 8, !dbg !2556, !tbaa !589
  %n_occupied106 = getelementptr inbounds %struct.kh_bam_store_s, ptr %92, i32 0, i32 2, !dbg !2556
  %93 = load i32, ptr %n_occupied106, align 8, !dbg !2556, !tbaa !2516
  %inc107 = add i32 %93, 1, !dbg !2556
  store i32 %inc107, ptr %n_occupied106, align 8, !dbg !2556, !tbaa !2516
  %94 = load ptr, ptr %ret.addr, align 8, !dbg !2556, !tbaa !589
  store i32 1, ptr %94, align 4, !dbg !2556, !tbaa !592
  br label %if.end138, !dbg !2556

if.else108:                                       ; preds = %if.end81
  %95 = load ptr, ptr %h.addr, align 8, !dbg !2558, !tbaa !589
  %flags109 = getelementptr inbounds %struct.kh_bam_store_s, ptr %95, i32 0, i32 4, !dbg !2558
  %96 = load ptr, ptr %flags109, align 8, !dbg !2558, !tbaa !1947
  %97 = load i32, ptr %x, align 4, !dbg !2558, !tbaa !592
  %shr110 = lshr i32 %97, 4, !dbg !2558
  %idxprom111 = zext i32 %shr110 to i64, !dbg !2558
  %arrayidx112 = getelementptr inbounds i32, ptr %96, i64 %idxprom111, !dbg !2558
  %98 = load i32, ptr %arrayidx112, align 4, !dbg !2558, !tbaa !592
  %99 = load i32, ptr %x, align 4, !dbg !2558, !tbaa !592
  %and113 = and i32 %99, 15, !dbg !2558
  %shl114 = shl i32 %and113, 1, !dbg !2558
  %shr115 = lshr i32 %98, %shl114, !dbg !2558
  %and116 = and i32 %shr115, 1, !dbg !2558
  %tobool117 = icmp ne i32 %and116, 0, !dbg !2558
  br i1 %tobool117, label %if.then118, label %if.else136, !dbg !2554

if.then118:                                       ; preds = %if.else108
  %100 = load ptr, ptr %key.addr, align 8, !dbg !2560, !tbaa !589
  %101 = load ptr, ptr %h.addr, align 8, !dbg !2560, !tbaa !589
  %keys119 = getelementptr inbounds %struct.kh_bam_store_s, ptr %101, i32 0, i32 5, !dbg !2560
  %102 = load ptr, ptr %keys119, align 8, !dbg !2560, !tbaa !2491
  %103 = load i32, ptr %x, align 4, !dbg !2560, !tbaa !592
  %idxprom120 = zext i32 %103 to i64, !dbg !2560
  %arrayidx121 = getelementptr inbounds ptr, ptr %102, i64 %idxprom120, !dbg !2560
  store ptr %100, ptr %arrayidx121, align 8, !dbg !2560, !tbaa !589
  %104 = load i32, ptr %x, align 4, !dbg !2560, !tbaa !592
  %and122 = and i32 %104, 15, !dbg !2560
  %shl123 = shl i32 %and122, 1, !dbg !2560
  %sh_prom124 = zext i32 %shl123 to i64, !dbg !2560
  %shl125 = shl i64 3, %sh_prom124, !dbg !2560
  %not126 = xor i64 %shl125, -1, !dbg !2560
  %105 = load ptr, ptr %h.addr, align 8, !dbg !2560, !tbaa !589
  %flags127 = getelementptr inbounds %struct.kh_bam_store_s, ptr %105, i32 0, i32 4, !dbg !2560
  %106 = load ptr, ptr %flags127, align 8, !dbg !2560, !tbaa !1947
  %107 = load i32, ptr %x, align 4, !dbg !2560, !tbaa !592
  %shr128 = lshr i32 %107, 4, !dbg !2560
  %idxprom129 = zext i32 %shr128 to i64, !dbg !2560
  %arrayidx130 = getelementptr inbounds i32, ptr %106, i64 %idxprom129, !dbg !2560
  %108 = load i32, ptr %arrayidx130, align 4, !dbg !2560, !tbaa !592
  %conv131 = zext i32 %108 to i64, !dbg !2560
  %and132 = and i64 %conv131, %not126, !dbg !2560
  %conv133 = trunc i64 %and132 to i32, !dbg !2560
  store i32 %conv133, ptr %arrayidx130, align 4, !dbg !2560, !tbaa !592
  %109 = load ptr, ptr %h.addr, align 8, !dbg !2560, !tbaa !589
  %size134 = getelementptr inbounds %struct.kh_bam_store_s, ptr %109, i32 0, i32 1, !dbg !2560
  %110 = load i32, ptr %size134, align 4, !dbg !2560, !tbaa !2521
  %inc135 = add i32 %110, 1, !dbg !2560
  store i32 %inc135, ptr %size134, align 4, !dbg !2560, !tbaa !2521
  %111 = load ptr, ptr %ret.addr, align 8, !dbg !2560, !tbaa !589
  store i32 2, ptr %111, align 4, !dbg !2560, !tbaa !592
  br label %if.end137, !dbg !2560

if.else136:                                       ; preds = %if.else108
  %112 = load ptr, ptr %ret.addr, align 8, !dbg !2558, !tbaa !589
  store i32 0, ptr %112, align 4, !dbg !2558, !tbaa !592
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then118
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then91
  %113 = load i32, ptr %x, align 4, !dbg !2513, !tbaa !592
  store i32 %113, ptr %retval, align 4, !dbg !2513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2513

cleanup:                                          ; preds = %if.end138, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #14, !dbg !2513
  %114 = load i32, ptr %retval, align 4, !dbg !2513
  ret i32 %114, !dbg !2513
}

; Function Attrs: nounwind uwtable
define internal ptr @store_bam(ptr noundef %list) #0 !dbg !2562 {
entry:
  %list.addr = alloca ptr, align 8
  %old_index = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_index) #14, !dbg !2569
  tail call void @llvm.dbg.declare(metadata ptr %old_index, metadata !2567, metadata !DIExpression()), !dbg !2570
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2571, !tbaa !589
  %index = getelementptr inbounds %struct.bam_list_t, ptr %0, i32 0, i32 3, !dbg !2572
  %1 = load i64, ptr %index, align 8, !dbg !2572, !tbaa !1723
  store i64 %1, ptr %old_index, align 8, !dbg !2570, !tbaa !584
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2573, !tbaa !589
  %items = getelementptr inbounds %struct.bam_list_t, ptr %2, i32 0, i32 1, !dbg !2574
  %3 = load ptr, ptr %items, align 8, !dbg !2574, !tbaa !1720
  %4 = load ptr, ptr %list.addr, align 8, !dbg !2575, !tbaa !589
  %index1 = getelementptr inbounds %struct.bam_list_t, ptr %4, i32 0, i32 3, !dbg !2576
  %5 = load i64, ptr %index1, align 8, !dbg !2577, !tbaa !1723
  %inc = add i64 %5, 1, !dbg !2577
  store i64 %inc, ptr %index1, align 8, !dbg !2577, !tbaa !1723
  %arrayidx = getelementptr inbounds %struct.bam_item_t, ptr %3, i64 %5, !dbg !2573
  %written = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx, i32 0, i32 0, !dbg !2578
  store i32 0, ptr %written, align 8, !dbg !2579, !tbaa !663
  %6 = load ptr, ptr %list.addr, align 8, !dbg !2580, !tbaa !589
  %index2 = getelementptr inbounds %struct.bam_list_t, ptr %6, i32 0, i32 3, !dbg !2582
  %7 = load i64, ptr %index2, align 8, !dbg !2582, !tbaa !1723
  %8 = load ptr, ptr %list.addr, align 8, !dbg !2583, !tbaa !589
  %size = getelementptr inbounds %struct.bam_list_t, ptr %8, i32 0, i32 2, !dbg !2584
  %9 = load i64, ptr %size, align 8, !dbg !2584, !tbaa !1896
  %cmp = icmp uge i64 %7, %9, !dbg !2585
  br i1 %cmp, label %if.then, label %if.end, !dbg !2586

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %list.addr, align 8, !dbg !2587, !tbaa !589
  %index3 = getelementptr inbounds %struct.bam_list_t, ptr %10, i32 0, i32 3, !dbg !2588
  store i64 0, ptr %index3, align 8, !dbg !2589, !tbaa !1723
  br label %if.end, !dbg !2587

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %list.addr, align 8, !dbg !2590, !tbaa !589
  %items4 = getelementptr inbounds %struct.bam_list_t, ptr %11, i32 0, i32 1, !dbg !2591
  %12 = load ptr, ptr %items4, align 8, !dbg !2591, !tbaa !1720
  %13 = load i64, ptr %old_index, align 8, !dbg !2592, !tbaa !584
  %arrayidx5 = getelementptr inbounds %struct.bam_item_t, ptr %12, i64 %13, !dbg !2590
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_index) #14, !dbg !2593
  ret ptr %arrayidx5, !dbg !2594
}

; Function Attrs: nounwind uwtable
define internal i32 @write_bam_needed(ptr noundef %list) #0 !dbg !2595 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2599, metadata !DIExpression()), !dbg !2600
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2601, !tbaa !589
  %items = getelementptr inbounds %struct.bam_list_t, ptr %0, i32 0, i32 1, !dbg !2602
  %1 = load ptr, ptr %items, align 8, !dbg !2602, !tbaa !1720
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2603, !tbaa !589
  %index = getelementptr inbounds %struct.bam_list_t, ptr %2, i32 0, i32 3, !dbg !2604
  %3 = load i64, ptr %index, align 8, !dbg !2604, !tbaa !1723
  %arrayidx = getelementptr inbounds %struct.bam_item_t, ptr %1, i64 %3, !dbg !2601
  %written = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx, i32 0, i32 0, !dbg !2605
  %4 = load i32, ptr %written, align 8, !dbg !2605, !tbaa !663
  %tobool = icmp ne i32 %4, 0, !dbg !2606
  %lnot = xor i1 %tobool, true, !dbg !2606
  %lnot.ext = zext i1 %lnot to i32, !dbg !2606
  ret i32 %lnot.ext, !dbg !2607
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @write_to_bin_file(ptr noundef %bam, ptr noundef %count, ptr noundef %bin_files, ptr noundef %names, ptr noundef %header, i32 noundef %files) #4 !dbg !2608 {
entry:
  %retval = alloca i32, align 4
  %bam.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %bin_files.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %header.addr = alloca ptr, align 8
  %files.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bam, ptr %bam.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %bam.addr, metadata !2612, metadata !DIExpression()), !dbg !2619
  store ptr %count, ptr %count.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2613, metadata !DIExpression()), !dbg !2620
  store ptr %bin_files, ptr %bin_files.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %bin_files.addr, metadata !2614, metadata !DIExpression()), !dbg !2621
  store ptr %names, ptr %names.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !2615, metadata !DIExpression()), !dbg !2622
  store ptr %header, ptr %header.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !2616, metadata !DIExpression()), !dbg !2623
  store i32 %files, ptr %files.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %files.addr, metadata !2617, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #14, !dbg !2625
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !2618, metadata !DIExpression()), !dbg !2626
  %0 = load ptr, ptr %bam.addr, align 8, !dbg !2627, !tbaa !589
  %data = getelementptr inbounds %struct.bam1_t, ptr %0, i32 0, i32 2, !dbg !2627
  %1 = load ptr, ptr %data, align 8, !dbg !2627, !tbaa !677
  %call = call i32 @hash_X31_Wang(ptr noundef %1), !dbg !2628
  %2 = load i32, ptr %files.addr, align 4, !dbg !2629, !tbaa !592
  %rem = urem i32 %call, %2, !dbg !2630
  store i32 %rem, ptr %x, align 4, !dbg !2631, !tbaa !592
  %3 = load ptr, ptr %bin_files.addr, align 8, !dbg !2632, !tbaa !589
  %4 = load i32, ptr %x, align 4, !dbg !2634, !tbaa !592
  %idxprom = zext i32 %4 to i64, !dbg !2632
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !2632
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !2632, !tbaa !589
  %6 = load ptr, ptr %header.addr, align 8, !dbg !2635, !tbaa !589
  %7 = load ptr, ptr %bam.addr, align 8, !dbg !2636, !tbaa !589
  %call1 = call i32 @sam_write1(ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !2637
  %cmp = icmp slt i32 %call1, 0, !dbg !2638
  br i1 %cmp, label %if.then, label %if.end, !dbg !2639

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %names.addr, align 8, !dbg !2640, !tbaa !589
  %9 = load i32, ptr %x, align 4, !dbg !2642, !tbaa !592
  %idxprom2 = zext i32 %9 to i64, !dbg !2640
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 %idxprom2, !dbg !2640
  %10 = load ptr, ptr %arrayidx3, align 8, !dbg !2640, !tbaa !589
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str, ptr noundef @.str.58, ptr noundef %10), !dbg !2643
  store i32 1, ptr %retval, align 4, !dbg !2644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2644

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %count.addr, align 8, !dbg !2645, !tbaa !589
  %12 = load i32, ptr %x, align 4, !dbg !2646, !tbaa !592
  %idxprom4 = zext i32 %12 to i64, !dbg !2645
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 %idxprom4, !dbg !2645
  %13 = load i64, ptr %arrayidx5, align 8, !dbg !2647, !tbaa !584
  %inc = add nsw i64 %13, 1, !dbg !2647
  store i64 %inc, ptr %arrayidx5, align 8, !dbg !2647, !tbaa !584
  store i32 0, ptr %retval, align 4, !dbg !2648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2648

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #14, !dbg !2649
  %14 = load i32, ptr %retval, align 4, !dbg !2649
  ret i32 %14, !dbg !2649
}

; Function Attrs: nounwind uwtable
define internal void @mark_bam_as_written(ptr noundef %list) #0 !dbg !2650 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2654, metadata !DIExpression()), !dbg !2655
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2656, !tbaa !589
  %items = getelementptr inbounds %struct.bam_list_t, ptr %0, i32 0, i32 1, !dbg !2657
  %1 = load ptr, ptr %items, align 8, !dbg !2657, !tbaa !1720
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2658, !tbaa !589
  %index = getelementptr inbounds %struct.bam_list_t, ptr %2, i32 0, i32 3, !dbg !2659
  %3 = load i64, ptr %index, align 8, !dbg !2659, !tbaa !1723
  %arrayidx = getelementptr inbounds %struct.bam_item_t, ptr %1, i64 %3, !dbg !2656
  %written = getelementptr inbounds %struct.bam_item_t, ptr %arrayidx, i32 0, i32 0, !dbg !2660
  store i32 1, ptr %written, align 8, !dbg !2661, !tbaa !663
  ret void, !dbg !2662
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_del_bam_store(ptr noundef %h, i32 noundef %x) #4 !dbg !2663 {
entry:
  %h.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2667, metadata !DIExpression()), !dbg !2669
  store i32 %x, ptr %x.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  %0 = load i32, ptr %x.addr, align 4, !dbg !2670, !tbaa !592
  %1 = load ptr, ptr %h.addr, align 8, !dbg !2670, !tbaa !589
  %n_buckets = getelementptr inbounds %struct.kh_bam_store_s, ptr %1, i32 0, i32 0, !dbg !2670
  %2 = load i32, ptr %n_buckets, align 8, !dbg !2670, !tbaa !1758
  %cmp = icmp ne i32 %0, %2, !dbg !2670
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2670

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8, !dbg !2670, !tbaa !589
  %flags = getelementptr inbounds %struct.kh_bam_store_s, ptr %3, i32 0, i32 4, !dbg !2670
  %4 = load ptr, ptr %flags, align 8, !dbg !2670, !tbaa !1947
  %5 = load i32, ptr %x.addr, align 4, !dbg !2670, !tbaa !592
  %shr = lshr i32 %5, 4, !dbg !2670
  %idxprom = zext i32 %shr to i64, !dbg !2670
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom, !dbg !2670
  %6 = load i32, ptr %arrayidx, align 4, !dbg !2670, !tbaa !592
  %7 = load i32, ptr %x.addr, align 4, !dbg !2670, !tbaa !592
  %and = and i32 %7, 15, !dbg !2670
  %shl = shl i32 %and, 1, !dbg !2670
  %shr1 = lshr i32 %6, %shl, !dbg !2670
  %and2 = and i32 %shr1, 3, !dbg !2670
  %tobool = icmp ne i32 %and2, 0, !dbg !2670
  br i1 %tobool, label %if.end, label %if.then, !dbg !2669

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %x.addr, align 4, !dbg !2672, !tbaa !592
  %and3 = and i32 %8, 15, !dbg !2672
  %shl4 = shl i32 %and3, 1, !dbg !2672
  %sh_prom = zext i32 %shl4 to i64, !dbg !2672
  %shl5 = shl i64 1, %sh_prom, !dbg !2672
  %9 = load ptr, ptr %h.addr, align 8, !dbg !2672, !tbaa !589
  %flags6 = getelementptr inbounds %struct.kh_bam_store_s, ptr %9, i32 0, i32 4, !dbg !2672
  %10 = load ptr, ptr %flags6, align 8, !dbg !2672, !tbaa !1947
  %11 = load i32, ptr %x.addr, align 4, !dbg !2672, !tbaa !592
  %shr7 = lshr i32 %11, 4, !dbg !2672
  %idxprom8 = zext i32 %shr7 to i64, !dbg !2672
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 %idxprom8, !dbg !2672
  %12 = load i32, ptr %arrayidx9, align 4, !dbg !2672, !tbaa !592
  %conv = zext i32 %12 to i64, !dbg !2672
  %or = or i64 %conv, %shl5, !dbg !2672
  %conv10 = trunc i64 %or to i32, !dbg !2672
  store i32 %conv10, ptr %arrayidx9, align 4, !dbg !2672, !tbaa !592
  %13 = load ptr, ptr %h.addr, align 8, !dbg !2672, !tbaa !589
  %size = getelementptr inbounds %struct.kh_bam_store_s, ptr %13, i32 0, i32 1, !dbg !2672
  %14 = load i32, ptr %size, align 4, !dbg !2672, !tbaa !2521
  %dec = add i32 %14, -1, !dbg !2672
  store i32 %dec, ptr %size, align 4, !dbg !2672, !tbaa !2521
  br label %if.end, !dbg !2672

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !2669
}

declare !dbg !2674 i32 @sam_write1(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_bam_store(ptr noundef %h) #4 !dbg !2679 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2685, !tbaa !589
  %tobool = icmp ne ptr %0, null, !dbg !2685
  br i1 %tobool, label %if.then, label %if.end, !dbg !2684

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !2687, !tbaa !589
  %keys = getelementptr inbounds %struct.kh_bam_store_s, ptr %1, i32 0, i32 5, !dbg !2687
  %2 = load ptr, ptr %keys, align 8, !dbg !2687, !tbaa !2491
  call void @free(ptr noundef %2) #14, !dbg !2687
  %3 = load ptr, ptr %h.addr, align 8, !dbg !2687, !tbaa !589
  %flags = getelementptr inbounds %struct.kh_bam_store_s, ptr %3, i32 0, i32 4, !dbg !2687
  %4 = load ptr, ptr %flags, align 8, !dbg !2687, !tbaa !1947
  call void @free(ptr noundef %4) #14, !dbg !2687
  %5 = load ptr, ptr %h.addr, align 8, !dbg !2687, !tbaa !589
  %vals = getelementptr inbounds %struct.kh_bam_store_s, ptr %5, i32 0, i32 6, !dbg !2687
  %6 = load ptr, ptr %vals, align 8, !dbg !2687, !tbaa !1772
  call void @free(ptr noundef %6) #14, !dbg !2687
  %7 = load ptr, ptr %h.addr, align 8, !dbg !2687, !tbaa !589
  call void @free(ptr noundef %7) #14, !dbg !2687
  br label %if.end, !dbg !2687

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define internal void @destroy_bam_list(ptr noundef %list) #0 !dbg !2689 {
entry:
  %list.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !2694
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2692, metadata !DIExpression()), !dbg !2695
  store i64 0, ptr %i, align 8, !dbg !2696, !tbaa !584
  br label %for.cond, !dbg !2698

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !2699, !tbaa !584
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2701, !tbaa !589
  %size = getelementptr inbounds %struct.bam_list_t, ptr %1, i32 0, i32 2, !dbg !2702
  %2 = load i64, ptr %size, align 8, !dbg !2702, !tbaa !1896
  %cmp = icmp ult i64 %0, %2, !dbg !2703
  br i1 %cmp, label %for.body, label %for.end, !dbg !2704

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2705, !tbaa !589
  %bam_pool = getelementptr inbounds %struct.bam_list_t, ptr %3, i32 0, i32 0, !dbg !2707
  %4 = load ptr, ptr %bam_pool, align 8, !dbg !2707, !tbaa !2412
  %5 = load i64, ptr %i, align 8, !dbg !2708, !tbaa !584
  %arrayidx = getelementptr inbounds %struct.bam1_t, ptr %4, i64 %5, !dbg !2705
  %data = getelementptr inbounds %struct.bam1_t, ptr %arrayidx, i32 0, i32 2, !dbg !2709
  %6 = load ptr, ptr %data, align 8, !dbg !2709, !tbaa !677
  call void @free(ptr noundef %6) #14, !dbg !2710
  br label %for.inc, !dbg !2711

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8, !dbg !2712, !tbaa !584
  %inc = add i64 %7, 1, !dbg !2712
  store i64 %inc, ptr %i, align 8, !dbg !2712, !tbaa !584
  br label %for.cond, !dbg !2713, !llvm.loop !2714

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %list.addr, align 8, !dbg !2716, !tbaa !589
  %bam_pool1 = getelementptr inbounds %struct.bam_list_t, ptr %8, i32 0, i32 0, !dbg !2717
  %9 = load ptr, ptr %bam_pool1, align 8, !dbg !2717, !tbaa !2412
  call void @free(ptr noundef %9) #14, !dbg !2718
  %10 = load ptr, ptr %list.addr, align 8, !dbg !2719, !tbaa !589
  %items = getelementptr inbounds %struct.bam_list_t, ptr %10, i32 0, i32 1, !dbg !2720
  %11 = load ptr, ptr %items, align 8, !dbg !2720, !tbaa !1720
  call void @free(ptr noundef %11) #14, !dbg !2721
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !2722
  ret void, !dbg !2722
}

declare !dbg !2723 ptr @bam_init1() #6

declare !dbg !2726 void @bam_destroy1(ptr noundef) #6

declare !dbg !2729 i32 @hts_close(ptr noundef) #6

declare !dbg !2732 void @sam_hdr_destroy(ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash_X31_Wang(ptr noundef %s) #4 !dbg !2735 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #14, !dbg !2742
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !2740, metadata !DIExpression()), !dbg !2743
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2744, !tbaa !589
  %1 = load i8, ptr %0, align 1, !dbg !2745, !tbaa !1521
  %conv = sext i8 %1 to i32, !dbg !2745
  store i32 %conv, ptr %h, align 4, !dbg !2743, !tbaa !592
  %2 = load i32, ptr %h, align 4, !dbg !2746, !tbaa !592
  %tobool = icmp ne i32 %2, 0, !dbg !2746
  br i1 %tobool, label %if.then, label %if.else, !dbg !2748

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2749, !tbaa !589
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !2749
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !2749, !tbaa !589
  br label %for.cond, !dbg !2749

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2752, !tbaa !589
  %5 = load i8, ptr %4, align 1, !dbg !2754, !tbaa !1521
  %tobool1 = icmp ne i8 %5, 0, !dbg !2755
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2755

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %h, align 4, !dbg !2756, !tbaa !592
  %shl = shl i32 %6, 5, !dbg !2757
  %7 = load i32, ptr %h, align 4, !dbg !2758, !tbaa !592
  %sub = sub i32 %shl, %7, !dbg !2759
  %8 = load ptr, ptr %s.addr, align 8, !dbg !2760, !tbaa !589
  %9 = load i8, ptr %8, align 1, !dbg !2761, !tbaa !1521
  %conv2 = sext i8 %9 to i32, !dbg !2761
  %add = add i32 %sub, %conv2, !dbg !2762
  store i32 %add, ptr %h, align 4, !dbg !2763, !tbaa !592
  br label %for.inc, !dbg !2764

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2765, !tbaa !589
  %incdec.ptr3 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !2765
  store ptr %incdec.ptr3, ptr %s.addr, align 8, !dbg !2765, !tbaa !589
  br label %for.cond, !dbg !2766, !llvm.loop !2767

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %h, align 4, !dbg !2769, !tbaa !592
  %call = call i32 @hash_Wang(i32 noundef %11), !dbg !2770
  store i32 %call, ptr %retval, align 4, !dbg !2771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2771

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2772

cleanup:                                          ; preds = %if.else, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #14, !dbg !2773
  %12 = load i32, ptr %retval, align 4, !dbg !2773
  ret i32 %12, !dbg !2773
}

; Function Attrs: nounwind
declare !dbg !2774 i32 @unlink(ptr noundef) #5

declare !dbg !2775 void @sam_global_args_free(ptr noundef) #6

declare !dbg !2778 void @hts_tpool_destroy(ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ac_X31_hash_string(ptr noundef %s) #4 !dbg !2781 {
entry:
  %s.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #14, !dbg !2788
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !2786, metadata !DIExpression()), !dbg !2789
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2790, !tbaa !589
  %1 = load i8, ptr %0, align 1, !dbg !2791, !tbaa !1521
  %conv = sext i8 %1 to i32, !dbg !2792
  store i32 %conv, ptr %h, align 4, !dbg !2789, !tbaa !592
  %2 = load i32, ptr %h, align 4, !dbg !2793, !tbaa !592
  %tobool = icmp ne i32 %2, 0, !dbg !2793
  br i1 %tobool, label %if.then, label %if.end, !dbg !2795

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2796, !tbaa !589
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !2796
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !2796, !tbaa !589
  br label %for.cond, !dbg !2796

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2798, !tbaa !589
  %5 = load i8, ptr %4, align 1, !dbg !2800, !tbaa !1521
  %tobool1 = icmp ne i8 %5, 0, !dbg !2801
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2801

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %h, align 4, !dbg !2802, !tbaa !592
  %shl = shl i32 %6, 5, !dbg !2803
  %7 = load i32, ptr %h, align 4, !dbg !2804, !tbaa !592
  %sub = sub i32 %shl, %7, !dbg !2805
  %8 = load ptr, ptr %s.addr, align 8, !dbg !2806, !tbaa !589
  %9 = load i8, ptr %8, align 1, !dbg !2807, !tbaa !1521
  %conv2 = sext i8 %9 to i32, !dbg !2808
  %add = add i32 %sub, %conv2, !dbg !2809
  store i32 %add, ptr %h, align 4, !dbg !2810, !tbaa !592
  br label %for.inc, !dbg !2811

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2812, !tbaa !589
  %incdec.ptr3 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !2812
  store ptr %incdec.ptr3, ptr %s.addr, align 8, !dbg !2812, !tbaa !589
  br label %for.cond, !dbg !2813, !llvm.loop !2814

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2815

if.end:                                           ; preds = %for.end, %entry
  %11 = load i32, ptr %h, align 4, !dbg !2816, !tbaa !592
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #14, !dbg !2817
  ret i32 %11, !dbg !2818
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_bam_store(ptr noundef %h, i32 noundef %new_n_buckets) #4 !dbg !2819 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %new_n_buckets.addr = alloca i32, align 4
  %new_flags = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %new_keys = alloca ptr, align 8
  %new_vals = alloca ptr, align 8
  %key = alloca ptr, align 8
  %val = alloca %struct.store_item_t, align 8
  %new_mask = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp144 = alloca %struct.store_item_t, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !589
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2823, metadata !DIExpression()), !dbg !2857
  store i32 %new_n_buckets, ptr %new_n_buckets.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %new_n_buckets.addr, metadata !2824, metadata !DIExpression()), !dbg !2857
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #14, !dbg !2857
  tail call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !2825, metadata !DIExpression()), !dbg !2857
  store ptr null, ptr %new_flags, align 8, !dbg !2857, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !2857
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2826, metadata !DIExpression()), !dbg !2857
  store i32 1, ptr %j, align 4, !dbg !2857, !tbaa !592
  %0 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %cmp = icmp ugt i32 %0, 0, !dbg !2858
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2858

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %dec = add i32 %1, -1, !dbg !2858
  store i32 %dec, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %2 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %shr = lshr i32 %2, 0, !dbg !2858
  %3 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %or = or i32 %3, %shr, !dbg !2858
  store i32 %or, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %4 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %shr1 = lshr i32 %4, 1, !dbg !2858
  %5 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %or2 = or i32 %5, %shr1, !dbg !2858
  store i32 %or2, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %6 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %shr3 = lshr i32 %6, 2, !dbg !2858
  %7 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %or4 = or i32 %7, %shr3, !dbg !2858
  store i32 %or4, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %8 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %shr5 = lshr i32 %8, 4, !dbg !2858
  %9 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %or6 = or i32 %9, %shr5, !dbg !2858
  store i32 %or6, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %10 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %shr7 = lshr i32 %10, 8, !dbg !2858
  %11 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %or8 = or i32 %11, %shr7, !dbg !2858
  store i32 %or8, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %12 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %shr9 = lshr i32 %12, 16, !dbg !2858
  %13 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %or10 = or i32 %13, %shr9, !dbg !2858
  store i32 %or10, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %14 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %15 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %mul = mul i32 %15, 0, !dbg !2858
  %add = add i32 %mul, 1, !dbg !2858
  %sub = sub i32 0, %add, !dbg !2858
  %cmp11 = icmp ugt i32 %sub, 0, !dbg !2858
  %lnot = xor i1 %cmp11, true, !dbg !2858
  %lnot.ext = zext i1 %lnot to i32, !dbg !2858
  %conv = sext i32 %lnot.ext to i64, !dbg !2858
  %sub12 = sub i64 31, %conv, !dbg !2858
  %sh_prom = trunc i64 %sub12 to i32, !dbg !2858
  %shr13 = lshr i32 %14, %sh_prom, !dbg !2858
  %and = and i32 %shr13, 1, !dbg !2858
  %tobool = icmp ne i32 %and, 0, !dbg !2858
  %lnot14 = xor i1 %tobool, true, !dbg !2858
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !2858
  %16 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %add16 = add i32 %16, %lnot.ext15, !dbg !2858
  store i32 %add16, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  %17 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2858, !tbaa !592
  br label %cond.end, !dbg !2858

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ], !dbg !2858
  %18 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2859, !tbaa !592
  %cmp17 = icmp ult i32 %18, 4, !dbg !2859
  br i1 %cmp17, label %if.then, label %if.end, !dbg !2858

if.then:                                          ; preds = %cond.end
  store i32 4, ptr %new_n_buckets.addr, align 4, !dbg !2859, !tbaa !592
  br label %if.end, !dbg !2859

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load ptr, ptr %h.addr, align 8, !dbg !2861, !tbaa !589
  %size = getelementptr inbounds %struct.kh_bam_store_s, ptr %19, i32 0, i32 1, !dbg !2861
  %20 = load i32, ptr %size, align 4, !dbg !2861, !tbaa !2521
  %21 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2861, !tbaa !592
  %conv19 = uitofp i32 %21 to double, !dbg !2861
  %22 = call double @llvm.fmuladd.f64(double %conv19, double 7.700000e-01, double 5.000000e-01), !dbg !2861
  %conv21 = fptoui double %22 to i32, !dbg !2861
  %cmp22 = icmp uge i32 %20, %conv21, !dbg !2861
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !2858

if.then24:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !dbg !2861, !tbaa !592
  br label %if.end67, !dbg !2861

if.else:                                          ; preds = %if.end
  %23 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2862, !tbaa !592
  %cmp25 = icmp ult i32 %23, 16, !dbg !2862
  br i1 %cmp25, label %cond.true27, label %cond.false28, !dbg !2862

cond.true27:                                      ; preds = %if.else
  br label %cond.end30, !dbg !2862

cond.false28:                                     ; preds = %if.else
  %24 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2862, !tbaa !592
  %shr29 = lshr i32 %24, 4, !dbg !2862
  br label %cond.end30, !dbg !2862

cond.end30:                                       ; preds = %cond.false28, %cond.true27
  %cond31 = phi i32 [ 1, %cond.true27 ], [ %shr29, %cond.false28 ], !dbg !2862
  %conv32 = zext i32 %cond31 to i64, !dbg !2862
  %mul33 = mul i64 %conv32, 4, !dbg !2862
  %call = call noalias ptr @malloc(i64 noundef %mul33) #15, !dbg !2862
  store ptr %call, ptr %new_flags, align 8, !dbg !2862, !tbaa !589
  %25 = load ptr, ptr %new_flags, align 8, !dbg !2863, !tbaa !589
  %tobool34 = icmp ne ptr %25, null, !dbg !2863
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !2862

if.then35:                                        ; preds = %cond.end30
  store i32 -1, ptr %retval, align 4, !dbg !2863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !2863

if.end36:                                         ; preds = %cond.end30
  %26 = load ptr, ptr %new_flags, align 8, !dbg !2862, !tbaa !589
  %27 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2862, !tbaa !592
  %cmp37 = icmp ult i32 %27, 16, !dbg !2862
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !2862

cond.true39:                                      ; preds = %if.end36
  br label %cond.end42, !dbg !2862

cond.false40:                                     ; preds = %if.end36
  %28 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2862, !tbaa !592
  %shr41 = lshr i32 %28, 4, !dbg !2862
  br label %cond.end42, !dbg !2862

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi i32 [ 1, %cond.true39 ], [ %shr41, %cond.false40 ], !dbg !2862
  %conv44 = zext i32 %cond43 to i64, !dbg !2862
  %mul45 = mul i64 %conv44, 4, !dbg !2862
  call void @llvm.memset.p0.i64(ptr align 4 %26, i8 -86, i64 %mul45, i1 false), !dbg !2862
  %29 = load ptr, ptr %h.addr, align 8, !dbg !2865, !tbaa !589
  %n_buckets = getelementptr inbounds %struct.kh_bam_store_s, ptr %29, i32 0, i32 0, !dbg !2865
  %30 = load i32, ptr %n_buckets, align 8, !dbg !2865, !tbaa !1758
  %31 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2865, !tbaa !592
  %cmp46 = icmp ult i32 %30, %31, !dbg !2865
  br i1 %cmp46, label %if.then48, label %if.end66, !dbg !2862

if.then48:                                        ; preds = %cond.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_keys) #14, !dbg !2866
  tail call void @llvm.dbg.declare(metadata ptr %new_keys, metadata !2827, metadata !DIExpression()), !dbg !2866
  %32 = load ptr, ptr %h.addr, align 8, !dbg !2866, !tbaa !589
  %keys = getelementptr inbounds %struct.kh_bam_store_s, ptr %32, i32 0, i32 5, !dbg !2866
  %33 = load ptr, ptr %keys, align 8, !dbg !2866, !tbaa !2491
  %34 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2866, !tbaa !592
  %conv49 = zext i32 %34 to i64, !dbg !2866
  %mul50 = mul i64 %conv49, 8, !dbg !2866
  %call51 = call ptr @realloc(ptr noundef %33, i64 noundef %mul50) #19, !dbg !2866
  store ptr %call51, ptr %new_keys, align 8, !dbg !2866, !tbaa !589
  %35 = load ptr, ptr %new_keys, align 8, !dbg !2867, !tbaa !589
  %tobool52 = icmp ne ptr %35, null, !dbg !2867
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !2866

if.then53:                                        ; preds = %if.then48
  %36 = load ptr, ptr %new_flags, align 8, !dbg !2869, !tbaa !589
  call void @free(ptr noundef %36) #14, !dbg !2869
  store i32 -1, ptr %retval, align 4, !dbg !2869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !2869

if.end54:                                         ; preds = %if.then48
  %37 = load ptr, ptr %new_keys, align 8, !dbg !2866, !tbaa !589
  %38 = load ptr, ptr %h.addr, align 8, !dbg !2866, !tbaa !589
  %keys55 = getelementptr inbounds %struct.kh_bam_store_s, ptr %38, i32 0, i32 5, !dbg !2866
  store ptr %37, ptr %keys55, align 8, !dbg !2866, !tbaa !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vals) #14, !dbg !2871
  tail call void @llvm.dbg.declare(metadata ptr %new_vals, metadata !2833, metadata !DIExpression()), !dbg !2871
  %39 = load ptr, ptr %h.addr, align 8, !dbg !2871, !tbaa !589
  %vals = getelementptr inbounds %struct.kh_bam_store_s, ptr %39, i32 0, i32 6, !dbg !2871
  %40 = load ptr, ptr %vals, align 8, !dbg !2871, !tbaa !1772
  %41 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2871, !tbaa !592
  %conv56 = zext i32 %41 to i64, !dbg !2871
  %mul57 = mul i64 %conv56, 8, !dbg !2871
  %call58 = call ptr @realloc(ptr noundef %40, i64 noundef %mul57) #19, !dbg !2871
  store ptr %call58, ptr %new_vals, align 8, !dbg !2871, !tbaa !589
  %42 = load ptr, ptr %new_vals, align 8, !dbg !2872, !tbaa !589
  %tobool59 = icmp ne ptr %42, null, !dbg !2872
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !2871

if.then60:                                        ; preds = %if.end54
  %43 = load ptr, ptr %new_flags, align 8, !dbg !2874, !tbaa !589
  call void @free(ptr noundef %43) #14, !dbg !2874
  store i32 -1, ptr %retval, align 4, !dbg !2874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2874

if.end61:                                         ; preds = %if.end54
  %44 = load ptr, ptr %new_vals, align 8, !dbg !2871, !tbaa !589
  %45 = load ptr, ptr %h.addr, align 8, !dbg !2871, !tbaa !589
  %vals62 = getelementptr inbounds %struct.kh_bam_store_s, ptr %45, i32 0, i32 6, !dbg !2871
  store ptr %44, ptr %vals62, align 8, !dbg !2871, !tbaa !1772
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2876
  br label %cleanup, !dbg !2876

cleanup:                                          ; preds = %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vals) #14, !dbg !2876
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2865
  br label %cleanup63, !dbg !2865

cleanup63:                                        ; preds = %cleanup.cont, %cleanup, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_keys) #14, !dbg !2865
  %cleanup.dest64 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest64, label %cleanup202 [
    i32 0, label %cleanup.cont65
  ]

cleanup.cont65:                                   ; preds = %cleanup63
  br label %if.end66, !dbg !2866

if.end66:                                         ; preds = %cleanup.cont65, %cond.end42
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then24
  %46 = load i32, ptr %j, align 4, !dbg !2877, !tbaa !592
  %tobool68 = icmp ne i32 %46, 0, !dbg !2877
  br i1 %tobool68, label %if.then69, label %if.end201, !dbg !2857

if.then69:                                        ; preds = %if.end67
  store i32 0, ptr %j, align 4, !dbg !2878, !tbaa !592
  br label %for.cond, !dbg !2878

for.cond:                                         ; preds = %for.inc, %if.then69
  %47 = load i32, ptr %j, align 4, !dbg !2879, !tbaa !592
  %48 = load ptr, ptr %h.addr, align 8, !dbg !2879, !tbaa !589
  %n_buckets70 = getelementptr inbounds %struct.kh_bam_store_s, ptr %48, i32 0, i32 0, !dbg !2879
  %49 = load i32, ptr %n_buckets70, align 8, !dbg !2879, !tbaa !1758
  %cmp71 = icmp ne i32 %47, %49, !dbg !2879
  br i1 %cmp71, label %for.body, label %for.end, !dbg !2878

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %h.addr, align 8, !dbg !2880, !tbaa !589
  %flags = getelementptr inbounds %struct.kh_bam_store_s, ptr %50, i32 0, i32 4, !dbg !2880
  %51 = load ptr, ptr %flags, align 8, !dbg !2880, !tbaa !1947
  %52 = load i32, ptr %j, align 4, !dbg !2880, !tbaa !592
  %shr73 = lshr i32 %52, 4, !dbg !2880
  %idxprom = zext i32 %shr73 to i64, !dbg !2880
  %arrayidx = getelementptr inbounds i32, ptr %51, i64 %idxprom, !dbg !2880
  %53 = load i32, ptr %arrayidx, align 4, !dbg !2880, !tbaa !592
  %54 = load i32, ptr %j, align 4, !dbg !2880, !tbaa !592
  %and74 = and i32 %54, 15, !dbg !2880
  %shl = shl i32 %and74, 1, !dbg !2880
  %shr75 = lshr i32 %53, %shl, !dbg !2880
  %and76 = and i32 %shr75, 3, !dbg !2880
  %cmp77 = icmp eq i32 %and76, 0, !dbg !2880
  br i1 %cmp77, label %if.then79, label %if.end176, !dbg !2881

if.then79:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #14, !dbg !2882
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2836, metadata !DIExpression()), !dbg !2882
  %55 = load ptr, ptr %h.addr, align 8, !dbg !2882, !tbaa !589
  %keys80 = getelementptr inbounds %struct.kh_bam_store_s, ptr %55, i32 0, i32 5, !dbg !2882
  %56 = load ptr, ptr %keys80, align 8, !dbg !2882, !tbaa !2491
  %57 = load i32, ptr %j, align 4, !dbg !2882, !tbaa !592
  %idxprom81 = zext i32 %57 to i64, !dbg !2882
  %arrayidx82 = getelementptr inbounds ptr, ptr %56, i64 %idxprom81, !dbg !2882
  %58 = load ptr, ptr %arrayidx82, align 8, !dbg !2882, !tbaa !589
  store ptr %58, ptr %key, align 8, !dbg !2882, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2882
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !2844, metadata !DIExpression()), !dbg !2882
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #14, !dbg !2882
  tail call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !2845, metadata !DIExpression()), !dbg !2882
  %59 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2882, !tbaa !592
  %sub83 = sub i32 %59, 1, !dbg !2882
  store i32 %sub83, ptr %new_mask, align 4, !dbg !2882, !tbaa !592
  %60 = load ptr, ptr %h.addr, align 8, !dbg !2883, !tbaa !589
  %vals84 = getelementptr inbounds %struct.kh_bam_store_s, ptr %60, i32 0, i32 6, !dbg !2883
  %61 = load ptr, ptr %vals84, align 8, !dbg !2883, !tbaa !1772
  %62 = load i32, ptr %j, align 4, !dbg !2883, !tbaa !592
  %idxprom85 = zext i32 %62 to i64, !dbg !2883
  %arrayidx86 = getelementptr inbounds %struct.store_item_t, ptr %61, i64 %idxprom85, !dbg !2883
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %arrayidx86, i64 8, i1 false), !dbg !2883, !tbaa.struct !2885
  %63 = load i32, ptr %j, align 4, !dbg !2882, !tbaa !592
  %and87 = and i32 %63, 15, !dbg !2882
  %shl88 = shl i32 %and87, 1, !dbg !2882
  %sh_prom89 = zext i32 %shl88 to i64, !dbg !2882
  %shl90 = shl i64 1, %sh_prom89, !dbg !2882
  %64 = load ptr, ptr %h.addr, align 8, !dbg !2882, !tbaa !589
  %flags91 = getelementptr inbounds %struct.kh_bam_store_s, ptr %64, i32 0, i32 4, !dbg !2882
  %65 = load ptr, ptr %flags91, align 8, !dbg !2882, !tbaa !1947
  %66 = load i32, ptr %j, align 4, !dbg !2882, !tbaa !592
  %shr92 = lshr i32 %66, 4, !dbg !2882
  %idxprom93 = zext i32 %shr92 to i64, !dbg !2882
  %arrayidx94 = getelementptr inbounds i32, ptr %65, i64 %idxprom93, !dbg !2882
  %67 = load i32, ptr %arrayidx94, align 4, !dbg !2882, !tbaa !592
  %conv95 = zext i32 %67 to i64, !dbg !2882
  %or96 = or i64 %conv95, %shl90, !dbg !2882
  %conv97 = trunc i64 %or96 to i32, !dbg !2882
  store i32 %conv97, ptr %arrayidx94, align 4, !dbg !2882, !tbaa !592
  br label %while.cond, !dbg !2882

while.cond:                                       ; preds = %cleanup.cont174, %if.then79
  br label %while.body, !dbg !2882

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #14, !dbg !2886
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2846, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2886
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2848, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #14, !dbg !2886
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !2849, metadata !DIExpression()), !dbg !2886
  store i32 0, ptr %step, align 4, !dbg !2886, !tbaa !592
  %68 = load ptr, ptr %key, align 8, !dbg !2886, !tbaa !589
  %call98 = call i32 @__ac_X31_hash_string(ptr noundef %68), !dbg !2886
  store i32 %call98, ptr %k, align 4, !dbg !2886, !tbaa !592
  %69 = load i32, ptr %k, align 4, !dbg !2886, !tbaa !592
  %70 = load i32, ptr %new_mask, align 4, !dbg !2886, !tbaa !592
  %and99 = and i32 %69, %70, !dbg !2886
  store i32 %and99, ptr %i, align 4, !dbg !2886, !tbaa !592
  br label %while.cond100, !dbg !2886

while.cond100:                                    ; preds = %while.body111, %while.body
  %71 = load ptr, ptr %new_flags, align 8, !dbg !2886, !tbaa !589
  %72 = load i32, ptr %i, align 4, !dbg !2886, !tbaa !592
  %shr101 = lshr i32 %72, 4, !dbg !2886
  %idxprom102 = zext i32 %shr101 to i64, !dbg !2886
  %arrayidx103 = getelementptr inbounds i32, ptr %71, i64 %idxprom102, !dbg !2886
  %73 = load i32, ptr %arrayidx103, align 4, !dbg !2886, !tbaa !592
  %74 = load i32, ptr %i, align 4, !dbg !2886, !tbaa !592
  %and104 = and i32 %74, 15, !dbg !2886
  %shl105 = shl i32 %and104, 1, !dbg !2886
  %shr106 = lshr i32 %73, %shl105, !dbg !2886
  %and107 = and i32 %shr106, 2, !dbg !2886
  %tobool108 = icmp ne i32 %and107, 0, !dbg !2886
  %lnot109 = xor i1 %tobool108, true, !dbg !2886
  br i1 %lnot109, label %while.body111, label %while.end, !dbg !2886

while.body111:                                    ; preds = %while.cond100
  %75 = load i32, ptr %i, align 4, !dbg !2886, !tbaa !592
  %76 = load i32, ptr %step, align 4, !dbg !2886, !tbaa !592
  %inc = add i32 %76, 1, !dbg !2886
  store i32 %inc, ptr %step, align 4, !dbg !2886, !tbaa !592
  %add112 = add i32 %75, %inc, !dbg !2886
  %77 = load i32, ptr %new_mask, align 4, !dbg !2886, !tbaa !592
  %and113 = and i32 %add112, %77, !dbg !2886
  store i32 %and113, ptr %i, align 4, !dbg !2886, !tbaa !592
  br label %while.cond100, !dbg !2886, !llvm.loop !2887

while.end:                                        ; preds = %while.cond100
  %78 = load i32, ptr %i, align 4, !dbg !2886, !tbaa !592
  %and114 = and i32 %78, 15, !dbg !2886
  %shl115 = shl i32 %and114, 1, !dbg !2886
  %sh_prom116 = zext i32 %shl115 to i64, !dbg !2886
  %shl117 = shl i64 2, %sh_prom116, !dbg !2886
  %not = xor i64 %shl117, -1, !dbg !2886
  %79 = load ptr, ptr %new_flags, align 8, !dbg !2886, !tbaa !589
  %80 = load i32, ptr %i, align 4, !dbg !2886, !tbaa !592
  %shr118 = lshr i32 %80, 4, !dbg !2886
  %idxprom119 = zext i32 %shr118 to i64, !dbg !2886
  %arrayidx120 = getelementptr inbounds i32, ptr %79, i64 %idxprom119, !dbg !2886
  %81 = load i32, ptr %arrayidx120, align 4, !dbg !2886, !tbaa !592
  %conv121 = zext i32 %81 to i64, !dbg !2886
  %and122 = and i64 %conv121, %not, !dbg !2886
  %conv123 = trunc i64 %and122 to i32, !dbg !2886
  store i32 %conv123, ptr %arrayidx120, align 4, !dbg !2886, !tbaa !592
  %82 = load i32, ptr %i, align 4, !dbg !2888, !tbaa !592
  %83 = load ptr, ptr %h.addr, align 8, !dbg !2888, !tbaa !589
  %n_buckets124 = getelementptr inbounds %struct.kh_bam_store_s, ptr %83, i32 0, i32 0, !dbg !2888
  %84 = load i32, ptr %n_buckets124, align 8, !dbg !2888, !tbaa !1758
  %cmp125 = icmp ult i32 %82, %84, !dbg !2888
  br i1 %cmp125, label %land.lhs.true, label %if.else162, !dbg !2888

land.lhs.true:                                    ; preds = %while.end
  %85 = load ptr, ptr %h.addr, align 8, !dbg !2888, !tbaa !589
  %flags127 = getelementptr inbounds %struct.kh_bam_store_s, ptr %85, i32 0, i32 4, !dbg !2888
  %86 = load ptr, ptr %flags127, align 8, !dbg !2888, !tbaa !1947
  %87 = load i32, ptr %i, align 4, !dbg !2888, !tbaa !592
  %shr128 = lshr i32 %87, 4, !dbg !2888
  %idxprom129 = zext i32 %shr128 to i64, !dbg !2888
  %arrayidx130 = getelementptr inbounds i32, ptr %86, i64 %idxprom129, !dbg !2888
  %88 = load i32, ptr %arrayidx130, align 4, !dbg !2888, !tbaa !592
  %89 = load i32, ptr %i, align 4, !dbg !2888, !tbaa !592
  %and131 = and i32 %89, 15, !dbg !2888
  %shl132 = shl i32 %and131, 1, !dbg !2888
  %shr133 = lshr i32 %88, %shl132, !dbg !2888
  %and134 = and i32 %shr133, 3, !dbg !2888
  %cmp135 = icmp eq i32 %and134, 0, !dbg !2888
  br i1 %cmp135, label %if.then137, label %if.else162, !dbg !2886

if.then137:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !2889
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2850, metadata !DIExpression()), !dbg !2889
  %90 = load ptr, ptr %h.addr, align 8, !dbg !2889, !tbaa !589
  %keys138 = getelementptr inbounds %struct.kh_bam_store_s, ptr %90, i32 0, i32 5, !dbg !2889
  %91 = load ptr, ptr %keys138, align 8, !dbg !2889, !tbaa !2491
  %92 = load i32, ptr %i, align 4, !dbg !2889, !tbaa !592
  %idxprom139 = zext i32 %92 to i64, !dbg !2889
  %arrayidx140 = getelementptr inbounds ptr, ptr %91, i64 %idxprom139, !dbg !2889
  %93 = load ptr, ptr %arrayidx140, align 8, !dbg !2889, !tbaa !589
  store ptr %93, ptr %tmp, align 8, !dbg !2889, !tbaa !589
  %94 = load ptr, ptr %key, align 8, !dbg !2889, !tbaa !589
  %95 = load ptr, ptr %h.addr, align 8, !dbg !2889, !tbaa !589
  %keys141 = getelementptr inbounds %struct.kh_bam_store_s, ptr %95, i32 0, i32 5, !dbg !2889
  %96 = load ptr, ptr %keys141, align 8, !dbg !2889, !tbaa !2491
  %97 = load i32, ptr %i, align 4, !dbg !2889, !tbaa !592
  %idxprom142 = zext i32 %97 to i64, !dbg !2889
  %arrayidx143 = getelementptr inbounds ptr, ptr %96, i64 %idxprom142, !dbg !2889
  store ptr %94, ptr %arrayidx143, align 8, !dbg !2889, !tbaa !589
  %98 = load ptr, ptr %tmp, align 8, !dbg !2889, !tbaa !589
  store ptr %98, ptr %key, align 8, !dbg !2889, !tbaa !589
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !2890
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp144) #14, !dbg !2891
  tail call void @llvm.dbg.declare(metadata ptr %tmp144, metadata !2854, metadata !DIExpression()), !dbg !2891
  %99 = load ptr, ptr %h.addr, align 8, !dbg !2891, !tbaa !589
  %vals145 = getelementptr inbounds %struct.kh_bam_store_s, ptr %99, i32 0, i32 6, !dbg !2891
  %100 = load ptr, ptr %vals145, align 8, !dbg !2891, !tbaa !1772
  %101 = load i32, ptr %i, align 4, !dbg !2891, !tbaa !592
  %idxprom146 = zext i32 %101 to i64, !dbg !2891
  %arrayidx147 = getelementptr inbounds %struct.store_item_t, ptr %100, i64 %idxprom146, !dbg !2891
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp144, ptr align 8 %arrayidx147, i64 8, i1 false), !dbg !2891, !tbaa.struct !2885
  %102 = load ptr, ptr %h.addr, align 8, !dbg !2891, !tbaa !589
  %vals148 = getelementptr inbounds %struct.kh_bam_store_s, ptr %102, i32 0, i32 6, !dbg !2891
  %103 = load ptr, ptr %vals148, align 8, !dbg !2891, !tbaa !1772
  %104 = load i32, ptr %i, align 4, !dbg !2891, !tbaa !592
  %idxprom149 = zext i32 %104 to i64, !dbg !2891
  %arrayidx150 = getelementptr inbounds %struct.store_item_t, ptr %103, i64 %idxprom149, !dbg !2891
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx150, ptr align 8 %val, i64 8, i1 false), !dbg !2891, !tbaa.struct !2885
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %tmp144, i64 8, i1 false), !dbg !2891, !tbaa.struct !2885
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp144) #14, !dbg !2892
  %105 = load i32, ptr %i, align 4, !dbg !2890, !tbaa !592
  %and151 = and i32 %105, 15, !dbg !2890
  %shl152 = shl i32 %and151, 1, !dbg !2890
  %sh_prom153 = zext i32 %shl152 to i64, !dbg !2890
  %shl154 = shl i64 1, %sh_prom153, !dbg !2890
  %106 = load ptr, ptr %h.addr, align 8, !dbg !2890, !tbaa !589
  %flags155 = getelementptr inbounds %struct.kh_bam_store_s, ptr %106, i32 0, i32 4, !dbg !2890
  %107 = load ptr, ptr %flags155, align 8, !dbg !2890, !tbaa !1947
  %108 = load i32, ptr %i, align 4, !dbg !2890, !tbaa !592
  %shr156 = lshr i32 %108, 4, !dbg !2890
  %idxprom157 = zext i32 %shr156 to i64, !dbg !2890
  %arrayidx158 = getelementptr inbounds i32, ptr %107, i64 %idxprom157, !dbg !2890
  %109 = load i32, ptr %arrayidx158, align 4, !dbg !2890, !tbaa !592
  %conv159 = zext i32 %109 to i64, !dbg !2890
  %or160 = or i64 %conv159, %shl154, !dbg !2890
  %conv161 = trunc i64 %or160 to i32, !dbg !2890
  store i32 %conv161, ptr %arrayidx158, align 4, !dbg !2890, !tbaa !592
  br label %if.end169, !dbg !2890

if.else162:                                       ; preds = %land.lhs.true, %while.end
  %110 = load ptr, ptr %key, align 8, !dbg !2893, !tbaa !589
  %111 = load ptr, ptr %h.addr, align 8, !dbg !2893, !tbaa !589
  %keys163 = getelementptr inbounds %struct.kh_bam_store_s, ptr %111, i32 0, i32 5, !dbg !2893
  %112 = load ptr, ptr %keys163, align 8, !dbg !2893, !tbaa !2491
  %113 = load i32, ptr %i, align 4, !dbg !2893, !tbaa !592
  %idxprom164 = zext i32 %113 to i64, !dbg !2893
  %arrayidx165 = getelementptr inbounds ptr, ptr %112, i64 %idxprom164, !dbg !2893
  store ptr %110, ptr %arrayidx165, align 8, !dbg !2893, !tbaa !589
  %114 = load ptr, ptr %h.addr, align 8, !dbg !2895, !tbaa !589
  %vals166 = getelementptr inbounds %struct.kh_bam_store_s, ptr %114, i32 0, i32 6, !dbg !2895
  %115 = load ptr, ptr %vals166, align 8, !dbg !2895, !tbaa !1772
  %116 = load i32, ptr %i, align 4, !dbg !2895, !tbaa !592
  %idxprom167 = zext i32 %116 to i64, !dbg !2895
  %arrayidx168 = getelementptr inbounds %struct.store_item_t, ptr %115, i64 %idxprom167, !dbg !2895
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx168, ptr align 8 %val, i64 8, i1 false), !dbg !2895, !tbaa.struct !2885
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup170, !dbg !2893

if.end169:                                        ; preds = %if.then137
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2882
  br label %cleanup170, !dbg !2882

cleanup170:                                       ; preds = %if.end169, %if.else162
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #14, !dbg !2882
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2882
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #14, !dbg !2882
  %cleanup.dest173 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest173, label %unreachable [
    i32 0, label %cleanup.cont174
    i32 6, label %while.end175
  ]

cleanup.cont174:                                  ; preds = %cleanup170
  br label %while.cond, !dbg !2882, !llvm.loop !2897

while.end175:                                     ; preds = %cleanup170
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #14, !dbg !2880
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2880
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #14, !dbg !2880
  br label %if.end176, !dbg !2882

if.end176:                                        ; preds = %while.end175, %for.body
  br label %for.inc, !dbg !2881

for.inc:                                          ; preds = %if.end176
  %117 = load i32, ptr %j, align 4, !dbg !2879, !tbaa !592
  %inc177 = add i32 %117, 1, !dbg !2879
  store i32 %inc177, ptr %j, align 4, !dbg !2879, !tbaa !592
  br label %for.cond, !dbg !2879, !llvm.loop !2898

for.end:                                          ; preds = %for.cond
  %118 = load ptr, ptr %h.addr, align 8, !dbg !2899, !tbaa !589
  %n_buckets178 = getelementptr inbounds %struct.kh_bam_store_s, ptr %118, i32 0, i32 0, !dbg !2899
  %119 = load i32, ptr %n_buckets178, align 8, !dbg !2899, !tbaa !1758
  %120 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2899, !tbaa !592
  %cmp179 = icmp ugt i32 %119, %120, !dbg !2899
  br i1 %cmp179, label %if.then181, label %if.end192, !dbg !2901

if.then181:                                       ; preds = %for.end
  %121 = load ptr, ptr %h.addr, align 8, !dbg !2902, !tbaa !589
  %keys182 = getelementptr inbounds %struct.kh_bam_store_s, ptr %121, i32 0, i32 5, !dbg !2902
  %122 = load ptr, ptr %keys182, align 8, !dbg !2902, !tbaa !2491
  %123 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2902, !tbaa !592
  %conv183 = zext i32 %123 to i64, !dbg !2902
  %mul184 = mul i64 %conv183, 8, !dbg !2902
  %call185 = call ptr @realloc(ptr noundef %122, i64 noundef %mul184) #19, !dbg !2902
  %124 = load ptr, ptr %h.addr, align 8, !dbg !2902, !tbaa !589
  %keys186 = getelementptr inbounds %struct.kh_bam_store_s, ptr %124, i32 0, i32 5, !dbg !2902
  store ptr %call185, ptr %keys186, align 8, !dbg !2902, !tbaa !2491
  %125 = load ptr, ptr %h.addr, align 8, !dbg !2904, !tbaa !589
  %vals187 = getelementptr inbounds %struct.kh_bam_store_s, ptr %125, i32 0, i32 6, !dbg !2904
  %126 = load ptr, ptr %vals187, align 8, !dbg !2904, !tbaa !1772
  %127 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2904, !tbaa !592
  %conv188 = zext i32 %127 to i64, !dbg !2904
  %mul189 = mul i64 %conv188, 8, !dbg !2904
  %call190 = call ptr @realloc(ptr noundef %126, i64 noundef %mul189) #19, !dbg !2904
  %128 = load ptr, ptr %h.addr, align 8, !dbg !2904, !tbaa !589
  %vals191 = getelementptr inbounds %struct.kh_bam_store_s, ptr %128, i32 0, i32 6, !dbg !2904
  store ptr %call190, ptr %vals191, align 8, !dbg !2904, !tbaa !1772
  br label %if.end192, !dbg !2902

if.end192:                                        ; preds = %if.then181, %for.end
  %129 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %flags193 = getelementptr inbounds %struct.kh_bam_store_s, ptr %129, i32 0, i32 4, !dbg !2901
  %130 = load ptr, ptr %flags193, align 8, !dbg !2901, !tbaa !1947
  call void @free(ptr noundef %130) #14, !dbg !2901
  %131 = load ptr, ptr %new_flags, align 8, !dbg !2901, !tbaa !589
  %132 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %flags194 = getelementptr inbounds %struct.kh_bam_store_s, ptr %132, i32 0, i32 4, !dbg !2901
  store ptr %131, ptr %flags194, align 8, !dbg !2901, !tbaa !1947
  %133 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !2901, !tbaa !592
  %134 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %n_buckets195 = getelementptr inbounds %struct.kh_bam_store_s, ptr %134, i32 0, i32 0, !dbg !2901
  store i32 %133, ptr %n_buckets195, align 8, !dbg !2901, !tbaa !1758
  %135 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %size196 = getelementptr inbounds %struct.kh_bam_store_s, ptr %135, i32 0, i32 1, !dbg !2901
  %136 = load i32, ptr %size196, align 4, !dbg !2901, !tbaa !2521
  %137 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %n_occupied = getelementptr inbounds %struct.kh_bam_store_s, ptr %137, i32 0, i32 2, !dbg !2901
  store i32 %136, ptr %n_occupied, align 8, !dbg !2901, !tbaa !2516
  %138 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %n_buckets197 = getelementptr inbounds %struct.kh_bam_store_s, ptr %138, i32 0, i32 0, !dbg !2901
  %139 = load i32, ptr %n_buckets197, align 8, !dbg !2901, !tbaa !1758
  %conv198 = uitofp i32 %139 to double, !dbg !2901
  %140 = call double @llvm.fmuladd.f64(double %conv198, double 7.700000e-01, double 5.000000e-01), !dbg !2901
  %conv200 = fptoui double %140 to i32, !dbg !2901
  %141 = load ptr, ptr %h.addr, align 8, !dbg !2901, !tbaa !589
  %upper_bound = getelementptr inbounds %struct.kh_bam_store_s, ptr %141, i32 0, i32 3, !dbg !2901
  store i32 %conv200, ptr %upper_bound, align 4, !dbg !2901, !tbaa !2517
  br label %if.end201, !dbg !2901

if.end201:                                        ; preds = %if.end192, %if.end67
  store i32 0, ptr %retval, align 4, !dbg !2857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !2857

cleanup202:                                       ; preds = %if.end201, %cleanup63, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !2857
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #14, !dbg !2857
  %142 = load i32, ptr %retval, align 4, !dbg !2857
  ret i32 %142, !dbg !2857

unreachable:                                      ; preds = %cleanup170
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nounwind allocsize(1)
declare !dbg !2906 ptr @realloc(ptr noundef, i64 noundef) #13

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash_Wang(i32 noundef %key) #4 !dbg !2909 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !592
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  %0 = load i32, ptr %key.addr, align 4, !dbg !2915, !tbaa !592
  %shl = shl i32 %0, 15, !dbg !2916
  %not = xor i32 %shl, -1, !dbg !2917
  %1 = load i32, ptr %key.addr, align 4, !dbg !2918, !tbaa !592
  %add = add i32 %1, %not, !dbg !2918
  store i32 %add, ptr %key.addr, align 4, !dbg !2918, !tbaa !592
  %2 = load i32, ptr %key.addr, align 4, !dbg !2919, !tbaa !592
  %shr = lshr i32 %2, 10, !dbg !2920
  %3 = load i32, ptr %key.addr, align 4, !dbg !2921, !tbaa !592
  %xor = xor i32 %3, %shr, !dbg !2921
  store i32 %xor, ptr %key.addr, align 4, !dbg !2921, !tbaa !592
  %4 = load i32, ptr %key.addr, align 4, !dbg !2922, !tbaa !592
  %shl1 = shl i32 %4, 3, !dbg !2923
  %5 = load i32, ptr %key.addr, align 4, !dbg !2924, !tbaa !592
  %add2 = add i32 %5, %shl1, !dbg !2924
  store i32 %add2, ptr %key.addr, align 4, !dbg !2924, !tbaa !592
  %6 = load i32, ptr %key.addr, align 4, !dbg !2925, !tbaa !592
  %shr3 = lshr i32 %6, 6, !dbg !2926
  %7 = load i32, ptr %key.addr, align 4, !dbg !2927, !tbaa !592
  %xor4 = xor i32 %7, %shr3, !dbg !2927
  store i32 %xor4, ptr %key.addr, align 4, !dbg !2927, !tbaa !592
  %8 = load i32, ptr %key.addr, align 4, !dbg !2928, !tbaa !592
  %shl5 = shl i32 %8, 11, !dbg !2929
  %not6 = xor i32 %shl5, -1, !dbg !2930
  %9 = load i32, ptr %key.addr, align 4, !dbg !2931, !tbaa !592
  %add7 = add i32 %9, %not6, !dbg !2931
  store i32 %add7, ptr %key.addr, align 4, !dbg !2931, !tbaa !592
  %10 = load i32, ptr %key.addr, align 4, !dbg !2932, !tbaa !592
  %shr8 = lshr i32 %10, 16, !dbg !2933
  %11 = load i32, ptr %key.addr, align 4, !dbg !2934, !tbaa !592
  %xor9 = xor i32 %11, %shr8, !dbg !2934
  store i32 %xor9, ptr %key.addr, align 4, !dbg !2934, !tbaa !592
  %12 = load i32, ptr %key.addr, align 4, !dbg !2935, !tbaa !592
  ret i32 %12, !dbg !2936
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!540, !541, !542, !543, !544, !545}
!llvm.ident = !{!546}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bamshuf.c", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "f61695356d0162e20754ae978f433db2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "lopts", scope: !14, file: !2, line: 587, type: !530, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "main_bamshuf", scope: !2, file: !2, line: 581, type: !15, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !504)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !107, globals: !286, splitDebugInlining: false, nameTableKind: None)
!21 = !{!22, !32, !57, !66}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsFormatCategory", file: !23, line: 190, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/hts.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "ae37cf66fde41139f9a837bd3fe09912")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "unknown_category", value: 0)
!27 = !DIEnumerator(name: "sequence_data", value: 1)
!28 = !DIEnumerator(name: "variant_data", value: 2)
!29 = !DIEnumerator(name: "index_file", value: 3)
!30 = !DIEnumerator(name: "region_list", value: 4)
!31 = !DIEnumerator(name: "category_maximum", value: 32767)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsExactFormat", file: !23, line: 199, baseType: !24, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!34 = !DIEnumerator(name: "unknown_format", value: 0)
!35 = !DIEnumerator(name: "binary_format", value: 1)
!36 = !DIEnumerator(name: "text_format", value: 2)
!37 = !DIEnumerator(name: "sam", value: 3)
!38 = !DIEnumerator(name: "bam", value: 4)
!39 = !DIEnumerator(name: "bai", value: 5)
!40 = !DIEnumerator(name: "cram", value: 6)
!41 = !DIEnumerator(name: "crai", value: 7)
!42 = !DIEnumerator(name: "vcf", value: 8)
!43 = !DIEnumerator(name: "bcf", value: 9)
!44 = !DIEnumerator(name: "csi", value: 10)
!45 = !DIEnumerator(name: "gzi", value: 11)
!46 = !DIEnumerator(name: "tbi", value: 12)
!47 = !DIEnumerator(name: "bed", value: 13)
!48 = !DIEnumerator(name: "htsget", value: 14)
!49 = !DIEnumerator(name: "json", value: 14)
!50 = !DIEnumerator(name: "empty_format", value: 15)
!51 = !DIEnumerator(name: "fasta_format", value: 16)
!52 = !DIEnumerator(name: "fastq_format", value: 17)
!53 = !DIEnumerator(name: "fai_format", value: 18)
!54 = !DIEnumerator(name: "fqi_format", value: 19)
!55 = !DIEnumerator(name: "hts_crypt4gh_format", value: 20)
!56 = !DIEnumerator(name: "format_maximum", value: 32767)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsCompression", file: !23, line: 211, baseType: !24, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65}
!59 = !DIEnumerator(name: "no_compression", value: 0)
!60 = !DIEnumerator(name: "gzip", value: 1)
!61 = !DIEnumerator(name: "bgzf", value: 2)
!62 = !DIEnumerator(name: "custom", value: 3)
!63 = !DIEnumerator(name: "bzip2_compression", value: 4)
!64 = !DIEnumerator(name: "razf_compression", value: 5)
!65 = !DIEnumerator(name: "compression_maximum", value: 32767)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hts_fmt_option", file: !23, line: 293, baseType: !24, size: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!68 = !DIEnumerator(name: "CRAM_OPT_DECODE_MD", value: 0)
!69 = !DIEnumerator(name: "CRAM_OPT_PREFIX", value: 1)
!70 = !DIEnumerator(name: "CRAM_OPT_VERBOSITY", value: 2)
!71 = !DIEnumerator(name: "CRAM_OPT_SEQS_PER_SLICE", value: 3)
!72 = !DIEnumerator(name: "CRAM_OPT_SLICES_PER_CONTAINER", value: 4)
!73 = !DIEnumerator(name: "CRAM_OPT_RANGE", value: 5)
!74 = !DIEnumerator(name: "CRAM_OPT_VERSION", value: 6)
!75 = !DIEnumerator(name: "CRAM_OPT_EMBED_REF", value: 7)
!76 = !DIEnumerator(name: "CRAM_OPT_IGNORE_MD5", value: 8)
!77 = !DIEnumerator(name: "CRAM_OPT_REFERENCE", value: 9)
!78 = !DIEnumerator(name: "CRAM_OPT_MULTI_SEQ_PER_SLICE", value: 10)
!79 = !DIEnumerator(name: "CRAM_OPT_NO_REF", value: 11)
!80 = !DIEnumerator(name: "CRAM_OPT_USE_BZIP2", value: 12)
!81 = !DIEnumerator(name: "CRAM_OPT_SHARED_REF", value: 13)
!82 = !DIEnumerator(name: "CRAM_OPT_NTHREADS", value: 14)
!83 = !DIEnumerator(name: "CRAM_OPT_THREAD_POOL", value: 15)
!84 = !DIEnumerator(name: "CRAM_OPT_USE_LZMA", value: 16)
!85 = !DIEnumerator(name: "CRAM_OPT_USE_RANS", value: 17)
!86 = !DIEnumerator(name: "CRAM_OPT_REQUIRED_FIELDS", value: 18)
!87 = !DIEnumerator(name: "CRAM_OPT_LOSSY_NAMES", value: 19)
!88 = !DIEnumerator(name: "CRAM_OPT_BASES_PER_SLICE", value: 20)
!89 = !DIEnumerator(name: "CRAM_OPT_STORE_MD", value: 21)
!90 = !DIEnumerator(name: "CRAM_OPT_STORE_NM", value: 22)
!91 = !DIEnumerator(name: "CRAM_OPT_RANGE_NOSEEK", value: 23)
!92 = !DIEnumerator(name: "CRAM_OPT_USE_TOK", value: 24)
!93 = !DIEnumerator(name: "CRAM_OPT_USE_FQZ", value: 25)
!94 = !DIEnumerator(name: "CRAM_OPT_USE_ARITH", value: 26)
!95 = !DIEnumerator(name: "CRAM_OPT_POS_DELTA", value: 27)
!96 = !DIEnumerator(name: "HTS_OPT_COMPRESSION_LEVEL", value: 100)
!97 = !DIEnumerator(name: "HTS_OPT_NTHREADS", value: 101)
!98 = !DIEnumerator(name: "HTS_OPT_THREAD_POOL", value: 102)
!99 = !DIEnumerator(name: "HTS_OPT_CACHE_SIZE", value: 103)
!100 = !DIEnumerator(name: "HTS_OPT_BLOCK_SIZE", value: 104)
!101 = !DIEnumerator(name: "HTS_OPT_FILTER", value: 105)
!102 = !DIEnumerator(name: "HTS_OPT_PROFILE", value: 106)
!103 = !DIEnumerator(name: "FASTQ_OPT_CASAVA", value: 1000)
!104 = !DIEnumerator(name: "FASTQ_OPT_AUX", value: 1001)
!105 = !DIEnumerator(name: "FASTQ_OPT_RNUM", value: 1002)
!106 = !DIEnumerator(name: "FASTQ_OPT_BARCODE", value: 1003)
!107 = !{!108, !161, !163, !17, !169, !19, !18, !172, !257, !258, !261, !270, !272, !275}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "elem_t", file: !2, line: 71, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 68, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !110, file: !2, line: 69, baseType: !24, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !110, file: !2, line: 70, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_t", file: !116, line: 252, baseType: !117)
!116 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/sam.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "b64ad94d97c3b81ccf06052d1de39653")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_t", file: !116, line: 245, size: 640, elements: !118)
!118 = !{!119, !152, !156, !158, !159, !160}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !117, file: !116, line: 246, baseType: !120, size: 384)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_core_t", file: !116, line: 219, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_core_t", file: !116, line: 206, size: 384, elements: !122)
!122 = !{!123, !130, !133, !138, !142, !143, !144, !145, !148, !149, !150, !151}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !121, file: !116, line: 207, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pos_t", file: !23, line: 753, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !126, line: 27, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !128, line: 44, baseType: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!129 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !121, file: !116, line: 208, baseType: !131, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !126, line: 26, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !128, line: 41, baseType: !17)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !121, file: !116, line: 209, baseType: !134, size: 16, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !135, line: 25, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !128, line: 40, baseType: !137)
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !121, file: !116, line: 210, baseType: !139, size: 8, offset: 112)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !135, line: 24, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !128, line: 38, baseType: !141)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "l_extranul", scope: !121, file: !116, line: 211, baseType: !139, size: 8, offset: 120)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !121, file: !116, line: 212, baseType: !134, size: 16, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "l_qname", scope: !121, file: !116, line: 213, baseType: !134, size: 16, offset: 144)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "n_cigar", scope: !121, file: !116, line: 214, baseType: !146, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 26, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !128, line: 42, baseType: !24)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "l_qseq", scope: !121, file: !116, line: 215, baseType: !131, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mtid", scope: !121, file: !116, line: 216, baseType: !131, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mpos", scope: !121, file: !116, line: 217, baseType: !124, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "isize", scope: !121, file: !116, line: 218, baseType: !124, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !116, line: 247, baseType: !153, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !135, line: 27, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !128, line: 45, baseType: !155)
!155 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !117, file: !116, line: 248, baseType: !157, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "l_data", scope: !117, file: !116, line: 249, baseType: !17, size: 32, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "m_data", scope: !117, file: !116, line: 250, baseType: !146, size: 32, offset: 544)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !117, file: !116, line: 251, baseType: !146, size: 2, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 70, baseType: !155)
!162 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ks_isort_stack_t", file: !165, line: 89, baseType: !166)
!165 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/ksort.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "9f7b758259a19a6be0ac9de80e1d62dc")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 86, size: 192, elements: !167)
!167 = !{!168, !170, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !166, file: !165, line: 87, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !166, file: !165, line: 87, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !166, file: !165, line: 88, baseType: !17, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "samFile", file: !116, line: 396, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsFile", file: !23, line: 261, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsFile", file: !23, line: 245, size: 1088, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !193, !194, !195, !208, !209, !224, !228, !231, !254}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin", scope: !176, file: !23, line: 246, baseType: !146, size: 1, flags: DIFlagBitField, extraData: i64 0)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !176, file: !23, line: 246, baseType: !146, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "is_be", scope: !176, file: !23, line: 246, baseType: !146, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "is_cram", scope: !176, file: !23, line: 246, baseType: !146, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "is_bgzf", scope: !176, file: !23, line: 246, baseType: !146, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !176, file: !23, line: 246, baseType: !146, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !176, file: !23, line: 247, baseType: !125, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !176, file: !23, line: 248, baseType: !186, size: 192, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "kstring_t", file: !187, line: 71, baseType: !188)
!187 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/kstring.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "532459e2e5dea934e82fd1dc844130c8")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstring_t", file: !187, line: 68, size: 192, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !188, file: !187, line: 69, baseType: !161, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !188, file: !187, line: 69, baseType: !161, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !188, file: !187, line: 70, baseType: !19, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !176, file: !23, line: 249, baseType: !19, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fn_aux", scope: !176, file: !23, line: 249, baseType: !19, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !176, file: !23, line: 254, baseType: !196, size: 64, offset: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !23, line: 250, size: 64, elements: !197)
!197 = !{!198, !202, !205}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "bgzf", scope: !196, file: !23, line: 251, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "BGZF", file: !23, line: 54, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "BGZF", file: !23, line: 54, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cram", scope: !196, file: !23, line: 252, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "cram_fd", file: !23, line: 57, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "hfile", scope: !196, file: !23, line: 253, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "hFILE", file: !23, line: 58, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !176, file: !23, line: 255, baseType: !169, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !176, file: !23, line: 256, baseType: !210, size: 256, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsFormat", file: !23, line: 223, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsFormat", file: !23, line: 216, size: 256, elements: !212)
!212 = !{!213, !214, !215, !221, !222, !223}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !211, file: !23, line: 217, baseType: !22, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !211, file: !23, line: 218, baseType: !32, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !211, file: !23, line: 219, baseType: !216, size: 32, offset: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !23, line: 219, size: 32, elements: !217)
!217 = !{!218, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !216, file: !23, line: 219, baseType: !219, size: 16)
!219 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !216, file: !23, line: 219, baseType: !219, size: 16, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !211, file: !23, line: 220, baseType: !57, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "compression_level", scope: !211, file: !23, line: 221, baseType: !219, size: 16, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "specific", scope: !211, file: !23, line: 222, baseType: !169, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !176, file: !23, line: 257, baseType: !225, size: 64, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_idx_t", file: !23, line: 226, baseType: !227)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_idx_t", file: !23, line: 225, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "fnidx", scope: !176, file: !23, line: 258, baseType: !229, size: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bam_header", scope: !176, file: !23, line: 259, baseType: !232, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hdr_t", file: !116, line: 73, size: 576, elements: !234)
!234 = !{!235, !236, !237, !238, !240, !246, !247, !248, !249, !253}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "n_targets", scope: !233, file: !116, line: 74, baseType: !131, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_sam_err", scope: !233, file: !116, line: 74, baseType: !131, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "l_text", scope: !233, file: !116, line: 75, baseType: !161, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "target_len", scope: !233, file: !116, line: 76, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_tab", scope: !233, file: !116, line: 77, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !126, line: 24, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !128, line: 37, baseType: !245)
!245 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "target_name", scope: !233, file: !116, line: 78, baseType: !18, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !233, file: !116, line: 79, baseType: !19, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sdict", scope: !233, file: !116, line: 80, baseType: !169, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "hrecs", scope: !233, file: !116, line: 81, baseType: !250, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hrecs_t", file: !116, line: 52, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hrecs_t", file: !116, line: 52, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !233, file: !116, line: 82, baseType: !146, size: 32, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !176, file: !23, line: 260, baseType: !255, size: 64, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_filter_t", file: !23, line: 227, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !259, line: 166, baseType: !260)
!259 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/khash.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "65a22945a6b0dd8c7e4297e6fc0b7826")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !259, line: 139, baseType: !24)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_bam_store_t", file: !2, line: 103, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_bam_store_s", file: !2, line: 103, size: 320, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !271, !274}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !263, file: !2, line: 103, baseType: !258, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !263, file: !2, line: 103, baseType: !258, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !263, file: !2, line: 103, baseType: !258, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !263, file: !2, line: 103, baseType: !258, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !2, line: 103, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !263, file: !2, line: 103, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_cstr_t", file: !259, line: 639, baseType: !229)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !263, file: !2, line: 103, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "store_item_t", file: !2, line: 101, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 99, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bi", scope: !277, file: !2, line: 100, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_item_t", file: !2, line: 90, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 87, size: 128, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !282, file: !2, line: 88, baseType: !17, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !282, file: !2, line: 89, baseType: !114, size: 64, offset: 64)
!286 = !{!0, !7, !287, !292, !297, !302, !307, !309, !311, !316, !318, !12, !323, !328, !333, !338, !343, !348, !353, !358, !363, !365, !370, !375, !377, !379, !381, !383, !385, !390, !392, !397, !402, !404, !406, !408, !410, !415, !417, !419, !424, !429, !431, !433, !438, !443, !448, !450, !455, !460, !465, !467, !469, !471, !476, !481, !486, !491, !496, !498, !502}
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 10)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 17)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 11)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 18)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !289, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !3, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 12)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !289, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 589, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 6)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 14)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 53)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 26)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3528, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 441)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 542, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 9)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 62)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 28)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 2)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !355, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 31)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 3)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !372, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !345, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !372, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !320, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !372, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 4)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !335, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 5)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 7)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !320, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !372, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !360, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !355, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 33)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !345, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !372, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 40)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 22)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !313, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !394, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 35)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 48)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 45)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 327, type: !421, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 44)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 41)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 349, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 43)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !440, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !440, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !335, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 23)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !478, isLocal: true, isDefinition: true)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 19)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !483, isLocal: true, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 20)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 487, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 24)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 25)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !9, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression(DW_OP_constu, 4605110762971426980, DW_OP_stack_value))
!499 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !20, file: !259, line: 196, type: !500, isLocal: true, isDefinition: true)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !457, isLocal: true, isDefinition: true)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!505 = !DILocalVariable(name: "argc", arg: 1, scope: !14, file: !2, line: 581, type: !17)
!506 = !DILocalVariable(name: "argv", arg: 2, scope: !14, file: !2, line: 581, type: !18)
!507 = !DILocalVariable(name: "c", scope: !14, file: !2, line: 583, type: !17)
!508 = !DILocalVariable(name: "n_files", scope: !14, file: !2, line: 583, type: !17)
!509 = !DILocalVariable(name: "clevel", scope: !14, file: !2, line: 583, type: !17)
!510 = !DILocalVariable(name: "is_stdout", scope: !14, file: !2, line: 583, type: !17)
!511 = !DILocalVariable(name: "is_un", scope: !14, file: !2, line: 583, type: !17)
!512 = !DILocalVariable(name: "fast_coll", scope: !14, file: !2, line: 583, type: !17)
!513 = !DILocalVariable(name: "reads_store", scope: !14, file: !2, line: 583, type: !17)
!514 = !DILocalVariable(name: "ret", scope: !14, file: !2, line: 583, type: !17)
!515 = !DILocalVariable(name: "pre_mem", scope: !14, file: !2, line: 583, type: !17)
!516 = !DILocalVariable(name: "no_pg", scope: !14, file: !2, line: 583, type: !17)
!517 = !DILocalVariable(name: "output_file", scope: !14, file: !2, line: 584, type: !229)
!518 = !DILocalVariable(name: "prefix", scope: !14, file: !2, line: 585, type: !19)
!519 = !DILocalVariable(name: "arg_list", scope: !14, file: !2, line: 585, type: !19)
!520 = !DILocalVariable(name: "ga", scope: !14, file: !2, line: 586, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_global_args", file: !522, line: 39, baseType: !523)
!522 = !DIFile(filename: "./sam_opts.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "2b38086da37a54b3b8875492f0298c0e")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_global_args", file: !522, line: 33, size: 640, elements: !524)
!524 = !{!525, !526, !527, !528, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !523, file: !522, line: 34, baseType: !210, size: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !523, file: !522, line: 35, baseType: !210, size: 256, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !523, file: !522, line: 36, baseType: !19, size: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !523, file: !522, line: 37, baseType: !17, size: 32, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !523, file: !522, line: 38, baseType: !17, size: 32, offset: 608)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 2560, elements: !290)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !533, line: 50, size: 256, elements: !534)
!533 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!534 = !{!535, !536, !537, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !532, file: !533, line: 52, baseType: !229, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !532, file: !533, line: 55, baseType: !17, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !532, file: !533, line: 56, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !532, file: !533, line: 57, baseType: !17, size: 32, offset: 192)
!540 = !{i32 7, !"Dwarf Version", i32 5}
!541 = !{i32 2, !"Debug Info Version", i32 3}
!542 = !{i32 1, !"wchar_size", i32 4}
!543 = !{i32 8, !"PIC Level", i32 2}
!544 = !{i32 7, !"PIE Level", i32 2}
!545 = !{i32 7, !"uwtable", i32 2}
!546 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!547 = distinct !DISubprogram(name: "ks_mergesort_bamshuf", scope: !2, file: !2, line: 84, type: !548, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!17, !161, !108, !108}
!550 = !{!551, !552, !553, !554, !556, !557, !558, !559, !560, !566, !567, !568, !570, !571, !575, !576, !577, !578, !579, !582, !583}
!551 = !DILocalVariable(name: "n", arg: 1, scope: !547, file: !2, line: 84, type: !161)
!552 = !DILocalVariable(name: "array", arg: 2, scope: !547, file: !2, line: 84, type: !108)
!553 = !DILocalVariable(name: "temp", arg: 3, scope: !547, file: !2, line: 84, type: !108)
!554 = !DILocalVariable(name: "a2", scope: !547, file: !2, line: 84, type: !555)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !361)
!556 = !DILocalVariable(name: "a", scope: !547, file: !2, line: 84, type: !108)
!557 = !DILocalVariable(name: "b", scope: !547, file: !2, line: 84, type: !108)
!558 = !DILocalVariable(name: "curr", scope: !547, file: !2, line: 84, type: !17)
!559 = !DILocalVariable(name: "shift", scope: !547, file: !2, line: 84, type: !17)
!560 = !DILocalVariable(name: "p", scope: !561, file: !2, line: 84, type: !108)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 84, column: 1)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 84, column: 1)
!563 = distinct !DILexicalBlock(scope: !564, file: !2, line: 84, column: 1)
!564 = distinct !DILexicalBlock(scope: !565, file: !2, line: 84, column: 1)
!565 = distinct !DILexicalBlock(scope: !547, file: !2, line: 84, column: 1)
!566 = !DILocalVariable(name: "i", scope: !561, file: !2, line: 84, type: !108)
!567 = !DILocalVariable(name: "eb", scope: !561, file: !2, line: 84, type: !108)
!568 = !DILocalVariable(name: "i", scope: !569, file: !2, line: 84, type: !161)
!569 = distinct !DILexicalBlock(scope: !562, file: !2, line: 84, column: 1)
!570 = !DILocalVariable(name: "step", scope: !569, file: !2, line: 84, type: !161)
!571 = !DILocalVariable(name: "p", scope: !572, file: !2, line: 84, type: !108)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 84, column: 1)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 84, column: 1)
!574 = distinct !DILexicalBlock(scope: !569, file: !2, line: 84, column: 1)
!575 = !DILocalVariable(name: "j", scope: !572, file: !2, line: 84, type: !108)
!576 = !DILocalVariable(name: "k", scope: !572, file: !2, line: 84, type: !108)
!577 = !DILocalVariable(name: "ea", scope: !572, file: !2, line: 84, type: !108)
!578 = !DILocalVariable(name: "eb", scope: !572, file: !2, line: 84, type: !108)
!579 = !DILocalVariable(name: "p", scope: !580, file: !2, line: 84, type: !108)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 84, column: 1)
!581 = distinct !DILexicalBlock(scope: !547, file: !2, line: 84, column: 1)
!582 = !DILocalVariable(name: "i", scope: !580, file: !2, line: 84, type: !108)
!583 = !DILocalVariable(name: "eb", scope: !580, file: !2, line: 84, type: !108)
!584 = !{!585, !585, i64 0}
!585 = !{!"long", !586, i64 0}
!586 = !{!"omnipotent char", !587, i64 0}
!587 = !{!"Simple C/C++ TBAA"}
!588 = !DILocation(line: 84, column: 1, scope: !547)
!589 = !{!590, !590, i64 0}
!590 = !{!"any pointer", !586, i64 0}
!591 = !DILocation(line: 84, column: 1, scope: !565)
!592 = !{!593, !593, i64 0}
!593 = !{!"int", !586, i64 0}
!594 = !DILocation(line: 84, column: 1, scope: !564)
!595 = !DILocation(line: 84, column: 1, scope: !563)
!596 = !DILocation(line: 84, column: 1, scope: !562)
!597 = !DILocation(line: 84, column: 1, scope: !561)
!598 = !DILocation(line: 84, column: 1, scope: !599)
!599 = distinct !DILexicalBlock(scope: !561, file: !2, line: 84, column: 1)
!600 = !DILocation(line: 84, column: 1, scope: !601)
!601 = distinct !DILexicalBlock(scope: !599, file: !2, line: 84, column: 1)
!602 = !DILocation(line: 84, column: 1, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 84, column: 1)
!604 = distinct !DILexicalBlock(scope: !601, file: !2, line: 84, column: 1)
!605 = !DILocation(line: 84, column: 1, scope: !604)
!606 = !{i64 0, i64 4, !592, i64 8, i64 8, !589}
!607 = !DILocation(line: 84, column: 1, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !2, line: 84, column: 1)
!609 = distinct !DILexicalBlock(scope: !603, file: !2, line: 84, column: 1)
!610 = !DILocation(line: 84, column: 1, scope: !609)
!611 = !DILocation(line: 84, column: 1, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !2, line: 84, column: 1)
!613 = !DILocation(line: 84, column: 1, scope: !614)
!614 = distinct !DILexicalBlock(scope: !608, file: !2, line: 84, column: 1)
!615 = distinct !{!615, !598, !598, !616}
!616 = !{!"llvm.loop.mustprogress"}
!617 = !DILocation(line: 84, column: 1, scope: !569)
!618 = !DILocation(line: 84, column: 1, scope: !574)
!619 = !DILocation(line: 84, column: 1, scope: !573)
!620 = !DILocation(line: 84, column: 1, scope: !572)
!621 = !DILocation(line: 84, column: 1, scope: !622)
!622 = distinct !DILexicalBlock(scope: !572, file: !2, line: 84, column: 1)
!623 = !DILocation(line: 84, column: 1, scope: !624)
!624 = distinct !DILexicalBlock(scope: !622, file: !2, line: 84, column: 1)
!625 = !DILocation(line: 84, column: 1, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !2, line: 84, column: 1)
!627 = !DILocation(line: 0, scope: !572)
!628 = !DILocation(line: 84, column: 1, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 84, column: 1)
!630 = distinct !DILexicalBlock(scope: !572, file: !2, line: 84, column: 1)
!631 = !DILocation(line: 84, column: 1, scope: !630)
!632 = distinct !{!632, !620, !620, !616}
!633 = distinct !{!633, !620, !620, !616}
!634 = distinct !{!634, !620, !620, !616}
!635 = distinct !{!635, !618, !618, !616}
!636 = distinct !{!636, !591, !591, !616}
!637 = !DILocation(line: 84, column: 1, scope: !581)
!638 = !DILocation(line: 84, column: 1, scope: !580)
!639 = !DILocation(line: 84, column: 1, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !2, line: 84, column: 1)
!641 = distinct !DILexicalBlock(scope: !580, file: !2, line: 84, column: 1)
!642 = !DILocation(line: 84, column: 1, scope: !641)
!643 = distinct !{!643, !642, !642, !616}
!644 = !DILocation(line: 84, column: 1, scope: !645)
!645 = distinct !DILexicalBlock(scope: !547, file: !2, line: 84, column: 1)
!646 = !DISubprogram(name: "malloc", scope: !647, file: !647, line: 540, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!648 = !DISubroutineType(types: !649)
!649 = !{!169, !161}
!650 = distinct !DISubprogram(name: "elem_lt", scope: !2, file: !2, line: 73, type: !651, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!17, !109, !109}
!653 = !{!654, !655, !656}
!654 = !DILocalVariable(name: "x", arg: 1, scope: !650, file: !2, line: 73, type: !109)
!655 = !DILocalVariable(name: "y", arg: 2, scope: !650, file: !2, line: 73, type: !109)
!656 = !DILocalVariable(name: "t", scope: !657, file: !2, line: 77, type: !17)
!657 = distinct !DILexicalBlock(scope: !658, file: !2, line: 76, column: 25)
!658 = distinct !DILexicalBlock(scope: !650, file: !2, line: 76, column: 9)
!659 = !DILocation(line: 73, column: 34, scope: !650)
!660 = !DILocation(line: 73, column: 44, scope: !650)
!661 = !DILocation(line: 75, column: 11, scope: !662)
!662 = distinct !DILexicalBlock(scope: !650, file: !2, line: 75, column: 9)
!663 = !{!664, !593, i64 0}
!664 = !{!"", !593, i64 0, !590, i64 8}
!665 = !DILocation(line: 75, column: 19, scope: !662)
!666 = !DILocation(line: 75, column: 15, scope: !662)
!667 = !DILocation(line: 75, column: 9, scope: !650)
!668 = !DILocation(line: 75, column: 24, scope: !662)
!669 = !DILocation(line: 76, column: 11, scope: !658)
!670 = !DILocation(line: 76, column: 20, scope: !658)
!671 = !DILocation(line: 76, column: 15, scope: !658)
!672 = !DILocation(line: 76, column: 9, scope: !650)
!673 = !DILocation(line: 77, column: 9, scope: !657)
!674 = !DILocation(line: 77, column: 13, scope: !657)
!675 = !DILocation(line: 78, column: 20, scope: !657)
!676 = !{!664, !590, i64 8}
!677 = !{!678, !590, i64 56}
!678 = !{!"bam1_t", !679, i64 0, !585, i64 48, !590, i64 56, !593, i64 64, !593, i64 68, !593, i64 72}
!679 = !{!"bam1_core_t", !585, i64 0, !593, i64 8, !680, i64 12, !586, i64 14, !586, i64 15, !680, i64 16, !680, i64 18, !593, i64 20, !593, i64 24, !593, i64 28, !585, i64 32, !585, i64 40}
!680 = !{!"short", !586, i64 0}
!681 = !DILocation(line: 78, column: 40, scope: !657)
!682 = !DILocation(line: 78, column: 13, scope: !657)
!683 = !DILocation(line: 78, column: 11, scope: !657)
!684 = !DILocation(line: 79, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !657, file: !2, line: 79, column: 13)
!686 = !DILocation(line: 79, column: 15, scope: !685)
!687 = !DILocation(line: 79, column: 13, scope: !657)
!688 = !DILocation(line: 79, column: 20, scope: !685)
!689 = !DILocation(line: 80, column: 17, scope: !657)
!690 = !DILocation(line: 80, column: 19, scope: !657)
!691 = !DILocation(line: 80, column: 24, scope: !657)
!692 = !DILocation(line: 80, column: 31, scope: !657)
!693 = !DILocation(line: 80, column: 34, scope: !657)
!694 = !DILocation(line: 80, column: 39, scope: !657)
!695 = !{!678, !680, i64 16}
!696 = !DILocation(line: 80, column: 29, scope: !657)
!697 = !DILocation(line: 80, column: 43, scope: !657)
!698 = !DILocation(line: 80, column: 46, scope: !657)
!699 = !DILocation(line: 80, column: 55, scope: !657)
!700 = !DILocation(line: 80, column: 58, scope: !657)
!701 = !DILocation(line: 80, column: 63, scope: !657)
!702 = !DILocation(line: 80, column: 53, scope: !657)
!703 = !DILocation(line: 80, column: 67, scope: !657)
!704 = !DILocation(line: 80, column: 70, scope: !657)
!705 = !DILocation(line: 80, column: 50, scope: !657)
!706 = !DILocation(line: 0, scope: !657)
!707 = !DILocation(line: 80, column: 9, scope: !657)
!708 = !DILocation(line: 81, column: 5, scope: !658)
!709 = !DILocation(line: 81, column: 12, scope: !658)
!710 = !DILocation(line: 82, column: 1, scope: !650)
!711 = !DISubprogram(name: "free", scope: !647, file: !647, line: 555, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !169}
!714 = distinct !DISubprogram(name: "ks_heapadjust_bamshuf", scope: !2, file: !2, line: 84, type: !715, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !161, !161, !108}
!717 = !{!718, !719, !720, !721, !722}
!718 = !DILocalVariable(name: "i", arg: 1, scope: !714, file: !2, line: 84, type: !161)
!719 = !DILocalVariable(name: "n", arg: 2, scope: !714, file: !2, line: 84, type: !161)
!720 = !DILocalVariable(name: "l", arg: 3, scope: !714, file: !2, line: 84, type: !108)
!721 = !DILocalVariable(name: "k", scope: !714, file: !2, line: 84, type: !161)
!722 = !DILocalVariable(name: "tmp", scope: !714, file: !2, line: 84, type: !109)
!723 = !DILocation(line: 84, column: 1, scope: !714)
!724 = !DILocation(line: 84, column: 1, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 84, column: 1)
!726 = distinct !DILexicalBlock(scope: !714, file: !2, line: 84, column: 1)
!727 = !DILocation(line: 84, column: 1, scope: !726)
!728 = !DILocation(line: 84, column: 1, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !2, line: 84, column: 1)
!730 = distinct !{!730, !723, !723, !616}
!731 = distinct !DISubprogram(name: "ks_heapmake_bamshuf", scope: !2, file: !2, line: 84, type: !732, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !161, !108}
!734 = !{!735, !736, !737}
!735 = !DILocalVariable(name: "lsize", arg: 1, scope: !731, file: !2, line: 84, type: !161)
!736 = !DILocalVariable(name: "l", arg: 2, scope: !731, file: !2, line: 84, type: !108)
!737 = !DILocalVariable(name: "i", scope: !731, file: !2, line: 84, type: !161)
!738 = !DILocation(line: 84, column: 1, scope: !731)
!739 = !DILocation(line: 84, column: 1, scope: !740)
!740 = distinct !DILexicalBlock(scope: !731, file: !2, line: 84, column: 1)
!741 = !DILocation(line: 84, column: 1, scope: !742)
!742 = distinct !DILexicalBlock(scope: !740, file: !2, line: 84, column: 1)
!743 = distinct !{!743, !739, !739, !616}
!744 = distinct !DISubprogram(name: "ks_heapsort_bamshuf", scope: !2, file: !2, line: 84, type: !732, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !745)
!745 = !{!746, !747, !748, !749}
!746 = !DILocalVariable(name: "lsize", arg: 1, scope: !744, file: !2, line: 84, type: !161)
!747 = !DILocalVariable(name: "l", arg: 2, scope: !744, file: !2, line: 84, type: !108)
!748 = !DILocalVariable(name: "i", scope: !744, file: !2, line: 84, type: !161)
!749 = !DILocalVariable(name: "tmp", scope: !750, file: !2, line: 84, type: !109)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 84, column: 1)
!751 = distinct !DILexicalBlock(scope: !752, file: !2, line: 84, column: 1)
!752 = distinct !DILexicalBlock(scope: !744, file: !2, line: 84, column: 1)
!753 = !DILocation(line: 84, column: 1, scope: !744)
!754 = !DILocation(line: 84, column: 1, scope: !752)
!755 = !DILocation(line: 84, column: 1, scope: !751)
!756 = !DILocation(line: 84, column: 1, scope: !750)
!757 = distinct !{!757, !754, !754, !616}
!758 = distinct !DISubprogram(name: "ks_combsort_bamshuf", scope: !2, file: !2, line: 84, type: !732, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767}
!760 = !DILocalVariable(name: "n", arg: 1, scope: !758, file: !2, line: 84, type: !161)
!761 = !DILocalVariable(name: "a", arg: 2, scope: !758, file: !2, line: 84, type: !108)
!762 = !DILocalVariable(name: "shrink_factor", scope: !758, file: !2, line: 84, type: !500)
!763 = !DILocalVariable(name: "do_swap", scope: !758, file: !2, line: 84, type: !17)
!764 = !DILocalVariable(name: "gap", scope: !758, file: !2, line: 84, type: !161)
!765 = !DILocalVariable(name: "tmp", scope: !758, file: !2, line: 84, type: !109)
!766 = !DILocalVariable(name: "i", scope: !758, file: !2, line: 84, type: !108)
!767 = !DILocalVariable(name: "j", scope: !758, file: !2, line: 84, type: !108)
!768 = !DILocation(line: 84, column: 1, scope: !758)
!769 = !{!770, !770, i64 0}
!770 = !{!"double", !586, i64 0}
!771 = !DILocation(line: 84, column: 1, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !2, line: 84, column: 1)
!773 = distinct !DILexicalBlock(scope: !758, file: !2, line: 84, column: 1)
!774 = !DILocation(line: 84, column: 1, scope: !773)
!775 = !DILocation(line: 84, column: 1, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !2, line: 84, column: 1)
!777 = !DILocation(line: 84, column: 1, scope: !778)
!778 = distinct !DILexicalBlock(scope: !776, file: !2, line: 84, column: 1)
!779 = !DILocation(line: 84, column: 1, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !2, line: 84, column: 1)
!781 = !DILocation(line: 84, column: 1, scope: !782)
!782 = distinct !DILexicalBlock(scope: !780, file: !2, line: 84, column: 1)
!783 = !DILocation(line: 84, column: 1, scope: !784)
!784 = distinct !DILexicalBlock(scope: !782, file: !2, line: 84, column: 1)
!785 = !DILocation(line: 84, column: 1, scope: !786)
!786 = distinct !DILexicalBlock(scope: !784, file: !2, line: 84, column: 1)
!787 = !DILocation(line: 84, column: 1, scope: !788)
!788 = distinct !DILexicalBlock(scope: !786, file: !2, line: 84, column: 1)
!789 = distinct !{!789, !779, !779, !616}
!790 = distinct !{!790, !768, !768, !616}
!791 = !DILocation(line: 84, column: 1, scope: !792)
!792 = distinct !DILexicalBlock(scope: !758, file: !2, line: 84, column: 1)
!793 = distinct !DISubprogram(name: "__ks_insertsort_bamshuf", scope: !2, file: !2, line: 84, type: !794, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !108, !108}
!796 = !{!797, !798, !799, !800, !801}
!797 = !DILocalVariable(name: "s", arg: 1, scope: !793, file: !2, line: 84, type: !108)
!798 = !DILocalVariable(name: "t", arg: 2, scope: !793, file: !2, line: 84, type: !108)
!799 = !DILocalVariable(name: "i", scope: !793, file: !2, line: 84, type: !108)
!800 = !DILocalVariable(name: "j", scope: !793, file: !2, line: 84, type: !108)
!801 = !DILocalVariable(name: "swap_tmp", scope: !793, file: !2, line: 84, type: !109)
!802 = !DILocation(line: 84, column: 1, scope: !793)
!803 = !DILocation(line: 84, column: 1, scope: !804)
!804 = distinct !DILexicalBlock(scope: !793, file: !2, line: 84, column: 1)
!805 = !DILocation(line: 84, column: 1, scope: !806)
!806 = distinct !DILexicalBlock(scope: !804, file: !2, line: 84, column: 1)
!807 = !DILocation(line: 84, column: 1, scope: !808)
!808 = distinct !DILexicalBlock(scope: !806, file: !2, line: 84, column: 1)
!809 = !DILocation(line: 84, column: 1, scope: !810)
!810 = distinct !DILexicalBlock(scope: !808, file: !2, line: 84, column: 1)
!811 = !DILocation(line: 0, scope: !810)
!812 = !DILocation(line: 84, column: 1, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !2, line: 84, column: 1)
!814 = distinct !{!814, !807, !807, !616}
!815 = distinct !{!815, !803, !803, !616}
!816 = distinct !DISubprogram(name: "ks_introsort_bamshuf", scope: !2, file: !2, line: 84, type: !817, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!17, !161, !108}
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831}
!820 = !DILocalVariable(name: "n", arg: 1, scope: !816, file: !2, line: 84, type: !161)
!821 = !DILocalVariable(name: "a", arg: 2, scope: !816, file: !2, line: 84, type: !108)
!822 = !DILocalVariable(name: "d", scope: !816, file: !2, line: 84, type: !17)
!823 = !DILocalVariable(name: "top", scope: !816, file: !2, line: 84, type: !163)
!824 = !DILocalVariable(name: "stack", scope: !816, file: !2, line: 84, type: !163)
!825 = !DILocalVariable(name: "rp", scope: !816, file: !2, line: 84, type: !109)
!826 = !DILocalVariable(name: "swap_tmp", scope: !816, file: !2, line: 84, type: !109)
!827 = !DILocalVariable(name: "s", scope: !816, file: !2, line: 84, type: !108)
!828 = !DILocalVariable(name: "t", scope: !816, file: !2, line: 84, type: !108)
!829 = !DILocalVariable(name: "i", scope: !816, file: !2, line: 84, type: !108)
!830 = !DILocalVariable(name: "j", scope: !816, file: !2, line: 84, type: !108)
!831 = !DILocalVariable(name: "k", scope: !816, file: !2, line: 84, type: !108)
!832 = !DILocation(line: 84, column: 1, scope: !816)
!833 = !DILocation(line: 84, column: 1, scope: !834)
!834 = distinct !DILexicalBlock(scope: !816, file: !2, line: 84, column: 1)
!835 = !DILocation(line: 84, column: 1, scope: !836)
!836 = distinct !DILexicalBlock(scope: !834, file: !2, line: 84, column: 1)
!837 = !DILocation(line: 84, column: 1, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !2, line: 84, column: 1)
!839 = distinct !DILexicalBlock(scope: !836, file: !2, line: 84, column: 1)
!840 = !DILocation(line: 84, column: 1, scope: !839)
!841 = !DILocation(line: 84, column: 1, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !2, line: 84, column: 1)
!843 = !DILocation(line: 84, column: 1, scope: !844)
!844 = distinct !DILexicalBlock(scope: !816, file: !2, line: 84, column: 1)
!845 = !DILocation(line: 84, column: 1, scope: !846)
!846 = distinct !DILexicalBlock(scope: !844, file: !2, line: 84, column: 1)
!847 = distinct !{!847, !843, !843, !616}
!848 = !DILocation(line: 84, column: 1, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !2, line: 84, column: 1)
!850 = distinct !DILexicalBlock(scope: !816, file: !2, line: 84, column: 1)
!851 = !DILocation(line: 84, column: 1, scope: !850)
!852 = !DILocation(line: 84, column: 1, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !2, line: 84, column: 1)
!854 = distinct !DILexicalBlock(scope: !849, file: !2, line: 84, column: 1)
!855 = !DILocation(line: 84, column: 1, scope: !854)
!856 = !DILocation(line: 84, column: 1, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !2, line: 84, column: 1)
!858 = distinct !{!858, !832, !832}
!859 = !DILocation(line: 84, column: 1, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !2, line: 84, column: 1)
!861 = !DILocation(line: 84, column: 1, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 84, column: 1)
!863 = distinct !DILexicalBlock(scope: !860, file: !2, line: 84, column: 1)
!864 = !DILocation(line: 84, column: 1, scope: !863)
!865 = !DILocation(line: 84, column: 1, scope: !866)
!866 = distinct !DILexicalBlock(scope: !854, file: !2, line: 84, column: 1)
!867 = !DILocation(line: 84, column: 1, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !2, line: 84, column: 1)
!869 = !DILocation(line: 84, column: 1, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 84, column: 1)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 84, column: 1)
!872 = distinct !DILexicalBlock(scope: !854, file: !2, line: 84, column: 1)
!873 = distinct !{!873, !869, !869, !616}
!874 = !DILocation(line: 0, scope: !870)
!875 = distinct !{!875, !869, !869, !616}
!876 = !DILocation(line: 84, column: 1, scope: !877)
!877 = distinct !DILexicalBlock(scope: !870, file: !2, line: 84, column: 1)
!878 = !DILocation(line: 84, column: 1, scope: !871)
!879 = distinct !{!879, !880, !880}
!880 = !DILocation(line: 84, column: 1, scope: !872)
!881 = !DILocation(line: 84, column: 1, scope: !882)
!882 = distinct !DILexicalBlock(scope: !854, file: !2, line: 84, column: 1)
!883 = !DILocation(line: 84, column: 1, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 84, column: 1)
!885 = distinct !DILexicalBlock(scope: !882, file: !2, line: 84, column: 1)
!886 = !DILocation(line: 84, column: 1, scope: !885)
!887 = !DILocation(line: 84, column: 1, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !2, line: 84, column: 1)
!889 = !{!890, !590, i64 0}
!890 = !{!"", !590, i64 0, !590, i64 8, !593, i64 16}
!891 = !{!890, !590, i64 8}
!892 = !{!890, !593, i64 16}
!893 = !DILocation(line: 84, column: 1, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 84, column: 1)
!895 = distinct !DILexicalBlock(scope: !882, file: !2, line: 84, column: 1)
!896 = !DILocation(line: 84, column: 1, scope: !895)
!897 = !DILocation(line: 84, column: 1, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !2, line: 84, column: 1)
!899 = !DILocation(line: 84, column: 1, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !2, line: 84, column: 1)
!901 = distinct !DILexicalBlock(scope: !849, file: !2, line: 84, column: 1)
!902 = !DILocation(line: 84, column: 1, scope: !901)
!903 = !DILocation(line: 84, column: 1, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !2, line: 84, column: 1)
!905 = !DILocation(line: 84, column: 1, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !2, line: 84, column: 1)
!907 = distinct !DISubprogram(name: "ks_ksmall_bamshuf", scope: !2, file: !2, line: 84, type: !908, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!109, !161, !108, !161}
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !928, !931, !934, !937, !939, !944}
!911 = !DILocalVariable(name: "n", arg: 1, scope: !907, file: !2, line: 84, type: !161)
!912 = !DILocalVariable(name: "arr", arg: 2, scope: !907, file: !2, line: 84, type: !108)
!913 = !DILocalVariable(name: "kk", arg: 3, scope: !907, file: !2, line: 84, type: !161)
!914 = !DILocalVariable(name: "low", scope: !907, file: !2, line: 84, type: !108)
!915 = !DILocalVariable(name: "high", scope: !907, file: !2, line: 84, type: !108)
!916 = !DILocalVariable(name: "k", scope: !907, file: !2, line: 84, type: !108)
!917 = !DILocalVariable(name: "ll", scope: !907, file: !2, line: 84, type: !108)
!918 = !DILocalVariable(name: "hh", scope: !907, file: !2, line: 84, type: !108)
!919 = !DILocalVariable(name: "mid", scope: !907, file: !2, line: 84, type: !108)
!920 = !DILocalVariable(name: "t", scope: !921, file: !2, line: 84, type: !109)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 84, column: 1)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 84, column: 1)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 84, column: 1)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 84, column: 1)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 84, column: 1)
!927 = distinct !DILexicalBlock(scope: !907, file: !2, line: 84, column: 1)
!928 = !DILocalVariable(name: "t", scope: !929, file: !2, line: 84, type: !109)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 84, column: 1)
!930 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!931 = !DILocalVariable(name: "t", scope: !932, file: !2, line: 84, type: !109)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 84, column: 1)
!933 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!934 = !DILocalVariable(name: "t", scope: !935, file: !2, line: 84, type: !109)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 84, column: 1)
!936 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!937 = !DILocalVariable(name: "t", scope: !938, file: !2, line: 84, type: !109)
!938 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!939 = !DILocalVariable(name: "t", scope: !940, file: !2, line: 84, type: !109)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 84, column: 1)
!941 = distinct !DILexicalBlock(scope: !942, file: !2, line: 84, column: 1)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 84, column: 1)
!943 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!944 = !DILocalVariable(name: "t", scope: !945, file: !2, line: 84, type: !109)
!945 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!946 = !DILocation(line: 84, column: 1, scope: !907)
!947 = !DILocation(line: 84, column: 1, scope: !948)
!948 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!949 = !DILocation(line: 84, column: 1, scope: !925)
!950 = !DILocation(line: 84, column: 1, scope: !924)
!951 = !DILocation(line: 84, column: 1, scope: !922)
!952 = !DILocation(line: 84, column: 1, scope: !923)
!953 = !DILocation(line: 84, column: 1, scope: !921)
!954 = !DILocation(line: 84, column: 1, scope: !930)
!955 = !DILocation(line: 84, column: 1, scope: !929)
!956 = !DILocation(line: 84, column: 1, scope: !933)
!957 = !DILocation(line: 84, column: 1, scope: !932)
!958 = !DILocation(line: 84, column: 1, scope: !936)
!959 = !DILocation(line: 84, column: 1, scope: !935)
!960 = !DILocation(line: 84, column: 1, scope: !938)
!961 = !DILocation(line: 84, column: 1, scope: !941)
!962 = distinct !{!962, !961, !961, !616}
!963 = distinct !{!963, !961, !961, !616}
!964 = !DILocation(line: 84, column: 1, scope: !965)
!965 = distinct !DILexicalBlock(scope: !941, file: !2, line: 84, column: 1)
!966 = !DILocation(line: 84, column: 1, scope: !940)
!967 = !DILocation(line: 84, column: 1, scope: !942)
!968 = distinct !{!968, !969, !969}
!969 = !DILocation(line: 84, column: 1, scope: !943)
!970 = !DILocation(line: 84, column: 1, scope: !945)
!971 = !DILocation(line: 84, column: 1, scope: !972)
!972 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!973 = !DILocation(line: 84, column: 1, scope: !974)
!974 = distinct !DILexicalBlock(scope: !925, file: !2, line: 84, column: 1)
!975 = !DILocation(line: 84, column: 1, scope: !926)
!976 = distinct !{!976, !977, !977}
!977 = !DILocation(line: 84, column: 1, scope: !927)
!978 = distinct !DISubprogram(name: "ks_shuffle_bamshuf", scope: !2, file: !2, line: 84, type: !732, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !979)
!979 = !{!980, !981, !982, !983, !984}
!980 = !DILocalVariable(name: "n", arg: 1, scope: !978, file: !2, line: 84, type: !161)
!981 = !DILocalVariable(name: "a", arg: 2, scope: !978, file: !2, line: 84, type: !108)
!982 = !DILocalVariable(name: "i", scope: !978, file: !2, line: 84, type: !17)
!983 = !DILocalVariable(name: "j", scope: !978, file: !2, line: 84, type: !17)
!984 = !DILocalVariable(name: "tmp", scope: !985, file: !2, line: 84, type: !109)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 84, column: 1)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 84, column: 1)
!987 = distinct !DILexicalBlock(scope: !978, file: !2, line: 84, column: 1)
!988 = !DILocation(line: 84, column: 1, scope: !978)
!989 = !DILocation(line: 84, column: 1, scope: !987)
!990 = !DILocation(line: 84, column: 1, scope: !986)
!991 = !DILocation(line: 84, column: 1, scope: !985)
!992 = distinct !{!992, !989, !989, !616}
!993 = !DISubprogram(name: "hts_drand48", scope: !165, file: !165, line: 84, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{!501}
!996 = distinct !DISubprogram(name: "generate_prefix", scope: !2, file: !2, line: 549, type: !997, scopeLine: 549, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!19}
!999 = !{!1000, !1001}
!1000 = !DILocalVariable(name: "prefix", scope: !996, file: !2, line: 550, type: !19)
!1001 = !DILocalVariable(name: "pid", scope: !996, file: !2, line: 551, type: !24)
!1002 = !DILocation(line: 550, column: 5, scope: !996)
!1003 = !DILocation(line: 550, column: 11, scope: !996)
!1004 = !DILocation(line: 551, column: 5, scope: !996)
!1005 = !DILocation(line: 551, column: 18, scope: !996)
!1006 = !DILocation(line: 551, column: 24, scope: !996)
!1007 = !DILocation(line: 571, column: 14, scope: !996)
!1008 = !DILocation(line: 571, column: 12, scope: !996)
!1009 = !DILocation(line: 572, column: 10, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !996, file: !2, line: 572, column: 9)
!1011 = !DILocation(line: 572, column: 9, scope: !996)
!1012 = !DILocation(line: 573, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 572, column: 18)
!1014 = !DILocation(line: 574, column: 9, scope: !1013)
!1015 = !DILocation(line: 576, column: 14, scope: !996)
!1016 = !DILocation(line: 576, column: 52, scope: !996)
!1017 = !DILocation(line: 576, column: 5, scope: !996)
!1018 = !DILocation(line: 577, column: 12, scope: !996)
!1019 = !DILocation(line: 577, column: 5, scope: !996)
!1020 = !DILocation(line: 579, column: 1, scope: !996)
!1021 = !DISubprogram(name: "getpid", scope: !1022, file: !1022, line: 650, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !128, line: 154, baseType: !17)
!1026 = !DISubprogram(name: "perror", scope: !1027, file: !1027, line: 804, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !229}
!1030 = !DISubprogram(name: "snprintf", scope: !1027, file: !1027, line: 378, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!17, !1033, !161, !1034, null}
!1033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!1034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!1035 = !DILocation(line: 581, column: 22, scope: !14)
!1036 = !DILocation(line: 581, column: 34, scope: !14)
!1037 = !DILocation(line: 583, column: 5, scope: !14)
!1038 = !DILocation(line: 583, column: 9, scope: !14)
!1039 = !DILocation(line: 583, column: 12, scope: !14)
!1040 = !DILocation(line: 583, column: 26, scope: !14)
!1041 = !DILocation(line: 583, column: 47, scope: !14)
!1042 = !DILocation(line: 583, column: 62, scope: !14)
!1043 = !DILocation(line: 583, column: 73, scope: !14)
!1044 = !DILocation(line: 583, column: 88, scope: !14)
!1045 = !DILocation(line: 583, column: 109, scope: !14)
!1046 = !DILocation(line: 583, column: 114, scope: !14)
!1047 = !DILocation(line: 583, column: 127, scope: !14)
!1048 = !DILocation(line: 584, column: 5, scope: !14)
!1049 = !DILocation(line: 584, column: 17, scope: !14)
!1050 = !DILocation(line: 585, column: 5, scope: !14)
!1051 = !DILocation(line: 585, column: 11, scope: !14)
!1052 = !DILocation(line: 585, column: 27, scope: !14)
!1053 = !DILocation(line: 586, column: 5, scope: !14)
!1054 = !DILocation(line: 586, column: 21, scope: !14)
!1055 = !DILocation(line: 593, column: 5, scope: !14)
!1056 = !DILocation(line: 593, column: 29, scope: !14)
!1057 = !DILocation(line: 593, column: 35, scope: !14)
!1058 = !DILocation(line: 593, column: 17, scope: !14)
!1059 = !DILocation(line: 593, column: 15, scope: !14)
!1060 = !DILocation(line: 593, column: 72, scope: !14)
!1061 = !DILocation(line: 594, column: 17, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !14, file: !2, line: 593, column: 78)
!1063 = !DILocation(line: 594, column: 9, scope: !1062)
!1064 = !DILocation(line: 595, column: 34, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 594, column: 20)
!1066 = !DILocation(line: 595, column: 29, scope: !1065)
!1067 = !DILocation(line: 595, column: 27, scope: !1065)
!1068 = !DILocation(line: 595, column: 43, scope: !1065)
!1069 = !DILocation(line: 596, column: 33, scope: !1065)
!1070 = !DILocation(line: 596, column: 28, scope: !1065)
!1071 = !DILocation(line: 596, column: 26, scope: !1065)
!1072 = !DILocation(line: 596, column: 42, scope: !1065)
!1073 = !DILocation(line: 597, column: 25, scope: !1065)
!1074 = !DILocation(line: 597, column: 30, scope: !1065)
!1075 = !DILocation(line: 598, column: 29, scope: !1065)
!1076 = !DILocation(line: 598, column: 34, scope: !1065)
!1077 = !DILocation(line: 599, column: 33, scope: !1065)
!1078 = !DILocation(line: 599, column: 31, scope: !1065)
!1079 = !DILocation(line: 599, column: 41, scope: !1065)
!1080 = !DILocation(line: 600, column: 29, scope: !1065)
!1081 = !DILocation(line: 600, column: 34, scope: !1065)
!1082 = !DILocation(line: 601, column: 38, scope: !1065)
!1083 = !DILocation(line: 601, column: 33, scope: !1065)
!1084 = !DILocation(line: 601, column: 31, scope: !1065)
!1085 = !DILocation(line: 601, column: 47, scope: !1065)
!1086 = !DILocation(line: 602, column: 23, scope: !1065)
!1087 = !DILocation(line: 602, column: 28, scope: !1065)
!1088 = !DILocation(line: 603, column: 44, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 603, column: 23)
!1090 = !DILocation(line: 603, column: 47, scope: !1089)
!1091 = !DILocation(line: 603, column: 23, scope: !1089)
!1092 = !DILocation(line: 603, column: 67, scope: !1089)
!1093 = !DILocation(line: 603, column: 23, scope: !1065)
!1094 = !DILocation(line: 603, column: 73, scope: !1089)
!1095 = !DILocation(line: 603, column: 70, scope: !1089)
!1096 = !DILocation(line: 605, column: 32, scope: !1065)
!1097 = !DILocation(line: 605, column: 40, scope: !1065)
!1098 = !DILocation(line: 605, column: 49, scope: !1065)
!1099 = !DILocation(line: 605, column: 26, scope: !1065)
!1100 = !DILocation(line: 605, column: 19, scope: !1065)
!1101 = distinct !{!1101, !1055, !1102, !616}
!1102 = !DILocation(line: 607, column: 5, scope: !14)
!1103 = !DILocation(line: 608, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !14, file: !2, line: 608, column: 9)
!1105 = !DILocation(line: 608, column: 9, scope: !14)
!1106 = !DILocation(line: 608, column: 23, scope: !1104)
!1107 = !DILocation(line: 608, column: 16, scope: !1104)
!1108 = !DILocation(line: 609, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !14, file: !2, line: 609, column: 9)
!1110 = !DILocation(line: 609, column: 17, scope: !1109)
!1111 = !DILocation(line: 609, column: 24, scope: !1109)
!1112 = !DILocation(line: 609, column: 14, scope: !1109)
!1113 = !DILocation(line: 609, column: 9, scope: !14)
!1114 = !DILocation(line: 609, column: 38, scope: !1109)
!1115 = !DILocation(line: 609, column: 43, scope: !1109)
!1116 = !DILocation(line: 609, column: 49, scope: !1109)
!1117 = !DILocation(line: 609, column: 36, scope: !1109)
!1118 = !DILocation(line: 609, column: 29, scope: !1109)
!1119 = !DILocation(line: 610, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !14, file: !2, line: 610, column: 9)
!1121 = !DILocation(line: 610, column: 18, scope: !1120)
!1122 = !DILocation(line: 610, column: 21, scope: !1120)
!1123 = !DILocation(line: 610, column: 31, scope: !1120)
!1124 = !DILocation(line: 610, column: 34, scope: !1120)
!1125 = !DILocation(line: 610, column: 9, scope: !14)
!1126 = !DILocation(line: 611, column: 22, scope: !1120)
!1127 = !DILocation(line: 611, column: 30, scope: !1120)
!1128 = !DILocation(line: 611, column: 39, scope: !1120)
!1129 = !DILocation(line: 611, column: 16, scope: !1120)
!1130 = !DILocation(line: 611, column: 9, scope: !1120)
!1131 = !DILocation(line: 612, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !14, file: !2, line: 612, column: 9)
!1133 = !DILocation(line: 612, column: 19, scope: !1132)
!1134 = !DILocation(line: 612, column: 22, scope: !1132)
!1135 = !DILocation(line: 612, column: 9, scope: !14)
!1136 = !DILocation(line: 613, column: 17, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 612, column: 35)
!1138 = !DILocation(line: 613, column: 9, scope: !1137)
!1139 = !DILocation(line: 614, column: 22, scope: !1137)
!1140 = !DILocation(line: 614, column: 30, scope: !1137)
!1141 = !DILocation(line: 614, column: 39, scope: !1137)
!1142 = !DILocation(line: 614, column: 16, scope: !1137)
!1143 = !DILocation(line: 614, column: 9, scope: !1137)
!1144 = !DILocation(line: 616, column: 10, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !14, file: !2, line: 616, column: 9)
!1146 = !DILocation(line: 616, column: 9, scope: !14)
!1147 = !DILocation(line: 617, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 616, column: 18)
!1149 = !DILocation(line: 617, column: 16, scope: !1148)
!1150 = !DILocation(line: 618, column: 17, scope: !1148)
!1151 = !DILocation(line: 619, column: 5, scope: !1148)
!1152 = !DILocation(line: 621, column: 10, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !14, file: !2, line: 621, column: 9)
!1154 = !DILocation(line: 621, column: 9, scope: !14)
!1155 = !DILocation(line: 621, column: 18, scope: !1153)
!1156 = !DILocation(line: 623, column: 10, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !14, file: !2, line: 623, column: 9)
!1158 = !DILocation(line: 623, column: 16, scope: !1157)
!1159 = !DILocation(line: 623, column: 47, scope: !1157)
!1160 = !DILocation(line: 623, column: 51, scope: !1157)
!1161 = !DILocation(line: 623, column: 55, scope: !1157)
!1162 = !DILocation(line: 623, column: 59, scope: !1157)
!1163 = !DILocation(line: 623, column: 32, scope: !1157)
!1164 = !DILocation(line: 623, column: 30, scope: !1157)
!1165 = !DILocation(line: 623, column: 9, scope: !14)
!1166 = !DILocation(line: 624, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 623, column: 65)
!1168 = !DILocation(line: 625, column: 9, scope: !1167)
!1169 = !DILocation(line: 628, column: 19, scope: !14)
!1170 = !DILocation(line: 628, column: 24, scope: !14)
!1171 = !DILocation(line: 628, column: 33, scope: !14)
!1172 = !DILocation(line: 628, column: 42, scope: !14)
!1173 = !DILocation(line: 628, column: 50, scope: !14)
!1174 = !DILocation(line: 628, column: 58, scope: !14)
!1175 = !DILocation(line: 629, column: 20, scope: !14)
!1176 = !DILocation(line: 629, column: 33, scope: !14)
!1177 = !DILocation(line: 629, column: 44, scope: !14)
!1178 = !DILocation(line: 629, column: 62, scope: !14)
!1179 = !DILocation(line: 629, column: 72, scope: !14)
!1180 = !DILocation(line: 628, column: 11, scope: !14)
!1181 = !DILocation(line: 628, column: 9, scope: !14)
!1182 = !DILocation(line: 631, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !14, file: !2, line: 631, column: 9)
!1184 = !DILocation(line: 631, column: 9, scope: !14)
!1185 = !DILocation(line: 631, column: 23, scope: !1183)
!1186 = !DILocation(line: 631, column: 18, scope: !1183)
!1187 = !DILocation(line: 632, column: 10, scope: !14)
!1188 = !DILocation(line: 632, column: 5, scope: !14)
!1189 = !DILocation(line: 634, column: 12, scope: !14)
!1190 = !DILocation(line: 634, column: 5, scope: !14)
!1191 = !DILocation(line: 635, column: 1, scope: !14)
!1192 = !DISubprogram(name: "getopt_long", scope: !533, file: !533, line: 66, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!17, !17, !1195, !229, !1197, !538}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1198 = distinct !DISubprogram(name: "atoi", scope: !647, file: !647, line: 362, type: !1199, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!17, !229}
!1201 = !{!1202}
!1202 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1198, file: !647, line: 362, type: !229)
!1203 = !DILocation(line: 362, column: 1, scope: !1198)
!1204 = !DILocation(line: 364, column: 24, scope: !1198)
!1205 = !DILocation(line: 364, column: 16, scope: !1198)
!1206 = !DILocation(line: 364, column: 10, scope: !1198)
!1207 = !DILocation(line: 364, column: 3, scope: !1198)
!1208 = !DISubprogram(name: "parse_sam_global_opt", scope: !522, file: !522, line: 85, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!17, !17, !229, !1197, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1212 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 528, type: !1213, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1264)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!17, !1215, !17, !17}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1217, line: 7, baseType: !1218)
!1217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1219, line: 49, size: 1728, elements: !1220)
!1219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1236, !1238, !1239, !1240, !1242, !1243, !1244, !1248, !1251, !1253, !1256, !1259, !1260, !1261, !1262, !1263}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1218, file: !1219, line: 51, baseType: !17, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1218, file: !1219, line: 54, baseType: !19, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1218, file: !1219, line: 55, baseType: !19, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1218, file: !1219, line: 56, baseType: !19, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1218, file: !1219, line: 57, baseType: !19, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1218, file: !1219, line: 58, baseType: !19, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1218, file: !1219, line: 59, baseType: !19, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1218, file: !1219, line: 60, baseType: !19, size: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1218, file: !1219, line: 61, baseType: !19, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1218, file: !1219, line: 64, baseType: !19, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1218, file: !1219, line: 65, baseType: !19, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1218, file: !1219, line: 66, baseType: !19, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1218, file: !1219, line: 68, baseType: !1234, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1219, line: 36, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1218, file: !1219, line: 70, baseType: !1237, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1218, file: !1219, line: 72, baseType: !17, size: 32, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1218, file: !1219, line: 73, baseType: !17, size: 32, offset: 928)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1218, file: !1219, line: 74, baseType: !1241, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !128, line: 152, baseType: !129)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1218, file: !1219, line: 77, baseType: !137, size: 16, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1218, file: !1219, line: 78, baseType: !245, size: 8, offset: 1040)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1218, file: !1219, line: 79, baseType: !1245, size: 8, offset: 1048)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 1)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1218, file: !1219, line: 81, baseType: !1249, size: 64, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1219, line: 43, baseType: null)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1218, file: !1219, line: 89, baseType: !1252, size: 64, offset: 1152)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !128, line: 153, baseType: !129)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1218, file: !1219, line: 91, baseType: !1254, size: 64, offset: 1216)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1219, line: 37, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1218, file: !1219, line: 92, baseType: !1257, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1219, line: 38, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1218, file: !1219, line: 93, baseType: !1237, size: 64, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1218, file: !1219, line: 94, baseType: !169, size: 64, offset: 1408)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1218, file: !1219, line: 95, baseType: !161, size: 64, offset: 1472)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1218, file: !1219, line: 96, baseType: !17, size: 32, offset: 1536)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1218, file: !1219, line: 98, baseType: !483, size: 160, offset: 1568)
!1264 = !{!1265, !1266, !1267}
!1265 = !DILocalVariable(name: "fp", arg: 1, scope: !1212, file: !2, line: 528, type: !1215)
!1266 = !DILocalVariable(name: "n_files", arg: 2, scope: !1212, file: !2, line: 528, type: !17)
!1267 = !DILocalVariable(name: "reads_store", arg: 3, scope: !1212, file: !2, line: 528, type: !17)
!1268 = !DILocation(line: 528, column: 24, scope: !1212)
!1269 = !DILocation(line: 528, column: 32, scope: !1212)
!1270 = !DILocation(line: 528, column: 45, scope: !1212)
!1271 = !DILocation(line: 529, column: 13, scope: !1212)
!1272 = !DILocation(line: 540, column: 13, scope: !1212)
!1273 = !DILocation(line: 540, column: 38, scope: !1212)
!1274 = !DILocation(line: 529, column: 5, scope: !1212)
!1275 = !DILocation(line: 542, column: 25, scope: !1212)
!1276 = !DILocation(line: 542, column: 5, scope: !1212)
!1277 = !DILocation(line: 543, column: 13, scope: !1212)
!1278 = !DILocation(line: 543, column: 5, scope: !1212)
!1279 = !DILocation(line: 546, column: 5, scope: !1212)
!1280 = !DISubprogram(name: "fprintf", scope: !1027, file: !1027, line: 350, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!17, !1283, !1034, null}
!1283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1215)
!1284 = !DISubprogram(name: "stringify_argv", scope: !116, file: !116, line: 814, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!19, !17, !18}
!1287 = !DISubprogram(name: "print_error", scope: !1288, file: !1288, line: 35, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !DIFile(filename: "./samtools.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "a779e61124e956dfb3b0bc9d6698083d")
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !229, !229, null}
!1291 = distinct !DISubprogram(name: "bamshuf", scope: !2, file: !2, line: 183, type: !1292, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!17, !229, !17, !229, !17, !17, !229, !17, !17, !1211, !19, !17}
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1319, !1320, !1321, !1322, !1323, !1331, !1334, !1337, !1339, !1347, !1348, !1350, !1351, !1352, !1357, !1358, !1364, !1365, !1369, !1370}
!1295 = !DILocalVariable(name: "fn", arg: 1, scope: !1291, file: !2, line: 183, type: !229)
!1296 = !DILocalVariable(name: "n_files", arg: 2, scope: !1291, file: !2, line: 183, type: !17)
!1297 = !DILocalVariable(name: "pre", arg: 3, scope: !1291, file: !2, line: 183, type: !229)
!1298 = !DILocalVariable(name: "clevel", arg: 4, scope: !1291, file: !2, line: 183, type: !17)
!1299 = !DILocalVariable(name: "is_stdout", arg: 5, scope: !1291, file: !2, line: 184, type: !17)
!1300 = !DILocalVariable(name: "output_file", arg: 6, scope: !1291, file: !2, line: 184, type: !229)
!1301 = !DILocalVariable(name: "fast", arg: 7, scope: !1291, file: !2, line: 184, type: !17)
!1302 = !DILocalVariable(name: "store_max", arg: 8, scope: !1291, file: !2, line: 184, type: !17)
!1303 = !DILocalVariable(name: "ga", arg: 9, scope: !1291, file: !2, line: 184, type: !1211)
!1304 = !DILocalVariable(name: "arg_list", arg: 10, scope: !1291, file: !2, line: 184, type: !19)
!1305 = !DILocalVariable(name: "no_pg", arg: 11, scope: !1291, file: !2, line: 184, type: !17)
!1306 = !DILocalVariable(name: "fp", scope: !1291, file: !2, line: 186, type: !173)
!1307 = !DILocalVariable(name: "fpw", scope: !1291, file: !2, line: 186, type: !173)
!1308 = !DILocalVariable(name: "fpt", scope: !1291, file: !2, line: 186, type: !172)
!1309 = !DILocalVariable(name: "fnt", scope: !1291, file: !2, line: 187, type: !18)
!1310 = !DILocalVariable(name: "modew", scope: !1291, file: !2, line: 187, type: !3)
!1311 = !DILocalVariable(name: "b", scope: !1291, file: !2, line: 188, type: !114)
!1312 = !DILocalVariable(name: "i", scope: !1291, file: !2, line: 189, type: !17)
!1313 = !DILocalVariable(name: "counter", scope: !1291, file: !2, line: 189, type: !17)
!1314 = !DILocalVariable(name: "l", scope: !1291, file: !2, line: 189, type: !17)
!1315 = !DILocalVariable(name: "r", scope: !1291, file: !2, line: 189, type: !17)
!1316 = !DILocalVariable(name: "h", scope: !1291, file: !2, line: 190, type: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hdr_t", file: !116, line: 83, baseType: !233)
!1319 = !DILocalVariable(name: "j", scope: !1291, file: !2, line: 191, type: !125)
!1320 = !DILocalVariable(name: "max_cnt", scope: !1291, file: !2, line: 191, type: !125)
!1321 = !DILocalVariable(name: "cnt", scope: !1291, file: !2, line: 191, type: !257)
!1322 = !DILocalVariable(name: "a", scope: !1291, file: !2, line: 192, type: !108)
!1323 = !DILocalVariable(name: "p", scope: !1291, file: !2, line: 193, type: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsThreadPool", file: !23, line: 273, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsThreadPool", file: !23, line: 270, size: 128, elements: !1326)
!1326 = !{!1327, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1325, file: !23, line: 271, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_tpool", file: !23, line: 59, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !1325, file: !23, line: 272, baseType: !17, size: 32, offset: 64)
!1331 = !DILocalVariable(name: "fnw", scope: !1332, file: !2, line: 230, type: !19)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 229, column: 37)
!1333 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 229, column: 9)
!1334 = !DILocalVariable(name: "stored", scope: !1335, file: !2, line: 293, type: !261)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 292, column: 15)
!1336 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 292, column: 9)
!1337 = !DILocalVariable(name: "itr", scope: !1335, file: !2, line: 294, type: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !259, line: 167, baseType: !258)
!1339 = !DILocalVariable(name: "list", scope: !1335, file: !2, line: 295, type: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_list_t", file: !2, line: 97, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 92, size: 256, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "bam_pool", scope: !1341, file: !2, line: 93, baseType: !114, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1341, file: !2, line: 94, baseType: !280, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1341, file: !2, line: 95, baseType: !161, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1341, file: !2, line: 96, baseType: !161, size: 64, offset: 192)
!1347 = !DILocalVariable(name: "err", scope: !1335, file: !2, line: 296, type: !17)
!1348 = !DILocalVariable(name: "ret", scope: !1349, file: !2, line: 308, type: !17)
!1349 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 307, column: 71)
!1350 = !DILocalVariable(name: "b", scope: !1349, file: !2, line: 309, type: !114)
!1351 = !DILocalVariable(name: "readflag", scope: !1349, file: !2, line: 310, type: !17)
!1352 = !DILocalVariable(name: "r1", scope: !1353, file: !2, line: 355, type: !114)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 353, column: 24)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 317, column: 21)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 313, column: 128)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 313, column: 17)
!1357 = !DILocalVariable(name: "r2", scope: !1353, file: !2, line: 355, type: !114)
!1358 = !DILocalVariable(name: "b", scope: !1359, file: !2, line: 388, type: !114)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 387, column: 42)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 387, column: 17)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 386, column: 68)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 386, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 386, column: 9)
!1364 = !DILabel(scope: !1335, name: "fast_fail", file: !2, line: 400)
!1365 = !DILocalVariable(name: "c", scope: !1366, file: !2, line: 460, type: !125)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 459, column: 35)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 459, column: 5)
!1368 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 459, column: 5)
!1369 = !DILabel(scope: !1291, name: "mem_fail", file: !2, line: 505)
!1370 = !DILabel(scope: !1291, name: "fail", file: !2, line: 508)
!1371 = !DILocation(line: 183, column: 32, scope: !1291)
!1372 = !DILocation(line: 183, column: 40, scope: !1291)
!1373 = !DILocation(line: 183, column: 61, scope: !1291)
!1374 = !DILocation(line: 183, column: 70, scope: !1291)
!1375 = !DILocation(line: 184, column: 24, scope: !1291)
!1376 = !DILocation(line: 184, column: 47, scope: !1291)
!1377 = !DILocation(line: 184, column: 64, scope: !1291)
!1378 = !DILocation(line: 184, column: 74, scope: !1291)
!1379 = !DILocation(line: 184, column: 102, scope: !1291)
!1380 = !DILocation(line: 184, column: 112, scope: !1291)
!1381 = !DILocation(line: 184, column: 126, scope: !1291)
!1382 = !DILocation(line: 186, column: 5, scope: !1291)
!1383 = !DILocation(line: 186, column: 14, scope: !1291)
!1384 = !DILocation(line: 186, column: 19, scope: !1291)
!1385 = !DILocation(line: 186, column: 33, scope: !1291)
!1386 = !DILocation(line: 187, column: 5, scope: !1291)
!1387 = !DILocation(line: 187, column: 12, scope: !1291)
!1388 = !DILocation(line: 187, column: 24, scope: !1291)
!1389 = !DILocation(line: 188, column: 5, scope: !1291)
!1390 = !DILocation(line: 188, column: 13, scope: !1291)
!1391 = !DILocation(line: 189, column: 5, scope: !1291)
!1392 = !DILocation(line: 189, column: 9, scope: !1291)
!1393 = !DILocation(line: 189, column: 12, scope: !1291)
!1394 = !DILocation(line: 189, column: 21, scope: !1291)
!1395 = !DILocation(line: 189, column: 24, scope: !1291)
!1396 = !DILocation(line: 190, column: 5, scope: !1291)
!1397 = !DILocation(line: 190, column: 16, scope: !1291)
!1398 = !DILocation(line: 191, column: 5, scope: !1291)
!1399 = !DILocation(line: 191, column: 13, scope: !1291)
!1400 = !DILocation(line: 191, column: 16, scope: !1291)
!1401 = !DILocation(line: 191, column: 30, scope: !1291)
!1402 = !DILocation(line: 192, column: 5, scope: !1291)
!1403 = !DILocation(line: 192, column: 13, scope: !1291)
!1404 = !DILocation(line: 193, column: 5, scope: !1291)
!1405 = !DILocation(line: 193, column: 19, scope: !1291)
!1406 = !DILocation(line: 195, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 195, column: 9)
!1408 = !DILocation(line: 195, column: 13, scope: !1407)
!1409 = !{!1410, !593, i64 72}
!1410 = !{!"sam_global_args", !1411, i64 0, !1411, i64 32, !590, i64 64, !593, i64 72, !593, i64 76}
!1411 = !{!"htsFormat", !586, i64 0, !586, i64 4, !1412, i64 8, !586, i64 12, !680, i64 16, !590, i64 24}
!1412 = !{!"", !680, i64 0, !680, i64 2}
!1413 = !DILocation(line: 195, column: 22, scope: !1407)
!1414 = !DILocation(line: 195, column: 9, scope: !1291)
!1415 = !DILocation(line: 196, column: 39, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 196, column: 13)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 195, column: 27)
!1418 = !DILocation(line: 196, column: 43, scope: !1416)
!1419 = !DILocation(line: 196, column: 24, scope: !1416)
!1420 = !DILocation(line: 196, column: 17, scope: !1416)
!1421 = !DILocation(line: 196, column: 22, scope: !1416)
!1422 = !{!1423, !590, i64 0}
!1423 = !{!"htsThreadPool", !590, i64 0, !593, i64 8}
!1424 = !DILocation(line: 196, column: 13, scope: !1417)
!1425 = !DILocation(line: 197, column: 13, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 196, column: 55)
!1427 = !DILocation(line: 198, column: 13, scope: !1426)
!1428 = !DILocation(line: 200, column: 5, scope: !1417)
!1429 = !DILocation(line: 204, column: 10, scope: !1291)
!1430 = !DILocation(line: 204, column: 8, scope: !1291)
!1431 = !DILocation(line: 205, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 205, column: 9)
!1433 = !DILocation(line: 205, column: 12, scope: !1432)
!1434 = !DILocation(line: 205, column: 9, scope: !1291)
!1435 = !DILocation(line: 206, column: 71, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 205, column: 21)
!1437 = !DILocation(line: 206, column: 9, scope: !1436)
!1438 = !DILocation(line: 207, column: 9, scope: !1436)
!1439 = !DILocation(line: 209, column: 11, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 209, column: 9)
!1441 = !DILocation(line: 209, column: 9, scope: !1440)
!1442 = !DILocation(line: 209, column: 9, scope: !1291)
!1443 = !DILocation(line: 209, column: 29, scope: !1440)
!1444 = !DILocation(line: 209, column: 17, scope: !1440)
!1445 = !DILocation(line: 211, column: 22, scope: !1291)
!1446 = !DILocation(line: 211, column: 9, scope: !1291)
!1447 = !DILocation(line: 211, column: 7, scope: !1291)
!1448 = !DILocation(line: 212, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 212, column: 9)
!1450 = !DILocation(line: 212, column: 11, scope: !1449)
!1451 = !DILocation(line: 212, column: 9, scope: !1291)
!1452 = !DILocation(line: 213, column: 17, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 212, column: 20)
!1454 = !DILocation(line: 213, column: 60, scope: !1453)
!1455 = !DILocation(line: 213, column: 9, scope: !1453)
!1456 = !DILocation(line: 214, column: 9, scope: !1453)
!1457 = !DILocation(line: 217, column: 16, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 217, column: 9)
!1459 = !DILocation(line: 217, column: 13, scope: !1458)
!1460 = !DILocation(line: 218, column: 6, scope: !1458)
!1461 = !DILocation(line: 218, column: 33, scope: !1458)
!1462 = !DILocation(line: 218, column: 16, scope: !1458)
!1463 = !DILocation(line: 218, column: 13, scope: !1458)
!1464 = !DILocation(line: 217, column: 9, scope: !1291)
!1465 = !DILocation(line: 220, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 219, column: 8)
!1467 = !DILocation(line: 221, column: 9, scope: !1466)
!1468 = !DILocation(line: 225, column: 16, scope: !1291)
!1469 = !DILocation(line: 225, column: 9, scope: !1291)
!1470 = !DILocation(line: 225, column: 7, scope: !1291)
!1471 = !DILocation(line: 227, column: 13, scope: !1291)
!1472 = !DILocation(line: 227, column: 29, scope: !1291)
!1473 = !DILocation(line: 227, column: 36, scope: !1291)
!1474 = !DILocation(line: 227, column: 41, scope: !1291)
!1475 = !DILocation(line: 227, column: 44, scope: !1291)
!1476 = !DILocation(line: 227, column: 51, scope: !1291)
!1477 = !DILocation(line: 227, column: 28, scope: !1291)
!1478 = !DILocation(line: 227, column: 58, scope: !1291)
!1479 = !DILocation(line: 227, column: 5, scope: !1291)
!1480 = !DILocation(line: 229, column: 10, scope: !1333)
!1481 = !DILocation(line: 229, column: 20, scope: !1333)
!1482 = !DILocation(line: 229, column: 24, scope: !1333)
!1483 = !DILocation(line: 229, column: 9, scope: !1291)
!1484 = !DILocation(line: 230, column: 9, scope: !1332)
!1485 = !DILocation(line: 230, column: 15, scope: !1332)
!1486 = !DILocation(line: 230, column: 35, scope: !1332)
!1487 = !DILocation(line: 230, column: 37, scope: !1332)
!1488 = !DILocation(line: 230, column: 28, scope: !1332)
!1489 = !DILocation(line: 231, column: 14, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 231, column: 13)
!1491 = !DILocation(line: 231, column: 13, scope: !1332)
!1492 = !DILocation(line: 231, column: 19, scope: !1490)
!1493 = !DILocation(line: 232, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 232, column: 13)
!1495 = !DILocation(line: 232, column: 17, scope: !1494)
!1496 = !DILocation(line: 232, column: 21, scope: !1494)
!1497 = !{!1410, !586, i64 36}
!1498 = !DILocation(line: 232, column: 28, scope: !1494)
!1499 = !DILocation(line: 232, column: 13, scope: !1332)
!1500 = !DILocation(line: 233, column: 21, scope: !1494)
!1501 = !DILocation(line: 233, column: 36, scope: !1494)
!1502 = !DILocation(line: 233, column: 13, scope: !1494)
!1503 = !DILocation(line: 235, column: 21, scope: !1494)
!1504 = !DILocation(line: 235, column: 35, scope: !1494)
!1505 = !DILocation(line: 235, column: 68, scope: !1494)
!1506 = !DILocation(line: 235, column: 72, scope: !1494)
!1507 = !DILocation(line: 235, column: 41, scope: !1494)
!1508 = !DILocation(line: 235, column: 13, scope: !1494)
!1509 = !DILocation(line: 236, column: 15, scope: !1332)
!1510 = !DILocation(line: 236, column: 13, scope: !1332)
!1511 = !DILocation(line: 237, column: 14, scope: !1332)
!1512 = !DILocation(line: 237, column: 9, scope: !1332)
!1513 = !DILocation(line: 238, column: 5, scope: !1333)
!1514 = !DILocation(line: 238, column: 5, scope: !1332)
!1515 = !DILocation(line: 238, column: 16, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 238, column: 16)
!1517 = !DILocation(line: 238, column: 16, scope: !1333)
!1518 = !DILocation(line: 239, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 238, column: 29)
!1520 = !DILocation(line: 239, column: 18, scope: !1519)
!1521 = !{!586, !586, i64 0}
!1522 = !DILocation(line: 239, column: 25, scope: !1519)
!1523 = !DILocation(line: 239, column: 34, scope: !1519)
!1524 = !DILocation(line: 240, column: 23, scope: !1519)
!1525 = !DILocation(line: 240, column: 29, scope: !1519)
!1526 = !DILocation(line: 240, column: 34, scope: !1519)
!1527 = !DILocation(line: 240, column: 9, scope: !1519)
!1528 = !DILocation(line: 241, column: 20, scope: !1519)
!1529 = !DILocation(line: 241, column: 13, scope: !1519)
!1530 = !DILocation(line: 241, column: 11, scope: !1519)
!1531 = !DILocation(line: 242, column: 18, scope: !1519)
!1532 = !DILocation(line: 242, column: 26, scope: !1519)
!1533 = !DILocation(line: 242, column: 24, scope: !1519)
!1534 = !DILocation(line: 242, column: 45, scope: !1519)
!1535 = !DILocation(line: 242, column: 43, scope: !1519)
!1536 = !DILocation(line: 243, column: 19, scope: !1519)
!1537 = !DILocation(line: 243, column: 26, scope: !1519)
!1538 = !DILocation(line: 243, column: 31, scope: !1519)
!1539 = !DILocation(line: 243, column: 34, scope: !1519)
!1540 = !DILocation(line: 243, column: 41, scope: !1519)
!1541 = !DILocation(line: 243, column: 18, scope: !1519)
!1542 = !DILocation(line: 243, column: 48, scope: !1519)
!1543 = !DILocation(line: 242, column: 9, scope: !1519)
!1544 = !DILocation(line: 244, column: 15, scope: !1519)
!1545 = !DILocation(line: 244, column: 13, scope: !1519)
!1546 = !DILocation(line: 245, column: 5, scope: !1519)
!1547 = !DILocation(line: 245, column: 18, scope: !1516)
!1548 = !DILocation(line: 245, column: 16, scope: !1516)
!1549 = !DILocation(line: 246, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 246, column: 9)
!1551 = !DILocation(line: 246, column: 13, scope: !1550)
!1552 = !DILocation(line: 246, column: 9, scope: !1291)
!1553 = !DILocation(line: 247, column: 13, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 247, column: 13)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 246, column: 22)
!1556 = !DILocation(line: 247, column: 13, scope: !1555)
!1557 = !DILocation(line: 247, column: 24, scope: !1554)
!1558 = !DILocation(line: 248, column: 81, scope: !1554)
!1559 = !DILocation(line: 248, column: 14, scope: !1554)
!1560 = !DILocation(line: 249, column: 9, scope: !1555)
!1561 = !DILocation(line: 251, column: 11, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 251, column: 9)
!1563 = !DILocation(line: 251, column: 9, scope: !1562)
!1564 = !DILocation(line: 251, column: 9, scope: !1291)
!1565 = !DILocation(line: 251, column: 29, scope: !1562)
!1566 = !DILocation(line: 251, column: 17, scope: !1562)
!1567 = !DILocation(line: 253, column: 10, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 253, column: 9)
!1569 = !DILocation(line: 253, column: 16, scope: !1568)
!1570 = !DILocation(line: 253, column: 34, scope: !1568)
!1571 = !DILocation(line: 254, column: 40, scope: !1568)
!1572 = !DILocation(line: 255, column: 34, scope: !1568)
!1573 = !DILocation(line: 256, column: 34, scope: !1568)
!1574 = !DILocation(line: 256, column: 45, scope: !1568)
!1575 = !DILocation(line: 253, column: 19, scope: !1568)
!1576 = !DILocation(line: 253, column: 9, scope: !1291)
!1577 = !DILocation(line: 258, column: 77, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 257, column: 41)
!1579 = !DILocation(line: 258, column: 9, scope: !1578)
!1580 = !DILocation(line: 259, column: 9, scope: !1578)
!1581 = !DILocation(line: 262, column: 23, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 262, column: 9)
!1583 = !DILocation(line: 262, column: 28, scope: !1582)
!1584 = !DILocation(line: 262, column: 9, scope: !1582)
!1585 = !DILocation(line: 262, column: 31, scope: !1582)
!1586 = !DILocation(line: 262, column: 9, scope: !1291)
!1587 = !DILocation(line: 263, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 262, column: 36)
!1589 = !DILocation(line: 264, column: 9, scope: !1588)
!1590 = !DILocation(line: 267, column: 26, scope: !1291)
!1591 = !DILocation(line: 267, column: 19, scope: !1291)
!1592 = !DILocation(line: 267, column: 9, scope: !1291)
!1593 = !DILocation(line: 268, column: 10, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 268, column: 9)
!1595 = !DILocation(line: 268, column: 9, scope: !1291)
!1596 = !DILocation(line: 268, column: 15, scope: !1594)
!1597 = !DILocation(line: 269, column: 29, scope: !1291)
!1598 = !DILocation(line: 269, column: 22, scope: !1291)
!1599 = !DILocation(line: 269, column: 9, scope: !1291)
!1600 = !DILocation(line: 270, column: 10, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 270, column: 9)
!1602 = !DILocation(line: 270, column: 9, scope: !1291)
!1603 = !DILocation(line: 270, column: 15, scope: !1601)
!1604 = !DILocation(line: 271, column: 28, scope: !1291)
!1605 = !DILocation(line: 271, column: 21, scope: !1291)
!1606 = !DILocation(line: 271, column: 9, scope: !1291)
!1607 = !DILocation(line: 272, column: 10, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 272, column: 9)
!1609 = !DILocation(line: 272, column: 9, scope: !1291)
!1610 = !DILocation(line: 272, column: 15, scope: !1608)
!1611 = !DILocation(line: 274, column: 22, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 274, column: 5)
!1613 = !DILocation(line: 274, column: 12, scope: !1612)
!1614 = !DILocation(line: 274, column: 10, scope: !1612)
!1615 = !DILocation(line: 274, column: 27, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 274, column: 5)
!1617 = !DILocation(line: 274, column: 31, scope: !1616)
!1618 = !DILocation(line: 274, column: 29, scope: !1616)
!1619 = !DILocation(line: 274, column: 5, scope: !1612)
!1620 = !DILocation(line: 275, column: 32, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 274, column: 45)
!1622 = !DILocation(line: 275, column: 34, scope: !1621)
!1623 = !DILocation(line: 275, column: 25, scope: !1621)
!1624 = !DILocation(line: 275, column: 9, scope: !1621)
!1625 = !DILocation(line: 275, column: 13, scope: !1621)
!1626 = !DILocation(line: 275, column: 16, scope: !1621)
!1627 = !DILocation(line: 276, column: 14, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 276, column: 13)
!1629 = !DILocation(line: 276, column: 18, scope: !1628)
!1630 = !DILocation(line: 276, column: 13, scope: !1621)
!1631 = !DILocation(line: 276, column: 22, scope: !1628)
!1632 = !DILocation(line: 277, column: 9, scope: !1621)
!1633 = !DILocation(line: 278, column: 21, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 277, column: 12)
!1635 = !DILocation(line: 278, column: 25, scope: !1634)
!1636 = !DILocation(line: 278, column: 44, scope: !1634)
!1637 = !DILocation(line: 278, column: 56, scope: !1634)
!1638 = !DILocation(line: 278, column: 13, scope: !1634)
!1639 = !DILocation(line: 279, column: 22, scope: !1634)
!1640 = !DILocation(line: 279, column: 13, scope: !1634)
!1641 = !DILocation(line: 279, column: 17, scope: !1634)
!1642 = !DILocation(line: 279, column: 20, scope: !1634)
!1643 = !DILocation(line: 280, column: 9, scope: !1634)
!1644 = !DILocation(line: 280, column: 19, scope: !1621)
!1645 = !DILocation(line: 280, column: 23, scope: !1621)
!1646 = !DILocation(line: 280, column: 26, scope: !1621)
!1647 = !DILocation(line: 280, column: 29, scope: !1621)
!1648 = !DILocation(line: 280, column: 35, scope: !1621)
!1649 = !DILocation(line: 0, scope: !1621)
!1650 = distinct !{!1650, !1632, !1651, !616}
!1651 = !DILocation(line: 280, column: 44, scope: !1621)
!1652 = !DILocation(line: 281, column: 13, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 281, column: 13)
!1654 = !DILocation(line: 281, column: 17, scope: !1653)
!1655 = !DILocation(line: 281, column: 20, scope: !1653)
!1656 = !DILocation(line: 281, column: 13, scope: !1621)
!1657 = !DILocation(line: 282, column: 82, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 281, column: 29)
!1659 = !DILocation(line: 282, column: 86, scope: !1658)
!1660 = !DILocation(line: 282, column: 13, scope: !1658)
!1661 = !DILocation(line: 283, column: 13, scope: !1658)
!1662 = !DILocation(line: 285, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 285, column: 13)
!1664 = !DILocation(line: 285, column: 13, scope: !1663)
!1665 = !DILocation(line: 285, column: 13, scope: !1621)
!1666 = !DILocation(line: 285, column: 33, scope: !1663)
!1667 = !DILocation(line: 285, column: 37, scope: !1663)
!1668 = !DILocation(line: 285, column: 21, scope: !1663)
!1669 = !DILocation(line: 286, column: 27, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 286, column: 13)
!1671 = !DILocation(line: 286, column: 31, scope: !1670)
!1672 = !DILocation(line: 286, column: 35, scope: !1670)
!1673 = !DILocation(line: 286, column: 13, scope: !1670)
!1674 = !DILocation(line: 286, column: 38, scope: !1670)
!1675 = !DILocation(line: 286, column: 13, scope: !1621)
!1676 = !DILocation(line: 287, column: 95, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 286, column: 43)
!1678 = !DILocation(line: 287, column: 99, scope: !1677)
!1679 = !DILocation(line: 287, column: 13, scope: !1677)
!1680 = !DILocation(line: 288, column: 13, scope: !1677)
!1681 = !DILocation(line: 290, column: 5, scope: !1621)
!1682 = !DILocation(line: 274, column: 40, scope: !1616)
!1683 = !DILocation(line: 274, column: 5, scope: !1616)
!1684 = distinct !{!1684, !1619, !1685, !616}
!1685 = !DILocation(line: 290, column: 5, scope: !1612)
!1686 = !DILocation(line: 292, column: 9, scope: !1336)
!1687 = !DILocation(line: 292, column: 9, scope: !1291)
!1688 = !DILocation(line: 293, column: 9, scope: !1335)
!1689 = !DILocation(line: 293, column: 29, scope: !1335)
!1690 = !DILocation(line: 293, column: 38, scope: !1335)
!1691 = !DILocation(line: 294, column: 9, scope: !1335)
!1692 = !DILocation(line: 294, column: 18, scope: !1335)
!1693 = !DILocation(line: 295, column: 9, scope: !1335)
!1694 = !DILocation(line: 295, column: 20, scope: !1335)
!1695 = !DILocation(line: 296, column: 9, scope: !1335)
!1696 = !DILocation(line: 296, column: 13, scope: !1335)
!1697 = !DILocation(line: 297, column: 14, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 297, column: 13)
!1699 = !DILocation(line: 297, column: 13, scope: !1335)
!1700 = !DILocation(line: 297, column: 22, scope: !1698)
!1701 = !DILocation(line: 299, column: 13, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 299, column: 13)
!1703 = !DILocation(line: 299, column: 23, scope: !1702)
!1704 = !DILocation(line: 299, column: 13, scope: !1335)
!1705 = !DILocation(line: 299, column: 38, scope: !1702)
!1706 = !DILocation(line: 299, column: 28, scope: !1702)
!1707 = !DILocation(line: 301, column: 36, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 301, column: 13)
!1709 = !DILocation(line: 301, column: 13, scope: !1708)
!1710 = !DILocation(line: 301, column: 13, scope: !1335)
!1711 = !DILocation(line: 302, column: 21, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 301, column: 48)
!1713 = !DILocation(line: 302, column: 13, scope: !1712)
!1714 = !DILocation(line: 303, column: 17, scope: !1712)
!1715 = !DILocation(line: 304, column: 13, scope: !1712)
!1716 = !DILocation(line: 307, column: 9, scope: !1335)
!1717 = !DILocation(line: 307, column: 31, scope: !1335)
!1718 = !DILocation(line: 307, column: 35, scope: !1335)
!1719 = !DILocation(line: 307, column: 43, scope: !1335)
!1720 = !{!1721, !590, i64 8}
!1721 = !{!"", !590, i64 0, !590, i64 8, !585, i64 16, !585, i64 24}
!1722 = !DILocation(line: 307, column: 54, scope: !1335)
!1723 = !{!1721, !585, i64 24}
!1724 = !DILocation(line: 307, column: 38, scope: !1335)
!1725 = !DILocation(line: 307, column: 61, scope: !1335)
!1726 = !DILocation(line: 307, column: 21, scope: !1335)
!1727 = !DILocation(line: 307, column: 19, scope: !1335)
!1728 = !DILocation(line: 307, column: 65, scope: !1335)
!1729 = !DILocation(line: 308, column: 13, scope: !1349)
!1730 = !DILocation(line: 308, column: 17, scope: !1349)
!1731 = !DILocation(line: 309, column: 13, scope: !1349)
!1732 = !DILocation(line: 309, column: 21, scope: !1349)
!1733 = !DILocation(line: 309, column: 30, scope: !1349)
!1734 = !DILocation(line: 309, column: 41, scope: !1349)
!1735 = !DILocation(line: 309, column: 25, scope: !1349)
!1736 = !DILocation(line: 309, column: 48, scope: !1349)
!1737 = !DILocation(line: 310, column: 13, scope: !1349)
!1738 = !DILocation(line: 310, column: 17, scope: !1349)
!1739 = !DILocation(line: 310, column: 28, scope: !1349)
!1740 = !DILocation(line: 310, column: 31, scope: !1349)
!1741 = !DILocation(line: 310, column: 36, scope: !1349)
!1742 = !DILocation(line: 310, column: 41, scope: !1349)
!1743 = !DILocation(line: 313, column: 19, scope: !1356)
!1744 = !DILocation(line: 313, column: 22, scope: !1356)
!1745 = !DILocation(line: 313, column: 27, scope: !1356)
!1746 = !DILocation(line: 313, column: 32, scope: !1356)
!1747 = !DILocation(line: 313, column: 73, scope: !1356)
!1748 = !DILocation(line: 313, column: 77, scope: !1356)
!1749 = !DILocation(line: 313, column: 86, scope: !1356)
!1750 = !DILocation(line: 313, column: 100, scope: !1356)
!1751 = !DILocation(line: 313, column: 103, scope: !1356)
!1752 = !DILocation(line: 313, column: 112, scope: !1356)
!1753 = !DILocation(line: 313, column: 17, scope: !1349)
!1754 = !DILocation(line: 315, column: 23, scope: !1355)
!1755 = !DILocation(line: 315, column: 21, scope: !1355)
!1756 = !DILocation(line: 317, column: 21, scope: !1354)
!1757 = !DILocation(line: 317, column: 28, scope: !1354)
!1758 = !{!1759, !593, i64 0}
!1759 = !{!"kh_bam_store_s", !593, i64 0, !593, i64 4, !593, i64 8, !593, i64 12, !590, i64 16, !590, i64 24, !590, i64 32}
!1760 = !DILocation(line: 317, column: 25, scope: !1354)
!1761 = !DILocation(line: 317, column: 21, scope: !1355)
!1762 = !DILocation(line: 319, column: 27, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 317, column: 44)
!1764 = !DILocation(line: 319, column: 25, scope: !1763)
!1765 = !DILocation(line: 321, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 321, column: 25)
!1767 = !DILocation(line: 321, column: 29, scope: !1766)
!1768 = !DILocation(line: 321, column: 25, scope: !1763)
!1769 = !DILocation(line: 322, column: 52, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 321, column: 34)
!1771 = !DILocation(line: 322, column: 25, scope: !1770)
!1772 = !{!1759, !590, i64 32}
!1773 = !DILocation(line: 322, column: 47, scope: !1770)
!1774 = !DILocation(line: 322, column: 50, scope: !1770)
!1775 = !{!1776, !590, i64 0}
!1776 = !{!"", !590, i64 0}
!1777 = !DILocation(line: 325, column: 29, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 325, column: 29)
!1779 = !DILocation(line: 325, column: 29, scope: !1770)
!1780 = !DILocation(line: 326, column: 56, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 326, column: 33)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 325, column: 54)
!1783 = !DILocation(line: 326, column: 67, scope: !1781)
!1784 = !DILocation(line: 326, column: 51, scope: !1781)
!1785 = !DILocation(line: 326, column: 74, scope: !1781)
!1786 = !DILocation(line: 326, column: 77, scope: !1781)
!1787 = !DILocation(line: 326, column: 82, scope: !1781)
!1788 = !DILocation(line: 326, column: 87, scope: !1781)
!1789 = !DILocation(line: 326, column: 92, scope: !1781)
!1790 = !DILocation(line: 326, column: 95, scope: !1781)
!1791 = !DILocation(line: 326, column: 33, scope: !1781)
!1792 = !DILocation(line: 326, column: 104, scope: !1781)
!1793 = !DILocation(line: 326, column: 33, scope: !1782)
!1794 = !DILocation(line: 327, column: 41, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 326, column: 109)
!1796 = !DILocation(line: 327, column: 33, scope: !1795)
!1797 = !DILocation(line: 328, column: 37, scope: !1795)
!1798 = !DILocation(line: 329, column: 33, scope: !1795)
!1799 = !DILocation(line: 331, column: 33, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 330, column: 36)
!1801 = !DILocation(line: 333, column: 39, scope: !1800)
!1802 = !DILocation(line: 333, column: 37, scope: !1800)
!1803 = !DILocation(line: 335, column: 37, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 335, column: 37)
!1805 = !DILocation(line: 335, column: 44, scope: !1804)
!1806 = !DILocation(line: 335, column: 41, scope: !1804)
!1807 = !DILocation(line: 335, column: 37, scope: !1800)
!1808 = !DILocation(line: 336, column: 37, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 335, column: 60)
!1810 = !DILocation(line: 337, column: 33, scope: !1809)
!1811 = !DILocation(line: 338, column: 45, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 337, column: 40)
!1813 = !DILocation(line: 338, column: 37, scope: !1812)
!1814 = !DILocation(line: 339, column: 41, scope: !1812)
!1815 = !DILocation(line: 340, column: 37, scope: !1812)
!1816 = !DILocation(line: 343, column: 25, scope: !1782)
!1817 = !DILocation(line: 344, column: 21, scope: !1770)
!1818 = !DILocation(line: 344, column: 32, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 344, column: 32)
!1820 = !DILocation(line: 344, column: 36, scope: !1819)
!1821 = !DILocation(line: 344, column: 32, scope: !1766)
!1822 = !DILocation(line: 345, column: 33, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 344, column: 42)
!1824 = !DILocation(line: 345, column: 25, scope: !1823)
!1825 = !DILocation(line: 346, column: 29, scope: !1823)
!1826 = !DILocation(line: 347, column: 25, scope: !1823)
!1827 = !DILocation(line: 349, column: 33, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 348, column: 28)
!1829 = !DILocation(line: 349, column: 25, scope: !1828)
!1830 = !DILocation(line: 350, column: 29, scope: !1828)
!1831 = !DILocation(line: 351, column: 25, scope: !1828)
!1832 = !DILocation(line: 353, column: 17, scope: !1763)
!1833 = !DILocation(line: 355, column: 21, scope: !1353)
!1834 = !DILocation(line: 355, column: 29, scope: !1353)
!1835 = !DILocation(line: 355, column: 34, scope: !1353)
!1836 = !DILocation(line: 357, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 357, column: 25)
!1838 = !DILocation(line: 357, column: 28, scope: !1837)
!1839 = !DILocation(line: 357, column: 33, scope: !1837)
!1840 = !DILocation(line: 357, column: 38, scope: !1837)
!1841 = !DILocation(line: 357, column: 25, scope: !1353)
!1842 = !DILocation(line: 358, column: 30, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 357, column: 52)
!1844 = !DILocation(line: 358, column: 28, scope: !1843)
!1845 = !DILocation(line: 359, column: 30, scope: !1843)
!1846 = !DILocation(line: 359, column: 52, scope: !1843)
!1847 = !DILocation(line: 359, column: 56, scope: !1843)
!1848 = !DILocation(line: 359, column: 28, scope: !1843)
!1849 = !DILocation(line: 360, column: 21, scope: !1843)
!1850 = !DILocation(line: 361, column: 30, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 360, column: 28)
!1852 = !DILocation(line: 361, column: 52, scope: !1851)
!1853 = !DILocation(line: 361, column: 56, scope: !1851)
!1854 = !DILocation(line: 361, column: 28, scope: !1851)
!1855 = !DILocation(line: 362, column: 30, scope: !1851)
!1856 = !DILocation(line: 362, column: 28, scope: !1851)
!1857 = !DILocation(line: 365, column: 36, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 365, column: 25)
!1859 = !DILocation(line: 365, column: 41, scope: !1858)
!1860 = !DILocation(line: 365, column: 44, scope: !1858)
!1861 = !DILocation(line: 365, column: 25, scope: !1858)
!1862 = !DILocation(line: 365, column: 48, scope: !1858)
!1863 = !DILocation(line: 365, column: 25, scope: !1353)
!1864 = !DILocation(line: 366, column: 33, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 365, column: 53)
!1866 = !DILocation(line: 366, column: 25, scope: !1865)
!1867 = !DILocation(line: 367, column: 29, scope: !1865)
!1868 = !DILocation(line: 368, column: 25, scope: !1865)
!1869 = !DILocation(line: 371, column: 36, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 371, column: 25)
!1871 = !DILocation(line: 371, column: 41, scope: !1870)
!1872 = !DILocation(line: 371, column: 44, scope: !1870)
!1873 = !DILocation(line: 371, column: 25, scope: !1870)
!1874 = !DILocation(line: 371, column: 48, scope: !1870)
!1875 = !DILocation(line: 371, column: 25, scope: !1353)
!1876 = !DILocation(line: 372, column: 33, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 371, column: 53)
!1878 = !DILocation(line: 372, column: 25, scope: !1877)
!1879 = !DILocation(line: 373, column: 29, scope: !1877)
!1880 = !DILocation(line: 374, column: 25, scope: !1877)
!1881 = !DILocation(line: 377, column: 21, scope: !1353)
!1882 = !DILocation(line: 380, column: 21, scope: !1353)
!1883 = !DILocation(line: 380, column: 43, scope: !1353)
!1884 = !DILocation(line: 380, column: 47, scope: !1353)
!1885 = !DILocation(line: 380, column: 55, scope: !1353)
!1886 = !DILocation(line: 381, column: 21, scope: !1353)
!1887 = !DILocation(line: 382, column: 17, scope: !1354)
!1888 = !DILocation(line: 383, column: 13, scope: !1355)
!1889 = !DILocation(line: 384, column: 9, scope: !1335)
!1890 = distinct !{!1890, !1716, !1889, !616}
!1891 = !DILocation(line: 386, column: 19, scope: !1363)
!1892 = !DILocation(line: 386, column: 25, scope: !1363)
!1893 = !DILocation(line: 386, column: 14, scope: !1363)
!1894 = !DILocation(line: 386, column: 35, scope: !1362)
!1895 = !DILocation(line: 386, column: 48, scope: !1362)
!1896 = !{!1721, !585, i64 16}
!1897 = !DILocation(line: 386, column: 41, scope: !1362)
!1898 = !DILocation(line: 386, column: 9, scope: !1363)
!1899 = !DILocation(line: 387, column: 17, scope: !1360)
!1900 = !DILocation(line: 387, column: 17, scope: !1361)
!1901 = !DILocation(line: 388, column: 17, scope: !1359)
!1902 = !DILocation(line: 388, column: 25, scope: !1359)
!1903 = !DILocation(line: 388, column: 34, scope: !1359)
!1904 = !DILocation(line: 388, column: 45, scope: !1359)
!1905 = !DILocation(line: 388, column: 29, scope: !1359)
!1906 = !DILocation(line: 388, column: 52, scope: !1359)
!1907 = !DILocation(line: 390, column: 39, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 390, column: 21)
!1909 = !DILocation(line: 390, column: 42, scope: !1908)
!1910 = !DILocation(line: 390, column: 47, scope: !1908)
!1911 = !DILocation(line: 390, column: 52, scope: !1908)
!1912 = !DILocation(line: 390, column: 57, scope: !1908)
!1913 = !DILocation(line: 390, column: 60, scope: !1908)
!1914 = !DILocation(line: 390, column: 21, scope: !1908)
!1915 = !DILocation(line: 390, column: 21, scope: !1359)
!1916 = !DILocation(line: 391, column: 25, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 390, column: 70)
!1918 = !DILocation(line: 392, column: 21, scope: !1917)
!1919 = !DILocation(line: 394, column: 27, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 393, column: 24)
!1921 = !DILocation(line: 394, column: 25, scope: !1920)
!1922 = !DILocation(line: 395, column: 21, scope: !1920)
!1923 = !DILocation(line: 397, column: 13, scope: !1360)
!1924 = !DILocation(line: 397, column: 13, scope: !1359)
!1925 = !DILocation(line: 398, column: 9, scope: !1361)
!1926 = !DILocation(line: 386, column: 59, scope: !1362)
!1927 = !DILocation(line: 386, column: 64, scope: !1362)
!1928 = !DILocation(line: 386, column: 9, scope: !1362)
!1929 = distinct !{!1929, !1898, !1930, !616}
!1930 = !DILocation(line: 398, column: 9, scope: !1363)
!1931 = !DILocation(line: 400, column: 2, scope: !1335)
!1932 = !DILocation(line: 401, column: 13, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 401, column: 13)
!1934 = !DILocation(line: 401, column: 13, scope: !1335)
!1935 = !DILocation(line: 402, column: 22, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 402, column: 13)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 401, column: 18)
!1938 = !DILocation(line: 402, column: 18, scope: !1936)
!1939 = !DILocation(line: 402, column: 42, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 402, column: 13)
!1941 = !DILocation(line: 402, column: 49, scope: !1940)
!1942 = !DILocation(line: 402, column: 46, scope: !1940)
!1943 = !DILocation(line: 402, column: 13, scope: !1936)
!1944 = !DILocation(line: 403, column: 21, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 403, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 402, column: 72)
!1947 = !{!1759, !590, i64 16}
!1948 = !DILocation(line: 403, column: 21, scope: !1946)
!1949 = !DILocation(line: 404, column: 21, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 403, column: 44)
!1951 = !DILocation(line: 405, column: 17, scope: !1950)
!1952 = !DILocation(line: 406, column: 13, scope: !1946)
!1953 = !DILocation(line: 402, column: 65, scope: !1940)
!1954 = !DILocation(line: 402, column: 13, scope: !1940)
!1955 = distinct !{!1955, !1943, !1956, !616}
!1956 = !DILocation(line: 406, column: 13, scope: !1936)
!1957 = !DILocation(line: 408, column: 13, scope: !1937)
!1958 = !DILocation(line: 409, column: 13, scope: !1937)
!1959 = !DILocation(line: 410, column: 13, scope: !1937)
!1960 = !DILocation(line: 412, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 411, column: 16)
!1962 = !DILocation(line: 413, column: 13, scope: !1961)
!1963 = !DILocation(line: 416, column: 5, scope: !1336)
!1964 = !DILocation(line: 416, column: 5, scope: !1335)
!1965 = !DILocation(line: 417, column: 13, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 416, column: 12)
!1967 = !DILocation(line: 417, column: 11, scope: !1966)
!1968 = !DILocation(line: 418, column: 14, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 418, column: 13)
!1970 = !DILocation(line: 418, column: 13, scope: !1966)
!1971 = !DILocation(line: 418, column: 17, scope: !1969)
!1972 = !DILocation(line: 420, column: 9, scope: !1966)
!1973 = !DILocation(line: 420, column: 31, scope: !1966)
!1974 = !DILocation(line: 420, column: 35, scope: !1966)
!1975 = !DILocation(line: 420, column: 38, scope: !1966)
!1976 = !DILocation(line: 420, column: 21, scope: !1966)
!1977 = !DILocation(line: 420, column: 19, scope: !1966)
!1978 = !DILocation(line: 420, column: 42, scope: !1966)
!1979 = !DILocation(line: 421, column: 35, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !2, line: 421, column: 17)
!1981 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 420, column: 48)
!1982 = !DILocation(line: 421, column: 38, scope: !1980)
!1983 = !DILocation(line: 421, column: 43, scope: !1980)
!1984 = !DILocation(line: 421, column: 48, scope: !1980)
!1985 = !DILocation(line: 421, column: 53, scope: !1980)
!1986 = !DILocation(line: 421, column: 56, scope: !1980)
!1987 = !DILocation(line: 421, column: 17, scope: !1980)
!1988 = !DILocation(line: 421, column: 17, scope: !1981)
!1989 = !DILocation(line: 422, column: 30, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 421, column: 66)
!1991 = !DILocation(line: 422, column: 17, scope: !1990)
!1992 = !DILocation(line: 423, column: 17, scope: !1990)
!1993 = distinct !{!1993, !1972, !1994, !616}
!1994 = !DILocation(line: 425, column: 9, scope: !1966)
!1995 = !DILocation(line: 427, column: 22, scope: !1966)
!1996 = !DILocation(line: 427, column: 9, scope: !1966)
!1997 = !DILocation(line: 430, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 430, column: 9)
!1999 = !DILocation(line: 430, column: 11, scope: !1998)
!2000 = !DILocation(line: 430, column: 9, scope: !1291)
!2001 = !DILocation(line: 431, column: 17, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 430, column: 17)
!2003 = !DILocation(line: 431, column: 9, scope: !2002)
!2004 = !DILocation(line: 432, column: 9, scope: !2002)
!2005 = !DILocation(line: 434, column: 12, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 434, column: 5)
!2007 = !DILocation(line: 434, column: 10, scope: !2006)
!2008 = !DILocation(line: 434, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 434, column: 5)
!2010 = !DILocation(line: 434, column: 21, scope: !2009)
!2011 = !DILocation(line: 434, column: 19, scope: !2009)
!2012 = !DILocation(line: 434, column: 5, scope: !2006)
!2013 = !DILocation(line: 436, column: 13, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 434, column: 35)
!2015 = !DILocation(line: 436, column: 11, scope: !2014)
!2016 = !DILocation(line: 437, column: 9, scope: !2014)
!2017 = !DILocation(line: 437, column: 13, scope: !2014)
!2018 = !DILocation(line: 437, column: 16, scope: !2014)
!2019 = !DILocation(line: 438, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 438, column: 13)
!2021 = !DILocation(line: 438, column: 15, scope: !2020)
!2022 = !DILocation(line: 438, column: 13, scope: !2014)
!2023 = !DILocation(line: 439, column: 21, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !2, line: 438, column: 20)
!2025 = !DILocation(line: 439, column: 56, scope: !2024)
!2026 = !DILocation(line: 439, column: 60, scope: !2024)
!2027 = !DILocation(line: 439, column: 13, scope: !2024)
!2028 = !DILocation(line: 440, column: 13, scope: !2024)
!2029 = !DILocation(line: 444, column: 13, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 444, column: 13)
!2031 = !DILocation(line: 444, column: 23, scope: !2030)
!2032 = !DILocation(line: 444, column: 27, scope: !2030)
!2033 = !DILocation(line: 444, column: 21, scope: !2030)
!2034 = !DILocation(line: 444, column: 13, scope: !2014)
!2035 = !DILocation(line: 444, column: 41, scope: !2030)
!2036 = !DILocation(line: 444, column: 45, scope: !2030)
!2037 = !DILocation(line: 444, column: 39, scope: !2030)
!2038 = !DILocation(line: 444, column: 31, scope: !2030)
!2039 = !DILocation(line: 445, column: 5, scope: !2014)
!2040 = !DILocation(line: 434, column: 30, scope: !2009)
!2041 = !DILocation(line: 434, column: 5, scope: !2009)
!2042 = distinct !{!2042, !2012, !2043, !616}
!2043 = !DILocation(line: 445, column: 5, scope: !2006)
!2044 = !DILocation(line: 446, column: 10, scope: !1291)
!2045 = !DILocation(line: 446, column: 5, scope: !1291)
!2046 = !DILocation(line: 447, column: 9, scope: !1291)
!2047 = !DILocation(line: 448, column: 5, scope: !1291)
!2048 = !DILocation(line: 449, column: 8, scope: !1291)
!2049 = !DILocation(line: 452, column: 16, scope: !1291)
!2050 = !DILocation(line: 452, column: 24, scope: !1291)
!2051 = !DILocation(line: 452, column: 9, scope: !1291)
!2052 = !DILocation(line: 452, column: 7, scope: !1291)
!2053 = !DILocation(line: 453, column: 10, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 453, column: 9)
!2055 = !DILocation(line: 453, column: 9, scope: !1291)
!2056 = !DILocation(line: 453, column: 13, scope: !2054)
!2057 = !DILocation(line: 454, column: 12, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 454, column: 5)
!2059 = !DILocation(line: 454, column: 10, scope: !2058)
!2060 = !DILocation(line: 454, column: 17, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 454, column: 5)
!2062 = !DILocation(line: 454, column: 21, scope: !2061)
!2063 = !DILocation(line: 454, column: 19, scope: !2061)
!2064 = !DILocation(line: 454, column: 5, scope: !2058)
!2065 = !DILocation(line: 455, column: 18, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 454, column: 35)
!2067 = !DILocation(line: 455, column: 9, scope: !2066)
!2068 = !DILocation(line: 455, column: 11, scope: !2066)
!2069 = !DILocation(line: 455, column: 14, scope: !2066)
!2070 = !DILocation(line: 455, column: 16, scope: !2066)
!2071 = !DILocation(line: 456, column: 14, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 456, column: 13)
!2073 = !DILocation(line: 456, column: 16, scope: !2072)
!2074 = !DILocation(line: 456, column: 19, scope: !2072)
!2075 = !DILocation(line: 456, column: 13, scope: !2066)
!2076 = !DILocation(line: 456, column: 34, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 456, column: 22)
!2078 = !DILocation(line: 456, column: 32, scope: !2077)
!2079 = !DILocation(line: 456, column: 37, scope: !2077)
!2080 = !DILocation(line: 457, column: 5, scope: !2066)
!2081 = !DILocation(line: 454, column: 30, scope: !2061)
!2082 = !DILocation(line: 454, column: 5, scope: !2061)
!2083 = distinct !{!2083, !2064, !2084, !616}
!2084 = !DILocation(line: 457, column: 5, scope: !2058)
!2085 = !DILocation(line: 459, column: 12, scope: !1368)
!2086 = !DILocation(line: 459, column: 10, scope: !1368)
!2087 = !DILocation(line: 459, column: 17, scope: !1367)
!2088 = !DILocation(line: 459, column: 21, scope: !1367)
!2089 = !DILocation(line: 459, column: 19, scope: !1367)
!2090 = !DILocation(line: 459, column: 5, scope: !1368)
!2091 = !DILocation(line: 460, column: 9, scope: !1366)
!2092 = !DILocation(line: 460, column: 17, scope: !1366)
!2093 = !DILocation(line: 460, column: 21, scope: !1366)
!2094 = !DILocation(line: 460, column: 25, scope: !1366)
!2095 = !DILocation(line: 461, column: 14, scope: !1366)
!2096 = !DILocation(line: 461, column: 12, scope: !1366)
!2097 = !DILocation(line: 462, column: 21, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 462, column: 13)
!2099 = !DILocation(line: 462, column: 18, scope: !2098)
!2100 = !DILocation(line: 462, column: 13, scope: !1366)
!2101 = !DILocation(line: 463, column: 66, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 462, column: 25)
!2103 = !DILocation(line: 463, column: 70, scope: !2102)
!2104 = !DILocation(line: 463, column: 13, scope: !2102)
!2105 = !DILocation(line: 464, column: 13, scope: !2102)
!2106 = !DILocation(line: 466, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 466, column: 13)
!2108 = !DILocation(line: 466, column: 13, scope: !2107)
!2109 = !DILocation(line: 466, column: 13, scope: !1366)
!2110 = !DILocation(line: 466, column: 33, scope: !2107)
!2111 = !DILocation(line: 466, column: 21, scope: !2107)
!2112 = !DILocation(line: 467, column: 38, scope: !1366)
!2113 = !DILocation(line: 467, column: 25, scope: !1366)
!2114 = !DILocation(line: 467, column: 9, scope: !1366)
!2115 = !DILocation(line: 470, column: 16, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 470, column: 9)
!2117 = !DILocation(line: 470, column: 14, scope: !2116)
!2118 = !DILocation(line: 470, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 470, column: 9)
!2120 = !DILocation(line: 470, column: 25, scope: !2119)
!2121 = !DILocation(line: 470, column: 23, scope: !2119)
!2122 = !DILocation(line: 470, column: 9, scope: !2116)
!2123 = !DILocation(line: 471, column: 27, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !2, line: 471, column: 17)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 470, column: 33)
!2126 = !DILocation(line: 471, column: 31, scope: !2124)
!2127 = !DILocation(line: 471, column: 34, scope: !2124)
!2128 = !DILocation(line: 471, column: 36, scope: !2124)
!2129 = !DILocation(line: 471, column: 39, scope: !2124)
!2130 = !DILocation(line: 471, column: 17, scope: !2124)
!2131 = !DILocation(line: 471, column: 42, scope: !2124)
!2132 = !DILocation(line: 471, column: 17, scope: !2125)
!2133 = !DILocation(line: 472, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 471, column: 47)
!2135 = !DILocation(line: 472, column: 57, scope: !2134)
!2136 = !DILocation(line: 472, column: 61, scope: !2134)
!2137 = !DILocation(line: 472, column: 17, scope: !2134)
!2138 = !DILocation(line: 473, column: 17, scope: !2134)
!2139 = !DILocation(line: 475, column: 38, scope: !2125)
!2140 = !DILocation(line: 475, column: 24, scope: !2125)
!2141 = !DILocation(line: 475, column: 13, scope: !2125)
!2142 = !DILocation(line: 475, column: 15, scope: !2125)
!2143 = !DILocation(line: 475, column: 18, scope: !2125)
!2144 = !DILocation(line: 475, column: 22, scope: !2125)
!2145 = !DILocation(line: 476, column: 9, scope: !2125)
!2146 = !DILocation(line: 470, column: 28, scope: !2119)
!2147 = !DILocation(line: 470, column: 9, scope: !2119)
!2148 = distinct !{!2148, !2122, !2149, !616}
!2149 = !DILocation(line: 476, column: 9, scope: !2116)
!2150 = !DILocation(line: 477, column: 9, scope: !1366)
!2151 = !DILocation(line: 478, column: 16, scope: !1366)
!2152 = !DILocation(line: 478, column: 20, scope: !1366)
!2153 = !DILocation(line: 478, column: 9, scope: !1366)
!2154 = !DILocation(line: 479, column: 14, scope: !1366)
!2155 = !DILocation(line: 479, column: 18, scope: !1366)
!2156 = !DILocation(line: 479, column: 9, scope: !1366)
!2157 = !DILocation(line: 480, column: 9, scope: !1366)
!2158 = !DILocation(line: 480, column: 13, scope: !1366)
!2159 = !DILocation(line: 480, column: 16, scope: !1366)
!2160 = !DILocation(line: 482, column: 9, scope: !1366)
!2161 = !DILocation(line: 485, column: 16, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 485, column: 9)
!2163 = !DILocation(line: 485, column: 14, scope: !2162)
!2164 = !DILocation(line: 485, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 485, column: 9)
!2166 = !DILocation(line: 485, column: 25, scope: !2165)
!2167 = !DILocation(line: 485, column: 23, scope: !2165)
!2168 = !DILocation(line: 485, column: 9, scope: !2162)
!2169 = !DILocation(line: 486, column: 28, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 486, column: 17)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 485, column: 33)
!2172 = !DILocation(line: 486, column: 33, scope: !2170)
!2173 = !DILocation(line: 486, column: 36, scope: !2170)
!2174 = !DILocation(line: 486, column: 38, scope: !2170)
!2175 = !DILocation(line: 486, column: 41, scope: !2170)
!2176 = !DILocation(line: 486, column: 17, scope: !2170)
!2177 = !DILocation(line: 486, column: 44, scope: !2170)
!2178 = !DILocation(line: 486, column: 17, scope: !2171)
!2179 = !DILocation(line: 487, column: 17, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 486, column: 49)
!2181 = !DILocation(line: 488, column: 17, scope: !2180)
!2182 = !DILocation(line: 490, column: 9, scope: !2171)
!2183 = !DILocation(line: 485, column: 28, scope: !2165)
!2184 = !DILocation(line: 485, column: 9, scope: !2165)
!2185 = distinct !{!2185, !2168, !2186, !616}
!2186 = !DILocation(line: 490, column: 9, scope: !2162)
!2187 = !DILocation(line: 491, column: 5, scope: !1367)
!2188 = !DILocation(line: 491, column: 5, scope: !1366)
!2189 = !DILocation(line: 459, column: 30, scope: !1367)
!2190 = !DILocation(line: 459, column: 5, scope: !1367)
!2191 = distinct !{!2191, !2090, !2192, !616}
!2192 = !DILocation(line: 491, column: 5, scope: !1368)
!2193 = !DILocation(line: 493, column: 21, scope: !1291)
!2194 = !DILocation(line: 493, column: 5, scope: !1291)
!2195 = !DILocation(line: 494, column: 12, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 494, column: 5)
!2197 = !DILocation(line: 494, column: 10, scope: !2196)
!2198 = !DILocation(line: 494, column: 17, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 494, column: 5)
!2200 = !DILocation(line: 494, column: 21, scope: !2199)
!2201 = !DILocation(line: 494, column: 19, scope: !2199)
!2202 = !DILocation(line: 494, column: 5, scope: !2196)
!2203 = !DILocation(line: 494, column: 48, scope: !2199)
!2204 = !DILocation(line: 494, column: 50, scope: !2199)
!2205 = !DILocation(line: 494, column: 53, scope: !2199)
!2206 = !DILocation(line: 494, column: 35, scope: !2199)
!2207 = !DILocation(line: 494, column: 30, scope: !2199)
!2208 = !DILocation(line: 494, column: 5, scope: !2199)
!2209 = distinct !{!2209, !2202, !2210, !616}
!2210 = !DILocation(line: 494, column: 54, scope: !2196)
!2211 = !DILocation(line: 495, column: 10, scope: !1291)
!2212 = !DILocation(line: 495, column: 5, scope: !1291)
!2213 = !DILocation(line: 495, column: 19, scope: !1291)
!2214 = !DILocation(line: 495, column: 14, scope: !1291)
!2215 = !DILocation(line: 495, column: 30, scope: !1291)
!2216 = !DILocation(line: 495, column: 25, scope: !1291)
!2217 = !DILocation(line: 496, column: 26, scope: !1291)
!2218 = !DILocation(line: 496, column: 5, scope: !1291)
!2219 = !DILocation(line: 497, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 497, column: 9)
!2221 = !DILocation(line: 497, column: 24, scope: !2220)
!2222 = !DILocation(line: 497, column: 9, scope: !1291)
!2223 = !DILocation(line: 498, column: 17, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 497, column: 29)
!2225 = !DILocation(line: 498, column: 9, scope: !2224)
!2226 = !DILocation(line: 499, column: 9, scope: !2224)
!2227 = !DILocation(line: 502, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 502, column: 9)
!2229 = !DILocation(line: 502, column: 9, scope: !2228)
!2230 = !DILocation(line: 502, column: 9, scope: !1291)
!2231 = !DILocation(line: 502, column: 37, scope: !2228)
!2232 = !DILocation(line: 502, column: 17, scope: !2228)
!2233 = !DILocation(line: 503, column: 5, scope: !1291)
!2234 = !DILocation(line: 505, column: 2, scope: !1291)
!2235 = !DILocation(line: 506, column: 13, scope: !1291)
!2236 = !DILocation(line: 506, column: 5, scope: !1291)
!2237 = !DILocation(line: 508, column: 2, scope: !1291)
!2238 = !DILocation(line: 509, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 509, column: 9)
!2240 = !DILocation(line: 509, column: 9, scope: !1291)
!2241 = !DILocation(line: 509, column: 13, scope: !2239)
!2242 = !DILocation(line: 510, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 510, column: 9)
!2244 = !DILocation(line: 510, column: 9, scope: !1291)
!2245 = !DILocation(line: 510, column: 14, scope: !2243)
!2246 = !DILocation(line: 511, column: 9, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 511, column: 9)
!2248 = !DILocation(line: 511, column: 9, scope: !1291)
!2249 = !DILocation(line: 511, column: 28, scope: !2247)
!2250 = !DILocation(line: 511, column: 12, scope: !2247)
!2251 = !DILocation(line: 512, column: 12, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 512, column: 5)
!2253 = !DILocation(line: 512, column: 10, scope: !2252)
!2254 = !DILocation(line: 512, column: 17, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 512, column: 5)
!2256 = !DILocation(line: 512, column: 21, scope: !2255)
!2257 = !DILocation(line: 512, column: 19, scope: !2255)
!2258 = !DILocation(line: 512, column: 5, scope: !2252)
!2259 = !DILocation(line: 513, column: 13, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 513, column: 13)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 512, column: 35)
!2262 = !DILocation(line: 513, column: 13, scope: !2261)
!2263 = !DILocation(line: 513, column: 23, scope: !2260)
!2264 = !DILocation(line: 513, column: 27, scope: !2260)
!2265 = !DILocation(line: 513, column: 18, scope: !2260)
!2266 = !DILocation(line: 514, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 514, column: 13)
!2268 = !DILocation(line: 514, column: 17, scope: !2267)
!2269 = !DILocation(line: 514, column: 20, scope: !2267)
!2270 = !DILocation(line: 514, column: 24, scope: !2267)
!2271 = !DILocation(line: 514, column: 13, scope: !2261)
!2272 = !DILocation(line: 514, column: 28, scope: !2267)
!2273 = !DILocation(line: 515, column: 5, scope: !2261)
!2274 = !DILocation(line: 512, column: 30, scope: !2255)
!2275 = !DILocation(line: 512, column: 5, scope: !2255)
!2276 = distinct !{!2276, !2258, !2277, !616}
!2277 = !DILocation(line: 515, column: 5, scope: !2252)
!2278 = !DILocation(line: 516, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 516, column: 9)
!2280 = !DILocation(line: 516, column: 9, scope: !1291)
!2281 = !DILocation(line: 517, column: 16, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 517, column: 9)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 516, column: 12)
!2284 = !DILocation(line: 517, column: 14, scope: !2282)
!2285 = !DILocation(line: 517, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 517, column: 9)
!2287 = !DILocation(line: 517, column: 25, scope: !2286)
!2288 = !DILocation(line: 517, column: 23, scope: !2286)
!2289 = !DILocation(line: 517, column: 9, scope: !2282)
!2290 = !DILocation(line: 517, column: 52, scope: !2286)
!2291 = !DILocation(line: 517, column: 54, scope: !2286)
!2292 = !DILocation(line: 517, column: 57, scope: !2286)
!2293 = !DILocation(line: 517, column: 39, scope: !2286)
!2294 = !DILocation(line: 517, column: 34, scope: !2286)
!2295 = !DILocation(line: 517, column: 9, scope: !2286)
!2296 = distinct !{!2296, !2289, !2297, !616}
!2297 = !DILocation(line: 517, column: 58, scope: !2282)
!2298 = !DILocation(line: 518, column: 14, scope: !2283)
!2299 = !DILocation(line: 518, column: 9, scope: !2283)
!2300 = !DILocation(line: 519, column: 5, scope: !2283)
!2301 = !DILocation(line: 520, column: 10, scope: !1291)
!2302 = !DILocation(line: 520, column: 5, scope: !1291)
!2303 = !DILocation(line: 521, column: 10, scope: !1291)
!2304 = !DILocation(line: 521, column: 5, scope: !1291)
!2305 = !DILocation(line: 522, column: 10, scope: !1291)
!2306 = !DILocation(line: 522, column: 5, scope: !1291)
!2307 = !DILocation(line: 523, column: 11, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 523, column: 9)
!2309 = !DILocation(line: 523, column: 9, scope: !2308)
!2310 = !DILocation(line: 523, column: 9, scope: !1291)
!2311 = !DILocation(line: 523, column: 37, scope: !2308)
!2312 = !DILocation(line: 523, column: 17, scope: !2308)
!2313 = !DILocation(line: 524, column: 26, scope: !1291)
!2314 = !DILocation(line: 524, column: 5, scope: !1291)
!2315 = !DILocation(line: 525, column: 5, scope: !1291)
!2316 = !DILocation(line: 526, column: 1, scope: !1291)
!2317 = !DISubprogram(name: "strcmp", scope: !2318, file: !2318, line: 156, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2318 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!17, !229, !229}
!2321 = !DISubprogram(name: "strtol", scope: !647, file: !647, line: 177, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!129, !1034, !2324, !17}
!2324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!2325 = !DISubprogram(name: "sam_global_opt_help", scope: !522, file: !522, line: 98, type: !2326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !1215, !229}
!2328 = !DISubprogram(name: "hts_tpool_init", scope: !2329, file: !2329, line: 108, type: !2330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2329 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/thread_pool.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "bbb7040a24c840896ca155533fbc1a30")
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!2332, !17}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_tpool", file: !2329, line: 85, baseType: !1329)
!2334 = !DISubprogram(name: "print_error_errno", scope: !1288, file: !1288, line: 36, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2335 = !DISubprogram(name: "hts_open_format", scope: !23, file: !23, line: 592, type: !2336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!2338, !229, !229, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2341 = !DISubprogram(name: "hts_set_opt", scope: !23, file: !23, line: 634, type: !2342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!17, !2338, !66, null}
!2344 = !DISubprogram(name: "sam_hdr_read", scope: !116, file: !116, line: 421, type: !2345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!1317, !173}
!2347 = !DISubprogram(name: "sam_hdr_update_line", scope: !116, file: !116, line: 592, type: !2348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!17, !1317, !229, !229, !229, null}
!2350 = !DISubprogram(name: "sam_hdr_add_line", scope: !116, file: !116, line: 491, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!17, !1317, !229, null}
!2353 = !DISubprogram(name: "strlen", scope: !2318, file: !2318, line: 407, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!155, !229}
!2356 = !DISubprogram(name: "sprintf", scope: !1027, file: !1027, line: 358, type: !2357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!17, !1033, !1034, null}
!2359 = !DISubprogram(name: "calloc", scope: !647, file: !647, line: 543, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!169, !161, !161}
!2362 = !DISubprogram(name: "hts_format_file_extension", scope: !23, file: !23, line: 624, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!229, !2339}
!2365 = !DISubprogram(name: "sam_open_mode", scope: !116, file: !116, line: 1376, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!17, !19, !229, !229}
!2368 = !DISubprogram(name: "sam_hdr_add_pg", scope: !116, file: !116, line: 802, type: !2351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2369 = !DISubprogram(name: "samtools_version", scope: !1288, file: !1288, line: 31, type: !2370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!229}
!2372 = !DISubprogram(name: "sam_hdr_write", scope: !116, file: !116, line: 430, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!17, !173, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!2377 = !DISubprogram(name: "hts_open", scope: !23, file: !23, line: 575, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2338, !229, !229}
!2380 = !DISubprogram(name: "__errno_location", scope: !2381, file: !2381, line: 37, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2381 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!538}
!2384 = distinct !DISubprogram(name: "kh_init_bam_store", scope: !2, file: !2, line: 103, type: !2385, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!261}
!2387 = !DILocation(line: 103, column: 1, scope: !2384)
!2388 = distinct !DISubprogram(name: "create_bam_list", scope: !2, file: !2, line: 128, type: !2389, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2392)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!17, !2391, !161}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "list", arg: 1, scope: !2388, file: !2, line: 128, type: !2391)
!2394 = !DILocalVariable(name: "max_size", arg: 2, scope: !2388, file: !2, line: 128, type: !161)
!2395 = !DILocalVariable(name: "i", scope: !2388, file: !2, line: 129, type: !161)
!2396 = !DILocation(line: 128, column: 40, scope: !2388)
!2397 = !DILocation(line: 128, column: 53, scope: !2388)
!2398 = !DILocation(line: 129, column: 5, scope: !2388)
!2399 = !DILocation(line: 129, column: 12, scope: !2388)
!2400 = !DILocation(line: 131, column: 18, scope: !2388)
!2401 = !DILocation(line: 131, column: 24, scope: !2388)
!2402 = !DILocation(line: 131, column: 30, scope: !2388)
!2403 = !DILocation(line: 131, column: 5, scope: !2388)
!2404 = !DILocation(line: 131, column: 11, scope: !2388)
!2405 = !DILocation(line: 131, column: 16, scope: !2388)
!2406 = !DILocation(line: 132, column: 5, scope: !2388)
!2407 = !DILocation(line: 132, column: 11, scope: !2388)
!2408 = !DILocation(line: 132, column: 20, scope: !2388)
!2409 = !DILocation(line: 133, column: 5, scope: !2388)
!2410 = !DILocation(line: 133, column: 11, scope: !2388)
!2411 = !DILocation(line: 133, column: 20, scope: !2388)
!2412 = !{!1721, !590, i64 0}
!2413 = !DILocation(line: 135, column: 31, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 135, column: 9)
!2415 = !DILocation(line: 135, column: 40, scope: !2414)
!2416 = !DILocation(line: 135, column: 24, scope: !2414)
!2417 = !DILocation(line: 135, column: 10, scope: !2414)
!2418 = !DILocation(line: 135, column: 16, scope: !2414)
!2419 = !DILocation(line: 135, column: 22, scope: !2414)
!2420 = !DILocation(line: 135, column: 63, scope: !2414)
!2421 = !DILocation(line: 135, column: 9, scope: !2388)
!2422 = !DILocation(line: 136, column: 9, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 135, column: 72)
!2424 = !DILocation(line: 139, column: 34, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 139, column: 9)
!2426 = !DILocation(line: 139, column: 27, scope: !2425)
!2427 = !DILocation(line: 139, column: 10, scope: !2425)
!2428 = !DILocation(line: 139, column: 16, scope: !2425)
!2429 = !DILocation(line: 139, column: 25, scope: !2425)
!2430 = !DILocation(line: 139, column: 61, scope: !2425)
!2431 = !DILocation(line: 139, column: 9, scope: !2388)
!2432 = !DILocation(line: 140, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2425, file: !2, line: 139, column: 70)
!2434 = !DILocation(line: 143, column: 12, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 143, column: 5)
!2436 = !DILocation(line: 143, column: 10, scope: !2435)
!2437 = !DILocation(line: 143, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !2, line: 143, column: 5)
!2439 = !DILocation(line: 143, column: 21, scope: !2438)
!2440 = !DILocation(line: 143, column: 19, scope: !2438)
!2441 = !DILocation(line: 143, column: 5, scope: !2435)
!2442 = !DILocation(line: 144, column: 29, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 143, column: 36)
!2444 = !DILocation(line: 144, column: 35, scope: !2443)
!2445 = !DILocation(line: 144, column: 44, scope: !2443)
!2446 = !DILocation(line: 144, column: 9, scope: !2443)
!2447 = !DILocation(line: 144, column: 15, scope: !2443)
!2448 = !DILocation(line: 144, column: 21, scope: !2443)
!2449 = !DILocation(line: 144, column: 24, scope: !2443)
!2450 = !DILocation(line: 144, column: 26, scope: !2443)
!2451 = !DILocation(line: 145, column: 9, scope: !2443)
!2452 = !DILocation(line: 145, column: 15, scope: !2443)
!2453 = !DILocation(line: 145, column: 21, scope: !2443)
!2454 = !DILocation(line: 145, column: 24, scope: !2443)
!2455 = !DILocation(line: 145, column: 32, scope: !2443)
!2456 = !DILocation(line: 146, column: 5, scope: !2443)
!2457 = !DILocation(line: 143, column: 32, scope: !2438)
!2458 = !DILocation(line: 143, column: 5, scope: !2438)
!2459 = distinct !{!2459, !2441, !2460, !616}
!2460 = !DILocation(line: 146, column: 5, scope: !2435)
!2461 = !DILocation(line: 148, column: 19, scope: !2388)
!2462 = !DILocation(line: 148, column: 5, scope: !2388)
!2463 = !DILocation(line: 148, column: 11, scope: !2388)
!2464 = !DILocation(line: 148, column: 17, scope: !2388)
!2465 = !DILocation(line: 149, column: 5, scope: !2388)
!2466 = !DILocation(line: 149, column: 11, scope: !2388)
!2467 = !DILocation(line: 149, column: 17, scope: !2388)
!2468 = !DILocation(line: 151, column: 5, scope: !2388)
!2469 = !DILocation(line: 152, column: 1, scope: !2388)
!2470 = !DISubprogram(name: "sam_read1", scope: !116, file: !116, line: 1401, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!17, !173, !1317, !114}
!2473 = distinct !DISubprogram(name: "kh_get_bam_store", scope: !2, file: !2, line: 103, type: !2474, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2478)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!258, !2476, !273}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!2478 = !{!2479, !2480, !2481, !2484, !2485, !2486, !2487}
!2479 = !DILocalVariable(name: "h", arg: 1, scope: !2473, file: !2, line: 103, type: !2476)
!2480 = !DILocalVariable(name: "key", arg: 2, scope: !2473, file: !2, line: 103, type: !273)
!2481 = !DILocalVariable(name: "k", scope: !2482, file: !2, line: 103, type: !258)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !2, line: 103, column: 1)
!2483 = distinct !DILexicalBlock(scope: !2473, file: !2, line: 103, column: 1)
!2484 = !DILocalVariable(name: "i", scope: !2482, file: !2, line: 103, type: !258)
!2485 = !DILocalVariable(name: "last", scope: !2482, file: !2, line: 103, type: !258)
!2486 = !DILocalVariable(name: "mask", scope: !2482, file: !2, line: 103, type: !258)
!2487 = !DILocalVariable(name: "step", scope: !2482, file: !2, line: 103, type: !258)
!2488 = !DILocation(line: 103, column: 1, scope: !2473)
!2489 = !DILocation(line: 103, column: 1, scope: !2483)
!2490 = !DILocation(line: 103, column: 1, scope: !2482)
!2491 = !{!1759, !590, i64 24}
!2492 = !DILocation(line: 0, scope: !2482)
!2493 = !DILocation(line: 103, column: 1, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 103, column: 1)
!2495 = !DILocation(line: 103, column: 1, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 103, column: 1)
!2497 = distinct !{!2497, !2490, !2490, !616}
!2498 = distinct !DISubprogram(name: "kh_put_bam_store", scope: !2, file: !2, line: 103, type: !2499, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!258, !261, !273, !538}
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2508, !2509, !2510, !2511, !2512}
!2502 = !DILocalVariable(name: "h", arg: 1, scope: !2498, file: !2, line: 103, type: !261)
!2503 = !DILocalVariable(name: "key", arg: 2, scope: !2498, file: !2, line: 103, type: !273)
!2504 = !DILocalVariable(name: "ret", arg: 3, scope: !2498, file: !2, line: 103, type: !538)
!2505 = !DILocalVariable(name: "x", scope: !2498, file: !2, line: 103, type: !258)
!2506 = !DILocalVariable(name: "k", scope: !2507, file: !2, line: 103, type: !258)
!2507 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 103, column: 1)
!2508 = !DILocalVariable(name: "i", scope: !2507, file: !2, line: 103, type: !258)
!2509 = !DILocalVariable(name: "site", scope: !2507, file: !2, line: 103, type: !258)
!2510 = !DILocalVariable(name: "last", scope: !2507, file: !2, line: 103, type: !258)
!2511 = !DILocalVariable(name: "mask", scope: !2507, file: !2, line: 103, type: !258)
!2512 = !DILocalVariable(name: "step", scope: !2507, file: !2, line: 103, type: !258)
!2513 = !DILocation(line: 103, column: 1, scope: !2498)
!2514 = !DILocation(line: 103, column: 1, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 103, column: 1)
!2516 = !{!1759, !593, i64 8}
!2517 = !{!1759, !593, i64 12}
!2518 = !DILocation(line: 103, column: 1, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 103, column: 1)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 103, column: 1)
!2521 = !{!1759, !593, i64 4}
!2522 = !DILocation(line: 103, column: 1, scope: !2520)
!2523 = !DILocation(line: 103, column: 1, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 103, column: 1)
!2525 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 103, column: 1)
!2526 = !DILocation(line: 103, column: 1, scope: !2525)
!2527 = !DILocation(line: 103, column: 1, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 103, column: 1)
!2529 = !DILocation(line: 103, column: 1, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 103, column: 1)
!2531 = !DILocation(line: 103, column: 1, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 103, column: 1)
!2533 = !DILocation(line: 103, column: 1, scope: !2507)
!2534 = !DILocation(line: 103, column: 1, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 103, column: 1)
!2536 = !DILocation(line: 103, column: 1, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 103, column: 1)
!2538 = !DILocation(line: 0, scope: !2537)
!2539 = !DILocation(line: 103, column: 1, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 103, column: 1)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 103, column: 1)
!2542 = !DILocation(line: 103, column: 1, scope: !2541)
!2543 = !DILocation(line: 103, column: 1, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 103, column: 1)
!2545 = !DILocation(line: 103, column: 1, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2544, file: !2, line: 103, column: 1)
!2547 = distinct !{!2547, !2536, !2536, !616}
!2548 = !DILocation(line: 103, column: 1, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 103, column: 1)
!2550 = !DILocation(line: 103, column: 1, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 103, column: 1)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !2, line: 103, column: 1)
!2553 = !DILocation(line: 103, column: 1, scope: !2552)
!2554 = !DILocation(line: 103, column: 1, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 103, column: 1)
!2556 = !DILocation(line: 103, column: 1, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 103, column: 1)
!2558 = !DILocation(line: 103, column: 1, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 103, column: 1)
!2560 = !DILocation(line: 103, column: 1, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !2, line: 103, column: 1)
!2562 = distinct !DISubprogram(name: "store_bam", scope: !2, file: !2, line: 106, type: !2563, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!280, !2391}
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "list", arg: 1, scope: !2562, file: !2, line: 106, type: !2391)
!2567 = !DILocalVariable(name: "old_index", scope: !2562, file: !2, line: 107, type: !161)
!2568 = !DILocation(line: 106, column: 42, scope: !2562)
!2569 = !DILocation(line: 107, column: 5, scope: !2562)
!2570 = !DILocation(line: 107, column: 12, scope: !2562)
!2571 = !DILocation(line: 107, column: 24, scope: !2562)
!2572 = !DILocation(line: 107, column: 30, scope: !2562)
!2573 = !DILocation(line: 109, column: 5, scope: !2562)
!2574 = !DILocation(line: 109, column: 11, scope: !2562)
!2575 = !DILocation(line: 109, column: 17, scope: !2562)
!2576 = !DILocation(line: 109, column: 23, scope: !2562)
!2577 = !DILocation(line: 109, column: 28, scope: !2562)
!2578 = !DILocation(line: 109, column: 32, scope: !2562)
!2579 = !DILocation(line: 109, column: 40, scope: !2562)
!2580 = !DILocation(line: 111, column: 9, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2562, file: !2, line: 111, column: 9)
!2582 = !DILocation(line: 111, column: 15, scope: !2581)
!2583 = !DILocation(line: 111, column: 24, scope: !2581)
!2584 = !DILocation(line: 111, column: 30, scope: !2581)
!2585 = !DILocation(line: 111, column: 21, scope: !2581)
!2586 = !DILocation(line: 111, column: 9, scope: !2562)
!2587 = !DILocation(line: 112, column: 9, scope: !2581)
!2588 = !DILocation(line: 112, column: 15, scope: !2581)
!2589 = !DILocation(line: 112, column: 21, scope: !2581)
!2590 = !DILocation(line: 114, column: 13, scope: !2562)
!2591 = !DILocation(line: 114, column: 19, scope: !2562)
!2592 = !DILocation(line: 114, column: 25, scope: !2562)
!2593 = !DILocation(line: 115, column: 1, scope: !2562)
!2594 = !DILocation(line: 114, column: 5, scope: !2562)
!2595 = distinct !DISubprogram(name: "write_bam_needed", scope: !2, file: !2, line: 118, type: !2596, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!17, !2391}
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "list", arg: 1, scope: !2595, file: !2, line: 118, type: !2391)
!2600 = !DILocation(line: 118, column: 41, scope: !2595)
!2601 = !DILocation(line: 119, column: 13, scope: !2595)
!2602 = !DILocation(line: 119, column: 19, scope: !2595)
!2603 = !DILocation(line: 119, column: 25, scope: !2595)
!2604 = !DILocation(line: 119, column: 31, scope: !2595)
!2605 = !DILocation(line: 119, column: 38, scope: !2595)
!2606 = !DILocation(line: 119, column: 12, scope: !2595)
!2607 = !DILocation(line: 119, column: 5, scope: !2595)
!2608 = distinct !DISubprogram(name: "write_to_bin_file", scope: !2, file: !2, line: 167, type: !2609, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!17, !114, !257, !172, !18, !1317, !17}
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2612 = !DILocalVariable(name: "bam", arg: 1, scope: !2608, file: !2, line: 167, type: !114)
!2613 = !DILocalVariable(name: "count", arg: 2, scope: !2608, file: !2, line: 167, type: !257)
!2614 = !DILocalVariable(name: "bin_files", arg: 3, scope: !2608, file: !2, line: 167, type: !172)
!2615 = !DILocalVariable(name: "names", arg: 4, scope: !2608, file: !2, line: 167, type: !18)
!2616 = !DILocalVariable(name: "header", arg: 5, scope: !2608, file: !2, line: 167, type: !1317)
!2617 = !DILocalVariable(name: "files", arg: 6, scope: !2608, file: !2, line: 167, type: !17)
!2618 = !DILocalVariable(name: "x", scope: !2608, file: !2, line: 168, type: !146)
!2619 = !DILocation(line: 167, column: 45, scope: !2608)
!2620 = !DILocation(line: 167, column: 59, scope: !2608)
!2621 = !DILocation(line: 167, column: 76, scope: !2608)
!2622 = !DILocation(line: 167, column: 94, scope: !2608)
!2623 = !DILocation(line: 167, column: 112, scope: !2608)
!2624 = !DILocation(line: 167, column: 124, scope: !2608)
!2625 = !DILocation(line: 168, column: 5, scope: !2608)
!2626 = !DILocation(line: 168, column: 14, scope: !2608)
!2627 = !DILocation(line: 170, column: 23, scope: !2608)
!2628 = !DILocation(line: 170, column: 9, scope: !2608)
!2629 = !DILocation(line: 170, column: 45, scope: !2608)
!2630 = !DILocation(line: 170, column: 43, scope: !2608)
!2631 = !DILocation(line: 170, column: 7, scope: !2608)
!2632 = !DILocation(line: 172, column: 20, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2608, file: !2, line: 172, column: 9)
!2634 = !DILocation(line: 172, column: 30, scope: !2633)
!2635 = !DILocation(line: 172, column: 34, scope: !2633)
!2636 = !DILocation(line: 172, column: 42, scope: !2633)
!2637 = !DILocation(line: 172, column: 9, scope: !2633)
!2638 = !DILocation(line: 172, column: 47, scope: !2633)
!2639 = !DILocation(line: 172, column: 9, scope: !2608)
!2640 = !DILocation(line: 173, column: 84, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 172, column: 52)
!2642 = !DILocation(line: 173, column: 90, scope: !2641)
!2643 = !DILocation(line: 173, column: 9, scope: !2641)
!2644 = !DILocation(line: 174, column: 9, scope: !2641)
!2645 = !DILocation(line: 177, column: 7, scope: !2608)
!2646 = !DILocation(line: 177, column: 13, scope: !2608)
!2647 = !DILocation(line: 177, column: 5, scope: !2608)
!2648 = !DILocation(line: 179, column: 5, scope: !2608)
!2649 = !DILocation(line: 180, column: 1, scope: !2608)
!2650 = distinct !DISubprogram(name: "mark_bam_as_written", scope: !2, file: !2, line: 123, type: !2651, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2391}
!2653 = !{!2654}
!2654 = !DILocalVariable(name: "list", arg: 1, scope: !2650, file: !2, line: 123, type: !2391)
!2655 = !DILocation(line: 123, column: 45, scope: !2650)
!2656 = !DILocation(line: 124, column: 5, scope: !2650)
!2657 = !DILocation(line: 124, column: 11, scope: !2650)
!2658 = !DILocation(line: 124, column: 17, scope: !2650)
!2659 = !DILocation(line: 124, column: 23, scope: !2650)
!2660 = !DILocation(line: 124, column: 30, scope: !2650)
!2661 = !DILocation(line: 124, column: 38, scope: !2650)
!2662 = !DILocation(line: 125, column: 1, scope: !2650)
!2663 = distinct !DISubprogram(name: "kh_del_bam_store", scope: !2, file: !2, line: 103, type: !2664, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !261, !258}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "h", arg: 1, scope: !2663, file: !2, line: 103, type: !261)
!2668 = !DILocalVariable(name: "x", arg: 2, scope: !2663, file: !2, line: 103, type: !258)
!2669 = !DILocation(line: 103, column: 1, scope: !2663)
!2670 = !DILocation(line: 103, column: 1, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2663, file: !2, line: 103, column: 1)
!2672 = !DILocation(line: 103, column: 1, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 103, column: 1)
!2674 = !DISubprogram(name: "sam_write1", scope: !116, file: !116, line: 1409, type: !2675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!17, !173, !2375, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!2679 = distinct !DISubprogram(name: "kh_destroy_bam_store", scope: !2, file: !2, line: 103, type: !2680, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !261}
!2682 = !{!2683}
!2683 = !DILocalVariable(name: "h", arg: 1, scope: !2679, file: !2, line: 103, type: !261)
!2684 = !DILocation(line: 103, column: 1, scope: !2679)
!2685 = !DILocation(line: 103, column: 1, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2679, file: !2, line: 103, column: 1)
!2687 = !DILocation(line: 103, column: 1, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2686, file: !2, line: 103, column: 1)
!2689 = distinct !DISubprogram(name: "destroy_bam_list", scope: !2, file: !2, line: 155, type: !2651, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2690)
!2690 = !{!2691, !2692}
!2691 = !DILocalVariable(name: "list", arg: 1, scope: !2689, file: !2, line: 155, type: !2391)
!2692 = !DILocalVariable(name: "i", scope: !2689, file: !2, line: 156, type: !161)
!2693 = !DILocation(line: 155, column: 42, scope: !2689)
!2694 = !DILocation(line: 156, column: 5, scope: !2689)
!2695 = !DILocation(line: 156, column: 12, scope: !2689)
!2696 = !DILocation(line: 158, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 158, column: 5)
!2698 = !DILocation(line: 158, column: 10, scope: !2697)
!2699 = !DILocation(line: 158, column: 17, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !2, line: 158, column: 5)
!2701 = !DILocation(line: 158, column: 21, scope: !2700)
!2702 = !DILocation(line: 158, column: 27, scope: !2700)
!2703 = !DILocation(line: 158, column: 19, scope: !2700)
!2704 = !DILocation(line: 158, column: 5, scope: !2697)
!2705 = !DILocation(line: 159, column: 14, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 158, column: 38)
!2707 = !DILocation(line: 159, column: 20, scope: !2706)
!2708 = !DILocation(line: 159, column: 29, scope: !2706)
!2709 = !DILocation(line: 159, column: 32, scope: !2706)
!2710 = !DILocation(line: 159, column: 9, scope: !2706)
!2711 = !DILocation(line: 160, column: 5, scope: !2706)
!2712 = !DILocation(line: 158, column: 34, scope: !2700)
!2713 = !DILocation(line: 158, column: 5, scope: !2700)
!2714 = distinct !{!2714, !2704, !2715, !616}
!2715 = !DILocation(line: 160, column: 5, scope: !2697)
!2716 = !DILocation(line: 162, column: 10, scope: !2689)
!2717 = !DILocation(line: 162, column: 16, scope: !2689)
!2718 = !DILocation(line: 162, column: 5, scope: !2689)
!2719 = !DILocation(line: 163, column: 10, scope: !2689)
!2720 = !DILocation(line: 163, column: 16, scope: !2689)
!2721 = !DILocation(line: 163, column: 5, scope: !2689)
!2722 = !DILocation(line: 164, column: 1, scope: !2689)
!2723 = !DISubprogram(name: "bam_init1", scope: !116, file: !116, line: 847, type: !2724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!114}
!2726 = !DISubprogram(name: "bam_destroy1", scope: !116, file: !116, line: 858, type: !2727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !114}
!2729 = !DISubprogram(name: "hts_close", scope: !23, file: !23, line: 608, type: !2730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!17, !2338}
!2732 = !DISubprogram(name: "sam_hdr_destroy", scope: !116, file: !116, line: 377, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{null, !1317}
!2735 = distinct !DISubprogram(name: "hash_X31_Wang", scope: !2, file: !2, line: 59, type: !2736, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!24, !229}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "s", arg: 1, scope: !2735, file: !2, line: 59, type: !229)
!2740 = !DILocalVariable(name: "h", scope: !2735, file: !2, line: 61, type: !24)
!2741 = !DILocation(line: 59, column: 50, scope: !2735)
!2742 = !DILocation(line: 61, column: 5, scope: !2735)
!2743 = !DILocation(line: 61, column: 14, scope: !2735)
!2744 = !DILocation(line: 61, column: 19, scope: !2735)
!2745 = !DILocation(line: 61, column: 18, scope: !2735)
!2746 = !DILocation(line: 62, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 62, column: 9)
!2748 = !DILocation(line: 62, column: 9, scope: !2735)
!2749 = !DILocation(line: 63, column: 14, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !2, line: 63, column: 9)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 62, column: 12)
!2752 = !DILocation(line: 63, column: 21, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 63, column: 9)
!2754 = !DILocation(line: 63, column: 20, scope: !2753)
!2755 = !DILocation(line: 63, column: 9, scope: !2750)
!2756 = !DILocation(line: 63, column: 34, scope: !2753)
!2757 = !DILocation(line: 63, column: 36, scope: !2753)
!2758 = !DILocation(line: 63, column: 44, scope: !2753)
!2759 = !DILocation(line: 63, column: 42, scope: !2753)
!2760 = !DILocation(line: 63, column: 49, scope: !2753)
!2761 = !DILocation(line: 63, column: 48, scope: !2753)
!2762 = !DILocation(line: 63, column: 46, scope: !2753)
!2763 = !DILocation(line: 63, column: 31, scope: !2753)
!2764 = !DILocation(line: 63, column: 29, scope: !2753)
!2765 = !DILocation(line: 63, column: 24, scope: !2753)
!2766 = !DILocation(line: 63, column: 9, scope: !2753)
!2767 = distinct !{!2767, !2755, !2768, !616}
!2768 = !DILocation(line: 63, column: 49, scope: !2750)
!2769 = !DILocation(line: 64, column: 26, scope: !2751)
!2770 = !DILocation(line: 64, column: 16, scope: !2751)
!2771 = !DILocation(line: 64, column: 9, scope: !2751)
!2772 = !DILocation(line: 65, column: 12, scope: !2747)
!2773 = !DILocation(line: 66, column: 1, scope: !2735)
!2774 = !DISubprogram(name: "unlink", scope: !1022, file: !1022, line: 858, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2775 = !DISubprogram(name: "sam_global_args_free", scope: !522, file: !522, line: 102, type: !2776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !1211}
!2778 = !DISubprogram(name: "hts_tpool_destroy", scope: !2329, file: !2329, line: 246, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2332}
!2781 = distinct !DISubprogram(name: "__ac_X31_hash_string", scope: !259, file: !259, line: 399, type: !2782, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!258, !229}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "s", arg: 1, scope: !2781, file: !259, line: 399, type: !229)
!2786 = !DILocalVariable(name: "h", scope: !2781, file: !259, line: 401, type: !258)
!2787 = !DILocation(line: 399, column: 59, scope: !2781)
!2788 = !DILocation(line: 401, column: 2, scope: !2781)
!2789 = !DILocation(line: 401, column: 10, scope: !2781)
!2790 = !DILocation(line: 401, column: 24, scope: !2781)
!2791 = !DILocation(line: 401, column: 23, scope: !2781)
!2792 = !DILocation(line: 401, column: 14, scope: !2781)
!2793 = !DILocation(line: 402, column: 6, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2781, file: !259, line: 402, column: 6)
!2795 = !DILocation(line: 402, column: 6, scope: !2781)
!2796 = !DILocation(line: 402, column: 14, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !259, line: 402, column: 9)
!2798 = !DILocation(line: 402, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2797, file: !259, line: 402, column: 9)
!2800 = !DILocation(line: 402, column: 20, scope: !2799)
!2801 = !DILocation(line: 402, column: 9, scope: !2797)
!2802 = !DILocation(line: 402, column: 34, scope: !2799)
!2803 = !DILocation(line: 402, column: 36, scope: !2799)
!2804 = !DILocation(line: 402, column: 44, scope: !2799)
!2805 = !DILocation(line: 402, column: 42, scope: !2799)
!2806 = !DILocation(line: 402, column: 58, scope: !2799)
!2807 = !DILocation(line: 402, column: 57, scope: !2799)
!2808 = !DILocation(line: 402, column: 48, scope: !2799)
!2809 = !DILocation(line: 402, column: 46, scope: !2799)
!2810 = !DILocation(line: 402, column: 31, scope: !2799)
!2811 = !DILocation(line: 402, column: 29, scope: !2799)
!2812 = !DILocation(line: 402, column: 24, scope: !2799)
!2813 = !DILocation(line: 402, column: 9, scope: !2799)
!2814 = distinct !{!2814, !2801, !2815, !616}
!2815 = !DILocation(line: 402, column: 58, scope: !2797)
!2816 = !DILocation(line: 403, column: 9, scope: !2781)
!2817 = !DILocation(line: 404, column: 1, scope: !2781)
!2818 = !DILocation(line: 403, column: 2, scope: !2781)
!2819 = distinct !DISubprogram(name: "kh_resize_bam_store", scope: !2, file: !2, line: 103, type: !2820, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!17, !261, !258}
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2833, !2836, !2844, !2845, !2846, !2848, !2849, !2850, !2854}
!2823 = !DILocalVariable(name: "h", arg: 1, scope: !2819, file: !2, line: 103, type: !261)
!2824 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !2819, file: !2, line: 103, type: !258)
!2825 = !DILocalVariable(name: "new_flags", scope: !2819, file: !2, line: 103, type: !270)
!2826 = !DILocalVariable(name: "j", scope: !2819, file: !2, line: 103, type: !258)
!2827 = !DILocalVariable(name: "new_keys", scope: !2828, file: !2, line: 103, type: !272)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !2, line: 103, column: 1)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !2, line: 103, column: 1)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 103, column: 1)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 103, column: 1)
!2832 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 103, column: 1)
!2833 = !DILocalVariable(name: "new_vals", scope: !2834, file: !2, line: 103, type: !275)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 103, column: 1)
!2835 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 103, column: 1)
!2836 = !DILocalVariable(name: "key", scope: !2837, file: !2, line: 103, type: !273)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !2, line: 103, column: 1)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !2, line: 103, column: 1)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !2, line: 103, column: 1)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 103, column: 1)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 103, column: 1)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !2, line: 103, column: 1)
!2843 = distinct !DILexicalBlock(scope: !2819, file: !2, line: 103, column: 1)
!2844 = !DILocalVariable(name: "val", scope: !2837, file: !2, line: 103, type: !276)
!2845 = !DILocalVariable(name: "new_mask", scope: !2837, file: !2, line: 103, type: !258)
!2846 = !DILocalVariable(name: "k", scope: !2847, file: !2, line: 103, type: !258)
!2847 = distinct !DILexicalBlock(scope: !2837, file: !2, line: 103, column: 1)
!2848 = !DILocalVariable(name: "i", scope: !2847, file: !2, line: 103, type: !258)
!2849 = !DILocalVariable(name: "step", scope: !2847, file: !2, line: 103, type: !258)
!2850 = !DILocalVariable(name: "tmp", scope: !2851, file: !2, line: 103, type: !273)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !2, line: 103, column: 1)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !2, line: 103, column: 1)
!2853 = distinct !DILexicalBlock(scope: !2847, file: !2, line: 103, column: 1)
!2854 = !DILocalVariable(name: "tmp", scope: !2855, file: !2, line: 103, type: !276)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 103, column: 1)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !2, line: 103, column: 1)
!2857 = !DILocation(line: 103, column: 1, scope: !2819)
!2858 = !DILocation(line: 103, column: 1, scope: !2832)
!2859 = !DILocation(line: 103, column: 1, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 103, column: 1)
!2861 = !DILocation(line: 103, column: 1, scope: !2831)
!2862 = !DILocation(line: 103, column: 1, scope: !2830)
!2863 = !DILocation(line: 103, column: 1, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2830, file: !2, line: 103, column: 1)
!2865 = !DILocation(line: 103, column: 1, scope: !2829)
!2866 = !DILocation(line: 103, column: 1, scope: !2828)
!2867 = !DILocation(line: 103, column: 1, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 103, column: 1)
!2869 = !DILocation(line: 103, column: 1, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2868, file: !2, line: 103, column: 1)
!2871 = !DILocation(line: 103, column: 1, scope: !2834)
!2872 = !DILocation(line: 103, column: 1, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 103, column: 1)
!2874 = !DILocation(line: 103, column: 1, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2873, file: !2, line: 103, column: 1)
!2876 = !DILocation(line: 103, column: 1, scope: !2835)
!2877 = !DILocation(line: 103, column: 1, scope: !2843)
!2878 = !DILocation(line: 103, column: 1, scope: !2841)
!2879 = !DILocation(line: 103, column: 1, scope: !2840)
!2880 = !DILocation(line: 103, column: 1, scope: !2838)
!2881 = !DILocation(line: 103, column: 1, scope: !2839)
!2882 = !DILocation(line: 103, column: 1, scope: !2837)
!2883 = !DILocation(line: 103, column: 1, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2837, file: !2, line: 103, column: 1)
!2885 = !{i64 0, i64 8, !589}
!2886 = !DILocation(line: 103, column: 1, scope: !2847)
!2887 = distinct !{!2887, !2886, !2886, !616}
!2888 = !DILocation(line: 103, column: 1, scope: !2853)
!2889 = !DILocation(line: 103, column: 1, scope: !2851)
!2890 = !DILocation(line: 103, column: 1, scope: !2852)
!2891 = !DILocation(line: 103, column: 1, scope: !2855)
!2892 = !DILocation(line: 103, column: 1, scope: !2856)
!2893 = !DILocation(line: 103, column: 1, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2853, file: !2, line: 103, column: 1)
!2895 = !DILocation(line: 103, column: 1, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2894, file: !2, line: 103, column: 1)
!2897 = distinct !{!2897, !2882, !2882}
!2898 = distinct !{!2898, !2878, !2878, !616}
!2899 = !DILocation(line: 103, column: 1, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 103, column: 1)
!2901 = !DILocation(line: 103, column: 1, scope: !2842)
!2902 = !DILocation(line: 103, column: 1, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 103, column: 1)
!2904 = !DILocation(line: 103, column: 1, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 103, column: 1)
!2906 = !DISubprogram(name: "realloc", scope: !647, file: !647, line: 551, type: !2907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!169, !169, !161}
!2909 = distinct !DISubprogram(name: "hash_Wang", scope: !2, file: !2, line: 48, type: !2910, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!24, !24}
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "key", arg: 1, scope: !2909, file: !2, line: 48, type: !24)
!2914 = !DILocation(line: 48, column: 43, scope: !2909)
!2915 = !DILocation(line: 50, column: 14, scope: !2909)
!2916 = !DILocation(line: 50, column: 18, scope: !2909)
!2917 = !DILocation(line: 50, column: 12, scope: !2909)
!2918 = !DILocation(line: 50, column: 9, scope: !2909)
!2919 = !DILocation(line: 51, column: 14, scope: !2909)
!2920 = !DILocation(line: 51, column: 18, scope: !2909)
!2921 = !DILocation(line: 51, column: 9, scope: !2909)
!2922 = !DILocation(line: 52, column: 14, scope: !2909)
!2923 = !DILocation(line: 52, column: 18, scope: !2909)
!2924 = !DILocation(line: 52, column: 9, scope: !2909)
!2925 = !DILocation(line: 53, column: 14, scope: !2909)
!2926 = !DILocation(line: 53, column: 18, scope: !2909)
!2927 = !DILocation(line: 53, column: 9, scope: !2909)
!2928 = !DILocation(line: 54, column: 14, scope: !2909)
!2929 = !DILocation(line: 54, column: 18, scope: !2909)
!2930 = !DILocation(line: 54, column: 12, scope: !2909)
!2931 = !DILocation(line: 54, column: 9, scope: !2909)
!2932 = !DILocation(line: 55, column: 14, scope: !2909)
!2933 = !DILocation(line: 55, column: 18, scope: !2909)
!2934 = !DILocation(line: 55, column: 9, scope: !2909)
!2935 = !DILocation(line: 56, column: 12, scope: !2909)
!2936 = !DILocation(line: 56, column: 5, scope: !2909)
