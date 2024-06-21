; ModuleID = 'samples/558.bc'
source_filename = "/local-ssd/osqp-zgbvjhrhjobwnehqqn4uvqxllqh6ai3o-build/aidengro/spack-stage-osqp-0.6.0-zgbvjhrhjobwnehqqn4uvqxllqh6ai3o/spack-src/lin_sys/direct/qdldl/qdldl_sources/src/qdldl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @QDLDL_etree(i64 noundef %n, ptr noundef %Ap, ptr noundef %Ai, ptr noundef %work, ptr noundef %Lnz, ptr noundef %etree) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %Lnz.addr = alloca ptr, align 8
  %etree.addr = alloca ptr, align 8
  %sumLnz = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %p = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  store ptr %work, ptr %work.addr, align 8, !tbaa !8
  store ptr %Lnz, ptr %Lnz.addr, align 8, !tbaa !8
  store ptr %etree, ptr %etree.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sumLnz) #3
  store i64 0, ptr %sumLnz, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %work.addr, align 8, !tbaa !8
  %3 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  store i64 0, ptr %arrayidx, align 8, !tbaa !4
  %4 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %5 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 %5
  store i64 0, ptr %arrayidx1, align 8, !tbaa !4
  %6 = load ptr, ptr %etree.addr, align 8, !tbaa !8
  %7 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %7
  store i64 -1, ptr %arrayidx2, align 8, !tbaa !4
  %8 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %9 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 %9
  %10 = load i64, ptr %arrayidx3, align 8, !tbaa !4
  %11 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %12 = load i64, ptr %i, align 8, !tbaa !4
  %add = add nsw i64 %12, 1
  %arrayidx4 = getelementptr inbounds i64, ptr %11, i64 %add
  %13 = load i64, ptr %arrayidx4, align 8, !tbaa !4
  %cmp5 = icmp eq i64 %10, %13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc34, %for.end
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp7 = icmp slt i64 %15, %16
  br i1 %cmp7, label %for.body8, label %for.end36

for.body8:                                        ; preds = %for.cond6
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load ptr, ptr %work.addr, align 8, !tbaa !8
  %19 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i64, ptr %18, i64 %19
  store i64 %17, ptr %arrayidx9, align 8, !tbaa !4
  %20 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %21 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i64, ptr %20, i64 %21
  %22 = load i64, ptr %arrayidx10, align 8, !tbaa !4
  store i64 %22, ptr %p, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc31, %for.body8
  %23 = load i64, ptr %p, align 8, !tbaa !4
  %24 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %25 = load i64, ptr %j, align 8, !tbaa !4
  %add12 = add nsw i64 %25, 1
  %arrayidx13 = getelementptr inbounds i64, ptr %24, i64 %add12
  %26 = load i64, ptr %arrayidx13, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %23, %26
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond11
  %27 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %28 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds i64, ptr %27, i64 %28
  %29 = load i64, ptr %arrayidx16, align 8, !tbaa !4
  store i64 %29, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %31 = load i64, ptr %j, align 8, !tbaa !4
  %cmp17 = icmp sgt i64 %30, %31
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body15
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %for.body15
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end19
  %32 = load ptr, ptr %work.addr, align 8, !tbaa !8
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds i64, ptr %32, i64 %33
  %34 = load i64, ptr %arrayidx20, align 8, !tbaa !4
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %cmp21 = icmp ne i64 %34, %35
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load ptr, ptr %etree.addr, align 8, !tbaa !8
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i64, ptr %36, i64 %37
  %38 = load i64, ptr %arrayidx22, align 8, !tbaa !4
  %cmp23 = icmp eq i64 %38, -1
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %while.body
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %40 = load ptr, ptr %etree.addr, align 8, !tbaa !8
  %41 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i64, ptr %40, i64 %41
  store i64 %39, ptr %arrayidx25, align 8, !tbaa !4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %while.body
  %42 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i64, ptr %42, i64 %43
  %44 = load i64, ptr %arrayidx27, align 8, !tbaa !4
  %inc28 = add nsw i64 %44, 1
  store i64 %inc28, ptr %arrayidx27, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %46 = load ptr, ptr %work.addr, align 8, !tbaa !8
  %47 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i64, ptr %46, i64 %47
  store i64 %45, ptr %arrayidx29, align 8, !tbaa !4
  %48 = load ptr, ptr %etree.addr, align 8, !tbaa !8
  %49 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds i64, ptr %48, i64 %49
  %50 = load i64, ptr %arrayidx30, align 8, !tbaa !4
  store i64 %50, ptr %i, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %for.inc31

for.inc31:                                        ; preds = %while.end
  %51 = load i64, ptr %p, align 8, !tbaa !4
  %inc32 = add nsw i64 %51, 1
  store i64 %inc32, ptr %p, align 8, !tbaa !4
  br label %for.cond11, !llvm.loop !13

for.end33:                                        ; preds = %for.cond11
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %inc35 = add nsw i64 %52, 1
  store i64 %inc35, ptr %j, align 8, !tbaa !4
  br label %for.cond6, !llvm.loop !14

for.end36:                                        ; preds = %for.cond6
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc42, %for.end36
  %53 = load i64, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp38 = icmp slt i64 %53, %54
  br i1 %cmp38, label %for.body39, label %for.end44

for.body39:                                       ; preds = %for.cond37
  %55 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %56 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds i64, ptr %55, i64 %56
  %57 = load i64, ptr %arrayidx40, align 8, !tbaa !4
  %58 = load i64, ptr %sumLnz, align 8, !tbaa !4
  %add41 = add nsw i64 %58, %57
  store i64 %add41, ptr %sumLnz, align 8, !tbaa !4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body39
  %59 = load i64, ptr %i, align 8, !tbaa !4
  %inc43 = add nsw i64 %59, 1
  store i64 %inc43, ptr %i, align 8, !tbaa !4
  br label %for.cond37, !llvm.loop !15

for.end44:                                        ; preds = %for.cond37
  %60 = load i64, ptr %sumLnz, align 8, !tbaa !4
  store i64 %60, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sumLnz) #3
  %61 = load i64, ptr %retval, align 8
  ret i64 %61
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @QDLDL_factor(i64 noundef %n, ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Ax, ptr noundef %Lp, ptr noundef %Li, ptr noundef %Lx, ptr noundef %D, ptr noundef %Dinv, ptr noundef %Lnz, ptr noundef %etree, ptr noundef %bwork, ptr noundef %iwork, ptr noundef %fwork) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %Lp.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %Dinv.addr = alloca ptr, align 8
  %Lnz.addr = alloca ptr, align 8
  %etree.addr = alloca ptr, align 8
  %bwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %fwork.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %nnzY = alloca i64, align 8
  %bidx = alloca i64, align 8
  %cidx = alloca i64, align 8
  %nextIdx = alloca i64, align 8
  %nnzE = alloca i64, align 8
  %tmpIdx = alloca i64, align 8
  %yIdx = alloca ptr, align 8
  %elimBuffer = alloca ptr, align 8
  %LNextSpaceInCol = alloca ptr, align 8
  %yVals = alloca ptr, align 8
  %yVals_cidx = alloca double, align 8
  %yMarkers = alloca ptr, align 8
  %positiveValuesInD = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !8
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  store ptr %D, ptr %D.addr, align 8, !tbaa !8
  store ptr %Dinv, ptr %Dinv.addr, align 8, !tbaa !8
  store ptr %Lnz, ptr %Lnz.addr, align 8, !tbaa !8
  store ptr %etree, ptr %etree.addr, align 8, !tbaa !8
  store ptr %bwork, ptr %bwork.addr, align 8, !tbaa !8
  store ptr %iwork, ptr %iwork.addr, align 8, !tbaa !8
  store ptr %fwork, ptr %fwork.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnzY) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bidx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cidx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextIdx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnzE) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpIdx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %yIdx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %elimBuffer) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %LNextSpaceInCol) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %yVals) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %yVals_cidx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %yMarkers) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %positiveValuesInD) #3
  store i64 0, ptr %positiveValuesInD, align 8, !tbaa !4
  %0 = load ptr, ptr %bwork.addr, align 8, !tbaa !8
  store ptr %0, ptr %yMarkers, align 8, !tbaa !8
  %1 = load ptr, ptr %iwork.addr, align 8, !tbaa !8
  store ptr %1, ptr %yIdx, align 8, !tbaa !8
  %2 = load ptr, ptr %iwork.addr, align 8, !tbaa !8
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %3
  store ptr %add.ptr, ptr %elimBuffer, align 8, !tbaa !8
  %4 = load ptr, ptr %iwork.addr, align 8, !tbaa !8
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %5, 2
  %add.ptr1 = getelementptr inbounds i64, ptr %4, i64 %mul
  store ptr %add.ptr1, ptr %LNextSpaceInCol, align 8, !tbaa !8
  %6 = load ptr, ptr %fwork.addr, align 8, !tbaa !8
  store ptr %6, ptr %yVals, align 8, !tbaa !8
  %7 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 0
  store i64 0, ptr %arrayidx, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, ptr %i, align 8, !tbaa !4
  %9 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %11 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx2, align 8, !tbaa !4
  %13 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %14 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx3, align 8, !tbaa !4
  %add = add nsw i64 %12, %15
  %16 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %17 = load i64, ptr %i, align 8, !tbaa !4
  %add4 = add nsw i64 %17, 1
  %arrayidx5 = getelementptr inbounds i64, ptr %16, i64 %add4
  store i64 %add, ptr %arrayidx5, align 8, !tbaa !4
  %18 = load ptr, ptr %yMarkers, align 8, !tbaa !8
  %19 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, ptr %18, i64 %19
  store i8 0, ptr %arrayidx6, align 1, !tbaa !16
  %20 = load ptr, ptr %yVals, align 8, !tbaa !8
  %21 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds double, ptr %20, i64 %21
  store double 0.000000e+00, ptr %arrayidx7, align 8, !tbaa !17
  %22 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %23 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds double, ptr %22, i64 %23
  store double 0.000000e+00, ptr %arrayidx8, align 8, !tbaa !17
  %24 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %25 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i64, ptr %24, i64 %25
  %26 = load i64, ptr %arrayidx9, align 8, !tbaa !4
  %27 = load ptr, ptr %LNextSpaceInCol, align 8, !tbaa !8
  %28 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i64, ptr %27, i64 %28
  store i64 %26, ptr %arrayidx10, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %29, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  %arrayidx11 = getelementptr inbounds double, ptr %30, i64 0
  %31 = load double, ptr %arrayidx11, align 8, !tbaa !17
  %32 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds double, ptr %32, i64 0
  store double %31, ptr %arrayidx12, align 8, !tbaa !17
  %33 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds double, ptr %33, i64 0
  %34 = load double, ptr %arrayidx13, align 8, !tbaa !17
  %cmp14 = fcmp oeq double %34, 0.000000e+00
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end
  %35 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds double, ptr %35, i64 0
  %36 = load double, ptr %arrayidx15, align 8, !tbaa !17
  %cmp16 = fcmp ogt double %36, 0.000000e+00
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  %37 = load i64, ptr %positiveValuesInD, align 8, !tbaa !4
  %inc18 = add nsw i64 %37, 1
  store i64 %inc18, ptr %positiveValuesInD, align 8, !tbaa !4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end
  %38 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %arrayidx20 = getelementptr inbounds double, ptr %38, i64 0
  %39 = load double, ptr %arrayidx20, align 8, !tbaa !17
  %div = fdiv double 1.000000e+00, %39
  %40 = load ptr, ptr %Dinv.addr, align 8, !tbaa !8
  %arrayidx21 = getelementptr inbounds double, ptr %40, i64 0
  store double %div, ptr %arrayidx21, align 8, !tbaa !17
  store i64 1, ptr %k, align 8, !tbaa !4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc118, %if.end19
  %41 = load i64, ptr %k, align 8, !tbaa !4
  %42 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp23 = icmp slt i64 %41, %42
  br i1 %cmp23, label %for.body24, label %for.end120

for.body24:                                       ; preds = %for.cond22
  store i64 0, ptr %nnzY, align 8, !tbaa !4
  %43 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %44 = load i64, ptr %k, align 8, !tbaa !4
  %add25 = add nsw i64 %44, 1
  %arrayidx26 = getelementptr inbounds i64, ptr %43, i64 %add25
  %45 = load i64, ptr %arrayidx26, align 8, !tbaa !4
  store i64 %45, ptr %tmpIdx, align 8, !tbaa !4
  %46 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %47 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx27, align 8, !tbaa !4
  store i64 %48, ptr %i, align 8, !tbaa !4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc67, %for.body24
  %49 = load i64, ptr %i, align 8, !tbaa !4
  %50 = load i64, ptr %tmpIdx, align 8, !tbaa !4
  %cmp29 = icmp slt i64 %49, %50
  br i1 %cmp29, label %for.body30, label %for.end69

for.body30:                                       ; preds = %for.cond28
  %51 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds i64, ptr %51, i64 %52
  %53 = load i64, ptr %arrayidx31, align 8, !tbaa !4
  store i64 %53, ptr %bidx, align 8, !tbaa !4
  %54 = load i64, ptr %bidx, align 8, !tbaa !4
  %55 = load i64, ptr %k, align 8, !tbaa !4
  %cmp32 = icmp eq i64 %54, %55
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.body30
  %56 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  %57 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds double, ptr %56, i64 %57
  %58 = load double, ptr %arrayidx34, align 8, !tbaa !17
  %59 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %60 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds double, ptr %59, i64 %60
  store double %58, ptr %arrayidx35, align 8, !tbaa !17
  br label %for.inc67

if.end36:                                         ; preds = %for.body30
  %61 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  %62 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds double, ptr %61, i64 %62
  %63 = load double, ptr %arrayidx37, align 8, !tbaa !17
  %64 = load ptr, ptr %yVals, align 8, !tbaa !8
  %65 = load i64, ptr %bidx, align 8, !tbaa !4
  %arrayidx38 = getelementptr inbounds double, ptr %64, i64 %65
  store double %63, ptr %arrayidx38, align 8, !tbaa !17
  %66 = load i64, ptr %bidx, align 8, !tbaa !4
  store i64 %66, ptr %nextIdx, align 8, !tbaa !4
  %67 = load ptr, ptr %yMarkers, align 8, !tbaa !8
  %68 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds i8, ptr %67, i64 %68
  %69 = load i8, ptr %arrayidx39, align 1, !tbaa !16
  %conv = zext i8 %69 to i32
  %cmp40 = icmp eq i32 %conv, 0
  br i1 %cmp40, label %if.then42, label %if.end66

if.then42:                                        ; preds = %if.end36
  %70 = load ptr, ptr %yMarkers, align 8, !tbaa !8
  %71 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i8, ptr %70, i64 %71
  store i8 1, ptr %arrayidx43, align 1, !tbaa !16
  %72 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %73 = load ptr, ptr %elimBuffer, align 8, !tbaa !8
  %arrayidx44 = getelementptr inbounds i64, ptr %73, i64 0
  store i64 %72, ptr %arrayidx44, align 8, !tbaa !4
  store i64 1, ptr %nnzE, align 8, !tbaa !4
  %74 = load ptr, ptr %etree.addr, align 8, !tbaa !8
  %75 = load i64, ptr %bidx, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds i64, ptr %74, i64 %75
  %76 = load i64, ptr %arrayidx45, align 8, !tbaa !4
  store i64 %76, ptr %nextIdx, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.then42
  %77 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %cmp46 = icmp ne i64 %77, -1
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %78 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %79 = load i64, ptr %k, align 8, !tbaa !4
  %cmp48 = icmp slt i64 %78, %79
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %81 = load ptr, ptr %yMarkers, align 8, !tbaa !8
  %82 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %arrayidx50 = getelementptr inbounds i8, ptr %81, i64 %82
  %83 = load i8, ptr %arrayidx50, align 1, !tbaa !16
  %conv51 = zext i8 %83 to i32
  %cmp52 = icmp eq i32 %conv51, 1
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %while.body
  br label %while.end

if.end55:                                         ; preds = %while.body
  %84 = load ptr, ptr %yMarkers, align 8, !tbaa !8
  %85 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %arrayidx56 = getelementptr inbounds i8, ptr %84, i64 %85
  store i8 1, ptr %arrayidx56, align 1, !tbaa !16
  %86 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %87 = load ptr, ptr %elimBuffer, align 8, !tbaa !8
  %88 = load i64, ptr %nnzE, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds i64, ptr %87, i64 %88
  store i64 %86, ptr %arrayidx57, align 8, !tbaa !4
  %89 = load i64, ptr %nnzE, align 8, !tbaa !4
  %inc58 = add nsw i64 %89, 1
  store i64 %inc58, ptr %nnzE, align 8, !tbaa !4
  %90 = load ptr, ptr %etree.addr, align 8, !tbaa !8
  %91 = load i64, ptr %nextIdx, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds i64, ptr %90, i64 %91
  %92 = load i64, ptr %arrayidx59, align 8, !tbaa !4
  store i64 %92, ptr %nextIdx, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %if.then54, %land.end
  br label %while.cond60

while.cond60:                                     ; preds = %while.body61, %while.end
  %93 = load i64, ptr %nnzE, align 8, !tbaa !4
  %tobool = icmp ne i64 %93, 0
  br i1 %tobool, label %while.body61, label %while.end65

while.body61:                                     ; preds = %while.cond60
  %94 = load ptr, ptr %elimBuffer, align 8, !tbaa !8
  %95 = load i64, ptr %nnzE, align 8, !tbaa !4
  %dec = add nsw i64 %95, -1
  store i64 %dec, ptr %nnzE, align 8, !tbaa !4
  %arrayidx62 = getelementptr inbounds i64, ptr %94, i64 %dec
  %96 = load i64, ptr %arrayidx62, align 8, !tbaa !4
  %97 = load ptr, ptr %yIdx, align 8, !tbaa !8
  %98 = load i64, ptr %nnzY, align 8, !tbaa !4
  %inc63 = add nsw i64 %98, 1
  store i64 %inc63, ptr %nnzY, align 8, !tbaa !4
  %arrayidx64 = getelementptr inbounds i64, ptr %97, i64 %98
  store i64 %96, ptr %arrayidx64, align 8, !tbaa !4
  br label %while.cond60, !llvm.loop !21

while.end65:                                      ; preds = %while.cond60
  br label %if.end66

if.end66:                                         ; preds = %while.end65, %if.end36
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66, %if.then33
  %99 = load i64, ptr %i, align 8, !tbaa !4
  %inc68 = add nsw i64 %99, 1
  store i64 %inc68, ptr %i, align 8, !tbaa !4
  br label %for.cond28, !llvm.loop !22

for.end69:                                        ; preds = %for.cond28
  %100 = load i64, ptr %nnzY, align 8, !tbaa !4
  %sub = sub nsw i64 %100, 1
  store i64 %sub, ptr %i, align 8, !tbaa !4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %101 = load i64, ptr %i, align 8, !tbaa !4
  %cmp71 = icmp sge i64 %101, 0
  br i1 %cmp71, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  %102 = load ptr, ptr %yIdx, align 8, !tbaa !8
  %103 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds i64, ptr %102, i64 %103
  %104 = load i64, ptr %arrayidx74, align 8, !tbaa !4
  store i64 %104, ptr %cidx, align 8, !tbaa !4
  %105 = load ptr, ptr %LNextSpaceInCol, align 8, !tbaa !8
  %106 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds i64, ptr %105, i64 %106
  %107 = load i64, ptr %arrayidx75, align 8, !tbaa !4
  store i64 %107, ptr %tmpIdx, align 8, !tbaa !4
  %108 = load ptr, ptr %yVals, align 8, !tbaa !8
  %109 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx76 = getelementptr inbounds double, ptr %108, i64 %109
  %110 = load double, ptr %arrayidx76, align 8, !tbaa !17
  store double %110, ptr %yVals_cidx, align 8, !tbaa !17
  %111 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %112 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx77 = getelementptr inbounds i64, ptr %111, i64 %112
  %113 = load i64, ptr %arrayidx77, align 8, !tbaa !4
  store i64 %113, ptr %j, align 8, !tbaa !4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc86, %for.body73
  %114 = load i64, ptr %j, align 8, !tbaa !4
  %115 = load i64, ptr %tmpIdx, align 8, !tbaa !4
  %cmp79 = icmp slt i64 %114, %115
  br i1 %cmp79, label %for.body81, label %for.end88

for.body81:                                       ; preds = %for.cond78
  %116 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %117 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds double, ptr %116, i64 %117
  %118 = load double, ptr %arrayidx82, align 8, !tbaa !17
  %119 = load double, ptr %yVals_cidx, align 8, !tbaa !17
  %120 = load ptr, ptr %yVals, align 8, !tbaa !8
  %121 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %122 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds i64, ptr %121, i64 %122
  %123 = load i64, ptr %arrayidx84, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds double, ptr %120, i64 %123
  %124 = load double, ptr %arrayidx85, align 8, !tbaa !17
  %neg = fneg double %118
  %125 = call double @llvm.fmuladd.f64(double %neg, double %119, double %124)
  store double %125, ptr %arrayidx85, align 8, !tbaa !17
  br label %for.inc86

for.inc86:                                        ; preds = %for.body81
  %126 = load i64, ptr %j, align 8, !tbaa !4
  %inc87 = add nsw i64 %126, 1
  store i64 %inc87, ptr %j, align 8, !tbaa !4
  br label %for.cond78, !llvm.loop !23

for.end88:                                        ; preds = %for.cond78
  %127 = load i64, ptr %k, align 8, !tbaa !4
  %128 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %129 = load i64, ptr %tmpIdx, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds i64, ptr %128, i64 %129
  store i64 %127, ptr %arrayidx89, align 8, !tbaa !4
  %130 = load double, ptr %yVals_cidx, align 8, !tbaa !17
  %131 = load ptr, ptr %Dinv.addr, align 8, !tbaa !8
  %132 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds double, ptr %131, i64 %132
  %133 = load double, ptr %arrayidx90, align 8, !tbaa !17
  %mul91 = fmul double %130, %133
  %134 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %135 = load i64, ptr %tmpIdx, align 8, !tbaa !4
  %arrayidx92 = getelementptr inbounds double, ptr %134, i64 %135
  store double %mul91, ptr %arrayidx92, align 8, !tbaa !17
  %136 = load double, ptr %yVals_cidx, align 8, !tbaa !17
  %137 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %138 = load i64, ptr %tmpIdx, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds double, ptr %137, i64 %138
  %139 = load double, ptr %arrayidx93, align 8, !tbaa !17
  %140 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %141 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds double, ptr %140, i64 %141
  %142 = load double, ptr %arrayidx95, align 8, !tbaa !17
  %neg96 = fneg double %136
  %143 = call double @llvm.fmuladd.f64(double %neg96, double %139, double %142)
  store double %143, ptr %arrayidx95, align 8, !tbaa !17
  %144 = load ptr, ptr %LNextSpaceInCol, align 8, !tbaa !8
  %145 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds i64, ptr %144, i64 %145
  %146 = load i64, ptr %arrayidx97, align 8, !tbaa !4
  %inc98 = add nsw i64 %146, 1
  store i64 %inc98, ptr %arrayidx97, align 8, !tbaa !4
  %147 = load ptr, ptr %yVals, align 8, !tbaa !8
  %148 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx99 = getelementptr inbounds double, ptr %147, i64 %148
  store double 0.000000e+00, ptr %arrayidx99, align 8, !tbaa !17
  %149 = load ptr, ptr %yMarkers, align 8, !tbaa !8
  %150 = load i64, ptr %cidx, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i8, ptr %149, i64 %150
  store i8 0, ptr %arrayidx100, align 1, !tbaa !16
  br label %for.inc101

for.inc101:                                       ; preds = %for.end88
  %151 = load i64, ptr %i, align 8, !tbaa !4
  %dec102 = add nsw i64 %151, -1
  store i64 %dec102, ptr %i, align 8, !tbaa !4
  br label %for.cond70, !llvm.loop !24

for.end103:                                       ; preds = %for.cond70
  %152 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %153 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds double, ptr %152, i64 %153
  %154 = load double, ptr %arrayidx104, align 8, !tbaa !17
  %cmp105 = fcmp oeq double %154, 0.000000e+00
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %for.end103
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end108:                                        ; preds = %for.end103
  %155 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %156 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds double, ptr %155, i64 %156
  %157 = load double, ptr %arrayidx109, align 8, !tbaa !17
  %cmp110 = fcmp ogt double %157, 0.000000e+00
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end108
  %158 = load i64, ptr %positiveValuesInD, align 8, !tbaa !4
  %inc113 = add nsw i64 %158, 1
  store i64 %inc113, ptr %positiveValuesInD, align 8, !tbaa !4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end108
  %159 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %160 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds double, ptr %159, i64 %160
  %161 = load double, ptr %arrayidx115, align 8, !tbaa !17
  %div116 = fdiv double 1.000000e+00, %161
  %162 = load ptr, ptr %Dinv.addr, align 8, !tbaa !8
  %163 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds double, ptr %162, i64 %163
  store double %div116, ptr %arrayidx117, align 8, !tbaa !17
  br label %for.inc118

for.inc118:                                       ; preds = %if.end114
  %164 = load i64, ptr %k, align 8, !tbaa !4
  %inc119 = add nsw i64 %164, 1
  store i64 %inc119, ptr %k, align 8, !tbaa !4
  br label %for.cond22, !llvm.loop !25

for.end120:                                       ; preds = %for.cond22
  %165 = load i64, ptr %positiveValuesInD, align 8, !tbaa !4
  store i64 %165, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end120, %if.then107, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %positiveValuesInD) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yMarkers) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yVals_cidx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yVals) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %LNextSpaceInCol) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %elimBuffer) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yIdx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpIdx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnzE) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextIdx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cidx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bidx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnzY) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  %166 = load i64, ptr %retval, align 8
  ret i64 %166
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define void @QDLDL_Lsolve(i64 noundef %n, ptr noundef %Lp, ptr noundef %Li, ptr noundef %Lx, ptr noundef %x) #0 {
entry:
  %n.addr = alloca i64, align 8
  %Lp.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  store ptr %x, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %3 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !4
  store i64 %4, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %j, align 8, !tbaa !4
  %6 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %7 = load i64, ptr %i, align 8, !tbaa !4
  %add = add nsw i64 %7, 1
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %add
  %8 = load i64, ptr %arrayidx2, align 8, !tbaa !4
  %cmp3 = icmp slt i64 %5, %8
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 %10
  %11 = load double, ptr %arrayidx5, align 8, !tbaa !17
  %12 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %13 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds double, ptr %12, i64 %13
  %14 = load double, ptr %arrayidx6, align 8, !tbaa !17
  %15 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx7, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 %18
  %19 = load double, ptr %arrayidx8, align 8, !tbaa !17
  %neg = fneg double %11
  %20 = call double @llvm.fmuladd.f64(double %neg, double %14, double %19)
  store double %20, ptr %arrayidx8, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %21 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond1, !llvm.loop !26

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %22 = load i64, ptr %i, align 8, !tbaa !4
  %inc10 = add nsw i64 %22, 1
  store i64 %inc10, ptr %i, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !27

for.end11:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @QDLDL_Ltsolve(i64 noundef %n, ptr noundef %Lp, ptr noundef %Li, ptr noundef %Lx, ptr noundef %x) #0 {
entry:
  %n.addr = alloca i64, align 8
  %Lp.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  store ptr %x, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub nsw i64 %0, 1
  store i64 %sub, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !4
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %3 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !4
  store i64 %4, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %j, align 8, !tbaa !4
  %6 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %7 = load i64, ptr %i, align 8, !tbaa !4
  %add = add nsw i64 %7, 1
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %add
  %8 = load i64, ptr %arrayidx2, align 8, !tbaa !4
  %cmp3 = icmp slt i64 %5, %8
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 %10
  %11 = load double, ptr %arrayidx5, align 8, !tbaa !17
  %12 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %13 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx6, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds double, ptr %12, i64 %15
  %16 = load double, ptr %arrayidx7, align 8, !tbaa !17
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %18 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds double, ptr %17, i64 %18
  %19 = load double, ptr %arrayidx8, align 8, !tbaa !17
  %neg = fneg double %11
  %20 = call double @llvm.fmuladd.f64(double %neg, double %16, double %19)
  store double %20, ptr %arrayidx8, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %21 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond1, !llvm.loop !28

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %22 = load i64, ptr %i, align 8, !tbaa !4
  %dec = add nsw i64 %22, -1
  store i64 %dec, ptr %i, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !29

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @QDLDL_solve(i64 noundef %n, ptr noundef %Lp, ptr noundef %Li, ptr noundef %Lx, ptr noundef %Dinv, ptr noundef %x) #0 {
entry:
  %n.addr = alloca i64, align 8
  %Lp.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %Dinv.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  store ptr %Dinv, ptr %Dinv.addr, align 8, !tbaa !8
  store ptr %x, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !8
  call void @QDLDL_Lsolve(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8, !tbaa !4
  %6 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %Dinv.addr, align 8, !tbaa !8
  %8 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %7, i64 %8
  %9 = load double, ptr %arrayidx, align 8, !tbaa !17
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %11 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double, ptr %10, i64 %11
  %12 = load double, ptr %arrayidx1, align 8, !tbaa !17
  %mul = fmul double %12, %9
  store double %mul, ptr %arrayidx1, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %n.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %17 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %18 = load ptr, ptr %x.addr, align 8, !tbaa !8
  call void @QDLDL_Ltsolve(i64 noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
