; ModuleID = 'samples/73.bc'
source_filename = "multivector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_MultiVector = type { ptr, i64, ptr }
%struct.mv_InterfaceInterpreter = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define ptr @mv_MultiVectorGetData(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %data, align 8, !tbaa !8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @mv_MultiVectorWrap(ptr noundef %ii, ptr noundef %data, i64 noundef %ownsData) #0 {
entry:
  %ii.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ownsData.addr = alloca i64, align 8
  %x = alloca ptr, align 8
  store ptr %ii, ptr %ii.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %ownsData, ptr %ownsData.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #3
  %call = call ptr @hypre_MAlloc(i64 noundef 24, i32 noundef 0)
  store ptr %call, ptr %x, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ii.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %x, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %1, i32 0, i32 2
  store ptr %0, ptr %interpreter, align 8, !tbaa !12
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %x, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  store ptr %2, ptr %data1, align 8, !tbaa !8
  %4 = load i64, ptr %ownsData.addr, align 8, !tbaa !11
  %5 = load ptr, ptr %x, align 8, !tbaa !4
  %ownsData2 = getelementptr inbounds %struct.mv_MultiVector, ptr %5, i32 0, i32 1
  store i64 %4, ptr %ownsData2, align 8, !tbaa !13
  %6 = load ptr, ptr %x, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #3
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @mv_MultiVectorCreateFromSampleVector(ptr noundef %ii_, i64 noundef %n, ptr noundef %sample) #0 {
entry:
  %ii_.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %sample.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %ii = alloca ptr, align 8
  store ptr %ii_, ptr %ii_.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !11
  store ptr %sample, ptr %sample.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #3
  %0 = load ptr, ptr %ii_.addr, align 8, !tbaa !4
  store ptr %0, ptr %ii, align 8, !tbaa !4
  %call = call ptr @hypre_MAlloc(i64 noundef 24, i32 noundef 0)
  store ptr %call, ptr %x, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %ii, align 8, !tbaa !4
  %2 = load ptr, ptr %x, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %2, i32 0, i32 2
  store ptr %1, ptr %interpreter, align 8, !tbaa !12
  %3 = load ptr, ptr %ii, align 8, !tbaa !4
  %CreateMultiVector = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %CreateMultiVector, align 8, !tbaa !14
  %5 = load ptr, ptr %ii, align 8, !tbaa !4
  %6 = load i64, ptr %n.addr, align 8, !tbaa !11
  %7 = load ptr, ptr %sample.addr, align 8, !tbaa !4
  %call1 = call ptr %4(ptr noundef %5, i64 noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %x, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %8, i32 0, i32 0
  store ptr %call1, ptr %data, align 8, !tbaa !8
  %9 = load ptr, ptr %x, align 8, !tbaa !4
  %ownsData = getelementptr inbounds %struct.mv_MultiVector, ptr %9, i32 0, i32 1
  store i64 1, ptr %ownsData, align 8, !tbaa !13
  %10 = load ptr, ptr %x, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #3
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define ptr @mv_MultiVectorCreateCopy(ptr noundef %x, i64 noundef %copyValues) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %copyValues.addr = alloca i64, align 8
  %y = alloca ptr, align 8
  %data = alloca ptr, align 8
  %ii = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i64 %copyValues, ptr %copyValues.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #3
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  store ptr %1, ptr %ii, align 8, !tbaa !4
  %call = call ptr @hypre_MAlloc(i64 noundef 24, i32 noundef 0)
  store ptr %call, ptr %y, align 8, !tbaa !4
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %ii, align 8, !tbaa !4
  %CopyCreateMultiVector = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %CopyCreateMultiVector, align 8, !tbaa !16
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.mv_MultiVector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %data4, align 8, !tbaa !8
  %6 = load i64, ptr %copyValues.addr, align 8, !tbaa !11
  %call5 = call ptr %3(ptr noundef %5, i64 noundef %6)
  store ptr %call5, ptr %data, align 8, !tbaa !4
  %7 = load ptr, ptr %ii, align 8, !tbaa !4
  %8 = load ptr, ptr %y, align 8, !tbaa !4
  %interpreter6 = getelementptr inbounds %struct.mv_MultiVector, ptr %8, i32 0, i32 2
  store ptr %7, ptr %interpreter6, align 8, !tbaa !12
  %9 = load ptr, ptr %data, align 8, !tbaa !4
  %10 = load ptr, ptr %y, align 8, !tbaa !4
  %data7 = getelementptr inbounds %struct.mv_MultiVector, ptr %10, i32 0, i32 0
  store ptr %9, ptr %data7, align 8, !tbaa !8
  %11 = load ptr, ptr %y, align 8, !tbaa !4
  %ownsData = getelementptr inbounds %struct.mv_MultiVector, ptr %11, i32 0, i32 1
  store i64 1, ptr %ownsData, align 8, !tbaa !13
  %12 = load ptr, ptr %y, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #3
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorDestroy(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %ownsData = getelementptr inbounds %struct.mv_MultiVector, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %ownsData, align 8, !tbaa !13
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %DestroyMultiVector = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %DestroyMultiVector, align 8, !tbaa !17
  %6 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8, !tbaa !8
  call void %5(ptr noundef %7)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %8 = load ptr, ptr %v.addr, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  store ptr null, ptr %v.addr, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end2, %if.then
  ret void
}

declare void @hypre_Free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorSetMask(ptr noundef %v, ptr noundef %mask) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %SetMask = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 14
  %2 = load ptr, ptr %SetMask, align 8, !tbaa !18
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load ptr, ptr %mask.addr, align 8, !tbaa !4
  call void %2(ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @mv_MultiVectorWidth(ptr noundef %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %Width = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %Width, align 8, !tbaa !19
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %data, align 8, !tbaa !8
  %call = call i64 %3(ptr noundef %5)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @mv_MultiVectorHeight(ptr noundef %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %Height = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %Height, align 8, !tbaa !20
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %data, align 8, !tbaa !8
  %call = call i64 %3(ptr noundef %5)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorClear(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %ClearMultiVector = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 16
  %2 = load ptr, ptr %ClearMultiVector, align 8, !tbaa !21
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  call void %2(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorSetRandom(ptr noundef %v, i64 noundef %seed) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %seed.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store i64 %seed, ptr %seed.addr, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %SetRandomVectors = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 17
  %2 = load ptr, ptr %SetRandomVectors, align 8, !tbaa !22
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load i64, ptr %seed.addr, align 8, !tbaa !11
  call void %2(ptr noundef %4, i64 noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorCopy(ptr noundef %src, ptr noundef %dest) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %CopyMultiVector = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 15
  %2 = load ptr, ptr %CopyMultiVector, align 8, !tbaa !23
  %3 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %data1, align 8, !tbaa !8
  call void %2(ptr noundef %4, ptr noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorAxpy(double noundef %a, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %a.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !24
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %MultiAxpy = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 22
  %2 = load ptr, ptr %MultiAxpy, align 8, !tbaa !26
  %3 = load double, ptr %a.addr, align 8, !tbaa !24
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %data, align 8, !tbaa !8
  %6 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data1, align 8, !tbaa !8
  call void %2(double noundef %3, ptr noundef %5, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorByMultiVector(ptr noundef %x, ptr noundef %y, i64 noundef %xyGHeight, i64 noundef %xyHeight, i64 noundef %xyWidth, ptr noundef %xy) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %xyGHeight.addr = alloca i64, align 8
  %xyHeight.addr = alloca i64, align 8
  %xyWidth.addr = alloca i64, align 8
  %xy.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store i64 %xyGHeight, ptr %xyGHeight.addr, align 8, !tbaa !11
  store i64 %xyHeight, ptr %xyHeight.addr, align 8, !tbaa !11
  store i64 %xyWidth, ptr %xyWidth.addr, align 8, !tbaa !11
  store ptr %xy, ptr %xy.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %MultiInnerProd = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %MultiInnerProd, align 8, !tbaa !27
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %data1, align 8, !tbaa !8
  %7 = load i64, ptr %xyGHeight.addr, align 8, !tbaa !11
  %8 = load i64, ptr %xyHeight.addr, align 8, !tbaa !11
  %9 = load i64, ptr %xyWidth.addr, align 8, !tbaa !11
  %10 = load ptr, ptr %xy.addr, align 8, !tbaa !4
  call void %2(ptr noundef %4, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorByMultiVectorDiag(ptr noundef %x, ptr noundef %y, ptr noundef %mask, i64 noundef %n, ptr noundef %d) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !11
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %MultiInnerProdDiag = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %MultiInnerProdDiag, align 8, !tbaa !28
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %data1, align 8, !tbaa !8
  %7 = load ptr, ptr %mask.addr, align 8, !tbaa !4
  %8 = load i64, ptr %n.addr, align 8, !tbaa !11
  %9 = load ptr, ptr %d.addr, align 8, !tbaa !4
  call void %2(ptr noundef %4, ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorByMatrix(ptr noundef %x, i64 noundef %rGHeight, i64 noundef %rHeight, i64 noundef %rWidth, ptr noundef %rVal, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %rGHeight.addr = alloca i64, align 8
  %rHeight.addr = alloca i64, align 8
  %rWidth.addr = alloca i64, align 8
  %rVal.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i64 %rGHeight, ptr %rGHeight.addr, align 8, !tbaa !11
  store i64 %rHeight, ptr %rHeight.addr, align 8, !tbaa !11
  store i64 %rWidth, ptr %rWidth.addr, align 8, !tbaa !11
  store ptr %rVal, ptr %rVal.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %MultiVecMat = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 20
  %2 = load ptr, ptr %MultiVecMat, align 8, !tbaa !29
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load i64, ptr %rGHeight.addr, align 8, !tbaa !11
  %6 = load i64, ptr %rHeight.addr, align 8, !tbaa !11
  %7 = load i64, ptr %rWidth.addr, align 8, !tbaa !11
  %8 = load ptr, ptr %rVal.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %data1, align 8, !tbaa !8
  call void %2(ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorXapy(ptr noundef %x, i64 noundef %rGHeight, i64 noundef %rHeight, i64 noundef %rWidth, ptr noundef %rVal, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %rGHeight.addr = alloca i64, align 8
  %rHeight.addr = alloca i64, align 8
  %rWidth.addr = alloca i64, align 8
  %rVal.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i64 %rGHeight, ptr %rGHeight.addr, align 8, !tbaa !11
  store i64 %rHeight, ptr %rHeight.addr, align 8, !tbaa !11
  store i64 %rWidth, ptr %rWidth.addr, align 8, !tbaa !11
  store ptr %rVal, ptr %rVal.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %MultiXapy = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 23
  %2 = load ptr, ptr %MultiXapy, align 8, !tbaa !30
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load i64, ptr %rGHeight.addr, align 8, !tbaa !11
  %6 = load i64, ptr %rHeight.addr, align 8, !tbaa !11
  %7 = load i64, ptr %rWidth.addr, align 8, !tbaa !11
  %8 = load ptr, ptr %rVal.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %data1, align 8, !tbaa !8
  call void %2(ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorByDiagonal(ptr noundef %x, ptr noundef %mask, i64 noundef %n, ptr noundef %d, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !11
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %MultiVecMatDiag = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 21
  %2 = load ptr, ptr %MultiVecMatDiag, align 8, !tbaa !31
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data, align 8, !tbaa !8
  %5 = load ptr, ptr %mask.addr, align 8, !tbaa !4
  %6 = load i64, ptr %n.addr, align 8, !tbaa !11
  %7 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %data1, align 8, !tbaa !8
  call void %2(ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mv_MultiVectorEval(ptr noundef %f, ptr noundef %par, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %par.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.mv_MultiVector, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %interpreter, align 8, !tbaa !12
  %Eval = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %1, i32 0, i32 24
  %2 = load ptr, ptr %Eval, align 8, !tbaa !32
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.mv_MultiVector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %data, align 8, !tbaa !8
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.mv_MultiVector, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %data1, align 8, !tbaa !8
  call void %2(ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %8)
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"mv_MultiVector", !5, i64 0, !10, i64 8, !5, i64 16}
!10 = !{!"long long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !5, i64 16}
!13 = !{!9, !10, i64 8}
!14 = !{!15, !5, i64 72}
!15 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192}
!16 = !{!15, !5, i64 80}
!17 = !{!15, !5, i64 88}
!18 = !{!15, !5, i64 112}
!19 = !{!15, !5, i64 96}
!20 = !{!15, !5, i64 104}
!21 = !{!15, !5, i64 128}
!22 = !{!15, !5, i64 136}
!23 = !{!15, !5, i64 120}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = !{!15, !5, i64 176}
!27 = !{!15, !5, i64 144}
!28 = !{!15, !5, i64 152}
!29 = !{!15, !5, i64 160}
!30 = !{!15, !5, i64 184}
!31 = !{!15, !5, i64 168}
!32 = !{!15, !5, i64 192}
