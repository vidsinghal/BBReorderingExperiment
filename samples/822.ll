; ModuleID = 'samples/822.bc'
source_filename = "/local-ssd/c-blosc-rneecg5dfgisrx4hnq2s74oz26m5r6xt-build/aidengro/spack-stage-c-blosc-1.21.4-rneecg5dfgisrx4hnq2s74oz26m5r6xt/spack-src/tests/fuzz/fuzz_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"blosclz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lz4hc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"snappy\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@__const.LLVMFuzzerTestOneInput.compressors = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(ptr noundef %data, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %compressors = alloca [6 x ptr], align 16
  %level = alloca i32, align 4
  %filter = alloca i32, align 4
  %cindex = alloca i32, align 4
  %i = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %cbytes = alloca i64, align 8
  %blocksize = alloca i64, align 8
  %output = alloca ptr, align 8
  %input = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  store i64 %size, ptr %size.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %compressors) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %compressors, ptr align 16 @__const.LLVMFuzzerTestOneInput.compressors, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #6
  store i32 9, ptr %level, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %filter) #6
  store i32 2, ptr %filter, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %cindex) #6
  store i32 0, ptr %cindex, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbytes) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cbytes) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocksize) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #6
  %call = call i32 @blosc_set_nthreads(i32 noundef 1)
  %0 = load i64, ptr %size.addr, align 8, !tbaa !9
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %rem = srem i32 %conv, 10
  store i32 %rem, ptr %level, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %size.addr, align 8, !tbaa !9
  %cmp1 = icmp ugt i64 %3, 1
  br i1 %cmp1, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx4, align 1, !tbaa !13
  %conv5 = zext i8 %5 to i32
  %rem6 = srem i32 %conv5, 3
  store i32 %rem6, ptr %filter, align 4, !tbaa !11
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %6 = load i64, ptr %size.addr, align 8, !tbaa !9
  %cmp8 = icmp ugt i64 %6, 2
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, ptr %7, i64 2
  %8 = load i8, ptr %arrayidx11, align 1, !tbaa !13
  %conv12 = zext i8 %8 to i32
  store i32 %conv12, ptr %cindex, align 4, !tbaa !11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %9 = load i32, ptr %cindex, align 4, !tbaa !11
  %rem14 = srem i32 %9, 6
  %idxprom = sext i32 %rem14 to i64
  %arrayidx15 = getelementptr inbounds [6 x ptr], ptr %compressors, i64 0, i64 %idxprom
  %10 = load ptr, ptr %arrayidx15, align 8, !tbaa !5
  %call16 = call i32 @blosc_set_compressor(ptr noundef %10)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, ptr %i, align 4, !tbaa !11
  %cmp19 = icmp slt i32 %11, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, ptr %cindex, align 4, !tbaa !11
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %cindex, align 4, !tbaa !11
  %14 = load i32, ptr %i, align 4, !tbaa !11
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !11
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  %15 = load i32, ptr %i, align 4, !tbaa !11
  %cmp22 = icmp eq i32 %15, 6
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %while.end
  %16 = load i64, ptr %size.addr, align 8, !tbaa !9
  %cmp26 = icmp ugt i64 %16, 3
  br i1 %cmp26, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end25
  %17 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, ptr %17, i64 3
  %18 = load i8, ptr %arrayidx28, align 1, !tbaa !13
  %conv29 = zext i8 %18 to i32
  %rem30 = srem i32 %conv29, 7
  %cmp31 = icmp eq i32 %rem30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  call void @blosc_set_blocksize(i64 noundef 4096)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %if.end25
  %19 = load i64, ptr %size.addr, align 8, !tbaa !9
  %cmp35 = icmp ugt i64 %19, 4
  br i1 %cmp35, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end34
  %20 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8, ptr %20, i64 4
  %21 = load i8, ptr %arrayidx38, align 1, !tbaa !13
  %conv39 = zext i8 %21 to i32
  %rem40 = srem i32 %conv39, 4
  %add = add nsw i32 %rem40, 1
  call void @blosc_set_splitmode(i32 noundef %add)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end34
  %22 = load i64, ptr %size.addr, align 8, !tbaa !9
  %add42 = add i64 %22, 1
  %call43 = call noalias ptr @malloc(i64 noundef %add42) #7
  store ptr %call43, ptr %output, align 8, !tbaa !5
  %23 = load ptr, ptr %output, align 8, !tbaa !5
  %cmp44 = icmp eq ptr %23, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %24 = load i32, ptr %level, align 4, !tbaa !11
  %25 = load i32, ptr %filter, align 4, !tbaa !11
  %26 = load i64, ptr %size.addr, align 8, !tbaa !9
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %output, align 8, !tbaa !5
  %29 = load i64, ptr %size.addr, align 8, !tbaa !9
  %call48 = call i32 @blosc_compress(i32 noundef %24, i32 noundef %25, i64 noundef 1, i64 noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef %29)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  %30 = load ptr, ptr %output, align 8, !tbaa !5
  call void @free(ptr noundef %30) #6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %31 = load ptr, ptr %output, align 8, !tbaa !5
  call void @blosc_cbuffer_sizes(ptr noundef %31, ptr noundef %nbytes, ptr noundef %cbytes, ptr noundef %blocksize)
  %32 = load i64, ptr %cbytes, align 8, !tbaa !9
  %call53 = call noalias ptr @malloc(i64 noundef %32) #7
  store ptr %call53, ptr %input, align 8, !tbaa !5
  %33 = load ptr, ptr %input, align 8, !tbaa !5
  %cmp54 = icmp ne ptr %33, null
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end52
  %34 = load ptr, ptr %output, align 8, !tbaa !5
  %35 = load ptr, ptr %input, align 8, !tbaa !5
  %36 = load i64, ptr %cbytes, align 8, !tbaa !9
  %call57 = call i32 @blosc_decompress(ptr noundef %34, ptr noundef %35, i64 noundef %36)
  %37 = load ptr, ptr %input, align 8, !tbaa !5
  call void @free(ptr noundef %37) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end52
  %38 = load ptr, ptr %output, align 8, !tbaa !5
  call void @free(ptr noundef %38) #6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then51, %if.then46, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocksize) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cbytes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbytes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cindex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %filter) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr %compressors) #6
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @blosc_set_nthreads(i32 noundef) #3

declare i32 @blosc_set_compressor(ptr noundef) #3

declare void @blosc_set_blocksize(i64 noundef) #3

declare void @blosc_set_splitmode(i32 noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare i32 @blosc_compress(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

declare void @blosc_cbuffer_sizes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @blosc_decompress(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
