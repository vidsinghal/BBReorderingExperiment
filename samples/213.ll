; ModuleID = 'samples/213.bc'
source_filename = "dorg2r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre_dorg2r.c__1 = internal global i32 1, align 4
@hypre_dorg2r.i__ = internal global i32 0, align 4
@hypre_dorg2r.j = internal global i32 0, align 4
@hypre_dorg2r.l = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DORG2R\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_dorg2r(ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #3
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
  %5 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %10, align 4, !tbaa !8
  br label %if.end16

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %15 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp3 = icmp sgt i32 %14, %16
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %17, align 4, !tbaa !8
  br label %if.end15

if.else5:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.else5
  %20 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %cmp8 = icmp sgt i32 %21, %23
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %lor.lhs.false7, %if.else5
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %24, align 4, !tbaa !8
  br label %if.end14

if.else10:                                        ; preds = %lor.lhs.false7
  %25 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %27 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %cmp11 = icmp sge i32 1, %28
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else10
  br label %cond.end

cond.false:                                       ; preds = %if.else10
  %29 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %30, %cond.false ]
  %cmp12 = icmp slt i32 %26, %cond
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %cond.end
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %31, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then13, %cond.end
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %cmp17 = icmp ne i32 %33, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %sub = sub nsw i32 0, %35
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call = call i32 @hypre_lapack_xerbla(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %36 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %cmp20 = icmp sle i32 %37, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %38 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  store i32 %39, ptr %i__1, align 4, !tbaa !8
  %40 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %add23 = add nsw i32 %41, 1
  store i32 %add23, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %if.end22
  %42 = load i32, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  %43 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp24 = icmp sle i32 %42, %43
  br i1 %cmp24, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  store i32 %45, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %for.body
  %46 = load i32, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  %47 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp26 = icmp sle i32 %46, %47
  br i1 %cmp26, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond25
  %48 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %49 = load i32, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  %50 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul28 = mul nsw i32 %49, %50
  %51 = load i32, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  %add29 = add nsw i32 %mul28, %51
  %idxprom = sext i32 %add29 to i64
  %arrayidx = getelementptr inbounds double, ptr %48, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %52 = load i32, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  br label %for.cond25, !llvm.loop !12

for.end:                                          ; preds = %for.cond25
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %54 = load i32, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  %55 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul30 = mul nsw i32 %54, %55
  %56 = load i32, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  %add31 = add nsw i32 %mul30, %56
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds double, ptr %53, i64 %idxprom32
  store double 1.000000e+00, ptr %arrayidx33, align 8, !tbaa !10
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %57 = load i32, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  %inc35 = add nsw i32 %57, 1
  store i32 %inc35, ptr @hypre_dorg2r.j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end36:                                        ; preds = %for.cond
  %58 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  store i32 %59, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc93, %for.end36
  %60 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %cmp38 = icmp sge i32 %60, 1
  br i1 %cmp38, label %for.body39, label %for.end94

for.body39:                                       ; preds = %for.cond37
  %61 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %62 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %cmp40 = icmp slt i32 %61, %63
  br i1 %cmp40, label %if.then41, label %if.end62

if.then41:                                        ; preds = %for.body39
  %64 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %65 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %66 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul42 = mul nsw i32 %65, %66
  %67 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %add43 = add nsw i32 %mul42, %67
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %64, i64 %idxprom44
  store double 1.000000e+00, ptr %arrayidx45, align 8, !tbaa !10
  %68 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %70 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %sub46 = sub nsw i32 %69, %70
  %add47 = add nsw i32 %sub46, 1
  store i32 %add47, ptr %i__1, align 4, !tbaa !8
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  %73 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %sub48 = sub nsw i32 %72, %73
  store i32 %sub48, ptr %i__2, align 4, !tbaa !8
  %74 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %75 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %76 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul49 = mul nsw i32 %75, %76
  %77 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %add50 = add nsw i32 %mul49, %77
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %74, i64 %idxprom51
  %78 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %79 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %idxprom53 = sext i32 %79 to i64
  %arrayidx54 = getelementptr inbounds double, ptr %78, i64 %idxprom53
  %80 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %81 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %add55 = add nsw i32 %81, 1
  %82 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul56 = mul nsw i32 %add55, %82
  %83 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %add57 = add nsw i32 %mul56, %83
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds double, ptr %80, i64 %idxprom58
  %84 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds double, ptr %85, i64 1
  %call61 = call i32 @hypre_dlarf(ptr noundef @.str.1, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx52, ptr noundef @hypre_dorg2r.c__1, ptr noundef %arrayidx54, ptr noundef %arrayidx59, ptr noundef %84, ptr noundef %arrayidx60)
  br label %if.end62

if.end62:                                         ; preds = %if.then41, %for.body39
  %86 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %87 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !8
  %cmp63 = icmp slt i32 %86, %88
  br i1 %cmp63, label %if.then64, label %if.end74

if.then64:                                        ; preds = %if.end62
  %89 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %91 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %sub65 = sub nsw i32 %90, %91
  store i32 %sub65, ptr %i__1, align 4, !tbaa !8
  %92 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %93 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %idxprom66 = sext i32 %93 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %92, i64 %idxprom66
  %94 = load double, ptr %arrayidx67, align 8, !tbaa !10
  %fneg = fneg double %94
  store double %fneg, ptr %d__1, align 8, !tbaa !10
  %95 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %96 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %97 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul68 = mul nsw i32 %96, %97
  %98 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %add69 = add nsw i32 %mul68, %98
  %add70 = add nsw i32 %add69, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %95, i64 %idxprom71
  %call73 = call i32 @dscal_(ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx72, ptr noundef @hypre_dorg2r.c__1)
  br label %if.end74

if.end74:                                         ; preds = %if.then64, %if.end62
  %99 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %100 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %idxprom75 = sext i32 %100 to i64
  %arrayidx76 = getelementptr inbounds double, ptr %99, i64 %idxprom75
  %101 = load double, ptr %arrayidx76, align 8, !tbaa !10
  %sub77 = fsub double 1.000000e+00, %101
  %102 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %103 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %104 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul78 = mul nsw i32 %103, %104
  %105 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %add79 = add nsw i32 %mul78, %105
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %102, i64 %idxprom80
  store double %sub77, ptr %arrayidx81, align 8, !tbaa !10
  %106 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %sub82 = sub nsw i32 %106, 1
  store i32 %sub82, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc90, %if.end74
  %107 = load i32, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  %108 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp84 = icmp sle i32 %107, %108
  br i1 %cmp84, label %for.body85, label %for.end92

for.body85:                                       ; preds = %for.cond83
  %109 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %110 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %111 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul86 = mul nsw i32 %110, %111
  %112 = load i32, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  %add87 = add nsw i32 %mul86, %112
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %109, i64 %idxprom88
  store double 0.000000e+00, ptr %arrayidx89, align 8, !tbaa !10
  br label %for.inc90

for.inc90:                                        ; preds = %for.body85
  %113 = load i32, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  %inc91 = add nsw i32 %113, 1
  store i32 %inc91, ptr @hypre_dorg2r.l, align 4, !tbaa !8
  br label %for.cond83, !llvm.loop !15

for.end92:                                        ; preds = %for.cond83
  br label %for.inc93

for.inc93:                                        ; preds = %for.end92
  %114 = load i32, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  %dec = add nsw i32 %114, -1
  store i32 %dec, ptr @hypre_dorg2r.i__, align 4, !tbaa !8
  br label %for.cond37, !llvm.loop !16

for.end94:                                        ; preds = %for.cond37
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end94, %if.then21, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @hypre_lapack_xerbla(ptr noundef, ptr noundef) #2

declare i32 @hypre_dlarf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
