; ModuleID = 'samples/568.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dpstf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DPSTF2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@c__1 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Trans\00", align 1
@c_b16 = internal global double -1.000000e+00, align 8
@c_b18 = internal global double 1.000000e+00, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"No Trans\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dpstf2_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %piv, ptr noundef %rank, ptr noundef %tol, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %piv.addr = alloca ptr, align 8
  %rank.addr = alloca ptr, align 8
  %tol.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %ajj = alloca double, align 8
  %pvt = alloca i32, align 4
  %dtemp = alloca double, align 8
  %itemp = alloca i32, align 4
  %dstop = alloca double, align 8
  %upper = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %piv, ptr %piv.addr, align 8, !tbaa !4
  store ptr %rank, ptr %rank.addr, align 8, !tbaa !4
  store ptr %tol, ptr %tol.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ajj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pvt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtemp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %itemp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dstop) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #5
  %0 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %piv.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  store i32 %3, ptr %a_dim1, align 4, !tbaa !8
  %4 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %4
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %5 = load i32, ptr %a_offset, align 4, !tbaa !8
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %6, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %9 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call2 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %11, align 4, !tbaa !8
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %14, align 4, !tbaa !8
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %15 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #5
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #5
  %17 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  store i32 %18, ptr %_y, align 4, !tbaa !8
  %19 = load i32, ptr %_x, align 4, !tbaa !8
  %20 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp sgt i32 %19, %20
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else5
  %21 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else5
  %22 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #5
  %23 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %16, %23
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %cond.end
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %24, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then8, %cond.end
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %26, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %sub = sub nsw i32 0, %28
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call13 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %30, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  store i32 %32, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %33 = load i32, ptr %i__, align 4, !tbaa !8
  %34 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp18 = icmp sle i32 %33, %34
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, ptr %i__, align 4, !tbaa !8
  %36 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %37 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds i32, ptr %36, i64 %idxprom
  store i32 %35, ptr %arrayidx, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %pvt, align 4, !tbaa !8
  %39 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %40 = load i32, ptr %pvt, align 4, !tbaa !8
  %41 = load i32, ptr %pvt, align 4, !tbaa !8
  %42 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %41, %42
  %add19 = add nsw i32 %40, %mul
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %39, i64 %idxprom20
  %43 = load double, ptr %arrayidx21, align 8, !tbaa !12
  store double %43, ptr %ajj, align 8, !tbaa !12
  %44 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  store i32 %45, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %i__, align 4, !tbaa !8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc36, %for.end
  %46 = load i32, ptr %i__, align 4, !tbaa !8
  %47 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp23 = icmp sle i32 %46, %47
  br i1 %cmp23, label %for.body24, label %for.end38

for.body24:                                       ; preds = %for.cond22
  %48 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %49 = load i32, ptr %i__, align 4, !tbaa !8
  %50 = load i32, ptr %i__, align 4, !tbaa !8
  %51 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul25 = mul nsw i32 %50, %51
  %add26 = add nsw i32 %49, %mul25
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %48, i64 %idxprom27
  %52 = load double, ptr %arrayidx28, align 8, !tbaa !12
  %53 = load double, ptr %ajj, align 8, !tbaa !12
  %cmp29 = fcmp ogt double %52, %53
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %for.body24
  %54 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %54, ptr %pvt, align 4, !tbaa !8
  %55 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %56 = load i32, ptr %pvt, align 4, !tbaa !8
  %57 = load i32, ptr %pvt, align 4, !tbaa !8
  %58 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul31 = mul nsw i32 %57, %58
  %add32 = add nsw i32 %56, %mul31
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %55, i64 %idxprom33
  %59 = load double, ptr %arrayidx34, align 8, !tbaa !12
  store double %59, ptr %ajj, align 8, !tbaa !12
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %for.body24
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %60 = load i32, ptr %i__, align 4, !tbaa !8
  %inc37 = add nsw i32 %60, 1
  store i32 %inc37, ptr %i__, align 4, !tbaa !8
  br label %for.cond22, !llvm.loop !14

for.end38:                                        ; preds = %for.cond22
  %61 = load double, ptr %ajj, align 8, !tbaa !12
  %cmp39 = fcmp ole double %61, 0.000000e+00
  br i1 %cmp39, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end38
  %call40 = call i32 @disnan_(ptr noundef %ajj)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false, %for.end38
  %62 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 0, ptr %62, align 4, !tbaa !8
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 1, ptr %63, align 4, !tbaa !8
  br label %L170

if.end43:                                         ; preds = %lor.lhs.false
  %64 = load ptr, ptr %tol.addr, align 8, !tbaa !4
  %65 = load double, ptr %64, align 8, !tbaa !12
  %cmp44 = fcmp olt double %65, 0.000000e+00
  br i1 %cmp44, label %if.then45, label %if.else49

if.then45:                                        ; preds = %if.end43
  %66 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %conv = sitofp i32 %67 to double
  %call46 = call double @dlamch_(ptr noundef @.str.3)
  %mul47 = fmul double %conv, %call46
  %68 = load double, ptr %ajj, align 8, !tbaa !12
  %mul48 = fmul double %mul47, %68
  store double %mul48, ptr %dstop, align 8, !tbaa !12
  br label %if.end50

if.else49:                                        ; preds = %if.end43
  %69 = load ptr, ptr %tol.addr, align 8, !tbaa !4
  %70 = load double, ptr %69, align 8, !tbaa !12
  store double %70, ptr %dstop, align 8, !tbaa !12
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then45
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  store i32 %72, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc57, %if.end50
  %73 = load i32, ptr %i__, align 4, !tbaa !8
  %74 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp52 = icmp sle i32 %73, %74
  br i1 %cmp52, label %for.body54, label %for.end59

for.body54:                                       ; preds = %for.cond51
  %75 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %76 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom55 = sext i32 %76 to i64
  %arrayidx56 = getelementptr inbounds double, ptr %75, i64 %idxprom55
  store double 0.000000e+00, ptr %arrayidx56, align 8, !tbaa !12
  br label %for.inc57

for.inc57:                                        ; preds = %for.body54
  %77 = load i32, ptr %i__, align 4, !tbaa !8
  %inc58 = add nsw i32 %77, 1
  store i32 %inc58, ptr %i__, align 4, !tbaa !8
  br label %for.cond51, !llvm.loop !15

for.end59:                                        ; preds = %for.cond51
  %78 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool60 = icmp ne i32 %78, 0
  br i1 %tobool60, label %if.then61, label %if.else224

if.then61:                                        ; preds = %for.end59
  %79 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  store i32 %80, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc221, %if.then61
  %81 = load i32, ptr %j, align 4, !tbaa !8
  %82 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp63 = icmp sle i32 %81, %82
  br i1 %cmp63, label %for.body65, label %for.end223

for.body65:                                       ; preds = %for.cond62
  %83 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %84 = load i32, ptr %83, align 4, !tbaa !8
  store i32 %84, ptr %i__2, align 4, !tbaa !8
  %85 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %85, ptr %i__, align 4, !tbaa !8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc92, %for.body65
  %86 = load i32, ptr %i__, align 4, !tbaa !8
  %87 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp67 = icmp sle i32 %86, %87
  br i1 %cmp67, label %for.body69, label %for.end94

for.body69:                                       ; preds = %for.cond66
  %88 = load i32, ptr %j, align 4, !tbaa !8
  %cmp70 = icmp sgt i32 %88, 1
  br i1 %cmp70, label %if.then72, label %if.end81

if.then72:                                        ; preds = %for.body69
  %89 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %90 = load i32, ptr %j, align 4, !tbaa !8
  %sub73 = sub nsw i32 %90, 1
  %91 = load i32, ptr %i__, align 4, !tbaa !8
  %92 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul74 = mul nsw i32 %91, %92
  %add75 = add nsw i32 %sub73, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds double, ptr %89, i64 %idxprom76
  %93 = load double, ptr %arrayidx77, align 8, !tbaa !12
  store double %93, ptr %d__1, align 8, !tbaa !12
  %94 = load double, ptr %d__1, align 8, !tbaa !12
  %95 = load double, ptr %d__1, align 8, !tbaa !12
  %96 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %97 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom79 = sext i32 %97 to i64
  %arrayidx80 = getelementptr inbounds double, ptr %96, i64 %idxprom79
  %98 = load double, ptr %arrayidx80, align 8, !tbaa !12
  %99 = call double @llvm.fmuladd.f64(double %94, double %95, double %98)
  store double %99, ptr %arrayidx80, align 8, !tbaa !12
  br label %if.end81

if.end81:                                         ; preds = %if.then72, %for.body69
  %100 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %101 = load i32, ptr %i__, align 4, !tbaa !8
  %102 = load i32, ptr %i__, align 4, !tbaa !8
  %103 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul82 = mul nsw i32 %102, %103
  %add83 = add nsw i32 %101, %mul82
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds double, ptr %100, i64 %idxprom84
  %104 = load double, ptr %arrayidx85, align 8, !tbaa !12
  %105 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %106 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom86 = sext i32 %106 to i64
  %arrayidx87 = getelementptr inbounds double, ptr %105, i64 %idxprom86
  %107 = load double, ptr %arrayidx87, align 8, !tbaa !12
  %sub88 = fsub double %104, %107
  %108 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  %111 = load i32, ptr %i__, align 4, !tbaa !8
  %add89 = add nsw i32 %110, %111
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %108, i64 %idxprom90
  store double %sub88, ptr %arrayidx91, align 8, !tbaa !12
  br label %for.inc92

for.inc92:                                        ; preds = %if.end81
  %112 = load i32, ptr %i__, align 4, !tbaa !8
  %inc93 = add nsw i32 %112, 1
  store i32 %inc93, ptr %i__, align 4, !tbaa !8
  br label %for.cond66, !llvm.loop !16

for.end94:                                        ; preds = %for.cond66
  %113 = load i32, ptr %j, align 4, !tbaa !8
  %cmp95 = icmp sgt i32 %113, 1
  br i1 %cmp95, label %if.then97, label %if.end120

if.then97:                                        ; preds = %for.end94
  %114 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %116 = load i32, ptr %j, align 4, !tbaa !8
  %sub98 = sub nsw i32 %115, %116
  %add99 = add nsw i32 %sub98, 1
  store i32 %add99, ptr %i__2, align 4, !tbaa !8
  %117 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %119 = load i32, ptr %118, align 4, !tbaa !8
  %120 = load i32, ptr %j, align 4, !tbaa !8
  %add100 = add nsw i32 %119, %120
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds double, ptr %117, i64 %idxprom101
  %call103 = call i32 @dmaxloc_(ptr noundef %arrayidx102, ptr noundef %i__2)
  store i32 %call103, ptr %itemp, align 4, !tbaa !8
  %121 = load i32, ptr %itemp, align 4, !tbaa !8
  %122 = load i32, ptr %j, align 4, !tbaa !8
  %add104 = add nsw i32 %121, %122
  %sub105 = sub nsw i32 %add104, 1
  store i32 %sub105, ptr %pvt, align 4, !tbaa !8
  %123 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %125 = load i32, ptr %124, align 4, !tbaa !8
  %126 = load i32, ptr %pvt, align 4, !tbaa !8
  %add106 = add nsw i32 %125, %126
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds double, ptr %123, i64 %idxprom107
  %127 = load double, ptr %arrayidx108, align 8, !tbaa !12
  store double %127, ptr %ajj, align 8, !tbaa !12
  %128 = load double, ptr %ajj, align 8, !tbaa !12
  %129 = load double, ptr %dstop, align 8, !tbaa !12
  %cmp109 = fcmp ole double %128, %129
  br i1 %cmp109, label %if.then114, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.then97
  %call112 = call i32 @disnan_(ptr noundef %ajj)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then114, label %if.end119

if.then114:                                       ; preds = %lor.lhs.false111, %if.then97
  %130 = load double, ptr %ajj, align 8, !tbaa !12
  %131 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %132 = load i32, ptr %j, align 4, !tbaa !8
  %133 = load i32, ptr %j, align 4, !tbaa !8
  %134 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul115 = mul nsw i32 %133, %134
  %add116 = add nsw i32 %132, %mul115
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %131, i64 %idxprom117
  store double %130, ptr %arrayidx118, align 8, !tbaa !12
  br label %L160

if.end119:                                        ; preds = %lor.lhs.false111
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %for.end94
  %135 = load i32, ptr %j, align 4, !tbaa !8
  %136 = load i32, ptr %pvt, align 4, !tbaa !8
  %cmp121 = icmp ne i32 %135, %136
  br i1 %cmp121, label %if.then123, label %if.end187

if.then123:                                       ; preds = %if.end120
  %137 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %138 = load i32, ptr %j, align 4, !tbaa !8
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %140 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul124 = mul nsw i32 %139, %140
  %add125 = add nsw i32 %138, %mul124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds double, ptr %137, i64 %idxprom126
  %141 = load double, ptr %arrayidx127, align 8, !tbaa !12
  %142 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %143 = load i32, ptr %pvt, align 4, !tbaa !8
  %144 = load i32, ptr %pvt, align 4, !tbaa !8
  %145 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul128 = mul nsw i32 %144, %145
  %add129 = add nsw i32 %143, %mul128
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %142, i64 %idxprom130
  store double %141, ptr %arrayidx131, align 8, !tbaa !12
  %146 = load i32, ptr %j, align 4, !tbaa !8
  %sub132 = sub nsw i32 %146, 1
  store i32 %sub132, ptr %i__2, align 4, !tbaa !8
  %147 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %148 = load i32, ptr %j, align 4, !tbaa !8
  %149 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul133 = mul nsw i32 %148, %149
  %add134 = add nsw i32 %mul133, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %147, i64 %idxprom135
  %150 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %151 = load i32, ptr %pvt, align 4, !tbaa !8
  %152 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul137 = mul nsw i32 %151, %152
  %add138 = add nsw i32 %mul137, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds double, ptr %150, i64 %idxprom139
  %call141 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx136, ptr noundef @c__1, ptr noundef %arrayidx140, ptr noundef @c__1)
  %153 = load i32, ptr %pvt, align 4, !tbaa !8
  %154 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %155 = load i32, ptr %154, align 4, !tbaa !8
  %cmp142 = icmp slt i32 %153, %155
  br i1 %cmp142, label %if.then144, label %if.end157

if.then144:                                       ; preds = %if.then123
  %156 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %157 = load i32, ptr %156, align 4, !tbaa !8
  %158 = load i32, ptr %pvt, align 4, !tbaa !8
  %sub145 = sub nsw i32 %157, %158
  store i32 %sub145, ptr %i__2, align 4, !tbaa !8
  %159 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %160 = load i32, ptr %j, align 4, !tbaa !8
  %161 = load i32, ptr %pvt, align 4, !tbaa !8
  %add146 = add nsw i32 %161, 1
  %162 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul147 = mul nsw i32 %add146, %162
  %add148 = add nsw i32 %160, %mul147
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds double, ptr %159, i64 %idxprom149
  %163 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %164 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %165 = load i32, ptr %pvt, align 4, !tbaa !8
  %166 = load i32, ptr %pvt, align 4, !tbaa !8
  %add151 = add nsw i32 %166, 1
  %167 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul152 = mul nsw i32 %add151, %167
  %add153 = add nsw i32 %165, %mul152
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds double, ptr %164, i64 %idxprom154
  %168 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call156 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx150, ptr noundef %163, ptr noundef %arrayidx155, ptr noundef %168)
  br label %if.end157

if.end157:                                        ; preds = %if.then144, %if.then123
  %169 = load i32, ptr %pvt, align 4, !tbaa !8
  %170 = load i32, ptr %j, align 4, !tbaa !8
  %sub158 = sub nsw i32 %169, %170
  %sub159 = sub nsw i32 %sub158, 1
  store i32 %sub159, ptr %i__2, align 4, !tbaa !8
  %171 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %172 = load i32, ptr %j, align 4, !tbaa !8
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %add160 = add nsw i32 %173, 1
  %174 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul161 = mul nsw i32 %add160, %174
  %add162 = add nsw i32 %172, %mul161
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds double, ptr %171, i64 %idxprom163
  %175 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %177 = load i32, ptr %j, align 4, !tbaa !8
  %add165 = add nsw i32 %177, 1
  %178 = load i32, ptr %pvt, align 4, !tbaa !8
  %179 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul166 = mul nsw i32 %178, %179
  %add167 = add nsw i32 %add165, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, ptr %176, i64 %idxprom168
  %call170 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx164, ptr noundef %175, ptr noundef %arrayidx169, ptr noundef @c__1)
  %180 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %181 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom171 = sext i32 %181 to i64
  %arrayidx172 = getelementptr inbounds double, ptr %180, i64 %idxprom171
  %182 = load double, ptr %arrayidx172, align 8, !tbaa !12
  store double %182, ptr %dtemp, align 8, !tbaa !12
  %183 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %184 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom173 = sext i32 %184 to i64
  %arrayidx174 = getelementptr inbounds double, ptr %183, i64 %idxprom173
  %185 = load double, ptr %arrayidx174, align 8, !tbaa !12
  %186 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %187 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom175 = sext i32 %187 to i64
  %arrayidx176 = getelementptr inbounds double, ptr %186, i64 %idxprom175
  store double %185, ptr %arrayidx176, align 8, !tbaa !12
  %188 = load double, ptr %dtemp, align 8, !tbaa !12
  %189 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %190 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom177 = sext i32 %190 to i64
  %arrayidx178 = getelementptr inbounds double, ptr %189, i64 %idxprom177
  store double %188, ptr %arrayidx178, align 8, !tbaa !12
  %191 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %192 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom179 = sext i32 %192 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %191, i64 %idxprom179
  %193 = load i32, ptr %arrayidx180, align 4, !tbaa !8
  store i32 %193, ptr %itemp, align 4, !tbaa !8
  %194 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %195 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom181 = sext i32 %195 to i64
  %arrayidx182 = getelementptr inbounds i32, ptr %194, i64 %idxprom181
  %196 = load i32, ptr %arrayidx182, align 4, !tbaa !8
  %197 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %198 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom183 = sext i32 %198 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %197, i64 %idxprom183
  store i32 %196, ptr %arrayidx184, align 4, !tbaa !8
  %199 = load i32, ptr %itemp, align 4, !tbaa !8
  %200 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %201 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom185 = sext i32 %201 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %200, i64 %idxprom185
  store i32 %199, ptr %arrayidx186, align 4, !tbaa !8
  br label %if.end187

if.end187:                                        ; preds = %if.end157, %if.end120
  %202 = load double, ptr %ajj, align 8, !tbaa !12
  %call188 = call double @sqrt(double noundef %202) #5
  store double %call188, ptr %ajj, align 8, !tbaa !12
  %203 = load double, ptr %ajj, align 8, !tbaa !12
  %204 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %205 = load i32, ptr %j, align 4, !tbaa !8
  %206 = load i32, ptr %j, align 4, !tbaa !8
  %207 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul189 = mul nsw i32 %206, %207
  %add190 = add nsw i32 %205, %mul189
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds double, ptr %204, i64 %idxprom191
  store double %203, ptr %arrayidx192, align 8, !tbaa !12
  %208 = load i32, ptr %j, align 4, !tbaa !8
  %209 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %210 = load i32, ptr %209, align 4, !tbaa !8
  %cmp193 = icmp slt i32 %208, %210
  br i1 %cmp193, label %if.then195, label %if.end220

if.then195:                                       ; preds = %if.end187
  %211 = load i32, ptr %j, align 4, !tbaa !8
  %sub196 = sub nsw i32 %211, 1
  store i32 %sub196, ptr %i__2, align 4, !tbaa !8
  %212 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %213 = load i32, ptr %212, align 4, !tbaa !8
  %214 = load i32, ptr %j, align 4, !tbaa !8
  %sub197 = sub nsw i32 %213, %214
  store i32 %sub197, ptr %i__3, align 4, !tbaa !8
  %215 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %216 = load i32, ptr %j, align 4, !tbaa !8
  %add198 = add nsw i32 %216, 1
  %217 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul199 = mul nsw i32 %add198, %217
  %add200 = add nsw i32 %mul199, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds double, ptr %215, i64 %idxprom201
  %218 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %219 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %220 = load i32, ptr %j, align 4, !tbaa !8
  %221 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul203 = mul nsw i32 %220, %221
  %add204 = add nsw i32 %mul203, 1
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds double, ptr %219, i64 %idxprom205
  %222 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %223 = load i32, ptr %j, align 4, !tbaa !8
  %224 = load i32, ptr %j, align 4, !tbaa !8
  %add207 = add nsw i32 %224, 1
  %225 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul208 = mul nsw i32 %add207, %225
  %add209 = add nsw i32 %223, %mul208
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds double, ptr %222, i64 %idxprom210
  %226 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call212 = call i32 @dgemv_(ptr noundef @.str.4, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b16, ptr noundef %arrayidx202, ptr noundef %218, ptr noundef %arrayidx206, ptr noundef @c__1, ptr noundef @c_b18, ptr noundef %arrayidx211, ptr noundef %226)
  %227 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %228 = load i32, ptr %227, align 4, !tbaa !8
  %229 = load i32, ptr %j, align 4, !tbaa !8
  %sub213 = sub nsw i32 %228, %229
  store i32 %sub213, ptr %i__2, align 4, !tbaa !8
  %230 = load double, ptr %ajj, align 8, !tbaa !12
  %div = fdiv double 1.000000e+00, %230
  store double %div, ptr %d__1, align 8, !tbaa !12
  %231 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %232 = load i32, ptr %j, align 4, !tbaa !8
  %233 = load i32, ptr %j, align 4, !tbaa !8
  %add214 = add nsw i32 %233, 1
  %234 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul215 = mul nsw i32 %add214, %234
  %add216 = add nsw i32 %232, %mul215
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds double, ptr %231, i64 %idxprom217
  %235 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call219 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %d__1, ptr noundef %arrayidx218, ptr noundef %235)
  br label %if.end220

if.end220:                                        ; preds = %if.then195, %if.end187
  br label %for.inc221

for.inc221:                                       ; preds = %if.end220
  %236 = load i32, ptr %j, align 4, !tbaa !8
  %inc222 = add nsw i32 %236, 1
  store i32 %inc222, ptr %j, align 4, !tbaa !8
  br label %for.cond62, !llvm.loop !17

for.end223:                                       ; preds = %for.cond62
  br label %if.end384

if.else224:                                       ; preds = %for.end59
  %237 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %238 = load i32, ptr %237, align 4, !tbaa !8
  store i32 %238, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc381, %if.else224
  %239 = load i32, ptr %j, align 4, !tbaa !8
  %240 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp226 = icmp sle i32 %239, %240
  br i1 %cmp226, label %for.body228, label %for.end383

for.body228:                                      ; preds = %for.cond225
  %241 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %242 = load i32, ptr %241, align 4, !tbaa !8
  store i32 %242, ptr %i__2, align 4, !tbaa !8
  %243 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %243, ptr %i__, align 4, !tbaa !8
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc255, %for.body228
  %244 = load i32, ptr %i__, align 4, !tbaa !8
  %245 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp230 = icmp sle i32 %244, %245
  br i1 %cmp230, label %for.body232, label %for.end257

for.body232:                                      ; preds = %for.cond229
  %246 = load i32, ptr %j, align 4, !tbaa !8
  %cmp233 = icmp sgt i32 %246, 1
  br i1 %cmp233, label %if.then235, label %if.end244

if.then235:                                       ; preds = %for.body232
  %247 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %248 = load i32, ptr %i__, align 4, !tbaa !8
  %249 = load i32, ptr %j, align 4, !tbaa !8
  %sub236 = sub nsw i32 %249, 1
  %250 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul237 = mul nsw i32 %sub236, %250
  %add238 = add nsw i32 %248, %mul237
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds double, ptr %247, i64 %idxprom239
  %251 = load double, ptr %arrayidx240, align 8, !tbaa !12
  store double %251, ptr %d__1, align 8, !tbaa !12
  %252 = load double, ptr %d__1, align 8, !tbaa !12
  %253 = load double, ptr %d__1, align 8, !tbaa !12
  %254 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %255 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom242 = sext i32 %255 to i64
  %arrayidx243 = getelementptr inbounds double, ptr %254, i64 %idxprom242
  %256 = load double, ptr %arrayidx243, align 8, !tbaa !12
  %257 = call double @llvm.fmuladd.f64(double %252, double %253, double %256)
  store double %257, ptr %arrayidx243, align 8, !tbaa !12
  br label %if.end244

if.end244:                                        ; preds = %if.then235, %for.body232
  %258 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %259 = load i32, ptr %i__, align 4, !tbaa !8
  %260 = load i32, ptr %i__, align 4, !tbaa !8
  %261 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul245 = mul nsw i32 %260, %261
  %add246 = add nsw i32 %259, %mul245
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds double, ptr %258, i64 %idxprom247
  %262 = load double, ptr %arrayidx248, align 8, !tbaa !12
  %263 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %264 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom249 = sext i32 %264 to i64
  %arrayidx250 = getelementptr inbounds double, ptr %263, i64 %idxprom249
  %265 = load double, ptr %arrayidx250, align 8, !tbaa !12
  %sub251 = fsub double %262, %265
  %266 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %267 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %268 = load i32, ptr %267, align 4, !tbaa !8
  %269 = load i32, ptr %i__, align 4, !tbaa !8
  %add252 = add nsw i32 %268, %269
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds double, ptr %266, i64 %idxprom253
  store double %sub251, ptr %arrayidx254, align 8, !tbaa !12
  br label %for.inc255

for.inc255:                                       ; preds = %if.end244
  %270 = load i32, ptr %i__, align 4, !tbaa !8
  %inc256 = add nsw i32 %270, 1
  store i32 %inc256, ptr %i__, align 4, !tbaa !8
  br label %for.cond229, !llvm.loop !18

for.end257:                                       ; preds = %for.cond229
  %271 = load i32, ptr %j, align 4, !tbaa !8
  %cmp258 = icmp sgt i32 %271, 1
  br i1 %cmp258, label %if.then260, label %if.end283

if.then260:                                       ; preds = %for.end257
  %272 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %273 = load i32, ptr %272, align 4, !tbaa !8
  %274 = load i32, ptr %j, align 4, !tbaa !8
  %sub261 = sub nsw i32 %273, %274
  %add262 = add nsw i32 %sub261, 1
  store i32 %add262, ptr %i__2, align 4, !tbaa !8
  %275 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %276 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %277 = load i32, ptr %276, align 4, !tbaa !8
  %278 = load i32, ptr %j, align 4, !tbaa !8
  %add263 = add nsw i32 %277, %278
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds double, ptr %275, i64 %idxprom264
  %call266 = call i32 @dmaxloc_(ptr noundef %arrayidx265, ptr noundef %i__2)
  store i32 %call266, ptr %itemp, align 4, !tbaa !8
  %279 = load i32, ptr %itemp, align 4, !tbaa !8
  %280 = load i32, ptr %j, align 4, !tbaa !8
  %add267 = add nsw i32 %279, %280
  %sub268 = sub nsw i32 %add267, 1
  store i32 %sub268, ptr %pvt, align 4, !tbaa !8
  %281 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %282 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %283 = load i32, ptr %282, align 4, !tbaa !8
  %284 = load i32, ptr %pvt, align 4, !tbaa !8
  %add269 = add nsw i32 %283, %284
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds double, ptr %281, i64 %idxprom270
  %285 = load double, ptr %arrayidx271, align 8, !tbaa !12
  store double %285, ptr %ajj, align 8, !tbaa !12
  %286 = load double, ptr %ajj, align 8, !tbaa !12
  %287 = load double, ptr %dstop, align 8, !tbaa !12
  %cmp272 = fcmp ole double %286, %287
  br i1 %cmp272, label %if.then277, label %lor.lhs.false274

lor.lhs.false274:                                 ; preds = %if.then260
  %call275 = call i32 @disnan_(ptr noundef %ajj)
  %tobool276 = icmp ne i32 %call275, 0
  br i1 %tobool276, label %if.then277, label %if.end282

if.then277:                                       ; preds = %lor.lhs.false274, %if.then260
  %288 = load double, ptr %ajj, align 8, !tbaa !12
  %289 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %290 = load i32, ptr %j, align 4, !tbaa !8
  %291 = load i32, ptr %j, align 4, !tbaa !8
  %292 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul278 = mul nsw i32 %291, %292
  %add279 = add nsw i32 %290, %mul278
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds double, ptr %289, i64 %idxprom280
  store double %288, ptr %arrayidx281, align 8, !tbaa !12
  br label %L160

if.end282:                                        ; preds = %lor.lhs.false274
  br label %if.end283

if.end283:                                        ; preds = %if.end282, %for.end257
  %293 = load i32, ptr %j, align 4, !tbaa !8
  %294 = load i32, ptr %pvt, align 4, !tbaa !8
  %cmp284 = icmp ne i32 %293, %294
  br i1 %cmp284, label %if.then286, label %if.end348

if.then286:                                       ; preds = %if.end283
  %295 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %296 = load i32, ptr %j, align 4, !tbaa !8
  %297 = load i32, ptr %j, align 4, !tbaa !8
  %298 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul287 = mul nsw i32 %297, %298
  %add288 = add nsw i32 %296, %mul287
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %295, i64 %idxprom289
  %299 = load double, ptr %arrayidx290, align 8, !tbaa !12
  %300 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %301 = load i32, ptr %pvt, align 4, !tbaa !8
  %302 = load i32, ptr %pvt, align 4, !tbaa !8
  %303 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul291 = mul nsw i32 %302, %303
  %add292 = add nsw i32 %301, %mul291
  %idxprom293 = sext i32 %add292 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %300, i64 %idxprom293
  store double %299, ptr %arrayidx294, align 8, !tbaa !12
  %304 = load i32, ptr %j, align 4, !tbaa !8
  %sub295 = sub nsw i32 %304, 1
  store i32 %sub295, ptr %i__2, align 4, !tbaa !8
  %305 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %306 = load i32, ptr %j, align 4, !tbaa !8
  %307 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add296 = add nsw i32 %306, %307
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds double, ptr %305, i64 %idxprom297
  %308 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %309 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %310 = load i32, ptr %pvt, align 4, !tbaa !8
  %311 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add299 = add nsw i32 %310, %311
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds double, ptr %309, i64 %idxprom300
  %312 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call302 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx298, ptr noundef %308, ptr noundef %arrayidx301, ptr noundef %312)
  %313 = load i32, ptr %pvt, align 4, !tbaa !8
  %314 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %315 = load i32, ptr %314, align 4, !tbaa !8
  %cmp303 = icmp slt i32 %313, %315
  br i1 %cmp303, label %if.then305, label %if.end318

if.then305:                                       ; preds = %if.then286
  %316 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %317 = load i32, ptr %316, align 4, !tbaa !8
  %318 = load i32, ptr %pvt, align 4, !tbaa !8
  %sub306 = sub nsw i32 %317, %318
  store i32 %sub306, ptr %i__2, align 4, !tbaa !8
  %319 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %320 = load i32, ptr %pvt, align 4, !tbaa !8
  %add307 = add nsw i32 %320, 1
  %321 = load i32, ptr %j, align 4, !tbaa !8
  %322 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul308 = mul nsw i32 %321, %322
  %add309 = add nsw i32 %add307, %mul308
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %319, i64 %idxprom310
  %323 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %324 = load i32, ptr %pvt, align 4, !tbaa !8
  %add312 = add nsw i32 %324, 1
  %325 = load i32, ptr %pvt, align 4, !tbaa !8
  %326 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul313 = mul nsw i32 %325, %326
  %add314 = add nsw i32 %add312, %mul313
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds double, ptr %323, i64 %idxprom315
  %call317 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx311, ptr noundef @c__1, ptr noundef %arrayidx316, ptr noundef @c__1)
  br label %if.end318

if.end318:                                        ; preds = %if.then305, %if.then286
  %327 = load i32, ptr %pvt, align 4, !tbaa !8
  %328 = load i32, ptr %j, align 4, !tbaa !8
  %sub319 = sub nsw i32 %327, %328
  %sub320 = sub nsw i32 %sub319, 1
  store i32 %sub320, ptr %i__2, align 4, !tbaa !8
  %329 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %330 = load i32, ptr %j, align 4, !tbaa !8
  %add321 = add nsw i32 %330, 1
  %331 = load i32, ptr %j, align 4, !tbaa !8
  %332 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul322 = mul nsw i32 %331, %332
  %add323 = add nsw i32 %add321, %mul322
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds double, ptr %329, i64 %idxprom324
  %333 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %334 = load i32, ptr %pvt, align 4, !tbaa !8
  %335 = load i32, ptr %j, align 4, !tbaa !8
  %add326 = add nsw i32 %335, 1
  %336 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul327 = mul nsw i32 %add326, %336
  %add328 = add nsw i32 %334, %mul327
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds double, ptr %333, i64 %idxprom329
  %337 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call331 = call i32 @dswap_(ptr noundef %i__2, ptr noundef %arrayidx325, ptr noundef @c__1, ptr noundef %arrayidx330, ptr noundef %337)
  %338 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %339 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom332 = sext i32 %339 to i64
  %arrayidx333 = getelementptr inbounds double, ptr %338, i64 %idxprom332
  %340 = load double, ptr %arrayidx333, align 8, !tbaa !12
  store double %340, ptr %dtemp, align 8, !tbaa !12
  %341 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %342 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom334 = sext i32 %342 to i64
  %arrayidx335 = getelementptr inbounds double, ptr %341, i64 %idxprom334
  %343 = load double, ptr %arrayidx335, align 8, !tbaa !12
  %344 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %345 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom336 = sext i32 %345 to i64
  %arrayidx337 = getelementptr inbounds double, ptr %344, i64 %idxprom336
  store double %343, ptr %arrayidx337, align 8, !tbaa !12
  %346 = load double, ptr %dtemp, align 8, !tbaa !12
  %347 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %348 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom338 = sext i32 %348 to i64
  %arrayidx339 = getelementptr inbounds double, ptr %347, i64 %idxprom338
  store double %346, ptr %arrayidx339, align 8, !tbaa !12
  %349 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %350 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom340 = sext i32 %350 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %349, i64 %idxprom340
  %351 = load i32, ptr %arrayidx341, align 4, !tbaa !8
  store i32 %351, ptr %itemp, align 4, !tbaa !8
  %352 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %353 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom342 = sext i32 %353 to i64
  %arrayidx343 = getelementptr inbounds i32, ptr %352, i64 %idxprom342
  %354 = load i32, ptr %arrayidx343, align 4, !tbaa !8
  %355 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %356 = load i32, ptr %pvt, align 4, !tbaa !8
  %idxprom344 = sext i32 %356 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %355, i64 %idxprom344
  store i32 %354, ptr %arrayidx345, align 4, !tbaa !8
  %357 = load i32, ptr %itemp, align 4, !tbaa !8
  %358 = load ptr, ptr %piv.addr, align 8, !tbaa !4
  %359 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom346 = sext i32 %359 to i64
  %arrayidx347 = getelementptr inbounds i32, ptr %358, i64 %idxprom346
  store i32 %357, ptr %arrayidx347, align 4, !tbaa !8
  br label %if.end348

if.end348:                                        ; preds = %if.end318, %if.end283
  %360 = load double, ptr %ajj, align 8, !tbaa !12
  %call349 = call double @sqrt(double noundef %360) #5
  store double %call349, ptr %ajj, align 8, !tbaa !12
  %361 = load double, ptr %ajj, align 8, !tbaa !12
  %362 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %363 = load i32, ptr %j, align 4, !tbaa !8
  %364 = load i32, ptr %j, align 4, !tbaa !8
  %365 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul350 = mul nsw i32 %364, %365
  %add351 = add nsw i32 %363, %mul350
  %idxprom352 = sext i32 %add351 to i64
  %arrayidx353 = getelementptr inbounds double, ptr %362, i64 %idxprom352
  store double %361, ptr %arrayidx353, align 8, !tbaa !12
  %366 = load i32, ptr %j, align 4, !tbaa !8
  %367 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %368 = load i32, ptr %367, align 4, !tbaa !8
  %cmp354 = icmp slt i32 %366, %368
  br i1 %cmp354, label %if.then356, label %if.end380

if.then356:                                       ; preds = %if.end348
  %369 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %370 = load i32, ptr %369, align 4, !tbaa !8
  %371 = load i32, ptr %j, align 4, !tbaa !8
  %sub357 = sub nsw i32 %370, %371
  store i32 %sub357, ptr %i__2, align 4, !tbaa !8
  %372 = load i32, ptr %j, align 4, !tbaa !8
  %sub358 = sub nsw i32 %372, 1
  store i32 %sub358, ptr %i__3, align 4, !tbaa !8
  %373 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %374 = load i32, ptr %j, align 4, !tbaa !8
  %add359 = add nsw i32 %374, 1
  %375 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add360 = add nsw i32 %add359, %375
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds double, ptr %373, i64 %idxprom361
  %376 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %377 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %378 = load i32, ptr %j, align 4, !tbaa !8
  %379 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add363 = add nsw i32 %378, %379
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds double, ptr %377, i64 %idxprom364
  %380 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %381 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %382 = load i32, ptr %j, align 4, !tbaa !8
  %add366 = add nsw i32 %382, 1
  %383 = load i32, ptr %j, align 4, !tbaa !8
  %384 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul367 = mul nsw i32 %383, %384
  %add368 = add nsw i32 %add366, %mul367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds double, ptr %381, i64 %idxprom369
  %call371 = call i32 @dgemv_(ptr noundef @.str.5, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b16, ptr noundef %arrayidx362, ptr noundef %376, ptr noundef %arrayidx365, ptr noundef %380, ptr noundef @c_b18, ptr noundef %arrayidx370, ptr noundef @c__1)
  %385 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %386 = load i32, ptr %385, align 4, !tbaa !8
  %387 = load i32, ptr %j, align 4, !tbaa !8
  %sub372 = sub nsw i32 %386, %387
  store i32 %sub372, ptr %i__2, align 4, !tbaa !8
  %388 = load double, ptr %ajj, align 8, !tbaa !12
  %div373 = fdiv double 1.000000e+00, %388
  store double %div373, ptr %d__1, align 8, !tbaa !12
  %389 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %390 = load i32, ptr %j, align 4, !tbaa !8
  %add374 = add nsw i32 %390, 1
  %391 = load i32, ptr %j, align 4, !tbaa !8
  %392 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul375 = mul nsw i32 %391, %392
  %add376 = add nsw i32 %add374, %mul375
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds double, ptr %389, i64 %idxprom377
  %call379 = call i32 @dscal_(ptr noundef %i__2, ptr noundef %d__1, ptr noundef %arrayidx378, ptr noundef @c__1)
  br label %if.end380

if.end380:                                        ; preds = %if.then356, %if.end348
  br label %for.inc381

for.inc381:                                       ; preds = %if.end380
  %393 = load i32, ptr %j, align 4, !tbaa !8
  %inc382 = add nsw i32 %393, 1
  store i32 %inc382, ptr %j, align 4, !tbaa !8
  br label %for.cond225, !llvm.loop !19

for.end383:                                       ; preds = %for.cond225
  br label %if.end384

if.end384:                                        ; preds = %for.end383, %for.end223
  %394 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %395 = load i32, ptr %394, align 4, !tbaa !8
  %396 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 %395, ptr %396, align 4, !tbaa !8
  br label %L170

L160:                                             ; preds = %if.then277, %if.then114
  %397 = load i32, ptr %j, align 4, !tbaa !8
  %sub385 = sub nsw i32 %397, 1
  %398 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 %sub385, ptr %398, align 4, !tbaa !8
  %399 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 1, ptr %399, align 4, !tbaa !8
  br label %L170

L170:                                             ; preds = %L160, %if.end384, %if.then42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %L170, %if.then16, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dstop) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %itemp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtemp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pvt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ajj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #5
  %400 = load i32, ptr %retval, align 4
  ret i32 %400
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @disnan_(ptr noundef) #2

declare double @dlamch_(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @dmaxloc_(ptr noundef, ptr noundef) #2

declare i32 @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare i32 @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #5 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
