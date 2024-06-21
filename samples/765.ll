; ModuleID = 'samples/765.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zupgtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ZUPGTR\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zupgtr_(ptr noundef %uplo, ptr noundef %n, ptr noundef %ap, ptr noundef %tau, ptr noundef %q, ptr noundef %ldq, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %ij = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %upper = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %ldq, ptr %ldq.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ij) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %ap.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %tau.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  store i32 %3, ptr %q_dim1, align 4, !tbaa !8
  %4 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %4
  store i32 %add, ptr %q_offset, align 4, !tbaa !8
  %5 = load i32, ptr %q_offset, align 4, !tbaa !8
  %6 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %6, i64 %idx.neg
  store ptr %add.ptr, ptr %q.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds %struct.doublecomplex, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %work.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %8, align 4, !tbaa !8
  %9 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %9, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %10 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str.1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %12, align 4, !tbaa !8
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %15, align 4, !tbaa !8
  br label %if.end10

if.else6:                                         ; preds = %if.else
  %16 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  store i32 %19, ptr %_y, align 4, !tbaa !8
  %20 = load i32, ptr %_x, align 4, !tbaa !8
  %21 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp7 = icmp sgt i32 %20, %21
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else6
  %22 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else6
  %23 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %24 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %17, %24
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %25, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %27, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %sub = sub nsw i32 0, %29
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call14 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %cmp16 = icmp eq i32 %31, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %32 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool19 = icmp ne i32 %32, 0
  br i1 %tobool19, label %if.then20, label %if.else80

if.then20:                                        ; preds = %if.end18
  store i32 2, ptr %ij, align 4, !tbaa !8
  %33 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %sub21 = sub nsw i32 %34, 1
  store i32 %sub21, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %if.then20
  %35 = load i32, ptr %j, align 4, !tbaa !8
  %36 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp22 = icmp sle i32 %35, %36
  br i1 %cmp22, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %37 = load i32, ptr %j, align 4, !tbaa !8
  %sub23 = sub nsw i32 %37, 1
  store i32 %sub23, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %for.body
  %38 = load i32, ptr %i__, align 4, !tbaa !8
  %39 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp25 = icmp sle i32 %38, %39
  br i1 %cmp25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond24
  %40 = load i32, ptr %i__, align 4, !tbaa !8
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %42 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %41, %42
  %add27 = add nsw i32 %40, %mul
  store i32 %add27, ptr %i__3, align 4, !tbaa !8
  %43 = load i32, ptr %ij, align 4, !tbaa !8
  store i32 %43, ptr %i__4, align 4, !tbaa !8
  %44 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %45 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %44, i64 %idxprom
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  %46 = load double, ptr %r, align 8, !tbaa !10
  %47 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %48 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom28 = sext i32 %48 to i64
  %arrayidx29 = getelementptr inbounds %struct.doublecomplex, ptr %47, i64 %idxprom28
  %r30 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx29, i32 0, i32 0
  store double %46, ptr %r30, align 8, !tbaa !10
  %49 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %50 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom31 = sext i32 %50 to i64
  %arrayidx32 = getelementptr inbounds %struct.doublecomplex, ptr %49, i64 %idxprom31
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx32, i32 0, i32 1
  %51 = load double, ptr %i, align 8, !tbaa !13
  %52 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %53 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom33 = sext i32 %53 to i64
  %arrayidx34 = getelementptr inbounds %struct.doublecomplex, ptr %52, i64 %idxprom33
  %i35 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx34, i32 0, i32 1
  store double %51, ptr %i35, align 8, !tbaa !13
  %54 = load i32, ptr %ij, align 4, !tbaa !8
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %ij, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %55 = load i32, ptr %i__, align 4, !tbaa !8
  %inc36 = add nsw i32 %55, 1
  store i32 %inc36, ptr %i__, align 4, !tbaa !8
  br label %for.cond24, !llvm.loop !14

for.end:                                          ; preds = %for.cond24
  %56 = load i32, ptr %ij, align 4, !tbaa !8
  %add37 = add nsw i32 %56, 2
  store i32 %add37, ptr %ij, align 4, !tbaa !8
  %57 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  %59 = load i32, ptr %j, align 4, !tbaa !8
  %60 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul38 = mul nsw i32 %59, %60
  %add39 = add nsw i32 %58, %mul38
  store i32 %add39, ptr %i__2, align 4, !tbaa !8
  %61 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %62 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom40 = sext i32 %62 to i64
  %arrayidx41 = getelementptr inbounds %struct.doublecomplex, ptr %61, i64 %idxprom40
  %r42 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx41, i32 0, i32 0
  store double 0.000000e+00, ptr %r42, align 8, !tbaa !10
  %63 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %64 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom43 = sext i32 %64 to i64
  %arrayidx44 = getelementptr inbounds %struct.doublecomplex, ptr %63, i64 %idxprom43
  %i45 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx44, i32 0, i32 1
  store double 0.000000e+00, ptr %i45, align 8, !tbaa !13
  br label %for.inc46

for.inc46:                                        ; preds = %for.end
  %65 = load i32, ptr %j, align 4, !tbaa !8
  %inc47 = add nsw i32 %65, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end48:                                        ; preds = %for.cond
  %66 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %sub49 = sub nsw i32 %67, 1
  store i32 %sub49, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc61, %for.end48
  %68 = load i32, ptr %i__, align 4, !tbaa !8
  %69 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp51 = icmp sle i32 %68, %69
  br i1 %cmp51, label %for.body52, label %for.end63

for.body52:                                       ; preds = %for.cond50
  %70 = load i32, ptr %i__, align 4, !tbaa !8
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  %73 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul53 = mul nsw i32 %72, %73
  %add54 = add nsw i32 %70, %mul53
  store i32 %add54, ptr %i__2, align 4, !tbaa !8
  %74 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %75 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom55 = sext i32 %75 to i64
  %arrayidx56 = getelementptr inbounds %struct.doublecomplex, ptr %74, i64 %idxprom55
  %r57 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx56, i32 0, i32 0
  store double 0.000000e+00, ptr %r57, align 8, !tbaa !10
  %76 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %77 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom58 = sext i32 %77 to i64
  %arrayidx59 = getelementptr inbounds %struct.doublecomplex, ptr %76, i64 %idxprom58
  %i60 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx59, i32 0, i32 1
  store double 0.000000e+00, ptr %i60, align 8, !tbaa !13
  br label %for.inc61

for.inc61:                                        ; preds = %for.body52
  %78 = load i32, ptr %i__, align 4, !tbaa !8
  %inc62 = add nsw i32 %78, 1
  store i32 %inc62, ptr %i__, align 4, !tbaa !8
  br label %for.cond50, !llvm.loop !17

for.end63:                                        ; preds = %for.cond50
  %79 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  %81 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %82 = load i32, ptr %81, align 4, !tbaa !8
  %83 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul64 = mul nsw i32 %82, %83
  %add65 = add nsw i32 %80, %mul64
  store i32 %add65, ptr %i__1, align 4, !tbaa !8
  %84 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %85 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom66 = sext i32 %85 to i64
  %arrayidx67 = getelementptr inbounds %struct.doublecomplex, ptr %84, i64 %idxprom66
  %r68 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx67, i32 0, i32 0
  store double 1.000000e+00, ptr %r68, align 8, !tbaa !10
  %86 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %87 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom69 = sext i32 %87 to i64
  %arrayidx70 = getelementptr inbounds %struct.doublecomplex, ptr %86, i64 %idxprom69
  %i71 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx70, i32 0, i32 1
  store double 0.000000e+00, ptr %i71, align 8, !tbaa !13
  %88 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  %sub72 = sub nsw i32 %89, 1
  store i32 %sub72, ptr %i__1, align 4, !tbaa !8
  %90 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  %sub73 = sub nsw i32 %91, 1
  store i32 %sub73, ptr %i__2, align 4, !tbaa !8
  %92 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %93 = load i32, ptr %92, align 4, !tbaa !8
  %sub74 = sub nsw i32 %93, 1
  store i32 %sub74, ptr %i__3, align 4, !tbaa !8
  %94 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %95 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom75 = sext i32 %95 to i64
  %arrayidx76 = getelementptr inbounds %struct.doublecomplex, ptr %94, i64 %idxprom75
  %96 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %97 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx77 = getelementptr inbounds %struct.doublecomplex, ptr %97, i64 1
  %98 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds %struct.doublecomplex, ptr %98, i64 1
  %call79 = call i32 @zung2l_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx76, ptr noundef %96, ptr noundef %arrayidx77, ptr noundef %arrayidx78, ptr noundef %iinfo)
  br label %if.end150

if.else80:                                        ; preds = %if.end18
  %99 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add81 = add nsw i32 %99, 1
  store i32 %add81, ptr %i__1, align 4, !tbaa !8
  %100 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %101 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom82 = sext i32 %101 to i64
  %arrayidx83 = getelementptr inbounds %struct.doublecomplex, ptr %100, i64 %idxprom82
  %r84 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx83, i32 0, i32 0
  store double 1.000000e+00, ptr %r84, align 8, !tbaa !10
  %102 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %103 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom85 = sext i32 %103 to i64
  %arrayidx86 = getelementptr inbounds %struct.doublecomplex, ptr %102, i64 %idxprom85
  %i87 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx86, i32 0, i32 1
  store double 0.000000e+00, ptr %i87, align 8, !tbaa !13
  %104 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  store i32 %105, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %i__, align 4, !tbaa !8
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc98, %if.else80
  %106 = load i32, ptr %i__, align 4, !tbaa !8
  %107 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp89 = icmp sle i32 %106, %107
  br i1 %cmp89, label %for.body90, label %for.end100

for.body90:                                       ; preds = %for.cond88
  %108 = load i32, ptr %i__, align 4, !tbaa !8
  %109 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add91 = add nsw i32 %108, %109
  store i32 %add91, ptr %i__2, align 4, !tbaa !8
  %110 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %111 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom92 = sext i32 %111 to i64
  %arrayidx93 = getelementptr inbounds %struct.doublecomplex, ptr %110, i64 %idxprom92
  %r94 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx93, i32 0, i32 0
  store double 0.000000e+00, ptr %r94, align 8, !tbaa !10
  %112 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %113 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom95 = sext i32 %113 to i64
  %arrayidx96 = getelementptr inbounds %struct.doublecomplex, ptr %112, i64 %idxprom95
  %i97 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx96, i32 0, i32 1
  store double 0.000000e+00, ptr %i97, align 8, !tbaa !13
  br label %for.inc98

for.inc98:                                        ; preds = %for.body90
  %114 = load i32, ptr %i__, align 4, !tbaa !8
  %inc99 = add nsw i32 %114, 1
  store i32 %inc99, ptr %i__, align 4, !tbaa !8
  br label %for.cond88, !llvm.loop !18

for.end100:                                       ; preds = %for.cond88
  store i32 3, ptr %ij, align 4, !tbaa !8
  %115 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  store i32 %116, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc135, %for.end100
  %117 = load i32, ptr %j, align 4, !tbaa !8
  %118 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp102 = icmp sle i32 %117, %118
  br i1 %cmp102, label %for.body103, label %for.end137

for.body103:                                      ; preds = %for.cond101
  %119 = load i32, ptr %j, align 4, !tbaa !8
  %120 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul104 = mul nsw i32 %119, %120
  %add105 = add nsw i32 %mul104, 1
  store i32 %add105, ptr %i__2, align 4, !tbaa !8
  %121 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %122 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom106 = sext i32 %122 to i64
  %arrayidx107 = getelementptr inbounds %struct.doublecomplex, ptr %121, i64 %idxprom106
  %r108 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx107, i32 0, i32 0
  store double 0.000000e+00, ptr %r108, align 8, !tbaa !10
  %123 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %124 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom109 = sext i32 %124 to i64
  %arrayidx110 = getelementptr inbounds %struct.doublecomplex, ptr %123, i64 %idxprom109
  %i111 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx110, i32 0, i32 1
  store double 0.000000e+00, ptr %i111, align 8, !tbaa !13
  %125 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %126 = load i32, ptr %125, align 4, !tbaa !8
  store i32 %126, ptr %i__2, align 4, !tbaa !8
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %add112 = add nsw i32 %127, 1
  store i32 %add112, ptr %i__, align 4, !tbaa !8
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc131, %for.body103
  %128 = load i32, ptr %i__, align 4, !tbaa !8
  %129 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp114 = icmp sle i32 %128, %129
  br i1 %cmp114, label %for.body115, label %for.end133

for.body115:                                      ; preds = %for.cond113
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %131 = load i32, ptr %j, align 4, !tbaa !8
  %132 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul116 = mul nsw i32 %131, %132
  %add117 = add nsw i32 %130, %mul116
  store i32 %add117, ptr %i__3, align 4, !tbaa !8
  %133 = load i32, ptr %ij, align 4, !tbaa !8
  store i32 %133, ptr %i__4, align 4, !tbaa !8
  %134 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %135 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom118 = sext i32 %135 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %134, i64 %idxprom118
  %r120 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx119, i32 0, i32 0
  %136 = load double, ptr %r120, align 8, !tbaa !10
  %137 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %138 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom121 = sext i32 %138 to i64
  %arrayidx122 = getelementptr inbounds %struct.doublecomplex, ptr %137, i64 %idxprom121
  %r123 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx122, i32 0, i32 0
  store double %136, ptr %r123, align 8, !tbaa !10
  %139 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %140 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom124 = sext i32 %140 to i64
  %arrayidx125 = getelementptr inbounds %struct.doublecomplex, ptr %139, i64 %idxprom124
  %i126 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx125, i32 0, i32 1
  %141 = load double, ptr %i126, align 8, !tbaa !13
  %142 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %143 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom127 = sext i32 %143 to i64
  %arrayidx128 = getelementptr inbounds %struct.doublecomplex, ptr %142, i64 %idxprom127
  %i129 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx128, i32 0, i32 1
  store double %141, ptr %i129, align 8, !tbaa !13
  %144 = load i32, ptr %ij, align 4, !tbaa !8
  %inc130 = add nsw i32 %144, 1
  store i32 %inc130, ptr %ij, align 4, !tbaa !8
  br label %for.inc131

for.inc131:                                       ; preds = %for.body115
  %145 = load i32, ptr %i__, align 4, !tbaa !8
  %inc132 = add nsw i32 %145, 1
  store i32 %inc132, ptr %i__, align 4, !tbaa !8
  br label %for.cond113, !llvm.loop !19

for.end133:                                       ; preds = %for.cond113
  %146 = load i32, ptr %ij, align 4, !tbaa !8
  %add134 = add nsw i32 %146, 2
  store i32 %add134, ptr %ij, align 4, !tbaa !8
  br label %for.inc135

for.inc135:                                       ; preds = %for.end133
  %147 = load i32, ptr %j, align 4, !tbaa !8
  %inc136 = add nsw i32 %147, 1
  store i32 %inc136, ptr %j, align 4, !tbaa !8
  br label %for.cond101, !llvm.loop !20

for.end137:                                       ; preds = %for.cond101
  %148 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %149 = load i32, ptr %148, align 4, !tbaa !8
  %cmp138 = icmp sgt i32 %149, 1
  br i1 %cmp138, label %if.then139, label %if.end149

if.then139:                                       ; preds = %for.end137
  %150 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %151 = load i32, ptr %150, align 4, !tbaa !8
  %sub140 = sub nsw i32 %151, 1
  store i32 %sub140, ptr %i__1, align 4, !tbaa !8
  %152 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %153 = load i32, ptr %152, align 4, !tbaa !8
  %sub141 = sub nsw i32 %153, 1
  store i32 %sub141, ptr %i__2, align 4, !tbaa !8
  %154 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %155 = load i32, ptr %154, align 4, !tbaa !8
  %sub142 = sub nsw i32 %155, 1
  store i32 %sub142, ptr %i__3, align 4, !tbaa !8
  %156 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %157 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %shl = shl i32 %157, 1
  %add143 = add nsw i32 %shl, 2
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom144
  %158 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %159 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx146 = getelementptr inbounds %struct.doublecomplex, ptr %159, i64 1
  %160 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx147 = getelementptr inbounds %struct.doublecomplex, ptr %160, i64 1
  %call148 = call i32 @zung2r_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx145, ptr noundef %158, ptr noundef %arrayidx146, ptr noundef %arrayidx147, ptr noundef %iinfo)
  br label %if.end149

if.end149:                                        ; preds = %if.then139, %for.end137
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %for.end63
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %if.then17, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ij) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_dim1) #3
  %161 = load i32, ptr %retval, align 4
  ret i32 %161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @zung2l_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zung2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
