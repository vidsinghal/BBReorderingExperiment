; ModuleID = 'samples/480.bc'
source_filename = "/local-ssd/mold-juxfnnji5fhsnjba6knszhtu266m2zwq-build/aidengro/spack-stage-mold-2.1.0-juxfnnji5fhsnjba6knszhtu266m2zwq/spack-src/third-party/zstd/lib/dictBuilder/fastcover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FASTCOVER_accel_t = type { i32, i32 }
%struct.ZDICT_fastCover_params_t = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %struct.ZDICT_params_t }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.FASTCOVER_ctx_t = type { ptr, ptr, ptr, i64, i64, i64, i64, ptr, i32, i32, %struct.FASTCOVER_accel_t }
%struct.ZDICT_cover_params_t = type { i32, i32, i32, i32, double, i32, i32, %struct.ZDICT_params_t }
%struct.COVER_epoch_info_t = type { i32, i32 }
%struct.COVER_segment_t = type { i32, i32, i32 }
%struct.COVER_best_s = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, ptr, i64, %struct.ZDICT_cover_params_t, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.FASTCOVER_tryParameters_data_s = type { ptr, ptr, i64, %struct.ZDICT_cover_params_t }
%struct.COVER_dictSelection = type { ptr, i64, i64 }
%struct.unalign64 = type { i64 }

@g_displayLevel = internal global i32 0, align 4
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"FASTCOVER parameters incorrect\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"FASTCOVER must have at least one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dictBufferCapacity must be at least %u\0A\00", align 1
@FASTCOVER_defaultAccelParameters = internal constant [11 x %struct.FASTCOVER_accel_t] [%struct.FASTCOVER_accel_t { i32 100, i32 0 }, %struct.FASTCOVER_accel_t { i32 100, i32 0 }, %struct.FASTCOVER_accel_t { i32 50, i32 1 }, %struct.FASTCOVER_accel_t { i32 34, i32 2 }, %struct.FASTCOVER_accel_t { i32 25, i32 3 }, %struct.FASTCOVER_accel_t { i32 20, i32 4 }, %struct.FASTCOVER_accel_t { i32 17, i32 5 }, %struct.FASTCOVER_accel_t { i32 14, i32 6 }, %struct.FASTCOVER_accel_t { i32 13, i32 7 }, %struct.FASTCOVER_accel_t { i32 11, i32 8 }, %struct.FASTCOVER_accel_t { i32 10, i32 9 }], align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to initialize context\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Building dictionary\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Constructed dictionary of size %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Incorrect splitPoint\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Incorrect accel\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Incorrect k\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Trying %u different sets of parameters\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"d=%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"k=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to allocate parameters\0A\00", align 1
@g_time = internal global i64 0, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Total number of testing samples is %u and is invalid.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Failed to allocate scratch buffers \0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Failed to allocate frequency table \0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Failed to select dictionary\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer_fastCover(ptr noundef %dictBuffer, i64 noundef %dictBufferCapacity, ptr noundef %samplesBuffer, ptr noundef %samplesSizes, i32 noundef %nbSamples, ptr noundef byval(%struct.ZDICT_fastCover_params_t) align 8 %parameters) #0 {
entry:
  %retval = alloca i64, align 8
  %dictBuffer.addr = alloca ptr, align 8
  %dictBufferCapacity.addr = alloca i64, align 8
  %samplesBuffer.addr = alloca ptr, align 8
  %samplesSizes.addr = alloca ptr, align 8
  %nbSamples.addr = alloca i32, align 4
  %dict = alloca ptr, align 8
  %ctx = alloca %struct.FASTCOVER_ctx_t, align 8
  %coverParams = alloca %struct.ZDICT_cover_params_t, align 8
  %accelParams = alloca %struct.FASTCOVER_accel_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %initVal = alloca i64, align 8
  %segmentFreqs = alloca ptr, align 8
  %tail = alloca i64, align 8
  %nbFinalizeSamples = alloca i32, align 4
  %dictionarySize = alloca i64, align 8
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8, !tbaa !4
  store i64 %dictBufferCapacity, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  store ptr %samplesBuffer, ptr %samplesBuffer.addr, align 8, !tbaa !4
  store ptr %samplesSizes, ptr %samplesSizes.addr, align 8, !tbaa !4
  store i32 %nbSamples, ptr %nbSamples.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict) #10
  %0 = load ptr, ptr %dictBuffer.addr, align 8, !tbaa !4
  store ptr %0, ptr %dict, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 80, ptr %ctx) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr %coverParams) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %accelParams) #10
  %zParams = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 9
  %notificationLevel = getelementptr inbounds %struct.ZDICT_params_t, ptr %zParams, i32 0, i32 1
  %1 = load i32, ptr %notificationLevel, align 4, !tbaa !12
  store i32 %1, ptr @g_displayLevel, align 4, !tbaa !10
  %splitPoint = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 5
  store double 1.000000e+00, ptr %splitPoint, align 8, !tbaa !16
  %f = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 2
  %2 = load i32, ptr %f, align 8, !tbaa !17
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %f1 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 2
  %3 = load i32, ptr %f1, align 8, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 20, %cond.true ], [ %3, %cond.false ]
  %f2 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 2
  store i32 %cond, ptr %f2, align 8, !tbaa !17
  %accel = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 6
  %4 = load i32, ptr %accel, align 8, !tbaa !18
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %accel6 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 6
  %5 = load i32, ptr %accel6, align 8, !tbaa !18
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true4
  %cond8 = phi i32 [ 1, %cond.true4 ], [ %5, %cond.false5 ]
  %accel9 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 6
  store i32 %cond8, ptr %accel9, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 8 %coverParams, i8 0, i64 48, i1 false)
  call void @FASTCOVER_convertToCoverParams(ptr noundef byval(%struct.ZDICT_fastCover_params_t) align 8 %parameters, ptr noundef %coverParams)
  %6 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %f10 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 2
  %7 = load i32, ptr %f10, align 8, !tbaa !17
  %accel11 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 6
  %8 = load i32, ptr %accel11, align 8, !tbaa !18
  %call = call i32 @FASTCOVER_checkParameters(ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %coverParams, i64 noundef %6, i32 noundef %7, i32 noundef %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end16, label %if.then

if.then:                                          ; preds = %cond.end7
  %9 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp12 = icmp sge i32 %9, 1
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %10 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call15 = call i32 @fflush(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  store i64 -42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

if.end16:                                         ; preds = %cond.end7
  %12 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %cmp17 = icmp eq i32 %12, 0
  br i1 %cmp17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end16
  %13 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp19 = icmp sge i32 %13, 1
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.then18
  %14 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.1)
  %15 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call22 = call i32 @fflush(ptr noundef %15)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then18
  store i64 -72, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

if.end24:                                         ; preds = %if.end16
  %16 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %cmp25 = icmp ult i64 %16, 256
  br i1 %cmp25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end24
  %17 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp27 = icmp sge i32 %17, 1
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then26
  %18 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.2, i32 noundef 256)
  %19 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call30 = call i32 @fflush(ptr noundef %19)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then26
  store i64 -70, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

if.end32:                                         ; preds = %if.end24
  %accel33 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 6
  %20 = load i32, ptr %accel33, align 8, !tbaa !18
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.FASTCOVER_accel_t], ptr @FASTCOVER_defaultAccelParameters, i64 0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %accelParams, ptr align 8 %arrayidx, i64 8, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %initVal) #10
  %21 = load ptr, ptr %samplesBuffer.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %23 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %d = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 1
  %24 = load i32, ptr %d, align 4, !tbaa !20
  %splitPoint34 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 5
  %25 = load double, ptr %splitPoint34, align 8, !tbaa !16
  %f35 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 2
  %26 = load i32, ptr %f35, align 8, !tbaa !17
  %27 = load i64, ptr %accelParams, align 4
  %call36 = call i64 @FASTCOVER_ctx_init(ptr noundef %ctx, ptr noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24, double noundef %25, i32 noundef %26, i64 %27)
  store i64 %call36, ptr %initVal, align 8, !tbaa !8
  %28 = load i64, ptr %initVal, align 8, !tbaa !8
  %call37 = call i32 @ERR_isError(i64 noundef %28)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end32
  %29 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp40 = icmp sge i32 %29, 1
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.then39
  %30 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.3)
  %31 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call43 = call i32 @fflush(ptr noundef %31)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then39
  %32 = load i64, ptr %initVal, align 8, !tbaa !8
  store i64 %32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end44
  call void @llvm.lifetime.end.p0(i64 8, ptr %initVal) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup73 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %33 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %nbDmers = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %ctx, i32 0, i32 6
  %34 = load i64, ptr %nbDmers, align 8, !tbaa !22
  %35 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  call void @COVER_warnOnSmallCorpus(i64 noundef %33, i64 noundef %34, i32 noundef %35)
  %36 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp46 = icmp sge i32 %36, 2
  br i1 %cmp46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %cleanup.cont
  %37 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.4)
  %38 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call49 = call i32 @fflush(ptr noundef %38)
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %segmentFreqs) #10
  %f51 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %parameters, i32 0, i32 2
  %39 = load i32, ptr %f51, align 8, !tbaa !17
  %sh_prom = zext i32 %39 to i64
  %shl = shl i64 1, %sh_prom
  %call52 = call noalias ptr @calloc(i64 noundef %shl, i64 noundef 2) #11
  store ptr %call52, ptr %segmentFreqs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #10
  %freqs = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %ctx, i32 0, i32 7
  %40 = load ptr, ptr %freqs, align 8, !tbaa !25
  %41 = load ptr, ptr %dictBuffer.addr, align 8, !tbaa !4
  %42 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %43 = load ptr, ptr %segmentFreqs, align 8, !tbaa !4
  %call53 = call i64 @FASTCOVER_buildDictionary(ptr noundef %ctx, ptr noundef %40, ptr noundef %41, i64 noundef %42, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %coverParams, ptr noundef %43)
  store i64 %call53, ptr %tail, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbFinalizeSamples) #10
  %nbTrainSamples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %ctx, i32 0, i32 4
  %44 = load i64, ptr %nbTrainSamples, align 8, !tbaa !26
  %accelParams54 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %ctx, i32 0, i32 10
  %finalize = getelementptr inbounds %struct.FASTCOVER_accel_t, ptr %accelParams54, i32 0, i32 0
  %45 = load i32, ptr %finalize, align 8, !tbaa !27
  %conv = zext i32 %45 to i64
  %mul = mul i64 %44, %conv
  %div = udiv i64 %mul, 100
  %conv55 = trunc i64 %div to i32
  store i32 %conv55, ptr %nbFinalizeSamples, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictionarySize) #10
  %46 = load ptr, ptr %dict, align 8, !tbaa !4
  %47 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %48 = load ptr, ptr %dict, align 8, !tbaa !4
  %49 = load i64, ptr %tail, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 %49
  %50 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %51 = load i64, ptr %tail, align 8, !tbaa !8
  %sub = sub i64 %50, %51
  %52 = load ptr, ptr %samplesBuffer.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %54 = load i32, ptr %nbFinalizeSamples, align 4, !tbaa !10
  %zParams56 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 7
  %call57 = call i64 @ZDICT_finalizeDictionary(ptr noundef %46, i64 noundef %47, ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef byval(%struct.ZDICT_params_t) align 8 %zParams56)
  store i64 %call57, ptr %dictionarySize, align 8, !tbaa !8
  %55 = load i64, ptr %dictionarySize, align 8, !tbaa !8
  %call58 = call i32 @ERR_isError(i64 noundef %55)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end68, label %if.then60

if.then60:                                        ; preds = %if.end50
  %56 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp61 = icmp sge i32 %56, 2
  br i1 %cmp61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.then60
  %57 = load ptr, ptr @stderr, align 8, !tbaa !4
  %58 = load i64, ptr %dictionarySize, align 8, !tbaa !8
  %conv64 = trunc i64 %58 to i32
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.5, i32 noundef %conv64)
  %59 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call66 = call i32 @fflush(ptr noundef %59)
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.then60
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end50
  call void @FASTCOVER_ctx_destroy(ptr noundef %ctx)
  %60 = load ptr, ptr %segmentFreqs, align 8, !tbaa !4
  call void @free(ptr noundef %60) #10
  %61 = load i64, ptr %dictionarySize, align 8, !tbaa !8
  store i64 %61, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictionarySize) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbFinalizeSamples) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %segmentFreqs) #10
  br label %cleanup73

cleanup73:                                        ; preds = %if.end68, %cleanup, %if.end31, %if.end23, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %accelParams) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr %coverParams) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr %ctx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict) #10
  %62 = load i64, ptr %retval, align 8
  ret i64 %62
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_convertToCoverParams(ptr noundef byval(%struct.ZDICT_fastCover_params_t) align 8 %fastCoverParams, ptr noundef %coverParams) #0 {
entry:
  %coverParams.addr = alloca ptr, align 8
  store ptr %coverParams, ptr %coverParams.addr, align 8, !tbaa !4
  %k = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 0
  %0 = load i32, ptr %k, align 8, !tbaa !28
  %1 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %k1 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %1, i32 0, i32 0
  store i32 %0, ptr %k1, align 8, !tbaa !29
  %d = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 1
  %2 = load i32, ptr %d, align 4, !tbaa !30
  %3 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %3, i32 0, i32 1
  store i32 %2, ptr %d2, align 4, !tbaa !20
  %steps = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 3
  %4 = load i32, ptr %steps, align 4, !tbaa !31
  %5 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %steps3 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %5, i32 0, i32 2
  store i32 %4, ptr %steps3, align 8, !tbaa !32
  %nbThreads = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 4
  %6 = load i32, ptr %nbThreads, align 8, !tbaa !33
  %7 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %nbThreads4 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %7, i32 0, i32 3
  store i32 %6, ptr %nbThreads4, align 4, !tbaa !34
  %splitPoint = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 5
  %8 = load double, ptr %splitPoint, align 8, !tbaa !16
  %9 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %splitPoint5 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %9, i32 0, i32 4
  store double %8, ptr %splitPoint5, align 8, !tbaa !35
  %10 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %zParams = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %10, i32 0, i32 7
  %zParams6 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %zParams, ptr align 4 %zParams6, i64 12, i1 false), !tbaa.struct !36
  %shrinkDict = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %fastCoverParams, i32 0, i32 7
  %11 = load i32, ptr %shrinkDict, align 4, !tbaa !37
  %12 = load ptr, ptr %coverParams.addr, align 8, !tbaa !4
  %shrinkDict7 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %12, i32 0, i32 5
  store i32 %11, ptr %shrinkDict7, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @FASTCOVER_checkParameters(ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, i64 noundef %maxDictSize, i32 noundef %f, i32 noundef %accel) #0 {
entry:
  %retval = alloca i32, align 4
  %maxDictSize.addr = alloca i64, align 8
  %f.addr = alloca i32, align 4
  %accel.addr = alloca i32, align 4
  store i64 %maxDictSize, ptr %maxDictSize.addr, align 8, !tbaa !8
  store i32 %f, ptr %f.addr, align 4, !tbaa !10
  store i32 %accel, ptr %accel.addr, align 4, !tbaa !10
  %d = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %0 = load i32, ptr %d, align 4, !tbaa !20
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %k = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 0
  %1 = load i32, ptr %k, align 8, !tbaa !29
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %d2 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %2 = load i32, ptr %d2, align 4, !tbaa !20
  %cmp3 = icmp ne i32 %2, 6
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %d4 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %3 = load i32, ptr %d4, align 4, !tbaa !20
  %cmp5 = icmp ne i32 %3, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %k8 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 0
  %4 = load i32, ptr %k8, align 8, !tbaa !29
  %conv = zext i32 %4 to i64
  %5 = load i64, ptr %maxDictSize.addr, align 8, !tbaa !8
  %cmp9 = icmp ugt i64 %conv, %5
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %d13 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %6 = load i32, ptr %d13, align 4, !tbaa !20
  %k14 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 0
  %7 = load i32, ptr %k14, align 8, !tbaa !29
  %cmp15 = icmp ugt i32 %6, %7
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %8 = load i32, ptr %f.addr, align 4, !tbaa !10
  %cmp19 = icmp ugt i32 %8, 31
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end18
  %9 = load i32, ptr %f.addr, align 4, !tbaa !10
  %cmp22 = icmp eq i32 %9, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false21
  %splitPoint = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 4
  %10 = load double, ptr %splitPoint, align 8, !tbaa !35
  %cmp26 = fcmp ole double %10, 0.000000e+00
  br i1 %cmp26, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end25
  %splitPoint29 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 4
  %11 = load double, ptr %splitPoint29, align 8, !tbaa !35
  %cmp30 = fcmp ogt double %11, 1.000000e+00
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false28, %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %lor.lhs.false28
  %12 = load i32, ptr %accel.addr, align 4, !tbaa !10
  %cmp34 = icmp ugt i32 %12, 10
  br i1 %cmp34, label %if.then39, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end33
  %13 = load i32, ptr %accel.addr, align 4, !tbaa !10
  %cmp37 = icmp eq i32 %13, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %lor.lhs.false36, %if.end33
  store i32 0, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %lor.lhs.false36
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then39, %if.then32, %if.then24, %if.then17, %if.then11, %if.then6, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @fflush(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal i64 @FASTCOVER_ctx_init(ptr noundef %ctx, ptr noundef %samplesBuffer, ptr noundef %samplesSizes, i32 noundef %nbSamples, i32 noundef %d, double noundef %splitPoint, i32 noundef %f, i64 %accelParams.coerce) #0 {
entry:
  %retval = alloca i64, align 8
  %accelParams = alloca %struct.FASTCOVER_accel_t, align 4
  %ctx.addr = alloca ptr, align 8
  %samplesBuffer.addr = alloca ptr, align 8
  %samplesSizes.addr = alloca ptr, align 8
  %nbSamples.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %splitPoint.addr = alloca double, align 8
  %f.addr = alloca i32, align 4
  %samples = alloca ptr, align 8
  %totalSamplesSize = alloca i64, align 8
  %nbTrainSamples = alloca i32, align 4
  %nbTestSamples = alloca i32, align 4
  %trainingSamplesSize = alloca i64, align 8
  %testSamplesSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %accelParams.coerce, ptr %accelParams, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %samplesBuffer, ptr %samplesBuffer.addr, align 8, !tbaa !4
  store ptr %samplesSizes, ptr %samplesSizes.addr, align 8, !tbaa !4
  store i32 %nbSamples, ptr %nbSamples.addr, align 4, !tbaa !10
  store i32 %d, ptr %d.addr, align 4, !tbaa !10
  store double %splitPoint, ptr %splitPoint.addr, align 8, !tbaa !39
  store i32 %f, ptr %f.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %samples) #10
  %0 = load ptr, ptr %samplesBuffer.addr, align 8, !tbaa !4
  store ptr %0, ptr %samples, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %totalSamplesSize) #10
  %1 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %2 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %call = call i64 @COVER_sum(ptr noundef %1, i32 noundef %2)
  store i64 %call, ptr %totalSamplesSize, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbTrainSamples) #10
  %3 = load double, ptr %splitPoint.addr, align 8, !tbaa !39
  %cmp = fcmp olt double %3, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %conv = uitofp i32 %4 to double
  %5 = load double, ptr %splitPoint.addr, align 8, !tbaa !39
  %mul = fmul double %conv, %5
  %conv1 = fptoui double %mul to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv1, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, ptr %nbTrainSamples, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbTestSamples) #10
  %7 = load double, ptr %splitPoint.addr, align 8, !tbaa !39
  %cmp2 = fcmp olt double %7, 1.000000e+00
  br i1 %cmp2, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %8 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %9 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %sub = sub i32 %8, %9
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  %10 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %sub, %cond.true4 ], [ %10, %cond.false5 ]
  store i32 %cond7, ptr %nbTestSamples, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %trainingSamplesSize) #10
  %11 = load double, ptr %splitPoint.addr, align 8, !tbaa !39
  %cmp8 = fcmp olt double %11, 1.000000e+00
  br i1 %cmp8, label %cond.true10, label %cond.false12

cond.true10:                                      ; preds = %cond.end6
  %12 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %13 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %call11 = call i64 @COVER_sum(ptr noundef %12, i32 noundef %13)
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end6
  %14 = load i64, ptr %totalSamplesSize, align 8, !tbaa !8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true10
  %cond14 = phi i64 [ %call11, %cond.true10 ], [ %14, %cond.false12 ]
  store i64 %cond14, ptr %trainingSamplesSize, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %testSamplesSize) #10
  %15 = load double, ptr %splitPoint.addr, align 8, !tbaa !39
  %cmp15 = fcmp olt double %15, 1.000000e+00
  br i1 %cmp15, label %cond.true17, label %cond.false19

cond.true17:                                      ; preds = %cond.end13
  %16 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %17 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i64, ptr %16, i64 %idx.ext
  %18 = load i32, ptr %nbTestSamples, align 4, !tbaa !10
  %call18 = call i64 @COVER_sum(ptr noundef %add.ptr, i32 noundef %18)
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end13
  %19 = load i64, ptr %totalSamplesSize, align 8, !tbaa !8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true17
  %cond21 = phi i64 [ %call18, %cond.true17 ], [ %19, %cond.false19 ]
  store i64 %cond21, ptr %testSamplesSize, align 8, !tbaa !8
  %20 = load i64, ptr %totalSamplesSize, align 8, !tbaa !8
  %21 = load i32, ptr %d.addr, align 4, !tbaa !10
  %conv22 = zext i32 %21 to i64
  %cmp23 = icmp ugt i64 %conv22, 8
  br i1 %cmp23, label %cond.true25, label %cond.false27

cond.true25:                                      ; preds = %cond.end20
  %22 = load i32, ptr %d.addr, align 4, !tbaa !10
  %conv26 = zext i32 %22 to i64
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end20
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true25
  %cond29 = phi i64 [ %conv26, %cond.true25 ], [ 8, %cond.false27 ]
  %cmp30 = icmp ult i64 %20, %cond29
  br i1 %cmp30, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end28
  %23 = load i64, ptr %totalSamplesSize, align 8, !tbaa !8
  %cmp32 = icmp uge i64 %23, 4294967295
  br i1 %cmp32, label %if.then, label %if.end40

if.then:                                          ; preds = %lor.lhs.false, %cond.end28
  %24 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp34 = icmp sge i32 %24, 1
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %if.then
  %25 = load ptr, ptr @stderr, align 8, !tbaa !4
  %26 = load i64, ptr %totalSamplesSize, align 8, !tbaa !8
  %shr = lshr i64 %26, 20
  %conv37 = trunc i64 %shr to i32
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.16, i32 noundef %conv37, i32 noundef 4095)
  %27 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call39 = call i32 @fflush(ptr noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then36, %if.then
  store i64 -72, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false
  %28 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %cmp41 = icmp ult i32 %28, 5
  br i1 %cmp41, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.end40
  %29 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp44 = icmp sge i32 %29, 1
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.then43
  %30 = load ptr, ptr @stderr, align 8, !tbaa !4
  %31 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.17, i32 noundef %31)
  %32 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call48 = call i32 @fflush(ptr noundef %32)
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.then43
  store i64 -72, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %33 = load i32, ptr %nbTestSamples, align 4, !tbaa !10
  %cmp51 = icmp ult i32 %33, 1
  br i1 %cmp51, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end50
  %34 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp54 = icmp sge i32 %34, 1
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.then53
  %35 = load ptr, ptr @stderr, align 8, !tbaa !4
  %36 = load i32, ptr %nbTestSamples, align 4, !tbaa !10
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.18, i32 noundef %36)
  %37 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call58 = call i32 @fflush(ptr noundef %37)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then53
  store i64 -72, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %38, i8 0, i64 80, i1 false)
  %39 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp61 = icmp sge i32 %39, 2
  br i1 %cmp61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end60
  %40 = load ptr, ptr @stderr, align 8, !tbaa !4
  %41 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %42 = load i64, ptr %trainingSamplesSize, align 8, !tbaa !8
  %conv64 = trunc i64 %42 to i32
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.19, i32 noundef %41, i32 noundef %conv64)
  %43 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call66 = call i32 @fflush(ptr noundef %43)
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end60
  %44 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp68 = icmp sge i32 %44, 2
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end67
  %45 = load ptr, ptr @stderr, align 8, !tbaa !4
  %46 = load i32, ptr %nbTestSamples, align 4, !tbaa !10
  %47 = load i64, ptr %testSamplesSize, align 8, !tbaa !8
  %conv71 = trunc i64 %47 to i32
  %call72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.20, i32 noundef %46, i32 noundef %conv71)
  %48 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call73 = call i32 @fflush(ptr noundef %48)
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end67
  %49 = load ptr, ptr %samples, align 8, !tbaa !4
  %50 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples75 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %50, i32 0, i32 0
  store ptr %49, ptr %samples75, align 8, !tbaa !40
  %51 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samplesSizes76 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %52, i32 0, i32 2
  store ptr %51, ptr %samplesSizes76, align 8, !tbaa !41
  %53 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %conv77 = zext i32 %53 to i64
  %54 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %nbSamples78 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %54, i32 0, i32 3
  store i64 %conv77, ptr %nbSamples78, align 8, !tbaa !42
  %55 = load i32, ptr %nbTrainSamples, align 4, !tbaa !10
  %conv79 = zext i32 %55 to i64
  %56 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %nbTrainSamples80 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %56, i32 0, i32 4
  store i64 %conv79, ptr %nbTrainSamples80, align 8, !tbaa !26
  %57 = load i32, ptr %nbTestSamples, align 4, !tbaa !10
  %conv81 = zext i32 %57 to i64
  %58 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %nbTestSamples82 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %58, i32 0, i32 5
  store i64 %conv81, ptr %nbTestSamples82, align 8, !tbaa !43
  %59 = load i64, ptr %trainingSamplesSize, align 8, !tbaa !8
  %60 = load i32, ptr %d.addr, align 4, !tbaa !10
  %conv83 = zext i32 %60 to i64
  %cmp84 = icmp ugt i64 %conv83, 8
  br i1 %cmp84, label %cond.true86, label %cond.false88

cond.true86:                                      ; preds = %if.end74
  %61 = load i32, ptr %d.addr, align 4, !tbaa !10
  %conv87 = zext i32 %61 to i64
  br label %cond.end89

cond.false88:                                     ; preds = %if.end74
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.true86
  %cond90 = phi i64 [ %conv87, %cond.true86 ], [ 8, %cond.false88 ]
  %sub91 = sub i64 %59, %cond90
  %add = add i64 %sub91, 1
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %nbDmers = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %62, i32 0, i32 6
  store i64 %add, ptr %nbDmers, align 8, !tbaa !22
  %63 = load i32, ptr %d.addr, align 4, !tbaa !10
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %d92 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %64, i32 0, i32 8
  store i32 %63, ptr %d92, align 8, !tbaa !44
  %65 = load i32, ptr %f.addr, align 4, !tbaa !10
  %66 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %f93 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %66, i32 0, i32 9
  store i32 %65, ptr %f93, align 4, !tbaa !45
  %67 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %accelParams94 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %67, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %accelParams94, ptr align 4 %accelParams, i64 8, i1 false), !tbaa.struct !19
  %68 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %add95 = add i32 %68, 1
  %conv96 = zext i32 %add95 to i64
  %call97 = call noalias ptr @calloc(i64 noundef %conv96, i64 noundef 8) #11
  %69 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %69, i32 0, i32 1
  store ptr %call97, ptr %offsets, align 8, !tbaa !46
  %70 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets98 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %offsets98, align 8, !tbaa !46
  %cmp99 = icmp eq ptr %71, null
  br i1 %cmp99, label %if.then101, label %if.end108

if.then101:                                       ; preds = %cond.end89
  %72 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp102 = icmp sge i32 %72, 1
  br i1 %cmp102, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.then101
  %73 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.21)
  %74 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call106 = call i32 @fflush(ptr noundef %74)
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.then101
  %75 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @FASTCOVER_ctx_destroy(ptr noundef %75)
  store i64 -64, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end108:                                        ; preds = %cond.end89
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %76 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets109 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %offsets109, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds i64, ptr %77, i64 0
  store i64 0, ptr %arrayidx, align 8, !tbaa !8
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end108
  %78 = load i32, ptr %i, align 4, !tbaa !10
  %79 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %cmp110 = icmp ule i32 %78, %79
  br i1 %cmp110, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets112 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %offsets112, align 8, !tbaa !46
  %82 = load i32, ptr %i, align 4, !tbaa !10
  %sub113 = sub i32 %82, 1
  %idxprom = zext i32 %sub113 to i64
  %arrayidx114 = getelementptr inbounds i64, ptr %81, i64 %idxprom
  %83 = load i64, ptr %arrayidx114, align 8, !tbaa !8
  %84 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %85 = load i32, ptr %i, align 4, !tbaa !10
  %sub115 = sub i32 %85, 1
  %idxprom116 = zext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds i64, ptr %84, i64 %idxprom116
  %86 = load i64, ptr %arrayidx117, align 8, !tbaa !8
  %add118 = add i64 %83, %86
  %87 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets119 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %offsets119, align 8, !tbaa !46
  %89 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom120 = zext i32 %89 to i64
  %arrayidx121 = getelementptr inbounds i64, ptr %88, i64 %idxprom120
  store i64 %add118, ptr %arrayidx121, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %90 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %90, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %91 = load i32, ptr %f.addr, align 4, !tbaa !10
  %sh_prom = zext i32 %91 to i64
  %shl = shl i64 1, %sh_prom
  %call122 = call noalias ptr @calloc(i64 noundef %shl, i64 noundef 4) #11
  %92 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %freqs = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %92, i32 0, i32 7
  store ptr %call122, ptr %freqs, align 8, !tbaa !25
  %93 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %freqs123 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %93, i32 0, i32 7
  %94 = load ptr, ptr %freqs123, align 8, !tbaa !25
  %cmp124 = icmp eq ptr %94, null
  br i1 %cmp124, label %if.then126, label %if.end133

if.then126:                                       ; preds = %for.end
  %95 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp127 = icmp sge i32 %95, 1
  br i1 %cmp127, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.then126
  %96 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.22)
  %97 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call131 = call i32 @fflush(ptr noundef %97)
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.then126
  %98 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @FASTCOVER_ctx_destroy(ptr noundef %98)
  store i64 -64, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end133:                                        ; preds = %for.end
  %99 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp134 = icmp sge i32 %99, 2
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.end133
  %100 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.23)
  %101 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call138 = call i32 @fflush(ptr noundef %101)
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end133
  %102 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %freqs140 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %102, i32 0, i32 7
  %103 = load ptr, ptr %freqs140, align 8, !tbaa !25
  %104 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @FASTCOVER_computeFrequency(ptr noundef %103, ptr noundef %104)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.end132, %if.end107, %if.end59, %if.end49, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %testSamplesSize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %trainingSamplesSize) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbTestSamples) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbTrainSamples) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %totalSamplesSize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %samples) #10
  %105 = load i64, ptr %retval, align 8
  ret i64 %105
}

; Function Attrs: nounwind uwtable
define internal i32 @ERR_isError(i64 noundef %code) #0 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8, !tbaa !8
  %0 = load i64, ptr %code.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %0, -120
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @COVER_warnOnSmallCorpus(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define internal i64 @FASTCOVER_buildDictionary(ptr noundef %ctx, ptr noundef %freqs, ptr noundef %dictBuffer, i64 noundef %dictBufferCapacity, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, ptr noundef %segmentFreqs) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %freqs.addr = alloca ptr, align 8
  %dictBuffer.addr = alloca ptr, align 8
  %dictBufferCapacity.addr = alloca i64, align 8
  %segmentFreqs.addr = alloca ptr, align 8
  %dict = alloca ptr, align 8
  %tail = alloca i64, align 8
  %epochs = alloca %struct.COVER_epoch_info_t, align 4
  %maxZeroScoreRun = alloca i64, align 8
  %zeroScoreRun = alloca i64, align 8
  %epoch = alloca i64, align 8
  %epochBegin = alloca i32, align 4
  %epochEnd = alloca i32, align 4
  %segmentSize = alloca i64, align 8
  %segment = alloca %struct.COVER_segment_t, align 4
  %tmp.coerce = alloca { i64, i32 }, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %freqs, ptr %freqs.addr, align 8, !tbaa !4
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8, !tbaa !4
  store i64 %dictBufferCapacity, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  store ptr %segmentFreqs, ptr %segmentFreqs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict) #10
  %0 = load ptr, ptr %dictBuffer.addr, align 8, !tbaa !4
  store ptr %0, ptr %dict, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #10
  %1 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  store i64 %1, ptr %tail, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %epochs) #10
  %2 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %conv = trunc i64 %2 to i32
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %nbDmers = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %3, i32 0, i32 6
  %4 = load i64, ptr %nbDmers, align 8, !tbaa !22
  %conv1 = trunc i64 %4 to i32
  %k = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 0
  %5 = load i32, ptr %k, align 8, !tbaa !29
  %call = call i64 @COVER_computeEpochs(i32 noundef %conv, i32 noundef %conv1, i32 noundef %5, i32 noundef 1)
  store i64 %call, ptr %epochs, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxZeroScoreRun) #10
  store i64 10, ptr %maxZeroScoreRun, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeroScoreRun) #10
  store i64 0, ptr %zeroScoreRun, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoch) #10
  %6 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp = icmp sge i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.COVER_epoch_info_t, ptr %epochs, i32 0, i32 0
  %8 = load i32, ptr %num, align 4, !tbaa !47
  %size = getelementptr inbounds %struct.COVER_epoch_info_t, ptr %epochs, i32 0, i32 1
  %9 = load i32, ptr %size, align 4, !tbaa !48
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.24, i32 noundef %8, i32 noundef %9)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call4 = call i32 @fflush(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %epoch, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, ptr %tail, align 8, !tbaa !8
  %cmp5 = icmp ugt i64 %11, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %epochBegin) #10
  %12 = load i64, ptr %epoch, align 8, !tbaa !8
  %size7 = getelementptr inbounds %struct.COVER_epoch_info_t, ptr %epochs, i32 0, i32 1
  %13 = load i32, ptr %size7, align 4, !tbaa !48
  %conv8 = zext i32 %13 to i64
  %mul = mul i64 %12, %conv8
  %conv9 = trunc i64 %mul to i32
  store i32 %conv9, ptr %epochBegin, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %epochEnd) #10
  %14 = load i32, ptr %epochBegin, align 4, !tbaa !10
  %size10 = getelementptr inbounds %struct.COVER_epoch_info_t, ptr %epochs, i32 0, i32 1
  %15 = load i32, ptr %size10, align 4, !tbaa !48
  %add = add i32 %14, %15
  store i32 %add, ptr %epochEnd, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %segmentSize) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr %segment) #10
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %freqs.addr, align 8, !tbaa !4
  %18 = load i32, ptr %epochBegin, align 4, !tbaa !10
  %19 = load i32, ptr %epochEnd, align 4, !tbaa !10
  %20 = load ptr, ptr %segmentFreqs.addr, align 8, !tbaa !4
  %call11 = call { i64, i32 } @FASTCOVER_selectSegment(ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, ptr noundef %20)
  store { i64, i32 } %call11, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %segment, ptr align 8 %tmp.coerce, i64 12, i1 false)
  %score = getelementptr inbounds %struct.COVER_segment_t, ptr %segment, i32 0, i32 2
  %21 = load i32, ptr %score, align 4, !tbaa !49
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %for.body
  %22 = load i64, ptr %zeroScoreRun, align 8, !tbaa !8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %zeroScoreRun, align 8, !tbaa !8
  %cmp15 = icmp uge i64 %inc, 10
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %for.body
  store i64 0, ptr %zeroScoreRun, align 8, !tbaa !8
  %end = getelementptr inbounds %struct.COVER_segment_t, ptr %segment, i32 0, i32 1
  %23 = load i32, ptr %end, align 4, !tbaa !50
  %begin = getelementptr inbounds %struct.COVER_segment_t, ptr %segment, i32 0, i32 0
  %24 = load i32, ptr %begin, align 4, !tbaa !51
  %sub = sub i32 %23, %24
  %d = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %25 = load i32, ptr %d, align 4, !tbaa !20
  %add20 = add i32 %sub, %25
  %sub21 = sub i32 %add20, 1
  %conv22 = zext i32 %sub21 to i64
  %26 = load i64, ptr %tail, align 8, !tbaa !8
  %cmp23 = icmp ult i64 %conv22, %26
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end19
  %end25 = getelementptr inbounds %struct.COVER_segment_t, ptr %segment, i32 0, i32 1
  %27 = load i32, ptr %end25, align 4, !tbaa !50
  %begin26 = getelementptr inbounds %struct.COVER_segment_t, ptr %segment, i32 0, i32 0
  %28 = load i32, ptr %begin26, align 4, !tbaa !51
  %sub27 = sub i32 %27, %28
  %d28 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %29 = load i32, ptr %d28, align 4, !tbaa !20
  %add29 = add i32 %sub27, %29
  %sub30 = sub i32 %add29, 1
  %conv31 = zext i32 %sub30 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  %30 = load i64, ptr %tail, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv31, %cond.true ], [ %30, %cond.false ]
  store i64 %cond, ptr %segmentSize, align 8, !tbaa !8
  %31 = load i64, ptr %segmentSize, align 8, !tbaa !8
  %d32 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %32 = load i32, ptr %d32, align 4, !tbaa !20
  %conv33 = zext i32 %32 to i64
  %cmp34 = icmp ult i64 %31, %conv33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %cond.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %cond.end
  %33 = load i64, ptr %segmentSize, align 8, !tbaa !8
  %34 = load i64, ptr %tail, align 8, !tbaa !8
  %sub38 = sub i64 %34, %33
  store i64 %sub38, ptr %tail, align 8, !tbaa !8
  %35 = load ptr, ptr %dict, align 8, !tbaa !4
  %36 = load i64, ptr %tail, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %samples, align 8, !tbaa !40
  %begin39 = getelementptr inbounds %struct.COVER_segment_t, ptr %segment, i32 0, i32 0
  %39 = load i32, ptr %begin39, align 4, !tbaa !51
  %idx.ext = zext i32 %39 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %38, i64 %idx.ext
  %40 = load i64, ptr %segmentSize, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr40, i64 %40, i1 false)
  %41 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp41 = icmp sge i32 %41, 2
  br i1 %cmp41, label %if.then43, label %if.end58

if.then43:                                        ; preds = %if.end37
  %call44 = call i64 @clock() #10
  %42 = load i64, ptr @g_time, align 8, !tbaa !8
  %sub45 = sub nsw i64 %call44, %42
  %cmp46 = icmp sgt i64 %sub45, 150000
  br i1 %cmp46, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then43
  %43 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp48 = icmp sge i32 %43, 4
  br i1 %cmp48, label %if.then50, label %if.end57

if.then50:                                        ; preds = %lor.lhs.false, %if.then43
  %call51 = call i64 @clock() #10
  store i64 %call51, ptr @g_time, align 8, !tbaa !8
  %44 = load ptr, ptr @stderr, align 8, !tbaa !4
  %45 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %46 = load i64, ptr %tail, align 8, !tbaa !8
  %sub52 = sub i64 %45, %46
  %mul53 = mul i64 %sub52, 100
  %47 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %div = udiv i64 %mul53, %47
  %conv54 = trunc i64 %div to i32
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.13, i32 noundef %conv54)
  %48 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call56 = call i32 @fflush(ptr noundef %48)
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %lor.lhs.false
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end37
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then36, %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 12, ptr %segment) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %segmentSize) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %epochEnd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %epochBegin) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %49 = load i64, ptr %epoch, align 8, !tbaa !8
  %add62 = add i64 %49, 1
  %num63 = getelementptr inbounds %struct.COVER_epoch_info_t, ptr %epochs, i32 0, i32 0
  %50 = load i32, ptr %num63, align 4, !tbaa !47
  %conv64 = zext i32 %50 to i64
  %rem = urem i64 %add62, %conv64
  store i64 %rem, ptr %epoch, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %51 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp65 = icmp sge i32 %51, 2
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %for.end
  %52 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.14, ptr noundef @.str.15)
  %53 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call69 = call i32 @fflush(ptr noundef %53)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %for.end
  %54 = load i64, ptr %tail, align 8, !tbaa !8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoch) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeroScoreRun) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxZeroScoreRun) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %epochs) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict) #10
  ret i64 %54

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) #3

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_ctx_destroy(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %freqs = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %freqs, align 8, !tbaa !25
  call void @free(ptr noundef %2) #10
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %freqs1 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %3, i32 0, i32 7
  store ptr null, ptr %freqs1, align 8, !tbaa !25
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %offsets, align 8, !tbaa !46
  call void @free(ptr noundef %5) #10
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets2 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %6, i32 0, i32 1
  store ptr null, ptr %offsets2, align 8, !tbaa !46
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

; Function Attrs: nounwind uwtable
define i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %dictBuffer, i64 noundef %dictBufferCapacity, ptr noundef %samplesBuffer, ptr noundef %samplesSizes, i32 noundef %nbSamples, ptr noundef %parameters) #0 {
entry:
  %retval = alloca i64, align 8
  %dictBuffer.addr = alloca ptr, align 8
  %dictBufferCapacity.addr = alloca i64, align 8
  %samplesBuffer.addr = alloca ptr, align 8
  %samplesSizes.addr = alloca ptr, align 8
  %nbSamples.addr = alloca i32, align 4
  %parameters.addr = alloca ptr, align 8
  %coverParams = alloca %struct.ZDICT_cover_params_t, align 8
  %accelParams = alloca %struct.FASTCOVER_accel_t, align 4
  %nbThreads = alloca i32, align 4
  %splitPoint = alloca double, align 8
  %kMinD = alloca i32, align 4
  %kMaxD = alloca i32, align 4
  %kMinK = alloca i32, align 4
  %kMaxK = alloca i32, align 4
  %kSteps = alloca i32, align 4
  %kStepSize = alloca i32, align 4
  %kIterations = alloca i32, align 4
  %f = alloca i32, align 4
  %accel = alloca i32, align 4
  %shrinkDict = alloca i32, align 4
  %displayLevel = alloca i32, align 4
  %iteration = alloca i32, align 4
  %d62 = alloca i32, align 4
  %k63 = alloca i32, align 4
  %best = alloca %struct.COVER_best_s, align 8
  %pool = alloca ptr, align 8
  %warned = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ctx = alloca %struct.FASTCOVER_ctx_t, align 8
  %initVal = alloca i64, align 8
  %data = alloca ptr, align 8
  %dictSize = alloca i64, align 8
  %compressedSize238 = alloca i64, align 8
  store ptr %dictBuffer, ptr %dictBuffer.addr, align 8, !tbaa !4
  store i64 %dictBufferCapacity, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  store ptr %samplesBuffer, ptr %samplesBuffer.addr, align 8, !tbaa !4
  store ptr %samplesSizes, ptr %samplesSizes.addr, align 8, !tbaa !4
  store i32 %nbSamples, ptr %nbSamples.addr, align 4, !tbaa !10
  store ptr %parameters, ptr %parameters.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %coverParams) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %accelParams) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbThreads) #10
  %0 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %nbThreads1 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nbThreads1, align 8, !tbaa !33
  store i32 %1, ptr %nbThreads, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %splitPoint) #10
  %2 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %splitPoint2 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %2, i32 0, i32 5
  %3 = load double, ptr %splitPoint2, align 8, !tbaa !16
  %cmp = fcmp ole double %3, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %splitPoint3 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %4, i32 0, i32 5
  %5 = load double, ptr %splitPoint3, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 7.500000e-01, %cond.true ], [ %5, %cond.false ]
  store double %cond, ptr %splitPoint, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %kMinD) #10
  %6 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %d, align 4, !tbaa !30
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end8

cond.false6:                                      ; preds = %cond.end
  %8 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %d7 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %d7, align 4, !tbaa !30
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.true5
  %cond9 = phi i32 [ 6, %cond.true5 ], [ %9, %cond.false6 ]
  store i32 %cond9, ptr %kMinD, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %kMaxD) #10
  %10 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %d10 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %d10, align 4, !tbaa !30
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end8
  br label %cond.end15

cond.false13:                                     ; preds = %cond.end8
  %12 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %d14 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %d14, align 4, !tbaa !30
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi i32 [ 8, %cond.true12 ], [ %13, %cond.false13 ]
  store i32 %cond16, ptr %kMaxD, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %kMinK) #10
  %14 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %k = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %k, align 8, !tbaa !28
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end21

cond.false19:                                     ; preds = %cond.end15
  %16 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %k20 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %k20, align 8, !tbaa !28
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true18
  %cond22 = phi i32 [ 50, %cond.true18 ], [ %17, %cond.false19 ]
  store i32 %cond22, ptr %kMinK, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %kMaxK) #10
  %18 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %k23 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %k23, align 8, !tbaa !28
  %cmp24 = icmp eq i32 %19, 0
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end21
  br label %cond.end28

cond.false26:                                     ; preds = %cond.end21
  %20 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %k27 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %k27, align 8, !tbaa !28
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi i32 [ 2000, %cond.true25 ], [ %21, %cond.false26 ]
  store i32 %cond29, ptr %kMaxK, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %kSteps) #10
  %22 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %steps = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %steps, align 4, !tbaa !31
  %cmp30 = icmp eq i32 %23, 0
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.end28
  br label %cond.end34

cond.false32:                                     ; preds = %cond.end28
  %24 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %steps33 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %steps33, align 4, !tbaa !31
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true31
  %cond35 = phi i32 [ 40, %cond.true31 ], [ %25, %cond.false32 ]
  store i32 %cond35, ptr %kSteps, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %kStepSize) #10
  %26 = load i32, ptr %kMaxK, align 4, !tbaa !10
  %27 = load i32, ptr %kMinK, align 4, !tbaa !10
  %sub = sub i32 %26, %27
  %28 = load i32, ptr %kSteps, align 4, !tbaa !10
  %div = udiv i32 %sub, %28
  %cmp36 = icmp ugt i32 %div, 1
  br i1 %cmp36, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %cond.end34
  %29 = load i32, ptr %kMaxK, align 4, !tbaa !10
  %30 = load i32, ptr %kMinK, align 4, !tbaa !10
  %sub38 = sub i32 %29, %30
  %31 = load i32, ptr %kSteps, align 4, !tbaa !10
  %div39 = udiv i32 %sub38, %31
  br label %cond.end41

cond.false40:                                     ; preds = %cond.end34
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %cond.true37
  %cond42 = phi i32 [ %div39, %cond.true37 ], [ 1, %cond.false40 ]
  store i32 %cond42, ptr %kStepSize, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %kIterations) #10
  %32 = load i32, ptr %kMaxD, align 4, !tbaa !10
  %33 = load i32, ptr %kMinD, align 4, !tbaa !10
  %sub43 = sub i32 %32, %33
  %div44 = udiv i32 %sub43, 2
  %add = add i32 1, %div44
  %34 = load i32, ptr %kMaxK, align 4, !tbaa !10
  %35 = load i32, ptr %kMinK, align 4, !tbaa !10
  %sub45 = sub i32 %34, %35
  %36 = load i32, ptr %kStepSize, align 4, !tbaa !10
  %div46 = udiv i32 %sub45, %36
  %add47 = add i32 1, %div46
  %mul = mul i32 %add, %add47
  store i32 %mul, ptr %kIterations, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #10
  %37 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %f48 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %f48, align 8, !tbaa !17
  %cmp49 = icmp eq i32 %38, 0
  br i1 %cmp49, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %cond.end41
  br label %cond.end53

cond.false51:                                     ; preds = %cond.end41
  %39 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %f52 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %f52, align 8, !tbaa !17
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false51, %cond.true50
  %cond54 = phi i32 [ 20, %cond.true50 ], [ %40, %cond.false51 ]
  store i32 %cond54, ptr %f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %accel) #10
  %41 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %accel55 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %41, i32 0, i32 6
  %42 = load i32, ptr %accel55, align 8, !tbaa !18
  %cmp56 = icmp eq i32 %42, 0
  br i1 %cmp56, label %cond.true57, label %cond.false58

cond.true57:                                      ; preds = %cond.end53
  br label %cond.end60

cond.false58:                                     ; preds = %cond.end53
  %43 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %accel59 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %43, i32 0, i32 6
  %44 = load i32, ptr %accel59, align 8, !tbaa !18
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false58, %cond.true57
  %cond61 = phi i32 [ 1, %cond.true57 ], [ %44, %cond.false58 ]
  store i32 %cond61, ptr %accel, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %shrinkDict) #10
  store i32 0, ptr %shrinkDict, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %displayLevel) #10
  %45 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %zParams = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %45, i32 0, i32 9
  %notificationLevel = getelementptr inbounds %struct.ZDICT_params_t, ptr %zParams, i32 0, i32 1
  %46 = load i32, ptr %notificationLevel, align 4, !tbaa !12
  store i32 %46, ptr %displayLevel, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %iteration) #10
  store i32 1, ptr %iteration, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d62) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %k63) #10
  call void @llvm.lifetime.start.p0(i64 168, ptr %best) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #10
  store ptr null, ptr %pool, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %warned) #10
  store i32 0, ptr %warned, align 4, !tbaa !10
  %47 = load double, ptr %splitPoint, align 8, !tbaa !39
  %cmp64 = fcmp ole double %47, 0.000000e+00
  br i1 %cmp64, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end60
  %48 = load double, ptr %splitPoint, align 8, !tbaa !39
  %cmp65 = fcmp ogt double %48, 1.000000e+00
  br i1 %cmp65, label %if.then, label %if.end69

if.then:                                          ; preds = %lor.lhs.false, %cond.end60
  %49 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp66 = icmp sge i32 %49, 1
  br i1 %cmp66, label %if.then67, label %if.end

if.then67:                                        ; preds = %if.then
  %50 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.6)
  %51 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call68 = call i32 @fflush(ptr noundef %51)
  br label %if.end

if.end:                                           ; preds = %if.then67, %if.then
  store i64 -42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end69:                                         ; preds = %lor.lhs.false
  %52 = load i32, ptr %accel, align 4, !tbaa !10
  %cmp70 = icmp eq i32 %52, 0
  br i1 %cmp70, label %if.then73, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end69
  %53 = load i32, ptr %accel, align 4, !tbaa !10
  %cmp72 = icmp ugt i32 %53, 10
  br i1 %cmp72, label %if.then73, label %if.end79

if.then73:                                        ; preds = %lor.lhs.false71, %if.end69
  %54 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp74 = icmp sge i32 %54, 1
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.then73
  %55 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.7)
  %56 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call77 = call i32 @fflush(ptr noundef %56)
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then73
  store i64 -42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end79:                                         ; preds = %lor.lhs.false71
  %57 = load i32, ptr %kMinK, align 4, !tbaa !10
  %58 = load i32, ptr %kMaxD, align 4, !tbaa !10
  %cmp80 = icmp ult i32 %57, %58
  br i1 %cmp80, label %if.then83, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end79
  %59 = load i32, ptr %kMaxK, align 4, !tbaa !10
  %60 = load i32, ptr %kMinK, align 4, !tbaa !10
  %cmp82 = icmp ult i32 %59, %60
  br i1 %cmp82, label %if.then83, label %if.end89

if.then83:                                        ; preds = %lor.lhs.false81, %if.end79
  %61 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp84 = icmp sge i32 %61, 1
  br i1 %cmp84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.then83
  %62 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.8)
  %63 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call87 = call i32 @fflush(ptr noundef %63)
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.then83
  store i64 -42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end89:                                         ; preds = %lor.lhs.false81
  %64 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %cmp90 = icmp eq i32 %64, 0
  br i1 %cmp90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %if.end89
  %65 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp92 = icmp sge i32 %65, 1
  br i1 %cmp92, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.then91
  %66 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.1)
  %67 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call95 = call i32 @fflush(ptr noundef %67)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then91
  store i64 -72, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end97:                                         ; preds = %if.end89
  %68 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %cmp98 = icmp ult i64 %68, 256
  br i1 %cmp98, label %if.then99, label %if.end105

if.then99:                                        ; preds = %if.end97
  %69 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp100 = icmp sge i32 %69, 1
  br i1 %cmp100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.then99
  %70 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.2, i32 noundef 256)
  %71 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call103 = call i32 @fflush(ptr noundef %71)
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.then99
  store i64 -70, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end105:                                        ; preds = %if.end97
  %72 = load i32, ptr %nbThreads, align 4, !tbaa !10
  %cmp106 = icmp ugt i32 %72, 1
  br i1 %cmp106, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end105
  %73 = load i32, ptr %nbThreads, align 4, !tbaa !10
  %conv = zext i32 %73 to i64
  %call108 = call ptr @POOL_create(i64 noundef %conv, i64 noundef 1)
  store ptr %call108, ptr %pool, align 8, !tbaa !4
  %74 = load ptr, ptr %pool, align 8, !tbaa !4
  %tobool = icmp ne ptr %74, null
  br i1 %tobool, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.then107
  store i64 -64, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end110:                                        ; preds = %if.then107
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end105
  call void @COVER_best_init(ptr noundef %best)
  call void @llvm.memset.p0.i64(ptr align 8 %coverParams, i8 0, i64 48, i1 false)
  %75 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  call void @FASTCOVER_convertToCoverParams(ptr noundef byval(%struct.ZDICT_fastCover_params_t) align 8 %75, ptr noundef %coverParams)
  %76 = load i32, ptr %accel, align 4, !tbaa !10
  %idxprom = zext i32 %76 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.FASTCOVER_accel_t], ptr @FASTCOVER_defaultAccelParameters, i64 0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %accelParams, ptr align 8 %arrayidx, i64 8, i1 false), !tbaa.struct !19
  %77 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp112 = icmp eq i32 %77, 0
  br i1 %cmp112, label %cond.true114, label %cond.false115

cond.true114:                                     ; preds = %if.end111
  br label %cond.end117

cond.false115:                                    ; preds = %if.end111
  %78 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %sub116 = sub nsw i32 %78, 1
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false115, %cond.true114
  %cond118 = phi i32 [ 0, %cond.true114 ], [ %sub116, %cond.false115 ]
  store i32 %cond118, ptr @g_displayLevel, align 4, !tbaa !10
  %79 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp119 = icmp sge i32 %79, 2
  br i1 %cmp119, label %if.then121, label %if.end124

if.then121:                                       ; preds = %cond.end117
  %80 = load ptr, ptr @stderr, align 8, !tbaa !4
  %81 = load i32, ptr %kIterations, align 4, !tbaa !10
  %call122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str.9, i32 noundef %81)
  %82 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call123 = call i32 @fflush(ptr noundef %82)
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %cond.end117
  %83 = load i32, ptr %kMinD, align 4, !tbaa !10
  store i32 %83, ptr %d62, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc225, %if.end124
  %84 = load i32, ptr %d62, align 4, !tbaa !10
  %85 = load i32, ptr %kMaxD, align 4, !tbaa !10
  %cmp125 = icmp ule i32 %84, %85
  br i1 %cmp125, label %for.body, label %for.end227

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 80, ptr %ctx) #10
  %86 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp127 = icmp sge i32 %86, 3
  br i1 %cmp127, label %if.then129, label %if.end132

if.then129:                                       ; preds = %for.body
  %87 = load ptr, ptr @stderr, align 8, !tbaa !4
  %88 = load i32, ptr %d62, align 4, !tbaa !10
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.10, i32 noundef %88)
  %89 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call131 = call i32 @fflush(ptr noundef %89)
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %initVal) #10
  %90 = load ptr, ptr %samplesBuffer.addr, align 8, !tbaa !4
  %91 = load ptr, ptr %samplesSizes.addr, align 8, !tbaa !4
  %92 = load i32, ptr %nbSamples.addr, align 4, !tbaa !10
  %93 = load i32, ptr %d62, align 4, !tbaa !10
  %94 = load double, ptr %splitPoint, align 8, !tbaa !39
  %95 = load i32, ptr %f, align 4, !tbaa !10
  %96 = load i64, ptr %accelParams, align 4
  %call133 = call i64 @FASTCOVER_ctx_init(ptr noundef %ctx, ptr noundef %90, ptr noundef %91, i32 noundef %92, i32 noundef %93, double noundef %94, i32 noundef %95, i64 %96)
  store i64 %call133, ptr %initVal, align 8, !tbaa !8
  %97 = load i64, ptr %initVal, align 8, !tbaa !8
  %call134 = call i32 @ERR_isError(i64 noundef %97)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.end143

if.then136:                                       ; preds = %if.end132
  %98 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp137 = icmp sge i32 %98, 1
  br i1 %cmp137, label %if.then139, label %if.end142

if.then139:                                       ; preds = %if.then136
  %99 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @.str.3)
  %100 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call141 = call i32 @fflush(ptr noundef %100)
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.then136
  call void @COVER_best_destroy(ptr noundef %best)
  %101 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @POOL_free(ptr noundef %101)
  %102 = load i64, ptr %initVal, align 8, !tbaa !8
  store i64 %102, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end143:                                        ; preds = %if.end132
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.end142
  call void @llvm.lifetime.end.p0(i64 8, ptr %initVal) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup222 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %103 = load i32, ptr %warned, align 4, !tbaa !10
  %tobool144 = icmp ne i32 %103, 0
  br i1 %tobool144, label %if.end146, label %if.then145

if.then145:                                       ; preds = %cleanup.cont
  %104 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %nbDmers = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %ctx, i32 0, i32 6
  %105 = load i64, ptr %nbDmers, align 8, !tbaa !22
  %106 = load i32, ptr %displayLevel, align 4, !tbaa !10
  call void @COVER_warnOnSmallCorpus(i64 noundef %104, i64 noundef %105, i32 noundef %106)
  store i32 1, ptr %warned, align 4, !tbaa !10
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %cleanup.cont
  %107 = load i32, ptr %kMinK, align 4, !tbaa !10
  store i32 %107, ptr %k63, align 4, !tbaa !10
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc, %if.end146
  %108 = load i32, ptr %k63, align 4, !tbaa !10
  %109 = load i32, ptr %kMaxK, align 4, !tbaa !10
  %cmp148 = icmp ule i32 %108, %109
  br i1 %cmp148, label %for.body150, label %for.end

for.body150:                                      ; preds = %for.cond147
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10
  %call151 = call noalias ptr @malloc(i64 noundef 72) #12
  store ptr %call151, ptr %data, align 8, !tbaa !4
  %110 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp152 = icmp sge i32 %110, 3
  br i1 %cmp152, label %if.then154, label %if.end157

if.then154:                                       ; preds = %for.body150
  %111 = load ptr, ptr @stderr, align 8, !tbaa !4
  %112 = load i32, ptr %k63, align 4, !tbaa !10
  %call155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.11, i32 noundef %112)
  %113 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call156 = call i32 @fflush(ptr noundef %113)
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %for.body150
  %114 = load ptr, ptr %data, align 8, !tbaa !4
  %tobool158 = icmp ne ptr %114, null
  br i1 %tobool158, label %if.end166, label %if.then159

if.then159:                                       ; preds = %if.end157
  %115 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp160 = icmp sge i32 %115, 1
  br i1 %cmp160, label %if.then162, label %if.end165

if.then162:                                       ; preds = %if.then159
  %116 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.12)
  %117 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call164 = call i32 @fflush(ptr noundef %117)
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %if.then159
  call void @COVER_best_destroy(ptr noundef %best)
  call void @FASTCOVER_ctx_destroy(ptr noundef %ctx)
  %118 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @POOL_free(ptr noundef %118)
  store i64 -64, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup218

if.end166:                                        ; preds = %if.end157
  %119 = load ptr, ptr %data, align 8, !tbaa !4
  %ctx167 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %119, i32 0, i32 0
  store ptr %ctx, ptr %ctx167, align 8, !tbaa !52
  %120 = load ptr, ptr %data, align 8, !tbaa !4
  %best168 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %120, i32 0, i32 1
  store ptr %best, ptr %best168, align 8, !tbaa !54
  %121 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %122 = load ptr, ptr %data, align 8, !tbaa !4
  %dictBufferCapacity169 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %122, i32 0, i32 2
  store i64 %121, ptr %dictBufferCapacity169, align 8, !tbaa !55
  %123 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters170 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %123, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %parameters170, ptr align 8 %coverParams, i64 48, i1 false), !tbaa.struct !56
  %124 = load i32, ptr %k63, align 4, !tbaa !10
  %125 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters171 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %125, i32 0, i32 3
  %k172 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters171, i32 0, i32 0
  store i32 %124, ptr %k172, align 8, !tbaa !57
  %126 = load i32, ptr %d62, align 4, !tbaa !10
  %127 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters173 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %127, i32 0, i32 3
  %d174 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters173, i32 0, i32 1
  store i32 %126, ptr %d174, align 4, !tbaa !58
  %128 = load double, ptr %splitPoint, align 8, !tbaa !39
  %129 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters175 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %129, i32 0, i32 3
  %splitPoint176 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters175, i32 0, i32 4
  store double %128, ptr %splitPoint176, align 8, !tbaa !59
  %130 = load i32, ptr %kSteps, align 4, !tbaa !10
  %131 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters177 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %131, i32 0, i32 3
  %steps178 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters177, i32 0, i32 2
  store i32 %130, ptr %steps178, align 8, !tbaa !60
  %132 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters179 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %132, i32 0, i32 3
  %shrinkDict180 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters179, i32 0, i32 5
  store i32 0, ptr %shrinkDict180, align 8, !tbaa !61
  %133 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %134 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters181 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %134, i32 0, i32 3
  %zParams182 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters181, i32 0, i32 7
  %notificationLevel183 = getelementptr inbounds %struct.ZDICT_params_t, ptr %zParams182, i32 0, i32 1
  store i32 %133, ptr %notificationLevel183, align 4, !tbaa !62
  %135 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters184 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %135, i32 0, i32 3
  %136 = load i64, ptr %dictBufferCapacity.addr, align 8, !tbaa !8
  %137 = load ptr, ptr %data, align 8, !tbaa !4
  %ctx185 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %ctx185, align 8, !tbaa !52
  %f186 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %138, i32 0, i32 9
  %139 = load i32, ptr %f186, align 4, !tbaa !45
  %140 = load i32, ptr %accel, align 4, !tbaa !10
  %call187 = call i32 @FASTCOVER_checkParameters(ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters184, i64 noundef %136, i32 noundef %139, i32 noundef %140)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.end196, label %if.then189

if.then189:                                       ; preds = %if.end166
  %141 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp190 = icmp sge i32 %141, 1
  br i1 %cmp190, label %if.then192, label %if.end195

if.then192:                                       ; preds = %if.then189
  %142 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str)
  %143 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call194 = call i32 @fflush(ptr noundef %143)
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.then189
  %144 = load ptr, ptr %data, align 8, !tbaa !4
  call void @free(ptr noundef %144) #10
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup218

if.end196:                                        ; preds = %if.end166
  call void @COVER_best_start(ptr noundef %best)
  %145 = load ptr, ptr %pool, align 8, !tbaa !4
  %tobool197 = icmp ne ptr %145, null
  br i1 %tobool197, label %if.then198, label %if.else

if.then198:                                       ; preds = %if.end196
  %146 = load ptr, ptr %pool, align 8, !tbaa !4
  %147 = load ptr, ptr %data, align 8, !tbaa !4
  call void @POOL_add(ptr noundef %146, ptr noundef @FASTCOVER_tryParameters, ptr noundef %147)
  br label %if.end199

if.else:                                          ; preds = %if.end196
  %148 = load ptr, ptr %data, align 8, !tbaa !4
  call void @FASTCOVER_tryParameters(ptr noundef %148)
  br label %if.end199

if.end199:                                        ; preds = %if.else, %if.then198
  %149 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp200 = icmp sge i32 %149, 2
  br i1 %cmp200, label %if.then202, label %if.end217

if.then202:                                       ; preds = %if.end199
  %call203 = call i64 @clock() #10
  %150 = load i64, ptr @g_time, align 8, !tbaa !8
  %sub204 = sub nsw i64 %call203, %150
  %cmp205 = icmp sgt i64 %sub204, 150000
  br i1 %cmp205, label %if.then210, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %if.then202
  %151 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp208 = icmp sge i32 %151, 4
  br i1 %cmp208, label %if.then210, label %if.end216

if.then210:                                       ; preds = %lor.lhs.false207, %if.then202
  %call211 = call i64 @clock() #10
  store i64 %call211, ptr @g_time, align 8, !tbaa !8
  %152 = load ptr, ptr @stderr, align 8, !tbaa !4
  %153 = load i32, ptr %iteration, align 4, !tbaa !10
  %mul212 = mul i32 %153, 100
  %154 = load i32, ptr %kIterations, align 4, !tbaa !10
  %div213 = udiv i32 %mul212, %154
  %call214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef @.str.13, i32 noundef %div213)
  %155 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call215 = call i32 @fflush(ptr noundef %155)
  br label %if.end216

if.end216:                                        ; preds = %if.then210, %lor.lhs.false207
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.end199
  %156 = load i32, ptr %iteration, align 4, !tbaa !10
  %inc = add i32 %156, 1
  store i32 %inc, ptr %iteration, align 4, !tbaa !10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup218

cleanup218:                                       ; preds = %if.end217, %if.end195, %if.end165
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10
  %cleanup.dest219 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest219, label %cleanup222 [
    i32 0, label %cleanup.cont220
    i32 7, label %for.inc
  ]

cleanup.cont220:                                  ; preds = %cleanup218
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont220, %cleanup218
  %157 = load i32, ptr %kStepSize, align 4, !tbaa !10
  %158 = load i32, ptr %k63, align 4, !tbaa !10
  %add221 = add i32 %158, %157
  store i32 %add221, ptr %k63, align 4, !tbaa !10
  br label %for.cond147

for.end:                                          ; preds = %for.cond147
  call void @COVER_best_wait(ptr noundef %best)
  call void @FASTCOVER_ctx_destroy(ptr noundef %ctx)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

cleanup222:                                       ; preds = %for.end, %cleanup218, %cleanup
  call void @llvm.lifetime.end.p0(i64 80, ptr %ctx) #10
  %cleanup.dest223 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest223, label %cleanup244 [
    i32 0, label %cleanup.cont224
  ]

cleanup.cont224:                                  ; preds = %cleanup222
  br label %for.inc225

for.inc225:                                       ; preds = %cleanup.cont224
  %159 = load i32, ptr %d62, align 4, !tbaa !10
  %add226 = add i32 %159, 2
  store i32 %add226, ptr %d62, align 4, !tbaa !10
  br label %for.cond

for.end227:                                       ; preds = %for.cond
  %160 = load i32, ptr %displayLevel, align 4, !tbaa !10
  %cmp228 = icmp sge i32 %160, 2
  br i1 %cmp228, label %if.then230, label %if.end233

if.then230:                                       ; preds = %for.end227
  %161 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.14, ptr noundef @.str.15)
  %162 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call232 = call i32 @fflush(ptr noundef %162)
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %for.end227
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictSize) #10
  %dictSize234 = getelementptr inbounds %struct.COVER_best_s, ptr %best, i32 0, i32 4
  %163 = load i64, ptr %dictSize234, align 8, !tbaa !63
  store i64 %163, ptr %dictSize, align 8, !tbaa !8
  %compressedSize = getelementptr inbounds %struct.COVER_best_s, ptr %best, i32 0, i32 6
  %164 = load i64, ptr %compressedSize, align 8, !tbaa !65
  %call235 = call i32 @ERR_isError(i64 noundef %164)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then237, label %if.end241

if.then237:                                       ; preds = %if.end233
  call void @llvm.lifetime.start.p0(i64 8, ptr %compressedSize238) #10
  %compressedSize239 = getelementptr inbounds %struct.COVER_best_s, ptr %best, i32 0, i32 6
  %165 = load i64, ptr %compressedSize239, align 8, !tbaa !65
  store i64 %165, ptr %compressedSize238, align 8, !tbaa !8
  call void @COVER_best_destroy(ptr noundef %best)
  %166 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @POOL_free(ptr noundef %166)
  %167 = load i64, ptr %compressedSize238, align 8, !tbaa !8
  store i64 %167, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %compressedSize238) #10
  br label %cleanup243

if.end241:                                        ; preds = %if.end233
  %parameters242 = getelementptr inbounds %struct.COVER_best_s, ptr %best, i32 0, i32 5
  %168 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %169 = load i32, ptr %f, align 4, !tbaa !10
  %170 = load i32, ptr %accel, align 4, !tbaa !10
  call void @FASTCOVER_convertToFastCoverParams(ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters242, ptr noundef %168, i32 noundef %169, i32 noundef %170)
  %171 = load ptr, ptr %dictBuffer.addr, align 8, !tbaa !4
  %dict = getelementptr inbounds %struct.COVER_best_s, ptr %best, i32 0, i32 3
  %172 = load ptr, ptr %dict, align 8, !tbaa !66
  %173 = load i64, ptr %dictSize, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %172, i64 %173, i1 false)
  call void @COVER_best_destroy(ptr noundef %best)
  %174 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @POOL_free(ptr noundef %174)
  %175 = load i64, ptr %dictSize, align 8, !tbaa !8
  store i64 %175, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup243

cleanup243:                                       ; preds = %if.end241, %if.then237
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictSize) #10
  br label %cleanup244

cleanup244:                                       ; preds = %cleanup243, %cleanup222, %if.then109, %if.end104, %if.end96, %if.end88, %if.end78, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %warned) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr %best) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k63) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d62) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %iteration) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %displayLevel) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %shrinkDict) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %accel) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kIterations) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kStepSize) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kSteps) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kMaxK) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kMinK) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kMaxD) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %kMinD) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %splitPoint) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbThreads) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %accelParams) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr %coverParams) #10
  %176 = load i64, ptr %retval, align 8
  ret i64 %176
}

declare ptr @POOL_create(i64 noundef, i64 noundef) #3

declare void @COVER_best_init(ptr noundef) #3

declare void @COVER_best_destroy(ptr noundef) #3

declare void @POOL_free(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

declare void @COVER_best_start(ptr noundef) #3

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_tryParameters(ptr noundef %opaque) #0 {
entry:
  %opaque.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %parameters = alloca %struct.ZDICT_cover_params_t, align 8
  %dictBufferCapacity = alloca i64, align 8
  %totalCompressedSize = alloca i64, align 8
  %segmentFreqs = alloca ptr, align 8
  %dict = alloca ptr, align 8
  %selection = alloca %struct.COVER_dictSelection, align 8
  %freqs = alloca ptr, align 8
  %tail = alloca i64, align 8
  %nbFinalizeSamples = alloca i32, align 4
  %tmp = alloca %struct.COVER_dictSelection, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %opaque, ptr %opaque.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10
  %0 = load ptr, ptr %opaque.addr, align 8, !tbaa !4
  store ptr %0, ptr %data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10
  %1 = load ptr, ptr %data, align 8, !tbaa !4
  %ctx1 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %ctx1, align 8, !tbaa !52
  store ptr %2, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %parameters) #10
  %3 = load ptr, ptr %data, align 8, !tbaa !4
  %parameters2 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %3, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %parameters, ptr align 8 %parameters2, i64 48, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictBufferCapacity) #10
  %4 = load ptr, ptr %data, align 8, !tbaa !4
  %dictBufferCapacity3 = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %dictBufferCapacity3, align 8, !tbaa !55
  store i64 %5, ptr %dictBufferCapacity, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %totalCompressedSize) #10
  store i64 -1, ptr %totalCompressedSize, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %segmentFreqs) #10
  %6 = load ptr, ptr %ctx, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %f, align 4, !tbaa !45
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 1, %sh_prom
  %call = call noalias ptr @calloc(i64 noundef %shl, i64 noundef 2) #11
  store ptr %call, ptr %segmentFreqs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict) #10
  %8 = load i64, ptr %dictBufferCapacity, align 8, !tbaa !8
  %call4 = call noalias ptr @malloc(i64 noundef %8) #12
  store ptr %call4, ptr %dict, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %selection) #10
  call void @COVER_dictSelectionError(ptr sret(%struct.COVER_dictSelection) align 8 %selection, i64 noundef -1)
  call void @llvm.lifetime.start.p0(i64 8, ptr %freqs) #10
  %9 = load ptr, ptr %ctx, align 8, !tbaa !4
  %f5 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %f5, align 4, !tbaa !45
  %sh_prom6 = zext i32 %10 to i64
  %shl7 = shl i64 1, %sh_prom6
  %mul = mul i64 %shl7, 4
  %call8 = call noalias ptr @malloc(i64 noundef %mul) #12
  store ptr %call8, ptr %freqs, align 8, !tbaa !4
  %11 = load ptr, ptr %segmentFreqs, align 8, !tbaa !4
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = load ptr, ptr %dict, align 8, !tbaa !4
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %lor.lhs.false10, label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %13 = load ptr, ptr %freqs, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %13, null
  br i1 %tobool11, label %if.end15, label %if.then

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false, %entry
  %14 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp = icmp sge i32 %14, 1
  br i1 %cmp, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %15 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.25)
  %16 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call14 = call i32 @fflush(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  br label %_cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  %17 = load ptr, ptr %freqs, align 8, !tbaa !4
  %18 = load ptr, ptr %ctx, align 8, !tbaa !4
  %freqs16 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %freqs16, align 8, !tbaa !25
  %20 = load ptr, ptr %ctx, align 8, !tbaa !4
  %f17 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %20, i32 0, i32 9
  %21 = load i32, ptr %f17, align 4, !tbaa !45
  %sh_prom18 = zext i32 %21 to i64
  %shl19 = shl i64 1, %sh_prom18
  %mul20 = mul i64 %shl19, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %19, i64 %mul20, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #10
  %22 = load ptr, ptr %ctx, align 8, !tbaa !4
  %23 = load ptr, ptr %freqs, align 8, !tbaa !4
  %24 = load ptr, ptr %dict, align 8, !tbaa !4
  %25 = load i64, ptr %dictBufferCapacity, align 8, !tbaa !8
  %26 = load ptr, ptr %segmentFreqs, align 8, !tbaa !4
  %call21 = call i64 @FASTCOVER_buildDictionary(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, ptr noundef %26)
  store i64 %call21, ptr %tail, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbFinalizeSamples) #10
  %27 = load ptr, ptr %ctx, align 8, !tbaa !4
  %nbTrainSamples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %nbTrainSamples, align 8, !tbaa !26
  %29 = load ptr, ptr %ctx, align 8, !tbaa !4
  %accelParams = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %29, i32 0, i32 10
  %finalize = getelementptr inbounds %struct.FASTCOVER_accel_t, ptr %accelParams, i32 0, i32 0
  %30 = load i32, ptr %finalize, align 8, !tbaa !27
  %conv = zext i32 %30 to i64
  %mul22 = mul i64 %28, %conv
  %div = udiv i64 %mul22, 100
  %conv23 = trunc i64 %div to i32
  store i32 %conv23, ptr %nbFinalizeSamples, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #10
  %31 = load ptr, ptr %dict, align 8, !tbaa !4
  %32 = load i64, ptr %tail, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %32
  %33 = load i64, ptr %dictBufferCapacity, align 8, !tbaa !8
  %34 = load i64, ptr %dictBufferCapacity, align 8, !tbaa !8
  %35 = load i64, ptr %tail, align 8, !tbaa !8
  %sub = sub i64 %34, %35
  %36 = load ptr, ptr %ctx, align 8, !tbaa !4
  %samples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %samples, align 8, !tbaa !40
  %38 = load ptr, ptr %ctx, align 8, !tbaa !4
  %samplesSizes = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %samplesSizes, align 8, !tbaa !41
  %40 = load i32, ptr %nbFinalizeSamples, align 4, !tbaa !10
  %41 = load ptr, ptr %ctx, align 8, !tbaa !4
  %nbTrainSamples24 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %41, i32 0, i32 4
  %42 = load i64, ptr %nbTrainSamples24, align 8, !tbaa !26
  %43 = load ptr, ptr %ctx, align 8, !tbaa !4
  %nbSamples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %43, i32 0, i32 3
  %44 = load i64, ptr %nbSamples, align 8, !tbaa !42
  %45 = load ptr, ptr %ctx, align 8, !tbaa !4
  %offsets = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %offsets, align 8, !tbaa !46
  %47 = load i64, ptr %totalCompressedSize, align 8, !tbaa !8
  call void @COVER_selectDict(ptr sret(%struct.COVER_dictSelection) align 8 %tmp, ptr noundef %add.ptr, i64 noundef %33, i64 noundef %sub, ptr noundef %37, ptr noundef %39, i32 noundef %40, i64 noundef %42, i64 noundef %44, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, ptr noundef %46, i64 noundef %47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %selection, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #10
  %call25 = call i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8 %selection)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end15
  %48 = load i32, ptr @g_displayLevel, align 4, !tbaa !10
  %cmp28 = icmp sge i32 %48, 1
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.then27
  %49 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.26)
  %50 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call32 = call i32 @fflush(ptr noundef %50)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then27
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end34
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbFinalizeSamples) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %_cleanup
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %_cleanup

_cleanup:                                         ; preds = %cleanup.cont, %cleanup, %if.end
  %51 = load ptr, ptr %dict, align 8, !tbaa !4
  call void @free(ptr noundef %51) #10
  %52 = load ptr, ptr %data, align 8, !tbaa !4
  %best = getelementptr inbounds %struct.FASTCOVER_tryParameters_data_s, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %best, align 8, !tbaa !54
  call void @COVER_best_finish(ptr noundef %53, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, ptr noundef byval(%struct.COVER_dictSelection) align 8 %selection)
  %54 = load ptr, ptr %data, align 8, !tbaa !4
  call void @free(ptr noundef %54) #10
  %55 = load ptr, ptr %segmentFreqs, align 8, !tbaa !4
  call void @free(ptr noundef %55) #10
  call void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8 %selection)
  %56 = load ptr, ptr %freqs, align 8, !tbaa !4
  call void @free(ptr noundef %56) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %freqs) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %selection) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %segmentFreqs) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %totalCompressedSize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictBufferCapacity) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr %parameters) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i64 @clock() #6

declare void @COVER_best_wait(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_convertToFastCoverParams(ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %coverParams, ptr noundef %fastCoverParams, i32 noundef %f, i32 noundef %accel) #0 {
entry:
  %fastCoverParams.addr = alloca ptr, align 8
  %f.addr = alloca i32, align 4
  %accel.addr = alloca i32, align 4
  store ptr %fastCoverParams, ptr %fastCoverParams.addr, align 8, !tbaa !4
  store i32 %f, ptr %f.addr, align 4, !tbaa !10
  store i32 %accel, ptr %accel.addr, align 4, !tbaa !10
  %k = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 0
  %0 = load i32, ptr %k, align 8, !tbaa !29
  %1 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %k1 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %1, i32 0, i32 0
  store i32 %0, ptr %k1, align 8, !tbaa !28
  %d = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 1
  %2 = load i32, ptr %d, align 4, !tbaa !20
  %3 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %3, i32 0, i32 1
  store i32 %2, ptr %d2, align 4, !tbaa !30
  %steps = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 2
  %4 = load i32, ptr %steps, align 8, !tbaa !32
  %5 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %steps3 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %5, i32 0, i32 3
  store i32 %4, ptr %steps3, align 4, !tbaa !31
  %nbThreads = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 3
  %6 = load i32, ptr %nbThreads, align 4, !tbaa !34
  %7 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %nbThreads4 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %7, i32 0, i32 4
  store i32 %6, ptr %nbThreads4, align 8, !tbaa !33
  %splitPoint = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 4
  %8 = load double, ptr %splitPoint, align 8, !tbaa !35
  %9 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %splitPoint5 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %9, i32 0, i32 5
  store double %8, ptr %splitPoint5, align 8, !tbaa !16
  %10 = load i32, ptr %f.addr, align 4, !tbaa !10
  %11 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %f6 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %11, i32 0, i32 2
  store i32 %10, ptr %f6, align 8, !tbaa !17
  %12 = load i32, ptr %accel.addr, align 4, !tbaa !10
  %13 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %accel7 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %13, i32 0, i32 6
  store i32 %12, ptr %accel7, align 8, !tbaa !18
  %14 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %zParams = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %14, i32 0, i32 9
  %zParams8 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %zParams, ptr align 8 %zParams8, i64 12, i1 false), !tbaa.struct !36
  %shrinkDict = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %coverParams, i32 0, i32 5
  %15 = load i32, ptr %shrinkDict, align 8, !tbaa !38
  %16 = load ptr, ptr %fastCoverParams.addr, align 8, !tbaa !4
  %shrinkDict9 = getelementptr inbounds %struct.ZDICT_fastCover_params_t, ptr %16, i32 0, i32 7
  store i32 %15, ptr %shrinkDict9, align 4, !tbaa !37
  ret void
}

declare i64 @COVER_sum(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_computeFrequency(ptr noundef %freqs, ptr noundef %ctx) #0 {
entry:
  %freqs.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %f = alloca i32, align 4
  %d = alloca i32, align 4
  %skip = alloca i32, align 4
  %readLength = alloca i32, align 4
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %currSampleEnd = alloca i64, align 8
  %dmerIndex = alloca i64, align 8
  store ptr %freqs, ptr %freqs.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #10
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %f1 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %f1, align 4, !tbaa !45
  store i32 %1, ptr %f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %d2, align 8, !tbaa !44
  store i32 %3, ptr %d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %skip) #10
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %accelParams = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %4, i32 0, i32 10
  %skip3 = getelementptr inbounds %struct.FASTCOVER_accel_t, ptr %accelParams, i32 0, i32 1
  %5 = load i32, ptr %skip3, align 4, !tbaa !68
  store i32 %5, ptr %skip, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %readLength) #10
  %6 = load i32, ptr %d, align 4, !tbaa !10
  %cmp = icmp ugt i32 %6, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %d, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 8, %cond.false ]
  store i32 %cond, ptr %readLength, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i64, ptr %i, align 8, !tbaa !8
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %nbTrainSamples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %nbTrainSamples, align 8, !tbaa !26
  %cmp4 = icmp ult i64 %8, %10
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %offsets, align 8, !tbaa !46
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %14, ptr %start, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %currSampleEnd) #10
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %offsets5 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %offsets5, align 8, !tbaa !46
  %17 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %17, 1
  %arrayidx6 = getelementptr inbounds i64, ptr %16, i64 %add
  %18 = load i64, ptr %arrayidx6, align 8, !tbaa !8
  store i64 %18, ptr %currSampleEnd, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %19 = load i64, ptr %start, align 8, !tbaa !8
  %20 = load i32, ptr %readLength, align 4, !tbaa !10
  %conv = zext i32 %20 to i64
  %add7 = add i64 %19, %conv
  %21 = load i64, ptr %currSampleEnd, align 8, !tbaa !8
  %cmp8 = icmp ule i64 %add7, %21
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dmerIndex) #10
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %samples, align 8, !tbaa !40
  %24 = load i64, ptr %start, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %24
  %25 = load i32, ptr %f, align 4, !tbaa !10
  %26 = load i32, ptr %d, align 4, !tbaa !10
  %call = call i64 @FASTCOVER_hashPtrToIndex(ptr noundef %add.ptr, i32 noundef %25, i32 noundef %26)
  store i64 %call, ptr %dmerIndex, align 8, !tbaa !8
  %27 = load ptr, ptr %freqs.addr, align 8, !tbaa !4
  %28 = load i64, ptr %dmerIndex, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds i32, ptr %27, i64 %28
  %29 = load i32, ptr %arrayidx10, align 4, !tbaa !10
  %inc = add i32 %29, 1
  store i32 %inc, ptr %arrayidx10, align 4, !tbaa !10
  %30 = load i64, ptr %start, align 8, !tbaa !8
  %31 = load i32, ptr %skip, align 4, !tbaa !10
  %conv11 = zext i32 %31 to i64
  %add12 = add i64 %30, %conv11
  %add13 = add i64 %add12, 1
  store i64 %add13, ptr %start, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dmerIndex) #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %currSampleEnd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %32 = load i64, ptr %i, align 8, !tbaa !8
  %inc14 = add i64 %32, 1
  store i64 %inc14, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %readLength) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %skip) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @FASTCOVER_hashPtrToIndex(ptr noundef %p, i32 noundef %f, i32 noundef %d) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %f.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %f, ptr %f.addr, align 4, !tbaa !10
  store i32 %d, ptr %d.addr, align 4, !tbaa !10
  %0 = load i32, ptr %d.addr, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load i32, ptr %f.addr, align 4, !tbaa !10
  %call = call i64 @ZSTD_hash6Ptr(ptr noundef %1, i32 noundef %2)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load i32, ptr %f.addr, align 4, !tbaa !10
  %call1 = call i64 @ZSTD_hash8Ptr(ptr noundef %3, i32 noundef %4)
  store i64 %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTD_hash6Ptr(ptr noundef %p, i32 noundef %h) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %h.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %h, ptr %h.addr, align 4, !tbaa !10
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call = call i64 @MEM_readLE64(ptr noundef %0)
  %1 = load i32, ptr %h.addr, align 4, !tbaa !10
  %call1 = call i64 @ZSTD_hash6(i64 noundef %call, i32 noundef %1)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTD_hash8Ptr(ptr noundef %p, i32 noundef %h) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %h.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %h, ptr %h.addr, align 4, !tbaa !10
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call = call i64 @MEM_readLE64(ptr noundef %0)
  %1 = load i32, ptr %h.addr, align 4, !tbaa !10
  %call1 = call i64 @ZSTD_hash8(i64 noundef %call, i32 noundef %1)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTD_hash6(i64 noundef %u, i32 noundef %h) #0 {
entry:
  %u.addr = alloca i64, align 8
  %h.addr = alloca i32, align 4
  store i64 %u, ptr %u.addr, align 8, !tbaa !8
  store i32 %h, ptr %h.addr, align 4, !tbaa !10
  %0 = load i64, ptr %u.addr, align 8, !tbaa !8
  %shl = shl i64 %0, 16
  %mul = mul i64 %shl, 227718039650203
  %1 = load i32, ptr %h.addr, align 4, !tbaa !10
  %sub = sub i32 64, %1
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %mul, %sh_prom
  ret i64 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MEM_readLE64(ptr noundef %memPtr) #8 {
entry:
  %retval = alloca i64, align 8
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8, !tbaa !4
  %call = call i32 @MEM_isLittleEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %memPtr.addr, align 8, !tbaa !4
  %call1 = call i64 @MEM_read64(ptr noundef %0)
  store i64 %call1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %memPtr.addr, align 8, !tbaa !4
  %call2 = call i64 @MEM_read64(ptr noundef %1)
  %call3 = call i64 @MEM_swap64(i64 noundef %call2)
  store i64 %call3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, ptr %retval, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MEM_isLittleEndian() #8 {
entry:
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MEM_read64(ptr noundef %ptr) #8 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.unalign64, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %v, align 1, !tbaa !69
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @MEM_swap64(i64 noundef %in) #8 {
entry:
  %in.addr = alloca i64, align 8
  store i64 %in, ptr %in.addr, align 8, !tbaa !8
  %0 = load i64, ptr %in.addr, align 8, !tbaa !8
  %1 = call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nounwind uwtable
define internal i64 @ZSTD_hash8(i64 noundef %u, i32 noundef %h) #0 {
entry:
  %u.addr = alloca i64, align 8
  %h.addr = alloca i32, align 4
  store i64 %u, ptr %u.addr, align 8, !tbaa !8
  store i32 %h, ptr %h.addr, align 4, !tbaa !10
  %0 = load i64, ptr %u.addr, align 8, !tbaa !8
  %mul = mul i64 %0, -3523014627327384477
  %1 = load i32, ptr %h.addr, align 4, !tbaa !10
  %sub = sub i32 64, %1
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %mul, %sh_prom
  ret i64 %shr
}

declare i64 @COVER_computeEpochs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal { i64, i32 } @FASTCOVER_selectSegment(ptr noundef %ctx, ptr noundef %freqs, i32 noundef %begin, i32 noundef %end, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8 %parameters, ptr noundef %segmentFreqs) #0 {
entry:
  %retval = alloca %struct.COVER_segment_t, align 4
  %ctx.addr = alloca ptr, align 8
  %freqs.addr = alloca ptr, align 8
  %begin.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %segmentFreqs.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  %f = alloca i32, align 4
  %dmersInK = alloca i32, align 4
  %activeSegment = alloca %struct.COVER_segment_t, align 4
  %idx = alloca i64, align 8
  %delIndex = alloca i64, align 8
  %delIndex58 = alloca i64, align 8
  %pos = alloca i32, align 4
  %i = alloca i64, align 8
  %retval.coerce = alloca { i64, i32 }, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %freqs, ptr %freqs.addr, align 8, !tbaa !4
  store i32 %begin, ptr %begin.addr, align 4, !tbaa !10
  store i32 %end, ptr %end.addr, align 4, !tbaa !10
  store ptr %segmentFreqs, ptr %segmentFreqs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  %k1 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 0
  %0 = load i32, ptr %k1, align 8, !tbaa !29
  store i32 %0, ptr %k, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  %d2 = getelementptr inbounds %struct.ZDICT_cover_params_t, ptr %parameters, i32 0, i32 1
  %1 = load i32, ptr %d2, align 4, !tbaa !20
  store i32 %1, ptr %d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #10
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %f3 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %f3, align 4, !tbaa !45
  store i32 %3, ptr %f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %dmersInK) #10
  %4 = load i32, ptr %k, align 4, !tbaa !10
  %5 = load i32, ptr %d, align 4, !tbaa !10
  %sub = sub i32 %4, %5
  %add = add i32 %sub, 1
  store i32 %add, ptr %dmersInK, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr align 4 %retval, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr %activeSegment) #10
  %6 = load i32, ptr %begin.addr, align 4, !tbaa !10
  %begin4 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  store i32 %6, ptr %begin4, align 4, !tbaa !51
  %7 = load i32, ptr %begin.addr, align 4, !tbaa !10
  %end5 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 1
  store i32 %7, ptr %end5, align 4, !tbaa !50
  %score = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 2
  store i32 0, ptr %score, align 4, !tbaa !49
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %entry
  %end6 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 1
  %8 = load i32, ptr %end6, align 4, !tbaa !50
  %9 = load i32, ptr %end.addr, align 4, !tbaa !10
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #10
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %samples, align 8, !tbaa !40
  %end7 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 1
  %12 = load i32, ptr %end7, align 4, !tbaa !50
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %13 = load i32, ptr %f, align 4, !tbaa !10
  %14 = load i32, ptr %d, align 4, !tbaa !10
  %call = call i64 @FASTCOVER_hashPtrToIndex(ptr noundef %add.ptr, i32 noundef %13, i32 noundef %14)
  store i64 %call, ptr %idx, align 8, !tbaa !8
  %15 = load ptr, ptr %segmentFreqs.addr, align 8, !tbaa !4
  %16 = load i64, ptr %idx, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 %16
  %17 = load i16, ptr %arrayidx, align 2, !tbaa !71
  %conv = zext i16 %17 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load ptr, ptr %freqs.addr, align 8, !tbaa !4
  %19 = load i64, ptr %idx, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %19
  %20 = load i32, ptr %arrayidx10, align 4, !tbaa !10
  %score11 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 2
  %21 = load i32, ptr %score11, align 4, !tbaa !49
  %add12 = add i32 %21, %20
  store i32 %add12, ptr %score11, align 4, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %end13 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 1
  %22 = load i32, ptr %end13, align 4, !tbaa !50
  %add14 = add i32 %22, 1
  store i32 %add14, ptr %end13, align 4, !tbaa !50
  %23 = load ptr, ptr %segmentFreqs.addr, align 8, !tbaa !4
  %24 = load i64, ptr %idx, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds i16, ptr %23, i64 %24
  %25 = load i16, ptr %arrayidx15, align 2, !tbaa !71
  %conv16 = zext i16 %25 to i32
  %add17 = add nsw i32 %conv16, 1
  %conv18 = trunc i32 %add17 to i16
  store i16 %conv18, ptr %arrayidx15, align 2, !tbaa !71
  %end19 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 1
  %26 = load i32, ptr %end19, align 4, !tbaa !50
  %begin20 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  %27 = load i32, ptr %begin20, align 4, !tbaa !51
  %sub21 = sub i32 %26, %27
  %28 = load i32, ptr %dmersInK, align 4, !tbaa !10
  %add22 = add i32 %28, 1
  %cmp23 = icmp eq i32 %sub21, %add22
  br i1 %cmp23, label %if.then25, label %if.end46

if.then25:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %delIndex) #10
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples26 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %samples26, align 8, !tbaa !40
  %begin27 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  %31 = load i32, ptr %begin27, align 4, !tbaa !51
  %idx.ext28 = zext i32 %31 to i64
  %add.ptr29 = getelementptr inbounds i8, ptr %30, i64 %idx.ext28
  %32 = load i32, ptr %f, align 4, !tbaa !10
  %33 = load i32, ptr %d, align 4, !tbaa !10
  %call30 = call i64 @FASTCOVER_hashPtrToIndex(ptr noundef %add.ptr29, i32 noundef %32, i32 noundef %33)
  store i64 %call30, ptr %delIndex, align 8, !tbaa !8
  %34 = load ptr, ptr %segmentFreqs.addr, align 8, !tbaa !4
  %35 = load i64, ptr %delIndex, align 8, !tbaa !8
  %arrayidx31 = getelementptr inbounds i16, ptr %34, i64 %35
  %36 = load i16, ptr %arrayidx31, align 2, !tbaa !71
  %conv32 = zext i16 %36 to i32
  %sub33 = sub nsw i32 %conv32, 1
  %conv34 = trunc i32 %sub33 to i16
  store i16 %conv34, ptr %arrayidx31, align 2, !tbaa !71
  %37 = load ptr, ptr %segmentFreqs.addr, align 8, !tbaa !4
  %38 = load i64, ptr %delIndex, align 8, !tbaa !8
  %arrayidx35 = getelementptr inbounds i16, ptr %37, i64 %38
  %39 = load i16, ptr %arrayidx35, align 2, !tbaa !71
  %conv36 = zext i16 %39 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.then25
  %40 = load ptr, ptr %freqs.addr, align 8, !tbaa !4
  %41 = load i64, ptr %delIndex, align 8, !tbaa !8
  %arrayidx40 = getelementptr inbounds i32, ptr %40, i64 %41
  %42 = load i32, ptr %arrayidx40, align 4, !tbaa !10
  %score41 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 2
  %43 = load i32, ptr %score41, align 4, !tbaa !49
  %sub42 = sub i32 %43, %42
  store i32 %sub42, ptr %score41, align 4, !tbaa !49
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.then25
  %begin44 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  %44 = load i32, ptr %begin44, align 4, !tbaa !51
  %add45 = add i32 %44, 1
  store i32 %add45, ptr %begin44, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr %delIndex) #10
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.end
  %score47 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 2
  %45 = load i32, ptr %score47, align 4, !tbaa !49
  %score48 = getelementptr inbounds %struct.COVER_segment_t, ptr %retval, i32 0, i32 2
  %46 = load i32, ptr %score48, align 4, !tbaa !49
  %cmp49 = icmp ugt i32 %45, %46
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end46
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 %activeSegment, i64 12, i1 false), !tbaa.struct !36
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end46
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond53

while.cond53:                                     ; preds = %while.body57, %while.end
  %begin54 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  %47 = load i32, ptr %begin54, align 4, !tbaa !51
  %48 = load i32, ptr %end.addr, align 4, !tbaa !10
  %cmp55 = icmp ult i32 %47, %48
  br i1 %cmp55, label %while.body57, label %while.end70

while.body57:                                     ; preds = %while.cond53
  call void @llvm.lifetime.start.p0(i64 8, ptr %delIndex58) #10
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples59 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %samples59, align 8, !tbaa !40
  %begin60 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  %51 = load i32, ptr %begin60, align 4, !tbaa !51
  %idx.ext61 = zext i32 %51 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %50, i64 %idx.ext61
  %52 = load i32, ptr %f, align 4, !tbaa !10
  %53 = load i32, ptr %d, align 4, !tbaa !10
  %call63 = call i64 @FASTCOVER_hashPtrToIndex(ptr noundef %add.ptr62, i32 noundef %52, i32 noundef %53)
  store i64 %call63, ptr %delIndex58, align 8, !tbaa !8
  %54 = load ptr, ptr %segmentFreqs.addr, align 8, !tbaa !4
  %55 = load i64, ptr %delIndex58, align 8, !tbaa !8
  %arrayidx64 = getelementptr inbounds i16, ptr %54, i64 %55
  %56 = load i16, ptr %arrayidx64, align 2, !tbaa !71
  %conv65 = zext i16 %56 to i32
  %sub66 = sub nsw i32 %conv65, 1
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, ptr %arrayidx64, align 2, !tbaa !71
  %begin68 = getelementptr inbounds %struct.COVER_segment_t, ptr %activeSegment, i32 0, i32 0
  %57 = load i32, ptr %begin68, align 4, !tbaa !51
  %add69 = add i32 %57, 1
  store i32 %add69, ptr %begin68, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr %delIndex58) #10
  br label %while.cond53

while.end70:                                      ; preds = %while.cond53
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #10
  %begin71 = getelementptr inbounds %struct.COVER_segment_t, ptr %retval, i32 0, i32 0
  %58 = load i32, ptr %begin71, align 4, !tbaa !51
  store i32 %58, ptr %pos, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end70
  %59 = load i32, ptr %pos, align 4, !tbaa !10
  %end72 = getelementptr inbounds %struct.COVER_segment_t, ptr %retval, i32 0, i32 1
  %60 = load i32, ptr %end72, align 4, !tbaa !50
  %cmp73 = icmp ne i32 %59, %60
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  %61 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %samples75 = getelementptr inbounds %struct.FASTCOVER_ctx_t, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %samples75, align 8, !tbaa !40
  %63 = load i32, ptr %pos, align 4, !tbaa !10
  %idx.ext76 = zext i32 %63 to i64
  %add.ptr77 = getelementptr inbounds i8, ptr %62, i64 %idx.ext76
  %64 = load i32, ptr %f, align 4, !tbaa !10
  %65 = load i32, ptr %d, align 4, !tbaa !10
  %call78 = call i64 @FASTCOVER_hashPtrToIndex(ptr noundef %add.ptr77, i32 noundef %64, i32 noundef %65)
  store i64 %call78, ptr %i, align 8, !tbaa !8
  %66 = load ptr, ptr %freqs.addr, align 8, !tbaa !4
  %67 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx79 = getelementptr inbounds i32, ptr %66, i64 %67
  store i32 0, ptr %arrayidx79, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, ptr %pos, align 4, !tbaa !10
  %inc = add i32 %68, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr %activeSegment) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %dmersInK) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %69 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %69
}

declare void @COVER_dictSelectionError(ptr sret(%struct.COVER_dictSelection) align 8, i64 noundef) #3

declare void @COVER_selectDict(ptr sret(%struct.COVER_dictSelection) align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef, i64 noundef) #3

declare i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8) #3

declare void @COVER_best_finish(ptr noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef byval(%struct.COVER_dictSelection) align 8) #3

declare void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 48}
!13 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !14, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !15, i64 44}
!14 = !{!"double", !6, i64 0}
!15 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!16 = !{!13, !14, i64 24}
!17 = !{!13, !11, i64 8}
!18 = !{!13, !11, i64 32}
!19 = !{i64 0, i64 4, !10, i64 4, i64 4, !10}
!20 = !{!21, !11, i64 4}
!21 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !14, i64 16, !11, i64 24, !11, i64 28, !15, i64 32}
!22 = !{!23, !9, i64 48}
!23 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !5, i64 56, !11, i64 64, !11, i64 68, !24, i64 72}
!24 = !{!"", !11, i64 0, !11, i64 4}
!25 = !{!23, !5, i64 56}
!26 = !{!23, !9, i64 32}
!27 = !{!23, !11, i64 72}
!28 = !{!13, !11, i64 0}
!29 = !{!21, !11, i64 0}
!30 = !{!13, !11, i64 4}
!31 = !{!13, !11, i64 12}
!32 = !{!21, !11, i64 8}
!33 = !{!13, !11, i64 16}
!34 = !{!21, !11, i64 12}
!35 = !{!21, !14, i64 16}
!36 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10}
!37 = !{!13, !11, i64 36}
!38 = !{!21, !11, i64 24}
!39 = !{!14, !14, i64 0}
!40 = !{!23, !5, i64 0}
!41 = !{!23, !5, i64 16}
!42 = !{!23, !9, i64 24}
!43 = !{!23, !9, i64 40}
!44 = !{!23, !11, i64 64}
!45 = !{!23, !11, i64 68}
!46 = !{!23, !5, i64 8}
!47 = !{!24, !11, i64 0}
!48 = !{!24, !11, i64 4}
!49 = !{!15, !11, i64 8}
!50 = !{!15, !11, i64 4}
!51 = !{!15, !11, i64 0}
!52 = !{!53, !5, i64 0}
!53 = !{!"FASTCOVER_tryParameters_data_s", !5, i64 0, !5, i64 8, !9, i64 16, !21, i64 24}
!54 = !{!53, !5, i64 8}
!55 = !{!53, !9, i64 16}
!56 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 8, !39, i64 24, i64 4, !10, i64 28, i64 4, !10, i64 32, i64 4, !10, i64 36, i64 4, !10, i64 40, i64 4, !10}
!57 = !{!53, !11, i64 24}
!58 = !{!53, !11, i64 28}
!59 = !{!53, !14, i64 40}
!60 = !{!53, !11, i64 32}
!61 = !{!53, !11, i64 48}
!62 = !{!53, !11, i64 60}
!63 = !{!64, !9, i64 104}
!64 = !{!"COVER_best_s", !6, i64 0, !6, i64 40, !9, i64 88, !5, i64 96, !9, i64 104, !21, i64 112, !9, i64 160}
!65 = !{!64, !9, i64 160}
!66 = !{!64, !5, i64 96}
!67 = !{i64 0, i64 8, !4, i64 8, i64 8, !8, i64 16, i64 8, !8}
!68 = !{!23, !11, i64 76}
!69 = !{!70, !9, i64 0}
!70 = !{!"", !9, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !6, i64 0}
