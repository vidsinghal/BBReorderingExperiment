; ModuleID = 'samples/410.bc'
source_filename = "/local-ssd/adios2-oqwmwnnlt5ggw7tvys45na6ehqluzw4g-build/aidengro/spack-stage-adios2-2.9.1-oqwmwnnlt5ggw7tvys45na6ehqluzw4g/spack-src/source/adios2/toolkit/sst/cp/ffs_zfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._SstStream = type { ptr, ptr, i32, i32, i32, i32, i32, double, %struct.timeval, %struct._SstStats, ptr, i32, i32, ptr, ptr, %union.pthread_mutex_t, %union.pthread_cond_t, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, i64, ptr, i64, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i64, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.timeval = type { i64, i64 }
%struct._SstStats = type { double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.FFSWriterMarshalBase = type { i32, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, ptr }

@ZFPToleranceAtom = internal global i32 -1, align 4
@.str = private unnamed_addr constant [13 x i8] c"ZFPTolernace\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ZFPRate\00", align 1
@ZFPRateAtom = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ZFPPrecision\00", align 1
@ZFPPrecisionAtom = internal global i32 -1, align 4
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [138 x i8] c"ERROR: zfp parameters Tolerance, Rate, Precision are mutually exclusive, only one of them is mandatory, from class CompressZfp Transform\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"ERROR: zfp failed with status %d, in call to CompressZfp Decompress\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"ZFP Compression not supported on %ld dimensional data\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ZFPcompressionPossible(i32 noundef %Type, i32 noundef %DimCount) #0 {
entry:
  %Type.addr = alloca i32, align 4
  %DimCount.addr = alloca i32, align 4
  store i32 %Type, ptr %Type.addr, align 4, !tbaa !4
  store i32 %DimCount, ptr %DimCount.addr, align 4, !tbaa !4
  %0 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %call = call i32 @GetZFPType(i32 noundef %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %DimCount.addr, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %1, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @GetZFPType(i32 noundef %Type) #0 {
entry:
  %retval = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  store i32 %Type, ptr %Type.addr, align 4, !tbaa !4
  %0 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %1, 7
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp4 = icmp eq i32 %2, 4
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i32 2, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else3
  %3 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp7 = icmp eq i32 %3, 4
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  store i32 2, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else6
  %4 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp10 = icmp eq i32 %4, 8
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  store i32 2, ptr %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else9
  %5 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp13 = icmp eq i32 %5, 8
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  store i32 2, ptr %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else12
  %6 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp16 = icmp eq i32 %6, 9
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else15
  store i32 3, ptr %retval, align 4
  br label %return

if.else18:                                        ; preds = %if.else15
  %7 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp19 = icmp eq i32 %7, 10
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  store i32 4, ptr %retval, align 4
  br label %return

if.else21:                                        ; preds = %if.else18
  %8 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %cmp22 = icmp eq i32 %8, 10
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.else21
  store i32 4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else21
  br label %if.end24

if.end24:                                         ; preds = %if.end
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  br label %if.end28

if.end28:                                         ; preds = %if.end27
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then23, %if.then20, %if.then17, %if.then14, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define ptr @GetZFPStream(i64 noundef %DimCount, i32 noundef %Type, ptr noundef %Parameters) #0 {
entry:
  %DimCount.addr = alloca i64, align 8
  %Type.addr = alloca i32, align 4
  %Parameters.addr = alloca ptr, align 8
  %zstream = alloca ptr, align 8
  %Tolerance = alloca double, align 8
  %Rate = alloca double, align 8
  %Precision = alloca double, align 8
  %hasTolerance = alloca i32, align 4
  %hasRate = alloca i32, align 4
  %hasPrecision = alloca i32, align 4
  store i64 %DimCount, ptr %DimCount.addr, align 8, !tbaa !8
  store i32 %Type, ptr %Type.addr, align 4, !tbaa !4
  store ptr %Parameters, ptr %Parameters.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %zstream) #5
  %call = call ptr @zfp_stream_open(ptr noundef null)
  store ptr %call, ptr %zstream, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %Tolerance) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rate) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Precision) #5
  %0 = load i32, ptr @ZFPToleranceAtom, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @attr_atom_from_string(ptr noundef @.str)
  store i32 %call1, ptr @ZFPToleranceAtom, align 4, !tbaa !4
  %call2 = call i32 @attr_atom_from_string(ptr noundef @.str.1)
  store i32 %call2, ptr @ZFPRateAtom, align 4, !tbaa !4
  %call3 = call i32 @attr_atom_from_string(ptr noundef @.str.2)
  store i32 %call3, ptr @ZFPPrecisionAtom, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %hasTolerance) #5
  %1 = load ptr, ptr %Parameters.addr, align 8, !tbaa !10
  %2 = load i32, ptr @ZFPToleranceAtom, align 4, !tbaa !4
  %call4 = call i32 @get_double_attr(ptr noundef %1, i32 noundef %2, ptr noundef %Tolerance)
  store i32 %call4, ptr %hasTolerance, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hasRate) #5
  %3 = load ptr, ptr %Parameters.addr, align 8, !tbaa !10
  %4 = load i32, ptr @ZFPRateAtom, align 4, !tbaa !4
  %call5 = call i32 @get_double_attr(ptr noundef %3, i32 noundef %4, ptr noundef %Rate)
  store i32 %call5, ptr %hasRate, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hasPrecision) #5
  %5 = load ptr, ptr %Parameters.addr, align 8, !tbaa !10
  %6 = load i32, ptr @ZFPPrecisionAtom, align 4, !tbaa !4
  %call6 = call i32 @get_double_attr(ptr noundef %5, i32 noundef %6, ptr noundef %Precision)
  store i32 %call6, ptr %hasPrecision, align 4, !tbaa !4
  %7 = load i32, ptr %hasTolerance, align 4, !tbaa !4
  %8 = load i32, ptr %hasRate, align 4, !tbaa !4
  %add = add nsw i32 %7, %8
  %9 = load i32, ptr %hasPrecision, align 4, !tbaa !4
  %add7 = add nsw i32 %add, %9
  %cmp8 = icmp sgt i32 %add7, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.3)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %11 = load i32, ptr %hasTolerance, align 4, !tbaa !4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end11
  %12 = load ptr, ptr %zstream, align 8, !tbaa !10
  %13 = load double, ptr %Tolerance, align 8, !tbaa !12
  %call13 = call double @zfp_stream_set_accuracy(ptr noundef %12, double noundef %13)
  br label %if.end25

if.else:                                          ; preds = %if.end11
  %14 = load i32, ptr %hasRate, align 4, !tbaa !4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else
  %15 = load ptr, ptr %zstream, align 8, !tbaa !10
  %16 = load double, ptr %Rate, align 8, !tbaa !12
  %17 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %call16 = call i32 @GetZFPType(i32 noundef %17)
  %18 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %conv = trunc i64 %18 to i32
  %call17 = call double @zfp_stream_set_rate(ptr noundef %15, double noundef %16, i32 noundef %call16, i32 noundef %conv, i32 noundef 0)
  br label %if.end24

if.else18:                                        ; preds = %if.else
  %19 = load i32, ptr %hasPrecision, align 4, !tbaa !4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.else18
  %20 = load ptr, ptr %zstream, align 8, !tbaa !10
  %21 = load double, ptr %Precision, align 8, !tbaa !12
  %conv21 = fptoui double %21 to i32
  %call22 = call i32 @zfp_stream_set_precision(ptr noundef %20, i32 noundef %conv21)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.else18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then12
  %22 = load ptr, ptr %zstream, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %hasPrecision) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %hasRate) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %hasTolerance) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Precision) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rate) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Tolerance) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zstream) #5
  ret ptr %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @zfp_stream_open(ptr noundef) #2

declare i32 @attr_atom_from_string(ptr noundef) #2

declare i32 @get_double_attr(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare double @zfp_stream_set_accuracy(ptr noundef, double noundef) #2

declare double @zfp_stream_set_rate(ptr noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @zfp_stream_set_precision(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @FFS_ZFPCompress(ptr noundef %Stream, i64 noundef %DimCount, i32 noundef %Type, ptr noundef %Data, ptr noundef %Count, ptr noundef %ByteCountP) #0 {
entry:
  %Stream.addr = alloca ptr, align 8
  %DimCount.addr = alloca i64, align 8
  %Type.addr = alloca i32, align 4
  %Data.addr = alloca ptr, align 8
  %Count.addr = alloca ptr, align 8
  %ByteCountP.addr = alloca ptr, align 8
  %Info = alloca ptr, align 8
  %bufferOut = alloca ptr, align 8
  %field = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %maxSize = alloca i64, align 8
  %bitstream = alloca ptr, align 8
  %sizeOut = alloca i64, align 8
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !10
  store i64 %DimCount, ptr %DimCount.addr, align 8, !tbaa !8
  store i32 %Type, ptr %Type.addr, align 4, !tbaa !4
  store ptr %Data, ptr %Data.addr, align 8, !tbaa !10
  store ptr %Count, ptr %Count.addr, align 8, !tbaa !10
  store ptr %ByteCountP, ptr %ByteCountP.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %Info) #5
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !10
  %WriterMarshalData = getelementptr inbounds %struct._SstStream, ptr %0, i32 0, i32 38
  %1 = load ptr, ptr %WriterMarshalData, align 8, !tbaa !14
  store ptr %1, ptr %Info, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufferOut) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #5
  %2 = load ptr, ptr %Data.addr, align 8, !tbaa !10
  %3 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %4 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %5 = load ptr, ptr %Count.addr, align 8, !tbaa !10
  %call = call ptr @GetZFPField(ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5)
  store ptr %call, ptr %field, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #5
  %6 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %7 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %8 = load ptr, ptr %Info, align 8, !tbaa !10
  %ZFPParams = getelementptr inbounds %struct.FFSWriterMarshalBase, ptr %8, i32 0, i32 15
  %9 = load ptr, ptr %ZFPParams, align 8, !tbaa !18
  %call1 = call ptr @GetZFPStream(i64 noundef %6, i32 noundef %7, ptr noundef %9)
  store ptr %call1, ptr %stream, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxSize) #5
  %10 = load ptr, ptr %stream, align 8, !tbaa !10
  %11 = load ptr, ptr %field, align 8, !tbaa !10
  %call2 = call i64 @zfp_stream_maximum_size(ptr noundef %10, ptr noundef %11)
  store i64 %call2, ptr %maxSize, align 8, !tbaa !8
  %12 = load i64, ptr %maxSize, align 8, !tbaa !8
  %call3 = call noalias ptr @malloc(i64 noundef %12) #6
  store ptr %call3, ptr %bufferOut, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitstream) #5
  %13 = load ptr, ptr %bufferOut, align 8, !tbaa !10
  %14 = load i64, ptr %maxSize, align 8, !tbaa !8
  %call4 = call ptr @stream_open(ptr noundef %13, i64 noundef %14)
  store ptr %call4, ptr %bitstream, align 8, !tbaa !10
  %15 = load ptr, ptr %stream, align 8, !tbaa !10
  %16 = load ptr, ptr %bitstream, align 8, !tbaa !10
  call void @zfp_stream_set_bit_stream(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %stream, align 8, !tbaa !10
  call void @zfp_stream_rewind(ptr noundef %17)
  call void @llvm.lifetime.start.p0(i64 8, ptr %sizeOut) #5
  %18 = load ptr, ptr %stream, align 8, !tbaa !10
  %19 = load ptr, ptr %field, align 8, !tbaa !10
  %call5 = call i64 @zfp_compress(ptr noundef %18, ptr noundef %19)
  store i64 %call5, ptr %sizeOut, align 8, !tbaa !8
  %20 = load ptr, ptr %field, align 8, !tbaa !10
  call void @zfp_field_free(ptr noundef %20)
  %21 = load ptr, ptr %stream, align 8, !tbaa !10
  call void @zfp_stream_close(ptr noundef %21)
  %22 = load ptr, ptr %bitstream, align 8, !tbaa !10
  call void @stream_close(ptr noundef %22)
  %23 = load i64, ptr %sizeOut, align 8, !tbaa !8
  %24 = load ptr, ptr %ByteCountP.addr, align 8, !tbaa !10
  store i64 %23, ptr %24, align 8, !tbaa !8
  %25 = load ptr, ptr %bufferOut, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %sizeOut) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitstream) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxSize) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufferOut) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Info) #5
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define internal ptr @GetZFPField(ptr noundef %Data, i64 noundef %DimCount, i32 noundef %Type, ptr noundef %Dimensions) #0 {
entry:
  %retval = alloca ptr, align 8
  %Data.addr = alloca ptr, align 8
  %DimCount.addr = alloca i64, align 8
  %Type.addr = alloca i32, align 4
  %Dimensions.addr = alloca ptr, align 8
  %zfpType = alloca i32, align 4
  %field = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Data, ptr %Data.addr, align 8, !tbaa !10
  store i64 %DimCount, ptr %DimCount.addr, align 8, !tbaa !8
  store i32 %Type, ptr %Type.addr, align 4, !tbaa !4
  store ptr %Dimensions, ptr %Dimensions.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %zfpType) #5
  %0 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %call = call i32 @GetZFPType(i32 noundef %0)
  store i32 %call, ptr %zfpType, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #5
  store ptr null, ptr %field, align 8, !tbaa !10
  %1 = load i32, ptr %zfpType, align 4, !tbaa !20
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  switch i64 %2, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb2
    i64 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %Data.addr, align 8, !tbaa !10
  %4 = load i32, ptr %zfpType, align 4, !tbaa !20
  %5 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 0
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !8
  %conv = trunc i64 %6 to i32
  %call1 = call ptr @zfp_field_1d(ptr noundef %3, i32 noundef %4, i32 noundef %conv)
  store ptr %call1, ptr %field, align 8, !tbaa !10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %7 = load ptr, ptr %Data.addr, align 8, !tbaa !10
  %8 = load i32, ptr %zfpType, align 4, !tbaa !20
  %9 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 0
  %10 = load i64, ptr %arrayidx3, align 8, !tbaa !8
  %conv4 = trunc i64 %10 to i32
  %11 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 1
  %12 = load i64, ptr %arrayidx5, align 8, !tbaa !8
  %conv6 = trunc i64 %12 to i32
  %call7 = call ptr @zfp_field_2d(ptr noundef %7, i32 noundef %8, i32 noundef %conv4, i32 noundef %conv6)
  store ptr %call7, ptr %field, align 8, !tbaa !10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %13 = load ptr, ptr %Data.addr, align 8, !tbaa !10
  %14 = load i32, ptr %zfpType, align 4, !tbaa !20
  %15 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds i64, ptr %15, i64 0
  %16 = load i64, ptr %arrayidx9, align 8, !tbaa !8
  %conv10 = trunc i64 %16 to i32
  %17 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds i64, ptr %17, i64 1
  %18 = load i64, ptr %arrayidx11, align 8, !tbaa !8
  %conv12 = trunc i64 %18 to i32
  %19 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %arrayidx13 = getelementptr inbounds i64, ptr %19, i64 2
  %20 = load i64, ptr %arrayidx13, align 8, !tbaa !8
  %conv14 = trunc i64 %20 to i32
  %call15 = call ptr @zfp_field_3d(ptr noundef %13, i32 noundef %14, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14)
  store ptr %call15, ptr %field, align 8, !tbaa !10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %21 = load ptr, ptr @stderr, align 8, !tbaa !10
  %22 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.5, i64 noundef %22)
  call void @exit(i32 noundef 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb2, %sw.bb
  %23 = load ptr, ptr %field, align 8, !tbaa !10
  store ptr %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %zfpType) #5
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

declare i64 @zfp_stream_maximum_size(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare ptr @stream_open(ptr noundef, i64 noundef) #2

declare void @zfp_stream_set_bit_stream(ptr noundef, ptr noundef) #2

declare void @zfp_stream_rewind(ptr noundef) #2

declare i64 @zfp_compress(ptr noundef, ptr noundef) #2

declare void @zfp_field_free(ptr noundef) #2

declare void @zfp_stream_close(ptr noundef) #2

declare void @stream_close(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @FFS_ZFPDecompress(ptr noundef %Stream, i64 noundef %DimCount, i32 noundef %Type, ptr noundef %bufferIn, i64 noundef %sizeIn, ptr noundef %Dimensions, ptr noundef %Parameters) #0 {
entry:
  %Stream.addr = alloca ptr, align 8
  %DimCount.addr = alloca i64, align 8
  %Type.addr = alloca i32, align 4
  %bufferIn.addr = alloca ptr, align 8
  %sizeIn.addr = alloca i64, align 8
  %Dimensions.addr = alloca ptr, align 8
  %Parameters.addr = alloca ptr, align 8
  %in_field = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %maxSize = alloca i64, align 8
  %dataOut = alloca ptr, align 8
  %out_field = alloca ptr, align 8
  %bitstream = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !10
  store i64 %DimCount, ptr %DimCount.addr, align 8, !tbaa !8
  store i32 %Type, ptr %Type.addr, align 4, !tbaa !4
  store ptr %bufferIn, ptr %bufferIn.addr, align 8, !tbaa !10
  store i64 %sizeIn, ptr %sizeIn.addr, align 8, !tbaa !8
  store ptr %Dimensions, ptr %Dimensions.addr, align 8, !tbaa !10
  store ptr %Parameters, ptr %Parameters.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_field) #5
  %0 = load ptr, ptr %bufferIn.addr, align 8, !tbaa !10
  %1 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %2 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %call = call ptr @GetZFPField(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3)
  store ptr %call, ptr %in_field, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #5
  %4 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %5 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %call1 = call ptr @GetZFPStream(i64 noundef %4, i32 noundef %5, ptr noundef null)
  store ptr %call1, ptr %stream, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxSize) #5
  %6 = load ptr, ptr %stream, align 8, !tbaa !10
  %7 = load ptr, ptr %in_field, align 8, !tbaa !10
  %call2 = call i64 @zfp_stream_maximum_size(ptr noundef %6, ptr noundef %7)
  store i64 %call2, ptr %maxSize, align 8, !tbaa !8
  %8 = load ptr, ptr %in_field, align 8, !tbaa !10
  call void @zfp_field_free(ptr noundef %8)
  call void @llvm.lifetime.start.p0(i64 8, ptr %dataOut) #5
  %9 = load i64, ptr %maxSize, align 8, !tbaa !8
  %call3 = call noalias ptr @malloc(i64 noundef %9) #6
  store ptr %call3, ptr %dataOut, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_field) #5
  %10 = load ptr, ptr %dataOut, align 8, !tbaa !10
  %11 = load i64, ptr %DimCount.addr, align 8, !tbaa !8
  %12 = load i32, ptr %Type.addr, align 4, !tbaa !4
  %13 = load ptr, ptr %Dimensions.addr, align 8, !tbaa !10
  %call4 = call ptr @GetZFPField(ptr noundef %10, i64 noundef %11, i32 noundef %12, ptr noundef %13)
  store ptr %call4, ptr %out_field, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitstream) #5
  %14 = load ptr, ptr %bufferIn.addr, align 8, !tbaa !10
  %15 = load i64, ptr %sizeIn.addr, align 8, !tbaa !8
  %call5 = call ptr @stream_open(ptr noundef %14, i64 noundef %15)
  store ptr %call5, ptr %bitstream, align 8, !tbaa !10
  %16 = load ptr, ptr %stream, align 8, !tbaa !10
  %17 = load ptr, ptr %bitstream, align 8, !tbaa !10
  call void @zfp_stream_set_bit_stream(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %stream, align 8, !tbaa !10
  call void @zfp_stream_rewind(ptr noundef %18)
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  %19 = load ptr, ptr %stream, align 8, !tbaa !10
  %20 = load ptr, ptr %out_field, align 8, !tbaa !10
  %call6 = call i64 @zfp_decompress(ptr noundef %19, ptr noundef %20)
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %status, align 4, !tbaa !4
  %21 = load i32, ptr %status, align 4, !tbaa !4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %22 = load ptr, ptr @stderr, align 8, !tbaa !10
  %23 = load i32, ptr %status, align 4, !tbaa !4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.4, i32 noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load ptr, ptr %out_field, align 8, !tbaa !10
  call void @zfp_field_free(ptr noundef %24)
  %25 = load ptr, ptr %stream, align 8, !tbaa !10
  call void @zfp_stream_close(ptr noundef %25)
  %26 = load ptr, ptr %bitstream, align 8, !tbaa !10
  call void @stream_close(ptr noundef %26)
  %27 = load ptr, ptr %dataOut, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitstream) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_field) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dataOut) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxSize) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_field) #5
  ret ptr %27
}

declare i64 @zfp_decompress(ptr noundef, ptr noundef) #2

declare ptr @zfp_field_1d(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @zfp_field_2d(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare ptr @zfp_field_3d(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!15, !11, i64 424}
!15 = !{!"_SstStream", !11, i64 0, !11, i64 8, !6, i64 16, !5, i64 20, !6, i64 24, !5, i64 28, !5, i64 32, !13, i64 40, !16, i64 48, !17, i64 64, !11, i64 160, !5, i64 168, !5, i64 172, !11, i64 176, !11, i64 184, !6, i64 192, !6, i64 232, !5, i64 280, !11, i64 288, !5, i64 296, !5, i64 300, !11, i64 304, !5, i64 312, !5, i64 316, !6, i64 320, !5, i64 324, !5, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !5, i64 360, !11, i64 368, !5, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !5, i64 408, !11, i64 416, !11, i64 424, !9, i64 432, !11, i64 440, !9, i64 448, !11, i64 456, !11, i64 464, !5, i64 472, !11, i64 480, !5, i64 488, !11, i64 496, !6, i64 504, !11, i64 512, !11, i64 520, !11, i64 528, !11, i64 536, !5, i64 544, !5, i64 548, !11, i64 552, !11, i64 560, !5, i64 568, !5, i64 572, !11, i64 576, !11, i64 584, !5, i64 592, !11, i64 600, !5, i64 608, !5, i64 612, !11, i64 616, !11, i64 624, !5, i64 632, !5, i64 636, !9, i64 640, !9, i64 648, !5, i64 656, !11, i64 664, !11, i64 672, !11, i64 680, !11, i64 688, !11, i64 696, !11, i64 704, !11, i64 712, !11, i64 720, !5, i64 728}
!16 = !{!"timeval", !9, i64 0, !9, i64 8}
!17 = !{!"_SstStats", !13, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !13, i64 88}
!18 = !{!19, !11, i64 112}
!19 = !{!"FFSWriterMarshalBase", !5, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !11, i64 112}
!20 = !{!6, !6, i64 0}
