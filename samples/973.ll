; ModuleID = 'samples/973.bc'
source_filename = "../Source/ldl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @ldl_l_symbolic(i64 noundef %n, ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Lp, ptr noundef %Parent, ptr noundef %Lnz, ptr noundef %Flag, ptr noundef %P, ptr noundef %Pinv) #0 {
entry:
  %n.addr = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Lp.addr = alloca ptr, align 8
  %Parent.addr = alloca ptr, align 8
  %Lnz.addr = alloca ptr, align 8
  %Flag.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Pinv.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %p = alloca i64, align 8
  %kk = alloca i64, align 8
  %p2 = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Parent, ptr %Parent.addr, align 8, !tbaa !8
  store ptr %Lnz, ptr %Lnz.addr, align 8, !tbaa !8
  store ptr %Flag, ptr %Flag.addr, align 8, !tbaa !8
  store ptr %P, ptr %P.addr, align 8, !tbaa !8
  store ptr %Pinv, ptr %Pinv.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #3
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, ptr %k, align 8, !tbaa !4
  %2 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %k, align 8, !tbaa !4
  %4 = load ptr, ptr %Pinv.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %6 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 %7
  store i64 %3, ptr %arrayidx1, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %k, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %k, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc44, %if.end
  %9 = load i64, ptr %k, align 8, !tbaa !4
  %10 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp3 = icmp slt i64 %9, %10
  br i1 %cmp3, label %for.body4, label %for.end46

for.body4:                                        ; preds = %for.cond2
  %11 = load ptr, ptr %Parent.addr, align 8, !tbaa !8
  %12 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 %12
  store i64 -1, ptr %arrayidx5, align 8, !tbaa !4
  %13 = load i64, ptr %k, align 8, !tbaa !4
  %14 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %15 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i64, ptr %14, i64 %15
  store i64 %13, ptr %arrayidx6, align 8, !tbaa !4
  %16 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %17 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i64, ptr %16, i64 %17
  store i64 0, ptr %arrayidx7, align 8, !tbaa !4
  %18 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %tobool8 = icmp ne ptr %18, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body4
  %19 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %20 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx9, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %for.body4
  %22 = load i64, ptr %k, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %22, %cond.false ]
  store i64 %cond, ptr %kk, align 8, !tbaa !4
  %23 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %24 = load i64, ptr %kk, align 8, !tbaa !4
  %add = add nsw i64 %24, 1
  %arrayidx10 = getelementptr inbounds i64, ptr %23, i64 %add
  %25 = load i64, ptr %arrayidx10, align 8, !tbaa !4
  store i64 %25, ptr %p2, align 8, !tbaa !4
  %26 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %27 = load i64, ptr %kk, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i64, ptr %26, i64 %27
  %28 = load i64, ptr %arrayidx11, align 8, !tbaa !4
  store i64 %28, ptr %p, align 8, !tbaa !4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %cond.end
  %29 = load i64, ptr %p, align 8, !tbaa !4
  %30 = load i64, ptr %p2, align 8, !tbaa !4
  %cmp13 = icmp slt i64 %29, %30
  br i1 %cmp13, label %for.body14, label %for.end43

for.body14:                                       ; preds = %for.cond12
  %31 = load ptr, ptr %Pinv.addr, align 8, !tbaa !8
  %tobool15 = icmp ne ptr %31, null
  br i1 %tobool15, label %cond.true16, label %cond.false19

cond.true16:                                      ; preds = %for.body14
  %32 = load ptr, ptr %Pinv.addr, align 8, !tbaa !8
  %33 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %34 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds i64, ptr %33, i64 %34
  %35 = load i64, ptr %arrayidx17, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i64, ptr %32, i64 %35
  %36 = load i64, ptr %arrayidx18, align 8, !tbaa !4
  br label %cond.end21

cond.false19:                                     ; preds = %for.body14
  %37 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %38 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds i64, ptr %37, i64 %38
  %39 = load i64, ptr %arrayidx20, align 8, !tbaa !4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %cond.true16
  %cond22 = phi i64 [ %36, %cond.true16 ], [ %39, %cond.false19 ]
  store i64 %cond22, ptr %i, align 8, !tbaa !4
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %41 = load i64, ptr %k, align 8, !tbaa !4
  %cmp23 = icmp slt i64 %40, %41
  br i1 %cmp23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %cond.end21
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %if.then24
  %42 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i64, ptr %42, i64 %43
  %44 = load i64, ptr %arrayidx26, align 8, !tbaa !4
  %45 = load i64, ptr %k, align 8, !tbaa !4
  %cmp27 = icmp ne i64 %44, %45
  br i1 %cmp27, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond25
  %46 = load ptr, ptr %Parent.addr, align 8, !tbaa !8
  %47 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx29, align 8, !tbaa !4
  %cmp30 = icmp eq i64 %48, -1
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %for.body28
  %49 = load i64, ptr %k, align 8, !tbaa !4
  %50 = load ptr, ptr %Parent.addr, align 8, !tbaa !8
  %51 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds i64, ptr %50, i64 %51
  store i64 %49, ptr %arrayidx32, align 8, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.body28
  %52 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %53 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds i64, ptr %52, i64 %53
  %54 = load i64, ptr %arrayidx34, align 8, !tbaa !4
  %inc35 = add nsw i64 %54, 1
  store i64 %inc35, ptr %arrayidx34, align 8, !tbaa !4
  %55 = load i64, ptr %k, align 8, !tbaa !4
  %56 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %57 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds i64, ptr %56, i64 %57
  store i64 %55, ptr %arrayidx36, align 8, !tbaa !4
  br label %for.inc37

for.inc37:                                        ; preds = %if.end33
  %58 = load ptr, ptr %Parent.addr, align 8, !tbaa !8
  %59 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx38 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx38, align 8, !tbaa !4
  store i64 %60, ptr %i, align 8, !tbaa !4
  br label %for.cond25, !llvm.loop !12

for.end39:                                        ; preds = %for.cond25
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %cond.end21
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %61 = load i64, ptr %p, align 8, !tbaa !4
  %inc42 = add nsw i64 %61, 1
  store i64 %inc42, ptr %p, align 8, !tbaa !4
  br label %for.cond12, !llvm.loop !13

for.end43:                                        ; preds = %for.cond12
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %62 = load i64, ptr %k, align 8, !tbaa !4
  %inc45 = add nsw i64 %62, 1
  store i64 %inc45, ptr %k, align 8, !tbaa !4
  br label %for.cond2, !llvm.loop !14

for.end46:                                        ; preds = %for.cond2
  %63 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %arrayidx47 = getelementptr inbounds i64, ptr %63, i64 0
  store i64 0, ptr %arrayidx47, align 8, !tbaa !4
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc56, %for.end46
  %64 = load i64, ptr %k, align 8, !tbaa !4
  %65 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp49 = icmp slt i64 %64, %65
  br i1 %cmp49, label %for.body50, label %for.end58

for.body50:                                       ; preds = %for.cond48
  %66 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %67 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds i64, ptr %66, i64 %67
  %68 = load i64, ptr %arrayidx51, align 8, !tbaa !4
  %69 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %70 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx52 = getelementptr inbounds i64, ptr %69, i64 %70
  %71 = load i64, ptr %arrayidx52, align 8, !tbaa !4
  %add53 = add nsw i64 %68, %71
  %72 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %73 = load i64, ptr %k, align 8, !tbaa !4
  %add54 = add nsw i64 %73, 1
  %arrayidx55 = getelementptr inbounds i64, ptr %72, i64 %add54
  store i64 %add53, ptr %arrayidx55, align 8, !tbaa !4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body50
  %74 = load i64, ptr %k, align 8, !tbaa !4
  %inc57 = add nsw i64 %74, 1
  store i64 %inc57, ptr %k, align 8, !tbaa !4
  br label %for.cond48, !llvm.loop !15

for.end58:                                        ; preds = %for.cond48
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @ldl_l_numeric(i64 noundef %n, ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Ax, ptr noundef %Lp, ptr noundef %Parent, ptr noundef %Lnz, ptr noundef %Li, ptr noundef %Lx, ptr noundef %D, ptr noundef %Y, ptr noundef %Pattern, ptr noundef %Flag, ptr noundef %P, ptr noundef %Pinv) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %Lp.addr = alloca ptr, align 8
  %Parent.addr = alloca ptr, align 8
  %Lnz.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %Y.addr = alloca ptr, align 8
  %Pattern.addr = alloca ptr, align 8
  %Flag.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Pinv.addr = alloca ptr, align 8
  %yi = alloca double, align 8
  %l_ki = alloca double, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %p = alloca i64, align 8
  %kk = alloca i64, align 8
  %p2 = alloca i64, align 8
  %len = alloca i64, align 8
  %top = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !8
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Parent, ptr %Parent.addr, align 8, !tbaa !8
  store ptr %Lnz, ptr %Lnz.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  store ptr %D, ptr %D.addr, align 8, !tbaa !8
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !8
  store ptr %Pattern, ptr %Pattern.addr, align 8, !tbaa !8
  store ptr %Flag, ptr %Flag.addr, align 8, !tbaa !8
  store ptr %P, ptr %P.addr, align 8, !tbaa !8
  store ptr %Pinv, ptr %Pinv.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_ki) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #3
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc71, %entry
  %0 = load i64, ptr %k, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end73

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %3 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %3
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !16
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  store i64 %4, ptr %top, align 8, !tbaa !4
  %5 = load i64, ptr %k, align 8, !tbaa !4
  %6 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %7 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i64 %7
  store i64 %5, ptr %arrayidx1, align 8, !tbaa !4
  %8 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %9 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i64, ptr %8, i64 %9
  store i64 0, ptr %arrayidx2, align 8, !tbaa !4
  %10 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %12 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i64 %12
  %13 = load i64, ptr %arrayidx3, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i64, ptr %k, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ]
  store i64 %cond, ptr %kk, align 8, !tbaa !4
  %15 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %16 = load i64, ptr %kk, align 8, !tbaa !4
  %add = add nsw i64 %16, 1
  %arrayidx4 = getelementptr inbounds i64, ptr %15, i64 %add
  %17 = load i64, ptr %arrayidx4, align 8, !tbaa !4
  store i64 %17, ptr %p2, align 8, !tbaa !4
  %18 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %19 = load i64, ptr %kk, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load i64, ptr %arrayidx5, align 8, !tbaa !4
  store i64 %20, ptr %p, align 8, !tbaa !4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc32, %cond.end
  %21 = load i64, ptr %p, align 8, !tbaa !4
  %22 = load i64, ptr %p2, align 8, !tbaa !4
  %cmp7 = icmp slt i64 %21, %22
  br i1 %cmp7, label %for.body8, label %for.end34

for.body8:                                        ; preds = %for.cond6
  %23 = load ptr, ptr %Pinv.addr, align 8, !tbaa !8
  %tobool9 = icmp ne ptr %23, null
  br i1 %tobool9, label %cond.true10, label %cond.false13

cond.true10:                                      ; preds = %for.body8
  %24 = load ptr, ptr %Pinv.addr, align 8, !tbaa !8
  %25 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %26 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i64, ptr %25, i64 %26
  %27 = load i64, ptr %arrayidx11, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i64, ptr %24, i64 %27
  %28 = load i64, ptr %arrayidx12, align 8, !tbaa !4
  br label %cond.end15

cond.false13:                                     ; preds = %for.body8
  %29 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %30 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i64, ptr %29, i64 %30
  %31 = load i64, ptr %arrayidx14, align 8, !tbaa !4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true10
  %cond16 = phi i64 [ %28, %cond.true10 ], [ %31, %cond.false13 ]
  store i64 %cond16, ptr %i, align 8, !tbaa !4
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %33 = load i64, ptr %k, align 8, !tbaa !4
  %cmp17 = icmp sle i64 %32, %33
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end15
  %34 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  %35 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds double, ptr %34, i64 %35
  %36 = load double, ptr %arrayidx18, align 8, !tbaa !16
  %37 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds double, ptr %37, i64 %38
  %39 = load double, ptr %arrayidx19, align 8, !tbaa !16
  %add20 = fadd double %39, %36
  store double %add20, ptr %arrayidx19, align 8, !tbaa !16
  store i64 0, ptr %len, align 8, !tbaa !4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %if.then
  %40 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %41 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i64, ptr %40, i64 %41
  %42 = load i64, ptr %arrayidx22, align 8, !tbaa !4
  %43 = load i64, ptr %k, align 8, !tbaa !4
  %cmp23 = icmp ne i64 %42, %43
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %44 = load i64, ptr %i, align 8, !tbaa !4
  %45 = load ptr, ptr %Pattern.addr, align 8, !tbaa !8
  %46 = load i64, ptr %len, align 8, !tbaa !4
  %inc = add nsw i64 %46, 1
  store i64 %inc, ptr %len, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i64, ptr %45, i64 %46
  store i64 %44, ptr %arrayidx25, align 8, !tbaa !4
  %47 = load i64, ptr %k, align 8, !tbaa !4
  %48 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %49 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i64, ptr %48, i64 %49
  store i64 %47, ptr %arrayidx26, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %50 = load ptr, ptr %Parent.addr, align 8, !tbaa !8
  %51 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i64, ptr %50, i64 %51
  %52 = load i64, ptr %arrayidx27, align 8, !tbaa !4
  store i64 %52, ptr %i, align 8, !tbaa !4
  br label %for.cond21, !llvm.loop !18

for.end:                                          ; preds = %for.cond21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %53 = load i64, ptr %len, align 8, !tbaa !4
  %cmp28 = icmp sgt i64 %53, 0
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load ptr, ptr %Pattern.addr, align 8, !tbaa !8
  %55 = load i64, ptr %len, align 8, !tbaa !4
  %dec = add nsw i64 %55, -1
  store i64 %dec, ptr %len, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i64, ptr %54, i64 %dec
  %56 = load i64, ptr %arrayidx29, align 8, !tbaa !4
  %57 = load ptr, ptr %Pattern.addr, align 8, !tbaa !8
  %58 = load i64, ptr %top, align 8, !tbaa !4
  %dec30 = add nsw i64 %58, -1
  store i64 %dec30, ptr %top, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds i64, ptr %57, i64 %dec30
  store i64 %56, ptr %arrayidx31, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end15
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %59 = load i64, ptr %p, align 8, !tbaa !4
  %inc33 = add nsw i64 %59, 1
  store i64 %inc33, ptr %p, align 8, !tbaa !4
  br label %for.cond6, !llvm.loop !20

for.end34:                                        ; preds = %for.cond6
  %60 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %61 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds double, ptr %60, i64 %61
  %62 = load double, ptr %arrayidx35, align 8, !tbaa !16
  %63 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %64 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds double, ptr %63, i64 %64
  store double %62, ptr %arrayidx36, align 8, !tbaa !16
  %65 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %66 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds double, ptr %65, i64 %66
  store double 0.000000e+00, ptr %arrayidx37, align 8, !tbaa !16
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc64, %for.end34
  %67 = load i64, ptr %top, align 8, !tbaa !4
  %68 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp39 = icmp slt i64 %67, %68
  br i1 %cmp39, label %for.body40, label %for.end66

for.body40:                                       ; preds = %for.cond38
  %69 = load ptr, ptr %Pattern.addr, align 8, !tbaa !8
  %70 = load i64, ptr %top, align 8, !tbaa !4
  %arrayidx41 = getelementptr inbounds i64, ptr %69, i64 %70
  %71 = load i64, ptr %arrayidx41, align 8, !tbaa !4
  store i64 %71, ptr %i, align 8, !tbaa !4
  %72 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %73 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds double, ptr %72, i64 %73
  %74 = load double, ptr %arrayidx42, align 8, !tbaa !16
  store double %74, ptr %yi, align 8, !tbaa !16
  %75 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %76 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds double, ptr %75, i64 %76
  store double 0.000000e+00, ptr %arrayidx43, align 8, !tbaa !16
  %77 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %78 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds i64, ptr %77, i64 %78
  %79 = load i64, ptr %arrayidx44, align 8, !tbaa !4
  %80 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds i64, ptr %80, i64 %81
  %82 = load i64, ptr %arrayidx45, align 8, !tbaa !4
  %add46 = add nsw i64 %79, %82
  store i64 %add46, ptr %p2, align 8, !tbaa !4
  %83 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %84 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx47 = getelementptr inbounds i64, ptr %83, i64 %84
  %85 = load i64, ptr %arrayidx47, align 8, !tbaa !4
  store i64 %85, ptr %p, align 8, !tbaa !4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body40
  %86 = load i64, ptr %p, align 8, !tbaa !4
  %87 = load i64, ptr %p2, align 8, !tbaa !4
  %cmp49 = icmp slt i64 %86, %87
  br i1 %cmp49, label %for.body50, label %for.end56

for.body50:                                       ; preds = %for.cond48
  %88 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %89 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds double, ptr %88, i64 %89
  %90 = load double, ptr %arrayidx51, align 8, !tbaa !16
  %91 = load double, ptr %yi, align 8, !tbaa !16
  %92 = load ptr, ptr %Y.addr, align 8, !tbaa !8
  %93 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %94 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx52 = getelementptr inbounds i64, ptr %93, i64 %94
  %95 = load i64, ptr %arrayidx52, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds double, ptr %92, i64 %95
  %96 = load double, ptr %arrayidx53, align 8, !tbaa !16
  %neg = fneg double %90
  %97 = call double @llvm.fmuladd.f64(double %neg, double %91, double %96)
  store double %97, ptr %arrayidx53, align 8, !tbaa !16
  br label %for.inc54

for.inc54:                                        ; preds = %for.body50
  %98 = load i64, ptr %p, align 8, !tbaa !4
  %inc55 = add nsw i64 %98, 1
  store i64 %inc55, ptr %p, align 8, !tbaa !4
  br label %for.cond48, !llvm.loop !21

for.end56:                                        ; preds = %for.cond48
  %99 = load double, ptr %yi, align 8, !tbaa !16
  %100 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %101 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds double, ptr %100, i64 %101
  %102 = load double, ptr %arrayidx57, align 8, !tbaa !16
  %div = fdiv double %99, %102
  store double %div, ptr %l_ki, align 8, !tbaa !16
  %103 = load double, ptr %l_ki, align 8, !tbaa !16
  %104 = load double, ptr %yi, align 8, !tbaa !16
  %105 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %106 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx58 = getelementptr inbounds double, ptr %105, i64 %106
  %107 = load double, ptr %arrayidx58, align 8, !tbaa !16
  %neg59 = fneg double %103
  %108 = call double @llvm.fmuladd.f64(double %neg59, double %104, double %107)
  store double %108, ptr %arrayidx58, align 8, !tbaa !16
  %109 = load i64, ptr %k, align 8, !tbaa !4
  %110 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %111 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds i64, ptr %110, i64 %111
  store i64 %109, ptr %arrayidx60, align 8, !tbaa !4
  %112 = load double, ptr %l_ki, align 8, !tbaa !16
  %113 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %114 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds double, ptr %113, i64 %114
  store double %112, ptr %arrayidx61, align 8, !tbaa !16
  %115 = load ptr, ptr %Lnz.addr, align 8, !tbaa !8
  %116 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx62 = getelementptr inbounds i64, ptr %115, i64 %116
  %117 = load i64, ptr %arrayidx62, align 8, !tbaa !4
  %inc63 = add nsw i64 %117, 1
  store i64 %inc63, ptr %arrayidx62, align 8, !tbaa !4
  br label %for.inc64

for.inc64:                                        ; preds = %for.end56
  %118 = load i64, ptr %top, align 8, !tbaa !4
  %inc65 = add nsw i64 %118, 1
  store i64 %inc65, ptr %top, align 8, !tbaa !4
  br label %for.cond38, !llvm.loop !22

for.end66:                                        ; preds = %for.cond38
  %119 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %120 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx67 = getelementptr inbounds double, ptr %119, i64 %120
  %121 = load double, ptr %arrayidx67, align 8, !tbaa !16
  %cmp68 = fcmp oeq double %121, 0.000000e+00
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %for.end66
  %122 = load i64, ptr %k, align 8, !tbaa !4
  store i64 %122, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %for.end66
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %123 = load i64, ptr %k, align 8, !tbaa !4
  %inc72 = add nsw i64 %123, 1
  store i64 %inc72, ptr %k, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !23

for.end73:                                        ; preds = %for.cond
  %124 = load i64, ptr %n.addr, align 8, !tbaa !4
  store i64 %124, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end73, %if.then69
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_ki) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #3
  %125 = load i64, ptr %retval, align 8
  ret i64 %125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define void @ldl_l_lsolve(i64 noundef %n, ptr noundef %X, ptr noundef %Lp, ptr noundef %Li, ptr noundef %Lx) #0 {
entry:
  %n.addr = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %Lp.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  %p = alloca i64, align 8
  %p2 = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %X, ptr %X.addr, align 8, !tbaa !8
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #3
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i64, ptr %j, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %3 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %3, 1
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %add
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !4
  store i64 %4, ptr %p2, align 8, !tbaa !4
  %5 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i64 %6
  %7 = load i64, ptr %arrayidx1, align 8, !tbaa !4
  store i64 %7, ptr %p, align 8, !tbaa !4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i64, ptr %p, align 8, !tbaa !4
  %9 = load i64, ptr %p2, align 8, !tbaa !4
  %cmp3 = icmp slt i64 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %11 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds double, ptr %10, i64 %11
  %12 = load double, ptr %arrayidx5, align 8, !tbaa !16
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds double, ptr %13, i64 %14
  %15 = load double, ptr %arrayidx6, align 8, !tbaa !16
  %16 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %17 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %18 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx7, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds double, ptr %16, i64 %19
  %20 = load double, ptr %arrayidx8, align 8, !tbaa !16
  %neg = fneg double %12
  %21 = call double @llvm.fmuladd.f64(double %neg, double %15, double %20)
  store double %21, ptr %arrayidx8, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %22 = load i64, ptr %p, align 8, !tbaa !4
  %inc = add nsw i64 %22, 1
  store i64 %inc, ptr %p, align 8, !tbaa !4
  br label %for.cond2, !llvm.loop !24

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %23 = load i64, ptr %j, align 8, !tbaa !4
  %inc10 = add nsw i64 %23, 1
  store i64 %inc10, ptr %j, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !25

for.end11:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @ldl_l_dsolve(i64 noundef %n, ptr noundef %X, ptr noundef %D) #0 {
entry:
  %n.addr = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %X, ptr %X.addr, align 8, !tbaa !8
  store ptr %D, ptr %D.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %j, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %D.addr, align 8, !tbaa !8
  %3 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %3
  %4 = load double, ptr %arrayidx, align 8, !tbaa !16
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double, ptr %5, i64 %6
  %7 = load double, ptr %arrayidx1, align 8, !tbaa !16
  %div = fdiv double %7, %4
  store double %div, ptr %arrayidx1, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @ldl_l_ltsolve(i64 noundef %n, ptr noundef %X, ptr noundef %Lp, ptr noundef %Li, ptr noundef %Lx) #0 {
entry:
  %n.addr = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %Lp.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %p2 = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %X, ptr %X.addr, align 8, !tbaa !8
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !8
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !8
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p2) #3
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub nsw i64 %0, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, ptr %j, align 4, !tbaa !27
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %3 = load i32, ptr %j, align 4, !tbaa !27
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !4
  %conv2 = trunc i64 %4 to i32
  store i32 %conv2, ptr %p2, align 4, !tbaa !27
  %5 = load ptr, ptr %Lp.addr, align 8, !tbaa !8
  %6 = load i32, ptr %j, align 4, !tbaa !27
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i64, ptr %5, i64 %idxprom3
  %7 = load i64, ptr %arrayidx4, align 8, !tbaa !4
  %conv5 = trunc i64 %7 to i32
  store i32 %conv5, ptr %p, align 4, !tbaa !27
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %p, align 4, !tbaa !27
  %9 = load i32, ptr %p2, align 4, !tbaa !27
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond6
  %10 = load ptr, ptr %Lx.addr, align 8, !tbaa !8
  %11 = load i32, ptr %p, align 4, !tbaa !27
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %10, i64 %idxprom10
  %12 = load double, ptr %arrayidx11, align 8, !tbaa !16
  %13 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %Li.addr, align 8, !tbaa !8
  %15 = load i32, ptr %p, align 4, !tbaa !27
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %14, i64 %idxprom12
  %16 = load i64, ptr %arrayidx13, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds double, ptr %13, i64 %16
  %17 = load double, ptr %arrayidx14, align 8, !tbaa !16
  %18 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %19 = load i32, ptr %j, align 4, !tbaa !27
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %18, i64 %idxprom15
  %20 = load double, ptr %arrayidx16, align 8, !tbaa !16
  %neg = fneg double %12
  %21 = call double @llvm.fmuladd.f64(double %neg, double %17, double %20)
  store double %21, ptr %arrayidx16, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %22 = load i32, ptr %p, align 4, !tbaa !27
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %p, align 4, !tbaa !27
  br label %for.cond6, !llvm.loop !29

for.end:                                          ; preds = %for.cond6
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %23 = load i32, ptr %j, align 4, !tbaa !27
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %j, align 4, !tbaa !27
  br label %for.cond, !llvm.loop !30

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %p2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @ldl_l_perm(i64 noundef %n, ptr noundef %X, ptr noundef %B, ptr noundef %P) #0 {
entry:
  %n.addr = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %X, ptr %X.addr, align 8, !tbaa !8
  store ptr %B, ptr %B.addr, align 8, !tbaa !8
  store ptr %P, ptr %P.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %j, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %B.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %4 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %4
  %5 = load i64, ptr %arrayidx, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double, ptr %2, i64 %5
  %6 = load double, ptr %arrayidx1, align 8, !tbaa !16
  %7 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %8 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds double, ptr %7, i64 %8
  store double %6, ptr %arrayidx2, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @ldl_l_permt(i64 noundef %n, ptr noundef %X, ptr noundef %B, ptr noundef %P) #0 {
entry:
  %n.addr = alloca i64, align 8
  %X.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %X, ptr %X.addr, align 8, !tbaa !8
  store ptr %B, ptr %B.addr, align 8, !tbaa !8
  store ptr %P, ptr %P.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %j, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %B.addr, align 8, !tbaa !8
  %3 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %3
  %4 = load double, ptr %arrayidx, align 8, !tbaa !16
  %5 = load ptr, ptr %X.addr, align 8, !tbaa !8
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %7 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i64 %7
  %8 = load i64, ptr %arrayidx1, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds double, ptr %5, i64 %8
  store double %4, ptr %arrayidx2, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ldl_l_valid_perm(i64 noundef %n, ptr noundef %P, ptr noundef %Flag) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %P.addr = alloca ptr, align 8
  %Flag.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !8
  store ptr %Flag, ptr %Flag.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %3 = load i64, ptr %j, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %6
  store i64 0, ptr %arrayidx, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %7, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.end
  %8 = load i64, ptr %k, align 8, !tbaa !4
  %9 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %8, %9
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %P.addr, align 8, !tbaa !8
  %11 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx8, align 8, !tbaa !4
  store i64 %12, ptr %j, align 8, !tbaa !4
  %13 = load i64, ptr %j, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %13, 0
  br i1 %cmp9, label %if.then15, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %for.body7
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp11 = icmp sge i64 %14, %15
  br i1 %cmp11, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %16 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx13, align 8, !tbaa !4
  %cmp14 = icmp ne i64 %18, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %for.body7
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %19 = load ptr, ptr %Flag.addr, align 8, !tbaa !8
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds i64, ptr %19, i64 %20
  store i64 1, ptr %arrayidx17, align 8, !tbaa !4
  br label %for.inc18

for.inc18:                                        ; preds = %if.end16
  %21 = load i64, ptr %k, align 8, !tbaa !4
  %inc19 = add nsw i64 %21, 1
  store i64 %inc19, ptr %k, align 8, !tbaa !4
  br label %for.cond5, !llvm.loop !34

for.end20:                                        ; preds = %for.cond5
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end20, %if.then15, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i64 @ldl_l_valid_matrix(i64 noundef %n, ptr noundef %Ap, ptr noundef %Ai) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %j = alloca i64, align 8
  %p = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 0
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !4
  %cmp4 = icmp ne i64 %4, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %j, align 8, !tbaa !4
  %6 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp5 = icmp slt i64 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %8 = load i64, ptr %j, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i64, ptr %7, i64 %8
  %9 = load i64, ptr %arrayidx6, align 8, !tbaa !4
  %10 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %11 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %11, 1
  %arrayidx7 = getelementptr inbounds i64, ptr %10, i64 %add
  %12 = load i64, ptr %arrayidx7, align 8, !tbaa !4
  %cmp8 = icmp sgt i64 %9, %12
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %13 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %p, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.end
  %14 = load i64, ptr %p, align 8, !tbaa !4
  %15 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %16 = load i64, ptr %n.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i64, ptr %15, i64 %16
  %17 = load i64, ptr %arrayidx12, align 8, !tbaa !4
  %cmp13 = icmp slt i64 %14, %17
  br i1 %cmp13, label %for.body14, label %for.end24

for.body14:                                       ; preds = %for.cond11
  %18 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %19 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds i64, ptr %18, i64 %19
  %20 = load i64, ptr %arrayidx15, align 8, !tbaa !4
  %cmp16 = icmp slt i64 %20, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %for.body14
  %21 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %22 = load i64, ptr %p, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i64, ptr %21, i64 %22
  %23 = load i64, ptr %arrayidx18, align 8, !tbaa !4
  %24 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp19 = icmp sge i64 %23, %24
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17, %for.body14
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false17
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %25 = load i64, ptr %p, align 8, !tbaa !4
  %inc23 = add nsw i64 %25, 1
  store i64 %inc23, ptr %p, align 8, !tbaa !4
  br label %for.cond11, !llvm.loop !36

for.end24:                                        ; preds = %for.cond11
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %if.then20, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
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
!5 = !{!"long", !6, i64 0}
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
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !6, i64 0}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
