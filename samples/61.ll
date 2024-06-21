; ModuleID = 'samples/61.bc'
source_filename = "rdhdrhistogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, i64 }
%struct.anon.0 = type { double, i64 }
%struct.rd_hdr_histogram_s = type { i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i64, ptr, i64, i64, i64, i32 }
%struct.rd_hdr_iter_s = type { ptr, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"./rd.h\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.rd_calloc = private unnamed_addr constant [32 x i8] c"void *rd_calloc(size_t, size_t)\00", align 1, !dbg !12
@__const.ut_high_sigfig.input = private unnamed_addr constant [10 x i64] [i64 459876, i64 669187, i64 711612, i64 816326, i64 931423, i64 1033197, i64 1131895, i64 2477317, i64 3964974, i64 12718782], align 16
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: v == exp: \00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [17 x i8] c"rdhdrhistogram.c\00", align 1, !dbg !24
@__FUNCTION__.ut_high_sigfig = private unnamed_addr constant [15 x i8] c"ut_high_sigfig\00", align 1, !dbg !29
@.str.4 = private unnamed_addr constant [28 x i8] c"Median is %ld, expected %ld\00", align 1, !dbg !34
@.str.5 = private unnamed_addr constant [6 x i8] c"\1B[0m\0A\00", align 1, !dbg !39
@rd_unittest_assert_on_failure = external global i8, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"v == exp\00", align 1, !dbg !44
@__PRETTY_FUNCTION__.ut_high_sigfig = private unnamed_addr constant [25 x i8] c"int ut_high_sigfig(void)\00", align 1, !dbg !49
@.str.7 = private unnamed_addr constant [32 x i8] c"\1B[32mRDUT: PASS: %s:%d: %s\1B[0m\0A\00", align 1, !dbg !54
@__const.ut_quantile.exp = private unnamed_addr constant [7 x %struct.anon] [%struct.anon { double 5.000000e+01, i64 500223 }, %struct.anon { double 7.500000e+01, i64 750079 }, %struct.anon { double 9.000000e+01, i64 900095 }, %struct.anon { double 9.500000e+01, i64 950271 }, %struct.anon { double 9.900000e+01, i64 990207 }, %struct.anon { double 9.990000e+01, i64 999423 }, %struct.anon { double 0x4058FF5C28F5C28F, i64 999935 }], align 16
@.str.8 = private unnamed_addr constant [47 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: r: \00", align 1, !dbg !57
@__FUNCTION__.ut_quantile = private unnamed_addr constant [12 x i8] c"ut_quantile\00", align 1, !dbg !62
@.str.9 = private unnamed_addr constant [20 x i8] c"record(%ld) failed\0A\00", align 1, !dbg !67
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !72
@__PRETTY_FUNCTION__.ut_quantile = private unnamed_addr constant [22 x i8] c"int ut_quantile(void)\00", align 1, !dbg !74
@.str.11 = private unnamed_addr constant [59 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: v == exp[i].v: \00", align 1, !dbg !79
@.str.12 = private unnamed_addr constant [27 x i8] c"P%.2f is %ld, expected %ld\00", align 1, !dbg !84
@.str.13 = private unnamed_addr constant [14 x i8] c"v == exp[i].v\00", align 1, !dbg !89
@__FUNCTION__.ut_mean = private unnamed_addr constant [8 x i8] c"ut_mean\00", align 1, !dbg !94
@__PRETTY_FUNCTION__.ut_mean = private unnamed_addr constant [18 x i8] c"int ut_mean(void)\00", align 1, !dbg !99
@.str.14 = private unnamed_addr constant [75 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: rd_dbl_eq0(v, exp, 0.0000001): \00", align 1, !dbg !104
@.str.15 = private unnamed_addr constant [24 x i8] c"Mean is %f, expected %f\00", align 1, !dbg !109
@.str.16 = private unnamed_addr constant [30 x i8] c"rd_dbl_eq0(v, exp, 0.0000001)\00", align 1, !dbg !114
@__FUNCTION__.ut_stddev = private unnamed_addr constant [10 x i8] c"ut_stddev\00", align 1, !dbg !119
@__PRETTY_FUNCTION__.ut_stddev = private unnamed_addr constant [20 x i8] c"int ut_stddev(void)\00", align 1, !dbg !124
@.str.17 = private unnamed_addr constant [73 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: rd_dbl_eq0(v, exp, epsilon): \00", align 1, !dbg !127
@.str.18 = private unnamed_addr constant [57 x i8] c"StdDev is %.6f, expected %.6f: diff %.6f vs epsilon %.6f\00", align 1, !dbg !132
@.str.19 = private unnamed_addr constant [28 x i8] c"rd_dbl_eq0(v, exp, epsilon)\00", align 1, !dbg !137
@__FUNCTION__.ut_totalcount = private unnamed_addr constant [14 x i8] c"ut_totalcount\00", align 1, !dbg !139
@__PRETTY_FUNCTION__.ut_totalcount = private unnamed_addr constant [24 x i8] c"int ut_totalcount(void)\00", align 1, !dbg !142
@.str.20 = private unnamed_addr constant [56 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: v == i + 1: \00", align 1, !dbg !145
@.str.21 = private unnamed_addr constant [33 x i8] c"total_count is %ld, expected %ld\00", align 1, !dbg !150
@.str.22 = private unnamed_addr constant [11 x i8] c"v == i + 1\00", align 1, !dbg !155
@__FUNCTION__.ut_max = private unnamed_addr constant [7 x i8] c"ut_max\00", align 1, !dbg !160
@__PRETTY_FUNCTION__.ut_max = private unnamed_addr constant [17 x i8] c"int ut_max(void)\00", align 1, !dbg !163
@.str.23 = private unnamed_addr constant [25 x i8] c"Max is %ld, expected %ld\00", align 1, !dbg !166
@__FUNCTION__.ut_min = private unnamed_addr constant [7 x i8] c"ut_min\00", align 1, !dbg !169
@__PRETTY_FUNCTION__.ut_min = private unnamed_addr constant [17 x i8] c"int ut_min(void)\00", align 1, !dbg !171
@.str.24 = private unnamed_addr constant [25 x i8] c"Min is %ld, expected %ld\00", align 1, !dbg !173
@__FUNCTION__.ut_reset = private unnamed_addr constant [9 x i8] c"ut_reset\00", align 1, !dbg !175
@__PRETTY_FUNCTION__.ut_reset = private unnamed_addr constant [19 x i8] c"int ut_reset(void)\00", align 1, !dbg !178
@.str.25 = private unnamed_addr constant [55 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: !isnan(v): \00", align 1, !dbg !183
@__FUNCTION__.ut_nan = private unnamed_addr constant [7 x i8] c"ut_nan\00", align 1, !dbg !188
@.str.26 = private unnamed_addr constant [25 x i8] c"Mean is %f, expected NaN\00", align 1, !dbg !190
@.str.27 = private unnamed_addr constant [21 x i8] c"!__builtin_isnan (v)\00", align 1, !dbg !192
@__PRETTY_FUNCTION__.ut_nan = private unnamed_addr constant [17 x i8] c"int ut_nan(void)\00", align 1, !dbg !197
@.str.28 = private unnamed_addr constant [27 x i8] c"StdDev is %f, expected NaN\00", align 1, !dbg !199
@.str.29 = private unnamed_addr constant [80 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: hdr->significantFigures == sigfigs: \00", align 1, !dbg !201
@__FUNCTION__.ut_sigfigs = private unnamed_addr constant [11 x i8] c"ut_sigfigs\00", align 1, !dbg !206
@.str.30 = private unnamed_addr constant [40 x i8] c"Significant figures is %ld, expected %d\00", align 1, !dbg !209
@.str.31 = private unnamed_addr constant [35 x i8] c"hdr->significantFigures == sigfigs\00", align 1, !dbg !214
@__PRETTY_FUNCTION__.ut_sigfigs = private unnamed_addr constant [21 x i8] c"int ut_sigfigs(void)\00", align 1, !dbg !219
@.str.32 = private unnamed_addr constant [81 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: hdr->lowestTrackableValue == minval: \00", align 1, !dbg !222
@__FUNCTION__.ut_minmax_trackable = private unnamed_addr constant [20 x i8] c"ut_minmax_trackable\00", align 1, !dbg !227
@.str.33 = private unnamed_addr constant [42 x i8] c"lowestTrackableValue is %ld, expected %ld\00", align 1, !dbg !229
@.str.34 = private unnamed_addr constant [36 x i8] c"hdr->lowestTrackableValue == minval\00", align 1, !dbg !234
@__PRETTY_FUNCTION__.ut_minmax_trackable = private unnamed_addr constant [30 x i8] c"int ut_minmax_trackable(void)\00", align 1, !dbg !239
@.str.35 = private unnamed_addr constant [82 x i8] c"\1B[31mRDUT: FAIL: %s:%d: %s: assert failed: hdr->highestTrackableValue == maxval: \00", align 1, !dbg !242
@.str.36 = private unnamed_addr constant [43 x i8] c"highestTrackableValue is %ld, expected %ld\00", align 1, !dbg !247
@.str.37 = private unnamed_addr constant [37 x i8] c"hdr->highestTrackableValue == maxval\00", align 1, !dbg !252
@__FUNCTION__.ut_unitmagnitude_overflow = private unnamed_addr constant [26 x i8] c"ut_unitmagnitude_overflow\00", align 1, !dbg !257
@.str.38 = private unnamed_addr constant [19 x i8] c"record(11) failed\0A\00", align 1, !dbg !262
@__PRETTY_FUNCTION__.ut_unitmagnitude_overflow = private unnamed_addr constant [36 x i8] c"int ut_unitmagnitude_overflow(void)\00", align 1, !dbg !265
@__const.ut_subbucketmask_overflow.input = private unnamed_addr constant [3 x i64] [i64 100000000, i64 20000000, i64 30000000], align 16
@__const.ut_subbucketmask_overflow.exp = private unnamed_addr constant [4 x %struct.anon.0] [%struct.anon.0 { double 5.000000e+01, i64 33554431 }, %struct.anon.0 { double 0x4054D51EB851EB85, i64 33554431 }, %struct.anon.0 { double 8.334000e+01, i64 100663295 }, %struct.anon.0 { double 9.900000e+01, i64 100663295 }], align 16
@__FUNCTION__.ut_subbucketmask_overflow = private unnamed_addr constant [26 x i8] c"ut_subbucketmask_overflow\00", align 1, !dbg !268
@__PRETTY_FUNCTION__.ut_subbucketmask_overflow = private unnamed_addr constant [36 x i8] c"int ut_subbucketmask_overflow(void)\00", align 1, !dbg !270

; Function Attrs: nounwind uwtable
define void @rd_hdr_histogram_destroy(ptr noundef %hdr) #0 !dbg !291 {
entry:
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !316, metadata !DIExpression()), !dbg !321
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !322, !tbaa !317
  call void @rd_free(ptr noundef %0), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rd_free(ptr noundef %ptr) #1 !dbg !325 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !332, !tbaa !317
  call void @free(ptr noundef %0) #11, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: nounwind uwtable
define ptr @rd_hdr_histogram_new(i64 noundef %minValue, i64 noundef %maxValue, i32 noundef %significantFigures) #0 !dbg !335 {
entry:
  %retval = alloca ptr, align 8
  %minValue.addr = alloca i64, align 8
  %maxValue.addr = alloca i64, align 8
  %significantFigures.addr = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %largestValueWithSingleUnitResolution = alloca i64, align 8
  %subBucketCountMagnitude = alloca i32, align 4
  %subBucketHalfCountMagnitude = alloca i32, align 4
  %unitMagnitude = alloca i32, align 4
  %subBucketCount = alloca i32, align 4
  %subBucketHalfCount = alloca i32, align 4
  %subBucketMask = alloca i64, align 8
  %smallestUntrackableValue = alloca i64, align 8
  %bucketsNeeded = alloca i32, align 4
  %bucketCount = alloca i32, align 4
  %countsLen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %minValue, ptr %minValue.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %minValue.addr, metadata !339, metadata !DIExpression()), !dbg !356
  store i64 %maxValue, ptr %maxValue.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %maxValue.addr, metadata !340, metadata !DIExpression()), !dbg !357
  store i32 %significantFigures, ptr %significantFigures.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %significantFigures.addr, metadata !341, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !361
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !342, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %largestValueWithSingleUnitResolution) #11, !dbg !363
  tail call void @llvm.dbg.declare(metadata ptr %largestValueWithSingleUnitResolution, metadata !343, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketCountMagnitude) #11, !dbg !365
  tail call void @llvm.dbg.declare(metadata ptr %subBucketCountMagnitude, metadata !344, metadata !DIExpression()), !dbg !366
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketHalfCountMagnitude) #11, !dbg !367
  tail call void @llvm.dbg.declare(metadata ptr %subBucketHalfCountMagnitude, metadata !345, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 4, ptr %unitMagnitude) #11, !dbg !369
  tail call void @llvm.dbg.declare(metadata ptr %unitMagnitude, metadata !346, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketCount) #11, !dbg !371
  tail call void @llvm.dbg.declare(metadata ptr %subBucketCount, metadata !347, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketHalfCount) #11, !dbg !373
  tail call void @llvm.dbg.declare(metadata ptr %subBucketHalfCount, metadata !348, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %subBucketMask) #11, !dbg !375
  tail call void @llvm.dbg.declare(metadata ptr %subBucketMask, metadata !349, metadata !DIExpression()), !dbg !376
  call void @llvm.lifetime.start.p0(i64 8, ptr %smallestUntrackableValue) #11, !dbg !377
  tail call void @llvm.dbg.declare(metadata ptr %smallestUntrackableValue, metadata !350, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketsNeeded) #11, !dbg !379
  tail call void @llvm.dbg.declare(metadata ptr %bucketsNeeded, metadata !351, metadata !DIExpression()), !dbg !380
  store i32 1, ptr %bucketsNeeded, align 4, !dbg !380, !tbaa !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketCount) #11, !dbg !381
  tail call void @llvm.dbg.declare(metadata ptr %bucketCount, metadata !352, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %countsLen) #11, !dbg !383
  tail call void @llvm.dbg.declare(metadata ptr %countsLen, metadata !353, metadata !DIExpression()), !dbg !384
  %0 = load i32, ptr %significantFigures.addr, align 4, !dbg !385, !tbaa !358
  %cmp = icmp slt i32 %0, 1, !dbg !387
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !388

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %significantFigures.addr, align 4, !dbg !389, !tbaa !358
  %cmp1 = icmp sgt i32 %1, 5, !dbg !390
  br i1 %cmp1, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !392

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %significantFigures.addr, align 4, !dbg !393, !tbaa !358
  %conv = sitofp i32 %2 to double, !dbg !394
  %call = call double @pow(double noundef 1.000000e+01, double noundef %conv) #11, !dbg !395
  %mul = fmul double 2.000000e+00, %call, !dbg !396
  %conv2 = fptosi double %mul to i64, !dbg !397
  store i64 %conv2, ptr %largestValueWithSingleUnitResolution, align 8, !dbg !398, !tbaa !354
  %3 = load i64, ptr %largestValueWithSingleUnitResolution, align 8, !dbg !399, !tbaa !354
  %conv3 = sitofp i64 %3 to double, !dbg !400
  %call4 = call double @log2(double noundef %conv3) #11, !dbg !401
  %4 = call double @llvm.ceil.f64(double %call4), !dbg !402
  %conv5 = fptosi double %4 to i32, !dbg !403
  store i32 %conv5, ptr %subBucketCountMagnitude, align 4, !dbg !404, !tbaa !358
  %5 = load i32, ptr %subBucketCountMagnitude, align 4, !dbg !405, !tbaa !358
  %cmp6 = icmp sgt i32 %5, 1, !dbg !405
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !405

cond.true:                                        ; preds = %if.end
  %6 = load i32, ptr %subBucketCountMagnitude, align 4, !dbg !405, !tbaa !358
  br label %cond.end, !dbg !405

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 1, %cond.false ], !dbg !405
  %sub = sub nsw i32 %cond, 1, !dbg !406
  store i32 %sub, ptr %subBucketHalfCountMagnitude, align 4, !dbg !407, !tbaa !358
  %7 = load i64, ptr %minValue.addr, align 8, !dbg !408, !tbaa !354
  %conv8 = sitofp i64 %7 to double, !dbg !408
  %call9 = call double @log2(double noundef %conv8) #11, !dbg !408
  %8 = call double @llvm.floor.f64(double %call9), !dbg !408
  %cmp10 = fcmp ogt double %8, 0.000000e+00, !dbg !408
  br i1 %cmp10, label %cond.true12, label %cond.false15, !dbg !408

cond.true12:                                      ; preds = %cond.end
  %9 = load i64, ptr %minValue.addr, align 8, !dbg !408, !tbaa !354
  %conv13 = sitofp i64 %9 to double, !dbg !408
  %call14 = call double @log2(double noundef %conv13) #11, !dbg !408
  %10 = call double @llvm.floor.f64(double %call14), !dbg !408
  br label %cond.end16, !dbg !408

cond.false15:                                     ; preds = %cond.end
  br label %cond.end16, !dbg !408

cond.end16:                                       ; preds = %cond.false15, %cond.true12
  %cond17 = phi double [ %10, %cond.true12 ], [ 0.000000e+00, %cond.false15 ], !dbg !408
  %conv18 = fptosi double %cond17 to i32, !dbg !409
  store i32 %conv18, ptr %unitMagnitude, align 4, !dbg !410, !tbaa !358
  %11 = load i32, ptr %subBucketHalfCountMagnitude, align 4, !dbg !411, !tbaa !358
  %conv19 = sitofp i32 %11 to double, !dbg !412
  %add = fadd double %conv19, 1.000000e+00, !dbg !413
  %call20 = call double @pow(double noundef 2.000000e+00, double noundef %add) #11, !dbg !414
  %conv21 = fptosi double %call20 to i32, !dbg !415
  store i32 %conv21, ptr %subBucketCount, align 4, !dbg !416, !tbaa !358
  %12 = load i32, ptr %subBucketCount, align 4, !dbg !417, !tbaa !358
  %div = sdiv i32 %12, 2, !dbg !418
  store i32 %div, ptr %subBucketHalfCount, align 4, !dbg !419, !tbaa !358
  %13 = load i32, ptr %subBucketCount, align 4, !dbg !420, !tbaa !358
  %sub22 = sub nsw i32 %13, 1, !dbg !421
  %conv23 = sext i32 %sub22 to i64, !dbg !422
  %14 = load i32, ptr %unitMagnitude, align 4, !dbg !423, !tbaa !358
  %sh_prom = zext i32 %14 to i64, !dbg !424
  %shl = shl i64 %conv23, %sh_prom, !dbg !424
  store i64 %shl, ptr %subBucketMask, align 8, !dbg !425, !tbaa !354
  %15 = load i32, ptr %subBucketCount, align 4, !dbg !426, !tbaa !358
  %conv24 = sext i32 %15 to i64, !dbg !427
  %16 = load i32, ptr %unitMagnitude, align 4, !dbg !428, !tbaa !358
  %sh_prom25 = zext i32 %16 to i64, !dbg !429
  %shl26 = shl i64 %conv24, %sh_prom25, !dbg !429
  store i64 %shl26, ptr %smallestUntrackableValue, align 8, !dbg !430, !tbaa !354
  br label %while.cond, !dbg !431

while.cond:                                       ; preds = %while.body, %cond.end16
  %17 = load i64, ptr %smallestUntrackableValue, align 8, !dbg !432, !tbaa !354
  %18 = load i64, ptr %maxValue.addr, align 8, !dbg !433, !tbaa !354
  %cmp27 = icmp slt i64 %17, %18, !dbg !434
  br i1 %cmp27, label %while.body, label %while.end, !dbg !431

while.body:                                       ; preds = %while.cond
  %19 = load i64, ptr %smallestUntrackableValue, align 8, !dbg !435, !tbaa !354
  %shl29 = shl i64 %19, 1, !dbg !435
  store i64 %shl29, ptr %smallestUntrackableValue, align 8, !dbg !435, !tbaa !354
  %20 = load i32, ptr %bucketsNeeded, align 4, !dbg !437, !tbaa !358
  %inc = add nsw i32 %20, 1, !dbg !437
  store i32 %inc, ptr %bucketsNeeded, align 4, !dbg !437, !tbaa !358
  br label %while.cond, !dbg !431, !llvm.loop !438

while.end:                                        ; preds = %while.cond
  %21 = load i32, ptr %bucketsNeeded, align 4, !dbg !441, !tbaa !358
  store i32 %21, ptr %bucketCount, align 4, !dbg !442, !tbaa !358
  %22 = load i32, ptr %bucketCount, align 4, !dbg !443, !tbaa !358
  %add30 = add nsw i32 %22, 1, !dbg !444
  %23 = load i32, ptr %subBucketCount, align 4, !dbg !445, !tbaa !358
  %div31 = sdiv i32 %23, 2, !dbg !446
  %mul32 = mul nsw i32 %add30, %div31, !dbg !447
  store i32 %mul32, ptr %countsLen, align 4, !dbg !448, !tbaa !358
  %24 = load i32, ptr %countsLen, align 4, !dbg !449, !tbaa !358
  %conv33 = sext i32 %24 to i64, !dbg !449
  %mul34 = mul i64 8, %conv33, !dbg !450
  %add35 = add i64 112, %mul34, !dbg !451
  %call36 = call ptr @rd_calloc(i64 noundef 1, i64 noundef %add35), !dbg !452
  store ptr %call36, ptr %hdr, align 8, !dbg !453, !tbaa !317
  %25 = load ptr, ptr %hdr, align 8, !dbg !454, !tbaa !317
  %add.ptr = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %25, i64 1, !dbg !455
  %26 = load ptr, ptr %hdr, align 8, !dbg !456, !tbaa !317
  %counts = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %26, i32 0, i32 11, !dbg !457
  store ptr %add.ptr, ptr %counts, align 8, !dbg !458, !tbaa !459
  %27 = load i32, ptr %countsLen, align 4, !dbg !461, !tbaa !358
  %conv37 = sext i32 %27 to i64, !dbg !461
  %mul38 = mul i64 8, %conv37, !dbg !462
  %add39 = add i64 112, %mul38, !dbg !463
  %conv40 = trunc i64 %add39 to i32, !dbg !464
  %28 = load ptr, ptr %hdr, align 8, !dbg !465, !tbaa !317
  %allocatedSize = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %28, i32 0, i32 15, !dbg !466
  store i32 %conv40, ptr %allocatedSize, align 8, !dbg !467, !tbaa !468
  %29 = load i64, ptr %minValue.addr, align 8, !dbg !469, !tbaa !354
  %30 = load ptr, ptr %hdr, align 8, !dbg !470, !tbaa !317
  %lowestTrackableValue = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %30, i32 0, i32 0, !dbg !471
  store i64 %29, ptr %lowestTrackableValue, align 8, !dbg !472, !tbaa !473
  %31 = load i64, ptr %maxValue.addr, align 8, !dbg !474, !tbaa !354
  %32 = load ptr, ptr %hdr, align 8, !dbg !475, !tbaa !317
  %highestTrackableValue = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %32, i32 0, i32 1, !dbg !476
  store i64 %31, ptr %highestTrackableValue, align 8, !dbg !477, !tbaa !478
  %33 = load i32, ptr %unitMagnitude, align 4, !dbg !479, !tbaa !358
  %conv41 = sext i32 %33 to i64, !dbg !479
  %34 = load ptr, ptr %hdr, align 8, !dbg !480, !tbaa !317
  %unitMagnitude42 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %34, i32 0, i32 2, !dbg !481
  store i64 %conv41, ptr %unitMagnitude42, align 8, !dbg !482, !tbaa !483
  %35 = load i32, ptr %significantFigures.addr, align 4, !dbg !484, !tbaa !358
  %conv43 = sext i32 %35 to i64, !dbg !484
  %36 = load ptr, ptr %hdr, align 8, !dbg !485, !tbaa !317
  %significantFigures44 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %36, i32 0, i32 3, !dbg !486
  store i64 %conv43, ptr %significantFigures44, align 8, !dbg !487, !tbaa !488
  %37 = load i32, ptr %subBucketHalfCountMagnitude, align 4, !dbg !489, !tbaa !358
  %38 = load ptr, ptr %hdr, align 8, !dbg !490, !tbaa !317
  %subBucketHalfCountMagnitude45 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %38, i32 0, i32 4, !dbg !491
  store i32 %37, ptr %subBucketHalfCountMagnitude45, align 8, !dbg !492, !tbaa !493
  %39 = load i32, ptr %subBucketHalfCount, align 4, !dbg !494, !tbaa !358
  %40 = load ptr, ptr %hdr, align 8, !dbg !495, !tbaa !317
  %subBucketHalfCount46 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %40, i32 0, i32 5, !dbg !496
  store i32 %39, ptr %subBucketHalfCount46, align 4, !dbg !497, !tbaa !498
  %41 = load i64, ptr %subBucketMask, align 8, !dbg !499, !tbaa !354
  %42 = load ptr, ptr %hdr, align 8, !dbg !500, !tbaa !317
  %subBucketMask47 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %42, i32 0, i32 6, !dbg !501
  store i64 %41, ptr %subBucketMask47, align 8, !dbg !502, !tbaa !503
  %43 = load i32, ptr %subBucketCount, align 4, !dbg !504, !tbaa !358
  %44 = load ptr, ptr %hdr, align 8, !dbg !505, !tbaa !317
  %subBucketCount48 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %44, i32 0, i32 7, !dbg !506
  store i32 %43, ptr %subBucketCount48, align 8, !dbg !507, !tbaa !508
  %45 = load i32, ptr %bucketCount, align 4, !dbg !509, !tbaa !358
  %46 = load ptr, ptr %hdr, align 8, !dbg !510, !tbaa !317
  %bucketCount49 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %46, i32 0, i32 8, !dbg !511
  store i32 %45, ptr %bucketCount49, align 4, !dbg !512, !tbaa !513
  %47 = load i32, ptr %countsLen, align 4, !dbg !514, !tbaa !358
  %48 = load ptr, ptr %hdr, align 8, !dbg !515, !tbaa !317
  %countsLen50 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %48, i32 0, i32 9, !dbg !516
  store i32 %47, ptr %countsLen50, align 8, !dbg !517, !tbaa !518
  %49 = load ptr, ptr %hdr, align 8, !dbg !519, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %49, i32 0, i32 10, !dbg !520
  store i64 0, ptr %totalCount, align 8, !dbg !521, !tbaa !522
  %50 = load i64, ptr %minValue.addr, align 8, !dbg !523, !tbaa !354
  %51 = load ptr, ptr %hdr, align 8, !dbg !524, !tbaa !317
  %lowestOutOfRange = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %51, i32 0, i32 13, !dbg !525
  store i64 %50, ptr %lowestOutOfRange, align 8, !dbg !526, !tbaa !527
  %52 = load i64, ptr %maxValue.addr, align 8, !dbg !528, !tbaa !354
  %53 = load ptr, ptr %hdr, align 8, !dbg !529, !tbaa !317
  %highestOutOfRange = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %53, i32 0, i32 14, !dbg !530
  store i64 %52, ptr %highestOutOfRange, align 8, !dbg !531, !tbaa !532
  %54 = load ptr, ptr %hdr, align 8, !dbg !533, !tbaa !317
  store ptr %54, ptr %retval, align 8, !dbg !534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !534

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %countsLen) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketCount) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketsNeeded) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %smallestUntrackableValue) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %subBucketMask) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketHalfCount) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketCount) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %unitMagnitude) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketHalfCountMagnitude) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketCountMagnitude) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %largestValueWithSingleUnitResolution) #11, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !535
  %55 = load ptr, ptr %retval, align 8, !dbg !535
  ret ptr %55, !dbg !535
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare !dbg !536 double @pow(double noundef, double noundef) #3

; Function Attrs: nounwind
declare !dbg !540 double @log2(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @rd_calloc(i64 noundef %num, i64 noundef %sz) #1 !dbg !543 {
entry:
  %num.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %num, ptr %num.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !550, metadata !DIExpression()), !dbg !553
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !551, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !555
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !552, metadata !DIExpression()), !dbg !556
  %0 = load i64, ptr %num.addr, align 8, !dbg !557, !tbaa !354
  %1 = load i64, ptr %sz.addr, align 8, !dbg !558, !tbaa !354
  %call = call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #12, !dbg !559
  store ptr %call, ptr %p, align 8, !dbg !556, !tbaa !317
  %2 = load ptr, ptr %p, align 8, !dbg !560, !tbaa !317
  %tobool = icmp ne ptr %2, null, !dbg !560
  br i1 %tobool, label %if.then, label %if.else, !dbg !563

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !563

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 134, ptr noundef @__PRETTY_FUNCTION__.rd_calloc) #13, !dbg !560
  unreachable, !dbg !560

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %p, align 8, !dbg !564, !tbaa !317
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !565
  ret ptr %3, !dbg !566
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define void @rd_hdr_histogram_reset(ptr noundef %hdr) #0 !dbg !567 {
entry:
  %hdr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !569, metadata !DIExpression()), !dbg !571
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !572
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !570, metadata !DIExpression()), !dbg !573
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !574, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %0, i32 0, i32 10, !dbg !575
  store i64 0, ptr %totalCount, align 8, !dbg !576, !tbaa !522
  store i32 0, ptr %i, align 4, !dbg !577, !tbaa !358
  br label %for.cond, !dbg !579

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !580, !tbaa !358
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !582, !tbaa !317
  %countsLen = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %2, i32 0, i32 9, !dbg !583
  %3 = load i32, ptr %countsLen, align 8, !dbg !583, !tbaa !518
  %cmp = icmp slt i32 %1, %3, !dbg !584
  br i1 %cmp, label %for.body, label %for.end, !dbg !585

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !586, !tbaa !317
  %counts = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %4, i32 0, i32 11, !dbg !587
  %5 = load ptr, ptr %counts, align 8, !dbg !587, !tbaa !459
  %6 = load i32, ptr %i, align 4, !dbg !588, !tbaa !358
  %idxprom = sext i32 %6 to i64, !dbg !586
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom, !dbg !586
  store i64 0, ptr %arrayidx, align 8, !dbg !589, !tbaa !354
  br label %for.inc, !dbg !586

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !590, !tbaa !358
  %inc = add nsw i32 %7, 1, !dbg !590
  store i32 %inc, ptr %i, align 4, !dbg !590, !tbaa !358
  br label %for.cond, !dbg !591, !llvm.loop !592

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !594
  ret void, !dbg !594
}

; Function Attrs: nounwind uwtable
define double @rd_hdr_histogram_stddev(ptr noundef %hdr) #0 !dbg !595 {
entry:
  %retval = alloca double, align 8
  %hdr.addr = alloca ptr, align 8
  %mean = alloca double, align 8
  %geometricDevTotal = alloca double, align 8
  %it = alloca %struct.rd_hdr_iter_s, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dev = alloca double, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !599, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 8, ptr %mean) #11, !dbg !618
  tail call void @llvm.dbg.declare(metadata ptr %mean, metadata !600, metadata !DIExpression()), !dbg !619
  call void @llvm.lifetime.start.p0(i64 8, ptr %geometricDevTotal) #11, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %geometricDevTotal, metadata !601, metadata !DIExpression()), !dbg !621
  store double 0.000000e+00, ptr %geometricDevTotal, align 8, !dbg !621, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 48, ptr %it) #11, !dbg !624
  tail call void @llvm.dbg.declare(metadata ptr %it, metadata !602, metadata !DIExpression()), !dbg !625
  call void @llvm.memset.p0.i64(ptr align 8 %it, i8 0, i64 48, i1 false), !dbg !625
  %hdr1 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 0, !dbg !626
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !626, !tbaa !317
  store ptr %0, ptr %hdr1, align 8, !dbg !626, !tbaa !627
  %subBucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 2, !dbg !626
  store i32 -1, ptr %subBucketIdx, align 4, !dbg !626, !tbaa !629
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !630, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %1, i32 0, i32 10, !dbg !632
  %2 = load i64, ptr %totalCount, align 8, !dbg !632, !tbaa !522
  %cmp = icmp eq i64 %2, 0, !dbg !633
  br i1 %cmp, label %if.then, label %if.end, !dbg !634

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8, !dbg !635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !635

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %hdr.addr, align 8, !dbg !636, !tbaa !317
  %call = call double @rd_hdr_histogram_mean(ptr noundef %3), !dbg !637
  store double %call, ptr %mean, align 8, !dbg !638, !tbaa !622
  br label %while.cond, !dbg !639

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %call2 = call i32 @rd_hdr_iter_next(ptr noundef %it), !dbg !640
  %tobool = icmp ne i32 %call2, 0, !dbg !639
  br i1 %tobool, label %while.body, label %while.end, !dbg !639

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #11, !dbg !641
  tail call void @llvm.dbg.declare(metadata ptr %dev, metadata !615, metadata !DIExpression()), !dbg !642
  %countAtIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !643
  %4 = load i64, ptr %countAtIdx, align 8, !dbg !643, !tbaa !645
  %cmp3 = icmp eq i64 %4, 0, !dbg !646
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !647

if.then4:                                         ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !648, !llvm.loop !649

if.end5:                                          ; preds = %while.body
  %5 = load ptr, ptr %hdr.addr, align 8, !dbg !651, !tbaa !317
  %valueFromIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 5, !dbg !652
  %6 = load i64, ptr %valueFromIdx, align 8, !dbg !652, !tbaa !653
  %call6 = call i64 @rd_hdr_medianEquivalentValue(ptr noundef %5, i64 noundef %6), !dbg !654
  %conv = sitofp i64 %call6 to double, !dbg !655
  %7 = load double, ptr %mean, align 8, !dbg !656, !tbaa !622
  %sub = fsub double %conv, %7, !dbg !657
  store double %sub, ptr %dev, align 8, !dbg !658, !tbaa !622
  %8 = load double, ptr %dev, align 8, !dbg !659, !tbaa !622
  %9 = load double, ptr %dev, align 8, !dbg !660, !tbaa !622
  %mul = fmul double %8, %9, !dbg !661
  %countAtIdx7 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !662
  %10 = load i64, ptr %countAtIdx7, align 8, !dbg !662, !tbaa !645
  %conv8 = sitofp i64 %10 to double, !dbg !663
  %11 = load double, ptr %geometricDevTotal, align 8, !dbg !664, !tbaa !622
  %12 = call double @llvm.fmuladd.f64(double %mul, double %conv8, double %11), !dbg !664
  store double %12, ptr %geometricDevTotal, align 8, !dbg !664, !tbaa !622
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !650
  br label %cleanup, !dbg !650

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #11, !dbg !650
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !639, !llvm.loop !649

while.end:                                        ; preds = %while.cond
  %13 = load double, ptr %geometricDevTotal, align 8, !dbg !665, !tbaa !622
  %14 = load ptr, ptr %hdr.addr, align 8, !dbg !666, !tbaa !317
  %totalCount10 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %14, i32 0, i32 10, !dbg !667
  %15 = load i64, ptr %totalCount10, align 8, !dbg !667, !tbaa !522
  %conv11 = sitofp i64 %15 to double, !dbg !668
  %div = fdiv double %13, %conv11, !dbg !669
  %call12 = call double @sqrt(double noundef %div) #11, !dbg !670
  store double %call12, ptr %retval, align 8, !dbg !671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !671

cleanup13:                                        ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %it) #11, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %geometricDevTotal) #11, !dbg !672
  call void @llvm.lifetime.end.p0(i64 8, ptr %mean) #11, !dbg !672
  %16 = load double, ptr %retval, align 8, !dbg !672
  ret double %16, !dbg !672

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define double @rd_hdr_histogram_mean(ptr noundef %hdr) #0 !dbg !673 {
entry:
  %retval = alloca double, align 8
  %hdr.addr = alloca ptr, align 8
  %total = alloca i64, align 8
  %it = alloca %struct.rd_hdr_iter_s, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !677, metadata !DIExpression()), !dbg !680
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #11, !dbg !681
  tail call void @llvm.dbg.declare(metadata ptr %total, metadata !678, metadata !DIExpression()), !dbg !682
  store i64 0, ptr %total, align 8, !dbg !682, !tbaa !354
  call void @llvm.lifetime.start.p0(i64 48, ptr %it) #11, !dbg !683
  tail call void @llvm.dbg.declare(metadata ptr %it, metadata !679, metadata !DIExpression()), !dbg !684
  call void @llvm.memset.p0.i64(ptr align 8 %it, i8 0, i64 48, i1 false), !dbg !684
  %hdr1 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 0, !dbg !685
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !685, !tbaa !317
  store ptr %0, ptr %hdr1, align 8, !dbg !685, !tbaa !627
  %subBucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 2, !dbg !685
  store i32 -1, ptr %subBucketIdx, align 4, !dbg !685, !tbaa !629
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !686, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %1, i32 0, i32 10, !dbg !688
  %2 = load i64, ptr %totalCount, align 8, !dbg !688, !tbaa !522
  %cmp = icmp eq i64 %2, 0, !dbg !689
  br i1 %cmp, label %if.then, label %if.end, !dbg !690

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8, !dbg !691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !691

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !692

while.cond:                                       ; preds = %if.end6, %if.end
  %call = call i32 @rd_hdr_iter_next(ptr noundef %it), !dbg !693
  %tobool = icmp ne i32 %call, 0, !dbg !692
  br i1 %tobool, label %while.body, label %while.end, !dbg !692

while.body:                                       ; preds = %while.cond
  %countAtIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !694
  %3 = load i64, ptr %countAtIdx, align 8, !dbg !694, !tbaa !645
  %cmp2 = icmp ne i64 %3, 0, !dbg !697
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !698

if.then3:                                         ; preds = %while.body
  %countAtIdx4 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !699
  %4 = load i64, ptr %countAtIdx4, align 8, !dbg !699, !tbaa !645
  %5 = load ptr, ptr %hdr.addr, align 8, !dbg !700, !tbaa !317
  %valueFromIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 5, !dbg !701
  %6 = load i64, ptr %valueFromIdx, align 8, !dbg !701, !tbaa !653
  %call5 = call i64 @rd_hdr_medianEquivalentValue(ptr noundef %5, i64 noundef %6), !dbg !702
  %mul = mul nsw i64 %4, %call5, !dbg !703
  %7 = load i64, ptr %total, align 8, !dbg !704, !tbaa !354
  %add = add nsw i64 %7, %mul, !dbg !704
  store i64 %add, ptr %total, align 8, !dbg !704, !tbaa !354
  br label %if.end6, !dbg !705

if.end6:                                          ; preds = %if.then3, %while.body
  br label %while.cond, !dbg !692, !llvm.loop !706

while.end:                                        ; preds = %while.cond
  %8 = load i64, ptr %total, align 8, !dbg !708, !tbaa !354
  %conv = sitofp i64 %8 to double, !dbg !709
  %9 = load ptr, ptr %hdr.addr, align 8, !dbg !710, !tbaa !317
  %totalCount7 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %9, i32 0, i32 10, !dbg !711
  %10 = load i64, ptr %totalCount7, align 8, !dbg !711, !tbaa !522
  %conv8 = sitofp i64 %10 to double, !dbg !712
  %div = fdiv double %conv, %conv8, !dbg !713
  store double %div, ptr %retval, align 8, !dbg !714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !714

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %it) #11, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #11, !dbg !715
  %11 = load double, ptr %retval, align 8, !dbg !715
  ret double %11, !dbg !715
}

; Function Attrs: nounwind uwtable
define internal i32 @rd_hdr_iter_next(ptr noundef %it) #0 !dbg !716 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca ptr, align 8
  %hdr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %it, ptr %it.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %it.addr, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !724
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !722, metadata !DIExpression()), !dbg !725
  %0 = load ptr, ptr %it.addr, align 8, !dbg !726, !tbaa !317
  %hdr1 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %0, i32 0, i32 0, !dbg !727
  %1 = load ptr, ptr %hdr1, align 8, !dbg !727, !tbaa !627
  store ptr %1, ptr %hdr, align 8, !dbg !725, !tbaa !317
  %2 = load ptr, ptr %it.addr, align 8, !dbg !728, !tbaa !317
  %countToIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %2, i32 0, i32 4, !dbg !728
  %3 = load i64, ptr %countToIdx, align 8, !dbg !728, !tbaa !730
  %4 = load ptr, ptr %hdr, align 8, !dbg !728, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %4, i32 0, i32 10, !dbg !728
  %5 = load i64, ptr %totalCount, align 8, !dbg !728, !tbaa !522
  %cmp = icmp sge i64 %3, %5, !dbg !728
  %conv = zext i1 %cmp to i32, !dbg !728
  %conv2 = sext i32 %conv to i64, !dbg !728
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !728
  %tobool = icmp ne i64 %expval, 0, !dbg !728
  br i1 %tobool, label %if.then, label %if.end, !dbg !731

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !732

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %it.addr, align 8, !dbg !733, !tbaa !317
  %subBucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %6, i32 0, i32 2, !dbg !734
  %7 = load i32, ptr %subBucketIdx, align 4, !dbg !735, !tbaa !629
  %inc = add nsw i32 %7, 1, !dbg !735
  store i32 %inc, ptr %subBucketIdx, align 4, !dbg !735, !tbaa !629
  %8 = load ptr, ptr %it.addr, align 8, !dbg !736, !tbaa !317
  %subBucketIdx3 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %8, i32 0, i32 2, !dbg !736
  %9 = load i32, ptr %subBucketIdx3, align 4, !dbg !736, !tbaa !629
  %10 = load ptr, ptr %hdr, align 8, !dbg !736, !tbaa !317
  %subBucketCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %10, i32 0, i32 7, !dbg !736
  %11 = load i32, ptr %subBucketCount, align 8, !dbg !736, !tbaa !508
  %cmp4 = icmp sge i32 %9, %11, !dbg !736
  %conv5 = zext i1 %cmp4 to i32, !dbg !736
  %conv6 = sext i32 %conv5 to i64, !dbg !736
  %expval7 = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !736
  %tobool8 = icmp ne i64 %expval7, 0, !dbg !736
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !738

if.then9:                                         ; preds = %if.end
  %12 = load ptr, ptr %hdr, align 8, !dbg !739, !tbaa !317
  %subBucketHalfCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %12, i32 0, i32 5, !dbg !741
  %13 = load i32, ptr %subBucketHalfCount, align 4, !dbg !741, !tbaa !498
  %14 = load ptr, ptr %it.addr, align 8, !dbg !742, !tbaa !317
  %subBucketIdx10 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %14, i32 0, i32 2, !dbg !743
  store i32 %13, ptr %subBucketIdx10, align 4, !dbg !744, !tbaa !629
  %15 = load ptr, ptr %it.addr, align 8, !dbg !745, !tbaa !317
  %bucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %15, i32 0, i32 1, !dbg !746
  %16 = load i32, ptr %bucketIdx, align 8, !dbg !747, !tbaa !748
  %inc11 = add nsw i32 %16, 1, !dbg !747
  store i32 %inc11, ptr %bucketIdx, align 8, !dbg !747, !tbaa !748
  br label %if.end12, !dbg !749

if.end12:                                         ; preds = %if.then9, %if.end
  %17 = load ptr, ptr %it.addr, align 8, !dbg !750, !tbaa !317
  %bucketIdx13 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %17, i32 0, i32 1, !dbg !750
  %18 = load i32, ptr %bucketIdx13, align 8, !dbg !750, !tbaa !748
  %19 = load ptr, ptr %hdr, align 8, !dbg !750, !tbaa !317
  %bucketCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %19, i32 0, i32 8, !dbg !750
  %20 = load i32, ptr %bucketCount, align 4, !dbg !750, !tbaa !513
  %cmp14 = icmp sge i32 %18, %20, !dbg !750
  %conv15 = zext i1 %cmp14 to i32, !dbg !750
  %conv16 = sext i32 %conv15 to i64, !dbg !750
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !750
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !750
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !752

if.then19:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !753

if.end20:                                         ; preds = %if.end12
  %21 = load ptr, ptr %hdr, align 8, !dbg !754, !tbaa !317
  %22 = load ptr, ptr %it.addr, align 8, !dbg !755, !tbaa !317
  %bucketIdx21 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %22, i32 0, i32 1, !dbg !756
  %23 = load i32, ptr %bucketIdx21, align 8, !dbg !756, !tbaa !748
  %24 = load ptr, ptr %it.addr, align 8, !dbg !757, !tbaa !317
  %subBucketIdx22 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %24, i32 0, i32 2, !dbg !758
  %25 = load i32, ptr %subBucketIdx22, align 4, !dbg !758, !tbaa !629
  %call = call i64 @rd_hdr_getCountAtIndex(ptr noundef %21, i32 noundef %23, i32 noundef %25), !dbg !759
  %26 = load ptr, ptr %it.addr, align 8, !dbg !760, !tbaa !317
  %countAtIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %26, i32 0, i32 3, !dbg !761
  store i64 %call, ptr %countAtIdx, align 8, !dbg !762, !tbaa !645
  %27 = load ptr, ptr %it.addr, align 8, !dbg !763, !tbaa !317
  %countAtIdx23 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %27, i32 0, i32 3, !dbg !764
  %28 = load i64, ptr %countAtIdx23, align 8, !dbg !764, !tbaa !645
  %29 = load ptr, ptr %it.addr, align 8, !dbg !765, !tbaa !317
  %countToIdx24 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %29, i32 0, i32 4, !dbg !766
  %30 = load i64, ptr %countToIdx24, align 8, !dbg !767, !tbaa !730
  %add = add nsw i64 %30, %28, !dbg !767
  store i64 %add, ptr %countToIdx24, align 8, !dbg !767, !tbaa !730
  %31 = load ptr, ptr %hdr, align 8, !dbg !768, !tbaa !317
  %32 = load ptr, ptr %it.addr, align 8, !dbg !769, !tbaa !317
  %bucketIdx25 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %32, i32 0, i32 1, !dbg !770
  %33 = load i32, ptr %bucketIdx25, align 8, !dbg !770, !tbaa !748
  %34 = load ptr, ptr %it.addr, align 8, !dbg !771, !tbaa !317
  %subBucketIdx26 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %34, i32 0, i32 2, !dbg !772
  %35 = load i32, ptr %subBucketIdx26, align 4, !dbg !772, !tbaa !629
  %call27 = call i64 @rd_hdr_valueFromIndex(ptr noundef %31, i32 noundef %33, i32 noundef %35), !dbg !773
  %36 = load ptr, ptr %it.addr, align 8, !dbg !774, !tbaa !317
  %valueFromIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %36, i32 0, i32 5, !dbg !775
  store i64 %call27, ptr %valueFromIdx, align 8, !dbg !776, !tbaa !653
  %37 = load ptr, ptr %hdr, align 8, !dbg !777, !tbaa !317
  %38 = load ptr, ptr %it.addr, align 8, !dbg !778, !tbaa !317
  %valueFromIdx28 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %38, i32 0, i32 5, !dbg !779
  %39 = load i64, ptr %valueFromIdx28, align 8, !dbg !779, !tbaa !653
  %call29 = call i64 @rd_hdr_highestEquivalentValue(ptr noundef %37, i64 noundef %39), !dbg !780
  %40 = load ptr, ptr %it.addr, align 8, !dbg !781, !tbaa !317
  %highestEquivalentValue = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %40, i32 0, i32 6, !dbg !782
  store i64 %call29, ptr %highestEquivalentValue, align 8, !dbg !783, !tbaa !784
  store i32 1, ptr %retval, align 4, !dbg !785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !785

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !786
  %41 = load i32, ptr %retval, align 4, !dbg !786
  ret i32 %41, !dbg !786
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_medianEquivalentValue(ptr noundef %hdr, i64 noundef %v) #1 !dbg !787 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !791, metadata !DIExpression()), !dbg !793
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !792, metadata !DIExpression()), !dbg !794
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !795, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !796, !tbaa !354
  %call = call i64 @rd_hdr_lowestEquivalentValue(ptr noundef %0, i64 noundef %1), !dbg !797
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !798, !tbaa !317
  %3 = load i64, ptr %v.addr, align 8, !dbg !799, !tbaa !354
  %call1 = call i64 @rd_hdr_sizeOfEquivalentValueRange(ptr noundef %2, i64 noundef %3), !dbg !800
  %shr = ashr i64 %call1, 1, !dbg !801
  %add = add nsw i64 %call, %shr, !dbg !802
  ret i64 %add, !dbg !803
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare !dbg !804 double @sqrt(double noundef) #3

; Function Attrs: nounwind uwtable
define i64 @rd_hdr_histogram_max(ptr noundef %hdr) #0 !dbg !805 {
entry:
  %hdr.addr = alloca ptr, align 8
  %vmax = alloca i64, align 8
  %it = alloca %struct.rd_hdr_iter_s, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !809, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 8, ptr %vmax) #11, !dbg !813
  tail call void @llvm.dbg.declare(metadata ptr %vmax, metadata !810, metadata !DIExpression()), !dbg !814
  store i64 0, ptr %vmax, align 8, !dbg !814, !tbaa !354
  call void @llvm.lifetime.start.p0(i64 48, ptr %it) #11, !dbg !815
  tail call void @llvm.dbg.declare(metadata ptr %it, metadata !811, metadata !DIExpression()), !dbg !816
  call void @llvm.memset.p0.i64(ptr align 8 %it, i8 0, i64 48, i1 false), !dbg !816
  %hdr1 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 0, !dbg !817
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !817, !tbaa !317
  store ptr %0, ptr %hdr1, align 8, !dbg !817, !tbaa !627
  %subBucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 2, !dbg !817
  store i32 -1, ptr %subBucketIdx, align 4, !dbg !817, !tbaa !629
  br label %while.cond, !dbg !818

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @rd_hdr_iter_next(ptr noundef %it), !dbg !819
  %tobool = icmp ne i32 %call, 0, !dbg !818
  br i1 %tobool, label %while.body, label %while.end, !dbg !818

while.body:                                       ; preds = %while.cond
  %countAtIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !820
  %1 = load i64, ptr %countAtIdx, align 8, !dbg !820, !tbaa !645
  %cmp = icmp ne i64 %1, 0, !dbg !823
  br i1 %cmp, label %if.then, label %if.end, !dbg !824

if.then:                                          ; preds = %while.body
  %highestEquivalentValue = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 6, !dbg !825
  %2 = load i64, ptr %highestEquivalentValue, align 8, !dbg !825, !tbaa !784
  store i64 %2, ptr %vmax, align 8, !dbg !826, !tbaa !354
  br label %if.end, !dbg !827

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !818, !llvm.loop !828

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %hdr.addr, align 8, !dbg !830, !tbaa !317
  %4 = load i64, ptr %vmax, align 8, !dbg !831, !tbaa !354
  %call2 = call i64 @rd_hdr_highestEquivalentValue(ptr noundef %3, i64 noundef %4), !dbg !832
  call void @llvm.lifetime.end.p0(i64 48, ptr %it) #11, !dbg !833
  call void @llvm.lifetime.end.p0(i64 8, ptr %vmax) #11, !dbg !833
  ret i64 %call2, !dbg !834
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_highestEquivalentValue(ptr noundef %hdr, i64 noundef %v) #1 !dbg !835 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !837, metadata !DIExpression()), !dbg !839
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !838, metadata !DIExpression()), !dbg !840
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !841, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !842, !tbaa !354
  %call = call i64 @rd_hdr_nextNonEquivalentValue(ptr noundef %0, i64 noundef %1), !dbg !843
  %sub = sub nsw i64 %call, 1, !dbg !844
  ret i64 %sub, !dbg !845
}

; Function Attrs: nounwind uwtable
define i64 @rd_hdr_histogram_min(ptr noundef %hdr) #0 !dbg !846 {
entry:
  %hdr.addr = alloca ptr, align 8
  %vmin = alloca i64, align 8
  %it = alloca %struct.rd_hdr_iter_s, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !848, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 8, ptr %vmin) #11, !dbg !852
  tail call void @llvm.dbg.declare(metadata ptr %vmin, metadata !849, metadata !DIExpression()), !dbg !853
  store i64 0, ptr %vmin, align 8, !dbg !853, !tbaa !354
  call void @llvm.lifetime.start.p0(i64 48, ptr %it) #11, !dbg !854
  tail call void @llvm.dbg.declare(metadata ptr %it, metadata !850, metadata !DIExpression()), !dbg !855
  call void @llvm.memset.p0.i64(ptr align 8 %it, i8 0, i64 48, i1 false), !dbg !855
  %hdr1 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 0, !dbg !856
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !856, !tbaa !317
  store ptr %0, ptr %hdr1, align 8, !dbg !856, !tbaa !627
  %subBucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 2, !dbg !856
  store i32 -1, ptr %subBucketIdx, align 4, !dbg !856, !tbaa !629
  br label %while.cond, !dbg !857

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @rd_hdr_iter_next(ptr noundef %it), !dbg !858
  %tobool = icmp ne i32 %call, 0, !dbg !857
  br i1 %tobool, label %while.body, label %while.end, !dbg !857

while.body:                                       ; preds = %while.cond
  %countAtIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !859
  %1 = load i64, ptr %countAtIdx, align 8, !dbg !859, !tbaa !645
  %cmp = icmp ne i64 %1, 0, !dbg !862
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !863

land.lhs.true:                                    ; preds = %while.body
  %2 = load i64, ptr %vmin, align 8, !dbg !864, !tbaa !354
  %cmp2 = icmp eq i64 %2, 0, !dbg !865
  br i1 %cmp2, label %if.then, label %if.end, !dbg !866

if.then:                                          ; preds = %land.lhs.true
  %highestEquivalentValue = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 6, !dbg !867
  %3 = load i64, ptr %highestEquivalentValue, align 8, !dbg !867, !tbaa !784
  store i64 %3, ptr %vmin, align 8, !dbg !869, !tbaa !354
  br label %while.end, !dbg !870

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !dbg !857, !llvm.loop !871

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !873, !tbaa !317
  %5 = load i64, ptr %vmin, align 8, !dbg !874, !tbaa !354
  %call3 = call i64 @rd_hdr_lowestEquivalentValue(ptr noundef %4, i64 noundef %5), !dbg !875
  call void @llvm.lifetime.end.p0(i64 48, ptr %it) #11, !dbg !876
  call void @llvm.lifetime.end.p0(i64 8, ptr %vmin) #11, !dbg !876
  ret i64 %call3, !dbg !877
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_lowestEquivalentValue(ptr noundef %hdr, i64 noundef %v) #1 !dbg !878 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %bucketIdx = alloca i32, align 4
  %subBucketIdx = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !880, metadata !DIExpression()), !dbg !884
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !881, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketIdx) #11, !dbg !886
  tail call void @llvm.dbg.declare(metadata ptr %bucketIdx, metadata !882, metadata !DIExpression()), !dbg !887
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !888, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !889, !tbaa !354
  %call = call i32 @rd_hdr_getBucketIndex(ptr noundef %0, i64 noundef %1), !dbg !890
  store i32 %call, ptr %bucketIdx, align 4, !dbg !887, !tbaa !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketIdx) #11, !dbg !891
  tail call void @llvm.dbg.declare(metadata ptr %subBucketIdx, metadata !883, metadata !DIExpression()), !dbg !892
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !893, !tbaa !317
  %3 = load i64, ptr %v.addr, align 8, !dbg !894, !tbaa !354
  %4 = load i32, ptr %bucketIdx, align 4, !dbg !895, !tbaa !358
  %call1 = call i32 @rd_hdr_getSubBucketIdx(ptr noundef %2, i64 noundef %3, i32 noundef %4), !dbg !896
  store i32 %call1, ptr %subBucketIdx, align 4, !dbg !892, !tbaa !358
  %5 = load ptr, ptr %hdr.addr, align 8, !dbg !897, !tbaa !317
  %6 = load i32, ptr %bucketIdx, align 4, !dbg !898, !tbaa !358
  %7 = load i32, ptr %subBucketIdx, align 4, !dbg !899, !tbaa !358
  %call2 = call i64 @rd_hdr_valueFromIndex(ptr noundef %5, i32 noundef %6, i32 noundef %7), !dbg !900
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketIdx) #11, !dbg !901
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketIdx) #11, !dbg !901
  ret i64 %call2, !dbg !902
}

; Function Attrs: nounwind uwtable
define i32 @rd_hdr_histogram_record(ptr noundef %hdr, i64 noundef %v) #0 !dbg !903 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !907, metadata !DIExpression()), !dbg !910
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !908, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #11, !dbg !912
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !909, metadata !DIExpression()), !dbg !913
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !914, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !915, !tbaa !354
  %call = call i32 @rd_hdr_countsIndexFor(ptr noundef %0, i64 noundef %1), !dbg !916
  store i32 %call, ptr %idx, align 4, !dbg !913, !tbaa !358
  %2 = load i32, ptr %idx, align 4, !dbg !917, !tbaa !358
  %cmp = icmp slt i32 %2, 0, !dbg !919
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !920

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %hdr.addr, align 8, !dbg !921, !tbaa !317
  %countsLen = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %3, i32 0, i32 9, !dbg !922
  %4 = load i32, ptr %countsLen, align 8, !dbg !922, !tbaa !518
  %5 = load i32, ptr %idx, align 4, !dbg !923, !tbaa !358
  %cmp1 = icmp sle i32 %4, %5, !dbg !924
  br i1 %cmp1, label %if.then, label %if.end9, !dbg !925

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %hdr.addr, align 8, !dbg !926, !tbaa !317
  %outOfRangeCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %6, i32 0, i32 12, !dbg !928
  %7 = load i64, ptr %outOfRangeCount, align 8, !dbg !929, !tbaa !930
  %inc = add nsw i64 %7, 1, !dbg !929
  store i64 %inc, ptr %outOfRangeCount, align 8, !dbg !929, !tbaa !930
  %8 = load i64, ptr %v.addr, align 8, !dbg !931, !tbaa !354
  %9 = load ptr, ptr %hdr.addr, align 8, !dbg !933, !tbaa !317
  %highestOutOfRange = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %9, i32 0, i32 14, !dbg !934
  %10 = load i64, ptr %highestOutOfRange, align 8, !dbg !934, !tbaa !532
  %cmp2 = icmp sgt i64 %8, %10, !dbg !935
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !936

if.then3:                                         ; preds = %if.then
  %11 = load i64, ptr %v.addr, align 8, !dbg !937, !tbaa !354
  %12 = load ptr, ptr %hdr.addr, align 8, !dbg !938, !tbaa !317
  %highestOutOfRange4 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %12, i32 0, i32 14, !dbg !939
  store i64 %11, ptr %highestOutOfRange4, align 8, !dbg !940, !tbaa !532
  br label %if.end, !dbg !938

if.end:                                           ; preds = %if.then3, %if.then
  %13 = load i64, ptr %v.addr, align 8, !dbg !941, !tbaa !354
  %14 = load ptr, ptr %hdr.addr, align 8, !dbg !943, !tbaa !317
  %lowestOutOfRange = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %14, i32 0, i32 13, !dbg !944
  %15 = load i64, ptr %lowestOutOfRange, align 8, !dbg !944, !tbaa !527
  %cmp5 = icmp slt i64 %13, %15, !dbg !945
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !946

if.then6:                                         ; preds = %if.end
  %16 = load i64, ptr %v.addr, align 8, !dbg !947, !tbaa !354
  %17 = load ptr, ptr %hdr.addr, align 8, !dbg !948, !tbaa !317
  %lowestOutOfRange7 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %17, i32 0, i32 13, !dbg !949
  store i64 %16, ptr %lowestOutOfRange7, align 8, !dbg !950, !tbaa !527
  br label %if.end8, !dbg !948

if.end8:                                          ; preds = %if.then6, %if.end
  store i32 0, ptr %retval, align 4, !dbg !951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !951

if.end9:                                          ; preds = %lor.lhs.false
  %18 = load ptr, ptr %hdr.addr, align 8, !dbg !952, !tbaa !317
  %counts = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %18, i32 0, i32 11, !dbg !953
  %19 = load ptr, ptr %counts, align 8, !dbg !953, !tbaa !459
  %20 = load i32, ptr %idx, align 4, !dbg !954, !tbaa !358
  %idxprom = sext i32 %20 to i64, !dbg !952
  %arrayidx = getelementptr inbounds i64, ptr %19, i64 %idxprom, !dbg !952
  %21 = load i64, ptr %arrayidx, align 8, !dbg !955, !tbaa !354
  %inc10 = add nsw i64 %21, 1, !dbg !955
  store i64 %inc10, ptr %arrayidx, align 8, !dbg !955, !tbaa !354
  %22 = load ptr, ptr %hdr.addr, align 8, !dbg !956, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %22, i32 0, i32 10, !dbg !957
  %23 = load i64, ptr %totalCount, align 8, !dbg !958, !tbaa !522
  %inc11 = add nsw i64 %23, 1, !dbg !958
  store i64 %inc11, ptr %totalCount, align 8, !dbg !958, !tbaa !522
  store i32 1, ptr %retval, align 4, !dbg !959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !959

cleanup:                                          ; preds = %if.end9, %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #11, !dbg !960
  %24 = load i32, ptr %retval, align 4, !dbg !960
  ret i32 %24, !dbg !960
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rd_hdr_countsIndexFor(ptr noundef %hdr, i64 noundef %v) #1 !dbg !961 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %bucketIdx = alloca i32, align 4
  %subBucketIdx = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !965, metadata !DIExpression()), !dbg !969
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !966, metadata !DIExpression()), !dbg !970
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketIdx) #11, !dbg !971
  tail call void @llvm.dbg.declare(metadata ptr %bucketIdx, metadata !967, metadata !DIExpression()), !dbg !972
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !973, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !974, !tbaa !354
  %call = call i32 @rd_hdr_getBucketIndex(ptr noundef %0, i64 noundef %1), !dbg !975
  store i32 %call, ptr %bucketIdx, align 4, !dbg !972, !tbaa !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketIdx) #11, !dbg !976
  tail call void @llvm.dbg.declare(metadata ptr %subBucketIdx, metadata !968, metadata !DIExpression()), !dbg !977
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !978, !tbaa !317
  %3 = load i64, ptr %v.addr, align 8, !dbg !979, !tbaa !354
  %4 = load i32, ptr %bucketIdx, align 4, !dbg !980, !tbaa !358
  %call1 = call i32 @rd_hdr_getSubBucketIdx(ptr noundef %2, i64 noundef %3, i32 noundef %4), !dbg !981
  store i32 %call1, ptr %subBucketIdx, align 4, !dbg !977, !tbaa !358
  %5 = load ptr, ptr %hdr.addr, align 8, !dbg !982, !tbaa !317
  %6 = load i32, ptr %bucketIdx, align 4, !dbg !983, !tbaa !358
  %7 = load i32, ptr %subBucketIdx, align 4, !dbg !984, !tbaa !358
  %call2 = call i32 @rd_hdr_countsIndex(ptr noundef %5, i32 noundef %6, i32 noundef %7), !dbg !985
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketIdx) #11, !dbg !986
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketIdx) #11, !dbg !986
  ret i32 %call2, !dbg !987
}

; Function Attrs: nounwind uwtable
define i64 @rd_hdr_histogram_quantile(ptr noundef %hdr, double noundef %q) #0 !dbg !988 {
entry:
  %retval = alloca i64, align 8
  %hdr.addr = alloca ptr, align 8
  %q.addr = alloca double, align 8
  %total = alloca i64, align 8
  %countAtPercentile = alloca i64, align 8
  %it = alloca %struct.rd_hdr_iter_s, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !992, metadata !DIExpression()), !dbg !997
  store double %q, ptr %q.addr, align 8, !tbaa !622
  tail call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !993, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #11, !dbg !999
  tail call void @llvm.dbg.declare(metadata ptr %total, metadata !994, metadata !DIExpression()), !dbg !1000
  store i64 0, ptr %total, align 8, !dbg !1000, !tbaa !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %countAtPercentile) #11, !dbg !1001
  tail call void @llvm.dbg.declare(metadata ptr %countAtPercentile, metadata !995, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 48, ptr %it) #11, !dbg !1003
  tail call void @llvm.dbg.declare(metadata ptr %it, metadata !996, metadata !DIExpression()), !dbg !1004
  call void @llvm.memset.p0.i64(ptr align 8 %it, i8 0, i64 48, i1 false), !dbg !1004
  %hdr1 = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 0, !dbg !1005
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !1005, !tbaa !317
  store ptr %0, ptr %hdr1, align 8, !dbg !1005, !tbaa !627
  %subBucketIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 2, !dbg !1005
  store i32 -1, ptr %subBucketIdx, align 4, !dbg !1005, !tbaa !629
  %1 = load double, ptr %q.addr, align 8, !dbg !1006, !tbaa !622
  %cmp = fcmp ogt double %1, 1.000000e+02, !dbg !1008
  br i1 %cmp, label %if.then, label %if.end, !dbg !1009

if.then:                                          ; preds = %entry
  store double 1.000000e+02, ptr %q.addr, align 8, !dbg !1010, !tbaa !622
  br label %if.end, !dbg !1011

if.end:                                           ; preds = %if.then, %entry
  %2 = load double, ptr %q.addr, align 8, !dbg !1012, !tbaa !622
  %div = fdiv double %2, 1.000000e+02, !dbg !1013
  %3 = load ptr, ptr %hdr.addr, align 8, !dbg !1014, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %3, i32 0, i32 10, !dbg !1015
  %4 = load i64, ptr %totalCount, align 8, !dbg !1015, !tbaa !522
  %conv = sitofp i64 %4 to double, !dbg !1016
  %5 = call double @llvm.fmuladd.f64(double %div, double %conv, double 5.000000e-01), !dbg !1017
  %conv2 = fptosi double %5 to i64, !dbg !1018
  store i64 %conv2, ptr %countAtPercentile, align 8, !dbg !1019, !tbaa !354
  br label %while.cond, !dbg !1020

while.cond:                                       ; preds = %if.end7, %if.end
  %call = call i32 @rd_hdr_iter_next(ptr noundef %it), !dbg !1021
  %tobool = icmp ne i32 %call, 0, !dbg !1020
  br i1 %tobool, label %while.body, label %while.end, !dbg !1020

while.body:                                       ; preds = %while.cond
  %countAtIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 3, !dbg !1022
  %6 = load i64, ptr %countAtIdx, align 8, !dbg !1022, !tbaa !645
  %7 = load i64, ptr %total, align 8, !dbg !1024, !tbaa !354
  %add = add nsw i64 %7, %6, !dbg !1024
  store i64 %add, ptr %total, align 8, !dbg !1024, !tbaa !354
  %8 = load i64, ptr %total, align 8, !dbg !1025, !tbaa !354
  %9 = load i64, ptr %countAtPercentile, align 8, !dbg !1027, !tbaa !354
  %cmp3 = icmp sge i64 %8, %9, !dbg !1028
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !1029

if.then5:                                         ; preds = %while.body
  %10 = load ptr, ptr %hdr.addr, align 8, !dbg !1030, !tbaa !317
  %valueFromIdx = getelementptr inbounds %struct.rd_hdr_iter_s, ptr %it, i32 0, i32 5, !dbg !1031
  %11 = load i64, ptr %valueFromIdx, align 8, !dbg !1031, !tbaa !653
  %call6 = call i64 @rd_hdr_highestEquivalentValue(ptr noundef %10, i64 noundef %11), !dbg !1032
  store i64 %call6, ptr %retval, align 8, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end7:                                          ; preds = %while.body
  br label %while.cond, !dbg !1020, !llvm.loop !1034

while.end:                                        ; preds = %while.cond
  store i64 0, ptr %retval, align 8, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1036

cleanup:                                          ; preds = %while.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 48, ptr %it) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %countAtPercentile) #11, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #11, !dbg !1037
  %12 = load i64, ptr %retval, align 8, !dbg !1037
  ret i64 %12, !dbg !1037
}

; Function Attrs: nounwind uwtable
define i32 @unittest_rdhdrhistogram() #0 !dbg !1038 {
entry:
  %fails = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fails) #11, !dbg !1043
  tail call void @llvm.dbg.declare(metadata ptr %fails, metadata !1042, metadata !DIExpression()), !dbg !1044
  store i32 0, ptr %fails, align 4, !dbg !1044, !tbaa !358
  %call = call i32 @ut_high_sigfig(), !dbg !1045
  %0 = load i32, ptr %fails, align 4, !dbg !1046, !tbaa !358
  %add = add nsw i32 %0, %call, !dbg !1046
  store i32 %add, ptr %fails, align 4, !dbg !1046, !tbaa !358
  %call1 = call i32 @ut_quantile(), !dbg !1047
  %1 = load i32, ptr %fails, align 4, !dbg !1048, !tbaa !358
  %add2 = add nsw i32 %1, %call1, !dbg !1048
  store i32 %add2, ptr %fails, align 4, !dbg !1048, !tbaa !358
  %call3 = call i32 @ut_mean(), !dbg !1049
  %2 = load i32, ptr %fails, align 4, !dbg !1050, !tbaa !358
  %add4 = add nsw i32 %2, %call3, !dbg !1050
  store i32 %add4, ptr %fails, align 4, !dbg !1050, !tbaa !358
  %call5 = call i32 @ut_stddev(), !dbg !1051
  %3 = load i32, ptr %fails, align 4, !dbg !1052, !tbaa !358
  %add6 = add nsw i32 %3, %call5, !dbg !1052
  store i32 %add6, ptr %fails, align 4, !dbg !1052, !tbaa !358
  %call7 = call i32 @ut_totalcount(), !dbg !1053
  %4 = load i32, ptr %fails, align 4, !dbg !1054, !tbaa !358
  %add8 = add nsw i32 %4, %call7, !dbg !1054
  store i32 %add8, ptr %fails, align 4, !dbg !1054, !tbaa !358
  %call9 = call i32 @ut_max(), !dbg !1055
  %5 = load i32, ptr %fails, align 4, !dbg !1056, !tbaa !358
  %add10 = add nsw i32 %5, %call9, !dbg !1056
  store i32 %add10, ptr %fails, align 4, !dbg !1056, !tbaa !358
  %call11 = call i32 @ut_min(), !dbg !1057
  %6 = load i32, ptr %fails, align 4, !dbg !1058, !tbaa !358
  %add12 = add nsw i32 %6, %call11, !dbg !1058
  store i32 %add12, ptr %fails, align 4, !dbg !1058, !tbaa !358
  %call13 = call i32 @ut_reset(), !dbg !1059
  %7 = load i32, ptr %fails, align 4, !dbg !1060, !tbaa !358
  %add14 = add nsw i32 %7, %call13, !dbg !1060
  store i32 %add14, ptr %fails, align 4, !dbg !1060, !tbaa !358
  %call15 = call i32 @ut_nan(), !dbg !1061
  %8 = load i32, ptr %fails, align 4, !dbg !1062, !tbaa !358
  %add16 = add nsw i32 %8, %call15, !dbg !1062
  store i32 %add16, ptr %fails, align 4, !dbg !1062, !tbaa !358
  %call17 = call i32 @ut_sigfigs(), !dbg !1063
  %9 = load i32, ptr %fails, align 4, !dbg !1064, !tbaa !358
  %add18 = add nsw i32 %9, %call17, !dbg !1064
  store i32 %add18, ptr %fails, align 4, !dbg !1064, !tbaa !358
  %call19 = call i32 @ut_minmax_trackable(), !dbg !1065
  %10 = load i32, ptr %fails, align 4, !dbg !1066, !tbaa !358
  %add20 = add nsw i32 %10, %call19, !dbg !1066
  store i32 %add20, ptr %fails, align 4, !dbg !1066, !tbaa !358
  %call21 = call i32 @ut_unitmagnitude_overflow(), !dbg !1067
  %11 = load i32, ptr %fails, align 4, !dbg !1068, !tbaa !358
  %add22 = add nsw i32 %11, %call21, !dbg !1068
  store i32 %add22, ptr %fails, align 4, !dbg !1068, !tbaa !358
  %call23 = call i32 @ut_subbucketmask_overflow(), !dbg !1069
  %12 = load i32, ptr %fails, align 4, !dbg !1070, !tbaa !358
  %add24 = add nsw i32 %12, %call23, !dbg !1070
  store i32 %add24, ptr %fails, align 4, !dbg !1070, !tbaa !358
  %13 = load i32, ptr %fails, align 4, !dbg !1071, !tbaa !358
  call void @llvm.lifetime.end.p0(i64 4, ptr %fails) #11, !dbg !1072
  ret i32 %13, !dbg !1073
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_high_sigfig() #0 !dbg !1074 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %input = alloca [10 x i64], align 16
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %exp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1076, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 80, ptr %input) #11, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %input, metadata !1077, metadata !DIExpression()), !dbg !1086
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %input, ptr align 16 @__const.ut_high_sigfig.input, i64 80, i1 false), !dbg !1086
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1087
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1080, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1089
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1081, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #11, !dbg !1091
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1082, metadata !DIExpression()), !dbg !1092
  store i64 1048575, ptr %exp, align 8, !dbg !1092, !tbaa !354
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 459876, i64 noundef 12718782, i32 noundef 5), !dbg !1093
  store ptr %call, ptr %hdr, align 8, !dbg !1094, !tbaa !317
  store i64 0, ptr %i, align 8, !dbg !1095, !tbaa !354
  br label %for.cond, !dbg !1097

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1098, !tbaa !354
  %cmp = icmp ult i64 %0, 10, !dbg !1100
  br i1 %cmp, label %for.body, label %for.end, !dbg !1101

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %hdr, align 8, !dbg !1102, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1104, !tbaa !354
  %arrayidx = getelementptr inbounds [10 x i64], ptr %input, i64 0, i64 %2, !dbg !1105
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1105, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %3), !dbg !1106
  br label %for.inc, !dbg !1107

for.inc:                                          ; preds = %for.body
  %4 = load i64, ptr %i, align 8, !dbg !1108, !tbaa !354
  %inc = add i64 %4, 1, !dbg !1108
  store i64 %inc, ptr %i, align 8, !dbg !1108, !tbaa !354
  br label %for.cond, !dbg !1109, !llvm.loop !1110

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %hdr, align 8, !dbg !1112, !tbaa !317
  %call2 = call i64 @rd_hdr_histogram_quantile(ptr noundef %5, double noundef 5.000000e+01), !dbg !1113
  store i64 %call2, ptr %v, align 8, !dbg !1114, !tbaa !354
  br label %do.body, !dbg !1115

do.body:                                          ; preds = %for.end
  %6 = load i64, ptr %v, align 8, !dbg !1116, !tbaa !354
  %cmp3 = icmp eq i64 %6, 1048575, !dbg !1116
  br i1 %cmp3, label %if.end11, label %if.then, !dbg !1119

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr @stderr, align 8, !dbg !1120, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 465, ptr noundef @__FUNCTION__.ut_high_sigfig), !dbg !1120
  %8 = load ptr, ptr @stderr, align 8, !dbg !1120, !tbaa !317
  %9 = load i64, ptr %v, align 8, !dbg !1120, !tbaa !354
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.4, i64 noundef %9, i64 noundef 1048575), !dbg !1120
  %10 = load ptr, ptr @stderr, align 8, !dbg !1120, !tbaa !317
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5), !dbg !1120
  %11 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1122, !tbaa !1124
  %tobool = icmp ne i8 %11, 0, !dbg !1122
  br i1 %tobool, label %if.then7, label %if.end10, !dbg !1120

if.then7:                                         ; preds = %if.then
  %12 = load i64, ptr %v, align 8, !dbg !1125, !tbaa !354
  %cmp8 = icmp eq i64 %12, 1048575, !dbg !1125
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1128

if.then9:                                         ; preds = %if.then7
  br label %if.end, !dbg !1128

if.else:                                          ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 465, ptr noundef @__PRETTY_FUNCTION__.ut_high_sigfig) #13, !dbg !1125
  unreachable, !dbg !1125

if.end:                                           ; preds = %if.then9
  br label %if.end10, !dbg !1122

if.end10:                                         ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1120

if.end11:                                         ; preds = %do.body
  br label %do.cond, !dbg !1119

do.cond:                                          ; preds = %if.end11
  br label %do.end, !dbg !1119

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %hdr, align 8, !dbg !1129, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %13), !dbg !1130
  br label %do.body12, !dbg !1131

do.body12:                                        ; preds = %do.end
  %14 = load ptr, ptr @stderr, align 8, !dbg !1132, !tbaa !317
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 468, ptr noundef @__FUNCTION__.ut_high_sigfig), !dbg !1132
  store i32 0, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1132

do.cond14:                                        ; No predecessors!
  br label %do.end15, !dbg !1132

do.end15:                                         ; preds = %do.cond14
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1134
  br label %cleanup, !dbg !1134

cleanup:                                          ; preds = %do.end15, %do.body12, %if.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #11, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 80, ptr %input) #11, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1134
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %15 = load i32, ptr %retval, align 4, !dbg !1134
  ret i32 %15, !dbg !1134

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_quantile() #0 !dbg !1135 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %exp = alloca [7 x %struct.anon], align 16
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %v = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1137, metadata !DIExpression()), !dbg !1155
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1156
  store ptr %call, ptr %hdr, align 8, !dbg !1155, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1157
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1138, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 112, ptr %exp) #11, !dbg !1159
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1139, metadata !DIExpression()), !dbg !1160
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %exp, ptr align 16 @__const.ut_quantile.exp, i64 112, i1 false), !dbg !1160
  store i64 0, ptr %i, align 8, !dbg !1161, !tbaa !354
  br label %for.cond, !dbg !1162

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1163, !tbaa !354
  %cmp = icmp ult i64 %0, 1000000, !dbg !1164
  br i1 %cmp, label %for.body, label %for.end, !dbg !1165

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1146, metadata !DIExpression()), !dbg !1167
  %1 = load ptr, ptr %hdr, align 8, !dbg !1168, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1169, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1170
  store i32 %call1, ptr %r, align 4, !dbg !1167, !tbaa !358
  br label %do.body, !dbg !1171

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1172, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1172
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1175

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1176, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 484, ptr noundef @__FUNCTION__.ut_quantile), !dbg !1176
  %5 = load ptr, ptr @stderr, align 8, !dbg !1176, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1176, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1176
  %7 = load ptr, ptr @stderr, align 8, !dbg !1176, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1176
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1178, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1178
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1176

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1180, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1180
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1183

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1183

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 484, ptr noundef @__PRETTY_FUNCTION__.ut_quantile) #13, !dbg !1180
  unreachable, !dbg !1180

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1178

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1176

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1175

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1175

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1184
  br label %cleanup, !dbg !1184

cleanup:                                          ; preds = %do.end, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1184
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1185

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !dbg !1186, !tbaa !354
  %inc = add i64 %10, 1, !dbg !1186
  store i64 %inc, ptr %i, align 8, !dbg !1186, !tbaa !354
  br label %for.cond, !dbg !1187, !llvm.loop !1188

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !1190, !tbaa !354
  br label %for.cond11, !dbg !1191

for.cond11:                                       ; preds = %for.inc42, %for.end
  %11 = load i64, ptr %i, align 8, !dbg !1192, !tbaa !354
  %cmp12 = icmp ult i64 %11, 7, !dbg !1193
  br i1 %cmp12, label %for.body13, label %for.end44, !dbg !1194

for.body13:                                       ; preds = %for.cond11
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1195
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1150, metadata !DIExpression()), !dbg !1196
  %12 = load ptr, ptr %hdr, align 8, !dbg !1197, !tbaa !317
  %13 = load i64, ptr %i, align 8, !dbg !1198, !tbaa !354
  %arrayidx = getelementptr inbounds [7 x %struct.anon], ptr %exp, i64 0, i64 %13, !dbg !1199
  %q = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !1200
  %14 = load double, ptr %q, align 16, !dbg !1200, !tbaa !1201
  %call14 = call i64 @rd_hdr_histogram_quantile(ptr noundef %12, double noundef %14), !dbg !1203
  store i64 %call14, ptr %v, align 8, !dbg !1196, !tbaa !354
  br label %do.body15, !dbg !1204

do.body15:                                        ; preds = %for.body13
  %15 = load i64, ptr %v, align 8, !dbg !1205, !tbaa !354
  %16 = load i64, ptr %i, align 8, !dbg !1205, !tbaa !354
  %arrayidx16 = getelementptr inbounds [7 x %struct.anon], ptr %exp, i64 0, i64 %16, !dbg !1205
  %v17 = getelementptr inbounds %struct.anon, ptr %arrayidx16, i32 0, i32 1, !dbg !1205
  %17 = load i64, ptr %v17, align 8, !dbg !1205, !tbaa !1208
  %cmp18 = icmp eq i64 %15, %17, !dbg !1205
  br i1 %cmp18, label %if.end36, label %if.then19, !dbg !1209

if.then19:                                        ; preds = %do.body15
  %18 = load ptr, ptr @stderr, align 8, !dbg !1210, !tbaa !317
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.11, ptr noundef @.str.3, i32 noundef 491, ptr noundef @__FUNCTION__.ut_quantile), !dbg !1210
  %19 = load ptr, ptr @stderr, align 8, !dbg !1210, !tbaa !317
  %20 = load i64, ptr %i, align 8, !dbg !1210, !tbaa !354
  %arrayidx21 = getelementptr inbounds [7 x %struct.anon], ptr %exp, i64 0, i64 %20, !dbg !1210
  %q22 = getelementptr inbounds %struct.anon, ptr %arrayidx21, i32 0, i32 0, !dbg !1210
  %21 = load double, ptr %q22, align 16, !dbg !1210, !tbaa !1201
  %22 = load i64, ptr %v, align 8, !dbg !1210, !tbaa !354
  %23 = load i64, ptr %i, align 8, !dbg !1210, !tbaa !354
  %arrayidx23 = getelementptr inbounds [7 x %struct.anon], ptr %exp, i64 0, i64 %23, !dbg !1210
  %v24 = getelementptr inbounds %struct.anon, ptr %arrayidx23, i32 0, i32 1, !dbg !1210
  %24 = load i64, ptr %v24, align 8, !dbg !1210, !tbaa !1208
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.12, double noundef %21, i64 noundef %22, i64 noundef %24), !dbg !1210
  %25 = load ptr, ptr @stderr, align 8, !dbg !1210, !tbaa !317
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5), !dbg !1210
  %26 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1212, !tbaa !1124
  %tobool27 = icmp ne i8 %26, 0, !dbg !1212
  br i1 %tobool27, label %if.then28, label %if.end35, !dbg !1210

if.then28:                                        ; preds = %if.then19
  %27 = load i64, ptr %v, align 8, !dbg !1214, !tbaa !354
  %28 = load i64, ptr %i, align 8, !dbg !1214, !tbaa !354
  %arrayidx29 = getelementptr inbounds [7 x %struct.anon], ptr %exp, i64 0, i64 %28, !dbg !1214
  %v30 = getelementptr inbounds %struct.anon, ptr %arrayidx29, i32 0, i32 1, !dbg !1214
  %29 = load i64, ptr %v30, align 8, !dbg !1214, !tbaa !1208
  %cmp31 = icmp eq i64 %27, %29, !dbg !1214
  br i1 %cmp31, label %if.then32, label %if.else33, !dbg !1217

if.then32:                                        ; preds = %if.then28
  br label %if.end34, !dbg !1217

if.else33:                                        ; preds = %if.then28
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.3, i32 noundef 491, ptr noundef @__PRETTY_FUNCTION__.ut_quantile) #13, !dbg !1214
  unreachable, !dbg !1214

if.end34:                                         ; preds = %if.then32
  br label %if.end35, !dbg !1212

if.end35:                                         ; preds = %if.end34, %if.then19
  store i32 1, ptr %retval, align 4, !dbg !1210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !1210

if.end36:                                         ; preds = %do.body15
  br label %do.cond37, !dbg !1209

do.cond37:                                        ; preds = %if.end36
  br label %do.end38, !dbg !1209

do.end38:                                         ; preds = %do.cond37
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1218
  br label %cleanup39, !dbg !1218

cleanup39:                                        ; preds = %do.end38, %if.end35
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1218
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %cleanup49 [
    i32 0, label %cleanup.cont41
  ]

cleanup.cont41:                                   ; preds = %cleanup39
  br label %for.inc42, !dbg !1219

for.inc42:                                        ; preds = %cleanup.cont41
  %30 = load i64, ptr %i, align 8, !dbg !1220, !tbaa !354
  %inc43 = add i64 %30, 1, !dbg !1220
  store i64 %inc43, ptr %i, align 8, !dbg !1220, !tbaa !354
  br label %for.cond11, !dbg !1221, !llvm.loop !1222

for.end44:                                        ; preds = %for.cond11
  %31 = load ptr, ptr %hdr, align 8, !dbg !1224, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %31), !dbg !1225
  br label %do.body45, !dbg !1226

do.body45:                                        ; preds = %for.end44
  %32 = load ptr, ptr @stderr, align 8, !dbg !1227, !tbaa !317
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 495, ptr noundef @__FUNCTION__.ut_quantile), !dbg !1227
  store i32 0, ptr %retval, align 4, !dbg !1227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1227

do.cond47:                                        ; No predecessors!
  br label %do.end48, !dbg !1227

do.end48:                                         ; preds = %do.cond47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1229
  br label %cleanup49, !dbg !1229

cleanup49:                                        ; preds = %do.end48, %do.body45, %cleanup39, %cleanup
  call void @llvm.lifetime.end.p0(i64 112, ptr %exp) #11, !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1229
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %unreachable [
    i32 0, label %cleanup.cont53
    i32 1, label %cleanup.cont53
  ]

cleanup.cont53:                                   ; preds = %cleanup49, %cleanup49
  %33 = load i32, ptr %retval, align 4, !dbg !1229
  ret i32 %33, !dbg !1229

unreachable:                                      ; preds = %cleanup49
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_mean() #0 !dbg !1230 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %exp = alloca double, align 8
  %v = alloca double, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1241
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1232, metadata !DIExpression()), !dbg !1242
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1243
  store ptr %call, ptr %hdr, align 8, !dbg !1242, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1244
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1233, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #11, !dbg !1246
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1234, metadata !DIExpression()), !dbg !1247
  store double 0x411E84800DA1A933, ptr %exp, align 8, !dbg !1247, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1248
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1236, metadata !DIExpression()), !dbg !1249
  store i64 0, ptr %i, align 8, !dbg !1250, !tbaa !354
  br label %for.cond, !dbg !1251

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1252, !tbaa !354
  %cmp = icmp ult i64 %0, 1000000, !dbg !1253
  br i1 %cmp, label %for.body, label %for.end, !dbg !1254

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1255
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1237, metadata !DIExpression()), !dbg !1256
  %1 = load ptr, ptr %hdr, align 8, !dbg !1257, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1258, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1259
  store i32 %call1, ptr %r, align 4, !dbg !1256, !tbaa !358
  br label %do.body, !dbg !1260

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1261, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1261
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1264

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1265, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 506, ptr noundef @__FUNCTION__.ut_mean), !dbg !1265
  %5 = load ptr, ptr @stderr, align 8, !dbg !1265, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1265, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1265
  %7 = load ptr, ptr @stderr, align 8, !dbg !1265, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1265
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1267, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1267
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1265

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1269, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1269
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1272

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1272

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 506, ptr noundef @__PRETTY_FUNCTION__.ut_mean) #13, !dbg !1269
  unreachable, !dbg !1269

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1267

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1265

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1264

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1264

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1273
  br label %cleanup, !dbg !1273

cleanup:                                          ; preds = %do.end, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1273
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1274

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !dbg !1275, !tbaa !354
  %inc = add i64 %10, 1, !dbg !1275
  store i64 %inc, ptr %i, align 8, !dbg !1275, !tbaa !354
  br label %for.cond, !dbg !1276, !llvm.loop !1277

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %hdr, align 8, !dbg !1279, !tbaa !317
  %call11 = call double @rd_hdr_histogram_mean(ptr noundef %11), !dbg !1280
  store double %call11, ptr %v, align 8, !dbg !1281, !tbaa !622
  br label %do.body12, !dbg !1282

do.body12:                                        ; preds = %for.end
  %12 = load double, ptr %v, align 8, !dbg !1283, !tbaa !622
  %call13 = call i32 @rd_dbl_eq0(double noundef %12, double noundef 0x411E84800DA1A933, double noundef 0x3E7AD7F29ABCAF48), !dbg !1283
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1283
  br i1 %tobool14, label %if.end27, label %if.then15, !dbg !1286

if.then15:                                        ; preds = %do.body12
  %13 = load ptr, ptr @stderr, align 8, !dbg !1287, !tbaa !317
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.14, ptr noundef @.str.3, i32 noundef 511, ptr noundef @__FUNCTION__.ut_mean), !dbg !1287
  %14 = load ptr, ptr @stderr, align 8, !dbg !1287, !tbaa !317
  %15 = load double, ptr %v, align 8, !dbg !1287, !tbaa !622
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.15, double noundef %15, double noundef 0x411E84800DA1A933), !dbg !1287
  %16 = load ptr, ptr @stderr, align 8, !dbg !1287, !tbaa !317
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.5), !dbg !1287
  %17 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1289, !tbaa !1124
  %tobool19 = icmp ne i8 %17, 0, !dbg !1289
  br i1 %tobool19, label %if.then20, label %if.end26, !dbg !1287

if.then20:                                        ; preds = %if.then15
  %18 = load double, ptr %v, align 8, !dbg !1291, !tbaa !622
  %call21 = call i32 @rd_dbl_eq0(double noundef %18, double noundef 0x411E84800DA1A933, double noundef 0x3E7AD7F29ABCAF48), !dbg !1291
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1291
  br i1 %tobool22, label %if.then23, label %if.else24, !dbg !1294

if.then23:                                        ; preds = %if.then20
  br label %if.end25, !dbg !1294

if.else24:                                        ; preds = %if.then20
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.3, i32 noundef 511, ptr noundef @__PRETTY_FUNCTION__.ut_mean) #13, !dbg !1291
  unreachable, !dbg !1291

if.end25:                                         ; preds = %if.then23
  br label %if.end26, !dbg !1289

if.end26:                                         ; preds = %if.end25, %if.then15
  store i32 1, ptr %retval, align 4, !dbg !1287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1287

if.end27:                                         ; preds = %do.body12
  br label %do.cond28, !dbg !1286

do.cond28:                                        ; preds = %if.end27
  br label %do.end29, !dbg !1286

do.end29:                                         ; preds = %do.cond28
  %19 = load ptr, ptr %hdr, align 8, !dbg !1295, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %19), !dbg !1296
  br label %do.body30, !dbg !1297

do.body30:                                        ; preds = %do.end29
  %20 = load ptr, ptr @stderr, align 8, !dbg !1298, !tbaa !317
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 514, ptr noundef @__FUNCTION__.ut_mean), !dbg !1298
  store i32 0, ptr %retval, align 4, !dbg !1298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1298

do.cond32:                                        ; No predecessors!
  br label %do.end33, !dbg !1298

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1300
  br label %cleanup34, !dbg !1300

cleanup34:                                        ; preds = %do.end33, %do.body30, %if.end26, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #11, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1300
  %cleanup.dest38 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest38, label %unreachable [
    i32 0, label %cleanup.cont39
    i32 1, label %cleanup.cont39
  ]

cleanup.cont39:                                   ; preds = %cleanup34, %cleanup34
  %21 = load i32, ptr %retval, align 4, !dbg !1300
  ret i32 %21, !dbg !1300

unreachable:                                      ; preds = %cleanup34
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_stddev() #0 !dbg !1301 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %exp = alloca double, align 8
  %epsilon = alloca double, align 8
  %v = alloca double, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1312
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1303, metadata !DIExpression()), !dbg !1313
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1314
  store ptr %call, ptr %hdr, align 8, !dbg !1313, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1315
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1304, metadata !DIExpression()), !dbg !1316
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #11, !dbg !1317
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1305, metadata !DIExpression()), !dbg !1318
  store double 0x41119E8C8FBCA106, ptr %exp, align 8, !dbg !1318, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 8, ptr %epsilon) #11, !dbg !1319
  tail call void @llvm.dbg.declare(metadata ptr %epsilon, metadata !1306, metadata !DIExpression()), !dbg !1320
  store double 0x3EB0C6F7A0B5ED8D, ptr %epsilon, align 8, !dbg !1320, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1321
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1307, metadata !DIExpression()), !dbg !1322
  store i64 0, ptr %i, align 8, !dbg !1323, !tbaa !354
  br label %for.cond, !dbg !1324

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1325, !tbaa !354
  %cmp = icmp ult i64 %0, 1000000, !dbg !1326
  br i1 %cmp, label %for.body, label %for.end, !dbg !1327

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1328
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1308, metadata !DIExpression()), !dbg !1329
  %1 = load ptr, ptr %hdr, align 8, !dbg !1330, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1331, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1332
  store i32 %call1, ptr %r, align 4, !dbg !1329, !tbaa !358
  br label %do.body, !dbg !1333

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1334, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1334
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1337

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1338, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 527, ptr noundef @__FUNCTION__.ut_stddev), !dbg !1338
  %5 = load ptr, ptr @stderr, align 8, !dbg !1338, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1338, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1338
  %7 = load ptr, ptr @stderr, align 8, !dbg !1338, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1338
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1340, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1340
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1338

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1342, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1342
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1345

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1345

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 527, ptr noundef @__PRETTY_FUNCTION__.ut_stddev) #13, !dbg !1342
  unreachable, !dbg !1342

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1340

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1338

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1337

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1337

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1346
  br label %cleanup, !dbg !1346

cleanup:                                          ; preds = %do.end, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1346
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1347

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !dbg !1348, !tbaa !354
  %inc = add i64 %10, 1, !dbg !1348
  store i64 %inc, ptr %i, align 8, !dbg !1348, !tbaa !354
  br label %for.cond, !dbg !1349, !llvm.loop !1350

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %hdr, align 8, !dbg !1352, !tbaa !317
  %call11 = call double @rd_hdr_histogram_stddev(ptr noundef %11), !dbg !1353
  store double %call11, ptr %v, align 8, !dbg !1354, !tbaa !622
  br label %do.body12, !dbg !1355

do.body12:                                        ; preds = %for.end
  %12 = load double, ptr %v, align 8, !dbg !1356, !tbaa !622
  %call13 = call i32 @rd_dbl_eq0(double noundef %12, double noundef 0x41119E8C8FBCA106, double noundef 0x3EB0C6F7A0B5ED8D), !dbg !1356
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1356
  br i1 %tobool14, label %if.end27, label %if.then15, !dbg !1359

if.then15:                                        ; preds = %do.body12
  %13 = load ptr, ptr @stderr, align 8, !dbg !1360, !tbaa !317
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.17, ptr noundef @.str.3, i32 noundef 533, ptr noundef @__FUNCTION__.ut_stddev), !dbg !1360
  %14 = load ptr, ptr @stderr, align 8, !dbg !1360, !tbaa !317
  %15 = load double, ptr %v, align 8, !dbg !1360, !tbaa !622
  %16 = load double, ptr %v, align 8, !dbg !1360, !tbaa !622
  %sub = fsub double %16, 0x41119E8C8FBCA106, !dbg !1360
  %17 = call double @llvm.fabs.f64(double %sub), !dbg !1360
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.18, double noundef %15, double noundef 0x41119E8C8FBCA106, double noundef %17, double noundef 0x3EB0C6F7A0B5ED8D), !dbg !1360
  %18 = load ptr, ptr @stderr, align 8, !dbg !1360, !tbaa !317
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.5), !dbg !1360
  %19 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1362, !tbaa !1124
  %tobool19 = icmp ne i8 %19, 0, !dbg !1362
  br i1 %tobool19, label %if.then20, label %if.end26, !dbg !1360

if.then20:                                        ; preds = %if.then15
  %20 = load double, ptr %v, align 8, !dbg !1364, !tbaa !622
  %call21 = call i32 @rd_dbl_eq0(double noundef %20, double noundef 0x41119E8C8FBCA106, double noundef 0x3EB0C6F7A0B5ED8D), !dbg !1364
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1364
  br i1 %tobool22, label %if.then23, label %if.else24, !dbg !1367

if.then23:                                        ; preds = %if.then20
  br label %if.end25, !dbg !1367

if.else24:                                        ; preds = %if.then20
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.3, i32 noundef 533, ptr noundef @__PRETTY_FUNCTION__.ut_stddev) #13, !dbg !1364
  unreachable, !dbg !1364

if.end25:                                         ; preds = %if.then23
  br label %if.end26, !dbg !1362

if.end26:                                         ; preds = %if.end25, %if.then15
  store i32 1, ptr %retval, align 4, !dbg !1360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1360

if.end27:                                         ; preds = %do.body12
  br label %do.cond28, !dbg !1359

do.cond28:                                        ; preds = %if.end27
  br label %do.end29, !dbg !1359

do.end29:                                         ; preds = %do.cond28
  %21 = load ptr, ptr %hdr, align 8, !dbg !1368, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %21), !dbg !1369
  br label %do.body30, !dbg !1370

do.body30:                                        ; preds = %do.end29
  %22 = load ptr, ptr @stderr, align 8, !dbg !1371, !tbaa !317
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 536, ptr noundef @__FUNCTION__.ut_stddev), !dbg !1371
  store i32 0, ptr %retval, align 4, !dbg !1371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1371

do.cond32:                                        ; No predecessors!
  br label %do.end33, !dbg !1371

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1373
  br label %cleanup34, !dbg !1373

cleanup34:                                        ; preds = %do.end33, %do.body30, %if.end26, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %epsilon) #11, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #11, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1373
  %cleanup.dest39 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest39, label %unreachable [
    i32 0, label %cleanup.cont40
    i32 1, label %cleanup.cont40
  ]

cleanup.cont40:                                   ; preds = %cleanup34, %cleanup34
  %23 = load i32, ptr %retval, align 4, !dbg !1373
  ret i32 %23, !dbg !1373

unreachable:                                      ; preds = %cleanup34
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_totalcount() #0 !dbg !1374 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1383
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1376, metadata !DIExpression()), !dbg !1384
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1385
  store ptr %call, ptr %hdr, align 8, !dbg !1384, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1377, metadata !DIExpression()), !dbg !1387
  store i64 0, ptr %i, align 8, !dbg !1388, !tbaa !354
  br label %for.cond, !dbg !1389

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1390, !tbaa !354
  %cmp = icmp slt i64 %0, 1000000, !dbg !1391
  br i1 %cmp, label %for.body, label %for.end, !dbg !1392

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1393
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1378, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1382, metadata !DIExpression()), !dbg !1396
  %1 = load ptr, ptr %hdr, align 8, !dbg !1397, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1398, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1399
  store i32 %call1, ptr %r, align 4, !dbg !1396, !tbaa !358
  br label %do.body, !dbg !1400

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1401, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1401
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1404

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1405, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 546, ptr noundef @__FUNCTION__.ut_totalcount), !dbg !1405
  %5 = load ptr, ptr @stderr, align 8, !dbg !1405, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1405, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1405
  %7 = load ptr, ptr @stderr, align 8, !dbg !1405, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1405
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1407, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1407
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1405

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1409, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1409
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1412

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1412

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 546, ptr noundef @__PRETTY_FUNCTION__.ut_totalcount) #13, !dbg !1409
  unreachable, !dbg !1409

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1407

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1405

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1404

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1404

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %hdr, align 8, !dbg !1413, !tbaa !317
  %totalCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %10, i32 0, i32 10, !dbg !1414
  %11 = load i64, ptr %totalCount, align 8, !dbg !1414, !tbaa !522
  store i64 %11, ptr %v, align 8, !dbg !1415, !tbaa !354
  br label %do.body11, !dbg !1416

do.body11:                                        ; preds = %do.end
  %12 = load i64, ptr %v, align 8, !dbg !1417, !tbaa !354
  %13 = load i64, ptr %i, align 8, !dbg !1417, !tbaa !354
  %add = add nsw i64 %13, 1, !dbg !1417
  %cmp12 = icmp eq i64 %12, %add, !dbg !1417
  br i1 %cmp12, label %if.end26, label %if.then13, !dbg !1420

if.then13:                                        ; preds = %do.body11
  %14 = load ptr, ptr @stderr, align 8, !dbg !1421, !tbaa !317
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.20, ptr noundef @.str.3, i32 noundef 551, ptr noundef @__FUNCTION__.ut_totalcount), !dbg !1421
  %15 = load ptr, ptr @stderr, align 8, !dbg !1421, !tbaa !317
  %16 = load i64, ptr %v, align 8, !dbg !1421, !tbaa !354
  %17 = load i64, ptr %i, align 8, !dbg !1421, !tbaa !354
  %add15 = add nsw i64 %17, 1, !dbg !1421
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.21, i64 noundef %16, i64 noundef %add15), !dbg !1421
  %18 = load ptr, ptr @stderr, align 8, !dbg !1421, !tbaa !317
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.5), !dbg !1421
  %19 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1423, !tbaa !1124
  %tobool18 = icmp ne i8 %19, 0, !dbg !1423
  br i1 %tobool18, label %if.then19, label %if.end25, !dbg !1421

if.then19:                                        ; preds = %if.then13
  %20 = load i64, ptr %v, align 8, !dbg !1425, !tbaa !354
  %21 = load i64, ptr %i, align 8, !dbg !1425, !tbaa !354
  %add20 = add nsw i64 %21, 1, !dbg !1425
  %cmp21 = icmp eq i64 %20, %add20, !dbg !1425
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !1428

if.then22:                                        ; preds = %if.then19
  br label %if.end24, !dbg !1428

if.else23:                                        ; preds = %if.then19
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.3, i32 noundef 551, ptr noundef @__PRETTY_FUNCTION__.ut_totalcount) #13, !dbg !1425
  unreachable, !dbg !1425

if.end24:                                         ; preds = %if.then22
  br label %if.end25, !dbg !1423

if.end25:                                         ; preds = %if.end24, %if.then13
  store i32 1, ptr %retval, align 4, !dbg !1421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1421

if.end26:                                         ; preds = %do.body11
  br label %do.cond27, !dbg !1420

do.cond27:                                        ; preds = %if.end26
  br label %do.end28, !dbg !1420

do.end28:                                         ; preds = %do.cond27
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1429
  br label %cleanup, !dbg !1429

cleanup:                                          ; preds = %do.end28, %if.end25, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1429
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1430

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i64, ptr %i, align 8, !dbg !1431, !tbaa !354
  %inc = add nsw i64 %22, 1, !dbg !1431
  store i64 %inc, ptr %i, align 8, !dbg !1431, !tbaa !354
  br label %for.cond, !dbg !1432, !llvm.loop !1433

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %hdr, align 8, !dbg !1435, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %23), !dbg !1436
  br label %do.body30, !dbg !1437

do.body30:                                        ; preds = %for.end
  %24 = load ptr, ptr @stderr, align 8, !dbg !1438, !tbaa !317
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 555, ptr noundef @__FUNCTION__.ut_totalcount), !dbg !1438
  store i32 0, ptr %retval, align 4, !dbg !1438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1438

do.cond32:                                        ; No predecessors!
  br label %do.end33, !dbg !1438

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1440
  br label %cleanup34, !dbg !1440

cleanup34:                                        ; preds = %do.end33, %do.body30, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1440
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont37
    i32 1, label %cleanup.cont37
  ]

cleanup.cont37:                                   ; preds = %cleanup34, %cleanup34
  %25 = load i32, ptr %retval, align 4, !dbg !1440
  ret i32 %25, !dbg !1440

unreachable:                                      ; preds = %cleanup34
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_max() #0 !dbg !1441 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %exp = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1451
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1443, metadata !DIExpression()), !dbg !1452
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1453
  store ptr %call, ptr %hdr, align 8, !dbg !1452, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1454
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1444, metadata !DIExpression()), !dbg !1455
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1454
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1445, metadata !DIExpression()), !dbg !1456
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #11, !dbg !1457
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1446, metadata !DIExpression()), !dbg !1458
  store i64 1000447, ptr %exp, align 8, !dbg !1458, !tbaa !354
  store i64 0, ptr %i, align 8, !dbg !1459, !tbaa !354
  br label %for.cond, !dbg !1460

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1461, !tbaa !354
  %cmp = icmp slt i64 %0, 1000000, !dbg !1462
  br i1 %cmp, label %for.body, label %for.end, !dbg !1463

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1464
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1447, metadata !DIExpression()), !dbg !1465
  %1 = load ptr, ptr %hdr, align 8, !dbg !1466, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1467, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1468
  store i32 %call1, ptr %r, align 4, !dbg !1465, !tbaa !358
  br label %do.body, !dbg !1469

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1470, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1470
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1473

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1474, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 566, ptr noundef @__FUNCTION__.ut_max), !dbg !1474
  %5 = load ptr, ptr @stderr, align 8, !dbg !1474, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1474, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1474
  %7 = load ptr, ptr @stderr, align 8, !dbg !1474, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1474
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1476, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1476
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1474

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1478, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1478
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1481

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1481

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 566, ptr noundef @__PRETTY_FUNCTION__.ut_max) #13, !dbg !1478
  unreachable, !dbg !1478

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1476

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1474

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1473

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1473

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1482
  br label %cleanup, !dbg !1482

cleanup:                                          ; preds = %do.end, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1482
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1483

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !dbg !1484, !tbaa !354
  %inc = add nsw i64 %10, 1, !dbg !1484
  store i64 %inc, ptr %i, align 8, !dbg !1484, !tbaa !354
  br label %for.cond, !dbg !1485, !llvm.loop !1486

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %hdr, align 8, !dbg !1488, !tbaa !317
  %call11 = call i64 @rd_hdr_histogram_max(ptr noundef %11), !dbg !1489
  store i64 %call11, ptr %v, align 8, !dbg !1490, !tbaa !354
  br label %do.body12, !dbg !1491

do.body12:                                        ; preds = %for.end
  %12 = load i64, ptr %v, align 8, !dbg !1492, !tbaa !354
  %cmp13 = icmp eq i64 %12, 1000447, !dbg !1492
  br i1 %cmp13, label %if.end25, label %if.then14, !dbg !1495

if.then14:                                        ; preds = %do.body12
  %13 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !317
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 570, ptr noundef @__FUNCTION__.ut_max), !dbg !1496
  %14 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !317
  %15 = load i64, ptr %v, align 8, !dbg !1496, !tbaa !354
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.23, i64 noundef %15, i64 noundef 1000447), !dbg !1496
  %16 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !317
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.5), !dbg !1496
  %17 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1498, !tbaa !1124
  %tobool18 = icmp ne i8 %17, 0, !dbg !1498
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !1496

if.then19:                                        ; preds = %if.then14
  %18 = load i64, ptr %v, align 8, !dbg !1500, !tbaa !354
  %cmp20 = icmp eq i64 %18, 1000447, !dbg !1500
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !1503

if.then21:                                        ; preds = %if.then19
  br label %if.end23, !dbg !1503

if.else22:                                        ; preds = %if.then19
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 570, ptr noundef @__PRETTY_FUNCTION__.ut_max) #13, !dbg !1500
  unreachable, !dbg !1500

if.end23:                                         ; preds = %if.then21
  br label %if.end24, !dbg !1498

if.end24:                                         ; preds = %if.end23, %if.then14
  store i32 1, ptr %retval, align 4, !dbg !1496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1496

if.end25:                                         ; preds = %do.body12
  br label %do.cond26, !dbg !1495

do.cond26:                                        ; preds = %if.end25
  br label %do.end27, !dbg !1495

do.end27:                                         ; preds = %do.cond26
  %19 = load ptr, ptr %hdr, align 8, !dbg !1504, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %19), !dbg !1505
  br label %do.body28, !dbg !1506

do.body28:                                        ; preds = %do.end27
  %20 = load ptr, ptr @stderr, align 8, !dbg !1507, !tbaa !317
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 573, ptr noundef @__FUNCTION__.ut_max), !dbg !1507
  store i32 0, ptr %retval, align 4, !dbg !1507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1507

do.cond30:                                        ; No predecessors!
  br label %do.end31, !dbg !1507

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1509
  br label %cleanup32, !dbg !1509

cleanup32:                                        ; preds = %do.end31, %do.body28, %if.end24, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #11, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1509
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont37
    i32 1, label %cleanup.cont37
  ]

cleanup.cont37:                                   ; preds = %cleanup32, %cleanup32
  %21 = load i32, ptr %retval, align 4, !dbg !1509
  ret i32 %21, !dbg !1509

unreachable:                                      ; preds = %cleanup32
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_min() #0 !dbg !1510 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %exp = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1520
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1512, metadata !DIExpression()), !dbg !1521
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1522
  store ptr %call, ptr %hdr, align 8, !dbg !1521, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1523
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1513, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1523
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1514, metadata !DIExpression()), !dbg !1525
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #11, !dbg !1526
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1515, metadata !DIExpression()), !dbg !1527
  store i64 0, ptr %exp, align 8, !dbg !1527, !tbaa !354
  store i64 0, ptr %i, align 8, !dbg !1528, !tbaa !354
  br label %for.cond, !dbg !1529

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1530, !tbaa !354
  %cmp = icmp slt i64 %0, 1000000, !dbg !1531
  br i1 %cmp, label %for.body, label %for.end, !dbg !1532

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1533
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1516, metadata !DIExpression()), !dbg !1534
  %1 = load ptr, ptr %hdr, align 8, !dbg !1535, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1536, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1537
  store i32 %call1, ptr %r, align 4, !dbg !1534, !tbaa !358
  br label %do.body, !dbg !1538

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1539, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1539
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1542

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1543, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 583, ptr noundef @__FUNCTION__.ut_min), !dbg !1543
  %5 = load ptr, ptr @stderr, align 8, !dbg !1543, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1543, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1543
  %7 = load ptr, ptr @stderr, align 8, !dbg !1543, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1543
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1545, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1545
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1543

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1547, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1547
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1550

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1550

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 583, ptr noundef @__PRETTY_FUNCTION__.ut_min) #13, !dbg !1547
  unreachable, !dbg !1547

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1545

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1543

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1542

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1542

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1551
  br label %cleanup, !dbg !1551

cleanup:                                          ; preds = %do.end, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1551
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1552

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !dbg !1553, !tbaa !354
  %inc = add nsw i64 %10, 1, !dbg !1553
  store i64 %inc, ptr %i, align 8, !dbg !1553, !tbaa !354
  br label %for.cond, !dbg !1554, !llvm.loop !1555

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %hdr, align 8, !dbg !1557, !tbaa !317
  %call11 = call i64 @rd_hdr_histogram_min(ptr noundef %11), !dbg !1558
  store i64 %call11, ptr %v, align 8, !dbg !1559, !tbaa !354
  br label %do.body12, !dbg !1560

do.body12:                                        ; preds = %for.end
  %12 = load i64, ptr %v, align 8, !dbg !1561, !tbaa !354
  %cmp13 = icmp eq i64 %12, 0, !dbg !1561
  br i1 %cmp13, label %if.end25, label %if.then14, !dbg !1564

if.then14:                                        ; preds = %do.body12
  %13 = load ptr, ptr @stderr, align 8, !dbg !1565, !tbaa !317
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 587, ptr noundef @__FUNCTION__.ut_min), !dbg !1565
  %14 = load ptr, ptr @stderr, align 8, !dbg !1565, !tbaa !317
  %15 = load i64, ptr %v, align 8, !dbg !1565, !tbaa !354
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.24, i64 noundef %15, i64 noundef 0), !dbg !1565
  %16 = load ptr, ptr @stderr, align 8, !dbg !1565, !tbaa !317
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.5), !dbg !1565
  %17 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1567, !tbaa !1124
  %tobool18 = icmp ne i8 %17, 0, !dbg !1567
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !1565

if.then19:                                        ; preds = %if.then14
  %18 = load i64, ptr %v, align 8, !dbg !1569, !tbaa !354
  %cmp20 = icmp eq i64 %18, 0, !dbg !1569
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !1572

if.then21:                                        ; preds = %if.then19
  br label %if.end23, !dbg !1572

if.else22:                                        ; preds = %if.then19
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 587, ptr noundef @__PRETTY_FUNCTION__.ut_min) #13, !dbg !1569
  unreachable, !dbg !1569

if.end23:                                         ; preds = %if.then21
  br label %if.end24, !dbg !1567

if.end24:                                         ; preds = %if.end23, %if.then14
  store i32 1, ptr %retval, align 4, !dbg !1565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1565

if.end25:                                         ; preds = %do.body12
  br label %do.cond26, !dbg !1564

do.cond26:                                        ; preds = %if.end25
  br label %do.end27, !dbg !1564

do.end27:                                         ; preds = %do.cond26
  %19 = load ptr, ptr %hdr, align 8, !dbg !1573, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %19), !dbg !1574
  br label %do.body28, !dbg !1575

do.body28:                                        ; preds = %do.end27
  %20 = load ptr, ptr @stderr, align 8, !dbg !1576, !tbaa !317
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 590, ptr noundef @__FUNCTION__.ut_min), !dbg !1576
  store i32 0, ptr %retval, align 4, !dbg !1576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1576

do.cond30:                                        ; No predecessors!
  br label %do.end31, !dbg !1576

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1578
  br label %cleanup32, !dbg !1578

cleanup32:                                        ; preds = %do.end31, %do.body28, %if.end24, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #11, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1578
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont37
    i32 1, label %cleanup.cont37
  ]

cleanup.cont37:                                   ; preds = %cleanup32, %cleanup32
  %21 = load i32, ptr %retval, align 4, !dbg !1578
  ret i32 %21, !dbg !1578

unreachable:                                      ; preds = %cleanup32
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_reset() #0 !dbg !1579 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %i = alloca i64, align 8
  %v = alloca i64, align 8
  %exp = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1589
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1581, metadata !DIExpression()), !dbg !1590
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10000000, i32 noundef 3), !dbg !1591
  store ptr %call, ptr %hdr, align 8, !dbg !1590, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1592
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1582, metadata !DIExpression()), !dbg !1593
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1592
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1583, metadata !DIExpression()), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 8, ptr %exp) #11, !dbg !1595
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1584, metadata !DIExpression()), !dbg !1596
  store i64 0, ptr %exp, align 8, !dbg !1596, !tbaa !354
  store i64 0, ptr %i, align 8, !dbg !1597, !tbaa !354
  br label %for.cond, !dbg !1598

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1599, !tbaa !354
  %cmp = icmp slt i64 %0, 1000000, !dbg !1600
  br i1 %cmp, label %for.body, label %for.end, !dbg !1601

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1602
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1585, metadata !DIExpression()), !dbg !1603
  %1 = load ptr, ptr %hdr, align 8, !dbg !1604, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1605, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %2), !dbg !1606
  store i32 %call1, ptr %r, align 4, !dbg !1603, !tbaa !358
  br label %do.body, !dbg !1607

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !dbg !1608, !tbaa !358
  %tobool = icmp ne i32 %3, 0, !dbg !1608
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1611

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !1612, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 600, ptr noundef @__FUNCTION__.ut_reset), !dbg !1612
  %5 = load ptr, ptr @stderr, align 8, !dbg !1612, !tbaa !317
  %6 = load i64, ptr %i, align 8, !dbg !1612, !tbaa !354
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, i64 noundef %6), !dbg !1612
  %7 = load ptr, ptr @stderr, align 8, !dbg !1612, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5), !dbg !1612
  %8 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1614, !tbaa !1124
  %tobool5 = icmp ne i8 %8, 0, !dbg !1614
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1612

if.then6:                                         ; preds = %if.then
  %9 = load i32, ptr %r, align 4, !dbg !1616, !tbaa !358
  %tobool7 = icmp ne i32 %9, 0, !dbg !1616
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1619

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1619

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 600, ptr noundef @__PRETTY_FUNCTION__.ut_reset) #13, !dbg !1616
  unreachable, !dbg !1616

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1614

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1612

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1611

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1611

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1620
  br label %cleanup, !dbg !1620

cleanup:                                          ; preds = %do.end, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1620
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1621

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !dbg !1622, !tbaa !354
  %inc = add nsw i64 %10, 1, !dbg !1622
  store i64 %inc, ptr %i, align 8, !dbg !1622, !tbaa !354
  br label %for.cond, !dbg !1623, !llvm.loop !1624

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %hdr, align 8, !dbg !1626, !tbaa !317
  call void @rd_hdr_histogram_reset(ptr noundef %11), !dbg !1627
  %12 = load ptr, ptr %hdr, align 8, !dbg !1628, !tbaa !317
  %call11 = call i64 @rd_hdr_histogram_max(ptr noundef %12), !dbg !1629
  store i64 %call11, ptr %v, align 8, !dbg !1630, !tbaa !354
  br label %do.body12, !dbg !1631

do.body12:                                        ; preds = %for.end
  %13 = load i64, ptr %v, align 8, !dbg !1632, !tbaa !354
  %cmp13 = icmp eq i64 %13, 0, !dbg !1632
  br i1 %cmp13, label %if.end25, label %if.then14, !dbg !1635

if.then14:                                        ; preds = %do.body12
  %14 = load ptr, ptr @stderr, align 8, !dbg !1636, !tbaa !317
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 606, ptr noundef @__FUNCTION__.ut_reset), !dbg !1636
  %15 = load ptr, ptr @stderr, align 8, !dbg !1636, !tbaa !317
  %16 = load i64, ptr %v, align 8, !dbg !1636, !tbaa !354
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.23, i64 noundef %16, i64 noundef 0), !dbg !1636
  %17 = load ptr, ptr @stderr, align 8, !dbg !1636, !tbaa !317
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.5), !dbg !1636
  %18 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1638, !tbaa !1124
  %tobool18 = icmp ne i8 %18, 0, !dbg !1638
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !1636

if.then19:                                        ; preds = %if.then14
  %19 = load i64, ptr %v, align 8, !dbg !1640, !tbaa !354
  %cmp20 = icmp eq i64 %19, 0, !dbg !1640
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !1643

if.then21:                                        ; preds = %if.then19
  br label %if.end23, !dbg !1643

if.else22:                                        ; preds = %if.then19
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 606, ptr noundef @__PRETTY_FUNCTION__.ut_reset) #13, !dbg !1640
  unreachable, !dbg !1640

if.end23:                                         ; preds = %if.then21
  br label %if.end24, !dbg !1638

if.end24:                                         ; preds = %if.end23, %if.then14
  store i32 1, ptr %retval, align 4, !dbg !1636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1636

if.end25:                                         ; preds = %do.body12
  br label %do.cond26, !dbg !1635

do.cond26:                                        ; preds = %if.end25
  br label %do.end27, !dbg !1635

do.end27:                                         ; preds = %do.cond26
  %20 = load ptr, ptr %hdr, align 8, !dbg !1644, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %20), !dbg !1645
  br label %do.body28, !dbg !1646

do.body28:                                        ; preds = %do.end27
  %21 = load ptr, ptr @stderr, align 8, !dbg !1647, !tbaa !317
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 609, ptr noundef @__FUNCTION__.ut_reset), !dbg !1647
  store i32 0, ptr %retval, align 4, !dbg !1647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1647

do.cond30:                                        ; No predecessors!
  br label %do.end31, !dbg !1647

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1649
  br label %cleanup32, !dbg !1649

cleanup32:                                        ; preds = %do.end31, %do.body28, %if.end24, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %exp) #11, !dbg !1649
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1649
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1649
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1649
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont37
    i32 1, label %cleanup.cont37
  ]

cleanup.cont37:                                   ; preds = %cleanup32, %cleanup32
  %22 = load i32, ptr %retval, align 4, !dbg !1649
  ret i32 %22, !dbg !1649

unreachable:                                      ; preds = %cleanup32
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_nan() #0 !dbg !1650 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %v = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1654
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1652, metadata !DIExpression()), !dbg !1655
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 100000, i32 noundef 3), !dbg !1656
  store ptr %call, ptr %hdr, align 8, !dbg !1655, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1657
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1653, metadata !DIExpression()), !dbg !1658
  %0 = load ptr, ptr %hdr, align 8, !dbg !1659, !tbaa !317
  %call1 = call double @rd_hdr_histogram_mean(ptr noundef %0), !dbg !1660
  store double %call1, ptr %v, align 8, !dbg !1661, !tbaa !622
  br label %do.body, !dbg !1662

do.body:                                          ; preds = %entry
  %1 = load double, ptr %v, align 8, !dbg !1663, !tbaa !622
  %2 = call i1 @llvm.is.fpclass.f64(double %1, i32 3), !dbg !1663
  br i1 %2, label %if.then, label %if.end8, !dbg !1666

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !1667, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.25, ptr noundef @.str.3, i32 noundef 618, ptr noundef @__FUNCTION__.ut_nan), !dbg !1667
  %4 = load ptr, ptr @stderr, align 8, !dbg !1667, !tbaa !317
  %5 = load double, ptr %v, align 8, !dbg !1667, !tbaa !622
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.26, double noundef %5), !dbg !1667
  %6 = load ptr, ptr @stderr, align 8, !dbg !1667, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.5), !dbg !1667
  %7 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1669, !tbaa !1124
  %tobool = icmp ne i8 %7, 0, !dbg !1669
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !1667

if.then5:                                         ; preds = %if.then
  %8 = load double, ptr %v, align 8, !dbg !1671, !tbaa !622
  %9 = call i1 @llvm.is.fpclass.f64(double %8, i32 3), !dbg !1671
  br i1 %9, label %if.else, label %if.then6, !dbg !1674

if.then6:                                         ; preds = %if.then5
  br label %if.end, !dbg !1674

if.else:                                          ; preds = %if.then5
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.3, i32 noundef 618, ptr noundef @__PRETTY_FUNCTION__.ut_nan) #13, !dbg !1671
  unreachable, !dbg !1671

if.end:                                           ; preds = %if.then6
  br label %if.end7, !dbg !1669

if.end7:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1667

if.end8:                                          ; preds = %do.body
  br label %do.cond, !dbg !1666

do.cond:                                          ; preds = %if.end8
  br label %do.end, !dbg !1666

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %hdr, align 8, !dbg !1675, !tbaa !317
  %call9 = call double @rd_hdr_histogram_stddev(ptr noundef %10), !dbg !1676
  store double %call9, ptr %v, align 8, !dbg !1677, !tbaa !622
  br label %do.body10, !dbg !1678

do.body10:                                        ; preds = %do.end
  %11 = load double, ptr %v, align 8, !dbg !1679, !tbaa !622
  %12 = call i1 @llvm.is.fpclass.f64(double %11, i32 3), !dbg !1679
  br i1 %12, label %if.then11, label %if.end21, !dbg !1682

if.then11:                                        ; preds = %do.body10
  %13 = load ptr, ptr @stderr, align 8, !dbg !1683, !tbaa !317
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.25, ptr noundef @.str.3, i32 noundef 620, ptr noundef @__FUNCTION__.ut_nan), !dbg !1683
  %14 = load ptr, ptr @stderr, align 8, !dbg !1683, !tbaa !317
  %15 = load double, ptr %v, align 8, !dbg !1683, !tbaa !622
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.28, double noundef %15), !dbg !1683
  %16 = load ptr, ptr @stderr, align 8, !dbg !1683, !tbaa !317
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.5), !dbg !1683
  %17 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1685, !tbaa !1124
  %tobool15 = icmp ne i8 %17, 0, !dbg !1685
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !1683

if.then16:                                        ; preds = %if.then11
  %18 = load double, ptr %v, align 8, !dbg !1687, !tbaa !622
  %19 = call i1 @llvm.is.fpclass.f64(double %18, i32 3), !dbg !1687
  br i1 %19, label %if.else18, label %if.then17, !dbg !1690

if.then17:                                        ; preds = %if.then16
  br label %if.end19, !dbg !1690

if.else18:                                        ; preds = %if.then16
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.3, i32 noundef 620, ptr noundef @__PRETTY_FUNCTION__.ut_nan) #13, !dbg !1687
  unreachable, !dbg !1687

if.end19:                                         ; preds = %if.then17
  br label %if.end20, !dbg !1685

if.end20:                                         ; preds = %if.end19, %if.then11
  store i32 1, ptr %retval, align 4, !dbg !1683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1683

if.end21:                                         ; preds = %do.body10
  br label %do.cond22, !dbg !1682

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !1682

do.end23:                                         ; preds = %do.cond22
  %20 = load ptr, ptr %hdr, align 8, !dbg !1691, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %20), !dbg !1692
  br label %do.body24, !dbg !1693

do.body24:                                        ; preds = %do.end23
  %21 = load ptr, ptr @stderr, align 8, !dbg !1694, !tbaa !317
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 623, ptr noundef @__FUNCTION__.ut_nan), !dbg !1694
  store i32 0, ptr %retval, align 4, !dbg !1694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1694

do.cond26:                                        ; No predecessors!
  br label %do.end27, !dbg !1694

do.end27:                                         ; preds = %do.cond26
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1696
  br label %cleanup, !dbg !1696

cleanup:                                          ; preds = %do.end27, %do.body24, %if.end20, %if.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1696
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %22 = load i32, ptr %retval, align 4, !dbg !1696
  ret i32 %22, !dbg !1696

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_sigfigs() #0 !dbg !1697 {
entry:
  %retval = alloca i32, align 4
  %sigfigs = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sigfigs) #11, !dbg !1704
  tail call void @llvm.dbg.declare(metadata ptr %sigfigs, metadata !1699, metadata !DIExpression()), !dbg !1705
  store i32 1, ptr %sigfigs, align 4, !dbg !1706, !tbaa !358
  br label %for.cond, !dbg !1707

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %sigfigs, align 4, !dbg !1708, !tbaa !358
  %cmp = icmp sle i32 %0, 5, !dbg !1709
  br i1 %cmp, label %for.body, label %for.end, !dbg !1710

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1711
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1700, metadata !DIExpression()), !dbg !1712
  %1 = load i32, ptr %sigfigs, align 4, !dbg !1713, !tbaa !358
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 1, i64 noundef 10, i32 noundef %1), !dbg !1714
  store ptr %call, ptr %hdr, align 8, !dbg !1712, !tbaa !317
  br label %do.body, !dbg !1715

do.body:                                          ; preds = %for.body
  %2 = load ptr, ptr %hdr, align 8, !dbg !1716, !tbaa !317
  %significantFigures = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %2, i32 0, i32 3, !dbg !1716
  %3 = load i64, ptr %significantFigures, align 8, !dbg !1716, !tbaa !488
  %4 = load i32, ptr %sigfigs, align 4, !dbg !1716, !tbaa !358
  %conv = sext i32 %4 to i64, !dbg !1716
  %cmp1 = icmp eq i64 %3, %conv, !dbg !1716
  br i1 %cmp1, label %if.end14, label %if.then, !dbg !1719

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr @stderr, align 8, !dbg !1720, !tbaa !317
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.29, ptr noundef @.str.3, i32 noundef 634, ptr noundef @__FUNCTION__.ut_sigfigs), !dbg !1720
  %6 = load ptr, ptr @stderr, align 8, !dbg !1720, !tbaa !317
  %7 = load ptr, ptr %hdr, align 8, !dbg !1720, !tbaa !317
  %significantFigures4 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %7, i32 0, i32 3, !dbg !1720
  %8 = load i64, ptr %significantFigures4, align 8, !dbg !1720, !tbaa !488
  %9 = load i32, ptr %sigfigs, align 4, !dbg !1720, !tbaa !358
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.30, i64 noundef %8, i32 noundef %9), !dbg !1720
  %10 = load ptr, ptr @stderr, align 8, !dbg !1720, !tbaa !317
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5), !dbg !1720
  %11 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1722, !tbaa !1124
  %tobool = icmp ne i8 %11, 0, !dbg !1722
  br i1 %tobool, label %if.then7, label %if.end13, !dbg !1720

if.then7:                                         ; preds = %if.then
  %12 = load ptr, ptr %hdr, align 8, !dbg !1724, !tbaa !317
  %significantFigures8 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %12, i32 0, i32 3, !dbg !1724
  %13 = load i64, ptr %significantFigures8, align 8, !dbg !1724, !tbaa !488
  %14 = load i32, ptr %sigfigs, align 4, !dbg !1724, !tbaa !358
  %conv9 = sext i32 %14 to i64, !dbg !1724
  %cmp10 = icmp eq i64 %13, %conv9, !dbg !1724
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1727

if.then12:                                        ; preds = %if.then7
  br label %if.end, !dbg !1727

if.else:                                          ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.31, ptr noundef @.str.3, i32 noundef 634, ptr noundef @__PRETTY_FUNCTION__.ut_sigfigs) #13, !dbg !1724
  unreachable, !dbg !1724

if.end:                                           ; preds = %if.then12
  br label %if.end13, !dbg !1722

if.end13:                                         ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1720

if.end14:                                         ; preds = %do.body
  br label %do.cond, !dbg !1719

do.cond:                                          ; preds = %if.end14
  br label %do.end, !dbg !1719

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %hdr, align 8, !dbg !1728, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %15), !dbg !1729
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1730
  br label %cleanup, !dbg !1730

cleanup:                                          ; preds = %do.end, %if.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1730
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1731

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i32, ptr %sigfigs, align 4, !dbg !1732, !tbaa !358
  %inc = add nsw i32 %16, 1, !dbg !1732
  store i32 %inc, ptr %sigfigs, align 4, !dbg !1732, !tbaa !358
  br label %for.cond, !dbg !1733, !llvm.loop !1734

for.end:                                          ; preds = %for.cond
  br label %do.body15, !dbg !1736

do.body15:                                        ; preds = %for.end
  %17 = load ptr, ptr @stderr, align 8, !dbg !1737, !tbaa !317
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 638, ptr noundef @__FUNCTION__.ut_sigfigs), !dbg !1737
  store i32 0, ptr %retval, align 4, !dbg !1737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !1737

do.cond17:                                        ; No predecessors!
  br label %do.end18, !dbg !1737

do.end18:                                         ; preds = %do.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1739
  br label %cleanup19, !dbg !1739

cleanup19:                                        ; preds = %do.end18, %do.body15, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %sigfigs) #11, !dbg !1739
  %cleanup.dest20 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest20, label %unreachable [
    i32 0, label %cleanup.cont21
    i32 1, label %cleanup.cont21
  ]

cleanup.cont21:                                   ; preds = %cleanup19, %cleanup19
  %18 = load i32, ptr %retval, align 4, !dbg !1739
  ret i32 %18, !dbg !1739

unreachable:                                      ; preds = %cleanup19
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_minmax_trackable() #0 !dbg !1740 {
entry:
  %retval = alloca i32, align 4
  %minval = alloca i64, align 8
  %maxval = alloca i64, align 8
  %hdr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minval) #11, !dbg !1745
  tail call void @llvm.dbg.declare(metadata ptr %minval, metadata !1742, metadata !DIExpression()), !dbg !1746
  store i64 2, ptr %minval, align 8, !dbg !1746, !tbaa !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxval) #11, !dbg !1747
  tail call void @llvm.dbg.declare(metadata ptr %maxval, metadata !1743, metadata !DIExpression()), !dbg !1748
  store i64 11, ptr %maxval, align 8, !dbg !1748, !tbaa !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1749
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1744, metadata !DIExpression()), !dbg !1750
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 2, i64 noundef 11, i32 noundef 3), !dbg !1751
  store ptr %call, ptr %hdr, align 8, !dbg !1750, !tbaa !317
  br label %do.body, !dbg !1752

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %hdr, align 8, !dbg !1753, !tbaa !317
  %lowestTrackableValue = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %0, i32 0, i32 0, !dbg !1753
  %1 = load i64, ptr %lowestTrackableValue, align 8, !dbg !1753, !tbaa !473
  %cmp = icmp eq i64 %1, 2, !dbg !1753
  br i1 %cmp, label %if.end10, label %if.then, !dbg !1756

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1757, !tbaa !317
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.32, ptr noundef @.str.3, i32 noundef 648, ptr noundef @__FUNCTION__.ut_minmax_trackable), !dbg !1757
  %3 = load ptr, ptr @stderr, align 8, !dbg !1757, !tbaa !317
  %4 = load ptr, ptr %hdr, align 8, !dbg !1757, !tbaa !317
  %lowestTrackableValue2 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %4, i32 0, i32 0, !dbg !1757
  %5 = load i64, ptr %lowestTrackableValue2, align 8, !dbg !1757, !tbaa !473
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.33, i64 noundef %5, i64 noundef 2), !dbg !1757
  %6 = load ptr, ptr @stderr, align 8, !dbg !1757, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.5), !dbg !1757
  %7 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1759, !tbaa !1124
  %tobool = icmp ne i8 %7, 0, !dbg !1759
  br i1 %tobool, label %if.then5, label %if.end9, !dbg !1757

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %hdr, align 8, !dbg !1761, !tbaa !317
  %lowestTrackableValue6 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %8, i32 0, i32 0, !dbg !1761
  %9 = load i64, ptr %lowestTrackableValue6, align 8, !dbg !1761, !tbaa !473
  %cmp7 = icmp eq i64 %9, 2, !dbg !1761
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1764

if.then8:                                         ; preds = %if.then5
  br label %if.end, !dbg !1764

if.else:                                          ; preds = %if.then5
  call void @__assert_fail(ptr noundef @.str.34, ptr noundef @.str.3, i32 noundef 648, ptr noundef @__PRETTY_FUNCTION__.ut_minmax_trackable) #13, !dbg !1761
  unreachable, !dbg !1761

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1759

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1757

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1756

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1756

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !1765

do.body11:                                        ; preds = %do.end
  %10 = load ptr, ptr %hdr, align 8, !dbg !1766, !tbaa !317
  %highestTrackableValue = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %10, i32 0, i32 1, !dbg !1766
  %11 = load i64, ptr %highestTrackableValue, align 8, !dbg !1766, !tbaa !478
  %cmp12 = icmp eq i64 %11, 11, !dbg !1766
  br i1 %cmp12, label %if.end26, label %if.then13, !dbg !1769

if.then13:                                        ; preds = %do.body11
  %12 = load ptr, ptr @stderr, align 8, !dbg !1770, !tbaa !317
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.35, ptr noundef @.str.3, i32 noundef 651, ptr noundef @__FUNCTION__.ut_minmax_trackable), !dbg !1770
  %13 = load ptr, ptr @stderr, align 8, !dbg !1770, !tbaa !317
  %14 = load ptr, ptr %hdr, align 8, !dbg !1770, !tbaa !317
  %highestTrackableValue15 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %14, i32 0, i32 1, !dbg !1770
  %15 = load i64, ptr %highestTrackableValue15, align 8, !dbg !1770, !tbaa !478
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.36, i64 noundef %15, i64 noundef 11), !dbg !1770
  %16 = load ptr, ptr @stderr, align 8, !dbg !1770, !tbaa !317
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.5), !dbg !1770
  %17 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1772, !tbaa !1124
  %tobool18 = icmp ne i8 %17, 0, !dbg !1772
  br i1 %tobool18, label %if.then19, label %if.end25, !dbg !1770

if.then19:                                        ; preds = %if.then13
  %18 = load ptr, ptr %hdr, align 8, !dbg !1774, !tbaa !317
  %highestTrackableValue20 = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %18, i32 0, i32 1, !dbg !1774
  %19 = load i64, ptr %highestTrackableValue20, align 8, !dbg !1774, !tbaa !478
  %cmp21 = icmp eq i64 %19, 11, !dbg !1774
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !1777

if.then22:                                        ; preds = %if.then19
  br label %if.end24, !dbg !1777

if.else23:                                        ; preds = %if.then19
  call void @__assert_fail(ptr noundef @.str.37, ptr noundef @.str.3, i32 noundef 651, ptr noundef @__PRETTY_FUNCTION__.ut_minmax_trackable) #13, !dbg !1774
  unreachable, !dbg !1774

if.end24:                                         ; preds = %if.then22
  br label %if.end25, !dbg !1772

if.end25:                                         ; preds = %if.end24, %if.then13
  store i32 1, ptr %retval, align 4, !dbg !1770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1770

if.end26:                                         ; preds = %do.body11
  br label %do.cond27, !dbg !1769

do.cond27:                                        ; preds = %if.end26
  br label %do.end28, !dbg !1769

do.end28:                                         ; preds = %do.cond27
  %20 = load ptr, ptr %hdr, align 8, !dbg !1778, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %20), !dbg !1779
  br label %do.body29, !dbg !1780

do.body29:                                        ; preds = %do.end28
  %21 = load ptr, ptr @stderr, align 8, !dbg !1781, !tbaa !317
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 654, ptr noundef @__FUNCTION__.ut_minmax_trackable), !dbg !1781
  store i32 0, ptr %retval, align 4, !dbg !1781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1781

do.cond31:                                        ; No predecessors!
  br label %do.end32, !dbg !1781

do.end32:                                         ; preds = %do.cond31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1783
  br label %cleanup, !dbg !1783

cleanup:                                          ; preds = %do.end32, %do.body29, %if.end25, %if.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxval) #11, !dbg !1783
  call void @llvm.lifetime.end.p0(i64 8, ptr %minval) #11, !dbg !1783
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %22 = load i32, ptr %retval, align 4, !dbg !1783
  ret i32 %22, !dbg !1783

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_unitmagnitude_overflow() #0 !dbg !1784 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1788
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1786, metadata !DIExpression()), !dbg !1789
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 0, i64 noundef 200, i32 noundef 4), !dbg !1790
  store ptr %call, ptr %hdr, align 8, !dbg !1789, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1791
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1787, metadata !DIExpression()), !dbg !1792
  %0 = load ptr, ptr %hdr, align 8, !dbg !1793, !tbaa !317
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %0, i64 noundef 11), !dbg !1794
  store i32 %call1, ptr %r, align 4, !dbg !1792, !tbaa !358
  br label %do.body, !dbg !1795

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %r, align 4, !dbg !1796, !tbaa !358
  %tobool = icmp ne i32 %1, 0, !dbg !1796
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1799

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1800, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 661, ptr noundef @__FUNCTION__.ut_unitmagnitude_overflow), !dbg !1800
  %3 = load ptr, ptr @stderr, align 8, !dbg !1800, !tbaa !317
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.38), !dbg !1800
  %4 = load ptr, ptr @stderr, align 8, !dbg !1800, !tbaa !317
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.5), !dbg !1800
  %5 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1802, !tbaa !1124
  %tobool5 = icmp ne i8 %5, 0, !dbg !1802
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1800

if.then6:                                         ; preds = %if.then
  %6 = load i32, ptr %r, align 4, !dbg !1804, !tbaa !358
  %tobool7 = icmp ne i32 %6, 0, !dbg !1804
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1807

if.then8:                                         ; preds = %if.then6
  br label %if.end, !dbg !1807

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 661, ptr noundef @__PRETTY_FUNCTION__.ut_unitmagnitude_overflow) #13, !dbg !1804
  unreachable, !dbg !1804

if.end:                                           ; preds = %if.then8
  br label %if.end9, !dbg !1802

if.end9:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1800

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1799

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1799

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %hdr, align 8, !dbg !1808, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %7), !dbg !1809
  br label %do.body11, !dbg !1810

do.body11:                                        ; preds = %do.end
  %8 = load ptr, ptr @stderr, align 8, !dbg !1811, !tbaa !317
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 664, ptr noundef @__FUNCTION__.ut_unitmagnitude_overflow), !dbg !1811
  store i32 0, ptr %retval, align 4, !dbg !1811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1811

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !1811

do.end14:                                         ; preds = %do.cond13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1813
  br label %cleanup, !dbg !1813

cleanup:                                          ; preds = %do.end14, %do.body11, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1813
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1813
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %9 = load i32, ptr %retval, align 4, !dbg !1813
  ret i32 %9, !dbg !1813

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ut_subbucketmask_overflow() #0 !dbg !1814 {
entry:
  %retval = alloca i32, align 4
  %hdr = alloca ptr, align 8
  %input = alloca [3 x i64], align 16
  %exp = alloca [4 x %struct.anon.0], align 16
  %i = alloca i64, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %v = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdr) #11, !dbg !1839
  tail call void @llvm.dbg.declare(metadata ptr %hdr, metadata !1816, metadata !DIExpression()), !dbg !1840
  call void @llvm.lifetime.start.p0(i64 24, ptr %input) #11, !dbg !1841
  tail call void @llvm.dbg.declare(metadata ptr %input, metadata !1817, metadata !DIExpression()), !dbg !1842
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %input, ptr align 16 @__const.ut_subbucketmask_overflow.input, i64 24, i1 false), !dbg !1842
  call void @llvm.lifetime.start.p0(i64 64, ptr %exp) #11, !dbg !1843
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !1821, metadata !DIExpression()), !dbg !1844
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %exp, ptr align 16 @__const.ut_subbucketmask_overflow.exp, i64 64, i1 false), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1845
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1830, metadata !DIExpression()), !dbg !1846
  %call = call ptr @rd_hdr_histogram_new(i64 noundef 20000000, i64 noundef 100000000, i32 noundef 5), !dbg !1847
  store ptr %call, ptr %hdr, align 8, !dbg !1848, !tbaa !317
  store i64 0, ptr %i, align 8, !dbg !1849, !tbaa !354
  br label %for.cond, !dbg !1850

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1851, !tbaa !354
  %cmp = icmp ult i64 %0, 3, !dbg !1852
  br i1 %cmp, label %for.body, label %for.end, !dbg !1853

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1854
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1831, metadata !DIExpression()), !dbg !1855
  %1 = load ptr, ptr %hdr, align 8, !dbg !1856, !tbaa !317
  %2 = load i64, ptr %i, align 8, !dbg !1857, !tbaa !354
  %arrayidx = getelementptr inbounds [3 x i64], ptr %input, i64 0, i64 %2, !dbg !1858
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1858, !tbaa !354
  %call1 = call i32 @rd_hdr_histogram_record(ptr noundef %1, i64 noundef %3), !dbg !1859
  store i32 %call1, ptr %r, align 4, !dbg !1855, !tbaa !358
  br label %do.body, !dbg !1860

do.body:                                          ; preds = %for.body
  %4 = load i32, ptr %r, align 4, !dbg !1861, !tbaa !358
  %tobool = icmp ne i32 %4, 0, !dbg !1861
  br i1 %tobool, label %if.end11, label %if.then, !dbg !1864

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr @stderr, align 8, !dbg !1865, !tbaa !317
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 686, ptr noundef @__FUNCTION__.ut_subbucketmask_overflow), !dbg !1865
  %6 = load ptr, ptr @stderr, align 8, !dbg !1865, !tbaa !317
  %7 = load i64, ptr %i, align 8, !dbg !1865, !tbaa !354
  %arrayidx3 = getelementptr inbounds [3 x i64], ptr %input, i64 0, i64 %7, !dbg !1865
  %8 = load i64, ptr %arrayidx3, align 8, !dbg !1865, !tbaa !354
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.9, i64 noundef %8), !dbg !1865
  %9 = load ptr, ptr @stderr, align 8, !dbg !1865, !tbaa !317
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.5), !dbg !1865
  %10 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1867, !tbaa !1124
  %tobool6 = icmp ne i8 %10, 0, !dbg !1867
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !1865

if.then7:                                         ; preds = %if.then
  %11 = load i32, ptr %r, align 4, !dbg !1869, !tbaa !358
  %tobool8 = icmp ne i32 %11, 0, !dbg !1869
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !1872

if.then9:                                         ; preds = %if.then7
  br label %if.end, !dbg !1872

if.else:                                          ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 686, ptr noundef @__PRETTY_FUNCTION__.ut_subbucketmask_overflow) #13, !dbg !1869
  unreachable, !dbg !1869

if.end:                                           ; preds = %if.then9
  br label %if.end10, !dbg !1867

if.end10:                                         ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1865

if.end11:                                         ; preds = %do.body
  br label %do.cond, !dbg !1864

do.cond:                                          ; preds = %if.end11
  br label %do.end, !dbg !1864

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1873
  br label %cleanup, !dbg !1873

cleanup:                                          ; preds = %do.end, %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1873
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1874

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i64, ptr %i, align 8, !dbg !1875, !tbaa !354
  %inc = add i64 %12, 1, !dbg !1875
  store i64 %inc, ptr %i, align 8, !dbg !1875, !tbaa !354
  br label %for.cond, !dbg !1876, !llvm.loop !1877

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !1879, !tbaa !354
  br label %for.cond12, !dbg !1880

for.cond12:                                       ; preds = %for.inc44, %for.end
  %13 = load i64, ptr %i, align 8, !dbg !1881, !tbaa !354
  %cmp13 = icmp ult i64 %13, 4, !dbg !1882
  br i1 %cmp13, label %for.body14, label %for.end46, !dbg !1883

for.body14:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11, !dbg !1884
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1835, metadata !DIExpression()), !dbg !1885
  %14 = load ptr, ptr %hdr, align 8, !dbg !1886, !tbaa !317
  %15 = load i64, ptr %i, align 8, !dbg !1887, !tbaa !354
  %arrayidx15 = getelementptr inbounds [4 x %struct.anon.0], ptr %exp, i64 0, i64 %15, !dbg !1888
  %q = getelementptr inbounds %struct.anon.0, ptr %arrayidx15, i32 0, i32 0, !dbg !1889
  %16 = load double, ptr %q, align 16, !dbg !1889, !tbaa !1201
  %call16 = call i64 @rd_hdr_histogram_quantile(ptr noundef %14, double noundef %16), !dbg !1890
  store i64 %call16, ptr %v, align 8, !dbg !1885, !tbaa !354
  br label %do.body17, !dbg !1891

do.body17:                                        ; preds = %for.body14
  %17 = load i64, ptr %v, align 8, !dbg !1892, !tbaa !354
  %18 = load i64, ptr %i, align 8, !dbg !1892, !tbaa !354
  %arrayidx18 = getelementptr inbounds [4 x %struct.anon.0], ptr %exp, i64 0, i64 %18, !dbg !1892
  %v19 = getelementptr inbounds %struct.anon.0, ptr %arrayidx18, i32 0, i32 1, !dbg !1892
  %19 = load i64, ptr %v19, align 8, !dbg !1892, !tbaa !1208
  %cmp20 = icmp eq i64 %17, %19, !dbg !1892
  br i1 %cmp20, label %if.end38, label %if.then21, !dbg !1895

if.then21:                                        ; preds = %do.body17
  %20 = load ptr, ptr @stderr, align 8, !dbg !1896, !tbaa !317
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.11, ptr noundef @.str.3, i32 noundef 693, ptr noundef @__FUNCTION__.ut_subbucketmask_overflow), !dbg !1896
  %21 = load ptr, ptr @stderr, align 8, !dbg !1896, !tbaa !317
  %22 = load i64, ptr %i, align 8, !dbg !1896, !tbaa !354
  %arrayidx23 = getelementptr inbounds [4 x %struct.anon.0], ptr %exp, i64 0, i64 %22, !dbg !1896
  %q24 = getelementptr inbounds %struct.anon.0, ptr %arrayidx23, i32 0, i32 0, !dbg !1896
  %23 = load double, ptr %q24, align 16, !dbg !1896, !tbaa !1201
  %24 = load i64, ptr %v, align 8, !dbg !1896, !tbaa !354
  %25 = load i64, ptr %i, align 8, !dbg !1896, !tbaa !354
  %arrayidx25 = getelementptr inbounds [4 x %struct.anon.0], ptr %exp, i64 0, i64 %25, !dbg !1896
  %v26 = getelementptr inbounds %struct.anon.0, ptr %arrayidx25, i32 0, i32 1, !dbg !1896
  %26 = load i64, ptr %v26, align 8, !dbg !1896, !tbaa !1208
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.12, double noundef %23, i64 noundef %24, i64 noundef %26), !dbg !1896
  %27 = load ptr, ptr @stderr, align 8, !dbg !1896, !tbaa !317
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.5), !dbg !1896
  %28 = load i8, ptr @rd_unittest_assert_on_failure, align 1, !dbg !1898, !tbaa !1124
  %tobool29 = icmp ne i8 %28, 0, !dbg !1898
  br i1 %tobool29, label %if.then30, label %if.end37, !dbg !1896

if.then30:                                        ; preds = %if.then21
  %29 = load i64, ptr %v, align 8, !dbg !1900, !tbaa !354
  %30 = load i64, ptr %i, align 8, !dbg !1900, !tbaa !354
  %arrayidx31 = getelementptr inbounds [4 x %struct.anon.0], ptr %exp, i64 0, i64 %30, !dbg !1900
  %v32 = getelementptr inbounds %struct.anon.0, ptr %arrayidx31, i32 0, i32 1, !dbg !1900
  %31 = load i64, ptr %v32, align 8, !dbg !1900, !tbaa !1208
  %cmp33 = icmp eq i64 %29, %31, !dbg !1900
  br i1 %cmp33, label %if.then34, label %if.else35, !dbg !1903

if.then34:                                        ; preds = %if.then30
  br label %if.end36, !dbg !1903

if.else35:                                        ; preds = %if.then30
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.3, i32 noundef 693, ptr noundef @__PRETTY_FUNCTION__.ut_subbucketmask_overflow) #13, !dbg !1900
  unreachable, !dbg !1900

if.end36:                                         ; preds = %if.then34
  br label %if.end37, !dbg !1898

if.end37:                                         ; preds = %if.end36, %if.then21
  store i32 1, ptr %retval, align 4, !dbg !1896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1896

if.end38:                                         ; preds = %do.body17
  br label %do.cond39, !dbg !1895

do.cond39:                                        ; preds = %if.end38
  br label %do.end40, !dbg !1895

do.end40:                                         ; preds = %do.cond39
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1904
  br label %cleanup41, !dbg !1904

cleanup41:                                        ; preds = %do.end40, %if.end37
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11, !dbg !1904
  %cleanup.dest42 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest42, label %cleanup51 [
    i32 0, label %cleanup.cont43
  ]

cleanup.cont43:                                   ; preds = %cleanup41
  br label %for.inc44, !dbg !1905

for.inc44:                                        ; preds = %cleanup.cont43
  %32 = load i64, ptr %i, align 8, !dbg !1906, !tbaa !354
  %inc45 = add i64 %32, 1, !dbg !1906
  store i64 %inc45, ptr %i, align 8, !dbg !1906, !tbaa !354
  br label %for.cond12, !dbg !1907, !llvm.loop !1908

for.end46:                                        ; preds = %for.cond12
  %33 = load ptr, ptr %hdr, align 8, !dbg !1910, !tbaa !317
  call void @rd_hdr_histogram_destroy(ptr noundef %33), !dbg !1911
  br label %do.body47, !dbg !1912

do.body47:                                        ; preds = %for.end46
  %34 = load ptr, ptr @stderr, align 8, !dbg !1913, !tbaa !317
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 697, ptr noundef @__FUNCTION__.ut_subbucketmask_overflow), !dbg !1913
  store i32 0, ptr %retval, align 4, !dbg !1913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !1913

do.cond49:                                        ; No predecessors!
  br label %do.end50, !dbg !1913

do.end50:                                         ; preds = %do.cond49
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1915
  br label %cleanup51, !dbg !1915

cleanup51:                                        ; preds = %do.end50, %do.body47, %cleanup41, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 64, ptr %exp) #11, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 24, ptr %input) #11, !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdr) #11, !dbg !1915
  %cleanup.dest55 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest55, label %unreachable [
    i32 0, label %cleanup.cont56
    i32 1, label %cleanup.cont56
  ]

cleanup.cont56:                                   ; preds = %cleanup51, %cleanup51
  %35 = load i32, ptr %retval, align 4, !dbg !1915
  ret i32 %35, !dbg !1915

unreachable:                                      ; preds = %cleanup51
  unreachable
}

; Function Attrs: nounwind
declare !dbg !1916 void @free(ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1918 noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: noreturn nounwind
declare !dbg !1919 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_getCountAtIndex(ptr noundef %hdr, i32 noundef %bucketIdx, i32 noundef %subBucketIdx) #1 !dbg !1925 {
entry:
  %hdr.addr = alloca ptr, align 8
  %bucketIdx.addr = alloca i32, align 4
  %subBucketIdx.addr = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !1929, metadata !DIExpression()), !dbg !1932
  store i32 %bucketIdx, ptr %bucketIdx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %bucketIdx.addr, metadata !1930, metadata !DIExpression()), !dbg !1933
  store i32 %subBucketIdx, ptr %subBucketIdx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %subBucketIdx.addr, metadata !1931, metadata !DIExpression()), !dbg !1934
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !1935, !tbaa !317
  %counts = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %0, i32 0, i32 11, !dbg !1936
  %1 = load ptr, ptr %counts, align 8, !dbg !1936, !tbaa !459
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !1937, !tbaa !317
  %3 = load i32, ptr %bucketIdx.addr, align 4, !dbg !1938, !tbaa !358
  %4 = load i32, ptr %subBucketIdx.addr, align 4, !dbg !1939, !tbaa !358
  %call = call i32 @rd_hdr_countsIndex(ptr noundef %2, i32 noundef %3, i32 noundef %4), !dbg !1940
  %idxprom = sext i32 %call to i64, !dbg !1935
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %idxprom, !dbg !1935
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1935, !tbaa !354
  ret i64 %5, !dbg !1941
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_valueFromIndex(ptr noundef %hdr, i32 noundef %bucketIdx, i32 noundef %subBucketIdx) #1 !dbg !1942 {
entry:
  %hdr.addr = alloca ptr, align 8
  %bucketIdx.addr = alloca i32, align 4
  %subBucketIdx.addr = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !1944, metadata !DIExpression()), !dbg !1947
  store i32 %bucketIdx, ptr %bucketIdx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %bucketIdx.addr, metadata !1945, metadata !DIExpression()), !dbg !1948
  store i32 %subBucketIdx, ptr %subBucketIdx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %subBucketIdx.addr, metadata !1946, metadata !DIExpression()), !dbg !1949
  %0 = load i32, ptr %subBucketIdx.addr, align 4, !dbg !1950, !tbaa !358
  %conv = sext i32 %0 to i64, !dbg !1951
  %1 = load i32, ptr %bucketIdx.addr, align 4, !dbg !1952, !tbaa !358
  %conv1 = sext i32 %1 to i64, !dbg !1953
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !1954, !tbaa !317
  %unitMagnitude = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %2, i32 0, i32 2, !dbg !1955
  %3 = load i64, ptr %unitMagnitude, align 8, !dbg !1955, !tbaa !483
  %add = add nsw i64 %conv1, %3, !dbg !1956
  %shl = shl i64 %conv, %add, !dbg !1957
  ret i64 %shl, !dbg !1958
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rd_hdr_countsIndex(ptr noundef %hdr, i32 noundef %bucketIdx, i32 noundef %subBucketIdx) #1 !dbg !1959 {
entry:
  %hdr.addr = alloca ptr, align 8
  %bucketIdx.addr = alloca i32, align 4
  %subBucketIdx.addr = alloca i32, align 4
  %bucketBaseIdx = alloca i32, align 4
  %offsetInBucket = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !1963, metadata !DIExpression()), !dbg !1968
  store i32 %bucketIdx, ptr %bucketIdx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %bucketIdx.addr, metadata !1964, metadata !DIExpression()), !dbg !1969
  store i32 %subBucketIdx, ptr %subBucketIdx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %subBucketIdx.addr, metadata !1965, metadata !DIExpression()), !dbg !1970
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketBaseIdx) #11, !dbg !1971
  tail call void @llvm.dbg.declare(metadata ptr %bucketBaseIdx, metadata !1966, metadata !DIExpression()), !dbg !1972
  %0 = load i32, ptr %bucketIdx.addr, align 4, !dbg !1973, !tbaa !358
  %add = add nsw i32 %0, 1, !dbg !1974
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !1975, !tbaa !317
  %subBucketHalfCountMagnitude = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %1, i32 0, i32 4, !dbg !1976
  %2 = load i32, ptr %subBucketHalfCountMagnitude, align 8, !dbg !1976, !tbaa !493
  %shl = shl i32 %add, %2, !dbg !1977
  store i32 %shl, ptr %bucketBaseIdx, align 4, !dbg !1972, !tbaa !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %offsetInBucket) #11, !dbg !1978
  tail call void @llvm.dbg.declare(metadata ptr %offsetInBucket, metadata !1967, metadata !DIExpression()), !dbg !1979
  %3 = load i32, ptr %subBucketIdx.addr, align 4, !dbg !1980, !tbaa !358
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !1981, !tbaa !317
  %subBucketHalfCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %4, i32 0, i32 5, !dbg !1982
  %5 = load i32, ptr %subBucketHalfCount, align 4, !dbg !1982, !tbaa !498
  %sub = sub nsw i32 %3, %5, !dbg !1983
  store i32 %sub, ptr %offsetInBucket, align 4, !dbg !1979, !tbaa !358
  %6 = load i32, ptr %bucketBaseIdx, align 4, !dbg !1984, !tbaa !358
  %7 = load i32, ptr %offsetInBucket, align 4, !dbg !1985, !tbaa !358
  %add1 = add nsw i32 %6, %7, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 4, ptr %offsetInBucket) #11, !dbg !1987
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketBaseIdx) #11, !dbg !1987
  ret i32 %add1, !dbg !1988
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_sizeOfEquivalentValueRange(ptr noundef %hdr, i64 noundef %v) #1 !dbg !1989 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %bucketIdx = alloca i32, align 4
  %subBucketIdx = alloca i32, align 4
  %adjustedBucket = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !1991, metadata !DIExpression()), !dbg !1996
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1992, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketIdx) #11, !dbg !1998
  tail call void @llvm.dbg.declare(metadata ptr %bucketIdx, metadata !1993, metadata !DIExpression()), !dbg !1999
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !2000, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !2001, !tbaa !354
  %call = call i32 @rd_hdr_getBucketIndex(ptr noundef %0, i64 noundef %1), !dbg !2002
  store i32 %call, ptr %bucketIdx, align 4, !dbg !1999, !tbaa !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %subBucketIdx) #11, !dbg !2003
  tail call void @llvm.dbg.declare(metadata ptr %subBucketIdx, metadata !1994, metadata !DIExpression()), !dbg !2004
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !2005, !tbaa !317
  %3 = load i64, ptr %v.addr, align 8, !dbg !2006, !tbaa !354
  %4 = load i32, ptr %bucketIdx, align 4, !dbg !2007, !tbaa !358
  %call1 = call i32 @rd_hdr_getSubBucketIdx(ptr noundef %2, i64 noundef %3, i32 noundef %4), !dbg !2008
  store i32 %call1, ptr %subBucketIdx, align 4, !dbg !2004, !tbaa !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %adjustedBucket) #11, !dbg !2009
  tail call void @llvm.dbg.declare(metadata ptr %adjustedBucket, metadata !1995, metadata !DIExpression()), !dbg !2010
  %5 = load i32, ptr %bucketIdx, align 4, !dbg !2011, !tbaa !358
  store i32 %5, ptr %adjustedBucket, align 4, !dbg !2010, !tbaa !358
  %6 = load i32, ptr %subBucketIdx, align 4, !dbg !2012, !tbaa !358
  %7 = load ptr, ptr %hdr.addr, align 8, !dbg !2012, !tbaa !317
  %subBucketCount = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %7, i32 0, i32 7, !dbg !2012
  %8 = load i32, ptr %subBucketCount, align 8, !dbg !2012, !tbaa !508
  %cmp = icmp sge i32 %6, %8, !dbg !2012
  %conv = zext i1 %cmp to i32, !dbg !2012
  %conv2 = sext i32 %conv to i64, !dbg !2012
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !2012
  %tobool = icmp ne i64 %expval, 0, !dbg !2012
  br i1 %tobool, label %if.then, label %if.end, !dbg !2014

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %adjustedBucket, align 4, !dbg !2015, !tbaa !358
  %inc = add nsw i32 %9, 1, !dbg !2015
  store i32 %inc, ptr %adjustedBucket, align 4, !dbg !2015, !tbaa !358
  br label %if.end, !dbg !2016

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %hdr.addr, align 8, !dbg !2017, !tbaa !317
  %unitMagnitude = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %10, i32 0, i32 2, !dbg !2018
  %11 = load i64, ptr %unitMagnitude, align 8, !dbg !2018, !tbaa !483
  %12 = load i32, ptr %adjustedBucket, align 4, !dbg !2019, !tbaa !358
  %conv3 = sext i32 %12 to i64, !dbg !2020
  %add = add nsw i64 %11, %conv3, !dbg !2021
  %shl = shl i64 1, %add, !dbg !2022
  call void @llvm.lifetime.end.p0(i64 4, ptr %adjustedBucket) #11, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 4, ptr %subBucketIdx) #11, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketIdx) #11, !dbg !2023
  ret i64 %shl, !dbg !2024
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rd_hdr_getBucketIndex(ptr noundef %hdr, i64 noundef %v) #1 !dbg !2025 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %pow2Ceiling = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !2027, metadata !DIExpression()), !dbg !2030
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.lifetime.start.p0(i64 8, ptr %pow2Ceiling) #11, !dbg !2032
  tail call void @llvm.dbg.declare(metadata ptr %pow2Ceiling, metadata !2029, metadata !DIExpression()), !dbg !2033
  %0 = load i64, ptr %v.addr, align 8, !dbg !2034, !tbaa !354
  %1 = load ptr, ptr %hdr.addr, align 8, !dbg !2035, !tbaa !317
  %subBucketMask = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %1, i32 0, i32 6, !dbg !2036
  %2 = load i64, ptr %subBucketMask, align 8, !dbg !2036, !tbaa !503
  %or = or i64 %0, %2, !dbg !2037
  %call = call i64 @bitLen(i64 noundef %or), !dbg !2038
  store i64 %call, ptr %pow2Ceiling, align 8, !dbg !2033, !tbaa !354
  %3 = load i64, ptr %pow2Ceiling, align 8, !dbg !2039, !tbaa !354
  %4 = load ptr, ptr %hdr.addr, align 8, !dbg !2040, !tbaa !317
  %unitMagnitude = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %4, i32 0, i32 2, !dbg !2041
  %5 = load i64, ptr %unitMagnitude, align 8, !dbg !2041, !tbaa !483
  %sub = sub nsw i64 %3, %5, !dbg !2042
  %6 = load ptr, ptr %hdr.addr, align 8, !dbg !2043, !tbaa !317
  %subBucketHalfCountMagnitude = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %6, i32 0, i32 4, !dbg !2044
  %7 = load i32, ptr %subBucketHalfCountMagnitude, align 8, !dbg !2044, !tbaa !493
  %add = add nsw i32 %7, 1, !dbg !2045
  %conv = sext i32 %add to i64, !dbg !2046
  %sub1 = sub nsw i64 %sub, %conv, !dbg !2047
  %conv2 = trunc i64 %sub1 to i32, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 8, ptr %pow2Ceiling) #11, !dbg !2049
  ret i32 %conv2, !dbg !2050
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rd_hdr_getSubBucketIdx(ptr noundef %hdr, i64 noundef %v, i32 noundef %idx) #1 !dbg !2051 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %idx.addr = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !2055, metadata !DIExpression()), !dbg !2058
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2056, metadata !DIExpression()), !dbg !2059
  store i32 %idx, ptr %idx.addr, align 4, !tbaa !358
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2057, metadata !DIExpression()), !dbg !2060
  %0 = load i64, ptr %v.addr, align 8, !dbg !2061, !tbaa !354
  %1 = load i32, ptr %idx.addr, align 4, !dbg !2062, !tbaa !358
  %conv = sext i32 %1 to i64, !dbg !2063
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !2064, !tbaa !317
  %unitMagnitude = getelementptr inbounds %struct.rd_hdr_histogram_s, ptr %2, i32 0, i32 2, !dbg !2065
  %3 = load i64, ptr %unitMagnitude, align 8, !dbg !2065, !tbaa !483
  %add = add nsw i64 %conv, %3, !dbg !2066
  %shr = ashr i64 %0, %add, !dbg !2067
  %conv1 = trunc i64 %shr to i32, !dbg !2068
  ret i32 %conv1, !dbg !2069
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @bitLen(i64 noundef %x) #1 !dbg !2070 {
entry:
  %x.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2074, metadata !DIExpression()), !dbg !2076
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #11, !dbg !2077
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2075, metadata !DIExpression()), !dbg !2078
  store i64 0, ptr %n, align 8, !dbg !2078, !tbaa !354
  br label %for.cond, !dbg !2079

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %x.addr, align 8, !dbg !2080, !tbaa !354
  %cmp = icmp sge i64 %0, 32768, !dbg !2083
  br i1 %cmp, label %for.body, label %for.end, !dbg !2084

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %n, align 8, !dbg !2085, !tbaa !354
  %add = add nsw i64 %1, 16, !dbg !2085
  store i64 %add, ptr %n, align 8, !dbg !2085, !tbaa !354
  br label %for.inc, !dbg !2086

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %x.addr, align 8, !dbg !2087, !tbaa !354
  %shr = ashr i64 %2, 16, !dbg !2087
  store i64 %shr, ptr %x.addr, align 8, !dbg !2087, !tbaa !354
  br label %for.cond, !dbg !2088, !llvm.loop !2089

for.end:                                          ; preds = %for.cond
  %3 = load i64, ptr %x.addr, align 8, !dbg !2091, !tbaa !354
  %cmp1 = icmp sge i64 %3, 128, !dbg !2093
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2094

if.then:                                          ; preds = %for.end
  %4 = load i64, ptr %x.addr, align 8, !dbg !2095, !tbaa !354
  %shr2 = ashr i64 %4, 8, !dbg !2095
  store i64 %shr2, ptr %x.addr, align 8, !dbg !2095, !tbaa !354
  %5 = load i64, ptr %n, align 8, !dbg !2097, !tbaa !354
  %add3 = add nsw i64 %5, 8, !dbg !2097
  store i64 %add3, ptr %n, align 8, !dbg !2097, !tbaa !354
  br label %if.end, !dbg !2098

if.end:                                           ; preds = %if.then, %for.end
  %6 = load i64, ptr %x.addr, align 8, !dbg !2099, !tbaa !354
  %cmp4 = icmp sge i64 %6, 8, !dbg !2101
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !2102

if.then5:                                         ; preds = %if.end
  %7 = load i64, ptr %x.addr, align 8, !dbg !2103, !tbaa !354
  %shr6 = ashr i64 %7, 4, !dbg !2103
  store i64 %shr6, ptr %x.addr, align 8, !dbg !2103, !tbaa !354
  %8 = load i64, ptr %n, align 8, !dbg !2105, !tbaa !354
  %add7 = add nsw i64 %8, 4, !dbg !2105
  store i64 %add7, ptr %n, align 8, !dbg !2105, !tbaa !354
  br label %if.end8, !dbg !2106

if.end8:                                          ; preds = %if.then5, %if.end
  %9 = load i64, ptr %x.addr, align 8, !dbg !2107, !tbaa !354
  %cmp9 = icmp sge i64 %9, 2, !dbg !2109
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !2110

if.then10:                                        ; preds = %if.end8
  %10 = load i64, ptr %x.addr, align 8, !dbg !2111, !tbaa !354
  %shr11 = ashr i64 %10, 2, !dbg !2111
  store i64 %shr11, ptr %x.addr, align 8, !dbg !2111, !tbaa !354
  %11 = load i64, ptr %n, align 8, !dbg !2113, !tbaa !354
  %add12 = add nsw i64 %11, 2, !dbg !2113
  store i64 %add12, ptr %n, align 8, !dbg !2113, !tbaa !354
  br label %if.end13, !dbg !2114

if.end13:                                         ; preds = %if.then10, %if.end8
  %12 = load i64, ptr %x.addr, align 8, !dbg !2115, !tbaa !354
  %cmp14 = icmp sge i64 %12, 1, !dbg !2117
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2118

if.then15:                                        ; preds = %if.end13
  %13 = load i64, ptr %n, align 8, !dbg !2119, !tbaa !354
  %inc = add nsw i64 %13, 1, !dbg !2119
  store i64 %inc, ptr %n, align 8, !dbg !2119, !tbaa !354
  br label %if.end16, !dbg !2120

if.end16:                                         ; preds = %if.then15, %if.end13
  %14 = load i64, ptr %n, align 8, !dbg !2121, !tbaa !354
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #11, !dbg !2122
  ret i64 %14, !dbg !2123
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rd_hdr_nextNonEquivalentValue(ptr noundef %hdr, i64 noundef %v) #1 !dbg !2124 {
entry:
  %hdr.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !317
  tail call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !2126, metadata !DIExpression()), !dbg !2128
  store i64 %v, ptr %v.addr, align 8, !tbaa !354
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2127, metadata !DIExpression()), !dbg !2129
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !2130, !tbaa !317
  %1 = load i64, ptr %v.addr, align 8, !dbg !2131, !tbaa !354
  %call = call i64 @rd_hdr_lowestEquivalentValue(ptr noundef %0, i64 noundef %1), !dbg !2132
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !2133, !tbaa !317
  %3 = load i64, ptr %v.addr, align 8, !dbg !2134, !tbaa !354
  %call1 = call i64 @rd_hdr_sizeOfEquivalentValueRange(ptr noundef %2, i64 noundef %3), !dbg !2135
  %add = add nsw i64 %call, %call1, !dbg !2136
  ret i64 %add, !dbg !2137
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare !dbg !2138 i32 @fprintf(ptr noundef, ptr noundef, ...) #10

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rd_dbl_eq0(double noundef %a, double noundef %b, double noundef %prec) #1 !dbg !2196 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %prec.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !622
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2201, metadata !DIExpression()), !dbg !2204
  store double %b, ptr %b.addr, align 8, !tbaa !622
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2202, metadata !DIExpression()), !dbg !2205
  store double %prec, ptr %prec.addr, align 8, !tbaa !622
  tail call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !2203, metadata !DIExpression()), !dbg !2206
  %0 = load double, ptr %a.addr, align 8, !dbg !2207, !tbaa !622
  %1 = load double, ptr %b.addr, align 8, !dbg !2208, !tbaa !622
  %sub = fsub double %0, %1, !dbg !2209
  %2 = call double @llvm.fabs.f64(double %sub), !dbg !2210
  %3 = load double, ptr %prec.addr, align 8, !dbg !2211, !tbaa !622
  %cmp = fcmp olt double %2, %3, !dbg !2212
  %conv = zext i1 %cmp to i32, !dbg !2212
  ret i32 %conv, !dbg !2213
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!272}
!llvm.module.flags = !{!285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./rd.h", directory: "/local-ssd/librdkafka-boufp7uirdfaurriupperscwkdhn6ziy-build/aidengro/spack-stage-librdkafka-2.2.0-boufp7uirdfaurriupperscwkdhn6ziy/spack-src/src", checksumkind: CSK_MD5, checksum: "0c57a7f8998af2a9e28b76545994ed9b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 32)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "rdhdrhistogram.c", directory: "/local-ssd/librdkafka-boufp7uirdfaurriupperscwkdhn6ziy-build/aidengro/spack-stage-librdkafka-2.2.0-boufp7uirdfaurriupperscwkdhn6ziy/spack-src/src", checksumkind: CSK_MD5, checksum: "82d94f5acbe1417ff35b56332e964694")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 54)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 17)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 15)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 28)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 6)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 9)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !20, line: 464, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 25)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !20, line: 468, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !16)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !20, line: 484, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 47)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !20, line: 484, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 12)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !20, line: 484, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 20)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !20, line: 484, type: !3, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !20, line: 484, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 22)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !20, line: 489, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 59)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !20, line: 489, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 27)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !20, line: 489, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 14)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !20, line: 506, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 8)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !20, line: 506, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 18)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !20, line: 510, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 75)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !20, line: 510, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 24)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !20, line: 510, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 30)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !20, line: 527, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 10)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !20, line: 527, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !70)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !20, line: 531, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 73)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !20, line: 531, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 57)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !20, line: 531, type: !36, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !20, line: 546, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !92)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !20, line: 546, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !112)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !20, line: 549, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 56)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !20, line: 549, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 33)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !20, line: 549, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 11)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !20, line: 566, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 56, elements: !10)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !20, line: 566, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !27)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !20, line: 570, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !52)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !20, line: 583, type: !162, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !20, line: 583, type: !165, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !20, line: 587, type: !168, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !20, line: 600, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !47)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !20, line: 600, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 19)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !20, line: 618, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 55)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !20, line: 618, type: !162, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !20, line: 618, type: !168, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !20, line: 618, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 21)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !20, line: 618, type: !165, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !20, line: 620, type: !86, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !20, line: 632, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 80)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !20, line: 632, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !158)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !20, line: 632, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 40)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !20, line: 632, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 35)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !20, line: 632, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 168, elements: !195)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !20, line: 646, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 81)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !20, line: 646, type: !126, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !20, line: 646, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 42)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !20, line: 646, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 36)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !20, line: 646, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !117)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !20, line: 649, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 82)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !20, line: 649, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 43)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !20, line: 649, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 37)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !20, line: 661, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 26)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !20, line: 661, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !181)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !20, line: 661, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 288, elements: !237)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !20, line: 686, type: !259, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !20, line: 686, type: !267, isLocal: true, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !273, globals: !284, splitDebugInlining: false, nameTableKind: None)
!273 = !{!274, !279, !280, !283}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !275, line: 27, baseType: !276)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !277, line: 44, baseType: !278)
!277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!278 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!279 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !275, line: 26, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !277, line: 41, baseType: !282)
!282 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!284 = !{!0, !7, !12, !18, !24, !29, !34, !39, !44, !49, !54, !57, !62, !67, !72, !74, !79, !84, !89, !94, !99, !104, !109, !114, !119, !124, !127, !132, !137, !139, !142, !145, !150, !155, !160, !163, !166, !169, !171, !173, !175, !178, !183, !188, !190, !192, !197, !199, !201, !206, !209, !214, !219, !222, !227, !229, !234, !239, !242, !247, !252, !257, !262, !265, !268, !270}
!285 = !{i32 7, !"Dwarf Version", i32 5}
!286 = !{i32 2, !"Debug Info Version", i32 3}
!287 = !{i32 1, !"wchar_size", i32 4}
!288 = !{i32 8, !"PIC Level", i32 2}
!289 = !{i32 7, !"uwtable", i32 2}
!290 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!291 = distinct !DISubprogram(name: "rd_hdr_histogram_destroy", scope: !20, file: !20, line: 81, type: !292, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !315)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "rd_hdr_histogram_t", file: !296, line: 55, baseType: !297)
!296 = !DIFile(filename: "./rdhdrhistogram.h", directory: "/local-ssd/librdkafka-boufp7uirdfaurriupperscwkdhn6ziy-build/aidengro/spack-stage-librdkafka-2.2.0-boufp7uirdfaurriupperscwkdhn6ziy/spack-src/src", checksumkind: CSK_MD5, checksum: "93e0e4fd9428d2cb262d05f12bd019f8")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rd_hdr_histogram_s", file: !296, line: 34, size: 896, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lowestTrackableValue", scope: !297, file: !296, line: 35, baseType: !274, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "highestTrackableValue", scope: !297, file: !296, line: 36, baseType: !274, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "unitMagnitude", scope: !297, file: !296, line: 37, baseType: !274, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "significantFigures", scope: !297, file: !296, line: 38, baseType: !274, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "subBucketHalfCountMagnitude", scope: !297, file: !296, line: 39, baseType: !280, size: 32, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "subBucketHalfCount", scope: !297, file: !296, line: 40, baseType: !280, size: 32, offset: 288)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "subBucketMask", scope: !297, file: !296, line: 41, baseType: !274, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "subBucketCount", scope: !297, file: !296, line: 42, baseType: !280, size: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bucketCount", scope: !297, file: !296, line: 43, baseType: !280, size: 32, offset: 416)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "countsLen", scope: !297, file: !296, line: 44, baseType: !280, size: 32, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "totalCount", scope: !297, file: !296, line: 45, baseType: !274, size: 64, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !297, file: !296, line: 46, baseType: !283, size: 64, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "outOfRangeCount", scope: !297, file: !296, line: 47, baseType: !274, size: 64, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "lowestOutOfRange", scope: !297, file: !296, line: 49, baseType: !274, size: 64, offset: 704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "highestOutOfRange", scope: !297, file: !296, line: 51, baseType: !274, size: 64, offset: 768)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "allocatedSize", scope: !297, file: !296, line: 53, baseType: !280, size: 32, offset: 832)
!315 = !{!316}
!316 = !DILocalVariable(name: "hdr", arg: 1, scope: !291, file: !20, line: 81, type: !294)
!317 = !{!318, !318, i64 0}
!318 = !{!"any pointer", !319, i64 0}
!319 = !{!"omnipotent char", !320, i64 0}
!320 = !{!"Simple C/C++ TBAA"}
!321 = !DILocation(line: 81, column: 51, scope: !291)
!322 = !DILocation(line: 82, column: 17, scope: !291)
!323 = !DILocation(line: 82, column: 9, scope: !291)
!324 = !DILocation(line: 83, column: 1, scope: !291)
!325 = distinct !DISubprogram(name: "rd_free", scope: !2, file: !2, line: 150, type: !326, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !329)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!329 = !{!330}
!330 = !DILocalVariable(name: "ptr", arg: 1, scope: !325, file: !2, line: 150, type: !328)
!331 = !DILocation(line: 150, column: 47, scope: !325)
!332 = !DILocation(line: 151, column: 14, scope: !325)
!333 = !DILocation(line: 151, column: 9, scope: !325)
!334 = !DILocation(line: 152, column: 1, scope: !325)
!335 = distinct !DISubprogram(name: "rd_hdr_histogram_new", scope: !20, file: !20, line: 85, type: !336, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!294, !274, !274, !282}
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!339 = !DILocalVariable(name: "minValue", arg: 1, scope: !335, file: !20, line: 85, type: !274)
!340 = !DILocalVariable(name: "maxValue", arg: 2, scope: !335, file: !20, line: 86, type: !274)
!341 = !DILocalVariable(name: "significantFigures", arg: 3, scope: !335, file: !20, line: 87, type: !282)
!342 = !DILocalVariable(name: "hdr", scope: !335, file: !20, line: 88, type: !294)
!343 = !DILocalVariable(name: "largestValueWithSingleUnitResolution", scope: !335, file: !20, line: 89, type: !274)
!344 = !DILocalVariable(name: "subBucketCountMagnitude", scope: !335, file: !20, line: 90, type: !280)
!345 = !DILocalVariable(name: "subBucketHalfCountMagnitude", scope: !335, file: !20, line: 91, type: !280)
!346 = !DILocalVariable(name: "unitMagnitude", scope: !335, file: !20, line: 92, type: !280)
!347 = !DILocalVariable(name: "subBucketCount", scope: !335, file: !20, line: 93, type: !280)
!348 = !DILocalVariable(name: "subBucketHalfCount", scope: !335, file: !20, line: 94, type: !280)
!349 = !DILocalVariable(name: "subBucketMask", scope: !335, file: !20, line: 95, type: !274)
!350 = !DILocalVariable(name: "smallestUntrackableValue", scope: !335, file: !20, line: 96, type: !274)
!351 = !DILocalVariable(name: "bucketsNeeded", scope: !335, file: !20, line: 97, type: !280)
!352 = !DILocalVariable(name: "bucketCount", scope: !335, file: !20, line: 98, type: !280)
!353 = !DILocalVariable(name: "countsLen", scope: !335, file: !20, line: 99, type: !280)
!354 = !{!355, !355, i64 0}
!355 = !{!"long", !319, i64 0}
!356 = !DILocation(line: 85, column: 50, scope: !335)
!357 = !DILocation(line: 86, column: 50, scope: !335)
!358 = !{!359, !359, i64 0}
!359 = !{!"int", !319, i64 0}
!360 = !DILocation(line: 87, column: 46, scope: !335)
!361 = !DILocation(line: 88, column: 9, scope: !335)
!362 = !DILocation(line: 88, column: 29, scope: !335)
!363 = !DILocation(line: 89, column: 9, scope: !335)
!364 = !DILocation(line: 89, column: 17, scope: !335)
!365 = !DILocation(line: 90, column: 9, scope: !335)
!366 = !DILocation(line: 90, column: 17, scope: !335)
!367 = !DILocation(line: 91, column: 9, scope: !335)
!368 = !DILocation(line: 91, column: 17, scope: !335)
!369 = !DILocation(line: 92, column: 9, scope: !335)
!370 = !DILocation(line: 92, column: 17, scope: !335)
!371 = !DILocation(line: 93, column: 9, scope: !335)
!372 = !DILocation(line: 93, column: 17, scope: !335)
!373 = !DILocation(line: 94, column: 9, scope: !335)
!374 = !DILocation(line: 94, column: 17, scope: !335)
!375 = !DILocation(line: 95, column: 9, scope: !335)
!376 = !DILocation(line: 95, column: 17, scope: !335)
!377 = !DILocation(line: 96, column: 9, scope: !335)
!378 = !DILocation(line: 96, column: 17, scope: !335)
!379 = !DILocation(line: 97, column: 9, scope: !335)
!380 = !DILocation(line: 97, column: 17, scope: !335)
!381 = !DILocation(line: 98, column: 9, scope: !335)
!382 = !DILocation(line: 98, column: 17, scope: !335)
!383 = !DILocation(line: 99, column: 9, scope: !335)
!384 = !DILocation(line: 99, column: 17, scope: !335)
!385 = !DILocation(line: 101, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !335, file: !20, line: 101, column: 13)
!387 = !DILocation(line: 101, column: 32, scope: !386)
!388 = !DILocation(line: 101, column: 36, scope: !386)
!389 = !DILocation(line: 101, column: 39, scope: !386)
!390 = !DILocation(line: 101, column: 58, scope: !386)
!391 = !DILocation(line: 101, column: 13, scope: !335)
!392 = !DILocation(line: 102, column: 17, scope: !386)
!393 = !DILocation(line: 105, column: 47, scope: !335)
!394 = !DILocation(line: 105, column: 39, scope: !335)
!395 = !DILocation(line: 105, column: 29, scope: !335)
!396 = !DILocation(line: 105, column: 27, scope: !335)
!397 = !DILocation(line: 105, column: 13, scope: !335)
!398 = !DILocation(line: 104, column: 46, scope: !335)
!399 = !DILocation(line: 108, column: 40, scope: !335)
!400 = !DILocation(line: 108, column: 32, scope: !335)
!401 = !DILocation(line: 108, column: 27, scope: !335)
!402 = !DILocation(line: 108, column: 22, scope: !335)
!403 = !DILocation(line: 108, column: 13, scope: !335)
!404 = !DILocation(line: 107, column: 33, scope: !335)
!405 = !DILocation(line: 110, column: 39, scope: !335)
!406 = !DILocation(line: 110, column: 74, scope: !335)
!407 = !DILocation(line: 110, column: 37, scope: !335)
!408 = !DILocation(line: 112, column: 34, scope: !335)
!409 = !DILocation(line: 112, column: 25, scope: !335)
!410 = !DILocation(line: 112, column: 23, scope: !335)
!411 = !DILocation(line: 115, column: 37, scope: !335)
!412 = !DILocation(line: 115, column: 29, scope: !335)
!413 = !DILocation(line: 115, column: 65, scope: !335)
!414 = !DILocation(line: 115, column: 22, scope: !335)
!415 = !DILocation(line: 115, column: 13, scope: !335)
!416 = !DILocation(line: 114, column: 24, scope: !335)
!417 = !DILocation(line: 117, column: 30, scope: !335)
!418 = !DILocation(line: 117, column: 45, scope: !335)
!419 = !DILocation(line: 117, column: 28, scope: !335)
!420 = !DILocation(line: 119, column: 35, scope: !335)
!421 = !DILocation(line: 119, column: 50, scope: !335)
!422 = !DILocation(line: 119, column: 25, scope: !335)
!423 = !DILocation(line: 119, column: 58, scope: !335)
!424 = !DILocation(line: 119, column: 55, scope: !335)
!425 = !DILocation(line: 119, column: 23, scope: !335)
!426 = !DILocation(line: 123, column: 45, scope: !335)
!427 = !DILocation(line: 123, column: 36, scope: !335)
!428 = !DILocation(line: 123, column: 63, scope: !335)
!429 = !DILocation(line: 123, column: 60, scope: !335)
!430 = !DILocation(line: 123, column: 34, scope: !335)
!431 = !DILocation(line: 124, column: 9, scope: !335)
!432 = !DILocation(line: 124, column: 16, scope: !335)
!433 = !DILocation(line: 124, column: 43, scope: !335)
!434 = !DILocation(line: 124, column: 41, scope: !335)
!435 = !DILocation(line: 125, column: 42, scope: !436)
!436 = distinct !DILexicalBlock(scope: !335, file: !20, line: 124, column: 53)
!437 = !DILocation(line: 126, column: 30, scope: !436)
!438 = distinct !{!438, !431, !439, !440}
!439 = !DILocation(line: 127, column: 9, scope: !335)
!440 = !{!"llvm.loop.mustprogress"}
!441 = !DILocation(line: 129, column: 23, scope: !335)
!442 = !DILocation(line: 129, column: 21, scope: !335)
!443 = !DILocation(line: 130, column: 24, scope: !335)
!444 = !DILocation(line: 130, column: 36, scope: !335)
!445 = !DILocation(line: 130, column: 44, scope: !335)
!446 = !DILocation(line: 130, column: 59, scope: !335)
!447 = !DILocation(line: 130, column: 41, scope: !335)
!448 = !DILocation(line: 130, column: 21, scope: !335)
!449 = !DILocation(line: 131, column: 67, scope: !335)
!450 = !DILocation(line: 131, column: 65, scope: !335)
!451 = !DILocation(line: 131, column: 41, scope: !335)
!452 = !DILocation(line: 131, column: 15, scope: !335)
!453 = !DILocation(line: 131, column: 13, scope: !335)
!454 = !DILocation(line: 132, column: 42, scope: !335)
!455 = !DILocation(line: 132, column: 46, scope: !335)
!456 = !DILocation(line: 132, column: 9, scope: !335)
!457 = !DILocation(line: 132, column: 14, scope: !335)
!458 = !DILocation(line: 132, column: 28, scope: !335)
!459 = !{!460, !318, i64 72}
!460 = !{!"rd_hdr_histogram_s", !355, i64 0, !355, i64 8, !355, i64 16, !355, i64 24, !359, i64 32, !359, i64 36, !355, i64 40, !359, i64 48, !359, i64 52, !359, i64 56, !355, i64 64, !318, i64 72, !355, i64 80, !355, i64 88, !355, i64 96, !359, i64 104}
!461 = !DILocation(line: 133, column: 69, scope: !335)
!462 = !DILocation(line: 133, column: 67, scope: !335)
!463 = !DILocation(line: 133, column: 43, scope: !335)
!464 = !DILocation(line: 133, column: 30, scope: !335)
!465 = !DILocation(line: 133, column: 9, scope: !335)
!466 = !DILocation(line: 133, column: 14, scope: !335)
!467 = !DILocation(line: 133, column: 28, scope: !335)
!468 = !{!460, !359, i64 104}
!469 = !DILocation(line: 135, column: 44, scope: !335)
!470 = !DILocation(line: 135, column: 9, scope: !335)
!471 = !DILocation(line: 135, column: 14, scope: !335)
!472 = !DILocation(line: 135, column: 42, scope: !335)
!473 = !{!460, !355, i64 0}
!474 = !DILocation(line: 136, column: 44, scope: !335)
!475 = !DILocation(line: 136, column: 9, scope: !335)
!476 = !DILocation(line: 136, column: 14, scope: !335)
!477 = !DILocation(line: 136, column: 42, scope: !335)
!478 = !{!460, !355, i64 8}
!479 = !DILocation(line: 137, column: 44, scope: !335)
!480 = !DILocation(line: 137, column: 9, scope: !335)
!481 = !DILocation(line: 137, column: 14, scope: !335)
!482 = !DILocation(line: 137, column: 42, scope: !335)
!483 = !{!460, !355, i64 16}
!484 = !DILocation(line: 138, column: 44, scope: !335)
!485 = !DILocation(line: 138, column: 9, scope: !335)
!486 = !DILocation(line: 138, column: 14, scope: !335)
!487 = !DILocation(line: 138, column: 42, scope: !335)
!488 = !{!460, !355, i64 24}
!489 = !DILocation(line: 139, column: 44, scope: !335)
!490 = !DILocation(line: 139, column: 9, scope: !335)
!491 = !DILocation(line: 139, column: 14, scope: !335)
!492 = !DILocation(line: 139, column: 42, scope: !335)
!493 = !{!460, !359, i64 32}
!494 = !DILocation(line: 140, column: 44, scope: !335)
!495 = !DILocation(line: 140, column: 9, scope: !335)
!496 = !DILocation(line: 140, column: 14, scope: !335)
!497 = !DILocation(line: 140, column: 42, scope: !335)
!498 = !{!460, !359, i64 36}
!499 = !DILocation(line: 141, column: 44, scope: !335)
!500 = !DILocation(line: 141, column: 9, scope: !335)
!501 = !DILocation(line: 141, column: 14, scope: !335)
!502 = !DILocation(line: 141, column: 42, scope: !335)
!503 = !{!460, !355, i64 40}
!504 = !DILocation(line: 142, column: 44, scope: !335)
!505 = !DILocation(line: 142, column: 9, scope: !335)
!506 = !DILocation(line: 142, column: 14, scope: !335)
!507 = !DILocation(line: 142, column: 42, scope: !335)
!508 = !{!460, !359, i64 48}
!509 = !DILocation(line: 143, column: 44, scope: !335)
!510 = !DILocation(line: 143, column: 9, scope: !335)
!511 = !DILocation(line: 143, column: 14, scope: !335)
!512 = !DILocation(line: 143, column: 42, scope: !335)
!513 = !{!460, !359, i64 52}
!514 = !DILocation(line: 144, column: 44, scope: !335)
!515 = !DILocation(line: 144, column: 9, scope: !335)
!516 = !DILocation(line: 144, column: 14, scope: !335)
!517 = !DILocation(line: 144, column: 42, scope: !335)
!518 = !{!460, !359, i64 56}
!519 = !DILocation(line: 145, column: 9, scope: !335)
!520 = !DILocation(line: 145, column: 14, scope: !335)
!521 = !DILocation(line: 145, column: 42, scope: !335)
!522 = !{!460, !355, i64 64}
!523 = !DILocation(line: 146, column: 44, scope: !335)
!524 = !DILocation(line: 146, column: 9, scope: !335)
!525 = !DILocation(line: 146, column: 14, scope: !335)
!526 = !DILocation(line: 146, column: 42, scope: !335)
!527 = !{!460, !355, i64 88}
!528 = !DILocation(line: 147, column: 44, scope: !335)
!529 = !DILocation(line: 147, column: 9, scope: !335)
!530 = !DILocation(line: 147, column: 14, scope: !335)
!531 = !DILocation(line: 147, column: 42, scope: !335)
!532 = !{!460, !355, i64 96}
!533 = !DILocation(line: 149, column: 16, scope: !335)
!534 = !DILocation(line: 149, column: 9, scope: !335)
!535 = !DILocation(line: 150, column: 1, scope: !335)
!536 = !DISubprogram(name: "pow", scope: !537, file: !537, line: 140, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!538 = !DISubroutineType(types: !539)
!539 = !{!279, !279, !279}
!540 = !DISubprogram(name: "log2", scope: !537, file: !537, line: 133, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!279, !279}
!543 = distinct !DISubprogram(name: "rd_calloc", scope: !2, file: !2, line: 132, type: !544, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !549)
!544 = !DISubroutineType(types: !545)
!545 = !{!328, !546, !546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !547, line: 70, baseType: !548)
!547 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!548 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!549 = !{!550, !551, !552}
!550 = !DILocalVariable(name: "num", arg: 1, scope: !543, file: !2, line: 132, type: !546)
!551 = !DILocalVariable(name: "sz", arg: 2, scope: !543, file: !2, line: 132, type: !546)
!552 = !DILocalVariable(name: "p", scope: !543, file: !2, line: 133, type: !328)
!553 = !DILocation(line: 132, column: 51, scope: !543)
!554 = !DILocation(line: 132, column: 63, scope: !543)
!555 = !DILocation(line: 133, column: 9, scope: !543)
!556 = !DILocation(line: 133, column: 15, scope: !543)
!557 = !DILocation(line: 133, column: 26, scope: !543)
!558 = !DILocation(line: 133, column: 31, scope: !543)
!559 = !DILocation(line: 133, column: 19, scope: !543)
!560 = !DILocation(line: 134, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 134, column: 9)
!562 = distinct !DILexicalBlock(scope: !543, file: !2, line: 134, column: 9)
!563 = !DILocation(line: 134, column: 9, scope: !562)
!564 = !DILocation(line: 135, column: 16, scope: !543)
!565 = !DILocation(line: 136, column: 1, scope: !543)
!566 = !DILocation(line: 135, column: 9, scope: !543)
!567 = distinct !DISubprogram(name: "rd_hdr_histogram_reset", scope: !20, file: !20, line: 155, type: !292, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !568)
!568 = !{!569, !570}
!569 = !DILocalVariable(name: "hdr", arg: 1, scope: !567, file: !20, line: 155, type: !294)
!570 = !DILocalVariable(name: "i", scope: !567, file: !20, line: 156, type: !280)
!571 = !DILocation(line: 155, column: 49, scope: !567)
!572 = !DILocation(line: 156, column: 9, scope: !567)
!573 = !DILocation(line: 156, column: 17, scope: !567)
!574 = !DILocation(line: 157, column: 9, scope: !567)
!575 = !DILocation(line: 157, column: 14, scope: !567)
!576 = !DILocation(line: 157, column: 25, scope: !567)
!577 = !DILocation(line: 158, column: 16, scope: !578)
!578 = distinct !DILexicalBlock(scope: !567, file: !20, line: 158, column: 9)
!579 = !DILocation(line: 158, column: 14, scope: !578)
!580 = !DILocation(line: 158, column: 21, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !20, line: 158, column: 9)
!582 = !DILocation(line: 158, column: 25, scope: !581)
!583 = !DILocation(line: 158, column: 30, scope: !581)
!584 = !DILocation(line: 158, column: 23, scope: !581)
!585 = !DILocation(line: 158, column: 9, scope: !578)
!586 = !DILocation(line: 159, column: 17, scope: !581)
!587 = !DILocation(line: 159, column: 22, scope: !581)
!588 = !DILocation(line: 159, column: 29, scope: !581)
!589 = !DILocation(line: 159, column: 32, scope: !581)
!590 = !DILocation(line: 158, column: 42, scope: !581)
!591 = !DILocation(line: 158, column: 9, scope: !581)
!592 = distinct !{!592, !585, !593, !440}
!593 = !DILocation(line: 159, column: 34, scope: !578)
!594 = !DILocation(line: 160, column: 1, scope: !567)
!595 = distinct !DISubprogram(name: "rd_hdr_histogram_stddev", scope: !20, file: !20, line: 308, type: !596, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!279, !294}
!598 = !{!599, !600, !601, !602, !615}
!599 = !DILocalVariable(name: "hdr", arg: 1, scope: !595, file: !20, line: 308, type: !294)
!600 = !DILocalVariable(name: "mean", scope: !595, file: !20, line: 309, type: !279)
!601 = !DILocalVariable(name: "geometricDevTotal", scope: !595, file: !20, line: 310, type: !279)
!602 = !DILocalVariable(name: "it", scope: !595, file: !20, line: 311, type: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "rd_hdr_iter_t", file: !20, line: 276, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rd_hdr_iter_s", file: !20, line: 268, size: 384, elements: !605)
!605 = !{!606, !609, !610, !611, !612, !613, !614}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !604, file: !20, line: 269, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bucketIdx", scope: !604, file: !20, line: 270, baseType: !282, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "subBucketIdx", scope: !604, file: !20, line: 271, baseType: !282, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "countAtIdx", scope: !604, file: !20, line: 272, baseType: !274, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "countToIdx", scope: !604, file: !20, line: 273, baseType: !274, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "valueFromIdx", scope: !604, file: !20, line: 274, baseType: !274, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "highestEquivalentValue", scope: !604, file: !20, line: 275, baseType: !274, size: 64, offset: 320)
!615 = !DILocalVariable(name: "dev", scope: !616, file: !20, line: 320, type: !279)
!616 = distinct !DILexicalBlock(scope: !595, file: !20, line: 319, column: 39)
!617 = !DILocation(line: 308, column: 52, scope: !595)
!618 = !DILocation(line: 309, column: 9, scope: !595)
!619 = !DILocation(line: 309, column: 16, scope: !595)
!620 = !DILocation(line: 310, column: 9, scope: !595)
!621 = !DILocation(line: 310, column: 16, scope: !595)
!622 = !{!623, !623, i64 0}
!623 = !{!"double", !319, i64 0}
!624 = !DILocation(line: 311, column: 9, scope: !595)
!625 = !DILocation(line: 311, column: 23, scope: !595)
!626 = !DILocation(line: 311, column: 36, scope: !595)
!627 = !{!628, !318, i64 0}
!628 = !{!"rd_hdr_iter_s", !318, i64 0, !359, i64 8, !359, i64 12, !355, i64 16, !355, i64 24, !355, i64 32, !355, i64 40}
!629 = !{!628, !359, i64 12}
!630 = !DILocation(line: 313, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !595, file: !20, line: 313, column: 13)
!632 = !DILocation(line: 313, column: 18, scope: !631)
!633 = !DILocation(line: 313, column: 29, scope: !631)
!634 = !DILocation(line: 313, column: 13, scope: !595)
!635 = !DILocation(line: 314, column: 17, scope: !631)
!636 = !DILocation(line: 316, column: 38, scope: !595)
!637 = !DILocation(line: 316, column: 16, scope: !595)
!638 = !DILocation(line: 316, column: 14, scope: !595)
!639 = !DILocation(line: 319, column: 9, scope: !595)
!640 = !DILocation(line: 319, column: 16, scope: !595)
!641 = !DILocation(line: 320, column: 17, scope: !616)
!642 = !DILocation(line: 320, column: 24, scope: !616)
!643 = !DILocation(line: 322, column: 24, scope: !644)
!644 = distinct !DILexicalBlock(scope: !616, file: !20, line: 322, column: 21)
!645 = !{!628, !355, i64 16}
!646 = !DILocation(line: 322, column: 35, scope: !644)
!647 = !DILocation(line: 322, column: 21, scope: !616)
!648 = !DILocation(line: 323, column: 25, scope: !644)
!649 = distinct !{!649, !639, !650, !440}
!650 = !DILocation(line: 329, column: 9, scope: !595)
!651 = !DILocation(line: 326, column: 58, scope: !616)
!652 = !DILocation(line: 326, column: 66, scope: !616)
!653 = !{!628, !355, i64 32}
!654 = !DILocation(line: 326, column: 29, scope: !616)
!655 = !DILocation(line: 326, column: 21, scope: !616)
!656 = !DILocation(line: 327, column: 21, scope: !616)
!657 = !DILocation(line: 326, column: 80, scope: !616)
!658 = !DILocation(line: 325, column: 21, scope: !616)
!659 = !DILocation(line: 328, column: 39, scope: !616)
!660 = !DILocation(line: 328, column: 45, scope: !616)
!661 = !DILocation(line: 328, column: 43, scope: !616)
!662 = !DILocation(line: 328, column: 63, scope: !616)
!663 = !DILocation(line: 328, column: 52, scope: !616)
!664 = !DILocation(line: 328, column: 35, scope: !616)
!665 = !DILocation(line: 331, column: 21, scope: !595)
!666 = !DILocation(line: 331, column: 49, scope: !595)
!667 = !DILocation(line: 331, column: 54, scope: !595)
!668 = !DILocation(line: 331, column: 41, scope: !595)
!669 = !DILocation(line: 331, column: 39, scope: !595)
!670 = !DILocation(line: 331, column: 16, scope: !595)
!671 = !DILocation(line: 331, column: 9, scope: !595)
!672 = !DILocation(line: 332, column: 1, scope: !595)
!673 = distinct !DISubprogram(name: "rd_hdr_histogram_mean", scope: !20, file: !20, line: 368, type: !674, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{!279, !607}
!676 = !{!677, !678, !679}
!677 = !DILocalVariable(name: "hdr", arg: 1, scope: !673, file: !20, line: 368, type: !607)
!678 = !DILocalVariable(name: "total", scope: !673, file: !20, line: 369, type: !274)
!679 = !DILocalVariable(name: "it", scope: !673, file: !20, line: 370, type: !603)
!680 = !DILocation(line: 368, column: 56, scope: !673)
!681 = !DILocation(line: 369, column: 9, scope: !673)
!682 = !DILocation(line: 369, column: 17, scope: !673)
!683 = !DILocation(line: 370, column: 9, scope: !673)
!684 = !DILocation(line: 370, column: 23, scope: !673)
!685 = !DILocation(line: 370, column: 28, scope: !673)
!686 = !DILocation(line: 372, column: 13, scope: !687)
!687 = distinct !DILexicalBlock(scope: !673, file: !20, line: 372, column: 13)
!688 = !DILocation(line: 372, column: 18, scope: !687)
!689 = !DILocation(line: 372, column: 29, scope: !687)
!690 = !DILocation(line: 372, column: 13, scope: !673)
!691 = !DILocation(line: 373, column: 17, scope: !687)
!692 = !DILocation(line: 375, column: 9, scope: !673)
!693 = !DILocation(line: 375, column: 16, scope: !673)
!694 = !DILocation(line: 376, column: 24, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !20, line: 376, column: 21)
!696 = distinct !DILexicalBlock(scope: !673, file: !20, line: 375, column: 39)
!697 = !DILocation(line: 376, column: 35, scope: !695)
!698 = !DILocation(line: 376, column: 21, scope: !696)
!699 = !DILocation(line: 377, column: 37, scope: !695)
!700 = !DILocation(line: 378, column: 54, scope: !695)
!701 = !DILocation(line: 378, column: 62, scope: !695)
!702 = !DILocation(line: 377, column: 50, scope: !695)
!703 = !DILocation(line: 377, column: 48, scope: !695)
!704 = !DILocation(line: 377, column: 31, scope: !695)
!705 = !DILocation(line: 377, column: 25, scope: !695)
!706 = distinct !{!706, !692, !707, !440}
!707 = !DILocation(line: 379, column: 9, scope: !673)
!708 = !DILocation(line: 380, column: 24, scope: !673)
!709 = !DILocation(line: 380, column: 16, scope: !673)
!710 = !DILocation(line: 380, column: 40, scope: !673)
!711 = !DILocation(line: 380, column: 45, scope: !673)
!712 = !DILocation(line: 380, column: 32, scope: !673)
!713 = !DILocation(line: 380, column: 30, scope: !673)
!714 = !DILocation(line: 380, column: 9, scope: !673)
!715 = !DILocation(line: 381, column: 1, scope: !673)
!716 = distinct !DISubprogram(name: "rd_hdr_iter_next", scope: !20, file: !20, line: 281, type: !717, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !720)
!717 = !DISubroutineType(types: !718)
!718 = !{!282, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "it", arg: 1, scope: !716, file: !20, line: 281, type: !719)
!722 = !DILocalVariable(name: "hdr", scope: !716, file: !20, line: 282, type: !607)
!723 = !DILocation(line: 281, column: 44, scope: !716)
!724 = !DILocation(line: 282, column: 9, scope: !716)
!725 = !DILocation(line: 282, column: 35, scope: !716)
!726 = !DILocation(line: 282, column: 41, scope: !716)
!727 = !DILocation(line: 282, column: 45, scope: !716)
!728 = !DILocation(line: 284, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !716, file: !20, line: 284, column: 13)
!730 = !{!628, !355, i64 24}
!731 = !DILocation(line: 284, column: 13, scope: !716)
!732 = !DILocation(line: 285, column: 17, scope: !729)
!733 = !DILocation(line: 287, column: 9, scope: !716)
!734 = !DILocation(line: 287, column: 13, scope: !716)
!735 = !DILocation(line: 287, column: 25, scope: !716)
!736 = !DILocation(line: 288, column: 13, scope: !737)
!737 = distinct !DILexicalBlock(scope: !716, file: !20, line: 288, column: 13)
!738 = !DILocation(line: 288, column: 13, scope: !716)
!739 = !DILocation(line: 289, column: 36, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !20, line: 288, column: 64)
!741 = !DILocation(line: 289, column: 41, scope: !740)
!742 = !DILocation(line: 289, column: 17, scope: !740)
!743 = !DILocation(line: 289, column: 21, scope: !740)
!744 = !DILocation(line: 289, column: 34, scope: !740)
!745 = !DILocation(line: 290, column: 17, scope: !740)
!746 = !DILocation(line: 290, column: 21, scope: !740)
!747 = !DILocation(line: 290, column: 30, scope: !740)
!748 = !{!628, !359, i64 8}
!749 = !DILocation(line: 291, column: 9, scope: !740)
!750 = !DILocation(line: 293, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !716, file: !20, line: 293, column: 13)
!752 = !DILocation(line: 293, column: 13, scope: !716)
!753 = !DILocation(line: 294, column: 17, scope: !751)
!754 = !DILocation(line: 297, column: 36, scope: !716)
!755 = !DILocation(line: 297, column: 41, scope: !716)
!756 = !DILocation(line: 297, column: 45, scope: !716)
!757 = !DILocation(line: 297, column: 56, scope: !716)
!758 = !DILocation(line: 297, column: 60, scope: !716)
!759 = !DILocation(line: 297, column: 13, scope: !716)
!760 = !DILocation(line: 296, column: 9, scope: !716)
!761 = !DILocation(line: 296, column: 13, scope: !716)
!762 = !DILocation(line: 296, column: 24, scope: !716)
!763 = !DILocation(line: 298, column: 27, scope: !716)
!764 = !DILocation(line: 298, column: 31, scope: !716)
!765 = !DILocation(line: 298, column: 9, scope: !716)
!766 = !DILocation(line: 298, column: 13, scope: !716)
!767 = !DILocation(line: 298, column: 24, scope: !716)
!768 = !DILocation(line: 300, column: 35, scope: !716)
!769 = !DILocation(line: 300, column: 40, scope: !716)
!770 = !DILocation(line: 300, column: 44, scope: !716)
!771 = !DILocation(line: 300, column: 55, scope: !716)
!772 = !DILocation(line: 300, column: 59, scope: !716)
!773 = !DILocation(line: 300, column: 13, scope: !716)
!774 = !DILocation(line: 299, column: 9, scope: !716)
!775 = !DILocation(line: 299, column: 13, scope: !716)
!776 = !DILocation(line: 299, column: 26, scope: !716)
!777 = !DILocation(line: 302, column: 43, scope: !716)
!778 = !DILocation(line: 302, column: 48, scope: !716)
!779 = !DILocation(line: 302, column: 52, scope: !716)
!780 = !DILocation(line: 302, column: 13, scope: !716)
!781 = !DILocation(line: 301, column: 9, scope: !716)
!782 = !DILocation(line: 301, column: 13, scope: !716)
!783 = !DILocation(line: 301, column: 36, scope: !716)
!784 = !{!628, !355, i64 40}
!785 = !DILocation(line: 304, column: 9, scope: !716)
!786 = !DILocation(line: 305, column: 1, scope: !716)
!787 = distinct !DISubprogram(name: "rd_hdr_medianEquivalentValue", scope: !20, file: !20, line: 253, type: !788, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!274, !607, !274}
!790 = !{!791, !792}
!791 = !DILocalVariable(name: "hdr", arg: 1, scope: !787, file: !20, line: 253, type: !607)
!792 = !DILocalVariable(name: "v", arg: 2, scope: !787, file: !20, line: 253, type: !274)
!793 = !DILocation(line: 253, column: 56, scope: !787)
!794 = !DILocation(line: 253, column: 69, scope: !787)
!795 = !DILocation(line: 254, column: 45, scope: !787)
!796 = !DILocation(line: 254, column: 50, scope: !787)
!797 = !DILocation(line: 254, column: 16, scope: !787)
!798 = !DILocation(line: 255, column: 51, scope: !787)
!799 = !DILocation(line: 255, column: 56, scope: !787)
!800 = !DILocation(line: 255, column: 17, scope: !787)
!801 = !DILocation(line: 255, column: 59, scope: !787)
!802 = !DILocation(line: 254, column: 53, scope: !787)
!803 = !DILocation(line: 254, column: 9, scope: !787)
!804 = !DISubprogram(name: "sqrt", scope: !537, file: !537, line: 143, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = distinct !DISubprogram(name: "rd_hdr_histogram_max", scope: !20, file: !20, line: 338, type: !806, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!274, !607}
!808 = !{!809, !810, !811}
!809 = !DILocalVariable(name: "hdr", arg: 1, scope: !805, file: !20, line: 338, type: !607)
!810 = !DILocalVariable(name: "vmax", scope: !805, file: !20, line: 339, type: !274)
!811 = !DILocalVariable(name: "it", scope: !805, file: !20, line: 340, type: !603)
!812 = !DILocation(line: 338, column: 56, scope: !805)
!813 = !DILocation(line: 339, column: 9, scope: !805)
!814 = !DILocation(line: 339, column: 17, scope: !805)
!815 = !DILocation(line: 340, column: 9, scope: !805)
!816 = !DILocation(line: 340, column: 23, scope: !805)
!817 = !DILocation(line: 340, column: 28, scope: !805)
!818 = !DILocation(line: 342, column: 9, scope: !805)
!819 = !DILocation(line: 342, column: 16, scope: !805)
!820 = !DILocation(line: 343, column: 24, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !20, line: 343, column: 21)
!822 = distinct !DILexicalBlock(scope: !805, file: !20, line: 342, column: 39)
!823 = !DILocation(line: 343, column: 35, scope: !821)
!824 = !DILocation(line: 343, column: 21, scope: !822)
!825 = !DILocation(line: 344, column: 35, scope: !821)
!826 = !DILocation(line: 344, column: 30, scope: !821)
!827 = !DILocation(line: 344, column: 25, scope: !821)
!828 = distinct !{!828, !818, !829, !440}
!829 = !DILocation(line: 345, column: 9, scope: !805)
!830 = !DILocation(line: 346, column: 46, scope: !805)
!831 = !DILocation(line: 346, column: 51, scope: !805)
!832 = !DILocation(line: 346, column: 16, scope: !805)
!833 = !DILocation(line: 347, column: 1, scope: !805)
!834 = !DILocation(line: 346, column: 9, scope: !805)
!835 = distinct !DISubprogram(name: "rd_hdr_highestEquivalentValue", scope: !20, file: !20, line: 248, type: !788, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !836)
!836 = !{!837, !838}
!837 = !DILocalVariable(name: "hdr", arg: 1, scope: !835, file: !20, line: 248, type: !607)
!838 = !DILocalVariable(name: "v", arg: 2, scope: !835, file: !20, line: 248, type: !274)
!839 = !DILocation(line: 248, column: 57, scope: !835)
!840 = !DILocation(line: 248, column: 70, scope: !835)
!841 = !DILocation(line: 249, column: 46, scope: !835)
!842 = !DILocation(line: 249, column: 51, scope: !835)
!843 = !DILocation(line: 249, column: 16, scope: !835)
!844 = !DILocation(line: 249, column: 54, scope: !835)
!845 = !DILocation(line: 249, column: 9, scope: !835)
!846 = distinct !DISubprogram(name: "rd_hdr_histogram_min", scope: !20, file: !20, line: 352, type: !806, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !847)
!847 = !{!848, !849, !850}
!848 = !DILocalVariable(name: "hdr", arg: 1, scope: !846, file: !20, line: 352, type: !607)
!849 = !DILocalVariable(name: "vmin", scope: !846, file: !20, line: 353, type: !274)
!850 = !DILocalVariable(name: "it", scope: !846, file: !20, line: 354, type: !603)
!851 = !DILocation(line: 352, column: 56, scope: !846)
!852 = !DILocation(line: 353, column: 9, scope: !846)
!853 = !DILocation(line: 353, column: 17, scope: !846)
!854 = !DILocation(line: 354, column: 9, scope: !846)
!855 = !DILocation(line: 354, column: 23, scope: !846)
!856 = !DILocation(line: 354, column: 28, scope: !846)
!857 = !DILocation(line: 356, column: 9, scope: !846)
!858 = !DILocation(line: 356, column: 16, scope: !846)
!859 = !DILocation(line: 357, column: 24, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !20, line: 357, column: 21)
!861 = distinct !DILexicalBlock(scope: !846, file: !20, line: 356, column: 39)
!862 = !DILocation(line: 357, column: 35, scope: !860)
!863 = !DILocation(line: 357, column: 40, scope: !860)
!864 = !DILocation(line: 357, column: 43, scope: !860)
!865 = !DILocation(line: 357, column: 48, scope: !860)
!866 = !DILocation(line: 357, column: 21, scope: !861)
!867 = !DILocation(line: 358, column: 35, scope: !868)
!868 = distinct !DILexicalBlock(scope: !860, file: !20, line: 357, column: 54)
!869 = !DILocation(line: 358, column: 30, scope: !868)
!870 = !DILocation(line: 359, column: 25, scope: !868)
!871 = distinct !{!871, !857, !872, !440}
!872 = !DILocation(line: 361, column: 9, scope: !846)
!873 = !DILocation(line: 362, column: 45, scope: !846)
!874 = !DILocation(line: 362, column: 50, scope: !846)
!875 = !DILocation(line: 362, column: 16, scope: !846)
!876 = !DILocation(line: 363, column: 1, scope: !846)
!877 = !DILocation(line: 362, column: 9, scope: !846)
!878 = distinct !DISubprogram(name: "rd_hdr_lowestEquivalentValue", scope: !20, file: !20, line: 233, type: !788, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DILocalVariable(name: "hdr", arg: 1, scope: !878, file: !20, line: 233, type: !607)
!881 = !DILocalVariable(name: "v", arg: 2, scope: !878, file: !20, line: 233, type: !274)
!882 = !DILocalVariable(name: "bucketIdx", scope: !878, file: !20, line: 234, type: !280)
!883 = !DILocalVariable(name: "subBucketIdx", scope: !878, file: !20, line: 235, type: !280)
!884 = !DILocation(line: 233, column: 56, scope: !878)
!885 = !DILocation(line: 233, column: 69, scope: !878)
!886 = !DILocation(line: 234, column: 9, scope: !878)
!887 = !DILocation(line: 234, column: 17, scope: !878)
!888 = !DILocation(line: 234, column: 54, scope: !878)
!889 = !DILocation(line: 234, column: 59, scope: !878)
!890 = !DILocation(line: 234, column: 32, scope: !878)
!891 = !DILocation(line: 235, column: 9, scope: !878)
!892 = !DILocation(line: 235, column: 17, scope: !878)
!893 = !DILocation(line: 235, column: 55, scope: !878)
!894 = !DILocation(line: 235, column: 60, scope: !878)
!895 = !DILocation(line: 235, column: 63, scope: !878)
!896 = !DILocation(line: 235, column: 32, scope: !878)
!897 = !DILocation(line: 236, column: 38, scope: !878)
!898 = !DILocation(line: 236, column: 43, scope: !878)
!899 = !DILocation(line: 236, column: 54, scope: !878)
!900 = !DILocation(line: 236, column: 16, scope: !878)
!901 = !DILocation(line: 237, column: 1, scope: !878)
!902 = !DILocation(line: 236, column: 9, scope: !878)
!903 = distinct !DISubprogram(name: "rd_hdr_histogram_record", scope: !20, file: !20, line: 391, type: !904, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!282, !294, !274}
!906 = !{!907, !908, !909}
!907 = !DILocalVariable(name: "hdr", arg: 1, scope: !903, file: !20, line: 391, type: !294)
!908 = !DILocalVariable(name: "v", arg: 2, scope: !903, file: !20, line: 391, type: !274)
!909 = !DILocalVariable(name: "idx", scope: !903, file: !20, line: 392, type: !280)
!910 = !DILocation(line: 391, column: 49, scope: !903)
!911 = !DILocation(line: 391, column: 62, scope: !903)
!912 = !DILocation(line: 392, column: 9, scope: !903)
!913 = !DILocation(line: 392, column: 17, scope: !903)
!914 = !DILocation(line: 392, column: 45, scope: !903)
!915 = !DILocation(line: 392, column: 50, scope: !903)
!916 = !DILocation(line: 392, column: 23, scope: !903)
!917 = !DILocation(line: 394, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !903, file: !20, line: 394, column: 13)
!919 = !DILocation(line: 394, column: 17, scope: !918)
!920 = !DILocation(line: 394, column: 21, scope: !918)
!921 = !DILocation(line: 394, column: 24, scope: !918)
!922 = !DILocation(line: 394, column: 29, scope: !918)
!923 = !DILocation(line: 394, column: 42, scope: !918)
!924 = !DILocation(line: 394, column: 39, scope: !918)
!925 = !DILocation(line: 394, column: 13, scope: !903)
!926 = !DILocation(line: 395, column: 17, scope: !927)
!927 = distinct !DILexicalBlock(scope: !918, file: !20, line: 394, column: 47)
!928 = !DILocation(line: 395, column: 22, scope: !927)
!929 = !DILocation(line: 395, column: 37, scope: !927)
!930 = !{!460, !355, i64 80}
!931 = !DILocation(line: 396, column: 21, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !20, line: 396, column: 21)
!933 = !DILocation(line: 396, column: 25, scope: !932)
!934 = !DILocation(line: 396, column: 30, scope: !932)
!935 = !DILocation(line: 396, column: 23, scope: !932)
!936 = !DILocation(line: 396, column: 21, scope: !927)
!937 = !DILocation(line: 397, column: 50, scope: !932)
!938 = !DILocation(line: 397, column: 25, scope: !932)
!939 = !DILocation(line: 397, column: 30, scope: !932)
!940 = !DILocation(line: 397, column: 48, scope: !932)
!941 = !DILocation(line: 398, column: 21, scope: !942)
!942 = distinct !DILexicalBlock(scope: !927, file: !20, line: 398, column: 21)
!943 = !DILocation(line: 398, column: 25, scope: !942)
!944 = !DILocation(line: 398, column: 30, scope: !942)
!945 = !DILocation(line: 398, column: 23, scope: !942)
!946 = !DILocation(line: 398, column: 21, scope: !927)
!947 = !DILocation(line: 399, column: 49, scope: !942)
!948 = !DILocation(line: 399, column: 25, scope: !942)
!949 = !DILocation(line: 399, column: 30, scope: !942)
!950 = !DILocation(line: 399, column: 47, scope: !942)
!951 = !DILocation(line: 400, column: 17, scope: !927)
!952 = !DILocation(line: 403, column: 9, scope: !903)
!953 = !DILocation(line: 403, column: 14, scope: !903)
!954 = !DILocation(line: 403, column: 21, scope: !903)
!955 = !DILocation(line: 403, column: 25, scope: !903)
!956 = !DILocation(line: 404, column: 9, scope: !903)
!957 = !DILocation(line: 404, column: 14, scope: !903)
!958 = !DILocation(line: 404, column: 24, scope: !903)
!959 = !DILocation(line: 406, column: 9, scope: !903)
!960 = !DILocation(line: 407, column: 1, scope: !903)
!961 = distinct !DISubprogram(name: "rd_hdr_countsIndexFor", scope: !20, file: !20, line: 259, type: !962, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!280, !607, !274}
!964 = !{!965, !966, !967, !968}
!965 = !DILocalVariable(name: "hdr", arg: 1, scope: !961, file: !20, line: 259, type: !607)
!966 = !DILocalVariable(name: "v", arg: 2, scope: !961, file: !20, line: 260, type: !274)
!967 = !DILocalVariable(name: "bucketIdx", scope: !961, file: !20, line: 261, type: !280)
!968 = !DILocalVariable(name: "subBucketIdx", scope: !961, file: !20, line: 262, type: !280)
!969 = !DILocation(line: 259, column: 74, scope: !961)
!970 = !DILocation(line: 260, column: 56, scope: !961)
!971 = !DILocation(line: 261, column: 9, scope: !961)
!972 = !DILocation(line: 261, column: 17, scope: !961)
!973 = !DILocation(line: 261, column: 54, scope: !961)
!974 = !DILocation(line: 261, column: 59, scope: !961)
!975 = !DILocation(line: 261, column: 32, scope: !961)
!976 = !DILocation(line: 262, column: 9, scope: !961)
!977 = !DILocation(line: 262, column: 17, scope: !961)
!978 = !DILocation(line: 262, column: 55, scope: !961)
!979 = !DILocation(line: 262, column: 60, scope: !961)
!980 = !DILocation(line: 262, column: 63, scope: !961)
!981 = !DILocation(line: 262, column: 32, scope: !961)
!982 = !DILocation(line: 263, column: 35, scope: !961)
!983 = !DILocation(line: 263, column: 40, scope: !961)
!984 = !DILocation(line: 263, column: 51, scope: !961)
!985 = !DILocation(line: 263, column: 16, scope: !961)
!986 = !DILocation(line: 264, column: 1, scope: !961)
!987 = !DILocation(line: 263, column: 9, scope: !961)
!988 = distinct !DISubprogram(name: "rd_hdr_histogram_quantile", scope: !20, file: !20, line: 413, type: !989, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{!274, !607, !279}
!991 = !{!992, !993, !994, !995, !996}
!992 = !DILocalVariable(name: "hdr", arg: 1, scope: !988, file: !20, line: 413, type: !607)
!993 = !DILocalVariable(name: "q", arg: 2, scope: !988, file: !20, line: 413, type: !279)
!994 = !DILocalVariable(name: "total", scope: !988, file: !20, line: 414, type: !274)
!995 = !DILocalVariable(name: "countAtPercentile", scope: !988, file: !20, line: 415, type: !274)
!996 = !DILocalVariable(name: "it", scope: !988, file: !20, line: 416, type: !603)
!997 = !DILocation(line: 413, column: 61, scope: !988)
!998 = !DILocation(line: 413, column: 73, scope: !988)
!999 = !DILocation(line: 414, column: 9, scope: !988)
!1000 = !DILocation(line: 414, column: 17, scope: !988)
!1001 = !DILocation(line: 415, column: 9, scope: !988)
!1002 = !DILocation(line: 415, column: 17, scope: !988)
!1003 = !DILocation(line: 416, column: 9, scope: !988)
!1004 = !DILocation(line: 416, column: 23, scope: !988)
!1005 = !DILocation(line: 416, column: 28, scope: !988)
!1006 = !DILocation(line: 418, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !988, file: !20, line: 418, column: 13)
!1008 = !DILocation(line: 418, column: 15, scope: !1007)
!1009 = !DILocation(line: 418, column: 13, scope: !988)
!1010 = !DILocation(line: 419, column: 19, scope: !1007)
!1011 = !DILocation(line: 419, column: 17, scope: !1007)
!1012 = !DILocation(line: 422, column: 25, scope: !988)
!1013 = !DILocation(line: 422, column: 27, scope: !988)
!1014 = !DILocation(line: 422, column: 46, scope: !988)
!1015 = !DILocation(line: 422, column: 51, scope: !988)
!1016 = !DILocation(line: 422, column: 38, scope: !988)
!1017 = !DILocation(line: 422, column: 63, scope: !988)
!1018 = !DILocation(line: 422, column: 13, scope: !988)
!1019 = !DILocation(line: 421, column: 27, scope: !988)
!1020 = !DILocation(line: 424, column: 9, scope: !988)
!1021 = !DILocation(line: 424, column: 16, scope: !988)
!1022 = !DILocation(line: 425, column: 29, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !988, file: !20, line: 424, column: 39)
!1024 = !DILocation(line: 425, column: 23, scope: !1023)
!1025 = !DILocation(line: 426, column: 21, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !20, line: 426, column: 21)
!1027 = !DILocation(line: 426, column: 30, scope: !1026)
!1028 = !DILocation(line: 426, column: 27, scope: !1026)
!1029 = !DILocation(line: 426, column: 21, scope: !1023)
!1030 = !DILocation(line: 427, column: 62, scope: !1026)
!1031 = !DILocation(line: 428, column: 65, scope: !1026)
!1032 = !DILocation(line: 427, column: 32, scope: !1026)
!1033 = !DILocation(line: 427, column: 25, scope: !1026)
!1034 = distinct !{!1034, !1020, !1035, !440}
!1035 = !DILocation(line: 429, column: 9, scope: !988)
!1036 = !DILocation(line: 431, column: 9, scope: !988)
!1037 = !DILocation(line: 432, column: 1, scope: !988)
!1038 = distinct !DISubprogram(name: "unittest_rdhdrhistogram", scope: !20, file: !20, line: 701, type: !1039, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!282}
!1041 = !{!1042}
!1042 = !DILocalVariable(name: "fails", scope: !1038, file: !20, line: 702, type: !282)
!1043 = !DILocation(line: 702, column: 9, scope: !1038)
!1044 = !DILocation(line: 702, column: 13, scope: !1038)
!1045 = !DILocation(line: 704, column: 18, scope: !1038)
!1046 = !DILocation(line: 704, column: 15, scope: !1038)
!1047 = !DILocation(line: 705, column: 18, scope: !1038)
!1048 = !DILocation(line: 705, column: 15, scope: !1038)
!1049 = !DILocation(line: 706, column: 18, scope: !1038)
!1050 = !DILocation(line: 706, column: 15, scope: !1038)
!1051 = !DILocation(line: 707, column: 18, scope: !1038)
!1052 = !DILocation(line: 707, column: 15, scope: !1038)
!1053 = !DILocation(line: 708, column: 18, scope: !1038)
!1054 = !DILocation(line: 708, column: 15, scope: !1038)
!1055 = !DILocation(line: 709, column: 18, scope: !1038)
!1056 = !DILocation(line: 709, column: 15, scope: !1038)
!1057 = !DILocation(line: 710, column: 18, scope: !1038)
!1058 = !DILocation(line: 710, column: 15, scope: !1038)
!1059 = !DILocation(line: 711, column: 18, scope: !1038)
!1060 = !DILocation(line: 711, column: 15, scope: !1038)
!1061 = !DILocation(line: 712, column: 18, scope: !1038)
!1062 = !DILocation(line: 712, column: 15, scope: !1038)
!1063 = !DILocation(line: 713, column: 18, scope: !1038)
!1064 = !DILocation(line: 713, column: 15, scope: !1038)
!1065 = !DILocation(line: 714, column: 18, scope: !1038)
!1066 = !DILocation(line: 714, column: 15, scope: !1038)
!1067 = !DILocation(line: 715, column: 18, scope: !1038)
!1068 = !DILocation(line: 715, column: 15, scope: !1038)
!1069 = !DILocation(line: 716, column: 18, scope: !1038)
!1070 = !DILocation(line: 716, column: 15, scope: !1038)
!1071 = !DILocation(line: 718, column: 16, scope: !1038)
!1072 = !DILocation(line: 719, column: 1, scope: !1038)
!1073 = !DILocation(line: 718, column: 9, scope: !1038)
!1074 = distinct !DISubprogram(name: "ut_high_sigfig", scope: !20, file: !20, line: 447, type: !1039, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1075)
!1075 = !{!1076, !1077, !1080, !1081, !1082}
!1076 = !DILocalVariable(name: "hdr", scope: !1074, file: !20, line: 448, type: !294)
!1077 = !DILocalVariable(name: "input", scope: !1074, file: !20, line: 449, type: !1078)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 640, elements: !122)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!1080 = !DILocalVariable(name: "i", scope: !1074, file: !20, line: 453, type: !546)
!1081 = !DILocalVariable(name: "v", scope: !1074, file: !20, line: 454, type: !274)
!1082 = !DILocalVariable(name: "exp", scope: !1074, file: !20, line: 455, type: !1079)
!1083 = !DILocation(line: 448, column: 9, scope: !1074)
!1084 = !DILocation(line: 448, column: 29, scope: !1074)
!1085 = !DILocation(line: 449, column: 9, scope: !1074)
!1086 = !DILocation(line: 449, column: 23, scope: !1074)
!1087 = !DILocation(line: 453, column: 9, scope: !1074)
!1088 = !DILocation(line: 453, column: 16, scope: !1074)
!1089 = !DILocation(line: 454, column: 9, scope: !1074)
!1090 = !DILocation(line: 454, column: 17, scope: !1074)
!1091 = !DILocation(line: 455, column: 9, scope: !1074)
!1092 = !DILocation(line: 455, column: 23, scope: !1074)
!1093 = !DILocation(line: 457, column: 15, scope: !1074)
!1094 = !DILocation(line: 457, column: 13, scope: !1074)
!1095 = !DILocation(line: 458, column: 16, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1074, file: !20, line: 458, column: 9)
!1097 = !DILocation(line: 458, column: 14, scope: !1096)
!1098 = !DILocation(line: 458, column: 21, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !20, line: 458, column: 9)
!1100 = !DILocation(line: 458, column: 23, scope: !1099)
!1101 = !DILocation(line: 458, column: 9, scope: !1096)
!1102 = !DILocation(line: 460, column: 41, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !20, line: 458, column: 51)
!1104 = !DILocation(line: 460, column: 52, scope: !1103)
!1105 = !DILocation(line: 460, column: 46, scope: !1103)
!1106 = !DILocation(line: 460, column: 17, scope: !1103)
!1107 = !DILocation(line: 461, column: 9, scope: !1103)
!1108 = !DILocation(line: 458, column: 47, scope: !1099)
!1109 = !DILocation(line: 458, column: 9, scope: !1099)
!1110 = distinct !{!1110, !1101, !1111, !440}
!1111 = !DILocation(line: 461, column: 9, scope: !1096)
!1112 = !DILocation(line: 463, column: 39, scope: !1074)
!1113 = !DILocation(line: 463, column: 13, scope: !1074)
!1114 = !DILocation(line: 463, column: 11, scope: !1074)
!1115 = !DILocation(line: 464, column: 9, scope: !1074)
!1116 = !DILocation(line: 464, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !20, line: 464, column: 9)
!1118 = distinct !DILexicalBlock(scope: !1074, file: !20, line: 464, column: 9)
!1119 = !DILocation(line: 464, column: 9, scope: !1118)
!1120 = !DILocation(line: 464, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !20, line: 464, column: 9)
!1122 = !DILocation(line: 464, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !20, line: 464, column: 9)
!1124 = !{!319, !319, i64 0}
!1125 = !DILocation(line: 464, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !20, line: 464, column: 9)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !20, line: 464, column: 9)
!1128 = !DILocation(line: 464, column: 9, scope: !1127)
!1129 = !DILocation(line: 467, column: 34, scope: !1074)
!1130 = !DILocation(line: 467, column: 9, scope: !1074)
!1131 = !DILocation(line: 468, column: 9, scope: !1074)
!1132 = !DILocation(line: 468, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1074, file: !20, line: 468, column: 9)
!1134 = !DILocation(line: 469, column: 1, scope: !1074)
!1135 = distinct !DISubprogram(name: "ut_quantile", scope: !20, file: !20, line: 471, type: !1039, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1136)
!1136 = !{!1137, !1138, !1139, !1146, !1150}
!1137 = !DILocalVariable(name: "hdr", scope: !1135, file: !20, line: 472, type: !294)
!1138 = !DILocalVariable(name: "i", scope: !1135, file: !20, line: 473, type: !546)
!1139 = !DILocalVariable(name: "exp", scope: !1135, file: !20, line: 477, type: !1140)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 896, elements: !10)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !20, line: 474, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1142, file: !20, line: 475, baseType: !279, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1142, file: !20, line: 476, baseType: !274, size: 64, offset: 64)
!1146 = !DILocalVariable(name: "r", scope: !1147, file: !20, line: 483, type: !282)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !20, line: 482, column: 39)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !20, line: 482, column: 9)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !20, line: 482, column: 9)
!1150 = !DILocalVariable(name: "v", scope: !1151, file: !20, line: 488, type: !274)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !20, line: 487, column: 49)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !20, line: 487, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1135, file: !20, line: 487, column: 9)
!1154 = !DILocation(line: 472, column: 9, scope: !1135)
!1155 = !DILocation(line: 472, column: 29, scope: !1135)
!1156 = !DILocation(line: 472, column: 35, scope: !1135)
!1157 = !DILocation(line: 473, column: 9, scope: !1135)
!1158 = !DILocation(line: 473, column: 16, scope: !1135)
!1159 = !DILocation(line: 474, column: 9, scope: !1135)
!1160 = !DILocation(line: 477, column: 11, scope: !1135)
!1161 = !DILocation(line: 482, column: 16, scope: !1149)
!1162 = !DILocation(line: 482, column: 14, scope: !1149)
!1163 = !DILocation(line: 482, column: 21, scope: !1148)
!1164 = !DILocation(line: 482, column: 23, scope: !1148)
!1165 = !DILocation(line: 482, column: 9, scope: !1149)
!1166 = !DILocation(line: 483, column: 17, scope: !1147)
!1167 = !DILocation(line: 483, column: 21, scope: !1147)
!1168 = !DILocation(line: 483, column: 49, scope: !1147)
!1169 = !DILocation(line: 483, column: 63, scope: !1147)
!1170 = !DILocation(line: 483, column: 25, scope: !1147)
!1171 = !DILocation(line: 484, column: 17, scope: !1147)
!1172 = !DILocation(line: 484, column: 17, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !20, line: 484, column: 17)
!1174 = distinct !DILexicalBlock(scope: !1147, file: !20, line: 484, column: 17)
!1175 = !DILocation(line: 484, column: 17, scope: !1174)
!1176 = !DILocation(line: 484, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !20, line: 484, column: 17)
!1178 = !DILocation(line: 484, column: 17, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !20, line: 484, column: 17)
!1180 = !DILocation(line: 484, column: 17, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !20, line: 484, column: 17)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !20, line: 484, column: 17)
!1183 = !DILocation(line: 484, column: 17, scope: !1182)
!1184 = !DILocation(line: 485, column: 9, scope: !1148)
!1185 = !DILocation(line: 485, column: 9, scope: !1147)
!1186 = !DILocation(line: 482, column: 35, scope: !1148)
!1187 = !DILocation(line: 482, column: 9, scope: !1148)
!1188 = distinct !{!1188, !1165, !1189, !440}
!1189 = !DILocation(line: 485, column: 9, scope: !1149)
!1190 = !DILocation(line: 487, column: 16, scope: !1153)
!1191 = !DILocation(line: 487, column: 14, scope: !1153)
!1192 = !DILocation(line: 487, column: 21, scope: !1152)
!1193 = !DILocation(line: 487, column: 23, scope: !1152)
!1194 = !DILocation(line: 487, column: 9, scope: !1153)
!1195 = !DILocation(line: 488, column: 17, scope: !1151)
!1196 = !DILocation(line: 488, column: 25, scope: !1151)
!1197 = !DILocation(line: 488, column: 55, scope: !1151)
!1198 = !DILocation(line: 488, column: 64, scope: !1151)
!1199 = !DILocation(line: 488, column: 60, scope: !1151)
!1200 = !DILocation(line: 488, column: 67, scope: !1151)
!1201 = !{!1202, !623, i64 0}
!1202 = !{!"", !623, i64 0, !355, i64 8}
!1203 = !DILocation(line: 488, column: 29, scope: !1151)
!1204 = !DILocation(line: 489, column: 17, scope: !1151)
!1205 = !DILocation(line: 489, column: 17, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !20, line: 489, column: 17)
!1207 = distinct !DILexicalBlock(scope: !1151, file: !20, line: 489, column: 17)
!1208 = !{!1202, !355, i64 8}
!1209 = !DILocation(line: 489, column: 17, scope: !1207)
!1210 = !DILocation(line: 489, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !20, line: 489, column: 17)
!1212 = !DILocation(line: 489, column: 17, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !20, line: 489, column: 17)
!1214 = !DILocation(line: 489, column: 17, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !20, line: 489, column: 17)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !20, line: 489, column: 17)
!1217 = !DILocation(line: 489, column: 17, scope: !1216)
!1218 = !DILocation(line: 492, column: 9, scope: !1152)
!1219 = !DILocation(line: 492, column: 9, scope: !1151)
!1220 = !DILocation(line: 487, column: 45, scope: !1152)
!1221 = !DILocation(line: 487, column: 9, scope: !1152)
!1222 = distinct !{!1222, !1194, !1223, !440}
!1223 = !DILocation(line: 492, column: 9, scope: !1153)
!1224 = !DILocation(line: 494, column: 34, scope: !1135)
!1225 = !DILocation(line: 494, column: 9, scope: !1135)
!1226 = !DILocation(line: 495, column: 9, scope: !1135)
!1227 = !DILocation(line: 495, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1135, file: !20, line: 495, column: 9)
!1229 = !DILocation(line: 496, column: 1, scope: !1135)
!1230 = distinct !DISubprogram(name: "ut_mean", scope: !20, file: !20, line: 498, type: !1039, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234, !1236, !1237}
!1232 = !DILocalVariable(name: "hdr", scope: !1230, file: !20, line: 499, type: !294)
!1233 = !DILocalVariable(name: "i", scope: !1230, file: !20, line: 500, type: !546)
!1234 = !DILocalVariable(name: "exp", scope: !1230, file: !20, line: 501, type: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!1236 = !DILocalVariable(name: "v", scope: !1230, file: !20, line: 502, type: !279)
!1237 = !DILocalVariable(name: "r", scope: !1238, file: !20, line: 505, type: !282)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !20, line: 504, column: 39)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !20, line: 504, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1230, file: !20, line: 504, column: 9)
!1241 = !DILocation(line: 499, column: 9, scope: !1230)
!1242 = !DILocation(line: 499, column: 29, scope: !1230)
!1243 = !DILocation(line: 499, column: 35, scope: !1230)
!1244 = !DILocation(line: 500, column: 9, scope: !1230)
!1245 = !DILocation(line: 500, column: 16, scope: !1230)
!1246 = !DILocation(line: 501, column: 9, scope: !1230)
!1247 = !DILocation(line: 501, column: 22, scope: !1230)
!1248 = !DILocation(line: 502, column: 9, scope: !1230)
!1249 = !DILocation(line: 502, column: 16, scope: !1230)
!1250 = !DILocation(line: 504, column: 16, scope: !1240)
!1251 = !DILocation(line: 504, column: 14, scope: !1240)
!1252 = !DILocation(line: 504, column: 21, scope: !1239)
!1253 = !DILocation(line: 504, column: 23, scope: !1239)
!1254 = !DILocation(line: 504, column: 9, scope: !1240)
!1255 = !DILocation(line: 505, column: 17, scope: !1238)
!1256 = !DILocation(line: 505, column: 21, scope: !1238)
!1257 = !DILocation(line: 505, column: 49, scope: !1238)
!1258 = !DILocation(line: 505, column: 63, scope: !1238)
!1259 = !DILocation(line: 505, column: 25, scope: !1238)
!1260 = !DILocation(line: 506, column: 17, scope: !1238)
!1261 = !DILocation(line: 506, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !20, line: 506, column: 17)
!1263 = distinct !DILexicalBlock(scope: !1238, file: !20, line: 506, column: 17)
!1264 = !DILocation(line: 506, column: 17, scope: !1263)
!1265 = !DILocation(line: 506, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !20, line: 506, column: 17)
!1267 = !DILocation(line: 506, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1266, file: !20, line: 506, column: 17)
!1269 = !DILocation(line: 506, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !20, line: 506, column: 17)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !20, line: 506, column: 17)
!1272 = !DILocation(line: 506, column: 17, scope: !1271)
!1273 = !DILocation(line: 507, column: 9, scope: !1239)
!1274 = !DILocation(line: 507, column: 9, scope: !1238)
!1275 = !DILocation(line: 504, column: 35, scope: !1239)
!1276 = !DILocation(line: 504, column: 9, scope: !1239)
!1277 = distinct !{!1277, !1254, !1278, !440}
!1278 = !DILocation(line: 507, column: 9, scope: !1240)
!1279 = !DILocation(line: 509, column: 35, scope: !1230)
!1280 = !DILocation(line: 509, column: 13, scope: !1230)
!1281 = !DILocation(line: 509, column: 11, scope: !1230)
!1282 = !DILocation(line: 510, column: 9, scope: !1230)
!1283 = !DILocation(line: 510, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !20, line: 510, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1230, file: !20, line: 510, column: 9)
!1286 = !DILocation(line: 510, column: 9, scope: !1285)
!1287 = !DILocation(line: 510, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !20, line: 510, column: 9)
!1289 = !DILocation(line: 510, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1288, file: !20, line: 510, column: 9)
!1291 = !DILocation(line: 510, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !20, line: 510, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !20, line: 510, column: 9)
!1294 = !DILocation(line: 510, column: 9, scope: !1293)
!1295 = !DILocation(line: 513, column: 34, scope: !1230)
!1296 = !DILocation(line: 513, column: 9, scope: !1230)
!1297 = !DILocation(line: 514, column: 9, scope: !1230)
!1298 = !DILocation(line: 514, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1230, file: !20, line: 514, column: 9)
!1300 = !DILocation(line: 515, column: 1, scope: !1230)
!1301 = distinct !DISubprogram(name: "ut_stddev", scope: !20, file: !20, line: 518, type: !1039, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308}
!1303 = !DILocalVariable(name: "hdr", scope: !1301, file: !20, line: 519, type: !294)
!1304 = !DILocalVariable(name: "i", scope: !1301, file: !20, line: 520, type: !546)
!1305 = !DILocalVariable(name: "exp", scope: !1301, file: !20, line: 521, type: !1235)
!1306 = !DILocalVariable(name: "epsilon", scope: !1301, file: !20, line: 522, type: !1235)
!1307 = !DILocalVariable(name: "v", scope: !1301, file: !20, line: 523, type: !279)
!1308 = !DILocalVariable(name: "r", scope: !1309, file: !20, line: 526, type: !282)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !20, line: 525, column: 39)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !20, line: 525, column: 9)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !20, line: 525, column: 9)
!1312 = !DILocation(line: 519, column: 9, scope: !1301)
!1313 = !DILocation(line: 519, column: 29, scope: !1301)
!1314 = !DILocation(line: 519, column: 35, scope: !1301)
!1315 = !DILocation(line: 520, column: 9, scope: !1301)
!1316 = !DILocation(line: 520, column: 16, scope: !1301)
!1317 = !DILocation(line: 521, column: 9, scope: !1301)
!1318 = !DILocation(line: 521, column: 22, scope: !1301)
!1319 = !DILocation(line: 522, column: 9, scope: !1301)
!1320 = !DILocation(line: 522, column: 22, scope: !1301)
!1321 = !DILocation(line: 523, column: 9, scope: !1301)
!1322 = !DILocation(line: 523, column: 16, scope: !1301)
!1323 = !DILocation(line: 525, column: 16, scope: !1311)
!1324 = !DILocation(line: 525, column: 14, scope: !1311)
!1325 = !DILocation(line: 525, column: 21, scope: !1310)
!1326 = !DILocation(line: 525, column: 23, scope: !1310)
!1327 = !DILocation(line: 525, column: 9, scope: !1311)
!1328 = !DILocation(line: 526, column: 17, scope: !1309)
!1329 = !DILocation(line: 526, column: 21, scope: !1309)
!1330 = !DILocation(line: 526, column: 49, scope: !1309)
!1331 = !DILocation(line: 526, column: 63, scope: !1309)
!1332 = !DILocation(line: 526, column: 25, scope: !1309)
!1333 = !DILocation(line: 527, column: 17, scope: !1309)
!1334 = !DILocation(line: 527, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !20, line: 527, column: 17)
!1336 = distinct !DILexicalBlock(scope: !1309, file: !20, line: 527, column: 17)
!1337 = !DILocation(line: 527, column: 17, scope: !1336)
!1338 = !DILocation(line: 527, column: 17, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !20, line: 527, column: 17)
!1340 = !DILocation(line: 527, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !20, line: 527, column: 17)
!1342 = !DILocation(line: 527, column: 17, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !20, line: 527, column: 17)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !20, line: 527, column: 17)
!1345 = !DILocation(line: 527, column: 17, scope: !1344)
!1346 = !DILocation(line: 528, column: 9, scope: !1310)
!1347 = !DILocation(line: 528, column: 9, scope: !1309)
!1348 = !DILocation(line: 525, column: 35, scope: !1310)
!1349 = !DILocation(line: 525, column: 9, scope: !1310)
!1350 = distinct !{!1350, !1327, !1351, !440}
!1351 = !DILocation(line: 528, column: 9, scope: !1311)
!1352 = !DILocation(line: 530, column: 37, scope: !1301)
!1353 = !DILocation(line: 530, column: 13, scope: !1301)
!1354 = !DILocation(line: 530, column: 11, scope: !1301)
!1355 = !DILocation(line: 531, column: 9, scope: !1301)
!1356 = !DILocation(line: 531, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !20, line: 531, column: 9)
!1358 = distinct !DILexicalBlock(scope: !1301, file: !20, line: 531, column: 9)
!1359 = !DILocation(line: 531, column: 9, scope: !1358)
!1360 = !DILocation(line: 531, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !20, line: 531, column: 9)
!1362 = !DILocation(line: 531, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !20, line: 531, column: 9)
!1364 = !DILocation(line: 531, column: 9, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !20, line: 531, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !20, line: 531, column: 9)
!1367 = !DILocation(line: 531, column: 9, scope: !1366)
!1368 = !DILocation(line: 535, column: 34, scope: !1301)
!1369 = !DILocation(line: 535, column: 9, scope: !1301)
!1370 = !DILocation(line: 536, column: 9, scope: !1301)
!1371 = !DILocation(line: 536, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1301, file: !20, line: 536, column: 9)
!1373 = !DILocation(line: 537, column: 1, scope: !1301)
!1374 = distinct !DISubprogram(name: "ut_totalcount", scope: !20, file: !20, line: 539, type: !1039, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1375)
!1375 = !{!1376, !1377, !1378, !1382}
!1376 = !DILocalVariable(name: "hdr", scope: !1374, file: !20, line: 540, type: !294)
!1377 = !DILocalVariable(name: "i", scope: !1374, file: !20, line: 541, type: !274)
!1378 = !DILocalVariable(name: "v", scope: !1379, file: !20, line: 544, type: !274)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !20, line: 543, column: 39)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !20, line: 543, column: 9)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !20, line: 543, column: 9)
!1382 = !DILocalVariable(name: "r", scope: !1379, file: !20, line: 545, type: !282)
!1383 = !DILocation(line: 540, column: 9, scope: !1374)
!1384 = !DILocation(line: 540, column: 29, scope: !1374)
!1385 = !DILocation(line: 540, column: 35, scope: !1374)
!1386 = !DILocation(line: 541, column: 9, scope: !1374)
!1387 = !DILocation(line: 541, column: 17, scope: !1374)
!1388 = !DILocation(line: 543, column: 16, scope: !1381)
!1389 = !DILocation(line: 543, column: 14, scope: !1381)
!1390 = !DILocation(line: 543, column: 21, scope: !1380)
!1391 = !DILocation(line: 543, column: 23, scope: !1380)
!1392 = !DILocation(line: 543, column: 9, scope: !1381)
!1393 = !DILocation(line: 544, column: 17, scope: !1379)
!1394 = !DILocation(line: 544, column: 25, scope: !1379)
!1395 = !DILocation(line: 545, column: 17, scope: !1379)
!1396 = !DILocation(line: 545, column: 21, scope: !1379)
!1397 = !DILocation(line: 545, column: 49, scope: !1379)
!1398 = !DILocation(line: 545, column: 54, scope: !1379)
!1399 = !DILocation(line: 545, column: 25, scope: !1379)
!1400 = !DILocation(line: 546, column: 17, scope: !1379)
!1401 = !DILocation(line: 546, column: 17, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !20, line: 546, column: 17)
!1403 = distinct !DILexicalBlock(scope: !1379, file: !20, line: 546, column: 17)
!1404 = !DILocation(line: 546, column: 17, scope: !1403)
!1405 = !DILocation(line: 546, column: 17, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !20, line: 546, column: 17)
!1407 = !DILocation(line: 546, column: 17, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !20, line: 546, column: 17)
!1409 = !DILocation(line: 546, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !20, line: 546, column: 17)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !20, line: 546, column: 17)
!1412 = !DILocation(line: 546, column: 17, scope: !1411)
!1413 = !DILocation(line: 548, column: 21, scope: !1379)
!1414 = !DILocation(line: 548, column: 26, scope: !1379)
!1415 = !DILocation(line: 548, column: 19, scope: !1379)
!1416 = !DILocation(line: 549, column: 17, scope: !1379)
!1417 = !DILocation(line: 549, column: 17, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !20, line: 549, column: 17)
!1419 = distinct !DILexicalBlock(scope: !1379, file: !20, line: 549, column: 17)
!1420 = !DILocation(line: 549, column: 17, scope: !1419)
!1421 = !DILocation(line: 549, column: 17, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !20, line: 549, column: 17)
!1423 = !DILocation(line: 549, column: 17, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 549, column: 17)
!1425 = !DILocation(line: 549, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !20, line: 549, column: 17)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !20, line: 549, column: 17)
!1428 = !DILocation(line: 549, column: 17, scope: !1427)
!1429 = !DILocation(line: 552, column: 9, scope: !1380)
!1430 = !DILocation(line: 552, column: 9, scope: !1379)
!1431 = !DILocation(line: 543, column: 35, scope: !1380)
!1432 = !DILocation(line: 543, column: 9, scope: !1380)
!1433 = distinct !{!1433, !1392, !1434, !440}
!1434 = !DILocation(line: 552, column: 9, scope: !1381)
!1435 = !DILocation(line: 554, column: 34, scope: !1374)
!1436 = !DILocation(line: 554, column: 9, scope: !1374)
!1437 = !DILocation(line: 555, column: 9, scope: !1374)
!1438 = !DILocation(line: 555, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1374, file: !20, line: 555, column: 9)
!1440 = !DILocation(line: 556, column: 1, scope: !1374)
!1441 = distinct !DISubprogram(name: "ut_max", scope: !20, file: !20, line: 559, type: !1039, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447}
!1443 = !DILocalVariable(name: "hdr", scope: !1441, file: !20, line: 560, type: !294)
!1444 = !DILocalVariable(name: "i", scope: !1441, file: !20, line: 561, type: !274)
!1445 = !DILocalVariable(name: "v", scope: !1441, file: !20, line: 561, type: !274)
!1446 = !DILocalVariable(name: "exp", scope: !1441, file: !20, line: 562, type: !1079)
!1447 = !DILocalVariable(name: "r", scope: !1448, file: !20, line: 565, type: !282)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !20, line: 564, column: 39)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !20, line: 564, column: 9)
!1450 = distinct !DILexicalBlock(scope: !1441, file: !20, line: 564, column: 9)
!1451 = !DILocation(line: 560, column: 9, scope: !1441)
!1452 = !DILocation(line: 560, column: 29, scope: !1441)
!1453 = !DILocation(line: 560, column: 35, scope: !1441)
!1454 = !DILocation(line: 561, column: 9, scope: !1441)
!1455 = !DILocation(line: 561, column: 17, scope: !1441)
!1456 = !DILocation(line: 561, column: 20, scope: !1441)
!1457 = !DILocation(line: 562, column: 9, scope: !1441)
!1458 = !DILocation(line: 562, column: 23, scope: !1441)
!1459 = !DILocation(line: 564, column: 16, scope: !1450)
!1460 = !DILocation(line: 564, column: 14, scope: !1450)
!1461 = !DILocation(line: 564, column: 21, scope: !1449)
!1462 = !DILocation(line: 564, column: 23, scope: !1449)
!1463 = !DILocation(line: 564, column: 9, scope: !1450)
!1464 = !DILocation(line: 565, column: 17, scope: !1448)
!1465 = !DILocation(line: 565, column: 21, scope: !1448)
!1466 = !DILocation(line: 565, column: 49, scope: !1448)
!1467 = !DILocation(line: 565, column: 54, scope: !1448)
!1468 = !DILocation(line: 565, column: 25, scope: !1448)
!1469 = !DILocation(line: 566, column: 17, scope: !1448)
!1470 = !DILocation(line: 566, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !20, line: 566, column: 17)
!1472 = distinct !DILexicalBlock(scope: !1448, file: !20, line: 566, column: 17)
!1473 = !DILocation(line: 566, column: 17, scope: !1472)
!1474 = !DILocation(line: 566, column: 17, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !20, line: 566, column: 17)
!1476 = !DILocation(line: 566, column: 17, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1475, file: !20, line: 566, column: 17)
!1478 = !DILocation(line: 566, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !20, line: 566, column: 17)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !20, line: 566, column: 17)
!1481 = !DILocation(line: 566, column: 17, scope: !1480)
!1482 = !DILocation(line: 567, column: 9, scope: !1449)
!1483 = !DILocation(line: 567, column: 9, scope: !1448)
!1484 = !DILocation(line: 564, column: 35, scope: !1449)
!1485 = !DILocation(line: 564, column: 9, scope: !1449)
!1486 = distinct !{!1486, !1463, !1487, !440}
!1487 = !DILocation(line: 567, column: 9, scope: !1450)
!1488 = !DILocation(line: 569, column: 34, scope: !1441)
!1489 = !DILocation(line: 569, column: 13, scope: !1441)
!1490 = !DILocation(line: 569, column: 11, scope: !1441)
!1491 = !DILocation(line: 570, column: 9, scope: !1441)
!1492 = !DILocation(line: 570, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !20, line: 570, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1441, file: !20, line: 570, column: 9)
!1495 = !DILocation(line: 570, column: 9, scope: !1494)
!1496 = !DILocation(line: 570, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !20, line: 570, column: 9)
!1498 = !DILocation(line: 570, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !20, line: 570, column: 9)
!1500 = !DILocation(line: 570, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !20, line: 570, column: 9)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !20, line: 570, column: 9)
!1503 = !DILocation(line: 570, column: 9, scope: !1502)
!1504 = !DILocation(line: 572, column: 34, scope: !1441)
!1505 = !DILocation(line: 572, column: 9, scope: !1441)
!1506 = !DILocation(line: 573, column: 9, scope: !1441)
!1507 = !DILocation(line: 573, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1441, file: !20, line: 573, column: 9)
!1509 = !DILocation(line: 574, column: 1, scope: !1441)
!1510 = distinct !DISubprogram(name: "ut_min", scope: !20, file: !20, line: 576, type: !1039, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1516}
!1512 = !DILocalVariable(name: "hdr", scope: !1510, file: !20, line: 577, type: !294)
!1513 = !DILocalVariable(name: "i", scope: !1510, file: !20, line: 578, type: !274)
!1514 = !DILocalVariable(name: "v", scope: !1510, file: !20, line: 578, type: !274)
!1515 = !DILocalVariable(name: "exp", scope: !1510, file: !20, line: 579, type: !1079)
!1516 = !DILocalVariable(name: "r", scope: !1517, file: !20, line: 582, type: !282)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !20, line: 581, column: 39)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !20, line: 581, column: 9)
!1519 = distinct !DILexicalBlock(scope: !1510, file: !20, line: 581, column: 9)
!1520 = !DILocation(line: 577, column: 9, scope: !1510)
!1521 = !DILocation(line: 577, column: 29, scope: !1510)
!1522 = !DILocation(line: 577, column: 35, scope: !1510)
!1523 = !DILocation(line: 578, column: 9, scope: !1510)
!1524 = !DILocation(line: 578, column: 17, scope: !1510)
!1525 = !DILocation(line: 578, column: 20, scope: !1510)
!1526 = !DILocation(line: 579, column: 9, scope: !1510)
!1527 = !DILocation(line: 579, column: 23, scope: !1510)
!1528 = !DILocation(line: 581, column: 16, scope: !1519)
!1529 = !DILocation(line: 581, column: 14, scope: !1519)
!1530 = !DILocation(line: 581, column: 21, scope: !1518)
!1531 = !DILocation(line: 581, column: 23, scope: !1518)
!1532 = !DILocation(line: 581, column: 9, scope: !1519)
!1533 = !DILocation(line: 582, column: 17, scope: !1517)
!1534 = !DILocation(line: 582, column: 21, scope: !1517)
!1535 = !DILocation(line: 582, column: 49, scope: !1517)
!1536 = !DILocation(line: 582, column: 54, scope: !1517)
!1537 = !DILocation(line: 582, column: 25, scope: !1517)
!1538 = !DILocation(line: 583, column: 17, scope: !1517)
!1539 = !DILocation(line: 583, column: 17, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !20, line: 583, column: 17)
!1541 = distinct !DILexicalBlock(scope: !1517, file: !20, line: 583, column: 17)
!1542 = !DILocation(line: 583, column: 17, scope: !1541)
!1543 = !DILocation(line: 583, column: 17, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !20, line: 583, column: 17)
!1545 = !DILocation(line: 583, column: 17, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1544, file: !20, line: 583, column: 17)
!1547 = !DILocation(line: 583, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !20, line: 583, column: 17)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !20, line: 583, column: 17)
!1550 = !DILocation(line: 583, column: 17, scope: !1549)
!1551 = !DILocation(line: 584, column: 9, scope: !1518)
!1552 = !DILocation(line: 584, column: 9, scope: !1517)
!1553 = !DILocation(line: 581, column: 35, scope: !1518)
!1554 = !DILocation(line: 581, column: 9, scope: !1518)
!1555 = distinct !{!1555, !1532, !1556, !440}
!1556 = !DILocation(line: 584, column: 9, scope: !1519)
!1557 = !DILocation(line: 586, column: 34, scope: !1510)
!1558 = !DILocation(line: 586, column: 13, scope: !1510)
!1559 = !DILocation(line: 586, column: 11, scope: !1510)
!1560 = !DILocation(line: 587, column: 9, scope: !1510)
!1561 = !DILocation(line: 587, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !20, line: 587, column: 9)
!1563 = distinct !DILexicalBlock(scope: !1510, file: !20, line: 587, column: 9)
!1564 = !DILocation(line: 587, column: 9, scope: !1563)
!1565 = !DILocation(line: 587, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !20, line: 587, column: 9)
!1567 = !DILocation(line: 587, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1566, file: !20, line: 587, column: 9)
!1569 = !DILocation(line: 587, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !20, line: 587, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !20, line: 587, column: 9)
!1572 = !DILocation(line: 587, column: 9, scope: !1571)
!1573 = !DILocation(line: 589, column: 34, scope: !1510)
!1574 = !DILocation(line: 589, column: 9, scope: !1510)
!1575 = !DILocation(line: 590, column: 9, scope: !1510)
!1576 = !DILocation(line: 590, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1510, file: !20, line: 590, column: 9)
!1578 = !DILocation(line: 591, column: 1, scope: !1510)
!1579 = distinct !DISubprogram(name: "ut_reset", scope: !20, file: !20, line: 593, type: !1039, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585}
!1581 = !DILocalVariable(name: "hdr", scope: !1579, file: !20, line: 594, type: !294)
!1582 = !DILocalVariable(name: "i", scope: !1579, file: !20, line: 595, type: !274)
!1583 = !DILocalVariable(name: "v", scope: !1579, file: !20, line: 595, type: !274)
!1584 = !DILocalVariable(name: "exp", scope: !1579, file: !20, line: 596, type: !1079)
!1585 = !DILocalVariable(name: "r", scope: !1586, file: !20, line: 599, type: !282)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !20, line: 598, column: 39)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !20, line: 598, column: 9)
!1588 = distinct !DILexicalBlock(scope: !1579, file: !20, line: 598, column: 9)
!1589 = !DILocation(line: 594, column: 9, scope: !1579)
!1590 = !DILocation(line: 594, column: 29, scope: !1579)
!1591 = !DILocation(line: 594, column: 35, scope: !1579)
!1592 = !DILocation(line: 595, column: 9, scope: !1579)
!1593 = !DILocation(line: 595, column: 17, scope: !1579)
!1594 = !DILocation(line: 595, column: 20, scope: !1579)
!1595 = !DILocation(line: 596, column: 9, scope: !1579)
!1596 = !DILocation(line: 596, column: 23, scope: !1579)
!1597 = !DILocation(line: 598, column: 16, scope: !1588)
!1598 = !DILocation(line: 598, column: 14, scope: !1588)
!1599 = !DILocation(line: 598, column: 21, scope: !1587)
!1600 = !DILocation(line: 598, column: 23, scope: !1587)
!1601 = !DILocation(line: 598, column: 9, scope: !1588)
!1602 = !DILocation(line: 599, column: 17, scope: !1586)
!1603 = !DILocation(line: 599, column: 21, scope: !1586)
!1604 = !DILocation(line: 599, column: 49, scope: !1586)
!1605 = !DILocation(line: 599, column: 54, scope: !1586)
!1606 = !DILocation(line: 599, column: 25, scope: !1586)
!1607 = !DILocation(line: 600, column: 17, scope: !1586)
!1608 = !DILocation(line: 600, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !20, line: 600, column: 17)
!1610 = distinct !DILexicalBlock(scope: !1586, file: !20, line: 600, column: 17)
!1611 = !DILocation(line: 600, column: 17, scope: !1610)
!1612 = !DILocation(line: 600, column: 17, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !20, line: 600, column: 17)
!1614 = !DILocation(line: 600, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1613, file: !20, line: 600, column: 17)
!1616 = !DILocation(line: 600, column: 17, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !20, line: 600, column: 17)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !20, line: 600, column: 17)
!1619 = !DILocation(line: 600, column: 17, scope: !1618)
!1620 = !DILocation(line: 601, column: 9, scope: !1587)
!1621 = !DILocation(line: 601, column: 9, scope: !1586)
!1622 = !DILocation(line: 598, column: 35, scope: !1587)
!1623 = !DILocation(line: 598, column: 9, scope: !1587)
!1624 = distinct !{!1624, !1601, !1625, !440}
!1625 = !DILocation(line: 601, column: 9, scope: !1588)
!1626 = !DILocation(line: 603, column: 32, scope: !1579)
!1627 = !DILocation(line: 603, column: 9, scope: !1579)
!1628 = !DILocation(line: 605, column: 34, scope: !1579)
!1629 = !DILocation(line: 605, column: 13, scope: !1579)
!1630 = !DILocation(line: 605, column: 11, scope: !1579)
!1631 = !DILocation(line: 606, column: 9, scope: !1579)
!1632 = !DILocation(line: 606, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !20, line: 606, column: 9)
!1634 = distinct !DILexicalBlock(scope: !1579, file: !20, line: 606, column: 9)
!1635 = !DILocation(line: 606, column: 9, scope: !1634)
!1636 = !DILocation(line: 606, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !20, line: 606, column: 9)
!1638 = !DILocation(line: 606, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1637, file: !20, line: 606, column: 9)
!1640 = !DILocation(line: 606, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !20, line: 606, column: 9)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !20, line: 606, column: 9)
!1643 = !DILocation(line: 606, column: 9, scope: !1642)
!1644 = !DILocation(line: 608, column: 34, scope: !1579)
!1645 = !DILocation(line: 608, column: 9, scope: !1579)
!1646 = !DILocation(line: 609, column: 9, scope: !1579)
!1647 = !DILocation(line: 609, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1579, file: !20, line: 609, column: 9)
!1649 = !DILocation(line: 610, column: 1, scope: !1579)
!1650 = distinct !DISubprogram(name: "ut_nan", scope: !20, file: !20, line: 613, type: !1039, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1651)
!1651 = !{!1652, !1653}
!1652 = !DILocalVariable(name: "hdr", scope: !1650, file: !20, line: 614, type: !294)
!1653 = !DILocalVariable(name: "v", scope: !1650, file: !20, line: 615, type: !279)
!1654 = !DILocation(line: 614, column: 9, scope: !1650)
!1655 = !DILocation(line: 614, column: 29, scope: !1650)
!1656 = !DILocation(line: 614, column: 35, scope: !1650)
!1657 = !DILocation(line: 615, column: 9, scope: !1650)
!1658 = !DILocation(line: 615, column: 16, scope: !1650)
!1659 = !DILocation(line: 617, column: 35, scope: !1650)
!1660 = !DILocation(line: 617, column: 13, scope: !1650)
!1661 = !DILocation(line: 617, column: 11, scope: !1650)
!1662 = !DILocation(line: 618, column: 9, scope: !1650)
!1663 = !DILocation(line: 618, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !20, line: 618, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1650, file: !20, line: 618, column: 9)
!1666 = !DILocation(line: 618, column: 9, scope: !1665)
!1667 = !DILocation(line: 618, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !20, line: 618, column: 9)
!1669 = !DILocation(line: 618, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1668, file: !20, line: 618, column: 9)
!1671 = !DILocation(line: 618, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !20, line: 618, column: 9)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !20, line: 618, column: 9)
!1674 = !DILocation(line: 618, column: 9, scope: !1673)
!1675 = !DILocation(line: 619, column: 37, scope: !1650)
!1676 = !DILocation(line: 619, column: 13, scope: !1650)
!1677 = !DILocation(line: 619, column: 11, scope: !1650)
!1678 = !DILocation(line: 620, column: 9, scope: !1650)
!1679 = !DILocation(line: 620, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !20, line: 620, column: 9)
!1681 = distinct !DILexicalBlock(scope: !1650, file: !20, line: 620, column: 9)
!1682 = !DILocation(line: 620, column: 9, scope: !1681)
!1683 = !DILocation(line: 620, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !20, line: 620, column: 9)
!1685 = !DILocation(line: 620, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1684, file: !20, line: 620, column: 9)
!1687 = !DILocation(line: 620, column: 9, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !20, line: 620, column: 9)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !20, line: 620, column: 9)
!1690 = !DILocation(line: 620, column: 9, scope: !1689)
!1691 = !DILocation(line: 622, column: 34, scope: !1650)
!1692 = !DILocation(line: 622, column: 9, scope: !1650)
!1693 = !DILocation(line: 623, column: 9, scope: !1650)
!1694 = !DILocation(line: 623, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1650, file: !20, line: 623, column: 9)
!1696 = !DILocation(line: 624, column: 1, scope: !1650)
!1697 = distinct !DISubprogram(name: "ut_sigfigs", scope: !20, file: !20, line: 627, type: !1039, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1698)
!1698 = !{!1699, !1700}
!1699 = !DILocalVariable(name: "sigfigs", scope: !1697, file: !20, line: 628, type: !282)
!1700 = !DILocalVariable(name: "hdr", scope: !1701, file: !20, line: 631, type: !294)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !20, line: 630, column: 52)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !20, line: 630, column: 9)
!1703 = distinct !DILexicalBlock(scope: !1697, file: !20, line: 630, column: 9)
!1704 = !DILocation(line: 628, column: 9, scope: !1697)
!1705 = !DILocation(line: 628, column: 13, scope: !1697)
!1706 = !DILocation(line: 630, column: 22, scope: !1703)
!1707 = !DILocation(line: 630, column: 14, scope: !1703)
!1708 = !DILocation(line: 630, column: 27, scope: !1702)
!1709 = !DILocation(line: 630, column: 35, scope: !1702)
!1710 = !DILocation(line: 630, column: 9, scope: !1703)
!1711 = !DILocation(line: 631, column: 17, scope: !1701)
!1712 = !DILocation(line: 631, column: 37, scope: !1701)
!1713 = !DILocation(line: 631, column: 71, scope: !1701)
!1714 = !DILocation(line: 631, column: 43, scope: !1701)
!1715 = !DILocation(line: 632, column: 17, scope: !1701)
!1716 = !DILocation(line: 632, column: 17, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !20, line: 632, column: 17)
!1718 = distinct !DILexicalBlock(scope: !1701, file: !20, line: 632, column: 17)
!1719 = !DILocation(line: 632, column: 17, scope: !1718)
!1720 = !DILocation(line: 632, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !20, line: 632, column: 17)
!1722 = !DILocation(line: 632, column: 17, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1721, file: !20, line: 632, column: 17)
!1724 = !DILocation(line: 632, column: 17, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !20, line: 632, column: 17)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !20, line: 632, column: 17)
!1727 = !DILocation(line: 632, column: 17, scope: !1726)
!1728 = !DILocation(line: 635, column: 42, scope: !1701)
!1729 = !DILocation(line: 635, column: 17, scope: !1701)
!1730 = !DILocation(line: 636, column: 9, scope: !1702)
!1731 = !DILocation(line: 636, column: 9, scope: !1701)
!1732 = !DILocation(line: 630, column: 48, scope: !1702)
!1733 = !DILocation(line: 630, column: 9, scope: !1702)
!1734 = distinct !{!1734, !1710, !1735, !440}
!1735 = !DILocation(line: 636, column: 9, scope: !1703)
!1736 = !DILocation(line: 638, column: 9, scope: !1697)
!1737 = !DILocation(line: 638, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1697, file: !20, line: 638, column: 9)
!1739 = !DILocation(line: 639, column: 1, scope: !1697)
!1740 = distinct !DISubprogram(name: "ut_minmax_trackable", scope: !20, file: !20, line: 641, type: !1039, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DILocalVariable(name: "minval", scope: !1740, file: !20, line: 642, type: !1079)
!1743 = !DILocalVariable(name: "maxval", scope: !1740, file: !20, line: 643, type: !1079)
!1744 = !DILocalVariable(name: "hdr", scope: !1740, file: !20, line: 644, type: !294)
!1745 = !DILocation(line: 642, column: 9, scope: !1740)
!1746 = !DILocation(line: 642, column: 23, scope: !1740)
!1747 = !DILocation(line: 643, column: 9, scope: !1740)
!1748 = !DILocation(line: 643, column: 23, scope: !1740)
!1749 = !DILocation(line: 644, column: 9, scope: !1740)
!1750 = !DILocation(line: 644, column: 29, scope: !1740)
!1751 = !DILocation(line: 644, column: 35, scope: !1740)
!1752 = !DILocation(line: 646, column: 9, scope: !1740)
!1753 = !DILocation(line: 646, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !20, line: 646, column: 9)
!1755 = distinct !DILexicalBlock(scope: !1740, file: !20, line: 646, column: 9)
!1756 = !DILocation(line: 646, column: 9, scope: !1755)
!1757 = !DILocation(line: 646, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !20, line: 646, column: 9)
!1759 = !DILocation(line: 646, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1758, file: !20, line: 646, column: 9)
!1761 = !DILocation(line: 646, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !20, line: 646, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !20, line: 646, column: 9)
!1764 = !DILocation(line: 646, column: 9, scope: !1763)
!1765 = !DILocation(line: 649, column: 9, scope: !1740)
!1766 = !DILocation(line: 649, column: 9, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !20, line: 649, column: 9)
!1768 = distinct !DILexicalBlock(scope: !1740, file: !20, line: 649, column: 9)
!1769 = !DILocation(line: 649, column: 9, scope: !1768)
!1770 = !DILocation(line: 649, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !20, line: 649, column: 9)
!1772 = !DILocation(line: 649, column: 9, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !20, line: 649, column: 9)
!1774 = !DILocation(line: 649, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !20, line: 649, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !20, line: 649, column: 9)
!1777 = !DILocation(line: 649, column: 9, scope: !1776)
!1778 = !DILocation(line: 653, column: 34, scope: !1740)
!1779 = !DILocation(line: 653, column: 9, scope: !1740)
!1780 = !DILocation(line: 654, column: 9, scope: !1740)
!1781 = !DILocation(line: 654, column: 9, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1740, file: !20, line: 654, column: 9)
!1783 = !DILocation(line: 655, column: 1, scope: !1740)
!1784 = distinct !DISubprogram(name: "ut_unitmagnitude_overflow", scope: !20, file: !20, line: 658, type: !1039, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1785)
!1785 = !{!1786, !1787}
!1786 = !DILocalVariable(name: "hdr", scope: !1784, file: !20, line: 659, type: !294)
!1787 = !DILocalVariable(name: "r", scope: !1784, file: !20, line: 660, type: !282)
!1788 = !DILocation(line: 659, column: 9, scope: !1784)
!1789 = !DILocation(line: 659, column: 29, scope: !1784)
!1790 = !DILocation(line: 659, column: 35, scope: !1784)
!1791 = !DILocation(line: 660, column: 9, scope: !1784)
!1792 = !DILocation(line: 660, column: 13, scope: !1784)
!1793 = !DILocation(line: 660, column: 59, scope: !1784)
!1794 = !DILocation(line: 660, column: 35, scope: !1784)
!1795 = !DILocation(line: 661, column: 9, scope: !1784)
!1796 = !DILocation(line: 661, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !20, line: 661, column: 9)
!1798 = distinct !DILexicalBlock(scope: !1784, file: !20, line: 661, column: 9)
!1799 = !DILocation(line: 661, column: 9, scope: !1798)
!1800 = !DILocation(line: 661, column: 9, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !20, line: 661, column: 9)
!1802 = !DILocation(line: 661, column: 9, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1801, file: !20, line: 661, column: 9)
!1804 = !DILocation(line: 661, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !20, line: 661, column: 9)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !20, line: 661, column: 9)
!1807 = !DILocation(line: 661, column: 9, scope: !1806)
!1808 = !DILocation(line: 663, column: 34, scope: !1784)
!1809 = !DILocation(line: 663, column: 9, scope: !1784)
!1810 = !DILocation(line: 664, column: 9, scope: !1784)
!1811 = !DILocation(line: 664, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1784, file: !20, line: 664, column: 9)
!1813 = !DILocation(line: 665, column: 1, scope: !1784)
!1814 = distinct !DISubprogram(name: "ut_subbucketmask_overflow", scope: !20, file: !20, line: 667, type: !1039, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1815)
!1815 = !{!1816, !1817, !1821, !1830, !1831, !1835}
!1816 = !DILocalVariable(name: "hdr", scope: !1814, file: !20, line: 668, type: !294)
!1817 = !DILocalVariable(name: "input", scope: !1814, file: !20, line: 669, type: !1818)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 192, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 3)
!1821 = !DILocalVariable(name: "exp", scope: !1814, file: !20, line: 673, type: !1822)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, size: 512, elements: !1828)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !20, line: 670, size: 128, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1824, file: !20, line: 671, baseType: !279, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1824, file: !20, line: 672, baseType: !274, size: 64, offset: 64)
!1828 = !{!1829}
!1829 = !DISubrange(count: 4)
!1830 = !DILocalVariable(name: "i", scope: !1814, file: !20, line: 679, type: !546)
!1831 = !DILocalVariable(name: "r", scope: !1832, file: !20, line: 685, type: !282)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !20, line: 683, column: 51)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !20, line: 683, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1814, file: !20, line: 683, column: 9)
!1835 = !DILocalVariable(name: "v", scope: !1836, file: !20, line: 690, type: !274)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !20, line: 689, column: 49)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !20, line: 689, column: 9)
!1838 = distinct !DILexicalBlock(scope: !1814, file: !20, line: 689, column: 9)
!1839 = !DILocation(line: 668, column: 9, scope: !1814)
!1840 = !DILocation(line: 668, column: 29, scope: !1814)
!1841 = !DILocation(line: 669, column: 9, scope: !1814)
!1842 = !DILocation(line: 669, column: 23, scope: !1814)
!1843 = !DILocation(line: 670, column: 9, scope: !1814)
!1844 = !DILocation(line: 673, column: 11, scope: !1814)
!1845 = !DILocation(line: 679, column: 9, scope: !1814)
!1846 = !DILocation(line: 679, column: 16, scope: !1814)
!1847 = !DILocation(line: 681, column: 15, scope: !1814)
!1848 = !DILocation(line: 681, column: 13, scope: !1814)
!1849 = !DILocation(line: 683, column: 16, scope: !1834)
!1850 = !DILocation(line: 683, column: 14, scope: !1834)
!1851 = !DILocation(line: 683, column: 21, scope: !1833)
!1852 = !DILocation(line: 683, column: 23, scope: !1833)
!1853 = !DILocation(line: 683, column: 9, scope: !1834)
!1854 = !DILocation(line: 685, column: 17, scope: !1832)
!1855 = !DILocation(line: 685, column: 21, scope: !1832)
!1856 = !DILocation(line: 685, column: 49, scope: !1832)
!1857 = !DILocation(line: 685, column: 60, scope: !1832)
!1858 = !DILocation(line: 685, column: 54, scope: !1832)
!1859 = !DILocation(line: 685, column: 25, scope: !1832)
!1860 = !DILocation(line: 686, column: 17, scope: !1832)
!1861 = !DILocation(line: 686, column: 17, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !20, line: 686, column: 17)
!1863 = distinct !DILexicalBlock(scope: !1832, file: !20, line: 686, column: 17)
!1864 = !DILocation(line: 686, column: 17, scope: !1863)
!1865 = !DILocation(line: 686, column: 17, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !20, line: 686, column: 17)
!1867 = !DILocation(line: 686, column: 17, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1866, file: !20, line: 686, column: 17)
!1869 = !DILocation(line: 686, column: 17, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !20, line: 686, column: 17)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !20, line: 686, column: 17)
!1872 = !DILocation(line: 686, column: 17, scope: !1871)
!1873 = !DILocation(line: 687, column: 9, scope: !1833)
!1874 = !DILocation(line: 687, column: 9, scope: !1832)
!1875 = !DILocation(line: 683, column: 47, scope: !1833)
!1876 = !DILocation(line: 683, column: 9, scope: !1833)
!1877 = distinct !{!1877, !1853, !1878, !440}
!1878 = !DILocation(line: 687, column: 9, scope: !1834)
!1879 = !DILocation(line: 689, column: 16, scope: !1838)
!1880 = !DILocation(line: 689, column: 14, scope: !1838)
!1881 = !DILocation(line: 689, column: 21, scope: !1837)
!1882 = !DILocation(line: 689, column: 23, scope: !1837)
!1883 = !DILocation(line: 689, column: 9, scope: !1838)
!1884 = !DILocation(line: 690, column: 17, scope: !1836)
!1885 = !DILocation(line: 690, column: 25, scope: !1836)
!1886 = !DILocation(line: 690, column: 55, scope: !1836)
!1887 = !DILocation(line: 690, column: 64, scope: !1836)
!1888 = !DILocation(line: 690, column: 60, scope: !1836)
!1889 = !DILocation(line: 690, column: 67, scope: !1836)
!1890 = !DILocation(line: 690, column: 29, scope: !1836)
!1891 = !DILocation(line: 691, column: 17, scope: !1836)
!1892 = !DILocation(line: 691, column: 17, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !20, line: 691, column: 17)
!1894 = distinct !DILexicalBlock(scope: !1836, file: !20, line: 691, column: 17)
!1895 = !DILocation(line: 691, column: 17, scope: !1894)
!1896 = !DILocation(line: 691, column: 17, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !20, line: 691, column: 17)
!1898 = !DILocation(line: 691, column: 17, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !20, line: 691, column: 17)
!1900 = !DILocation(line: 691, column: 17, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !20, line: 691, column: 17)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !20, line: 691, column: 17)
!1903 = !DILocation(line: 691, column: 17, scope: !1902)
!1904 = !DILocation(line: 694, column: 9, scope: !1837)
!1905 = !DILocation(line: 694, column: 9, scope: !1836)
!1906 = !DILocation(line: 689, column: 45, scope: !1837)
!1907 = !DILocation(line: 689, column: 9, scope: !1837)
!1908 = distinct !{!1908, !1883, !1909, !440}
!1909 = !DILocation(line: 694, column: 9, scope: !1838)
!1910 = !DILocation(line: 696, column: 34, scope: !1814)
!1911 = !DILocation(line: 696, column: 9, scope: !1814)
!1912 = !DILocation(line: 697, column: 9, scope: !1814)
!1913 = !DILocation(line: 697, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1814, file: !20, line: 697, column: 9)
!1915 = !DILocation(line: 698, column: 1, scope: !1814)
!1916 = !DISubprogram(name: "free", scope: !1917, file: !1917, line: 555, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1917 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1918 = !DISubprogram(name: "calloc", scope: !1917, file: !1917, line: 543, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1919 = !DISubprogram(name: "__assert_fail", scope: !1920, file: !1920, line: 69, type: !1921, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1920 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1923, !1923, !1924, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1924 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1925 = distinct !DISubprogram(name: "rd_hdr_getCountAtIndex", scope: !20, file: !20, line: 173, type: !1926, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!274, !607, !280, !280}
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "hdr", arg: 1, scope: !1925, file: !20, line: 173, type: !607)
!1930 = !DILocalVariable(name: "bucketIdx", arg: 2, scope: !1925, file: !20, line: 174, type: !280)
!1931 = !DILocalVariable(name: "subBucketIdx", arg: 3, scope: !1925, file: !20, line: 175, type: !280)
!1932 = !DILocation(line: 173, column: 75, scope: !1925)
!1933 = !DILocation(line: 174, column: 57, scope: !1925)
!1934 = !DILocation(line: 175, column: 57, scope: !1925)
!1935 = !DILocation(line: 176, column: 16, scope: !1925)
!1936 = !DILocation(line: 176, column: 21, scope: !1925)
!1937 = !DILocation(line: 176, column: 47, scope: !1925)
!1938 = !DILocation(line: 176, column: 52, scope: !1925)
!1939 = !DILocation(line: 176, column: 63, scope: !1925)
!1940 = !DILocation(line: 176, column: 28, scope: !1925)
!1941 = !DILocation(line: 176, column: 9, scope: !1925)
!1942 = distinct !DISubprogram(name: "rd_hdr_valueFromIndex", scope: !20, file: !20, line: 215, type: !1926, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1943)
!1943 = !{!1944, !1945, !1946}
!1944 = !DILocalVariable(name: "hdr", arg: 1, scope: !1942, file: !20, line: 215, type: !607)
!1945 = !DILocalVariable(name: "bucketIdx", arg: 2, scope: !1942, file: !20, line: 216, type: !280)
!1946 = !DILocalVariable(name: "subBucketIdx", arg: 3, scope: !1942, file: !20, line: 217, type: !280)
!1947 = !DILocation(line: 215, column: 74, scope: !1942)
!1948 = !DILocation(line: 216, column: 56, scope: !1942)
!1949 = !DILocation(line: 217, column: 56, scope: !1942)
!1950 = !DILocation(line: 218, column: 25, scope: !1942)
!1951 = !DILocation(line: 218, column: 16, scope: !1942)
!1952 = !DILocation(line: 219, column: 29, scope: !1942)
!1953 = !DILocation(line: 219, column: 20, scope: !1942)
!1954 = !DILocation(line: 219, column: 41, scope: !1942)
!1955 = !DILocation(line: 219, column: 46, scope: !1942)
!1956 = !DILocation(line: 219, column: 39, scope: !1942)
!1957 = !DILocation(line: 219, column: 16, scope: !1942)
!1958 = !DILocation(line: 218, column: 9, scope: !1942)
!1959 = distinct !DISubprogram(name: "rd_hdr_countsIndex", scope: !20, file: !20, line: 164, type: !1960, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!280, !607, !280, !280}
!1962 = !{!1963, !1964, !1965, !1966, !1967}
!1963 = !DILocalVariable(name: "hdr", arg: 1, scope: !1959, file: !20, line: 164, type: !607)
!1964 = !DILocalVariable(name: "bucketIdx", arg: 2, scope: !1959, file: !20, line: 165, type: !280)
!1965 = !DILocalVariable(name: "subBucketIdx", arg: 3, scope: !1959, file: !20, line: 166, type: !280)
!1966 = !DILocalVariable(name: "bucketBaseIdx", scope: !1959, file: !20, line: 167, type: !280)
!1967 = !DILocalVariable(name: "offsetInBucket", scope: !1959, file: !20, line: 169, type: !280)
!1968 = !DILocation(line: 164, column: 71, scope: !1959)
!1969 = !DILocation(line: 165, column: 53, scope: !1959)
!1970 = !DILocation(line: 166, column: 53, scope: !1959)
!1971 = !DILocation(line: 167, column: 9, scope: !1959)
!1972 = !DILocation(line: 167, column: 17, scope: !1959)
!1973 = !DILocation(line: 167, column: 34, scope: !1959)
!1974 = !DILocation(line: 167, column: 44, scope: !1959)
!1975 = !DILocation(line: 168, column: 36, scope: !1959)
!1976 = !DILocation(line: 168, column: 41, scope: !1959)
!1977 = !DILocation(line: 168, column: 33, scope: !1959)
!1978 = !DILocation(line: 169, column: 9, scope: !1959)
!1979 = !DILocation(line: 169, column: 17, scope: !1959)
!1980 = !DILocation(line: 169, column: 34, scope: !1959)
!1981 = !DILocation(line: 169, column: 49, scope: !1959)
!1982 = !DILocation(line: 169, column: 54, scope: !1959)
!1983 = !DILocation(line: 169, column: 47, scope: !1959)
!1984 = !DILocation(line: 170, column: 16, scope: !1959)
!1985 = !DILocation(line: 170, column: 32, scope: !1959)
!1986 = !DILocation(line: 170, column: 30, scope: !1959)
!1987 = !DILocation(line: 171, column: 1, scope: !1959)
!1988 = !DILocation(line: 170, column: 9, scope: !1959)
!1989 = distinct !DISubprogram(name: "rd_hdr_sizeOfEquivalentValueRange", scope: !20, file: !20, line: 223, type: !788, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995}
!1991 = !DILocalVariable(name: "hdr", arg: 1, scope: !1989, file: !20, line: 223, type: !607)
!1992 = !DILocalVariable(name: "v", arg: 2, scope: !1989, file: !20, line: 223, type: !274)
!1993 = !DILocalVariable(name: "bucketIdx", scope: !1989, file: !20, line: 224, type: !280)
!1994 = !DILocalVariable(name: "subBucketIdx", scope: !1989, file: !20, line: 225, type: !280)
!1995 = !DILocalVariable(name: "adjustedBucket", scope: !1989, file: !20, line: 226, type: !280)
!1996 = !DILocation(line: 223, column: 61, scope: !1989)
!1997 = !DILocation(line: 223, column: 74, scope: !1989)
!1998 = !DILocation(line: 224, column: 9, scope: !1989)
!1999 = !DILocation(line: 224, column: 17, scope: !1989)
!2000 = !DILocation(line: 224, column: 56, scope: !1989)
!2001 = !DILocation(line: 224, column: 61, scope: !1989)
!2002 = !DILocation(line: 224, column: 34, scope: !1989)
!2003 = !DILocation(line: 225, column: 9, scope: !1989)
!2004 = !DILocation(line: 225, column: 17, scope: !1989)
!2005 = !DILocation(line: 225, column: 57, scope: !1989)
!2006 = !DILocation(line: 225, column: 62, scope: !1989)
!2007 = !DILocation(line: 225, column: 65, scope: !1989)
!2008 = !DILocation(line: 225, column: 34, scope: !1989)
!2009 = !DILocation(line: 226, column: 9, scope: !1989)
!2010 = !DILocation(line: 226, column: 17, scope: !1989)
!2011 = !DILocation(line: 226, column: 34, scope: !1989)
!2012 = !DILocation(line: 227, column: 13, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1989, file: !20, line: 227, column: 13)
!2014 = !DILocation(line: 227, column: 13, scope: !1989)
!2015 = !DILocation(line: 228, column: 31, scope: !2013)
!2016 = !DILocation(line: 228, column: 17, scope: !2013)
!2017 = !DILocation(line: 229, column: 31, scope: !1989)
!2018 = !DILocation(line: 229, column: 36, scope: !1989)
!2019 = !DILocation(line: 229, column: 61, scope: !1989)
!2020 = !DILocation(line: 229, column: 52, scope: !1989)
!2021 = !DILocation(line: 229, column: 50, scope: !1989)
!2022 = !DILocation(line: 229, column: 27, scope: !1989)
!2023 = !DILocation(line: 230, column: 1, scope: !1989)
!2024 = !DILocation(line: 229, column: 9, scope: !1989)
!2025 = distinct !DISubprogram(name: "rd_hdr_getBucketIndex", scope: !20, file: !20, line: 202, type: !962, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2026)
!2026 = !{!2027, !2028, !2029}
!2027 = !DILocalVariable(name: "hdr", arg: 1, scope: !2025, file: !20, line: 202, type: !607)
!2028 = !DILocalVariable(name: "v", arg: 2, scope: !2025, file: !20, line: 203, type: !274)
!2029 = !DILocalVariable(name: "pow2Ceiling", scope: !2025, file: !20, line: 204, type: !274)
!2030 = !DILocation(line: 202, column: 74, scope: !2025)
!2031 = !DILocation(line: 203, column: 56, scope: !2025)
!2032 = !DILocation(line: 204, column: 9, scope: !2025)
!2033 = !DILocation(line: 204, column: 17, scope: !2025)
!2034 = !DILocation(line: 204, column: 38, scope: !2025)
!2035 = !DILocation(line: 204, column: 42, scope: !2025)
!2036 = !DILocation(line: 204, column: 47, scope: !2025)
!2037 = !DILocation(line: 204, column: 40, scope: !2025)
!2038 = !DILocation(line: 204, column: 31, scope: !2025)
!2039 = !DILocation(line: 205, column: 26, scope: !2025)
!2040 = !DILocation(line: 205, column: 49, scope: !2025)
!2041 = !DILocation(line: 205, column: 54, scope: !2025)
!2042 = !DILocation(line: 205, column: 38, scope: !2025)
!2043 = !DILocation(line: 206, column: 36, scope: !2025)
!2044 = !DILocation(line: 206, column: 41, scope: !2025)
!2045 = !DILocation(line: 206, column: 69, scope: !2025)
!2046 = !DILocation(line: 206, column: 26, scope: !2025)
!2047 = !DILocation(line: 205, column: 68, scope: !2025)
!2048 = !DILocation(line: 205, column: 16, scope: !2025)
!2049 = !DILocation(line: 207, column: 1, scope: !2025)
!2050 = !DILocation(line: 205, column: 9, scope: !2025)
!2051 = distinct !DISubprogram(name: "rd_hdr_getSubBucketIdx", scope: !20, file: !20, line: 209, type: !2052, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!280, !607, !274, !280}
!2054 = !{!2055, !2056, !2057}
!2055 = !DILocalVariable(name: "hdr", arg: 1, scope: !2051, file: !20, line: 209, type: !607)
!2056 = !DILocalVariable(name: "v", arg: 2, scope: !2051, file: !20, line: 210, type: !274)
!2057 = !DILocalVariable(name: "idx", arg: 3, scope: !2051, file: !20, line: 211, type: !280)
!2058 = !DILocation(line: 209, column: 75, scope: !2051)
!2059 = !DILocation(line: 210, column: 57, scope: !2051)
!2060 = !DILocation(line: 211, column: 57, scope: !2051)
!2061 = !DILocation(line: 212, column: 26, scope: !2051)
!2062 = !DILocation(line: 212, column: 41, scope: !2051)
!2063 = !DILocation(line: 212, column: 32, scope: !2051)
!2064 = !DILocation(line: 212, column: 56, scope: !2051)
!2065 = !DILocation(line: 212, column: 61, scope: !2051)
!2066 = !DILocation(line: 212, column: 45, scope: !2051)
!2067 = !DILocation(line: 212, column: 28, scope: !2051)
!2068 = !DILocation(line: 212, column: 16, scope: !2051)
!2069 = !DILocation(line: 212, column: 9, scope: !2051)
!2070 = distinct !DISubprogram(name: "bitLen", scope: !20, file: !20, line: 180, type: !2071, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!274, !274}
!2073 = !{!2074, !2075}
!2074 = !DILocalVariable(name: "x", arg: 1, scope: !2070, file: !20, line: 180, type: !274)
!2075 = !DILocalVariable(name: "n", scope: !2070, file: !20, line: 181, type: !274)
!2076 = !DILocation(line: 180, column: 41, scope: !2070)
!2077 = !DILocation(line: 181, column: 9, scope: !2070)
!2078 = !DILocation(line: 181, column: 17, scope: !2070)
!2079 = !DILocation(line: 182, column: 9, scope: !2070)
!2080 = !DILocation(line: 182, column: 16, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !20, line: 182, column: 9)
!2082 = distinct !DILexicalBlock(scope: !2070, file: !20, line: 182, column: 9)
!2083 = !DILocation(line: 182, column: 18, scope: !2081)
!2084 = !DILocation(line: 182, column: 9, scope: !2082)
!2085 = !DILocation(line: 183, column: 19, scope: !2081)
!2086 = !DILocation(line: 183, column: 17, scope: !2081)
!2087 = !DILocation(line: 182, column: 31, scope: !2081)
!2088 = !DILocation(line: 182, column: 9, scope: !2081)
!2089 = distinct !{!2089, !2084, !2090, !440}
!2090 = !DILocation(line: 183, column: 22, scope: !2082)
!2091 = !DILocation(line: 184, column: 13, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2070, file: !20, line: 184, column: 13)
!2093 = !DILocation(line: 184, column: 15, scope: !2092)
!2094 = !DILocation(line: 184, column: 13, scope: !2070)
!2095 = !DILocation(line: 185, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !20, line: 184, column: 24)
!2097 = !DILocation(line: 186, column: 19, scope: !2096)
!2098 = !DILocation(line: 187, column: 9, scope: !2096)
!2099 = !DILocation(line: 188, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2070, file: !20, line: 188, column: 13)
!2101 = !DILocation(line: 188, column: 15, scope: !2100)
!2102 = !DILocation(line: 188, column: 13, scope: !2070)
!2103 = !DILocation(line: 189, column: 19, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !20, line: 188, column: 23)
!2105 = !DILocation(line: 190, column: 19, scope: !2104)
!2106 = !DILocation(line: 191, column: 9, scope: !2104)
!2107 = !DILocation(line: 192, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2070, file: !20, line: 192, column: 13)
!2109 = !DILocation(line: 192, column: 15, scope: !2108)
!2110 = !DILocation(line: 192, column: 13, scope: !2070)
!2111 = !DILocation(line: 193, column: 19, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !20, line: 192, column: 23)
!2113 = !DILocation(line: 194, column: 19, scope: !2112)
!2114 = !DILocation(line: 195, column: 9, scope: !2112)
!2115 = !DILocation(line: 196, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2070, file: !20, line: 196, column: 13)
!2117 = !DILocation(line: 196, column: 15, scope: !2116)
!2118 = !DILocation(line: 196, column: 13, scope: !2070)
!2119 = !DILocation(line: 197, column: 18, scope: !2116)
!2120 = !DILocation(line: 197, column: 17, scope: !2116)
!2121 = !DILocation(line: 198, column: 16, scope: !2070)
!2122 = !DILocation(line: 199, column: 1, scope: !2070)
!2123 = !DILocation(line: 198, column: 9, scope: !2070)
!2124 = distinct !DISubprogram(name: "rd_hdr_nextNonEquivalentValue", scope: !20, file: !20, line: 241, type: !788, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2125)
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "hdr", arg: 1, scope: !2124, file: !20, line: 241, type: !607)
!2127 = !DILocalVariable(name: "v", arg: 2, scope: !2124, file: !20, line: 241, type: !274)
!2128 = !DILocation(line: 241, column: 57, scope: !2124)
!2129 = !DILocation(line: 241, column: 70, scope: !2124)
!2130 = !DILocation(line: 242, column: 45, scope: !2124)
!2131 = !DILocation(line: 242, column: 50, scope: !2124)
!2132 = !DILocation(line: 242, column: 16, scope: !2124)
!2133 = !DILocation(line: 243, column: 50, scope: !2124)
!2134 = !DILocation(line: 243, column: 55, scope: !2124)
!2135 = !DILocation(line: 243, column: 16, scope: !2124)
!2136 = !DILocation(line: 242, column: 53, scope: !2124)
!2137 = !DILocation(line: 242, column: 9, scope: !2124)
!2138 = !DISubprogram(name: "fprintf", scope: !2139, file: !2139, line: 350, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!282, !2142, !2195, null}
!2142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2143)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2145, line: 7, baseType: !2146)
!2145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2147, line: 49, size: 1728, elements: !2148)
!2147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2148 = !{!2149, !2150, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2165, !2167, !2168, !2169, !2171, !2173, !2175, !2179, !2182, !2184, !2187, !2190, !2191, !2192, !2193, !2194}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2146, file: !2147, line: 51, baseType: !282, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2146, file: !2147, line: 54, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2146, file: !2147, line: 55, baseType: !2151, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2146, file: !2147, line: 56, baseType: !2151, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2146, file: !2147, line: 57, baseType: !2151, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2146, file: !2147, line: 58, baseType: !2151, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2146, file: !2147, line: 59, baseType: !2151, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2146, file: !2147, line: 60, baseType: !2151, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2146, file: !2147, line: 61, baseType: !2151, size: 64, offset: 512)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2146, file: !2147, line: 64, baseType: !2151, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2146, file: !2147, line: 65, baseType: !2151, size: 64, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2146, file: !2147, line: 66, baseType: !2151, size: 64, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2146, file: !2147, line: 68, baseType: !2163, size: 64, offset: 768)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2147, line: 36, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2146, file: !2147, line: 70, baseType: !2166, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2146, file: !2147, line: 72, baseType: !282, size: 32, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2146, file: !2147, line: 73, baseType: !282, size: 32, offset: 928)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2146, file: !2147, line: 74, baseType: !2170, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !277, line: 152, baseType: !278)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2146, file: !2147, line: 77, baseType: !2172, size: 16, offset: 1024)
!2172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2146, file: !2147, line: 78, baseType: !2174, size: 8, offset: 1040)
!2174 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2146, file: !2147, line: 79, baseType: !2176, size: 8, offset: 1048)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !2177)
!2177 = !{!2178}
!2178 = !DISubrange(count: 1)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2146, file: !2147, line: 81, baseType: !2180, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2147, line: 43, baseType: null)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2146, file: !2147, line: 89, baseType: !2183, size: 64, offset: 1152)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !277, line: 153, baseType: !278)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2146, file: !2147, line: 91, baseType: !2185, size: 64, offset: 1216)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2147, line: 37, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2146, file: !2147, line: 92, baseType: !2188, size: 64, offset: 1280)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2147, line: 38, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2146, file: !2147, line: 93, baseType: !2166, size: 64, offset: 1344)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2146, file: !2147, line: 94, baseType: !328, size: 64, offset: 1408)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2146, file: !2147, line: 95, baseType: !546, size: 64, offset: 1472)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2146, file: !2147, line: 96, baseType: !282, size: 32, offset: 1536)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2146, file: !2147, line: 98, baseType: !69, size: 160, offset: 1568)
!2195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1923)
!2196 = distinct !DISubprogram(name: "rd_dbl_eq0", scope: !2197, file: !2197, line: 40, type: !2198, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2200)
!2197 = !DIFile(filename: "./rdfloat.h", directory: "/local-ssd/librdkafka-boufp7uirdfaurriupperscwkdhn6ziy-build/aidengro/spack-stage-librdkafka-2.2.0-boufp7uirdfaurriupperscwkdhn6ziy/spack-src/src", checksumkind: CSK_MD5, checksum: "0787eddb8354f343b5f240a4e842351c")
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!282, !279, !279, !279}
!2200 = !{!2201, !2202, !2203}
!2201 = !DILocalVariable(name: "a", arg: 1, scope: !2196, file: !2197, line: 40, type: !279)
!2202 = !DILocalVariable(name: "b", arg: 2, scope: !2196, file: !2197, line: 40, type: !279)
!2203 = !DILocalVariable(name: "prec", arg: 3, scope: !2196, file: !2197, line: 40, type: !279)
!2204 = !DILocation(line: 40, column: 50, scope: !2196)
!2205 = !DILocation(line: 40, column: 60, scope: !2196)
!2206 = !DILocation(line: 40, column: 70, scope: !2196)
!2207 = !DILocation(line: 41, column: 21, scope: !2196)
!2208 = !DILocation(line: 41, column: 25, scope: !2196)
!2209 = !DILocation(line: 41, column: 23, scope: !2196)
!2210 = !DILocation(line: 41, column: 16, scope: !2196)
!2211 = !DILocation(line: 41, column: 30, scope: !2196)
!2212 = !DILocation(line: 41, column: 28, scope: !2196)
!2213 = !DILocation(line: 41, column: 9, scope: !2196)
