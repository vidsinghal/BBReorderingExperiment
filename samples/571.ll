; ModuleID = 'samples/571.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dlaed0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DLAED0\00", align 1
@c__9 = internal global i32 9, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c__0 = internal global i32 0, align 4
@c__2 = internal global i32 2, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b23 = internal global double 1.000000e+00, align 8
@c_b24 = internal global double 0.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dlaed0_(ptr noundef %icompq, ptr noundef %qsiz, ptr noundef %n, ptr noundef %d__, ptr noundef %e, ptr noundef %q, ptr noundef %ldq, ptr noundef %qstore, ptr noundef %ldqs, ptr noundef %work, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %icompq.addr = alloca ptr, align 8
  %qsiz.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %qstore.addr = alloca ptr, align 8
  %ldqs.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %qstore_dim1 = alloca i32, align 4
  %qstore_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iq = alloca i32, align 4
  %lgn = alloca i32, align 4
  %msd2 = alloca i32, align 4
  %smm1 = alloca i32, align 4
  %spm1 = alloca i32, align 4
  %spm2 = alloca i32, align 4
  %temp = alloca double, align 8
  %curr = alloca i32, align 4
  %iperm = alloca i32, align 4
  %indxq = alloca i32, align 4
  %iwrem = alloca i32, align 4
  %iqptr = alloca i32, align 4
  %tlvls = alloca i32, align 4
  %igivcl = alloca i32, align 4
  %igivnm = alloca i32, align 4
  %submat = alloca i32, align 4
  %curprb = alloca i32, align 4
  %subpbs = alloca i32, align 4
  %igivpt = alloca i32, align 4
  %curlvl = alloca i32, align 4
  %matsiz = alloca i32, align 4
  %iprmpt = alloca i32, align 4
  %smlsiz = alloca i32, align 4
  store ptr %icompq, ptr %icompq.addr, align 8
  store ptr %qsiz, ptr %qsiz.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %ldq, ptr %ldq.addr, align 8
  store ptr %qstore, ptr %qstore.addr, align 8
  store ptr %ldqs, ptr %ldqs.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8
  %1 = load ptr, ptr %e.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8
  %2 = load ptr, ptr %ldq.addr, align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %q_dim1, align 4
  %4 = load i32, ptr %q_dim1, align 4
  %add = add nsw i32 1, %4
  store i32 %add, ptr %q_offset, align 4
  %5 = load i32, ptr %q_offset, align 4
  %6 = load ptr, ptr %q.addr, align 8
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %6, i64 %idx.neg
  store ptr %add.ptr, ptr %q.addr, align 8
  %7 = load ptr, ptr %ldqs.addr, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %qstore_dim1, align 4
  %9 = load i32, ptr %qstore_dim1, align 4
  %add2 = add nsw i32 1, %9
  store i32 %add2, ptr %qstore_offset, align 4
  %10 = load i32, ptr %qstore_offset, align 4
  %11 = load ptr, ptr %qstore.addr, align 8
  %idx.ext3 = sext i32 %10 to i64
  %idx.neg4 = sub i64 0, %idx.ext3
  %add.ptr5 = getelementptr inbounds double, ptr %11, i64 %idx.neg4
  store ptr %add.ptr5, ptr %qstore.addr, align 8
  %12 = load ptr, ptr %work.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8
  %13 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %iwork.addr, align 8
  %14 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %icompq.addr, align 8
  %16 = load i32, ptr %15, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load ptr, ptr %icompq.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp8 = icmp sgt i32 %18, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %19, align 4
  br label %if.end35

if.else:                                          ; preds = %lor.lhs.false
  %20 = load ptr, ptr %icompq.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp9 = icmp eq i32 %21, 1
  br i1 %cmp9, label %land.lhs.true, label %if.else13

land.lhs.true:                                    ; preds = %if.else
  %22 = load ptr, ptr %qsiz.addr, align 8
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp10 = icmp sge i32 0, %25
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %27, %cond.false ]
  %cmp11 = icmp slt i32 %23, %cond
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %cond.end
  %28 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %28, align 4
  br label %if.end34

if.else13:                                        ; preds = %cond.end, %if.else
  %29 = load ptr, ptr %n.addr, align 8
  %30 = load i32, ptr %29, align 4
  %cmp14 = icmp slt i32 %30, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  %31 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %31, align 4
  br label %if.end33

if.else16:                                        ; preds = %if.else13
  %32 = load ptr, ptr %ldq.addr, align 8
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %n.addr, align 8
  %35 = load i32, ptr %34, align 4
  %cmp17 = icmp sge i32 1, %35
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.else16
  br label %cond.end20

cond.false19:                                     ; preds = %if.else16
  %36 = load ptr, ptr %n.addr, align 8
  %37 = load i32, ptr %36, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ 1, %cond.true18 ], [ %37, %cond.false19 ]
  %cmp22 = icmp slt i32 %33, %cond21
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %cond.end20
  %38 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %38, align 4
  br label %if.end32

if.else24:                                        ; preds = %cond.end20
  %39 = load ptr, ptr %ldqs.addr, align 8
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %n.addr, align 8
  %42 = load i32, ptr %41, align 4
  %cmp25 = icmp sge i32 1, %42
  br i1 %cmp25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %if.else24
  br label %cond.end28

cond.false27:                                     ; preds = %if.else24
  %43 = load ptr, ptr %n.addr, align 8
  %44 = load i32, ptr %43, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ 1, %cond.true26 ], [ %44, %cond.false27 ]
  %cmp30 = icmp slt i32 %40, %cond29
  br i1 %cmp30, label %if.then31, label %if.end

if.then31:                                        ; preds = %cond.end28
  %45 = load ptr, ptr %info.addr, align 8
  store i32 -9, ptr %45, align 4
  br label %if.end

if.end:                                           ; preds = %if.then31, %cond.end28
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then23
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then15
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then12
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  %46 = load ptr, ptr %info.addr, align 8
  %47 = load i32, ptr %46, align 4
  %cmp36 = icmp ne i32 %47, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  %48 = load ptr, ptr %info.addr, align 8
  %49 = load i32, ptr %48, align 4
  %sub = sub nsw i32 0, %49
  store i32 %sub, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end35
  %50 = load ptr, ptr %n.addr, align 8
  %51 = load i32, ptr %50, align 4
  %cmp39 = icmp eq i32 %51, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end38
  store i32 0, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end38
  %call42 = call i32 @ilaenv_(ptr noundef @c__9, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c__0, ptr noundef @c__0)
  store i32 %call42, ptr %smlsiz, align 4
  %52 = load ptr, ptr %n.addr, align 8
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %iwork.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %54, i64 1
  store i32 %53, ptr %arrayidx, align 4
  store i32 1, ptr %subpbs, align 4
  store i32 0, ptr %tlvls, align 4
  br label %L10

L10:                                              ; preds = %for.end, %if.end41
  %55 = load ptr, ptr %iwork.addr, align 8
  %56 = load i32, ptr %subpbs, align 4
  %idxprom = sext i32 %56 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %55, i64 %idxprom
  %57 = load i32, ptr %arrayidx43, align 4
  %58 = load i32, ptr %smlsiz, align 4
  %cmp44 = icmp sgt i32 %57, %58
  br i1 %cmp44, label %if.then45, label %if.end59

if.then45:                                        ; preds = %L10
  %59 = load i32, ptr %subpbs, align 4
  store i32 %59, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then45
  %60 = load i32, ptr %j, align 4
  %cmp46 = icmp sge i32 %60, 1
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load ptr, ptr %iwork.addr, align 8
  %62 = load i32, ptr %j, align 4
  %idxprom47 = sext i32 %62 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %61, i64 %idxprom47
  %63 = load i32, ptr %arrayidx48, align 4
  %add49 = add nsw i32 %63, 1
  %div = sdiv i32 %add49, 2
  %64 = load ptr, ptr %iwork.addr, align 8
  %65 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %65, 2
  %idxprom50 = sext i32 %mul to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %64, i64 %idxprom50
  store i32 %div, ptr %arrayidx51, align 4
  %66 = load ptr, ptr %iwork.addr, align 8
  %67 = load i32, ptr %j, align 4
  %idxprom52 = sext i32 %67 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %66, i64 %idxprom52
  %68 = load i32, ptr %arrayidx53, align 4
  %div54 = sdiv i32 %68, 2
  %69 = load ptr, ptr %iwork.addr, align 8
  %70 = load i32, ptr %j, align 4
  %shl = shl i32 %70, 1
  %sub55 = sub nsw i32 %shl, 1
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %69, i64 %idxprom56
  store i32 %div54, ptr %arrayidx57, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, ptr %j, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %72 = load i32, ptr %tlvls, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %tlvls, align 4
  %73 = load i32, ptr %subpbs, align 4
  %shl58 = shl i32 %73, 1
  store i32 %shl58, ptr %subpbs, align 4
  br label %L10

if.end59:                                         ; preds = %L10
  %74 = load i32, ptr %subpbs, align 4
  store i32 %74, ptr %i__1, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc69, %if.end59
  %75 = load i32, ptr %j, align 4
  %76 = load i32, ptr %i__1, align 4
  %cmp61 = icmp sle i32 %75, %76
  br i1 %cmp61, label %for.body62, label %for.end71

for.body62:                                       ; preds = %for.cond60
  %77 = load ptr, ptr %iwork.addr, align 8
  %78 = load i32, ptr %j, align 4
  %sub63 = sub nsw i32 %78, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %77, i64 %idxprom64
  %79 = load i32, ptr %arrayidx65, align 4
  %80 = load ptr, ptr %iwork.addr, align 8
  %81 = load i32, ptr %j, align 4
  %idxprom66 = sext i32 %81 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %80, i64 %idxprom66
  %82 = load i32, ptr %arrayidx67, align 4
  %add68 = add nsw i32 %82, %79
  store i32 %add68, ptr %arrayidx67, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body62
  %83 = load i32, ptr %j, align 4
  %inc70 = add nsw i32 %83, 1
  store i32 %inc70, ptr %j, align 4
  br label %for.cond60, !llvm.loop !7

for.end71:                                        ; preds = %for.cond60
  %84 = load i32, ptr %subpbs, align 4
  %sub72 = sub nsw i32 %84, 1
  store i32 %sub72, ptr %spm1, align 4
  %85 = load i32, ptr %spm1, align 4
  store i32 %85, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc101, %for.end71
  %86 = load i32, ptr %i__, align 4
  %87 = load i32, ptr %i__1, align 4
  %cmp74 = icmp sle i32 %86, %87
  br i1 %cmp74, label %for.body75, label %for.end103

for.body75:                                       ; preds = %for.cond73
  %88 = load ptr, ptr %iwork.addr, align 8
  %89 = load i32, ptr %i__, align 4
  %idxprom76 = sext i32 %89 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %88, i64 %idxprom76
  %90 = load i32, ptr %arrayidx77, align 4
  %add78 = add nsw i32 %90, 1
  store i32 %add78, ptr %submat, align 4
  %91 = load i32, ptr %submat, align 4
  %sub79 = sub nsw i32 %91, 1
  store i32 %sub79, ptr %smm1, align 4
  %92 = load ptr, ptr %e.addr, align 8
  %93 = load i32, ptr %smm1, align 4
  %idxprom80 = sext i32 %93 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %92, i64 %idxprom80
  %94 = load double, ptr %arrayidx81, align 8
  store double %94, ptr %d__1, align 8
  %95 = load double, ptr %d__1, align 8
  %cmp82 = fcmp oge double %95, 0.000000e+00
  br i1 %cmp82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %for.body75
  %96 = load double, ptr %d__1, align 8
  br label %cond.end85

cond.false84:                                     ; preds = %for.body75
  %97 = load double, ptr %d__1, align 8
  %fneg = fneg double %97
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true83
  %cond86 = phi double [ %96, %cond.true83 ], [ %fneg, %cond.false84 ]
  %98 = load ptr, ptr %d__.addr, align 8
  %99 = load i32, ptr %smm1, align 4
  %idxprom87 = sext i32 %99 to i64
  %arrayidx88 = getelementptr inbounds double, ptr %98, i64 %idxprom87
  %100 = load double, ptr %arrayidx88, align 8
  %sub89 = fsub double %100, %cond86
  store double %sub89, ptr %arrayidx88, align 8
  %101 = load ptr, ptr %e.addr, align 8
  %102 = load i32, ptr %smm1, align 4
  %idxprom90 = sext i32 %102 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %101, i64 %idxprom90
  %103 = load double, ptr %arrayidx91, align 8
  store double %103, ptr %d__1, align 8
  %104 = load double, ptr %d__1, align 8
  %cmp92 = fcmp oge double %104, 0.000000e+00
  br i1 %cmp92, label %cond.true93, label %cond.false94

cond.true93:                                      ; preds = %cond.end85
  %105 = load double, ptr %d__1, align 8
  br label %cond.end96

cond.false94:                                     ; preds = %cond.end85
  %106 = load double, ptr %d__1, align 8
  %fneg95 = fneg double %106
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false94, %cond.true93
  %cond97 = phi double [ %105, %cond.true93 ], [ %fneg95, %cond.false94 ]
  %107 = load ptr, ptr %d__.addr, align 8
  %108 = load i32, ptr %submat, align 4
  %idxprom98 = sext i32 %108 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %107, i64 %idxprom98
  %109 = load double, ptr %arrayidx99, align 8
  %sub100 = fsub double %109, %cond97
  store double %sub100, ptr %arrayidx99, align 8
  br label %for.inc101

for.inc101:                                       ; preds = %cond.end96
  %110 = load i32, ptr %i__, align 4
  %inc102 = add nsw i32 %110, 1
  store i32 %inc102, ptr %i__, align 4
  br label %for.cond73, !llvm.loop !8

for.end103:                                       ; preds = %for.cond73
  %111 = load ptr, ptr %n.addr, align 8
  %112 = load i32, ptr %111, align 4
  %shl104 = shl i32 %112, 2
  %add105 = add nsw i32 %shl104, 3
  store i32 %add105, ptr %indxq, align 4
  %113 = load ptr, ptr %icompq.addr, align 8
  %114 = load i32, ptr %113, align 4
  %cmp106 = icmp ne i32 %114, 2
  br i1 %cmp106, label %if.then107, label %if.end155

if.then107:                                       ; preds = %for.end103
  %115 = load ptr, ptr %n.addr, align 8
  %116 = load i32, ptr %115, align 4
  %conv = sitofp i32 %116 to double
  %call108 = call double @log(double noundef %conv) #3
  %call109 = call double @log(double noundef 2.000000e+00) #3
  %div110 = fdiv double %call108, %call109
  store double %div110, ptr %temp, align 8
  %117 = load double, ptr %temp, align 8
  %conv111 = fptosi double %117 to i32
  store i32 %conv111, ptr %lgn, align 4
  %call112 = call i32 @pow_ii(ptr noundef @c__2, ptr noundef %lgn)
  %118 = load ptr, ptr %n.addr, align 8
  %119 = load i32, ptr %118, align 4
  %cmp113 = icmp slt i32 %call112, %119
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.then107
  %120 = load i32, ptr %lgn, align 4
  %inc116 = add nsw i32 %120, 1
  store i32 %inc116, ptr %lgn, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.then107
  %call118 = call i32 @pow_ii(ptr noundef @c__2, ptr noundef %lgn)
  %121 = load ptr, ptr %n.addr, align 8
  %122 = load i32, ptr %121, align 4
  %cmp119 = icmp slt i32 %call118, %122
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end117
  %123 = load i32, ptr %lgn, align 4
  %inc122 = add nsw i32 %123, 1
  store i32 %inc122, ptr %lgn, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end117
  %124 = load i32, ptr %indxq, align 4
  %125 = load ptr, ptr %n.addr, align 8
  %126 = load i32, ptr %125, align 4
  %add124 = add nsw i32 %124, %126
  %add125 = add nsw i32 %add124, 1
  store i32 %add125, ptr %iprmpt, align 4
  %127 = load i32, ptr %iprmpt, align 4
  %128 = load ptr, ptr %n.addr, align 8
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %lgn, align 4
  %mul126 = mul nsw i32 %129, %130
  %add127 = add nsw i32 %127, %mul126
  store i32 %add127, ptr %iperm, align 4
  %131 = load i32, ptr %iperm, align 4
  %132 = load ptr, ptr %n.addr, align 8
  %133 = load i32, ptr %132, align 4
  %134 = load i32, ptr %lgn, align 4
  %mul128 = mul nsw i32 %133, %134
  %add129 = add nsw i32 %131, %mul128
  store i32 %add129, ptr %iqptr, align 4
  %135 = load i32, ptr %iqptr, align 4
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load i32, ptr %136, align 4
  %add130 = add nsw i32 %135, %137
  %add131 = add nsw i32 %add130, 2
  store i32 %add131, ptr %igivpt, align 4
  %138 = load i32, ptr %igivpt, align 4
  %139 = load ptr, ptr %n.addr, align 8
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %lgn, align 4
  %mul132 = mul nsw i32 %140, %141
  %add133 = add nsw i32 %138, %mul132
  store i32 %add133, ptr %igivcl, align 4
  store i32 1, ptr %igivnm, align 4
  %142 = load i32, ptr %igivnm, align 4
  %143 = load ptr, ptr %n.addr, align 8
  %144 = load i32, ptr %143, align 4
  %shl134 = shl i32 %144, 1
  %145 = load i32, ptr %lgn, align 4
  %mul135 = mul nsw i32 %shl134, %145
  %add136 = add nsw i32 %142, %mul135
  store i32 %add136, ptr %iq, align 4
  %146 = load ptr, ptr %n.addr, align 8
  %147 = load i32, ptr %146, align 4
  store i32 %147, ptr %i__1, align 4
  %148 = load i32, ptr %iq, align 4
  %149 = load i32, ptr %i__1, align 4
  %150 = load i32, ptr %i__1, align 4
  %mul137 = mul nsw i32 %149, %150
  %add138 = add nsw i32 %148, %mul137
  %add139 = add nsw i32 %add138, 1
  store i32 %add139, ptr %iwrem, align 4
  %151 = load i32, ptr %subpbs, align 4
  store i32 %151, ptr %i__1, align 4
  store i32 0, ptr %i__, align 4
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc150, %if.end123
  %152 = load i32, ptr %i__, align 4
  %153 = load i32, ptr %i__1, align 4
  %cmp141 = icmp sle i32 %152, %153
  br i1 %cmp141, label %for.body143, label %for.end152

for.body143:                                      ; preds = %for.cond140
  %154 = load ptr, ptr %iwork.addr, align 8
  %155 = load i32, ptr %iprmpt, align 4
  %156 = load i32, ptr %i__, align 4
  %add144 = add nsw i32 %155, %156
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %154, i64 %idxprom145
  store i32 1, ptr %arrayidx146, align 4
  %157 = load ptr, ptr %iwork.addr, align 8
  %158 = load i32, ptr %igivpt, align 4
  %159 = load i32, ptr %i__, align 4
  %add147 = add nsw i32 %158, %159
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %157, i64 %idxprom148
  store i32 1, ptr %arrayidx149, align 4
  br label %for.inc150

for.inc150:                                       ; preds = %for.body143
  %160 = load i32, ptr %i__, align 4
  %inc151 = add nsw i32 %160, 1
  store i32 %inc151, ptr %i__, align 4
  br label %for.cond140, !llvm.loop !9

for.end152:                                       ; preds = %for.cond140
  %161 = load ptr, ptr %iwork.addr, align 8
  %162 = load i32, ptr %iqptr, align 4
  %idxprom153 = sext i32 %162 to i64
  %arrayidx154 = getelementptr inbounds i32, ptr %161, i64 %idxprom153
  store i32 1, ptr %arrayidx154, align 4
  br label %if.end155

if.end155:                                        ; preds = %for.end152, %for.end103
  store i32 0, ptr %curr, align 4
  %163 = load i32, ptr %spm1, align 4
  store i32 %163, ptr %i__1, align 4
  store i32 0, ptr %i__, align 4
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc255, %if.end155
  %164 = load i32, ptr %i__, align 4
  %165 = load i32, ptr %i__1, align 4
  %cmp157 = icmp sle i32 %164, %165
  br i1 %cmp157, label %for.body159, label %for.end257

for.body159:                                      ; preds = %for.cond156
  %166 = load i32, ptr %i__, align 4
  %cmp160 = icmp eq i32 %166, 0
  br i1 %cmp160, label %if.then162, label %if.else164

if.then162:                                       ; preds = %for.body159
  store i32 1, ptr %submat, align 4
  %167 = load ptr, ptr %iwork.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, ptr %167, i64 1
  %168 = load i32, ptr %arrayidx163, align 4
  store i32 %168, ptr %matsiz, align 4
  br label %if.end174

if.else164:                                       ; preds = %for.body159
  %169 = load ptr, ptr %iwork.addr, align 8
  %170 = load i32, ptr %i__, align 4
  %idxprom165 = sext i32 %170 to i64
  %arrayidx166 = getelementptr inbounds i32, ptr %169, i64 %idxprom165
  %171 = load i32, ptr %arrayidx166, align 4
  %add167 = add nsw i32 %171, 1
  store i32 %add167, ptr %submat, align 4
  %172 = load ptr, ptr %iwork.addr, align 8
  %173 = load i32, ptr %i__, align 4
  %add168 = add nsw i32 %173, 1
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %172, i64 %idxprom169
  %174 = load i32, ptr %arrayidx170, align 4
  %175 = load ptr, ptr %iwork.addr, align 8
  %176 = load i32, ptr %i__, align 4
  %idxprom171 = sext i32 %176 to i64
  %arrayidx172 = getelementptr inbounds i32, ptr %175, i64 %idxprom171
  %177 = load i32, ptr %arrayidx172, align 4
  %sub173 = sub nsw i32 %174, %177
  store i32 %sub173, ptr %matsiz, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.else164, %if.then162
  %178 = load ptr, ptr %icompq.addr, align 8
  %179 = load i32, ptr %178, align 4
  %cmp175 = icmp eq i32 %179, 2
  br i1 %cmp175, label %if.then177, label %if.else192

if.then177:                                       ; preds = %if.end174
  %180 = load ptr, ptr %d__.addr, align 8
  %181 = load i32, ptr %submat, align 4
  %idxprom178 = sext i32 %181 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %180, i64 %idxprom178
  %182 = load ptr, ptr %e.addr, align 8
  %183 = load i32, ptr %submat, align 4
  %idxprom180 = sext i32 %183 to i64
  %arrayidx181 = getelementptr inbounds double, ptr %182, i64 %idxprom180
  %184 = load ptr, ptr %q.addr, align 8
  %185 = load i32, ptr %submat, align 4
  %186 = load i32, ptr %submat, align 4
  %187 = load i32, ptr %q_dim1, align 4
  %mul182 = mul nsw i32 %186, %187
  %add183 = add nsw i32 %185, %mul182
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double, ptr %184, i64 %idxprom184
  %188 = load ptr, ptr %ldq.addr, align 8
  %189 = load ptr, ptr %work.addr, align 8
  %arrayidx186 = getelementptr inbounds double, ptr %189, i64 1
  %190 = load ptr, ptr %info.addr, align 8
  %call187 = call i32 @dsteqr_(ptr noundef @.str.2, ptr noundef %matsiz, ptr noundef %arrayidx179, ptr noundef %arrayidx181, ptr noundef %arrayidx185, ptr noundef %188, ptr noundef %arrayidx186, ptr noundef %190)
  %191 = load ptr, ptr %info.addr, align 8
  %192 = load i32, ptr %191, align 4
  %cmp188 = icmp ne i32 %192, 0
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.then177
  br label %L130

if.end191:                                        ; preds = %if.then177
  br label %if.end240

if.else192:                                       ; preds = %if.end174
  %193 = load ptr, ptr %d__.addr, align 8
  %194 = load i32, ptr %submat, align 4
  %idxprom193 = sext i32 %194 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %193, i64 %idxprom193
  %195 = load ptr, ptr %e.addr, align 8
  %196 = load i32, ptr %submat, align 4
  %idxprom195 = sext i32 %196 to i64
  %arrayidx196 = getelementptr inbounds double, ptr %195, i64 %idxprom195
  %197 = load ptr, ptr %work.addr, align 8
  %198 = load i32, ptr %iq, align 4
  %sub197 = sub nsw i32 %198, 1
  %199 = load ptr, ptr %iwork.addr, align 8
  %200 = load i32, ptr %iqptr, align 4
  %201 = load i32, ptr %curr, align 4
  %add198 = add nsw i32 %200, %201
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds i32, ptr %199, i64 %idxprom199
  %202 = load i32, ptr %arrayidx200, align 4
  %add201 = add nsw i32 %sub197, %202
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds double, ptr %197, i64 %idxprom202
  %203 = load ptr, ptr %work.addr, align 8
  %arrayidx204 = getelementptr inbounds double, ptr %203, i64 1
  %204 = load ptr, ptr %info.addr, align 8
  %call205 = call i32 @dsteqr_(ptr noundef @.str.2, ptr noundef %matsiz, ptr noundef %arrayidx194, ptr noundef %arrayidx196, ptr noundef %arrayidx203, ptr noundef %matsiz, ptr noundef %arrayidx204, ptr noundef %204)
  %205 = load ptr, ptr %info.addr, align 8
  %206 = load i32, ptr %205, align 4
  %cmp206 = icmp ne i32 %206, 0
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.else192
  br label %L130

if.end209:                                        ; preds = %if.else192
  %207 = load ptr, ptr %icompq.addr, align 8
  %208 = load i32, ptr %207, align 4
  %cmp210 = icmp eq i32 %208, 1
  br i1 %cmp210, label %if.then212, label %if.end229

if.then212:                                       ; preds = %if.end209
  %209 = load ptr, ptr %qsiz.addr, align 8
  %210 = load ptr, ptr %q.addr, align 8
  %211 = load i32, ptr %submat, align 4
  %212 = load i32, ptr %q_dim1, align 4
  %mul213 = mul nsw i32 %211, %212
  %add214 = add nsw i32 %mul213, 1
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds double, ptr %210, i64 %idxprom215
  %213 = load ptr, ptr %ldq.addr, align 8
  %214 = load ptr, ptr %work.addr, align 8
  %215 = load i32, ptr %iq, align 4
  %sub217 = sub nsw i32 %215, 1
  %216 = load ptr, ptr %iwork.addr, align 8
  %217 = load i32, ptr %iqptr, align 4
  %218 = load i32, ptr %curr, align 4
  %add218 = add nsw i32 %217, %218
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i32, ptr %216, i64 %idxprom219
  %219 = load i32, ptr %arrayidx220, align 4
  %add221 = add nsw i32 %sub217, %219
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, ptr %214, i64 %idxprom222
  %220 = load ptr, ptr %qstore.addr, align 8
  %221 = load i32, ptr %submat, align 4
  %222 = load i32, ptr %qstore_dim1, align 4
  %mul224 = mul nsw i32 %221, %222
  %add225 = add nsw i32 %mul224, 1
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds double, ptr %220, i64 %idxprom226
  %223 = load ptr, ptr %ldqs.addr, align 8
  %call228 = call i32 @dgemm_(ptr noundef @.str.3, ptr noundef @.str.3, ptr noundef %209, ptr noundef %matsiz, ptr noundef %matsiz, ptr noundef @c_b23, ptr noundef %arrayidx216, ptr noundef %213, ptr noundef %arrayidx223, ptr noundef %matsiz, ptr noundef @c_b24, ptr noundef %arrayidx227, ptr noundef %223)
  br label %if.end229

if.end229:                                        ; preds = %if.then212, %if.end209
  %224 = load i32, ptr %matsiz, align 4
  store i32 %224, ptr %i__2, align 4
  %225 = load ptr, ptr %iwork.addr, align 8
  %226 = load i32, ptr %iqptr, align 4
  %227 = load i32, ptr %curr, align 4
  %add230 = add nsw i32 %226, %227
  %idxprom231 = sext i32 %add230 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %225, i64 %idxprom231
  %228 = load i32, ptr %arrayidx232, align 4
  %229 = load i32, ptr %i__2, align 4
  %230 = load i32, ptr %i__2, align 4
  %mul233 = mul nsw i32 %229, %230
  %add234 = add nsw i32 %228, %mul233
  %231 = load ptr, ptr %iwork.addr, align 8
  %232 = load i32, ptr %iqptr, align 4
  %233 = load i32, ptr %curr, align 4
  %add235 = add nsw i32 %232, %233
  %add236 = add nsw i32 %add235, 1
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %231, i64 %idxprom237
  store i32 %add234, ptr %arrayidx238, align 4
  %234 = load i32, ptr %curr, align 4
  %inc239 = add nsw i32 %234, 1
  store i32 %inc239, ptr %curr, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.end229, %if.end191
  store i32 1, ptr %k, align 4
  %235 = load ptr, ptr %iwork.addr, align 8
  %236 = load i32, ptr %i__, align 4
  %add241 = add nsw i32 %236, 1
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %235, i64 %idxprom242
  %237 = load i32, ptr %arrayidx243, align 4
  store i32 %237, ptr %i__2, align 4
  %238 = load i32, ptr %submat, align 4
  store i32 %238, ptr %j, align 4
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc252, %if.end240
  %239 = load i32, ptr %j, align 4
  %240 = load i32, ptr %i__2, align 4
  %cmp245 = icmp sle i32 %239, %240
  br i1 %cmp245, label %for.body247, label %for.end254

for.body247:                                      ; preds = %for.cond244
  %241 = load i32, ptr %k, align 4
  %242 = load ptr, ptr %iwork.addr, align 8
  %243 = load i32, ptr %indxq, align 4
  %244 = load i32, ptr %j, align 4
  %add248 = add nsw i32 %243, %244
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %242, i64 %idxprom249
  store i32 %241, ptr %arrayidx250, align 4
  %245 = load i32, ptr %k, align 4
  %inc251 = add nsw i32 %245, 1
  store i32 %inc251, ptr %k, align 4
  br label %for.inc252

for.inc252:                                       ; preds = %for.body247
  %246 = load i32, ptr %j, align 4
  %inc253 = add nsw i32 %246, 1
  store i32 %inc253, ptr %j, align 4
  br label %for.cond244, !llvm.loop !10

for.end254:                                       ; preds = %for.cond244
  br label %for.inc255

for.inc255:                                       ; preds = %for.end254
  %247 = load i32, ptr %i__, align 4
  %inc256 = add nsw i32 %247, 1
  store i32 %inc256, ptr %i__, align 4
  br label %for.cond156, !llvm.loop !11

for.end257:                                       ; preds = %for.cond156
  store i32 1, ptr %curlvl, align 4
  br label %L80

L80:                                              ; preds = %for.end353, %for.end257
  %248 = load i32, ptr %subpbs, align 4
  %cmp258 = icmp sgt i32 %248, 1
  br i1 %cmp258, label %if.then260, label %if.end356

if.then260:                                       ; preds = %L80
  %249 = load i32, ptr %subpbs, align 4
  %sub261 = sub nsw i32 %249, 2
  store i32 %sub261, ptr %spm2, align 4
  %250 = load i32, ptr %spm2, align 4
  store i32 %250, ptr %i__1, align 4
  store i32 0, ptr %i__, align 4
  br label %for.cond262

for.cond262:                                      ; preds = %for.inc351, %if.then260
  %251 = load i32, ptr %i__, align 4
  %252 = load i32, ptr %i__1, align 4
  %cmp263 = icmp sle i32 %251, %252
  br i1 %cmp263, label %for.body265, label %for.end353

for.body265:                                      ; preds = %for.cond262
  %253 = load i32, ptr %i__, align 4
  %cmp266 = icmp eq i32 %253, 0
  br i1 %cmp266, label %if.then268, label %if.else271

if.then268:                                       ; preds = %for.body265
  store i32 1, ptr %submat, align 4
  %254 = load ptr, ptr %iwork.addr, align 8
  %arrayidx269 = getelementptr inbounds i32, ptr %254, i64 2
  %255 = load i32, ptr %arrayidx269, align 4
  store i32 %255, ptr %matsiz, align 4
  %256 = load ptr, ptr %iwork.addr, align 8
  %arrayidx270 = getelementptr inbounds i32, ptr %256, i64 1
  %257 = load i32, ptr %arrayidx270, align 4
  store i32 %257, ptr %msd2, align 4
  store i32 0, ptr %curprb, align 4
  br label %if.end283

if.else271:                                       ; preds = %for.body265
  %258 = load ptr, ptr %iwork.addr, align 8
  %259 = load i32, ptr %i__, align 4
  %idxprom272 = sext i32 %259 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %258, i64 %idxprom272
  %260 = load i32, ptr %arrayidx273, align 4
  %add274 = add nsw i32 %260, 1
  store i32 %add274, ptr %submat, align 4
  %261 = load ptr, ptr %iwork.addr, align 8
  %262 = load i32, ptr %i__, align 4
  %add275 = add nsw i32 %262, 2
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds i32, ptr %261, i64 %idxprom276
  %263 = load i32, ptr %arrayidx277, align 4
  %264 = load ptr, ptr %iwork.addr, align 8
  %265 = load i32, ptr %i__, align 4
  %idxprom278 = sext i32 %265 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %264, i64 %idxprom278
  %266 = load i32, ptr %arrayidx279, align 4
  %sub280 = sub nsw i32 %263, %266
  store i32 %sub280, ptr %matsiz, align 4
  %267 = load i32, ptr %matsiz, align 4
  %div281 = sdiv i32 %267, 2
  store i32 %div281, ptr %msd2, align 4
  %268 = load i32, ptr %curprb, align 4
  %inc282 = add nsw i32 %268, 1
  store i32 %inc282, ptr %curprb, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.else271, %if.then268
  %269 = load ptr, ptr %icompq.addr, align 8
  %270 = load i32, ptr %269, align 4
  %cmp284 = icmp eq i32 %270, 2
  br i1 %cmp284, label %if.then286, label %if.else305

if.then286:                                       ; preds = %if.end283
  %271 = load ptr, ptr %d__.addr, align 8
  %272 = load i32, ptr %submat, align 4
  %idxprom287 = sext i32 %272 to i64
  %arrayidx288 = getelementptr inbounds double, ptr %271, i64 %idxprom287
  %273 = load ptr, ptr %q.addr, align 8
  %274 = load i32, ptr %submat, align 4
  %275 = load i32, ptr %submat, align 4
  %276 = load i32, ptr %q_dim1, align 4
  %mul289 = mul nsw i32 %275, %276
  %add290 = add nsw i32 %274, %mul289
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds double, ptr %273, i64 %idxprom291
  %277 = load ptr, ptr %ldq.addr, align 8
  %278 = load ptr, ptr %iwork.addr, align 8
  %279 = load i32, ptr %indxq, align 4
  %280 = load i32, ptr %submat, align 4
  %add293 = add nsw i32 %279, %280
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %278, i64 %idxprom294
  %281 = load ptr, ptr %e.addr, align 8
  %282 = load i32, ptr %submat, align 4
  %283 = load i32, ptr %msd2, align 4
  %add296 = add nsw i32 %282, %283
  %sub297 = sub nsw i32 %add296, 1
  %idxprom298 = sext i32 %sub297 to i64
  %arrayidx299 = getelementptr inbounds double, ptr %281, i64 %idxprom298
  %284 = load ptr, ptr %work.addr, align 8
  %arrayidx300 = getelementptr inbounds double, ptr %284, i64 1
  %285 = load ptr, ptr %iwork.addr, align 8
  %286 = load i32, ptr %subpbs, align 4
  %add301 = add nsw i32 %286, 1
  %idxprom302 = sext i32 %add301 to i64
  %arrayidx303 = getelementptr inbounds i32, ptr %285, i64 %idxprom302
  %287 = load ptr, ptr %info.addr, align 8
  %call304 = call i32 @dlaed1_(ptr noundef %matsiz, ptr noundef %arrayidx288, ptr noundef %arrayidx292, ptr noundef %277, ptr noundef %arrayidx295, ptr noundef %arrayidx299, ptr noundef %msd2, ptr noundef %arrayidx300, ptr noundef %arrayidx303, ptr noundef %287)
  br label %if.end339

if.else305:                                       ; preds = %if.end283
  %288 = load ptr, ptr %icompq.addr, align 8
  %289 = load ptr, ptr %qsiz.addr, align 8
  %290 = load ptr, ptr %d__.addr, align 8
  %291 = load i32, ptr %submat, align 4
  %idxprom306 = sext i32 %291 to i64
  %arrayidx307 = getelementptr inbounds double, ptr %290, i64 %idxprom306
  %292 = load ptr, ptr %qstore.addr, align 8
  %293 = load i32, ptr %submat, align 4
  %294 = load i32, ptr %qstore_dim1, align 4
  %mul308 = mul nsw i32 %293, %294
  %add309 = add nsw i32 %mul308, 1
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %292, i64 %idxprom310
  %295 = load ptr, ptr %ldqs.addr, align 8
  %296 = load ptr, ptr %iwork.addr, align 8
  %297 = load i32, ptr %indxq, align 4
  %298 = load i32, ptr %submat, align 4
  %add312 = add nsw i32 %297, %298
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds i32, ptr %296, i64 %idxprom313
  %299 = load ptr, ptr %e.addr, align 8
  %300 = load i32, ptr %submat, align 4
  %301 = load i32, ptr %msd2, align 4
  %add315 = add nsw i32 %300, %301
  %sub316 = sub nsw i32 %add315, 1
  %idxprom317 = sext i32 %sub316 to i64
  %arrayidx318 = getelementptr inbounds double, ptr %299, i64 %idxprom317
  %302 = load ptr, ptr %work.addr, align 8
  %303 = load i32, ptr %iq, align 4
  %idxprom319 = sext i32 %303 to i64
  %arrayidx320 = getelementptr inbounds double, ptr %302, i64 %idxprom319
  %304 = load ptr, ptr %iwork.addr, align 8
  %305 = load i32, ptr %iqptr, align 4
  %idxprom321 = sext i32 %305 to i64
  %arrayidx322 = getelementptr inbounds i32, ptr %304, i64 %idxprom321
  %306 = load ptr, ptr %iwork.addr, align 8
  %307 = load i32, ptr %iprmpt, align 4
  %idxprom323 = sext i32 %307 to i64
  %arrayidx324 = getelementptr inbounds i32, ptr %306, i64 %idxprom323
  %308 = load ptr, ptr %iwork.addr, align 8
  %309 = load i32, ptr %iperm, align 4
  %idxprom325 = sext i32 %309 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %308, i64 %idxprom325
  %310 = load ptr, ptr %iwork.addr, align 8
  %311 = load i32, ptr %igivpt, align 4
  %idxprom327 = sext i32 %311 to i64
  %arrayidx328 = getelementptr inbounds i32, ptr %310, i64 %idxprom327
  %312 = load ptr, ptr %iwork.addr, align 8
  %313 = load i32, ptr %igivcl, align 4
  %idxprom329 = sext i32 %313 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %312, i64 %idxprom329
  %314 = load ptr, ptr %work.addr, align 8
  %315 = load i32, ptr %igivnm, align 4
  %idxprom331 = sext i32 %315 to i64
  %arrayidx332 = getelementptr inbounds double, ptr %314, i64 %idxprom331
  %316 = load ptr, ptr %work.addr, align 8
  %317 = load i32, ptr %iwrem, align 4
  %idxprom333 = sext i32 %317 to i64
  %arrayidx334 = getelementptr inbounds double, ptr %316, i64 %idxprom333
  %318 = load ptr, ptr %iwork.addr, align 8
  %319 = load i32, ptr %subpbs, align 4
  %add335 = add nsw i32 %319, 1
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds i32, ptr %318, i64 %idxprom336
  %320 = load ptr, ptr %info.addr, align 8
  %call338 = call i32 @dlaed7_(ptr noundef %288, ptr noundef %matsiz, ptr noundef %289, ptr noundef %tlvls, ptr noundef %curlvl, ptr noundef %curprb, ptr noundef %arrayidx307, ptr noundef %arrayidx311, ptr noundef %295, ptr noundef %arrayidx314, ptr noundef %arrayidx318, ptr noundef %msd2, ptr noundef %arrayidx320, ptr noundef %arrayidx322, ptr noundef %arrayidx324, ptr noundef %arrayidx326, ptr noundef %arrayidx328, ptr noundef %arrayidx330, ptr noundef %arrayidx332, ptr noundef %arrayidx334, ptr noundef %arrayidx337, ptr noundef %320)
  br label %if.end339

if.end339:                                        ; preds = %if.else305, %if.then286
  %321 = load ptr, ptr %info.addr, align 8
  %322 = load i32, ptr %321, align 4
  %cmp340 = icmp ne i32 %322, 0
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %if.end339
  br label %L130

if.end343:                                        ; preds = %if.end339
  %323 = load ptr, ptr %iwork.addr, align 8
  %324 = load i32, ptr %i__, align 4
  %add344 = add nsw i32 %324, 2
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds i32, ptr %323, i64 %idxprom345
  %325 = load i32, ptr %arrayidx346, align 4
  %326 = load ptr, ptr %iwork.addr, align 8
  %327 = load i32, ptr %i__, align 4
  %div347 = sdiv i32 %327, 2
  %add348 = add nsw i32 %div347, 1
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %326, i64 %idxprom349
  store i32 %325, ptr %arrayidx350, align 4
  br label %for.inc351

for.inc351:                                       ; preds = %if.end343
  %328 = load i32, ptr %i__, align 4
  %add352 = add nsw i32 %328, 2
  store i32 %add352, ptr %i__, align 4
  br label %for.cond262, !llvm.loop !12

for.end353:                                       ; preds = %for.cond262
  %329 = load i32, ptr %subpbs, align 4
  %div354 = sdiv i32 %329, 2
  store i32 %div354, ptr %subpbs, align 4
  %330 = load i32, ptr %curlvl, align 4
  %inc355 = add nsw i32 %330, 1
  store i32 %inc355, ptr %curlvl, align 4
  br label %L80

if.end356:                                        ; preds = %L80
  %331 = load ptr, ptr %icompq.addr, align 8
  %332 = load i32, ptr %331, align 4
  %cmp357 = icmp eq i32 %332, 1
  br i1 %cmp357, label %if.then359, label %if.else386

if.then359:                                       ; preds = %if.end356
  %333 = load ptr, ptr %n.addr, align 8
  %334 = load i32, ptr %333, align 4
  store i32 %334, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond360

for.cond360:                                      ; preds = %for.inc380, %if.then359
  %335 = load i32, ptr %i__, align 4
  %336 = load i32, ptr %i__1, align 4
  %cmp361 = icmp sle i32 %335, %336
  br i1 %cmp361, label %for.body363, label %for.end382

for.body363:                                      ; preds = %for.cond360
  %337 = load ptr, ptr %iwork.addr, align 8
  %338 = load i32, ptr %indxq, align 4
  %339 = load i32, ptr %i__, align 4
  %add364 = add nsw i32 %338, %339
  %idxprom365 = sext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds i32, ptr %337, i64 %idxprom365
  %340 = load i32, ptr %arrayidx366, align 4
  store i32 %340, ptr %j, align 4
  %341 = load ptr, ptr %d__.addr, align 8
  %342 = load i32, ptr %j, align 4
  %idxprom367 = sext i32 %342 to i64
  %arrayidx368 = getelementptr inbounds double, ptr %341, i64 %idxprom367
  %343 = load double, ptr %arrayidx368, align 8
  %344 = load ptr, ptr %work.addr, align 8
  %345 = load i32, ptr %i__, align 4
  %idxprom369 = sext i32 %345 to i64
  %arrayidx370 = getelementptr inbounds double, ptr %344, i64 %idxprom369
  store double %343, ptr %arrayidx370, align 8
  %346 = load ptr, ptr %qsiz.addr, align 8
  %347 = load ptr, ptr %qstore.addr, align 8
  %348 = load i32, ptr %j, align 4
  %349 = load i32, ptr %qstore_dim1, align 4
  %mul371 = mul nsw i32 %348, %349
  %add372 = add nsw i32 %mul371, 1
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds double, ptr %347, i64 %idxprom373
  %350 = load ptr, ptr %q.addr, align 8
  %351 = load i32, ptr %i__, align 4
  %352 = load i32, ptr %q_dim1, align 4
  %mul375 = mul nsw i32 %351, %352
  %add376 = add nsw i32 %mul375, 1
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds double, ptr %350, i64 %idxprom377
  %call379 = call i32 @dcopy_(ptr noundef %346, ptr noundef %arrayidx374, ptr noundef @c__1, ptr noundef %arrayidx378, ptr noundef @c__1)
  br label %for.inc380

for.inc380:                                       ; preds = %for.body363
  %353 = load i32, ptr %i__, align 4
  %inc381 = add nsw i32 %353, 1
  store i32 %inc381, ptr %i__, align 4
  br label %for.cond360, !llvm.loop !13

for.end382:                                       ; preds = %for.cond360
  %354 = load ptr, ptr %n.addr, align 8
  %355 = load ptr, ptr %work.addr, align 8
  %arrayidx383 = getelementptr inbounds double, ptr %355, i64 1
  %356 = load ptr, ptr %d__.addr, align 8
  %arrayidx384 = getelementptr inbounds double, ptr %356, i64 1
  %call385 = call i32 @dcopy_(ptr noundef %354, ptr noundef %arrayidx383, ptr noundef @c__1, ptr noundef %arrayidx384, ptr noundef @c__1)
  br label %if.end441

if.else386:                                       ; preds = %if.end356
  %357 = load ptr, ptr %icompq.addr, align 8
  %358 = load i32, ptr %357, align 4
  %cmp387 = icmp eq i32 %358, 2
  br i1 %cmp387, label %if.then389, label %if.else422

if.then389:                                       ; preds = %if.else386
  %359 = load ptr, ptr %n.addr, align 8
  %360 = load i32, ptr %359, align 4
  store i32 %360, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond390

for.cond390:                                      ; preds = %for.inc410, %if.then389
  %361 = load i32, ptr %i__, align 4
  %362 = load i32, ptr %i__1, align 4
  %cmp391 = icmp sle i32 %361, %362
  br i1 %cmp391, label %for.body393, label %for.end412

for.body393:                                      ; preds = %for.cond390
  %363 = load ptr, ptr %iwork.addr, align 8
  %364 = load i32, ptr %indxq, align 4
  %365 = load i32, ptr %i__, align 4
  %add394 = add nsw i32 %364, %365
  %idxprom395 = sext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds i32, ptr %363, i64 %idxprom395
  %366 = load i32, ptr %arrayidx396, align 4
  store i32 %366, ptr %j, align 4
  %367 = load ptr, ptr %d__.addr, align 8
  %368 = load i32, ptr %j, align 4
  %idxprom397 = sext i32 %368 to i64
  %arrayidx398 = getelementptr inbounds double, ptr %367, i64 %idxprom397
  %369 = load double, ptr %arrayidx398, align 8
  %370 = load ptr, ptr %work.addr, align 8
  %371 = load i32, ptr %i__, align 4
  %idxprom399 = sext i32 %371 to i64
  %arrayidx400 = getelementptr inbounds double, ptr %370, i64 %idxprom399
  store double %369, ptr %arrayidx400, align 8
  %372 = load ptr, ptr %n.addr, align 8
  %373 = load ptr, ptr %q.addr, align 8
  %374 = load i32, ptr %j, align 4
  %375 = load i32, ptr %q_dim1, align 4
  %mul401 = mul nsw i32 %374, %375
  %add402 = add nsw i32 %mul401, 1
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds double, ptr %373, i64 %idxprom403
  %376 = load ptr, ptr %work.addr, align 8
  %377 = load ptr, ptr %n.addr, align 8
  %378 = load i32, ptr %377, align 4
  %379 = load i32, ptr %i__, align 4
  %mul405 = mul nsw i32 %378, %379
  %add406 = add nsw i32 %mul405, 1
  %idxprom407 = sext i32 %add406 to i64
  %arrayidx408 = getelementptr inbounds double, ptr %376, i64 %idxprom407
  %call409 = call i32 @dcopy_(ptr noundef %372, ptr noundef %arrayidx404, ptr noundef @c__1, ptr noundef %arrayidx408, ptr noundef @c__1)
  br label %for.inc410

for.inc410:                                       ; preds = %for.body393
  %380 = load i32, ptr %i__, align 4
  %inc411 = add nsw i32 %380, 1
  store i32 %inc411, ptr %i__, align 4
  br label %for.cond390, !llvm.loop !14

for.end412:                                       ; preds = %for.cond390
  %381 = load ptr, ptr %n.addr, align 8
  %382 = load ptr, ptr %work.addr, align 8
  %arrayidx413 = getelementptr inbounds double, ptr %382, i64 1
  %383 = load ptr, ptr %d__.addr, align 8
  %arrayidx414 = getelementptr inbounds double, ptr %383, i64 1
  %call415 = call i32 @dcopy_(ptr noundef %381, ptr noundef %arrayidx413, ptr noundef @c__1, ptr noundef %arrayidx414, ptr noundef @c__1)
  %384 = load ptr, ptr %n.addr, align 8
  %385 = load ptr, ptr %n.addr, align 8
  %386 = load ptr, ptr %work.addr, align 8
  %387 = load ptr, ptr %n.addr, align 8
  %388 = load i32, ptr %387, align 4
  %add416 = add nsw i32 %388, 1
  %idxprom417 = sext i32 %add416 to i64
  %arrayidx418 = getelementptr inbounds double, ptr %386, i64 %idxprom417
  %389 = load ptr, ptr %n.addr, align 8
  %390 = load ptr, ptr %q.addr, align 8
  %391 = load i32, ptr %q_offset, align 4
  %idxprom419 = sext i32 %391 to i64
  %arrayidx420 = getelementptr inbounds double, ptr %390, i64 %idxprom419
  %392 = load ptr, ptr %ldq.addr, align 8
  %call421 = call i32 @dlacpy_(ptr noundef @.str.4, ptr noundef %384, ptr noundef %385, ptr noundef %arrayidx418, ptr noundef %389, ptr noundef %arrayidx420, ptr noundef %392)
  br label %if.end440

if.else422:                                       ; preds = %if.else386
  %393 = load ptr, ptr %n.addr, align 8
  %394 = load i32, ptr %393, align 4
  store i32 %394, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond423

for.cond423:                                      ; preds = %for.inc434, %if.else422
  %395 = load i32, ptr %i__, align 4
  %396 = load i32, ptr %i__1, align 4
  %cmp424 = icmp sle i32 %395, %396
  br i1 %cmp424, label %for.body426, label %for.end436

for.body426:                                      ; preds = %for.cond423
  %397 = load ptr, ptr %iwork.addr, align 8
  %398 = load i32, ptr %indxq, align 4
  %399 = load i32, ptr %i__, align 4
  %add427 = add nsw i32 %398, %399
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds i32, ptr %397, i64 %idxprom428
  %400 = load i32, ptr %arrayidx429, align 4
  store i32 %400, ptr %j, align 4
  %401 = load ptr, ptr %d__.addr, align 8
  %402 = load i32, ptr %j, align 4
  %idxprom430 = sext i32 %402 to i64
  %arrayidx431 = getelementptr inbounds double, ptr %401, i64 %idxprom430
  %403 = load double, ptr %arrayidx431, align 8
  %404 = load ptr, ptr %work.addr, align 8
  %405 = load i32, ptr %i__, align 4
  %idxprom432 = sext i32 %405 to i64
  %arrayidx433 = getelementptr inbounds double, ptr %404, i64 %idxprom432
  store double %403, ptr %arrayidx433, align 8
  br label %for.inc434

for.inc434:                                       ; preds = %for.body426
  %406 = load i32, ptr %i__, align 4
  %inc435 = add nsw i32 %406, 1
  store i32 %inc435, ptr %i__, align 4
  br label %for.cond423, !llvm.loop !15

for.end436:                                       ; preds = %for.cond423
  %407 = load ptr, ptr %n.addr, align 8
  %408 = load ptr, ptr %work.addr, align 8
  %arrayidx437 = getelementptr inbounds double, ptr %408, i64 1
  %409 = load ptr, ptr %d__.addr, align 8
  %arrayidx438 = getelementptr inbounds double, ptr %409, i64 1
  %call439 = call i32 @dcopy_(ptr noundef %407, ptr noundef %arrayidx437, ptr noundef @c__1, ptr noundef %arrayidx438, ptr noundef @c__1)
  br label %if.end440

if.end440:                                        ; preds = %for.end436, %for.end412
  br label %if.end441

if.end441:                                        ; preds = %if.end440, %for.end382
  br label %L140

L130:                                             ; preds = %if.then342, %if.then208, %if.then190
  %410 = load i32, ptr %submat, align 4
  %411 = load ptr, ptr %n.addr, align 8
  %412 = load i32, ptr %411, align 4
  %add442 = add nsw i32 %412, 1
  %mul443 = mul nsw i32 %410, %add442
  %413 = load i32, ptr %submat, align 4
  %add444 = add nsw i32 %mul443, %413
  %414 = load i32, ptr %matsiz, align 4
  %add445 = add nsw i32 %add444, %414
  %sub446 = sub nsw i32 %add445, 1
  %415 = load ptr, ptr %info.addr, align 8
  store i32 %sub446, ptr %415, align 4
  br label %L140

L140:                                             ; preds = %L130, %if.end441
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %L140, %if.then40, %if.then37
  %416 = load i32, ptr %retval, align 4
  ret i32 %416
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #2

declare i32 @pow_ii(ptr noundef, ptr noundef) #1

declare i32 @dsteqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlaed1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlaed7_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
