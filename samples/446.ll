; ModuleID = 'samples/446.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dlar1v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Precision\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dlar1v_(ptr noundef %n, ptr noundef %b1, ptr noundef %bn, ptr noundef %lambda, ptr noundef %d__, ptr noundef %l, ptr noundef %ld, ptr noundef %lld, ptr noundef %pivmin, ptr noundef %gaptol, ptr noundef %z__, ptr noundef %wantnc, ptr noundef %negcnt, ptr noundef %ztz, ptr noundef %mingma, ptr noundef %r__, ptr noundef %isuppz, ptr noundef %nrminv, ptr noundef %resid, ptr noundef %rqcorr, ptr noundef %work) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %b1.addr = alloca ptr, align 8
  %bn.addr = alloca ptr, align 8
  %lambda.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %ld.addr = alloca ptr, align 8
  %lld.addr = alloca ptr, align 8
  %pivmin.addr = alloca ptr, align 8
  %gaptol.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %wantnc.addr = alloca ptr, align 8
  %negcnt.addr = alloca ptr, align 8
  %ztz.addr = alloca ptr, align 8
  %mingma.addr = alloca ptr, align 8
  %r__.addr = alloca ptr, align 8
  %isuppz.addr = alloca ptr, align 8
  %nrminv.addr = alloca ptr, align 8
  %resid.addr = alloca ptr, align 8
  %rqcorr.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %i__ = alloca i32, align 4
  %s = alloca double, align 8
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %eps = alloca double, align 8
  %tmp = alloca double, align 8
  %neg1 = alloca i32, align 4
  %neg2 = alloca i32, align 4
  %indp = alloca i32, align 4
  %inds = alloca i32, align 4
  %dplus = alloca double, align 8
  %indlpl = alloca i32, align 4
  %indumn = alloca i32, align 4
  %dminus = alloca double, align 8
  %sawnan1 = alloca i32, align 4
  %sawnan2 = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %b1, ptr %b1.addr, align 8, !tbaa !4
  store ptr %bn, ptr %bn.addr, align 8, !tbaa !4
  store ptr %lambda, ptr %lambda.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  store ptr %ld, ptr %ld.addr, align 8, !tbaa !4
  store ptr %lld, ptr %lld.addr, align 8, !tbaa !4
  store ptr %pivmin, ptr %pivmin.addr, align 8, !tbaa !4
  store ptr %gaptol, ptr %gaptol.addr, align 8, !tbaa !4
  store ptr %z__, ptr %z__.addr, align 8, !tbaa !4
  store ptr %wantnc, ptr %wantnc.addr, align 8, !tbaa !4
  store ptr %negcnt, ptr %negcnt.addr, align 8, !tbaa !4
  store ptr %ztz, ptr %ztz.addr, align 8, !tbaa !4
  store ptr %mingma, ptr %mingma.addr, align 8, !tbaa !4
  store ptr %r__, ptr %r__.addr, align 8, !tbaa !4
  store ptr %isuppz, ptr %isuppz.addr, align 8, !tbaa !4
  store ptr %nrminv, ptr %nrminv.addr, align 8, !tbaa !4
  store ptr %resid, ptr %resid.addr, align 8, !tbaa !4
  store ptr %rqcorr, ptr %rqcorr.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %neg2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %inds) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dplus) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indlpl) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %indumn) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dminus) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sawnan1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sawnan2) #5
  %0 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %isuppz.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %z__.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %lld.addr, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds double, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %lld.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds double, ptr %4, i32 -1
  store ptr %incdec.ptr4, ptr %ld.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr5, ptr %l.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr6, ptr %d__.addr, align 8, !tbaa !4
  %call = call double @dlamch_(ptr noundef @.str)
  store double %call, ptr %eps, align 8, !tbaa !8
  %7 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %10 = load i32, ptr %9, align 4, !tbaa !10
  store i32 %10, ptr %r1, align 4, !tbaa !10
  %11 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !10
  store i32 %12, ptr %r2, align 4, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !10
  store i32 %14, ptr %r1, align 4, !tbaa !10
  %15 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !10
  store i32 %16, ptr %r2, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %indlpl, align 4, !tbaa !10
  %17 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !10
  store i32 %18, ptr %indumn, align 4, !tbaa !10
  %19 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !10
  %shl = shl i32 %20, 1
  %add = add nsw i32 %shl, 1
  store i32 %add, ptr %inds, align 4, !tbaa !10
  %21 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !10
  %mul = mul nsw i32 %22, 3
  %add7 = add nsw i32 %mul, 1
  store i32 %add7, ptr %indp, align 4, !tbaa !10
  %23 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !10
  %cmp8 = icmp eq i32 %24, 1
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end
  %25 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %26 = load i32, ptr %inds, align 4, !tbaa !10
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds double, ptr %25, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !8
  br label %if.end17

if.else10:                                        ; preds = %if.end
  %27 = load ptr, ptr %lld.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !10
  %sub = sub nsw i32 %29, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds double, ptr %27, i64 %idxprom11
  %30 = load double, ptr %arrayidx12, align 8, !tbaa !8
  %31 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %32 = load i32, ptr %inds, align 4, !tbaa !10
  %33 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !10
  %add13 = add nsw i32 %32, %34
  %sub14 = sub nsw i32 %add13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %31, i64 %idxprom15
  store double %30, ptr %arrayidx16, align 8, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.else10, %if.then9
  store i32 0, ptr %sawnan1, align 4, !tbaa !10
  store i32 0, ptr %neg1, align 4, !tbaa !10
  %35 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %36 = load i32, ptr %inds, align 4, !tbaa !10
  %37 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !10
  %add18 = add nsw i32 %36, %38
  %sub19 = sub nsw i32 %add18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %35, i64 %idxprom20
  %39 = load double, ptr %arrayidx21, align 8, !tbaa !8
  %40 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %41 = load double, ptr %40, align 8, !tbaa !8
  %sub22 = fsub double %39, %41
  store double %sub22, ptr %s, align 8, !tbaa !8
  %42 = load i32, ptr %r1, align 4, !tbaa !10
  %sub23 = sub nsw i32 %42, 1
  store i32 %sub23, ptr %i__1, align 4, !tbaa !10
  %43 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !10
  store i32 %44, ptr %i__, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %45 = load i32, ptr %i__, align 4, !tbaa !10
  %46 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp24 = icmp sle i32 %45, %46
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %48 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom25 = sext i32 %48 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %47, i64 %idxprom25
  %49 = load double, ptr %arrayidx26, align 8, !tbaa !8
  %50 = load double, ptr %s, align 8, !tbaa !8
  %add27 = fadd double %49, %50
  store double %add27, ptr %dplus, align 8, !tbaa !8
  %51 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %52 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom28 = sext i32 %52 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %51, i64 %idxprom28
  %53 = load double, ptr %arrayidx29, align 8, !tbaa !8
  %54 = load double, ptr %dplus, align 8, !tbaa !8
  %div = fdiv double %53, %54
  %55 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %56 = load i32, ptr %indlpl, align 4, !tbaa !10
  %57 = load i32, ptr %i__, align 4, !tbaa !10
  %add30 = add nsw i32 %56, %57
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, ptr %55, i64 %idxprom31
  store double %div, ptr %arrayidx32, align 8, !tbaa !8
  %58 = load double, ptr %dplus, align 8, !tbaa !8
  %cmp33 = fcmp olt double %58, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body
  %59 = load i32, ptr %neg1, align 4, !tbaa !10
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %neg1, align 4, !tbaa !10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.body
  %60 = load double, ptr %s, align 8, !tbaa !8
  %61 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %62 = load i32, ptr %indlpl, align 4, !tbaa !10
  %63 = load i32, ptr %i__, align 4, !tbaa !10
  %add36 = add nsw i32 %62, %63
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %61, i64 %idxprom37
  %64 = load double, ptr %arrayidx38, align 8, !tbaa !8
  %mul39 = fmul double %60, %64
  %65 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %66 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom40 = sext i32 %66 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %65, i64 %idxprom40
  %67 = load double, ptr %arrayidx41, align 8, !tbaa !8
  %mul42 = fmul double %mul39, %67
  %68 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %69 = load i32, ptr %inds, align 4, !tbaa !10
  %70 = load i32, ptr %i__, align 4, !tbaa !10
  %add43 = add nsw i32 %69, %70
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %68, i64 %idxprom44
  store double %mul42, ptr %arrayidx45, align 8, !tbaa !8
  %71 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %72 = load i32, ptr %inds, align 4, !tbaa !10
  %73 = load i32, ptr %i__, align 4, !tbaa !10
  %add46 = add nsw i32 %72, %73
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %71, i64 %idxprom47
  %74 = load double, ptr %arrayidx48, align 8, !tbaa !8
  %75 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %76 = load double, ptr %75, align 8, !tbaa !8
  %sub49 = fsub double %74, %76
  store double %sub49, ptr %s, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %77 = load i32, ptr %i__, align 4, !tbaa !10
  %inc50 = add nsw i32 %77, 1
  store i32 %inc50, ptr %i__, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %call51 = call i32 @disnan_(ptr noundef %s)
  store i32 %call51, ptr %sawnan1, align 4, !tbaa !10
  %78 = load i32, ptr %sawnan1, align 4, !tbaa !10
  %tobool = icmp ne i32 %78, 0
  br i1 %tobool, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.end
  br label %L60

if.end53:                                         ; preds = %for.end
  %79 = load i32, ptr %r2, align 4, !tbaa !10
  %sub54 = sub nsw i32 %79, 1
  store i32 %sub54, ptr %i__1, align 4, !tbaa !10
  %80 = load i32, ptr %r1, align 4, !tbaa !10
  store i32 %80, ptr %i__, align 4, !tbaa !10
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc81, %if.end53
  %81 = load i32, ptr %i__, align 4, !tbaa !10
  %82 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp56 = icmp sle i32 %81, %82
  br i1 %cmp56, label %for.body57, label %for.end83

for.body57:                                       ; preds = %for.cond55
  %83 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %84 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom58 = sext i32 %84 to i64
  %arrayidx59 = getelementptr inbounds double, ptr %83, i64 %idxprom58
  %85 = load double, ptr %arrayidx59, align 8, !tbaa !8
  %86 = load double, ptr %s, align 8, !tbaa !8
  %add60 = fadd double %85, %86
  store double %add60, ptr %dplus, align 8, !tbaa !8
  %87 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %88 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom61 = sext i32 %88 to i64
  %arrayidx62 = getelementptr inbounds double, ptr %87, i64 %idxprom61
  %89 = load double, ptr %arrayidx62, align 8, !tbaa !8
  %90 = load double, ptr %dplus, align 8, !tbaa !8
  %div63 = fdiv double %89, %90
  %91 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %92 = load i32, ptr %indlpl, align 4, !tbaa !10
  %93 = load i32, ptr %i__, align 4, !tbaa !10
  %add64 = add nsw i32 %92, %93
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %91, i64 %idxprom65
  store double %div63, ptr %arrayidx66, align 8, !tbaa !8
  %94 = load double, ptr %s, align 8, !tbaa !8
  %95 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %96 = load i32, ptr %indlpl, align 4, !tbaa !10
  %97 = load i32, ptr %i__, align 4, !tbaa !10
  %add67 = add nsw i32 %96, %97
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds double, ptr %95, i64 %idxprom68
  %98 = load double, ptr %arrayidx69, align 8, !tbaa !8
  %mul70 = fmul double %94, %98
  %99 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %100 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom71 = sext i32 %100 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %99, i64 %idxprom71
  %101 = load double, ptr %arrayidx72, align 8, !tbaa !8
  %mul73 = fmul double %mul70, %101
  %102 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %103 = load i32, ptr %inds, align 4, !tbaa !10
  %104 = load i32, ptr %i__, align 4, !tbaa !10
  %add74 = add nsw i32 %103, %104
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds double, ptr %102, i64 %idxprom75
  store double %mul73, ptr %arrayidx76, align 8, !tbaa !8
  %105 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %106 = load i32, ptr %inds, align 4, !tbaa !10
  %107 = load i32, ptr %i__, align 4, !tbaa !10
  %add77 = add nsw i32 %106, %107
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %105, i64 %idxprom78
  %108 = load double, ptr %arrayidx79, align 8, !tbaa !8
  %109 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %110 = load double, ptr %109, align 8, !tbaa !8
  %sub80 = fsub double %108, %110
  store double %sub80, ptr %s, align 8, !tbaa !8
  br label %for.inc81

for.inc81:                                        ; preds = %for.body57
  %111 = load i32, ptr %i__, align 4, !tbaa !10
  %inc82 = add nsw i32 %111, 1
  store i32 %inc82, ptr %i__, align 4, !tbaa !10
  br label %for.cond55, !llvm.loop !14

for.end83:                                        ; preds = %for.cond55
  %call84 = call i32 @disnan_(ptr noundef %s)
  store i32 %call84, ptr %sawnan1, align 4, !tbaa !10
  br label %L60

L60:                                              ; preds = %for.end83, %if.then52
  %112 = load i32, ptr %sawnan1, align 4, !tbaa !10
  %tobool85 = icmp ne i32 %112, 0
  br i1 %tobool85, label %if.then86, label %if.end193

if.then86:                                        ; preds = %L60
  store i32 0, ptr %neg1, align 4, !tbaa !10
  %113 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %114 = load i32, ptr %inds, align 4, !tbaa !10
  %115 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !10
  %add87 = add nsw i32 %114, %116
  %sub88 = sub nsw i32 %add87, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds double, ptr %113, i64 %idxprom89
  %117 = load double, ptr %arrayidx90, align 8, !tbaa !8
  %118 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %119 = load double, ptr %118, align 8, !tbaa !8
  %sub91 = fsub double %117, %119
  store double %sub91, ptr %s, align 8, !tbaa !8
  %120 = load i32, ptr %r1, align 4, !tbaa !10
  %sub92 = sub nsw i32 %120, 1
  store i32 %sub92, ptr %i__1, align 4, !tbaa !10
  %121 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %122 = load i32, ptr %121, align 4, !tbaa !10
  store i32 %122, ptr %i__, align 4, !tbaa !10
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc139, %if.then86
  %123 = load i32, ptr %i__, align 4, !tbaa !10
  %124 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp94 = icmp sle i32 %123, %124
  br i1 %cmp94, label %for.body95, label %for.end141

for.body95:                                       ; preds = %for.cond93
  %125 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %126 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom96 = sext i32 %126 to i64
  %arrayidx97 = getelementptr inbounds double, ptr %125, i64 %idxprom96
  %127 = load double, ptr %arrayidx97, align 8, !tbaa !8
  %128 = load double, ptr %s, align 8, !tbaa !8
  %add98 = fadd double %127, %128
  store double %add98, ptr %dplus, align 8, !tbaa !8
  %129 = load double, ptr %dplus, align 8, !tbaa !8
  %cmp99 = fcmp oge double %129, 0.000000e+00
  br i1 %cmp99, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body95
  %130 = load double, ptr %dplus, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body95
  %131 = load double, ptr %dplus, align 8, !tbaa !8
  %fneg = fneg double %131
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %130, %cond.true ], [ %fneg, %cond.false ]
  %132 = load ptr, ptr %pivmin.addr, align 8, !tbaa !4
  %133 = load double, ptr %132, align 8, !tbaa !8
  %cmp100 = fcmp olt double %cond, %133
  br i1 %cmp100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %cond.end
  %134 = load ptr, ptr %pivmin.addr, align 8, !tbaa !4
  %135 = load double, ptr %134, align 8, !tbaa !8
  %fneg102 = fneg double %135
  store double %fneg102, ptr %dplus, align 8, !tbaa !8
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %cond.end
  %136 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %137 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom104 = sext i32 %137 to i64
  %arrayidx105 = getelementptr inbounds double, ptr %136, i64 %idxprom104
  %138 = load double, ptr %arrayidx105, align 8, !tbaa !8
  %139 = load double, ptr %dplus, align 8, !tbaa !8
  %div106 = fdiv double %138, %139
  %140 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %141 = load i32, ptr %indlpl, align 4, !tbaa !10
  %142 = load i32, ptr %i__, align 4, !tbaa !10
  %add107 = add nsw i32 %141, %142
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double, ptr %140, i64 %idxprom108
  store double %div106, ptr %arrayidx109, align 8, !tbaa !8
  %143 = load double, ptr %dplus, align 8, !tbaa !8
  %cmp110 = fcmp olt double %143, 0.000000e+00
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.end103
  %144 = load i32, ptr %neg1, align 4, !tbaa !10
  %inc112 = add nsw i32 %144, 1
  store i32 %inc112, ptr %neg1, align 4, !tbaa !10
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end103
  %145 = load double, ptr %s, align 8, !tbaa !8
  %146 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %147 = load i32, ptr %indlpl, align 4, !tbaa !10
  %148 = load i32, ptr %i__, align 4, !tbaa !10
  %add114 = add nsw i32 %147, %148
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds double, ptr %146, i64 %idxprom115
  %149 = load double, ptr %arrayidx116, align 8, !tbaa !8
  %mul117 = fmul double %145, %149
  %150 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %151 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom118 = sext i32 %151 to i64
  %arrayidx119 = getelementptr inbounds double, ptr %150, i64 %idxprom118
  %152 = load double, ptr %arrayidx119, align 8, !tbaa !8
  %mul120 = fmul double %mul117, %152
  %153 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %154 = load i32, ptr %inds, align 4, !tbaa !10
  %155 = load i32, ptr %i__, align 4, !tbaa !10
  %add121 = add nsw i32 %154, %155
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds double, ptr %153, i64 %idxprom122
  store double %mul120, ptr %arrayidx123, align 8, !tbaa !8
  %156 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %157 = load i32, ptr %indlpl, align 4, !tbaa !10
  %158 = load i32, ptr %i__, align 4, !tbaa !10
  %add124 = add nsw i32 %157, %158
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %156, i64 %idxprom125
  %159 = load double, ptr %arrayidx126, align 8, !tbaa !8
  %cmp127 = fcmp oeq double %159, 0.000000e+00
  br i1 %cmp127, label %if.then128, label %if.end134

if.then128:                                       ; preds = %if.end113
  %160 = load ptr, ptr %lld.addr, align 8, !tbaa !4
  %161 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom129 = sext i32 %161 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %160, i64 %idxprom129
  %162 = load double, ptr %arrayidx130, align 8, !tbaa !8
  %163 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %164 = load i32, ptr %inds, align 4, !tbaa !10
  %165 = load i32, ptr %i__, align 4, !tbaa !10
  %add131 = add nsw i32 %164, %165
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %163, i64 %idxprom132
  store double %162, ptr %arrayidx133, align 8, !tbaa !8
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end113
  %166 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %167 = load i32, ptr %inds, align 4, !tbaa !10
  %168 = load i32, ptr %i__, align 4, !tbaa !10
  %add135 = add nsw i32 %167, %168
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds double, ptr %166, i64 %idxprom136
  %169 = load double, ptr %arrayidx137, align 8, !tbaa !8
  %170 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %171 = load double, ptr %170, align 8, !tbaa !8
  %sub138 = fsub double %169, %171
  store double %sub138, ptr %s, align 8, !tbaa !8
  br label %for.inc139

for.inc139:                                       ; preds = %if.end134
  %172 = load i32, ptr %i__, align 4, !tbaa !10
  %inc140 = add nsw i32 %172, 1
  store i32 %inc140, ptr %i__, align 4, !tbaa !10
  br label %for.cond93, !llvm.loop !15

for.end141:                                       ; preds = %for.cond93
  %173 = load i32, ptr %r2, align 4, !tbaa !10
  %sub142 = sub nsw i32 %173, 1
  store i32 %sub142, ptr %i__1, align 4, !tbaa !10
  %174 = load i32, ptr %r1, align 4, !tbaa !10
  store i32 %174, ptr %i__, align 4, !tbaa !10
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc190, %for.end141
  %175 = load i32, ptr %i__, align 4, !tbaa !10
  %176 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp144 = icmp sle i32 %175, %176
  br i1 %cmp144, label %for.body145, label %for.end192

for.body145:                                      ; preds = %for.cond143
  %177 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %178 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom146 = sext i32 %178 to i64
  %arrayidx147 = getelementptr inbounds double, ptr %177, i64 %idxprom146
  %179 = load double, ptr %arrayidx147, align 8, !tbaa !8
  %180 = load double, ptr %s, align 8, !tbaa !8
  %add148 = fadd double %179, %180
  store double %add148, ptr %dplus, align 8, !tbaa !8
  %181 = load double, ptr %dplus, align 8, !tbaa !8
  %cmp149 = fcmp oge double %181, 0.000000e+00
  br i1 %cmp149, label %cond.true150, label %cond.false151

cond.true150:                                     ; preds = %for.body145
  %182 = load double, ptr %dplus, align 8, !tbaa !8
  br label %cond.end153

cond.false151:                                    ; preds = %for.body145
  %183 = load double, ptr %dplus, align 8, !tbaa !8
  %fneg152 = fneg double %183
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false151, %cond.true150
  %cond154 = phi double [ %182, %cond.true150 ], [ %fneg152, %cond.false151 ]
  %184 = load ptr, ptr %pivmin.addr, align 8, !tbaa !4
  %185 = load double, ptr %184, align 8, !tbaa !8
  %cmp155 = fcmp olt double %cond154, %185
  br i1 %cmp155, label %if.then156, label %if.end158

if.then156:                                       ; preds = %cond.end153
  %186 = load ptr, ptr %pivmin.addr, align 8, !tbaa !4
  %187 = load double, ptr %186, align 8, !tbaa !8
  %fneg157 = fneg double %187
  store double %fneg157, ptr %dplus, align 8, !tbaa !8
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %cond.end153
  %188 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %189 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom159 = sext i32 %189 to i64
  %arrayidx160 = getelementptr inbounds double, ptr %188, i64 %idxprom159
  %190 = load double, ptr %arrayidx160, align 8, !tbaa !8
  %191 = load double, ptr %dplus, align 8, !tbaa !8
  %div161 = fdiv double %190, %191
  %192 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %193 = load i32, ptr %indlpl, align 4, !tbaa !10
  %194 = load i32, ptr %i__, align 4, !tbaa !10
  %add162 = add nsw i32 %193, %194
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds double, ptr %192, i64 %idxprom163
  store double %div161, ptr %arrayidx164, align 8, !tbaa !8
  %195 = load double, ptr %s, align 8, !tbaa !8
  %196 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %197 = load i32, ptr %indlpl, align 4, !tbaa !10
  %198 = load i32, ptr %i__, align 4, !tbaa !10
  %add165 = add nsw i32 %197, %198
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds double, ptr %196, i64 %idxprom166
  %199 = load double, ptr %arrayidx167, align 8, !tbaa !8
  %mul168 = fmul double %195, %199
  %200 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %201 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom169 = sext i32 %201 to i64
  %arrayidx170 = getelementptr inbounds double, ptr %200, i64 %idxprom169
  %202 = load double, ptr %arrayidx170, align 8, !tbaa !8
  %mul171 = fmul double %mul168, %202
  %203 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %204 = load i32, ptr %inds, align 4, !tbaa !10
  %205 = load i32, ptr %i__, align 4, !tbaa !10
  %add172 = add nsw i32 %204, %205
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds double, ptr %203, i64 %idxprom173
  store double %mul171, ptr %arrayidx174, align 8, !tbaa !8
  %206 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %207 = load i32, ptr %indlpl, align 4, !tbaa !10
  %208 = load i32, ptr %i__, align 4, !tbaa !10
  %add175 = add nsw i32 %207, %208
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds double, ptr %206, i64 %idxprom176
  %209 = load double, ptr %arrayidx177, align 8, !tbaa !8
  %cmp178 = fcmp oeq double %209, 0.000000e+00
  br i1 %cmp178, label %if.then179, label %if.end185

if.then179:                                       ; preds = %if.end158
  %210 = load ptr, ptr %lld.addr, align 8, !tbaa !4
  %211 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom180 = sext i32 %211 to i64
  %arrayidx181 = getelementptr inbounds double, ptr %210, i64 %idxprom180
  %212 = load double, ptr %arrayidx181, align 8, !tbaa !8
  %213 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %214 = load i32, ptr %inds, align 4, !tbaa !10
  %215 = load i32, ptr %i__, align 4, !tbaa !10
  %add182 = add nsw i32 %214, %215
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds double, ptr %213, i64 %idxprom183
  store double %212, ptr %arrayidx184, align 8, !tbaa !8
  br label %if.end185

if.end185:                                        ; preds = %if.then179, %if.end158
  %216 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %217 = load i32, ptr %inds, align 4, !tbaa !10
  %218 = load i32, ptr %i__, align 4, !tbaa !10
  %add186 = add nsw i32 %217, %218
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds double, ptr %216, i64 %idxprom187
  %219 = load double, ptr %arrayidx188, align 8, !tbaa !8
  %220 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %221 = load double, ptr %220, align 8, !tbaa !8
  %sub189 = fsub double %219, %221
  store double %sub189, ptr %s, align 8, !tbaa !8
  br label %for.inc190

for.inc190:                                       ; preds = %if.end185
  %222 = load i32, ptr %i__, align 4, !tbaa !10
  %inc191 = add nsw i32 %222, 1
  store i32 %inc191, ptr %i__, align 4, !tbaa !10
  br label %for.cond143, !llvm.loop !16

for.end192:                                       ; preds = %for.cond143
  br label %if.end193

if.end193:                                        ; preds = %for.end192, %L60
  store i32 0, ptr %sawnan2, align 4, !tbaa !10
  store i32 0, ptr %neg2, align 4, !tbaa !10
  %223 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %224 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %225 = load i32, ptr %224, align 4, !tbaa !10
  %idxprom194 = sext i32 %225 to i64
  %arrayidx195 = getelementptr inbounds double, ptr %223, i64 %idxprom194
  %226 = load double, ptr %arrayidx195, align 8, !tbaa !8
  %227 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %228 = load double, ptr %227, align 8, !tbaa !8
  %sub196 = fsub double %226, %228
  %229 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %230 = load i32, ptr %indp, align 4, !tbaa !10
  %231 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %232 = load i32, ptr %231, align 4, !tbaa !10
  %add197 = add nsw i32 %230, %232
  %sub198 = sub nsw i32 %add197, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds double, ptr %229, i64 %idxprom199
  store double %sub196, ptr %arrayidx200, align 8, !tbaa !8
  %233 = load i32, ptr %r1, align 4, !tbaa !10
  store i32 %233, ptr %i__1, align 4, !tbaa !10
  %234 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %235 = load i32, ptr %234, align 4, !tbaa !10
  %sub201 = sub nsw i32 %235, 1
  store i32 %sub201, ptr %i__, align 4, !tbaa !10
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc232, %if.end193
  %236 = load i32, ptr %i__, align 4, !tbaa !10
  %237 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp203 = icmp sge i32 %236, %237
  br i1 %cmp203, label %for.body204, label %for.end233

for.body204:                                      ; preds = %for.cond202
  %238 = load ptr, ptr %lld.addr, align 8, !tbaa !4
  %239 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom205 = sext i32 %239 to i64
  %arrayidx206 = getelementptr inbounds double, ptr %238, i64 %idxprom205
  %240 = load double, ptr %arrayidx206, align 8, !tbaa !8
  %241 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %242 = load i32, ptr %indp, align 4, !tbaa !10
  %243 = load i32, ptr %i__, align 4, !tbaa !10
  %add207 = add nsw i32 %242, %243
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds double, ptr %241, i64 %idxprom208
  %244 = load double, ptr %arrayidx209, align 8, !tbaa !8
  %add210 = fadd double %240, %244
  store double %add210, ptr %dminus, align 8, !tbaa !8
  %245 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %246 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom211 = sext i32 %246 to i64
  %arrayidx212 = getelementptr inbounds double, ptr %245, i64 %idxprom211
  %247 = load double, ptr %arrayidx212, align 8, !tbaa !8
  %248 = load double, ptr %dminus, align 8, !tbaa !8
  %div213 = fdiv double %247, %248
  store double %div213, ptr %tmp, align 8, !tbaa !8
  %249 = load double, ptr %dminus, align 8, !tbaa !8
  %cmp214 = fcmp olt double %249, 0.000000e+00
  br i1 %cmp214, label %if.then215, label %if.end217

if.then215:                                       ; preds = %for.body204
  %250 = load i32, ptr %neg2, align 4, !tbaa !10
  %inc216 = add nsw i32 %250, 1
  store i32 %inc216, ptr %neg2, align 4, !tbaa !10
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %for.body204
  %251 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %252 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom218 = sext i32 %252 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %251, i64 %idxprom218
  %253 = load double, ptr %arrayidx219, align 8, !tbaa !8
  %254 = load double, ptr %tmp, align 8, !tbaa !8
  %mul220 = fmul double %253, %254
  %255 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %256 = load i32, ptr %indumn, align 4, !tbaa !10
  %257 = load i32, ptr %i__, align 4, !tbaa !10
  %add221 = add nsw i32 %256, %257
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, ptr %255, i64 %idxprom222
  store double %mul220, ptr %arrayidx223, align 8, !tbaa !8
  %258 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %259 = load i32, ptr %indp, align 4, !tbaa !10
  %260 = load i32, ptr %i__, align 4, !tbaa !10
  %add224 = add nsw i32 %259, %260
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %258, i64 %idxprom225
  %261 = load double, ptr %arrayidx226, align 8, !tbaa !8
  %262 = load double, ptr %tmp, align 8, !tbaa !8
  %263 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %264 = load double, ptr %263, align 8, !tbaa !8
  %neg = fneg double %264
  %265 = call double @llvm.fmuladd.f64(double %261, double %262, double %neg)
  %266 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %267 = load i32, ptr %indp, align 4, !tbaa !10
  %268 = load i32, ptr %i__, align 4, !tbaa !10
  %add228 = add nsw i32 %267, %268
  %sub229 = sub nsw i32 %add228, 1
  %idxprom230 = sext i32 %sub229 to i64
  %arrayidx231 = getelementptr inbounds double, ptr %266, i64 %idxprom230
  store double %265, ptr %arrayidx231, align 8, !tbaa !8
  br label %for.inc232

for.inc232:                                       ; preds = %if.end217
  %269 = load i32, ptr %i__, align 4, !tbaa !10
  %dec = add nsw i32 %269, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !10
  br label %for.cond202, !llvm.loop !17

for.end233:                                       ; preds = %for.cond202
  %270 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %271 = load i32, ptr %indp, align 4, !tbaa !10
  %272 = load i32, ptr %r1, align 4, !tbaa !10
  %add234 = add nsw i32 %271, %272
  %sub235 = sub nsw i32 %add234, 1
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds double, ptr %270, i64 %idxprom236
  %273 = load double, ptr %arrayidx237, align 8, !tbaa !8
  store double %273, ptr %tmp, align 8, !tbaa !8
  %call238 = call i32 @disnan_(ptr noundef %tmp)
  store i32 %call238, ptr %sawnan2, align 4, !tbaa !10
  %274 = load i32, ptr %sawnan2, align 4, !tbaa !10
  %tobool239 = icmp ne i32 %274, 0
  br i1 %tobool239, label %if.then240, label %if.end296

if.then240:                                       ; preds = %for.end233
  store i32 0, ptr %neg2, align 4, !tbaa !10
  %275 = load i32, ptr %r1, align 4, !tbaa !10
  store i32 %275, ptr %i__1, align 4, !tbaa !10
  %276 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %277 = load i32, ptr %276, align 4, !tbaa !10
  %sub241 = sub nsw i32 %277, 1
  store i32 %sub241, ptr %i__, align 4, !tbaa !10
  br label %for.cond242

for.cond242:                                      ; preds = %for.inc293, %if.then240
  %278 = load i32, ptr %i__, align 4, !tbaa !10
  %279 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp243 = icmp sge i32 %278, %279
  br i1 %cmp243, label %for.body244, label %for.end295

for.body244:                                      ; preds = %for.cond242
  %280 = load ptr, ptr %lld.addr, align 8, !tbaa !4
  %281 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom245 = sext i32 %281 to i64
  %arrayidx246 = getelementptr inbounds double, ptr %280, i64 %idxprom245
  %282 = load double, ptr %arrayidx246, align 8, !tbaa !8
  %283 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %284 = load i32, ptr %indp, align 4, !tbaa !10
  %285 = load i32, ptr %i__, align 4, !tbaa !10
  %add247 = add nsw i32 %284, %285
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds double, ptr %283, i64 %idxprom248
  %286 = load double, ptr %arrayidx249, align 8, !tbaa !8
  %add250 = fadd double %282, %286
  store double %add250, ptr %dminus, align 8, !tbaa !8
  %287 = load double, ptr %dminus, align 8, !tbaa !8
  %cmp251 = fcmp oge double %287, 0.000000e+00
  br i1 %cmp251, label %cond.true252, label %cond.false253

cond.true252:                                     ; preds = %for.body244
  %288 = load double, ptr %dminus, align 8, !tbaa !8
  br label %cond.end255

cond.false253:                                    ; preds = %for.body244
  %289 = load double, ptr %dminus, align 8, !tbaa !8
  %fneg254 = fneg double %289
  br label %cond.end255

cond.end255:                                      ; preds = %cond.false253, %cond.true252
  %cond256 = phi double [ %288, %cond.true252 ], [ %fneg254, %cond.false253 ]
  %290 = load ptr, ptr %pivmin.addr, align 8, !tbaa !4
  %291 = load double, ptr %290, align 8, !tbaa !8
  %cmp257 = fcmp olt double %cond256, %291
  br i1 %cmp257, label %if.then258, label %if.end260

if.then258:                                       ; preds = %cond.end255
  %292 = load ptr, ptr %pivmin.addr, align 8, !tbaa !4
  %293 = load double, ptr %292, align 8, !tbaa !8
  %fneg259 = fneg double %293
  store double %fneg259, ptr %dminus, align 8, !tbaa !8
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %cond.end255
  %294 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %295 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom261 = sext i32 %295 to i64
  %arrayidx262 = getelementptr inbounds double, ptr %294, i64 %idxprom261
  %296 = load double, ptr %arrayidx262, align 8, !tbaa !8
  %297 = load double, ptr %dminus, align 8, !tbaa !8
  %div263 = fdiv double %296, %297
  store double %div263, ptr %tmp, align 8, !tbaa !8
  %298 = load double, ptr %dminus, align 8, !tbaa !8
  %cmp264 = fcmp olt double %298, 0.000000e+00
  br i1 %cmp264, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.end260
  %299 = load i32, ptr %neg2, align 4, !tbaa !10
  %inc266 = add nsw i32 %299, 1
  store i32 %inc266, ptr %neg2, align 4, !tbaa !10
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.end260
  %300 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %301 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom268 = sext i32 %301 to i64
  %arrayidx269 = getelementptr inbounds double, ptr %300, i64 %idxprom268
  %302 = load double, ptr %arrayidx269, align 8, !tbaa !8
  %303 = load double, ptr %tmp, align 8, !tbaa !8
  %mul270 = fmul double %302, %303
  %304 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %305 = load i32, ptr %indumn, align 4, !tbaa !10
  %306 = load i32, ptr %i__, align 4, !tbaa !10
  %add271 = add nsw i32 %305, %306
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds double, ptr %304, i64 %idxprom272
  store double %mul270, ptr %arrayidx273, align 8, !tbaa !8
  %307 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %308 = load i32, ptr %indp, align 4, !tbaa !10
  %309 = load i32, ptr %i__, align 4, !tbaa !10
  %add274 = add nsw i32 %308, %309
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds double, ptr %307, i64 %idxprom275
  %310 = load double, ptr %arrayidx276, align 8, !tbaa !8
  %311 = load double, ptr %tmp, align 8, !tbaa !8
  %312 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %313 = load double, ptr %312, align 8, !tbaa !8
  %neg278 = fneg double %313
  %314 = call double @llvm.fmuladd.f64(double %310, double %311, double %neg278)
  %315 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %316 = load i32, ptr %indp, align 4, !tbaa !10
  %317 = load i32, ptr %i__, align 4, !tbaa !10
  %add279 = add nsw i32 %316, %317
  %sub280 = sub nsw i32 %add279, 1
  %idxprom281 = sext i32 %sub280 to i64
  %arrayidx282 = getelementptr inbounds double, ptr %315, i64 %idxprom281
  store double %314, ptr %arrayidx282, align 8, !tbaa !8
  %318 = load double, ptr %tmp, align 8, !tbaa !8
  %cmp283 = fcmp oeq double %318, 0.000000e+00
  br i1 %cmp283, label %if.then284, label %if.end292

if.then284:                                       ; preds = %if.end267
  %319 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %320 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom285 = sext i32 %320 to i64
  %arrayidx286 = getelementptr inbounds double, ptr %319, i64 %idxprom285
  %321 = load double, ptr %arrayidx286, align 8, !tbaa !8
  %322 = load ptr, ptr %lambda.addr, align 8, !tbaa !4
  %323 = load double, ptr %322, align 8, !tbaa !8
  %sub287 = fsub double %321, %323
  %324 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %325 = load i32, ptr %indp, align 4, !tbaa !10
  %326 = load i32, ptr %i__, align 4, !tbaa !10
  %add288 = add nsw i32 %325, %326
  %sub289 = sub nsw i32 %add288, 1
  %idxprom290 = sext i32 %sub289 to i64
  %arrayidx291 = getelementptr inbounds double, ptr %324, i64 %idxprom290
  store double %sub287, ptr %arrayidx291, align 8, !tbaa !8
  br label %if.end292

if.end292:                                        ; preds = %if.then284, %if.end267
  br label %for.inc293

for.inc293:                                       ; preds = %if.end292
  %327 = load i32, ptr %i__, align 4, !tbaa !10
  %dec294 = add nsw i32 %327, -1
  store i32 %dec294, ptr %i__, align 4, !tbaa !10
  br label %for.cond242, !llvm.loop !18

for.end295:                                       ; preds = %for.cond242
  br label %if.end296

if.end296:                                        ; preds = %for.end295, %for.end233
  %328 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %329 = load i32, ptr %inds, align 4, !tbaa !10
  %330 = load i32, ptr %r1, align 4, !tbaa !10
  %add297 = add nsw i32 %329, %330
  %sub298 = sub nsw i32 %add297, 1
  %idxprom299 = sext i32 %sub298 to i64
  %arrayidx300 = getelementptr inbounds double, ptr %328, i64 %idxprom299
  %331 = load double, ptr %arrayidx300, align 8, !tbaa !8
  %332 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %333 = load i32, ptr %indp, align 4, !tbaa !10
  %334 = load i32, ptr %r1, align 4, !tbaa !10
  %add301 = add nsw i32 %333, %334
  %sub302 = sub nsw i32 %add301, 1
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds double, ptr %332, i64 %idxprom303
  %335 = load double, ptr %arrayidx304, align 8, !tbaa !8
  %add305 = fadd double %331, %335
  %336 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  store double %add305, ptr %336, align 8, !tbaa !8
  %337 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %338 = load double, ptr %337, align 8, !tbaa !8
  %cmp306 = fcmp olt double %338, 0.000000e+00
  br i1 %cmp306, label %if.then307, label %if.end309

if.then307:                                       ; preds = %if.end296
  %339 = load i32, ptr %neg1, align 4, !tbaa !10
  %inc308 = add nsw i32 %339, 1
  store i32 %inc308, ptr %neg1, align 4, !tbaa !10
  br label %if.end309

if.end309:                                        ; preds = %if.then307, %if.end296
  %340 = load ptr, ptr %wantnc.addr, align 8, !tbaa !4
  %341 = load i32, ptr %340, align 4, !tbaa !10
  %tobool310 = icmp ne i32 %341, 0
  br i1 %tobool310, label %if.then311, label %if.else313

if.then311:                                       ; preds = %if.end309
  %342 = load i32, ptr %neg1, align 4, !tbaa !10
  %343 = load i32, ptr %neg2, align 4, !tbaa !10
  %add312 = add nsw i32 %342, %343
  %344 = load ptr, ptr %negcnt.addr, align 8, !tbaa !4
  store i32 %add312, ptr %344, align 4, !tbaa !10
  br label %if.end314

if.else313:                                       ; preds = %if.end309
  %345 = load ptr, ptr %negcnt.addr, align 8, !tbaa !4
  store i32 -1, ptr %345, align 4, !tbaa !10
  br label %if.end314

if.end314:                                        ; preds = %if.else313, %if.then311
  %346 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %347 = load double, ptr %346, align 8, !tbaa !8
  %cmp315 = fcmp oge double %347, 0.000000e+00
  br i1 %cmp315, label %cond.true316, label %cond.false317

cond.true316:                                     ; preds = %if.end314
  %348 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %349 = load double, ptr %348, align 8, !tbaa !8
  br label %cond.end319

cond.false317:                                    ; preds = %if.end314
  %350 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %351 = load double, ptr %350, align 8, !tbaa !8
  %fneg318 = fneg double %351
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false317, %cond.true316
  %cond320 = phi double [ %349, %cond.true316 ], [ %fneg318, %cond.false317 ]
  %cmp321 = fcmp oeq double %cond320, 0.000000e+00
  br i1 %cmp321, label %if.then322, label %if.end328

if.then322:                                       ; preds = %cond.end319
  %352 = load double, ptr %eps, align 8, !tbaa !8
  %353 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %354 = load i32, ptr %inds, align 4, !tbaa !10
  %355 = load i32, ptr %r1, align 4, !tbaa !10
  %add323 = add nsw i32 %354, %355
  %sub324 = sub nsw i32 %add323, 1
  %idxprom325 = sext i32 %sub324 to i64
  %arrayidx326 = getelementptr inbounds double, ptr %353, i64 %idxprom325
  %356 = load double, ptr %arrayidx326, align 8, !tbaa !8
  %mul327 = fmul double %352, %356
  %357 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  store double %mul327, ptr %357, align 8, !tbaa !8
  br label %if.end328

if.end328:                                        ; preds = %if.then322, %cond.end319
  %358 = load i32, ptr %r1, align 4, !tbaa !10
  %359 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  store i32 %358, ptr %359, align 4, !tbaa !10
  %360 = load i32, ptr %r2, align 4, !tbaa !10
  %sub329 = sub nsw i32 %360, 1
  store i32 %sub329, ptr %i__1, align 4, !tbaa !10
  %361 = load i32, ptr %r1, align 4, !tbaa !10
  store i32 %361, ptr %i__, align 4, !tbaa !10
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc363, %if.end328
  %362 = load i32, ptr %i__, align 4, !tbaa !10
  %363 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp331 = icmp sle i32 %362, %363
  br i1 %cmp331, label %for.body332, label %for.end365

for.body332:                                      ; preds = %for.cond330
  %364 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %365 = load i32, ptr %inds, align 4, !tbaa !10
  %366 = load i32, ptr %i__, align 4, !tbaa !10
  %add333 = add nsw i32 %365, %366
  %idxprom334 = sext i32 %add333 to i64
  %arrayidx335 = getelementptr inbounds double, ptr %364, i64 %idxprom334
  %367 = load double, ptr %arrayidx335, align 8, !tbaa !8
  %368 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %369 = load i32, ptr %indp, align 4, !tbaa !10
  %370 = load i32, ptr %i__, align 4, !tbaa !10
  %add336 = add nsw i32 %369, %370
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds double, ptr %368, i64 %idxprom337
  %371 = load double, ptr %arrayidx338, align 8, !tbaa !8
  %add339 = fadd double %367, %371
  store double %add339, ptr %tmp, align 8, !tbaa !8
  %372 = load double, ptr %tmp, align 8, !tbaa !8
  %cmp340 = fcmp oeq double %372, 0.000000e+00
  br i1 %cmp340, label %if.then341, label %if.end346

if.then341:                                       ; preds = %for.body332
  %373 = load double, ptr %eps, align 8, !tbaa !8
  %374 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %375 = load i32, ptr %inds, align 4, !tbaa !10
  %376 = load i32, ptr %i__, align 4, !tbaa !10
  %add342 = add nsw i32 %375, %376
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds double, ptr %374, i64 %idxprom343
  %377 = load double, ptr %arrayidx344, align 8, !tbaa !8
  %mul345 = fmul double %373, %377
  store double %mul345, ptr %tmp, align 8, !tbaa !8
  br label %if.end346

if.end346:                                        ; preds = %if.then341, %for.body332
  %378 = load double, ptr %tmp, align 8, !tbaa !8
  %cmp347 = fcmp oge double %378, 0.000000e+00
  br i1 %cmp347, label %cond.true348, label %cond.false349

cond.true348:                                     ; preds = %if.end346
  %379 = load double, ptr %tmp, align 8, !tbaa !8
  br label %cond.end351

cond.false349:                                    ; preds = %if.end346
  %380 = load double, ptr %tmp, align 8, !tbaa !8
  %fneg350 = fneg double %380
  br label %cond.end351

cond.end351:                                      ; preds = %cond.false349, %cond.true348
  %cond352 = phi double [ %379, %cond.true348 ], [ %fneg350, %cond.false349 ]
  %381 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %382 = load double, ptr %381, align 8, !tbaa !8
  %cmp353 = fcmp oge double %382, 0.000000e+00
  br i1 %cmp353, label %cond.true354, label %cond.false355

cond.true354:                                     ; preds = %cond.end351
  %383 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %384 = load double, ptr %383, align 8, !tbaa !8
  br label %cond.end357

cond.false355:                                    ; preds = %cond.end351
  %385 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %386 = load double, ptr %385, align 8, !tbaa !8
  %fneg356 = fneg double %386
  br label %cond.end357

cond.end357:                                      ; preds = %cond.false355, %cond.true354
  %cond358 = phi double [ %384, %cond.true354 ], [ %fneg356, %cond.false355 ]
  %cmp359 = fcmp ole double %cond352, %cond358
  br i1 %cmp359, label %if.then360, label %if.end362

if.then360:                                       ; preds = %cond.end357
  %387 = load double, ptr %tmp, align 8, !tbaa !8
  %388 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  store double %387, ptr %388, align 8, !tbaa !8
  %389 = load i32, ptr %i__, align 4, !tbaa !10
  %add361 = add nsw i32 %389, 1
  %390 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  store i32 %add361, ptr %390, align 4, !tbaa !10
  br label %if.end362

if.end362:                                        ; preds = %if.then360, %cond.end357
  br label %for.inc363

for.inc363:                                       ; preds = %if.end362
  %391 = load i32, ptr %i__, align 4, !tbaa !10
  %inc364 = add nsw i32 %391, 1
  store i32 %inc364, ptr %i__, align 4, !tbaa !10
  br label %for.cond330, !llvm.loop !19

for.end365:                                       ; preds = %for.cond330
  %392 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %393 = load i32, ptr %392, align 4, !tbaa !10
  %394 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %arrayidx366 = getelementptr inbounds i32, ptr %394, i64 1
  store i32 %393, ptr %arrayidx366, align 4, !tbaa !10
  %395 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %396 = load i32, ptr %395, align 4, !tbaa !10
  %397 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %arrayidx367 = getelementptr inbounds i32, ptr %397, i64 2
  store i32 %396, ptr %arrayidx367, align 4, !tbaa !10
  %398 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %399 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %400 = load i32, ptr %399, align 4, !tbaa !10
  %idxprom368 = sext i32 %400 to i64
  %arrayidx369 = getelementptr inbounds double, ptr %398, i64 %idxprom368
  store double 1.000000e+00, ptr %arrayidx369, align 8, !tbaa !8
  %401 = load ptr, ptr %ztz.addr, align 8, !tbaa !4
  store double 1.000000e+00, ptr %401, align 8, !tbaa !8
  %402 = load i32, ptr %sawnan1, align 4, !tbaa !10
  %tobool370 = icmp ne i32 %402, 0
  br i1 %tobool370, label %if.else429, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end365
  %403 = load i32, ptr %sawnan2, align 4, !tbaa !10
  %tobool371 = icmp ne i32 %403, 0
  br i1 %tobool371, label %if.else429, label %if.then372

if.then372:                                       ; preds = %land.lhs.true
  %404 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %405 = load i32, ptr %404, align 4, !tbaa !10
  store i32 %405, ptr %i__1, align 4, !tbaa !10
  %406 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %407 = load i32, ptr %406, align 4, !tbaa !10
  %sub373 = sub nsw i32 %407, 1
  store i32 %sub373, ptr %i__, align 4, !tbaa !10
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc426, %if.then372
  %408 = load i32, ptr %i__, align 4, !tbaa !10
  %409 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp375 = icmp sge i32 %408, %409
  br i1 %cmp375, label %for.body376, label %for.end428

for.body376:                                      ; preds = %for.cond374
  %410 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %411 = load i32, ptr %indlpl, align 4, !tbaa !10
  %412 = load i32, ptr %i__, align 4, !tbaa !10
  %add377 = add nsw i32 %411, %412
  %idxprom378 = sext i32 %add377 to i64
  %arrayidx379 = getelementptr inbounds double, ptr %410, i64 %idxprom378
  %413 = load double, ptr %arrayidx379, align 8, !tbaa !8
  %414 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %415 = load i32, ptr %i__, align 4, !tbaa !10
  %add380 = add nsw i32 %415, 1
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds double, ptr %414, i64 %idxprom381
  %416 = load double, ptr %arrayidx382, align 8, !tbaa !8
  %mul383 = fmul double %413, %416
  %fneg384 = fneg double %mul383
  %417 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %418 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom385 = sext i32 %418 to i64
  %arrayidx386 = getelementptr inbounds double, ptr %417, i64 %idxprom385
  store double %fneg384, ptr %arrayidx386, align 8, !tbaa !8
  %419 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %420 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom387 = sext i32 %420 to i64
  %arrayidx388 = getelementptr inbounds double, ptr %419, i64 %idxprom387
  %421 = load double, ptr %arrayidx388, align 8, !tbaa !8
  store double %421, ptr %d__1, align 8, !tbaa !8
  %422 = load double, ptr %d__1, align 8, !tbaa !8
  %cmp389 = fcmp oge double %422, 0.000000e+00
  br i1 %cmp389, label %cond.true390, label %cond.false391

cond.true390:                                     ; preds = %for.body376
  %423 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end393

cond.false391:                                    ; preds = %for.body376
  %424 = load double, ptr %d__1, align 8, !tbaa !8
  %fneg392 = fneg double %424
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false391, %cond.true390
  %cond394 = phi double [ %423, %cond.true390 ], [ %fneg392, %cond.false391 ]
  %425 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %426 = load i32, ptr %i__, align 4, !tbaa !10
  %add395 = add nsw i32 %426, 1
  %idxprom396 = sext i32 %add395 to i64
  %arrayidx397 = getelementptr inbounds double, ptr %425, i64 %idxprom396
  %427 = load double, ptr %arrayidx397, align 8, !tbaa !8
  store double %427, ptr %d__2, align 8, !tbaa !8
  %428 = load double, ptr %d__2, align 8, !tbaa !8
  %cmp398 = fcmp oge double %428, 0.000000e+00
  br i1 %cmp398, label %cond.true399, label %cond.false400

cond.true399:                                     ; preds = %cond.end393
  %429 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end402

cond.false400:                                    ; preds = %cond.end393
  %430 = load double, ptr %d__2, align 8, !tbaa !8
  %fneg401 = fneg double %430
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false400, %cond.true399
  %cond403 = phi double [ %429, %cond.true399 ], [ %fneg401, %cond.false400 ]
  %add404 = fadd double %cond394, %cond403
  %431 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %432 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom405 = sext i32 %432 to i64
  %arrayidx406 = getelementptr inbounds double, ptr %431, i64 %idxprom405
  %433 = load double, ptr %arrayidx406, align 8, !tbaa !8
  store double %433, ptr %d__3, align 8, !tbaa !8
  %434 = load double, ptr %d__3, align 8, !tbaa !8
  %cmp407 = fcmp oge double %434, 0.000000e+00
  br i1 %cmp407, label %cond.true408, label %cond.false409

cond.true408:                                     ; preds = %cond.end402
  %435 = load double, ptr %d__3, align 8, !tbaa !8
  br label %cond.end411

cond.false409:                                    ; preds = %cond.end402
  %436 = load double, ptr %d__3, align 8, !tbaa !8
  %fneg410 = fneg double %436
  br label %cond.end411

cond.end411:                                      ; preds = %cond.false409, %cond.true408
  %cond412 = phi double [ %435, %cond.true408 ], [ %fneg410, %cond.false409 ]
  %mul413 = fmul double %add404, %cond412
  %437 = load ptr, ptr %gaptol.addr, align 8, !tbaa !4
  %438 = load double, ptr %437, align 8, !tbaa !8
  %cmp414 = fcmp olt double %mul413, %438
  br i1 %cmp414, label %if.then415, label %if.end420

if.then415:                                       ; preds = %cond.end411
  %439 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %440 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom416 = sext i32 %440 to i64
  %arrayidx417 = getelementptr inbounds double, ptr %439, i64 %idxprom416
  store double 0.000000e+00, ptr %arrayidx417, align 8, !tbaa !8
  %441 = load i32, ptr %i__, align 4, !tbaa !10
  %add418 = add nsw i32 %441, 1
  %442 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %arrayidx419 = getelementptr inbounds i32, ptr %442, i64 1
  store i32 %add418, ptr %arrayidx419, align 4, !tbaa !10
  br label %L220

if.end420:                                        ; preds = %cond.end411
  %443 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %444 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom421 = sext i32 %444 to i64
  %arrayidx422 = getelementptr inbounds double, ptr %443, i64 %idxprom421
  %445 = load double, ptr %arrayidx422, align 8, !tbaa !8
  %446 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %447 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom423 = sext i32 %447 to i64
  %arrayidx424 = getelementptr inbounds double, ptr %446, i64 %idxprom423
  %448 = load double, ptr %arrayidx424, align 8, !tbaa !8
  %449 = load ptr, ptr %ztz.addr, align 8, !tbaa !4
  %450 = load double, ptr %449, align 8, !tbaa !8
  %451 = call double @llvm.fmuladd.f64(double %445, double %448, double %450)
  store double %451, ptr %449, align 8, !tbaa !8
  br label %for.inc426

for.inc426:                                       ; preds = %if.end420
  %452 = load i32, ptr %i__, align 4, !tbaa !10
  %dec427 = add nsw i32 %452, -1
  store i32 %dec427, ptr %i__, align 4, !tbaa !10
  br label %for.cond374, !llvm.loop !20

for.end428:                                       ; preds = %for.cond374
  br label %L220

L220:                                             ; preds = %for.end428, %if.then415
  br label %if.end506

if.else429:                                       ; preds = %land.lhs.true, %for.end365
  %453 = load ptr, ptr %b1.addr, align 8, !tbaa !4
  %454 = load i32, ptr %453, align 4, !tbaa !10
  store i32 %454, ptr %i__1, align 4, !tbaa !10
  %455 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %456 = load i32, ptr %455, align 4, !tbaa !10
  %sub430 = sub nsw i32 %456, 1
  store i32 %sub430, ptr %i__, align 4, !tbaa !10
  br label %for.cond431

for.cond431:                                      ; preds = %for.inc503, %if.else429
  %457 = load i32, ptr %i__, align 4, !tbaa !10
  %458 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp432 = icmp sge i32 %457, %458
  br i1 %cmp432, label %for.body433, label %for.end505

for.body433:                                      ; preds = %for.cond431
  %459 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %460 = load i32, ptr %i__, align 4, !tbaa !10
  %add434 = add nsw i32 %460, 1
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds double, ptr %459, i64 %idxprom435
  %461 = load double, ptr %arrayidx436, align 8, !tbaa !8
  %cmp437 = fcmp oeq double %461, 0.000000e+00
  br i1 %cmp437, label %if.then438, label %if.else452

if.then438:                                       ; preds = %for.body433
  %462 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %463 = load i32, ptr %i__, align 4, !tbaa !10
  %add439 = add nsw i32 %463, 1
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds double, ptr %462, i64 %idxprom440
  %464 = load double, ptr %arrayidx441, align 8, !tbaa !8
  %465 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %466 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom442 = sext i32 %466 to i64
  %arrayidx443 = getelementptr inbounds double, ptr %465, i64 %idxprom442
  %467 = load double, ptr %arrayidx443, align 8, !tbaa !8
  %div444 = fdiv double %464, %467
  %fneg445 = fneg double %div444
  %468 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %469 = load i32, ptr %i__, align 4, !tbaa !10
  %add446 = add nsw i32 %469, 2
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds double, ptr %468, i64 %idxprom447
  %470 = load double, ptr %arrayidx448, align 8, !tbaa !8
  %mul449 = fmul double %fneg445, %470
  %471 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %472 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom450 = sext i32 %472 to i64
  %arrayidx451 = getelementptr inbounds double, ptr %471, i64 %idxprom450
  store double %mul449, ptr %arrayidx451, align 8, !tbaa !8
  br label %if.end463

if.else452:                                       ; preds = %for.body433
  %473 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %474 = load i32, ptr %indlpl, align 4, !tbaa !10
  %475 = load i32, ptr %i__, align 4, !tbaa !10
  %add453 = add nsw i32 %474, %475
  %idxprom454 = sext i32 %add453 to i64
  %arrayidx455 = getelementptr inbounds double, ptr %473, i64 %idxprom454
  %476 = load double, ptr %arrayidx455, align 8, !tbaa !8
  %477 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %478 = load i32, ptr %i__, align 4, !tbaa !10
  %add456 = add nsw i32 %478, 1
  %idxprom457 = sext i32 %add456 to i64
  %arrayidx458 = getelementptr inbounds double, ptr %477, i64 %idxprom457
  %479 = load double, ptr %arrayidx458, align 8, !tbaa !8
  %mul459 = fmul double %476, %479
  %fneg460 = fneg double %mul459
  %480 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %481 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom461 = sext i32 %481 to i64
  %arrayidx462 = getelementptr inbounds double, ptr %480, i64 %idxprom461
  store double %fneg460, ptr %arrayidx462, align 8, !tbaa !8
  br label %if.end463

if.end463:                                        ; preds = %if.else452, %if.then438
  %482 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %483 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom464 = sext i32 %483 to i64
  %arrayidx465 = getelementptr inbounds double, ptr %482, i64 %idxprom464
  %484 = load double, ptr %arrayidx465, align 8, !tbaa !8
  store double %484, ptr %d__1, align 8, !tbaa !8
  %485 = load double, ptr %d__1, align 8, !tbaa !8
  %cmp466 = fcmp oge double %485, 0.000000e+00
  br i1 %cmp466, label %cond.true467, label %cond.false468

cond.true467:                                     ; preds = %if.end463
  %486 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end470

cond.false468:                                    ; preds = %if.end463
  %487 = load double, ptr %d__1, align 8, !tbaa !8
  %fneg469 = fneg double %487
  br label %cond.end470

cond.end470:                                      ; preds = %cond.false468, %cond.true467
  %cond471 = phi double [ %486, %cond.true467 ], [ %fneg469, %cond.false468 ]
  %488 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %489 = load i32, ptr %i__, align 4, !tbaa !10
  %add472 = add nsw i32 %489, 1
  %idxprom473 = sext i32 %add472 to i64
  %arrayidx474 = getelementptr inbounds double, ptr %488, i64 %idxprom473
  %490 = load double, ptr %arrayidx474, align 8, !tbaa !8
  store double %490, ptr %d__2, align 8, !tbaa !8
  %491 = load double, ptr %d__2, align 8, !tbaa !8
  %cmp475 = fcmp oge double %491, 0.000000e+00
  br i1 %cmp475, label %cond.true476, label %cond.false477

cond.true476:                                     ; preds = %cond.end470
  %492 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end479

cond.false477:                                    ; preds = %cond.end470
  %493 = load double, ptr %d__2, align 8, !tbaa !8
  %fneg478 = fneg double %493
  br label %cond.end479

cond.end479:                                      ; preds = %cond.false477, %cond.true476
  %cond480 = phi double [ %492, %cond.true476 ], [ %fneg478, %cond.false477 ]
  %add481 = fadd double %cond471, %cond480
  %494 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %495 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom482 = sext i32 %495 to i64
  %arrayidx483 = getelementptr inbounds double, ptr %494, i64 %idxprom482
  %496 = load double, ptr %arrayidx483, align 8, !tbaa !8
  store double %496, ptr %d__3, align 8, !tbaa !8
  %497 = load double, ptr %d__3, align 8, !tbaa !8
  %cmp484 = fcmp oge double %497, 0.000000e+00
  br i1 %cmp484, label %cond.true485, label %cond.false486

cond.true485:                                     ; preds = %cond.end479
  %498 = load double, ptr %d__3, align 8, !tbaa !8
  br label %cond.end488

cond.false486:                                    ; preds = %cond.end479
  %499 = load double, ptr %d__3, align 8, !tbaa !8
  %fneg487 = fneg double %499
  br label %cond.end488

cond.end488:                                      ; preds = %cond.false486, %cond.true485
  %cond489 = phi double [ %498, %cond.true485 ], [ %fneg487, %cond.false486 ]
  %mul490 = fmul double %add481, %cond489
  %500 = load ptr, ptr %gaptol.addr, align 8, !tbaa !4
  %501 = load double, ptr %500, align 8, !tbaa !8
  %cmp491 = fcmp olt double %mul490, %501
  br i1 %cmp491, label %if.then492, label %if.end497

if.then492:                                       ; preds = %cond.end488
  %502 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %503 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom493 = sext i32 %503 to i64
  %arrayidx494 = getelementptr inbounds double, ptr %502, i64 %idxprom493
  store double 0.000000e+00, ptr %arrayidx494, align 8, !tbaa !8
  %504 = load i32, ptr %i__, align 4, !tbaa !10
  %add495 = add nsw i32 %504, 1
  %505 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %arrayidx496 = getelementptr inbounds i32, ptr %505, i64 1
  store i32 %add495, ptr %arrayidx496, align 4, !tbaa !10
  br label %L240

if.end497:                                        ; preds = %cond.end488
  %506 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %507 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom498 = sext i32 %507 to i64
  %arrayidx499 = getelementptr inbounds double, ptr %506, i64 %idxprom498
  %508 = load double, ptr %arrayidx499, align 8, !tbaa !8
  %509 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %510 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom500 = sext i32 %510 to i64
  %arrayidx501 = getelementptr inbounds double, ptr %509, i64 %idxprom500
  %511 = load double, ptr %arrayidx501, align 8, !tbaa !8
  %512 = load ptr, ptr %ztz.addr, align 8, !tbaa !4
  %513 = load double, ptr %512, align 8, !tbaa !8
  %514 = call double @llvm.fmuladd.f64(double %508, double %511, double %513)
  store double %514, ptr %512, align 8, !tbaa !8
  br label %for.inc503

for.inc503:                                       ; preds = %if.end497
  %515 = load i32, ptr %i__, align 4, !tbaa !10
  %dec504 = add nsw i32 %515, -1
  store i32 %dec504, ptr %i__, align 4, !tbaa !10
  br label %for.cond431, !llvm.loop !21

for.end505:                                       ; preds = %for.cond431
  br label %L240

L240:                                             ; preds = %for.end505, %if.then492
  br label %if.end506

if.end506:                                        ; preds = %L240, %L220
  %516 = load i32, ptr %sawnan1, align 4, !tbaa !10
  %tobool507 = icmp ne i32 %516, 0
  br i1 %tobool507, label %if.else569, label %land.lhs.true508

land.lhs.true508:                                 ; preds = %if.end506
  %517 = load i32, ptr %sawnan2, align 4, !tbaa !10
  %tobool509 = icmp ne i32 %517, 0
  br i1 %tobool509, label %if.else569, label %if.then510

if.then510:                                       ; preds = %land.lhs.true508
  %518 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %519 = load i32, ptr %518, align 4, !tbaa !10
  %sub511 = sub nsw i32 %519, 1
  store i32 %sub511, ptr %i__1, align 4, !tbaa !10
  %520 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %521 = load i32, ptr %520, align 4, !tbaa !10
  store i32 %521, ptr %i__, align 4, !tbaa !10
  br label %for.cond512

for.cond512:                                      ; preds = %for.inc566, %if.then510
  %522 = load i32, ptr %i__, align 4, !tbaa !10
  %523 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp513 = icmp sle i32 %522, %523
  br i1 %cmp513, label %for.body514, label %for.end568

for.body514:                                      ; preds = %for.cond512
  %524 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %525 = load i32, ptr %indumn, align 4, !tbaa !10
  %526 = load i32, ptr %i__, align 4, !tbaa !10
  %add515 = add nsw i32 %525, %526
  %idxprom516 = sext i32 %add515 to i64
  %arrayidx517 = getelementptr inbounds double, ptr %524, i64 %idxprom516
  %527 = load double, ptr %arrayidx517, align 8, !tbaa !8
  %528 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %529 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom518 = sext i32 %529 to i64
  %arrayidx519 = getelementptr inbounds double, ptr %528, i64 %idxprom518
  %530 = load double, ptr %arrayidx519, align 8, !tbaa !8
  %mul520 = fmul double %527, %530
  %fneg521 = fneg double %mul520
  %531 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %532 = load i32, ptr %i__, align 4, !tbaa !10
  %add522 = add nsw i32 %532, 1
  %idxprom523 = sext i32 %add522 to i64
  %arrayidx524 = getelementptr inbounds double, ptr %531, i64 %idxprom523
  store double %fneg521, ptr %arrayidx524, align 8, !tbaa !8
  %533 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %534 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom525 = sext i32 %534 to i64
  %arrayidx526 = getelementptr inbounds double, ptr %533, i64 %idxprom525
  %535 = load double, ptr %arrayidx526, align 8, !tbaa !8
  store double %535, ptr %d__1, align 8, !tbaa !8
  %536 = load double, ptr %d__1, align 8, !tbaa !8
  %cmp527 = fcmp oge double %536, 0.000000e+00
  br i1 %cmp527, label %cond.true528, label %cond.false529

cond.true528:                                     ; preds = %for.body514
  %537 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end531

cond.false529:                                    ; preds = %for.body514
  %538 = load double, ptr %d__1, align 8, !tbaa !8
  %fneg530 = fneg double %538
  br label %cond.end531

cond.end531:                                      ; preds = %cond.false529, %cond.true528
  %cond532 = phi double [ %537, %cond.true528 ], [ %fneg530, %cond.false529 ]
  %539 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %540 = load i32, ptr %i__, align 4, !tbaa !10
  %add533 = add nsw i32 %540, 1
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx535 = getelementptr inbounds double, ptr %539, i64 %idxprom534
  %541 = load double, ptr %arrayidx535, align 8, !tbaa !8
  store double %541, ptr %d__2, align 8, !tbaa !8
  %542 = load double, ptr %d__2, align 8, !tbaa !8
  %cmp536 = fcmp oge double %542, 0.000000e+00
  br i1 %cmp536, label %cond.true537, label %cond.false538

cond.true537:                                     ; preds = %cond.end531
  %543 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end540

cond.false538:                                    ; preds = %cond.end531
  %544 = load double, ptr %d__2, align 8, !tbaa !8
  %fneg539 = fneg double %544
  br label %cond.end540

cond.end540:                                      ; preds = %cond.false538, %cond.true537
  %cond541 = phi double [ %543, %cond.true537 ], [ %fneg539, %cond.false538 ]
  %add542 = fadd double %cond532, %cond541
  %545 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %546 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom543 = sext i32 %546 to i64
  %arrayidx544 = getelementptr inbounds double, ptr %545, i64 %idxprom543
  %547 = load double, ptr %arrayidx544, align 8, !tbaa !8
  store double %547, ptr %d__3, align 8, !tbaa !8
  %548 = load double, ptr %d__3, align 8, !tbaa !8
  %cmp545 = fcmp oge double %548, 0.000000e+00
  br i1 %cmp545, label %cond.true546, label %cond.false547

cond.true546:                                     ; preds = %cond.end540
  %549 = load double, ptr %d__3, align 8, !tbaa !8
  br label %cond.end549

cond.false547:                                    ; preds = %cond.end540
  %550 = load double, ptr %d__3, align 8, !tbaa !8
  %fneg548 = fneg double %550
  br label %cond.end549

cond.end549:                                      ; preds = %cond.false547, %cond.true546
  %cond550 = phi double [ %549, %cond.true546 ], [ %fneg548, %cond.false547 ]
  %mul551 = fmul double %add542, %cond550
  %551 = load ptr, ptr %gaptol.addr, align 8, !tbaa !4
  %552 = load double, ptr %551, align 8, !tbaa !8
  %cmp552 = fcmp olt double %mul551, %552
  br i1 %cmp552, label %if.then553, label %if.end558

if.then553:                                       ; preds = %cond.end549
  %553 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %554 = load i32, ptr %i__, align 4, !tbaa !10
  %add554 = add nsw i32 %554, 1
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds double, ptr %553, i64 %idxprom555
  store double 0.000000e+00, ptr %arrayidx556, align 8, !tbaa !8
  %555 = load i32, ptr %i__, align 4, !tbaa !10
  %556 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %arrayidx557 = getelementptr inbounds i32, ptr %556, i64 2
  store i32 %555, ptr %arrayidx557, align 4, !tbaa !10
  br label %L260

if.end558:                                        ; preds = %cond.end549
  %557 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %558 = load i32, ptr %i__, align 4, !tbaa !10
  %add559 = add nsw i32 %558, 1
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds double, ptr %557, i64 %idxprom560
  %559 = load double, ptr %arrayidx561, align 8, !tbaa !8
  %560 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %561 = load i32, ptr %i__, align 4, !tbaa !10
  %add562 = add nsw i32 %561, 1
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds double, ptr %560, i64 %idxprom563
  %562 = load double, ptr %arrayidx564, align 8, !tbaa !8
  %563 = load ptr, ptr %ztz.addr, align 8, !tbaa !4
  %564 = load double, ptr %563, align 8, !tbaa !8
  %565 = call double @llvm.fmuladd.f64(double %559, double %562, double %564)
  store double %565, ptr %563, align 8, !tbaa !8
  br label %for.inc566

for.inc566:                                       ; preds = %if.end558
  %566 = load i32, ptr %i__, align 4, !tbaa !10
  %inc567 = add nsw i32 %566, 1
  store i32 %inc567, ptr %i__, align 4, !tbaa !10
  br label %for.cond512, !llvm.loop !22

for.end568:                                       ; preds = %for.cond512
  br label %L260

L260:                                             ; preds = %for.end568, %if.then553
  br label %if.end648

if.else569:                                       ; preds = %land.lhs.true508, %if.end506
  %567 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %568 = load i32, ptr %567, align 4, !tbaa !10
  %sub570 = sub nsw i32 %568, 1
  store i32 %sub570, ptr %i__1, align 4, !tbaa !10
  %569 = load ptr, ptr %r__.addr, align 8, !tbaa !4
  %570 = load i32, ptr %569, align 4, !tbaa !10
  store i32 %570, ptr %i__, align 4, !tbaa !10
  br label %for.cond571

for.cond571:                                      ; preds = %for.inc645, %if.else569
  %571 = load i32, ptr %i__, align 4, !tbaa !10
  %572 = load i32, ptr %i__1, align 4, !tbaa !10
  %cmp572 = icmp sle i32 %571, %572
  br i1 %cmp572, label %for.body573, label %for.end647

for.body573:                                      ; preds = %for.cond571
  %573 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %574 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom574 = sext i32 %574 to i64
  %arrayidx575 = getelementptr inbounds double, ptr %573, i64 %idxprom574
  %575 = load double, ptr %arrayidx575, align 8, !tbaa !8
  %cmp576 = fcmp oeq double %575, 0.000000e+00
  br i1 %cmp576, label %if.then577, label %if.else592

if.then577:                                       ; preds = %for.body573
  %576 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %577 = load i32, ptr %i__, align 4, !tbaa !10
  %sub578 = sub nsw i32 %577, 1
  %idxprom579 = sext i32 %sub578 to i64
  %arrayidx580 = getelementptr inbounds double, ptr %576, i64 %idxprom579
  %578 = load double, ptr %arrayidx580, align 8, !tbaa !8
  %579 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %580 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom581 = sext i32 %580 to i64
  %arrayidx582 = getelementptr inbounds double, ptr %579, i64 %idxprom581
  %581 = load double, ptr %arrayidx582, align 8, !tbaa !8
  %div583 = fdiv double %578, %581
  %fneg584 = fneg double %div583
  %582 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %583 = load i32, ptr %i__, align 4, !tbaa !10
  %sub585 = sub nsw i32 %583, 1
  %idxprom586 = sext i32 %sub585 to i64
  %arrayidx587 = getelementptr inbounds double, ptr %582, i64 %idxprom586
  %584 = load double, ptr %arrayidx587, align 8, !tbaa !8
  %mul588 = fmul double %fneg584, %584
  %585 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %586 = load i32, ptr %i__, align 4, !tbaa !10
  %add589 = add nsw i32 %586, 1
  %idxprom590 = sext i32 %add589 to i64
  %arrayidx591 = getelementptr inbounds double, ptr %585, i64 %idxprom590
  store double %mul588, ptr %arrayidx591, align 8, !tbaa !8
  br label %if.end603

if.else592:                                       ; preds = %for.body573
  %587 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %588 = load i32, ptr %indumn, align 4, !tbaa !10
  %589 = load i32, ptr %i__, align 4, !tbaa !10
  %add593 = add nsw i32 %588, %589
  %idxprom594 = sext i32 %add593 to i64
  %arrayidx595 = getelementptr inbounds double, ptr %587, i64 %idxprom594
  %590 = load double, ptr %arrayidx595, align 8, !tbaa !8
  %591 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %592 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom596 = sext i32 %592 to i64
  %arrayidx597 = getelementptr inbounds double, ptr %591, i64 %idxprom596
  %593 = load double, ptr %arrayidx597, align 8, !tbaa !8
  %mul598 = fmul double %590, %593
  %fneg599 = fneg double %mul598
  %594 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %595 = load i32, ptr %i__, align 4, !tbaa !10
  %add600 = add nsw i32 %595, 1
  %idxprom601 = sext i32 %add600 to i64
  %arrayidx602 = getelementptr inbounds double, ptr %594, i64 %idxprom601
  store double %fneg599, ptr %arrayidx602, align 8, !tbaa !8
  br label %if.end603

if.end603:                                        ; preds = %if.else592, %if.then577
  %596 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %597 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom604 = sext i32 %597 to i64
  %arrayidx605 = getelementptr inbounds double, ptr %596, i64 %idxprom604
  %598 = load double, ptr %arrayidx605, align 8, !tbaa !8
  store double %598, ptr %d__1, align 8, !tbaa !8
  %599 = load double, ptr %d__1, align 8, !tbaa !8
  %cmp606 = fcmp oge double %599, 0.000000e+00
  br i1 %cmp606, label %cond.true607, label %cond.false608

cond.true607:                                     ; preds = %if.end603
  %600 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end610

cond.false608:                                    ; preds = %if.end603
  %601 = load double, ptr %d__1, align 8, !tbaa !8
  %fneg609 = fneg double %601
  br label %cond.end610

cond.end610:                                      ; preds = %cond.false608, %cond.true607
  %cond611 = phi double [ %600, %cond.true607 ], [ %fneg609, %cond.false608 ]
  %602 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %603 = load i32, ptr %i__, align 4, !tbaa !10
  %add612 = add nsw i32 %603, 1
  %idxprom613 = sext i32 %add612 to i64
  %arrayidx614 = getelementptr inbounds double, ptr %602, i64 %idxprom613
  %604 = load double, ptr %arrayidx614, align 8, !tbaa !8
  store double %604, ptr %d__2, align 8, !tbaa !8
  %605 = load double, ptr %d__2, align 8, !tbaa !8
  %cmp615 = fcmp oge double %605, 0.000000e+00
  br i1 %cmp615, label %cond.true616, label %cond.false617

cond.true616:                                     ; preds = %cond.end610
  %606 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end619

cond.false617:                                    ; preds = %cond.end610
  %607 = load double, ptr %d__2, align 8, !tbaa !8
  %fneg618 = fneg double %607
  br label %cond.end619

cond.end619:                                      ; preds = %cond.false617, %cond.true616
  %cond620 = phi double [ %606, %cond.true616 ], [ %fneg618, %cond.false617 ]
  %add621 = fadd double %cond611, %cond620
  %608 = load ptr, ptr %ld.addr, align 8, !tbaa !4
  %609 = load i32, ptr %i__, align 4, !tbaa !10
  %idxprom622 = sext i32 %609 to i64
  %arrayidx623 = getelementptr inbounds double, ptr %608, i64 %idxprom622
  %610 = load double, ptr %arrayidx623, align 8, !tbaa !8
  store double %610, ptr %d__3, align 8, !tbaa !8
  %611 = load double, ptr %d__3, align 8, !tbaa !8
  %cmp624 = fcmp oge double %611, 0.000000e+00
  br i1 %cmp624, label %cond.true625, label %cond.false626

cond.true625:                                     ; preds = %cond.end619
  %612 = load double, ptr %d__3, align 8, !tbaa !8
  br label %cond.end628

cond.false626:                                    ; preds = %cond.end619
  %613 = load double, ptr %d__3, align 8, !tbaa !8
  %fneg627 = fneg double %613
  br label %cond.end628

cond.end628:                                      ; preds = %cond.false626, %cond.true625
  %cond629 = phi double [ %612, %cond.true625 ], [ %fneg627, %cond.false626 ]
  %mul630 = fmul double %add621, %cond629
  %614 = load ptr, ptr %gaptol.addr, align 8, !tbaa !4
  %615 = load double, ptr %614, align 8, !tbaa !8
  %cmp631 = fcmp olt double %mul630, %615
  br i1 %cmp631, label %if.then632, label %if.end637

if.then632:                                       ; preds = %cond.end628
  %616 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %617 = load i32, ptr %i__, align 4, !tbaa !10
  %add633 = add nsw i32 %617, 1
  %idxprom634 = sext i32 %add633 to i64
  %arrayidx635 = getelementptr inbounds double, ptr %616, i64 %idxprom634
  store double 0.000000e+00, ptr %arrayidx635, align 8, !tbaa !8
  %618 = load i32, ptr %i__, align 4, !tbaa !10
  %619 = load ptr, ptr %isuppz.addr, align 8, !tbaa !4
  %arrayidx636 = getelementptr inbounds i32, ptr %619, i64 2
  store i32 %618, ptr %arrayidx636, align 4, !tbaa !10
  br label %L280

if.end637:                                        ; preds = %cond.end628
  %620 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %621 = load i32, ptr %i__, align 4, !tbaa !10
  %add638 = add nsw i32 %621, 1
  %idxprom639 = sext i32 %add638 to i64
  %arrayidx640 = getelementptr inbounds double, ptr %620, i64 %idxprom639
  %622 = load double, ptr %arrayidx640, align 8, !tbaa !8
  %623 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %624 = load i32, ptr %i__, align 4, !tbaa !10
  %add641 = add nsw i32 %624, 1
  %idxprom642 = sext i32 %add641 to i64
  %arrayidx643 = getelementptr inbounds double, ptr %623, i64 %idxprom642
  %625 = load double, ptr %arrayidx643, align 8, !tbaa !8
  %626 = load ptr, ptr %ztz.addr, align 8, !tbaa !4
  %627 = load double, ptr %626, align 8, !tbaa !8
  %628 = call double @llvm.fmuladd.f64(double %622, double %625, double %627)
  store double %628, ptr %626, align 8, !tbaa !8
  br label %for.inc645

for.inc645:                                       ; preds = %if.end637
  %629 = load i32, ptr %i__, align 4, !tbaa !10
  %inc646 = add nsw i32 %629, 1
  store i32 %inc646, ptr %i__, align 4, !tbaa !10
  br label %for.cond571, !llvm.loop !23

for.end647:                                       ; preds = %for.cond571
  br label %L280

L280:                                             ; preds = %for.end647, %if.then632
  br label %if.end648

if.end648:                                        ; preds = %L280, %L260
  %630 = load ptr, ptr %ztz.addr, align 8, !tbaa !4
  %631 = load double, ptr %630, align 8, !tbaa !8
  %div649 = fdiv double 1.000000e+00, %631
  store double %div649, ptr %tmp, align 8, !tbaa !8
  %632 = load double, ptr %tmp, align 8, !tbaa !8
  %call650 = call double @sqrt(double noundef %632) #5
  %633 = load ptr, ptr %nrminv.addr, align 8, !tbaa !4
  store double %call650, ptr %633, align 8, !tbaa !8
  %634 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %635 = load double, ptr %634, align 8, !tbaa !8
  %cmp651 = fcmp oge double %635, 0.000000e+00
  br i1 %cmp651, label %cond.true652, label %cond.false653

cond.true652:                                     ; preds = %if.end648
  %636 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %637 = load double, ptr %636, align 8, !tbaa !8
  br label %cond.end655

cond.false653:                                    ; preds = %if.end648
  %638 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %639 = load double, ptr %638, align 8, !tbaa !8
  %fneg654 = fneg double %639
  br label %cond.end655

cond.end655:                                      ; preds = %cond.false653, %cond.true652
  %cond656 = phi double [ %637, %cond.true652 ], [ %fneg654, %cond.false653 ]
  %640 = load ptr, ptr %nrminv.addr, align 8, !tbaa !4
  %641 = load double, ptr %640, align 8, !tbaa !8
  %mul657 = fmul double %cond656, %641
  %642 = load ptr, ptr %resid.addr, align 8, !tbaa !4
  store double %mul657, ptr %642, align 8, !tbaa !8
  %643 = load ptr, ptr %mingma.addr, align 8, !tbaa !4
  %644 = load double, ptr %643, align 8, !tbaa !8
  %645 = load double, ptr %tmp, align 8, !tbaa !8
  %mul658 = fmul double %644, %645
  %646 = load ptr, ptr %rqcorr.addr, align 8, !tbaa !4
  store double %mul658, ptr %646, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sawnan2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sawnan1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dminus) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indumn) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indlpl) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dplus) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inds) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %indp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %neg1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare double @dlamch_(ptr noundef) #2

declare i32 @disnan_(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
