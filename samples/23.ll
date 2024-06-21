; ModuleID = 'samples/23.bc'
source_filename = "dgetri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre_dgetri.c__1 = internal global i32 1, align 4
@hypre_dgetri.c_n1 = internal global i32 -1, align 4
@hypre_dgetri.c__2 = internal global i32 2, align 4
@hypre_dgetri.c_b20 = internal global double -1.000000e+00, align 8
@hypre_dgetri.c_b22 = internal global double 1.000000e+00, align 8
@hypre_dgetri.i__ = internal global i32 0, align 4
@hypre_dgetri.j = internal global i32 0, align 4
@hypre_dgetri.nbmin = internal global i32 0, align 4
@hypre_dgetri.jb = internal global i32 0, align 4
@hypre_dgetri.nb = internal global i32 0, align 4
@hypre_dgetri.jj = internal global i32 0, align 4
@hypre_dgetri.jp = internal global i32 0, align 4
@hypre_dgetri.nn = internal global i32 0, align 4
@hypre_dgetri.ldwork = internal global i32 0, align 4
@hypre_dgetri.lwkopt = internal global i32 0, align 4
@hypre_dgetri.lquery = internal global i64 0, align 8
@hypre_dgetri.iws = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGETRI\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_dgetri(ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %ipiv, ptr %ipiv.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 1
  %add = add nsw i32 1, %mul
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ilaenv(ptr noundef @hypre_dgetri.c__1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %8, ptr noundef @hypre_dgetri.c_n1, ptr noundef @hypre_dgetri.c_n1, ptr noundef @hypre_dgetri.c_n1, i32 noundef 6, i32 noundef 1)
  store i32 %call, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %9 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %11 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %mul2 = mul nsw i32 %10, %11
  store i32 %mul2, ptr @hypre_dgetri.lwkopt, align 4, !tbaa !8
  %12 = load i32, ptr @hypre_dgetri.lwkopt, align 4, !tbaa !8
  %conv = sitofp i32 %12 to double
  %13 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %13, i64 1
  store double %conv, ptr %arrayidx, align 8, !tbaa !10
  %14 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %cmp = icmp eq i32 %15, -1
  %conv3 = zext i1 %cmp to i32
  %conv4 = sext i32 %conv3 to i64
  store i64 %conv4, ptr @hypre_dgetri.lquery, align 8, !tbaa !12
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %18, align 4, !tbaa !8
  br label %if.end23

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %21 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp7 = icmp sge i32 1, %22
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %24, %cond.false ]
  %cmp9 = icmp slt i32 %20, %cond
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %cond.end
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %25, align 4, !tbaa !8
  br label %if.end22

if.else12:                                        ; preds = %cond.end
  %26 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %28 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %cmp13 = icmp sge i32 1, %29
  br i1 %cmp13, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %if.else12
  br label %cond.end17

cond.false16:                                     ; preds = %if.else12
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i32 [ 1, %cond.true15 ], [ %31, %cond.false16 ]
  %cmp19 = icmp slt i32 %27, %cond18
  br i1 %cmp19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end17
  %32 = load i64, ptr @hypre_dgetri.lquery, align 8, !tbaa !12
  %tobool = icmp ne i64 %32, 0
  br i1 %tobool, label %if.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %33, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then21, %land.lhs.true, %cond.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then11
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp24 = icmp ne i32 %35, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.end23
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %sub = sub nsw i32 0, %37
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call27 = call i32 @hypre_lapack_xerbla(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else28:                                        ; preds = %if.end23
  %38 = load i64, ptr @hypre_dgetri.lquery, align 8, !tbaa !12
  %tobool29 = icmp ne i64 %38, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.else28
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %39 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %40, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %41 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %43 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %43 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %42, i64 %idxprom
  %44 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call38 = call i32 @hypre_dtrtri(ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %41, ptr noundef %arrayidx37, ptr noundef %44, ptr noundef %45)
  %46 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %cmp39 = icmp sgt i32 %47, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  store i32 2, ptr @hypre_dgetri.nbmin, align 4, !tbaa !8
  %48 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  store i32 %49, ptr @hypre_dgetri.ldwork, align 4, !tbaa !8
  %50 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %50, 1
  br i1 %cmp43, label %land.lhs.true45, label %if.else67

land.lhs.true45:                                  ; preds = %if.end42
  %51 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %52 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %cmp46 = icmp slt i32 %51, %53
  br i1 %cmp46, label %if.then48, label %if.else67

if.then48:                                        ; preds = %land.lhs.true45
  %54 = load i32, ptr @hypre_dgetri.ldwork, align 4, !tbaa !8
  %55 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %mul49 = mul nsw i32 %54, %55
  store i32 %mul49, ptr %i__1, align 4, !tbaa !8
  %56 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp50 = icmp sge i32 %56, 1
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %if.then48
  %57 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end54

cond.false53:                                     ; preds = %if.then48
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ %57, %cond.true52 ], [ 1, %cond.false53 ]
  store i32 %cond55, ptr @hypre_dgetri.iws, align 4, !tbaa !8
  %58 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = load i32, ptr @hypre_dgetri.iws, align 4, !tbaa !8
  %cmp56 = icmp slt i32 %59, %60
  br i1 %cmp56, label %if.then58, label %if.end66

if.then58:                                        ; preds = %cond.end54
  %61 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %63 = load i32, ptr @hypre_dgetri.ldwork, align 4, !tbaa !8
  %div = sdiv i32 %62, %63
  store i32 %div, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  store i32 2, ptr %i__1, align 4, !tbaa !8
  %64 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call59 = call i32 @hypre_ilaenv(ptr noundef @hypre_dgetri.c__2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %64, ptr noundef @hypre_dgetri.c_n1, ptr noundef @hypre_dgetri.c_n1, ptr noundef @hypre_dgetri.c_n1, i32 noundef 6, i32 noundef 1)
  store i32 %call59, ptr %i__2, align 4, !tbaa !8
  %65 = load i32, ptr %i__1, align 4, !tbaa !8
  %66 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp60 = icmp sge i32 %65, %66
  br i1 %cmp60, label %cond.true62, label %cond.false63

cond.true62:                                      ; preds = %if.then58
  %67 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end64

cond.false63:                                     ; preds = %if.then58
  %68 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi i32 [ %67, %cond.true62 ], [ %68, %cond.false63 ]
  store i32 %cond65, ptr @hypre_dgetri.nbmin, align 4, !tbaa !8
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %cond.end54
  br label %if.end68

if.else67:                                        ; preds = %land.lhs.true45, %if.end42
  %69 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  store i32 %70, ptr @hypre_dgetri.iws, align 4, !tbaa !8
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.end66
  %71 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %72 = load i32, ptr @hypre_dgetri.nbmin, align 4, !tbaa !8
  %cmp69 = icmp slt i32 %71, %72
  br i1 %cmp69, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end68
  %73 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %74 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %75 = load i32, ptr %74, align 4, !tbaa !8
  %cmp71 = icmp sge i32 %73, %75
  br i1 %cmp71, label %if.then73, label %if.else111

if.then73:                                        ; preds = %lor.lhs.false, %if.end68
  %76 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  store i32 %77, ptr @hypre_dgetri.j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc109, %if.then73
  %78 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %cmp74 = icmp sge i32 %78, 1
  br i1 %cmp74, label %for.body, label %for.end110

for.body:                                         ; preds = %for.cond
  %79 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  store i32 %80, ptr %i__1, align 4, !tbaa !8
  %81 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %add76 = add nsw i32 %81, 1
  store i32 %add76, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc, %for.body
  %82 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %83 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp78 = icmp sle i32 %82, %83
  br i1 %cmp78, label %for.body80, label %for.end

for.body80:                                       ; preds = %for.cond77
  %84 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %85 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %86 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul81 = mul nsw i32 %85, %86
  %87 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %add82 = add nsw i32 %mul81, %87
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds double, ptr %84, i64 %idxprom83
  %88 = load double, ptr %arrayidx84, align 8, !tbaa !10
  %89 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %90 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %idxprom85 = sext i32 %90 to i64
  %arrayidx86 = getelementptr inbounds double, ptr %89, i64 %idxprom85
  store double %88, ptr %arrayidx86, align 8, !tbaa !10
  %91 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %92 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %93 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul87 = mul nsw i32 %92, %93
  %94 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %add88 = add nsw i32 %mul87, %94
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds double, ptr %91, i64 %idxprom89
  store double 0.000000e+00, ptr %arrayidx90, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body80
  %95 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %inc = add nsw i32 %95, 1
  store i32 %inc, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  br label %for.cond77, !llvm.loop !14

for.end:                                          ; preds = %for.cond77
  %96 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %97 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  %cmp91 = icmp slt i32 %96, %98
  br i1 %cmp91, label %if.then93, label %if.end108

if.then93:                                        ; preds = %for.end
  %99 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  %101 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %sub94 = sub nsw i32 %100, %101
  store i32 %sub94, ptr %i__1, align 4, !tbaa !8
  %102 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %add95 = add nsw i32 %104, 1
  %105 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul96 = mul nsw i32 %add95, %105
  %add97 = add nsw i32 %mul96, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %103, i64 %idxprom98
  %106 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %107 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %108 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %add100 = add nsw i32 %108, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds double, ptr %107, i64 %idxprom101
  %109 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %110 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %111 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul103 = mul nsw i32 %110, %111
  %add104 = add nsw i32 %mul103, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, ptr %109, i64 %idxprom105
  %call107 = call i32 @dgemv_(ptr noundef @.str.4, ptr noundef %102, ptr noundef %i__1, ptr noundef @hypre_dgetri.c_b20, ptr noundef %arrayidx99, ptr noundef %106, ptr noundef %arrayidx102, ptr noundef @hypre_dgetri.c__1, ptr noundef @hypre_dgetri.c_b22, ptr noundef %arrayidx106, ptr noundef @hypre_dgetri.c__1)
  br label %if.end108

if.end108:                                        ; preds = %if.then93, %for.end
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %112 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %dec = add nsw i32 %112, -1
  store i32 %dec, ptr @hypre_dgetri.j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end110:                                       ; preds = %for.cond
  br label %if.end199

if.else111:                                       ; preds = %lor.lhs.false
  %113 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %114 = load i32, ptr %113, align 4, !tbaa !8
  %sub112 = sub nsw i32 %114, 1
  %115 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %div113 = sdiv i32 %sub112, %115
  %116 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %mul114 = mul nsw i32 %div113, %116
  %add115 = add nsw i32 %mul114, 1
  store i32 %add115, ptr @hypre_dgetri.nn, align 4, !tbaa !8
  %117 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  %sub116 = sub nsw i32 0, %117
  store i32 %sub116, ptr %i__1, align 4, !tbaa !8
  %118 = load i32, ptr @hypre_dgetri.nn, align 4, !tbaa !8
  store i32 %118, ptr @hypre_dgetri.j, align 4, !tbaa !8
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc196, %if.else111
  %119 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp118 = icmp slt i32 %119, 0
  br i1 %cmp118, label %cond.true120, label %cond.false123

cond.true120:                                     ; preds = %for.cond117
  %120 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %cmp121 = icmp sge i32 %120, 1
  %conv122 = zext i1 %cmp121 to i32
  br label %cond.end126

cond.false123:                                    ; preds = %for.cond117
  %121 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %cmp124 = icmp sle i32 %121, 1
  %conv125 = zext i1 %cmp124 to i32
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false123, %cond.true120
  %cond127 = phi i32 [ %conv122, %cond.true120 ], [ %conv125, %cond.false123 ]
  %tobool128 = icmp ne i32 %cond127, 0
  br i1 %tobool128, label %for.body129, label %for.end198

for.body129:                                      ; preds = %cond.end126
  %122 = load i32, ptr @hypre_dgetri.nb, align 4, !tbaa !8
  store i32 %122, ptr %i__2, align 4, !tbaa !8
  %123 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %124 = load i32, ptr %123, align 4, !tbaa !8
  %125 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %sub130 = sub nsw i32 %124, %125
  %add131 = add nsw i32 %sub130, 1
  store i32 %add131, ptr %i__3, align 4, !tbaa !8
  %126 = load i32, ptr %i__2, align 4, !tbaa !8
  %127 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp132 = icmp sle i32 %126, %127
  br i1 %cmp132, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %for.body129
  %128 = load i32, ptr %i__2, align 4, !tbaa !8
  br label %cond.end136

cond.false135:                                    ; preds = %for.body129
  %129 = load i32, ptr %i__3, align 4, !tbaa !8
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false135, %cond.true134
  %cond137 = phi i32 [ %128, %cond.true134 ], [ %129, %cond.false135 ]
  store i32 %cond137, ptr @hypre_dgetri.jb, align 4, !tbaa !8
  %130 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %131 = load i32, ptr @hypre_dgetri.jb, align 4, !tbaa !8
  %add138 = add nsw i32 %130, %131
  %sub139 = sub nsw i32 %add138, 1
  store i32 %sub139, ptr %i__2, align 4, !tbaa !8
  %132 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  store i32 %132, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc165, %cond.end136
  %133 = load i32, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  %134 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp141 = icmp sle i32 %133, %134
  br i1 %cmp141, label %for.body143, label %for.end167

for.body143:                                      ; preds = %for.cond140
  %135 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  store i32 %136, ptr %i__3, align 4, !tbaa !8
  %137 = load i32, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  %add144 = add nsw i32 %137, 1
  store i32 %add144, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc162, %for.body143
  %138 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %139 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp146 = icmp sle i32 %138, %139
  br i1 %cmp146, label %for.body148, label %for.end164

for.body148:                                      ; preds = %for.cond145
  %140 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %141 = load i32, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  %142 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul149 = mul nsw i32 %141, %142
  %143 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %add150 = add nsw i32 %mul149, %143
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds double, ptr %140, i64 %idxprom151
  %144 = load double, ptr %arrayidx152, align 8, !tbaa !10
  %145 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %146 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %147 = load i32, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  %148 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %sub153 = sub nsw i32 %147, %148
  %149 = load i32, ptr @hypre_dgetri.ldwork, align 4, !tbaa !8
  %mul154 = mul nsw i32 %sub153, %149
  %add155 = add nsw i32 %146, %mul154
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %145, i64 %idxprom156
  store double %144, ptr %arrayidx157, align 8, !tbaa !10
  %150 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %151 = load i32, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  %152 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul158 = mul nsw i32 %151, %152
  %153 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %add159 = add nsw i32 %mul158, %153
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds double, ptr %150, i64 %idxprom160
  store double 0.000000e+00, ptr %arrayidx161, align 8, !tbaa !10
  br label %for.inc162

for.inc162:                                       ; preds = %for.body148
  %154 = load i32, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  %inc163 = add nsw i32 %154, 1
  store i32 %inc163, ptr @hypre_dgetri.i__, align 4, !tbaa !8
  br label %for.cond145, !llvm.loop !17

for.end164:                                       ; preds = %for.cond145
  br label %for.inc165

for.inc165:                                       ; preds = %for.end164
  %155 = load i32, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  %inc166 = add nsw i32 %155, 1
  store i32 %inc166, ptr @hypre_dgetri.jj, align 4, !tbaa !8
  br label %for.cond140, !llvm.loop !18

for.end167:                                       ; preds = %for.cond140
  %156 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %157 = load i32, ptr @hypre_dgetri.jb, align 4, !tbaa !8
  %add168 = add nsw i32 %156, %157
  %158 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %159 = load i32, ptr %158, align 4, !tbaa !8
  %cmp169 = icmp sle i32 %add168, %159
  br i1 %cmp169, label %if.then171, label %if.end188

if.then171:                                       ; preds = %for.end167
  %160 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %161 = load i32, ptr %160, align 4, !tbaa !8
  %162 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %sub172 = sub nsw i32 %161, %162
  %163 = load i32, ptr @hypre_dgetri.jb, align 4, !tbaa !8
  %sub173 = sub nsw i32 %sub172, %163
  %add174 = add nsw i32 %sub173, 1
  store i32 %add174, ptr %i__2, align 4, !tbaa !8
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %166 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %167 = load i32, ptr @hypre_dgetri.jb, align 4, !tbaa !8
  %add175 = add nsw i32 %166, %167
  %168 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul176 = mul nsw i32 %add175, %168
  %add177 = add nsw i32 %mul176, 1
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %165, i64 %idxprom178
  %169 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %170 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %171 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %172 = load i32, ptr @hypre_dgetri.jb, align 4, !tbaa !8
  %add180 = add nsw i32 %171, %172
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds double, ptr %170, i64 %idxprom181
  %173 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %174 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %175 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul183 = mul nsw i32 %174, %175
  %add184 = add nsw i32 %mul183, 1
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds double, ptr %173, i64 %idxprom185
  %176 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call187 = call i32 @dgemm_(ptr noundef @.str.4, ptr noundef @.str.4, ptr noundef %164, ptr noundef @hypre_dgetri.jb, ptr noundef %i__2, ptr noundef @hypre_dgetri.c_b20, ptr noundef %arrayidx179, ptr noundef %169, ptr noundef %arrayidx182, ptr noundef @hypre_dgetri.ldwork, ptr noundef @hypre_dgetri.c_b22, ptr noundef %arrayidx186, ptr noundef %176)
  br label %if.end188

if.end188:                                        ; preds = %if.then171, %for.end167
  %177 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %178 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %179 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %idxprom189 = sext i32 %179 to i64
  %arrayidx190 = getelementptr inbounds double, ptr %178, i64 %idxprom189
  %180 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %181 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %182 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul191 = mul nsw i32 %181, %182
  %add192 = add nsw i32 %mul191, 1
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %180, i64 %idxprom193
  %183 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call195 = call i32 @dtrsm_(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef @.str.4, ptr noundef @.str.7, ptr noundef %177, ptr noundef @hypre_dgetri.jb, ptr noundef @hypre_dgetri.c_b22, ptr noundef %arrayidx190, ptr noundef @hypre_dgetri.ldwork, ptr noundef %arrayidx194, ptr noundef %183)
  br label %for.inc196

for.inc196:                                       ; preds = %if.end188
  %184 = load i32, ptr %i__1, align 4, !tbaa !8
  %185 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %add197 = add nsw i32 %185, %184
  store i32 %add197, ptr @hypre_dgetri.j, align 4, !tbaa !8
  br label %for.cond117, !llvm.loop !19

for.end198:                                       ; preds = %cond.end126
  br label %if.end199

if.end199:                                        ; preds = %for.end198, %for.end110
  %186 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %187 = load i32, ptr %186, align 4, !tbaa !8
  %sub200 = sub nsw i32 %187, 1
  store i32 %sub200, ptr @hypre_dgetri.j, align 4, !tbaa !8
  br label %for.cond201

for.cond201:                                      ; preds = %for.inc220, %if.end199
  %188 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %cmp202 = icmp sge i32 %188, 1
  br i1 %cmp202, label %for.body204, label %for.end222

for.body204:                                      ; preds = %for.cond201
  %189 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %190 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %idxprom205 = sext i32 %190 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %189, i64 %idxprom205
  %191 = load i32, ptr %arrayidx206, align 4, !tbaa !8
  store i32 %191, ptr @hypre_dgetri.jp, align 4, !tbaa !8
  %192 = load i32, ptr @hypre_dgetri.jp, align 4, !tbaa !8
  %193 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %cmp207 = icmp ne i32 %192, %193
  br i1 %cmp207, label %if.then209, label %if.end219

if.then209:                                       ; preds = %for.body204
  %194 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %195 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %196 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %197 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul210 = mul nsw i32 %196, %197
  %add211 = add nsw i32 %mul210, 1
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds double, ptr %195, i64 %idxprom212
  %198 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %199 = load i32, ptr @hypre_dgetri.jp, align 4, !tbaa !8
  %200 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul214 = mul nsw i32 %199, %200
  %add215 = add nsw i32 %mul214, 1
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds double, ptr %198, i64 %idxprom216
  %call218 = call i32 @dswap_(ptr noundef %194, ptr noundef %arrayidx213, ptr noundef @hypre_dgetri.c__1, ptr noundef %arrayidx217, ptr noundef @hypre_dgetri.c__1)
  br label %if.end219

if.end219:                                        ; preds = %if.then209, %for.body204
  br label %for.inc220

for.inc220:                                       ; preds = %if.end219
  %201 = load i32, ptr @hypre_dgetri.j, align 4, !tbaa !8
  %dec221 = add nsw i32 %201, -1
  store i32 %dec221, ptr @hypre_dgetri.j, align 4, !tbaa !8
  br label %for.cond201, !llvm.loop !20

for.end222:                                       ; preds = %for.cond201
  %202 = load i32, ptr @hypre_dgetri.iws, align 4, !tbaa !8
  %conv223 = sitofp i32 %202 to double
  %203 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx224 = getelementptr inbounds double, ptr %203, i64 1
  store double %conv223, ptr %arrayidx224, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end222, %if.then41, %if.then35, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %204 = load i32, ptr %retval, align 4
  ret i32 %204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @hypre_ilaenv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @hypre_lapack_xerbla(ptr noundef, ptr noundef) #2

declare i32 @hypre_dtrtri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
