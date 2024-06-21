; ModuleID = 'samples/906.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zcposv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }
%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ZCPOSV\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@c_b1 = internal global %struct.doublecomplex { double -1.000000e+00, double 0.000000e+00 }, align 8
@c_b2 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @zcposv_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %x, ptr noundef %ldx, ptr noundef %work, ptr noundef %swork, ptr noundef %rwork, ptr noundef %iter, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %swork.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %work_dim1 = alloca i32, align 4
  %work_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %i__ = alloca i32, align 4
  %cte = alloca double, align 8
  %eps = alloca double, align 8
  %anrm = alloca double, align 8
  %ptsa = alloca i32, align 4
  %rnrm = alloca double, align 8
  %xnrm = alloca double, align 8
  %ptsx = alloca i32, align 4
  %iiter = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x25 = alloca i32, align 4
  %_y26 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %_x36 = alloca i32, align 4
  %_y37 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ldx, ptr %ldx.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %swork, ptr %swork.addr, align 8, !tbaa !4
  store ptr %rwork, ptr %rwork.addr, align 8, !tbaa !4
  store ptr %iter, ptr %iter.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %work_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %work_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cte) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %anrm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptsa) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rnrm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xnrm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptsx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iiter) #4
  %0 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %work_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %work_offset, align 4, !tbaa !8
  %3 = load i32, ptr %work_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %work.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %a_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %a_offset, align 4, !tbaa !8
  %8 = load i32, ptr %a_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %a.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %b_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %b_offset, align 4, !tbaa !8
  %13 = load i32, ptr %b_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.doublecomplex, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %b.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %16, ptr %x_dim1, align 4, !tbaa !8
  %17 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %x_offset, align 4, !tbaa !8
  %18 = load i32, ptr %x_offset, align 4, !tbaa !8
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds %struct.doublecomplex, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %x.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %20, i32 -1
  store ptr %incdec.ptr, ptr %swork.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %incdec.ptr13 = getelementptr inbounds double, ptr %21, i32 -1
  store ptr %incdec.ptr13, ptr %rwork.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %22, align 4, !tbaa !8
  %23 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 0, ptr %23, align 4, !tbaa !8
  %24 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %24, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %25 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call14 = call i32 @lsame_(ptr noundef %25, ptr noundef @.str.1)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %26, align 4, !tbaa !8
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true, %entry
  %27 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  %29 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %29, align 4, !tbaa !8
  br label %if.end49

if.else17:                                        ; preds = %if.else
  %30 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %31, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %32, align 4, !tbaa !8
  br label %if.end48

if.else20:                                        ; preds = %if.else17
  %33 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %35 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  store i32 %36, ptr %_y, align 4, !tbaa !8
  %37 = load i32, ptr %_x, align 4, !tbaa !8
  %38 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp21 = icmp sgt i32 %37, %38
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else20
  %39 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else20
  %40 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %40, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %41 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %34, %41
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %cond.end
  %42 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %42, align 4, !tbaa !8
  br label %if.end47

if.else24:                                        ; preds = %cond.end
  %43 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x25) #4
  store i32 1, ptr %_x25, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y26) #4
  %45 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %46 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %46, ptr %_y26, align 4, !tbaa !8
  %47 = load i32, ptr %_x25, align 4, !tbaa !8
  %48 = load i32, ptr %_y26, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %47, %48
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %if.else24
  %49 = load i32, ptr %_x25, align 4, !tbaa !8
  br label %cond.end31

cond.false30:                                     ; preds = %if.else24
  %50 = load i32, ptr %_y26, align 4, !tbaa !8
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %49, %cond.true29 ], [ %50, %cond.false30 ]
  store i32 %cond32, ptr %tmp27, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y26) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x25) #4
  %51 = load i32, ptr %tmp27, align 4, !tbaa !8
  %cmp33 = icmp slt i32 %44, %51
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %cond.end31
  %52 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %52, align 4, !tbaa !8
  br label %if.end46

if.else35:                                        ; preds = %cond.end31
  %53 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x36) #4
  store i32 1, ptr %_x36, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y37) #4
  %55 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  store i32 %56, ptr %_y37, align 4, !tbaa !8
  %57 = load i32, ptr %_x36, align 4, !tbaa !8
  %58 = load i32, ptr %_y37, align 4, !tbaa !8
  %cmp39 = icmp sgt i32 %57, %58
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %if.else35
  %59 = load i32, ptr %_x36, align 4, !tbaa !8
  br label %cond.end42

cond.false41:                                     ; preds = %if.else35
  %60 = load i32, ptr %_y37, align 4, !tbaa !8
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i32 [ %59, %cond.true40 ], [ %60, %cond.false41 ]
  store i32 %cond43, ptr %tmp38, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y37) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x36) #4
  %61 = load i32, ptr %tmp38, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %54, %61
  br i1 %cmp44, label %if.then45, label %if.end

if.then45:                                        ; preds = %cond.end42
  %62 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %62, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then45, %cond.end42
  br label %if.end46

if.end46:                                         ; preds = %if.end, %if.then34
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then23
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then19
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then16
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %cmp51 = icmp ne i32 %64, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end50
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %sub = sub nsw i32 0, %66
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call53 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %67 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %cmp55 = icmp eq i32 %68, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end54
  %69 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %70 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %72 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %72 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %71, i64 %idxprom
  %73 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx58 = getelementptr inbounds double, ptr %74, i64 1
  %call59 = call double @zlanhe_(ptr noundef @.str.3, ptr noundef %69, ptr noundef %70, ptr noundef %arrayidx, ptr noundef %73, ptr noundef %arrayidx58)
  store double %call59, ptr %anrm, align 8, !tbaa !10
  %call60 = call double @dlamch_(ptr noundef @.str.4)
  store double %call60, ptr %eps, align 8, !tbaa !10
  %75 = load double, ptr %anrm, align 8, !tbaa !10
  %76 = load double, ptr %eps, align 8, !tbaa !10
  %mul = fmul double %75, %76
  %77 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %conv = sitofp i32 %78 to double
  %call61 = call double @sqrt(double noundef %conv) #4
  %mul62 = fmul double %mul, %call61
  %mul63 = fmul double %mul62, 1.000000e+00
  store double %mul63, ptr %cte, align 8, !tbaa !10
  store i32 1, ptr %ptsa, align 4, !tbaa !8
  %79 = load i32, ptr %ptsa, align 4, !tbaa !8
  %80 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %81 = load i32, ptr %80, align 4, !tbaa !8
  %82 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %83 = load i32, ptr %82, align 4, !tbaa !8
  %mul64 = mul nsw i32 %81, %83
  %add65 = add nsw i32 %79, %mul64
  store i32 %add65, ptr %ptsx, align 4, !tbaa !8
  %84 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %87 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom66 = sext i32 %87 to i64
  %arrayidx67 = getelementptr inbounds %struct.doublecomplex, ptr %86, i64 %idxprom66
  %88 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %90 = load i32, ptr %ptsx, align 4, !tbaa !8
  %idxprom68 = sext i32 %90 to i64
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %89, i64 %idxprom68
  %91 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %92 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call70 = call i32 @zlag2c_(ptr noundef %84, ptr noundef %85, ptr noundef %arrayidx67, ptr noundef %88, ptr noundef %arrayidx69, ptr noundef %91, ptr noundef %92)
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %94 = load i32, ptr %93, align 4, !tbaa !8
  %cmp71 = icmp ne i32 %94, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end57
  %95 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 -2, ptr %95, align 4, !tbaa !8
  br label %L40

if.end74:                                         ; preds = %if.end57
  %96 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %97 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %99 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom75 = sext i32 %99 to i64
  %arrayidx76 = getelementptr inbounds %struct.doublecomplex, ptr %98, i64 %idxprom75
  %100 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %101 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %102 = load i32, ptr %ptsa, align 4, !tbaa !8
  %idxprom77 = sext i32 %102 to i64
  %arrayidx78 = getelementptr inbounds %struct.complex, ptr %101, i64 %idxprom77
  %103 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %104 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call79 = call i32 @zlat2c_(ptr noundef %96, ptr noundef %97, ptr noundef %arrayidx76, ptr noundef %100, ptr noundef %arrayidx78, ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %106 = load i32, ptr %105, align 4, !tbaa !8
  %cmp80 = icmp ne i32 %106, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end74
  %107 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 -2, ptr %107, align 4, !tbaa !8
  br label %L40

if.end83:                                         ; preds = %if.end74
  %108 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %110 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %111 = load i32, ptr %ptsa, align 4, !tbaa !8
  %idxprom84 = sext i32 %111 to i64
  %arrayidx85 = getelementptr inbounds %struct.complex, ptr %110, i64 %idxprom84
  %112 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call86 = call i32 @cpotrf_(ptr noundef %108, ptr noundef %109, ptr noundef %arrayidx85, ptr noundef %112, ptr noundef %113)
  %114 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %cmp87 = icmp ne i32 %115, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end83
  %116 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 -3, ptr %116, align 4, !tbaa !8
  br label %L40

if.end90:                                         ; preds = %if.end83
  %117 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %121 = load i32, ptr %ptsa, align 4, !tbaa !8
  %idxprom91 = sext i32 %121 to i64
  %arrayidx92 = getelementptr inbounds %struct.complex, ptr %120, i64 %idxprom91
  %122 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %124 = load i32, ptr %ptsx, align 4, !tbaa !8
  %idxprom93 = sext i32 %124 to i64
  %arrayidx94 = getelementptr inbounds %struct.complex, ptr %123, i64 %idxprom93
  %125 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %126 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call95 = call i32 @cpotrs_(ptr noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef %arrayidx92, ptr noundef %122, ptr noundef %arrayidx94, ptr noundef %125, ptr noundef %126)
  %127 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %128 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %130 = load i32, ptr %ptsx, align 4, !tbaa !8
  %idxprom96 = sext i32 %130 to i64
  %arrayidx97 = getelementptr inbounds %struct.complex, ptr %129, i64 %idxprom96
  %131 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %133 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom98 = sext i32 %133 to i64
  %arrayidx99 = getelementptr inbounds %struct.doublecomplex, ptr %132, i64 %idxprom98
  %134 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %135 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call100 = call i32 @clag2z_(ptr noundef %127, ptr noundef %128, ptr noundef %arrayidx97, ptr noundef %131, ptr noundef %arrayidx99, ptr noundef %134, ptr noundef %135)
  %136 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %137 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %138 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %139 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom101 = sext i32 %139 to i64
  %arrayidx102 = getelementptr inbounds %struct.doublecomplex, ptr %138, i64 %idxprom101
  %140 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %141 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %142 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom103 = sext i32 %142 to i64
  %arrayidx104 = getelementptr inbounds %struct.doublecomplex, ptr %141, i64 %idxprom103
  %143 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call105 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %136, ptr noundef %137, ptr noundef %arrayidx102, ptr noundef %140, ptr noundef %arrayidx104, ptr noundef %143)
  %144 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %145 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %146 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %148 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom106 = sext i32 %148 to i64
  %arrayidx107 = getelementptr inbounds %struct.doublecomplex, ptr %147, i64 %idxprom106
  %149 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %150 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %151 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom108 = sext i32 %151 to i64
  %arrayidx109 = getelementptr inbounds %struct.doublecomplex, ptr %150, i64 %idxprom108
  %152 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %153 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %154 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom110 = sext i32 %154 to i64
  %arrayidx111 = getelementptr inbounds %struct.doublecomplex, ptr %153, i64 %idxprom110
  %155 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call112 = call i32 @zhemm_(ptr noundef @.str.6, ptr noundef %144, ptr noundef %145, ptr noundef %146, ptr noundef @c_b1, ptr noundef %arrayidx107, ptr noundef %149, ptr noundef %arrayidx109, ptr noundef %152, ptr noundef @c_b2, ptr noundef %arrayidx111, ptr noundef %155)
  %156 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %157 = load i32, ptr %156, align 4, !tbaa !8
  store i32 %157, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end90
  %158 = load i32, ptr %i__, align 4, !tbaa !8
  %159 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp113 = icmp sle i32 %158, %159
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %160 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %163 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul115 = mul nsw i32 %162, %163
  %add116 = add nsw i32 %mul115, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds %struct.doublecomplex, ptr %161, i64 %idxprom117
  %call119 = call i32 @izamax_(ptr noundef %160, ptr noundef %arrayidx118, ptr noundef @c__1)
  %164 = load i32, ptr %i__, align 4, !tbaa !8
  %165 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul120 = mul nsw i32 %164, %165
  %add121 = add nsw i32 %call119, %mul120
  store i32 %add121, ptr %i__2, align 4, !tbaa !8
  %166 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %167 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom122 = sext i32 %167 to i64
  %arrayidx123 = getelementptr inbounds %struct.doublecomplex, ptr %166, i64 %idxprom122
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx123, i32 0, i32 0
  %168 = load double, ptr %r, align 8, !tbaa !12
  store double %168, ptr %d__1, align 8, !tbaa !10
  %169 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp124 = fcmp oge double %169, 0.000000e+00
  br i1 %cmp124, label %cond.true126, label %cond.false127

cond.true126:                                     ; preds = %for.body
  %170 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end128

cond.false127:                                    ; preds = %for.body
  %171 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg = fneg double %171
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false127, %cond.true126
  %cond129 = phi double [ %170, %cond.true126 ], [ %fneg, %cond.false127 ]
  %172 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %173 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %174 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %175 = load i32, ptr %i__, align 4, !tbaa !8
  %176 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul130 = mul nsw i32 %175, %176
  %add131 = add nsw i32 %mul130, 1
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds %struct.doublecomplex, ptr %174, i64 %idxprom132
  %call134 = call i32 @izamax_(ptr noundef %173, ptr noundef %arrayidx133, ptr noundef @c__1)
  %177 = load i32, ptr %i__, align 4, !tbaa !8
  %178 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul135 = mul nsw i32 %177, %178
  %add136 = add nsw i32 %call134, %mul135
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom137
  %call139 = call double @d_imag(ptr noundef %arrayidx138)
  store double %call139, ptr %d__2, align 8, !tbaa !10
  %179 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp140 = fcmp oge double %179, 0.000000e+00
  br i1 %cmp140, label %cond.true142, label %cond.false143

cond.true142:                                     ; preds = %cond.end128
  %180 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end145

cond.false143:                                    ; preds = %cond.end128
  %181 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg144 = fneg double %181
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false143, %cond.true142
  %cond146 = phi double [ %180, %cond.true142 ], [ %fneg144, %cond.false143 ]
  %add147 = fadd double %cond129, %cond146
  store double %add147, ptr %xnrm, align 8, !tbaa !10
  %182 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %183 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %184 = load i32, ptr %i__, align 4, !tbaa !8
  %185 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul148 = mul nsw i32 %184, %185
  %add149 = add nsw i32 %mul148, 1
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom150
  %call152 = call i32 @izamax_(ptr noundef %182, ptr noundef %arrayidx151, ptr noundef @c__1)
  %186 = load i32, ptr %i__, align 4, !tbaa !8
  %187 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul153 = mul nsw i32 %186, %187
  %add154 = add nsw i32 %call152, %mul153
  store i32 %add154, ptr %i__2, align 4, !tbaa !8
  %188 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %189 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom155 = sext i32 %189 to i64
  %arrayidx156 = getelementptr inbounds %struct.doublecomplex, ptr %188, i64 %idxprom155
  %r157 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx156, i32 0, i32 0
  %190 = load double, ptr %r157, align 8, !tbaa !12
  store double %190, ptr %d__1, align 8, !tbaa !10
  %191 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp158 = fcmp oge double %191, 0.000000e+00
  br i1 %cmp158, label %cond.true160, label %cond.false161

cond.true160:                                     ; preds = %cond.end145
  %192 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end163

cond.false161:                                    ; preds = %cond.end145
  %193 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg162 = fneg double %193
  br label %cond.end163

cond.end163:                                      ; preds = %cond.false161, %cond.true160
  %cond164 = phi double [ %192, %cond.true160 ], [ %fneg162, %cond.false161 ]
  %194 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %195 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %196 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %197 = load i32, ptr %i__, align 4, !tbaa !8
  %198 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul165 = mul nsw i32 %197, %198
  %add166 = add nsw i32 %mul165, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds %struct.doublecomplex, ptr %196, i64 %idxprom167
  %call169 = call i32 @izamax_(ptr noundef %195, ptr noundef %arrayidx168, ptr noundef @c__1)
  %199 = load i32, ptr %i__, align 4, !tbaa !8
  %200 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul170 = mul nsw i32 %199, %200
  %add171 = add nsw i32 %call169, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %194, i64 %idxprom172
  %call174 = call double @d_imag(ptr noundef %arrayidx173)
  store double %call174, ptr %d__2, align 8, !tbaa !10
  %201 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp175 = fcmp oge double %201, 0.000000e+00
  br i1 %cmp175, label %cond.true177, label %cond.false178

cond.true177:                                     ; preds = %cond.end163
  %202 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end180

cond.false178:                                    ; preds = %cond.end163
  %203 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg179 = fneg double %203
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false178, %cond.true177
  %cond181 = phi double [ %202, %cond.true177 ], [ %fneg179, %cond.false178 ]
  %add182 = fadd double %cond164, %cond181
  store double %add182, ptr %rnrm, align 8, !tbaa !10
  %204 = load double, ptr %rnrm, align 8, !tbaa !10
  %205 = load double, ptr %xnrm, align 8, !tbaa !10
  %206 = load double, ptr %cte, align 8, !tbaa !10
  %mul183 = fmul double %205, %206
  %cmp184 = fcmp ogt double %204, %mul183
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %cond.end180
  br label %L10

if.end187:                                        ; preds = %cond.end180
  br label %for.inc

for.inc:                                          ; preds = %if.end187
  %207 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %207, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %208 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 0, ptr %208, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

L10:                                              ; preds = %if.then186
  store i32 1, ptr %iiter, align 4, !tbaa !8
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc321, %L10
  %209 = load i32, ptr %iiter, align 4, !tbaa !8
  %cmp189 = icmp sle i32 %209, 30
  br i1 %cmp189, label %for.body191, label %for.end323

for.body191:                                      ; preds = %for.cond188
  %210 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %211 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %212 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %213 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom192 = sext i32 %213 to i64
  %arrayidx193 = getelementptr inbounds %struct.doublecomplex, ptr %212, i64 %idxprom192
  %214 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %215 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %216 = load i32, ptr %ptsx, align 4, !tbaa !8
  %idxprom194 = sext i32 %216 to i64
  %arrayidx195 = getelementptr inbounds %struct.complex, ptr %215, i64 %idxprom194
  %217 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %218 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call196 = call i32 @zlag2c_(ptr noundef %210, ptr noundef %211, ptr noundef %arrayidx193, ptr noundef %214, ptr noundef %arrayidx195, ptr noundef %217, ptr noundef %218)
  %219 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %220 = load i32, ptr %219, align 4, !tbaa !8
  %cmp197 = icmp ne i32 %220, 0
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %for.body191
  %221 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 -2, ptr %221, align 4, !tbaa !8
  br label %L40

if.end200:                                        ; preds = %for.body191
  %222 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %223 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %224 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %225 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %226 = load i32, ptr %ptsa, align 4, !tbaa !8
  %idxprom201 = sext i32 %226 to i64
  %arrayidx202 = getelementptr inbounds %struct.complex, ptr %225, i64 %idxprom201
  %227 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %228 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %229 = load i32, ptr %ptsx, align 4, !tbaa !8
  %idxprom203 = sext i32 %229 to i64
  %arrayidx204 = getelementptr inbounds %struct.complex, ptr %228, i64 %idxprom203
  %230 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %231 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call205 = call i32 @cpotrs_(ptr noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %arrayidx202, ptr noundef %227, ptr noundef %arrayidx204, ptr noundef %230, ptr noundef %231)
  %232 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %233 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %234 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %235 = load i32, ptr %ptsx, align 4, !tbaa !8
  %idxprom206 = sext i32 %235 to i64
  %arrayidx207 = getelementptr inbounds %struct.complex, ptr %234, i64 %idxprom206
  %236 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %237 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %238 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom208 = sext i32 %238 to i64
  %arrayidx209 = getelementptr inbounds %struct.doublecomplex, ptr %237, i64 %idxprom208
  %239 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %240 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call210 = call i32 @clag2z_(ptr noundef %232, ptr noundef %233, ptr noundef %arrayidx207, ptr noundef %236, ptr noundef %arrayidx209, ptr noundef %239, ptr noundef %240)
  %241 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %242 = load i32, ptr %241, align 4, !tbaa !8
  store i32 %242, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc224, %if.end200
  %243 = load i32, ptr %i__, align 4, !tbaa !8
  %244 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp212 = icmp sle i32 %243, %244
  br i1 %cmp212, label %for.body214, label %for.end226

for.body214:                                      ; preds = %for.cond211
  %245 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %246 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %247 = load i32, ptr %i__, align 4, !tbaa !8
  %248 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul215 = mul nsw i32 %247, %248
  %add216 = add nsw i32 %mul215, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds %struct.doublecomplex, ptr %246, i64 %idxprom217
  %249 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %250 = load i32, ptr %i__, align 4, !tbaa !8
  %251 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul219 = mul nsw i32 %250, %251
  %add220 = add nsw i32 %mul219, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds %struct.doublecomplex, ptr %249, i64 %idxprom221
  %call223 = call i32 @zaxpy_(ptr noundef %245, ptr noundef @c_b2, ptr noundef %arrayidx218, ptr noundef @c__1, ptr noundef %arrayidx222, ptr noundef @c__1)
  br label %for.inc224

for.inc224:                                       ; preds = %for.body214
  %252 = load i32, ptr %i__, align 4, !tbaa !8
  %inc225 = add nsw i32 %252, 1
  store i32 %inc225, ptr %i__, align 4, !tbaa !8
  br label %for.cond211, !llvm.loop !16

for.end226:                                       ; preds = %for.cond211
  %253 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %254 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %255 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %256 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom227 = sext i32 %256 to i64
  %arrayidx228 = getelementptr inbounds %struct.doublecomplex, ptr %255, i64 %idxprom227
  %257 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %258 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %259 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom229 = sext i32 %259 to i64
  %arrayidx230 = getelementptr inbounds %struct.doublecomplex, ptr %258, i64 %idxprom229
  %260 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call231 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %253, ptr noundef %254, ptr noundef %arrayidx228, ptr noundef %257, ptr noundef %arrayidx230, ptr noundef %260)
  %261 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %262 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %263 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %264 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %265 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom232 = sext i32 %265 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %264, i64 %idxprom232
  %266 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %267 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %268 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom234 = sext i32 %268 to i64
  %arrayidx235 = getelementptr inbounds %struct.doublecomplex, ptr %267, i64 %idxprom234
  %269 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %270 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %271 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom236 = sext i32 %271 to i64
  %arrayidx237 = getelementptr inbounds %struct.doublecomplex, ptr %270, i64 %idxprom236
  %272 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call238 = call i32 @zhemm_(ptr noundef @.str.1, ptr noundef %261, ptr noundef %262, ptr noundef %263, ptr noundef @c_b1, ptr noundef %arrayidx233, ptr noundef %266, ptr noundef %arrayidx235, ptr noundef %269, ptr noundef @c_b2, ptr noundef %arrayidx237, ptr noundef %272)
  %273 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %274 = load i32, ptr %273, align 4, !tbaa !8
  store i32 %274, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond239

for.cond239:                                      ; preds = %for.inc318, %for.end226
  %275 = load i32, ptr %i__, align 4, !tbaa !8
  %276 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp240 = icmp sle i32 %275, %276
  br i1 %cmp240, label %for.body242, label %for.end320

for.body242:                                      ; preds = %for.cond239
  %277 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %278 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %279 = load i32, ptr %i__, align 4, !tbaa !8
  %280 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul243 = mul nsw i32 %279, %280
  %add244 = add nsw i32 %mul243, 1
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds %struct.doublecomplex, ptr %278, i64 %idxprom245
  %call247 = call i32 @izamax_(ptr noundef %277, ptr noundef %arrayidx246, ptr noundef @c__1)
  %281 = load i32, ptr %i__, align 4, !tbaa !8
  %282 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul248 = mul nsw i32 %281, %282
  %add249 = add nsw i32 %call247, %mul248
  store i32 %add249, ptr %i__2, align 4, !tbaa !8
  %283 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %284 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom250 = sext i32 %284 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %283, i64 %idxprom250
  %r252 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx251, i32 0, i32 0
  %285 = load double, ptr %r252, align 8, !tbaa !12
  store double %285, ptr %d__1, align 8, !tbaa !10
  %286 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp253 = fcmp oge double %286, 0.000000e+00
  br i1 %cmp253, label %cond.true255, label %cond.false256

cond.true255:                                     ; preds = %for.body242
  %287 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end258

cond.false256:                                    ; preds = %for.body242
  %288 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg257 = fneg double %288
  br label %cond.end258

cond.end258:                                      ; preds = %cond.false256, %cond.true255
  %cond259 = phi double [ %287, %cond.true255 ], [ %fneg257, %cond.false256 ]
  %289 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %291 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %292 = load i32, ptr %i__, align 4, !tbaa !8
  %293 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul260 = mul nsw i32 %292, %293
  %add261 = add nsw i32 %mul260, 1
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds %struct.doublecomplex, ptr %291, i64 %idxprom262
  %call264 = call i32 @izamax_(ptr noundef %290, ptr noundef %arrayidx263, ptr noundef @c__1)
  %294 = load i32, ptr %i__, align 4, !tbaa !8
  %295 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul265 = mul nsw i32 %294, %295
  %add266 = add nsw i32 %call264, %mul265
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds %struct.doublecomplex, ptr %289, i64 %idxprom267
  %call269 = call double @d_imag(ptr noundef %arrayidx268)
  store double %call269, ptr %d__2, align 8, !tbaa !10
  %296 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp270 = fcmp oge double %296, 0.000000e+00
  br i1 %cmp270, label %cond.true272, label %cond.false273

cond.true272:                                     ; preds = %cond.end258
  %297 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end275

cond.false273:                                    ; preds = %cond.end258
  %298 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg274 = fneg double %298
  br label %cond.end275

cond.end275:                                      ; preds = %cond.false273, %cond.true272
  %cond276 = phi double [ %297, %cond.true272 ], [ %fneg274, %cond.false273 ]
  %add277 = fadd double %cond259, %cond276
  store double %add277, ptr %xnrm, align 8, !tbaa !10
  %299 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %300 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %301 = load i32, ptr %i__, align 4, !tbaa !8
  %302 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul278 = mul nsw i32 %301, %302
  %add279 = add nsw i32 %mul278, 1
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds %struct.doublecomplex, ptr %300, i64 %idxprom280
  %call282 = call i32 @izamax_(ptr noundef %299, ptr noundef %arrayidx281, ptr noundef @c__1)
  %303 = load i32, ptr %i__, align 4, !tbaa !8
  %304 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul283 = mul nsw i32 %303, %304
  %add284 = add nsw i32 %call282, %mul283
  store i32 %add284, ptr %i__2, align 4, !tbaa !8
  %305 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %306 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom285 = sext i32 %306 to i64
  %arrayidx286 = getelementptr inbounds %struct.doublecomplex, ptr %305, i64 %idxprom285
  %r287 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx286, i32 0, i32 0
  %307 = load double, ptr %r287, align 8, !tbaa !12
  store double %307, ptr %d__1, align 8, !tbaa !10
  %308 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp288 = fcmp oge double %308, 0.000000e+00
  br i1 %cmp288, label %cond.true290, label %cond.false291

cond.true290:                                     ; preds = %cond.end275
  %309 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end293

cond.false291:                                    ; preds = %cond.end275
  %310 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg292 = fneg double %310
  br label %cond.end293

cond.end293:                                      ; preds = %cond.false291, %cond.true290
  %cond294 = phi double [ %309, %cond.true290 ], [ %fneg292, %cond.false291 ]
  %311 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %312 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %313 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %314 = load i32, ptr %i__, align 4, !tbaa !8
  %315 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul295 = mul nsw i32 %314, %315
  %add296 = add nsw i32 %mul295, 1
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds %struct.doublecomplex, ptr %313, i64 %idxprom297
  %call299 = call i32 @izamax_(ptr noundef %312, ptr noundef %arrayidx298, ptr noundef @c__1)
  %316 = load i32, ptr %i__, align 4, !tbaa !8
  %317 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul300 = mul nsw i32 %316, %317
  %add301 = add nsw i32 %call299, %mul300
  %idxprom302 = sext i32 %add301 to i64
  %arrayidx303 = getelementptr inbounds %struct.doublecomplex, ptr %311, i64 %idxprom302
  %call304 = call double @d_imag(ptr noundef %arrayidx303)
  store double %call304, ptr %d__2, align 8, !tbaa !10
  %318 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp305 = fcmp oge double %318, 0.000000e+00
  br i1 %cmp305, label %cond.true307, label %cond.false308

cond.true307:                                     ; preds = %cond.end293
  %319 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end310

cond.false308:                                    ; preds = %cond.end293
  %320 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg309 = fneg double %320
  br label %cond.end310

cond.end310:                                      ; preds = %cond.false308, %cond.true307
  %cond311 = phi double [ %319, %cond.true307 ], [ %fneg309, %cond.false308 ]
  %add312 = fadd double %cond294, %cond311
  store double %add312, ptr %rnrm, align 8, !tbaa !10
  %321 = load double, ptr %rnrm, align 8, !tbaa !10
  %322 = load double, ptr %xnrm, align 8, !tbaa !10
  %323 = load double, ptr %cte, align 8, !tbaa !10
  %mul313 = fmul double %322, %323
  %cmp314 = fcmp ogt double %321, %mul313
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %cond.end310
  br label %L20

if.end317:                                        ; preds = %cond.end310
  br label %for.inc318

for.inc318:                                       ; preds = %if.end317
  %324 = load i32, ptr %i__, align 4, !tbaa !8
  %inc319 = add nsw i32 %324, 1
  store i32 %inc319, ptr %i__, align 4, !tbaa !8
  br label %for.cond239, !llvm.loop !17

for.end320:                                       ; preds = %for.cond239
  %325 = load i32, ptr %iiter, align 4, !tbaa !8
  %326 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 %325, ptr %326, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

L20:                                              ; preds = %if.then316
  br label %for.inc321

for.inc321:                                       ; preds = %L20
  %327 = load i32, ptr %iiter, align 4, !tbaa !8
  %inc322 = add nsw i32 %327, 1
  store i32 %inc322, ptr %iiter, align 4, !tbaa !8
  br label %for.cond188, !llvm.loop !18

for.end323:                                       ; preds = %for.cond188
  %328 = load ptr, ptr %iter.addr, align 8, !tbaa !4
  store i32 -31, ptr %328, align 4, !tbaa !8
  br label %L40

L40:                                              ; preds = %for.end323, %if.then199, %if.then89, %if.then82, %if.then73
  %329 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %330 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %331 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %332 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom324 = sext i32 %332 to i64
  %arrayidx325 = getelementptr inbounds %struct.doublecomplex, ptr %331, i64 %idxprom324
  %333 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %334 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call326 = call i32 @zpotrf_(ptr noundef %329, ptr noundef %330, ptr noundef %arrayidx325, ptr noundef %333, ptr noundef %334)
  %335 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %336 = load i32, ptr %335, align 4, !tbaa !8
  %cmp327 = icmp ne i32 %336, 0
  br i1 %cmp327, label %if.then329, label %if.end330

if.then329:                                       ; preds = %L40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end330:                                        ; preds = %L40
  %337 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %338 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %339 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %340 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom331 = sext i32 %340 to i64
  %arrayidx332 = getelementptr inbounds %struct.doublecomplex, ptr %339, i64 %idxprom331
  %341 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %342 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %343 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom333 = sext i32 %343 to i64
  %arrayidx334 = getelementptr inbounds %struct.doublecomplex, ptr %342, i64 %idxprom333
  %344 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call335 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %337, ptr noundef %338, ptr noundef %arrayidx332, ptr noundef %341, ptr noundef %arrayidx334, ptr noundef %344)
  %345 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %346 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %347 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %348 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %349 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom336 = sext i32 %349 to i64
  %arrayidx337 = getelementptr inbounds %struct.doublecomplex, ptr %348, i64 %idxprom336
  %350 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %351 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %352 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom338 = sext i32 %352 to i64
  %arrayidx339 = getelementptr inbounds %struct.doublecomplex, ptr %351, i64 %idxprom338
  %353 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %354 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call340 = call i32 @zpotrs_(ptr noundef %345, ptr noundef %346, ptr noundef %347, ptr noundef %arrayidx337, ptr noundef %350, ptr noundef %arrayidx339, ptr noundef %353, ptr noundef %354)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end330, %if.then329, %for.end320, %for.end, %if.then56, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr %iiter) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptsx) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xnrm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rnrm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptsa) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %anrm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cte) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %work_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %work_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %355 = load i32, ptr %retval, align 4
  ret i32 %355
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare double @zlanhe_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare double @dlamch_(ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

declare i32 @zlag2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlat2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cpotrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cpotrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clag2z_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zhemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @izamax_(ptr noundef, ptr noundef, ptr noundef) #2

declare double @d_imag(ptr noundef) #2

declare i32 @zaxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zpotrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zpotrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #4 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
