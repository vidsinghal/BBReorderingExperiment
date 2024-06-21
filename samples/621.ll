; ModuleID = 'samples/621.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/flamec/hetd/sorgtr_fla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SORGQL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"SORGQR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SORGTR\00", align 1

; Function Attrs: nounwind uwtable
define i32 @sorgtr_fla(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %nb = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %upper = alloca i32, align 4
  %lquery = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x14 = alloca i32, align 4
  %_y15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %_x47 = alloca i32, align 4
  %_y48 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwkopt) #3
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %cmp = icmp eq i32 %9, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %10 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %10, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %11 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call2 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %13, align 4, !tbaa !8
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %16, align 4, !tbaa !8
  br label %if.end29

if.else7:                                         ; preds = %if.else
  %17 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %19 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  store i32 %20, ptr %_y, align 4, !tbaa !8
  %21 = load i32, ptr %_x, align 4, !tbaa !8
  %22 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp8 = icmp sgt i32 %21, %22
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else7
  %23 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else7
  %24 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %25 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %18, %25
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %cond.end
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %26, align 4, !tbaa !8
  br label %if.end28

if.else13:                                        ; preds = %cond.end
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %27 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %sub = sub nsw i32 %28, 1
  store i32 %sub, ptr %i__2, align 4, !tbaa !8
  %29 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x14) #3
  %31 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %31, ptr %_x14, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y15) #3
  %32 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %32, ptr %_y15, align 4, !tbaa !8
  %33 = load i32, ptr %_x14, align 4, !tbaa !8
  %34 = load i32, ptr %_y15, align 4, !tbaa !8
  %cmp17 = icmp sgt i32 %33, %34
  br i1 %cmp17, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.else13
  %35 = load i32, ptr %_x14, align 4, !tbaa !8
  br label %cond.end21

cond.false20:                                     ; preds = %if.else13
  %36 = load i32, ptr %_y15, align 4, !tbaa !8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %35, %cond.true19 ], [ %36, %cond.false20 ]
  store i32 %cond22, ptr %tmp16, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x14) #3
  %37 = load i32, ptr %tmp16, align 4, !tbaa !8
  %cmp23 = icmp slt i32 %30, %37
  br i1 %cmp23, label %land.lhs.true25, label %if.end

land.lhs.true25:                                  ; preds = %cond.end21
  %38 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.end, label %if.then27

if.then27:                                        ; preds = %land.lhs.true25
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %39, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then27, %land.lhs.true25, %cond.end21
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then12
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then6
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %41, 0
  br i1 %cmp31, label %if.then33, label %if.end57

if.then33:                                        ; preds = %if.end30
  %42 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %if.then35, label %if.else40

if.then35:                                        ; preds = %if.then33
  %43 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %sub36 = sub nsw i32 %44, 1
  store i32 %sub36, ptr %i__1, align 4, !tbaa !8
  %45 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %46 = load i32, ptr %45, align 4, !tbaa !8
  %sub37 = sub nsw i32 %46, 1
  store i32 %sub37, ptr %i__2, align 4, !tbaa !8
  %47 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %sub38 = sub nsw i32 %48, 1
  store i32 %sub38, ptr %i__3, align 4, !tbaa !8
  %call39 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_n1)
  store i32 %call39, ptr %nb, align 4, !tbaa !8
  br label %if.end45

if.else40:                                        ; preds = %if.then33
  %49 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %sub41 = sub nsw i32 %50, 1
  store i32 %sub41, ptr %i__1, align 4, !tbaa !8
  %51 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %sub42 = sub nsw i32 %52, 1
  store i32 %sub42, ptr %i__2, align 4, !tbaa !8
  %53 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %sub43 = sub nsw i32 %54, 1
  store i32 %sub43, ptr %i__3, align 4, !tbaa !8
  %call44 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.4, ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_n1)
  store i32 %call44, ptr %nb, align 4, !tbaa !8
  br label %if.end45

if.end45:                                         ; preds = %if.else40, %if.then35
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %55 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %sub46 = sub nsw i32 %56, 1
  store i32 %sub46, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x47) #3
  %57 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %57, ptr %_x47, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y48) #3
  %58 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %58, ptr %_y48, align 4, !tbaa !8
  %59 = load i32, ptr %_x47, align 4, !tbaa !8
  %60 = load i32, ptr %_y48, align 4, !tbaa !8
  %cmp50 = icmp sgt i32 %59, %60
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %if.end45
  %61 = load i32, ptr %_x47, align 4, !tbaa !8
  br label %cond.end54

cond.false53:                                     ; preds = %if.end45
  %62 = load i32, ptr %_y48, align 4, !tbaa !8
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ %61, %cond.true52 ], [ %62, %cond.false53 ]
  store i32 %cond55, ptr %tmp49, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y48) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x47) #3
  %63 = load i32, ptr %tmp49, align 4, !tbaa !8
  %64 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %63, %64
  store i32 %mul, ptr %lwkopt, align 4, !tbaa !8
  %65 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv56 = sitofp i32 %65 to float
  %66 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float, ptr %66, i64 1
  store float %conv56, ptr %arrayidx, align 4, !tbaa !10
  br label %if.end57

if.end57:                                         ; preds = %cond.end54, %if.end30
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %cmp58 = icmp ne i32 %68, 0
  br i1 %cmp58, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.end57
  %69 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %sub61 = sub nsw i32 0, %70
  store i32 %sub61, ptr %i__1, align 4, !tbaa !8
  %call62 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else63:                                        ; preds = %if.end57
  %71 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool64 = icmp ne i32 %71, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.else63
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.else63
  br label %if.end67

if.end67:                                         ; preds = %if.end66
  %72 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %73 = load i32, ptr %72, align 4, !tbaa !8
  %cmp68 = icmp eq i32 %73, 0
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  %74 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds float, ptr %74, i64 1
  store float 1.000000e+00, ptr %arrayidx71, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  %75 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool73 = icmp ne i32 %75, 0
  br i1 %tobool73, label %if.then74, label %if.else122

if.then74:                                        ; preds = %if.end72
  %76 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %sub75 = sub nsw i32 %77, 1
  store i32 %sub75, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc95, %if.then74
  %78 = load i32, ptr %j, align 4, !tbaa !8
  %79 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp76 = icmp sle i32 %78, %79
  br i1 %cmp76, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  %80 = load i32, ptr %j, align 4, !tbaa !8
  %sub78 = sub nsw i32 %80, 1
  store i32 %sub78, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc, %for.body
  %81 = load i32, ptr %i__, align 4, !tbaa !8
  %82 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp80 = icmp sle i32 %81, %82
  br i1 %cmp80, label %for.body82, label %for.end

for.body82:                                       ; preds = %for.cond79
  %83 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %84 = load i32, ptr %i__, align 4, !tbaa !8
  %85 = load i32, ptr %j, align 4, !tbaa !8
  %add83 = add nsw i32 %85, 1
  %86 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul84 = mul nsw i32 %add83, %86
  %add85 = add nsw i32 %84, %mul84
  %idxprom = sext i32 %add85 to i64
  %arrayidx86 = getelementptr inbounds float, ptr %83, i64 %idxprom
  %87 = load float, ptr %arrayidx86, align 4, !tbaa !10
  %88 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %89 = load i32, ptr %i__, align 4, !tbaa !8
  %90 = load i32, ptr %j, align 4, !tbaa !8
  %91 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul87 = mul nsw i32 %90, %91
  %add88 = add nsw i32 %89, %mul87
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %88, i64 %idxprom89
  store float %87, ptr %arrayidx90, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body82
  %92 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond79, !llvm.loop !12

for.end:                                          ; preds = %for.cond79
  %93 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %95 = load i32, ptr %94, align 4, !tbaa !8
  %96 = load i32, ptr %j, align 4, !tbaa !8
  %97 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul91 = mul nsw i32 %96, %97
  %add92 = add nsw i32 %95, %mul91
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds float, ptr %93, i64 %idxprom93
  store float 0.000000e+00, ptr %arrayidx94, align 4, !tbaa !10
  br label %for.inc95

for.inc95:                                        ; preds = %for.end
  %98 = load i32, ptr %j, align 4, !tbaa !8
  %inc96 = add nsw i32 %98, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end97:                                        ; preds = %for.cond
  %99 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  %sub98 = sub nsw i32 %100, 1
  store i32 %sub98, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc107, %for.end97
  %101 = load i32, ptr %i__, align 4, !tbaa !8
  %102 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp100 = icmp sle i32 %101, %102
  br i1 %cmp100, label %for.body102, label %for.end109

for.body102:                                      ; preds = %for.cond99
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = load i32, ptr %i__, align 4, !tbaa !8
  %105 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %106 = load i32, ptr %105, align 4, !tbaa !8
  %107 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul103 = mul nsw i32 %106, %107
  %add104 = add nsw i32 %104, %mul103
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds float, ptr %103, i64 %idxprom105
  store float 0.000000e+00, ptr %arrayidx106, align 4, !tbaa !10
  br label %for.inc107

for.inc107:                                       ; preds = %for.body102
  %108 = load i32, ptr %i__, align 4, !tbaa !8
  %inc108 = add nsw i32 %108, 1
  store i32 %inc108, ptr %i__, align 4, !tbaa !8
  br label %for.cond99, !llvm.loop !15

for.end109:                                       ; preds = %for.cond99
  %109 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %110 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %111 = load i32, ptr %110, align 4, !tbaa !8
  %112 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %113 = load i32, ptr %112, align 4, !tbaa !8
  %114 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul110 = mul nsw i32 %113, %114
  %add111 = add nsw i32 %111, %mul110
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds float, ptr %109, i64 %idxprom112
  store float 1.000000e+00, ptr %arrayidx113, align 4, !tbaa !10
  %115 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %sub114 = sub nsw i32 %116, 1
  store i32 %sub114, ptr %i__1, align 4, !tbaa !8
  %117 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  %sub115 = sub nsw i32 %118, 1
  store i32 %sub115, ptr %i__2, align 4, !tbaa !8
  %119 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %120 = load i32, ptr %119, align 4, !tbaa !8
  %sub116 = sub nsw i32 %120, 1
  store i32 %sub116, ptr %i__3, align 4, !tbaa !8
  %121 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %122 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom117 = sext i32 %122 to i64
  %arrayidx118 = getelementptr inbounds float, ptr %121, i64 %idxprom117
  %123 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds float, ptr %124, i64 1
  %125 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds float, ptr %125, i64 1
  %126 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call121 = call i32 @sorgql_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx118, ptr noundef %123, ptr noundef %arrayidx119, ptr noundef %arrayidx120, ptr noundef %126, ptr noundef %iinfo)
  br label %if.end176

if.else122:                                       ; preds = %if.end72
  %127 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %128 = load i32, ptr %127, align 4, !tbaa !8
  store i32 %128, ptr %j, align 4, !tbaa !8
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc148, %if.else122
  %129 = load i32, ptr %j, align 4, !tbaa !8
  %cmp124 = icmp sge i32 %129, 2
  br i1 %cmp124, label %for.body126, label %for.end149

for.body126:                                      ; preds = %for.cond123
  %130 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %131 = load i32, ptr %j, align 4, !tbaa !8
  %132 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul127 = mul nsw i32 %131, %132
  %add128 = add nsw i32 %mul127, 1
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %130, i64 %idxprom129
  store float 0.000000e+00, ptr %arrayidx130, align 4, !tbaa !10
  %133 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %134 = load i32, ptr %133, align 4, !tbaa !8
  store i32 %134, ptr %i__1, align 4, !tbaa !8
  %135 = load i32, ptr %j, align 4, !tbaa !8
  %add131 = add nsw i32 %135, 1
  store i32 %add131, ptr %i__, align 4, !tbaa !8
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc145, %for.body126
  %136 = load i32, ptr %i__, align 4, !tbaa !8
  %137 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp133 = icmp sle i32 %136, %137
  br i1 %cmp133, label %for.body135, label %for.end147

for.body135:                                      ; preds = %for.cond132
  %138 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %139 = load i32, ptr %i__, align 4, !tbaa !8
  %140 = load i32, ptr %j, align 4, !tbaa !8
  %sub136 = sub nsw i32 %140, 1
  %141 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul137 = mul nsw i32 %sub136, %141
  %add138 = add nsw i32 %139, %mul137
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds float, ptr %138, i64 %idxprom139
  %142 = load float, ptr %arrayidx140, align 4, !tbaa !10
  %143 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %145 = load i32, ptr %j, align 4, !tbaa !8
  %146 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul141 = mul nsw i32 %145, %146
  %add142 = add nsw i32 %144, %mul141
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %143, i64 %idxprom143
  store float %142, ptr %arrayidx144, align 4, !tbaa !10
  br label %for.inc145

for.inc145:                                       ; preds = %for.body135
  %147 = load i32, ptr %i__, align 4, !tbaa !8
  %inc146 = add nsw i32 %147, 1
  store i32 %inc146, ptr %i__, align 4, !tbaa !8
  br label %for.cond132, !llvm.loop !16

for.end147:                                       ; preds = %for.cond132
  br label %for.inc148

for.inc148:                                       ; preds = %for.end147
  %148 = load i32, ptr %j, align 4, !tbaa !8
  %dec = add nsw i32 %148, -1
  store i32 %dec, ptr %j, align 4, !tbaa !8
  br label %for.cond123, !llvm.loop !17

for.end149:                                       ; preds = %for.cond123
  %149 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %150 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add150 = add nsw i32 %150, 1
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds float, ptr %149, i64 %idxprom151
  store float 1.000000e+00, ptr %arrayidx152, align 4, !tbaa !10
  %151 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %152 = load i32, ptr %151, align 4, !tbaa !8
  store i32 %152, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %i__, align 4, !tbaa !8
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc160, %for.end149
  %153 = load i32, ptr %i__, align 4, !tbaa !8
  %154 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp154 = icmp sle i32 %153, %154
  br i1 %cmp154, label %for.body156, label %for.end162

for.body156:                                      ; preds = %for.cond153
  %155 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %156 = load i32, ptr %i__, align 4, !tbaa !8
  %157 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add157 = add nsw i32 %156, %157
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds float, ptr %155, i64 %idxprom158
  store float 0.000000e+00, ptr %arrayidx159, align 4, !tbaa !10
  br label %for.inc160

for.inc160:                                       ; preds = %for.body156
  %158 = load i32, ptr %i__, align 4, !tbaa !8
  %inc161 = add nsw i32 %158, 1
  store i32 %inc161, ptr %i__, align 4, !tbaa !8
  br label %for.cond153, !llvm.loop !18

for.end162:                                       ; preds = %for.cond153
  %159 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %160 = load i32, ptr %159, align 4, !tbaa !8
  %cmp163 = icmp sgt i32 %160, 1
  br i1 %cmp163, label %if.then165, label %if.end175

if.then165:                                       ; preds = %for.end162
  %161 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %162 = load i32, ptr %161, align 4, !tbaa !8
  %sub166 = sub nsw i32 %162, 1
  store i32 %sub166, ptr %i__1, align 4, !tbaa !8
  %163 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %164 = load i32, ptr %163, align 4, !tbaa !8
  %sub167 = sub nsw i32 %164, 1
  store i32 %sub167, ptr %i__2, align 4, !tbaa !8
  %165 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %166 = load i32, ptr %165, align 4, !tbaa !8
  %sub168 = sub nsw i32 %166, 1
  store i32 %sub168, ptr %i__3, align 4, !tbaa !8
  %167 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %168 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %shl = shl i32 %168, 1
  %add169 = add nsw i32 %shl, 2
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %167, i64 %idxprom170
  %169 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %170 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds float, ptr %170, i64 1
  %171 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx173 = getelementptr inbounds float, ptr %171, i64 1
  %172 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %call174 = call i32 @sorgqr_fla(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx171, ptr noundef %169, ptr noundef %arrayidx172, ptr noundef %arrayidx173, ptr noundef %172, ptr noundef %iinfo)
  br label %if.end175

if.end175:                                        ; preds = %if.then165, %for.end162
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %for.end109
  %173 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv177 = sitofp i32 %173 to float
  %174 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds float, ptr %174, i64 1
  store float %conv177, ptr %arrayidx178, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %if.then70, %if.then65, %if.then60
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %175 = load i32, ptr %retval, align 4
  ret i32 %175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @sorgql_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sorgqr_fla(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
