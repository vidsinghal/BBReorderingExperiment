; ModuleID = 'samples/547.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slar1v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Precision\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slar1v_(ptr noundef %n, ptr noundef %b1, ptr noundef %bn, ptr noundef %lambda, ptr noundef %d__, ptr noundef %l, ptr noundef %ld, ptr noundef %lld, ptr noundef %pivmin, ptr noundef %gaptol, ptr noundef %z__, ptr noundef %wantnc, ptr noundef %negcnt, ptr noundef %ztz, ptr noundef %mingma, ptr noundef %r__, ptr noundef %isuppz, ptr noundef %nrminv, ptr noundef %resid, ptr noundef %rqcorr, ptr noundef %work) #0 {
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
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %i__ = alloca i32, align 4
  %s = alloca float, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %eps = alloca float, align 4
  %tmp = alloca float, align 4
  %neg1 = alloca i32, align 4
  %neg2 = alloca i32, align 4
  %indp = alloca i32, align 4
  %inds = alloca i32, align 4
  %dplus = alloca float, align 4
  %indlpl = alloca i32, align 4
  %indumn = alloca i32, align 4
  %dminus = alloca float, align 4
  %sawnan1 = alloca i32, align 4
  %sawnan2 = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %b1, ptr %b1.addr, align 8
  store ptr %bn, ptr %bn.addr, align 8
  store ptr %lambda, ptr %lambda.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %l, ptr %l.addr, align 8
  store ptr %ld, ptr %ld.addr, align 8
  store ptr %lld, ptr %lld.addr, align 8
  store ptr %pivmin, ptr %pivmin.addr, align 8
  store ptr %gaptol, ptr %gaptol.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %wantnc, ptr %wantnc.addr, align 8
  store ptr %negcnt, ptr %negcnt.addr, align 8
  store ptr %ztz, ptr %ztz.addr, align 8
  store ptr %mingma, ptr %mingma.addr, align 8
  store ptr %r__, ptr %r__.addr, align 8
  store ptr %isuppz, ptr %isuppz.addr, align 8
  store ptr %nrminv, ptr %nrminv.addr, align 8
  store ptr %resid, ptr %resid.addr, align 8
  store ptr %rqcorr, ptr %rqcorr.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  %0 = load ptr, ptr %work.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8
  %1 = load ptr, ptr %isuppz.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %isuppz.addr, align 8
  %2 = load ptr, ptr %z__.addr, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %z__.addr, align 8
  %3 = load ptr, ptr %lld.addr, align 8
  %incdec.ptr3 = getelementptr inbounds float, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %lld.addr, align 8
  %4 = load ptr, ptr %ld.addr, align 8
  %incdec.ptr4 = getelementptr inbounds float, ptr %4, i32 -1
  store ptr %incdec.ptr4, ptr %ld.addr, align 8
  %5 = load ptr, ptr %l.addr, align 8
  %incdec.ptr5 = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr5, ptr %l.addr, align 8
  %6 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr6 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr6, ptr %d__.addr, align 8
  %call = call float @slamch_(ptr noundef @.str)
  store float %call, ptr %eps, align 4
  %7 = load ptr, ptr %r__.addr, align 8
  %8 = load i32, ptr %7, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %b1.addr, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %r1, align 4
  %11 = load ptr, ptr %bn.addr, align 8
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %r2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %r__.addr, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %r1, align 4
  %15 = load ptr, ptr %r__.addr, align 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %r2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %indlpl, align 4
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %indumn, align 4
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %shl = shl i32 %20, 1
  %add = add nsw i32 %shl, 1
  store i32 %add, ptr %inds, align 4
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %mul = mul nsw i32 %22, 3
  %add7 = add nsw i32 %mul, 1
  store i32 %add7, ptr %indp, align 4
  %23 = load ptr, ptr %b1.addr, align 8
  %24 = load i32, ptr %23, align 4
  %cmp8 = icmp eq i32 %24, 1
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end
  %25 = load ptr, ptr %work.addr, align 8
  %26 = load i32, ptr %inds, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds float, ptr %25, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  br label %if.end17

if.else10:                                        ; preds = %if.end
  %27 = load ptr, ptr %lld.addr, align 8
  %28 = load ptr, ptr %b1.addr, align 8
  %29 = load i32, ptr %28, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds float, ptr %27, i64 %idxprom11
  %30 = load float, ptr %arrayidx12, align 4
  %31 = load ptr, ptr %work.addr, align 8
  %32 = load i32, ptr %inds, align 4
  %33 = load ptr, ptr %b1.addr, align 8
  %34 = load i32, ptr %33, align 4
  %add13 = add nsw i32 %32, %34
  %sub14 = sub nsw i32 %add13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %31, i64 %idxprom15
  store float %30, ptr %arrayidx16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else10, %if.then9
  store i32 0, ptr %sawnan1, align 4
  store i32 0, ptr %neg1, align 4
  %35 = load ptr, ptr %work.addr, align 8
  %36 = load i32, ptr %inds, align 4
  %37 = load ptr, ptr %b1.addr, align 8
  %38 = load i32, ptr %37, align 4
  %add18 = add nsw i32 %36, %38
  %sub19 = sub nsw i32 %add18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, ptr %35, i64 %idxprom20
  %39 = load float, ptr %arrayidx21, align 4
  %40 = load ptr, ptr %lambda.addr, align 8
  %41 = load float, ptr %40, align 4
  %sub22 = fsub float %39, %41
  store float %sub22, ptr %s, align 4
  %42 = load i32, ptr %r1, align 4
  %sub23 = sub nsw i32 %42, 1
  store i32 %sub23, ptr %i__1, align 4
  %43 = load ptr, ptr %b1.addr, align 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %45 = load i32, ptr %i__, align 4
  %46 = load i32, ptr %i__1, align 4
  %cmp24 = icmp sle i32 %45, %46
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %d__.addr, align 8
  %48 = load i32, ptr %i__, align 4
  %idxprom25 = sext i32 %48 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %47, i64 %idxprom25
  %49 = load float, ptr %arrayidx26, align 4
  %50 = load float, ptr %s, align 4
  %add27 = fadd float %49, %50
  store float %add27, ptr %dplus, align 4
  %51 = load ptr, ptr %ld.addr, align 8
  %52 = load i32, ptr %i__, align 4
  %idxprom28 = sext i32 %52 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %51, i64 %idxprom28
  %53 = load float, ptr %arrayidx29, align 4
  %54 = load float, ptr %dplus, align 4
  %div = fdiv float %53, %54
  %55 = load ptr, ptr %work.addr, align 8
  %56 = load i32, ptr %indlpl, align 4
  %57 = load i32, ptr %i__, align 4
  %add30 = add nsw i32 %56, %57
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %55, i64 %idxprom31
  store float %div, ptr %arrayidx32, align 4
  %58 = load float, ptr %dplus, align 4
  %cmp33 = fcmp olt float %58, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body
  %59 = load i32, ptr %neg1, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %neg1, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.body
  %60 = load float, ptr %s, align 4
  %61 = load ptr, ptr %work.addr, align 8
  %62 = load i32, ptr %indlpl, align 4
  %63 = load i32, ptr %i__, align 4
  %add36 = add nsw i32 %62, %63
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %61, i64 %idxprom37
  %64 = load float, ptr %arrayidx38, align 4
  %mul39 = fmul float %60, %64
  %65 = load ptr, ptr %l.addr, align 8
  %66 = load i32, ptr %i__, align 4
  %idxprom40 = sext i32 %66 to i64
  %arrayidx41 = getelementptr inbounds float, ptr %65, i64 %idxprom40
  %67 = load float, ptr %arrayidx41, align 4
  %mul42 = fmul float %mul39, %67
  %68 = load ptr, ptr %work.addr, align 8
  %69 = load i32, ptr %inds, align 4
  %70 = load i32, ptr %i__, align 4
  %add43 = add nsw i32 %69, %70
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %68, i64 %idxprom44
  store float %mul42, ptr %arrayidx45, align 4
  %71 = load ptr, ptr %work.addr, align 8
  %72 = load i32, ptr %inds, align 4
  %73 = load i32, ptr %i__, align 4
  %add46 = add nsw i32 %72, %73
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %71, i64 %idxprom47
  %74 = load float, ptr %arrayidx48, align 4
  %75 = load ptr, ptr %lambda.addr, align 8
  %76 = load float, ptr %75, align 4
  %sub49 = fsub float %74, %76
  store float %sub49, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %77 = load i32, ptr %i__, align 4
  %inc50 = add nsw i32 %77, 1
  store i32 %inc50, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call51 = call i32 @sisnan_(ptr noundef %s)
  store i32 %call51, ptr %sawnan1, align 4
  %78 = load i32, ptr %sawnan1, align 4
  %tobool = icmp ne i32 %78, 0
  br i1 %tobool, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.end
  br label %L60

if.end53:                                         ; preds = %for.end
  %79 = load i32, ptr %r2, align 4
  %sub54 = sub nsw i32 %79, 1
  store i32 %sub54, ptr %i__1, align 4
  %80 = load i32, ptr %r1, align 4
  store i32 %80, ptr %i__, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc81, %if.end53
  %81 = load i32, ptr %i__, align 4
  %82 = load i32, ptr %i__1, align 4
  %cmp56 = icmp sle i32 %81, %82
  br i1 %cmp56, label %for.body57, label %for.end83

for.body57:                                       ; preds = %for.cond55
  %83 = load ptr, ptr %d__.addr, align 8
  %84 = load i32, ptr %i__, align 4
  %idxprom58 = sext i32 %84 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %83, i64 %idxprom58
  %85 = load float, ptr %arrayidx59, align 4
  %86 = load float, ptr %s, align 4
  %add60 = fadd float %85, %86
  store float %add60, ptr %dplus, align 4
  %87 = load ptr, ptr %ld.addr, align 8
  %88 = load i32, ptr %i__, align 4
  %idxprom61 = sext i32 %88 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %87, i64 %idxprom61
  %89 = load float, ptr %arrayidx62, align 4
  %90 = load float, ptr %dplus, align 4
  %div63 = fdiv float %89, %90
  %91 = load ptr, ptr %work.addr, align 8
  %92 = load i32, ptr %indlpl, align 4
  %93 = load i32, ptr %i__, align 4
  %add64 = add nsw i32 %92, %93
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %91, i64 %idxprom65
  store float %div63, ptr %arrayidx66, align 4
  %94 = load float, ptr %s, align 4
  %95 = load ptr, ptr %work.addr, align 8
  %96 = load i32, ptr %indlpl, align 4
  %97 = load i32, ptr %i__, align 4
  %add67 = add nsw i32 %96, %97
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %95, i64 %idxprom68
  %98 = load float, ptr %arrayidx69, align 4
  %mul70 = fmul float %94, %98
  %99 = load ptr, ptr %l.addr, align 8
  %100 = load i32, ptr %i__, align 4
  %idxprom71 = sext i32 %100 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %99, i64 %idxprom71
  %101 = load float, ptr %arrayidx72, align 4
  %mul73 = fmul float %mul70, %101
  %102 = load ptr, ptr %work.addr, align 8
  %103 = load i32, ptr %inds, align 4
  %104 = load i32, ptr %i__, align 4
  %add74 = add nsw i32 %103, %104
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %102, i64 %idxprom75
  store float %mul73, ptr %arrayidx76, align 4
  %105 = load ptr, ptr %work.addr, align 8
  %106 = load i32, ptr %inds, align 4
  %107 = load i32, ptr %i__, align 4
  %add77 = add nsw i32 %106, %107
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds float, ptr %105, i64 %idxprom78
  %108 = load float, ptr %arrayidx79, align 4
  %109 = load ptr, ptr %lambda.addr, align 8
  %110 = load float, ptr %109, align 4
  %sub80 = fsub float %108, %110
  store float %sub80, ptr %s, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.body57
  %111 = load i32, ptr %i__, align 4
  %inc82 = add nsw i32 %111, 1
  store i32 %inc82, ptr %i__, align 4
  br label %for.cond55, !llvm.loop !7

for.end83:                                        ; preds = %for.cond55
  %call84 = call i32 @sisnan_(ptr noundef %s)
  store i32 %call84, ptr %sawnan1, align 4
  br label %L60

L60:                                              ; preds = %for.end83, %if.then52
  %112 = load i32, ptr %sawnan1, align 4
  %tobool85 = icmp ne i32 %112, 0
  br i1 %tobool85, label %if.then86, label %if.end193

if.then86:                                        ; preds = %L60
  store i32 0, ptr %neg1, align 4
  %113 = load ptr, ptr %work.addr, align 8
  %114 = load i32, ptr %inds, align 4
  %115 = load ptr, ptr %b1.addr, align 8
  %116 = load i32, ptr %115, align 4
  %add87 = add nsw i32 %114, %116
  %sub88 = sub nsw i32 %add87, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %113, i64 %idxprom89
  %117 = load float, ptr %arrayidx90, align 4
  %118 = load ptr, ptr %lambda.addr, align 8
  %119 = load float, ptr %118, align 4
  %sub91 = fsub float %117, %119
  store float %sub91, ptr %s, align 4
  %120 = load i32, ptr %r1, align 4
  %sub92 = sub nsw i32 %120, 1
  store i32 %sub92, ptr %i__1, align 4
  %121 = load ptr, ptr %b1.addr, align 8
  %122 = load i32, ptr %121, align 4
  store i32 %122, ptr %i__, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc139, %if.then86
  %123 = load i32, ptr %i__, align 4
  %124 = load i32, ptr %i__1, align 4
  %cmp94 = icmp sle i32 %123, %124
  br i1 %cmp94, label %for.body95, label %for.end141

for.body95:                                       ; preds = %for.cond93
  %125 = load ptr, ptr %d__.addr, align 8
  %126 = load i32, ptr %i__, align 4
  %idxprom96 = sext i32 %126 to i64
  %arrayidx97 = getelementptr inbounds float, ptr %125, i64 %idxprom96
  %127 = load float, ptr %arrayidx97, align 4
  %128 = load float, ptr %s, align 4
  %add98 = fadd float %127, %128
  store float %add98, ptr %dplus, align 4
  %129 = load float, ptr %dplus, align 4
  %cmp99 = fcmp oge float %129, 0.000000e+00
  br i1 %cmp99, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body95
  %130 = load float, ptr %dplus, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body95
  %131 = load float, ptr %dplus, align 4
  %fneg = fneg float %131
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %130, %cond.true ], [ %fneg, %cond.false ]
  %132 = load ptr, ptr %pivmin.addr, align 8
  %133 = load float, ptr %132, align 4
  %cmp100 = fcmp olt float %cond, %133
  br i1 %cmp100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %cond.end
  %134 = load ptr, ptr %pivmin.addr, align 8
  %135 = load float, ptr %134, align 4
  %fneg102 = fneg float %135
  store float %fneg102, ptr %dplus, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %cond.end
  %136 = load ptr, ptr %ld.addr, align 8
  %137 = load i32, ptr %i__, align 4
  %idxprom104 = sext i32 %137 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %136, i64 %idxprom104
  %138 = load float, ptr %arrayidx105, align 4
  %139 = load float, ptr %dplus, align 4
  %div106 = fdiv float %138, %139
  %140 = load ptr, ptr %work.addr, align 8
  %141 = load i32, ptr %indlpl, align 4
  %142 = load i32, ptr %i__, align 4
  %add107 = add nsw i32 %141, %142
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %140, i64 %idxprom108
  store float %div106, ptr %arrayidx109, align 4
  %143 = load float, ptr %dplus, align 4
  %cmp110 = fcmp olt float %143, 0.000000e+00
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.end103
  %144 = load i32, ptr %neg1, align 4
  %inc112 = add nsw i32 %144, 1
  store i32 %inc112, ptr %neg1, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end103
  %145 = load float, ptr %s, align 4
  %146 = load ptr, ptr %work.addr, align 8
  %147 = load i32, ptr %indlpl, align 4
  %148 = load i32, ptr %i__, align 4
  %add114 = add nsw i32 %147, %148
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %146, i64 %idxprom115
  %149 = load float, ptr %arrayidx116, align 4
  %mul117 = fmul float %145, %149
  %150 = load ptr, ptr %l.addr, align 8
  %151 = load i32, ptr %i__, align 4
  %idxprom118 = sext i32 %151 to i64
  %arrayidx119 = getelementptr inbounds float, ptr %150, i64 %idxprom118
  %152 = load float, ptr %arrayidx119, align 4
  %mul120 = fmul float %mul117, %152
  %153 = load ptr, ptr %work.addr, align 8
  %154 = load i32, ptr %inds, align 4
  %155 = load i32, ptr %i__, align 4
  %add121 = add nsw i32 %154, %155
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %153, i64 %idxprom122
  store float %mul120, ptr %arrayidx123, align 4
  %156 = load ptr, ptr %work.addr, align 8
  %157 = load i32, ptr %indlpl, align 4
  %158 = load i32, ptr %i__, align 4
  %add124 = add nsw i32 %157, %158
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %156, i64 %idxprom125
  %159 = load float, ptr %arrayidx126, align 4
  %cmp127 = fcmp oeq float %159, 0.000000e+00
  br i1 %cmp127, label %if.then128, label %if.end134

if.then128:                                       ; preds = %if.end113
  %160 = load ptr, ptr %lld.addr, align 8
  %161 = load i32, ptr %i__, align 4
  %idxprom129 = sext i32 %161 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %160, i64 %idxprom129
  %162 = load float, ptr %arrayidx130, align 4
  %163 = load ptr, ptr %work.addr, align 8
  %164 = load i32, ptr %inds, align 4
  %165 = load i32, ptr %i__, align 4
  %add131 = add nsw i32 %164, %165
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds float, ptr %163, i64 %idxprom132
  store float %162, ptr %arrayidx133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end113
  %166 = load ptr, ptr %work.addr, align 8
  %167 = load i32, ptr %inds, align 4
  %168 = load i32, ptr %i__, align 4
  %add135 = add nsw i32 %167, %168
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds float, ptr %166, i64 %idxprom136
  %169 = load float, ptr %arrayidx137, align 4
  %170 = load ptr, ptr %lambda.addr, align 8
  %171 = load float, ptr %170, align 4
  %sub138 = fsub float %169, %171
  store float %sub138, ptr %s, align 4
  br label %for.inc139

for.inc139:                                       ; preds = %if.end134
  %172 = load i32, ptr %i__, align 4
  %inc140 = add nsw i32 %172, 1
  store i32 %inc140, ptr %i__, align 4
  br label %for.cond93, !llvm.loop !8

for.end141:                                       ; preds = %for.cond93
  %173 = load i32, ptr %r2, align 4
  %sub142 = sub nsw i32 %173, 1
  store i32 %sub142, ptr %i__1, align 4
  %174 = load i32, ptr %r1, align 4
  store i32 %174, ptr %i__, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc190, %for.end141
  %175 = load i32, ptr %i__, align 4
  %176 = load i32, ptr %i__1, align 4
  %cmp144 = icmp sle i32 %175, %176
  br i1 %cmp144, label %for.body145, label %for.end192

for.body145:                                      ; preds = %for.cond143
  %177 = load ptr, ptr %d__.addr, align 8
  %178 = load i32, ptr %i__, align 4
  %idxprom146 = sext i32 %178 to i64
  %arrayidx147 = getelementptr inbounds float, ptr %177, i64 %idxprom146
  %179 = load float, ptr %arrayidx147, align 4
  %180 = load float, ptr %s, align 4
  %add148 = fadd float %179, %180
  store float %add148, ptr %dplus, align 4
  %181 = load float, ptr %dplus, align 4
  %cmp149 = fcmp oge float %181, 0.000000e+00
  br i1 %cmp149, label %cond.true150, label %cond.false151

cond.true150:                                     ; preds = %for.body145
  %182 = load float, ptr %dplus, align 4
  br label %cond.end153

cond.false151:                                    ; preds = %for.body145
  %183 = load float, ptr %dplus, align 4
  %fneg152 = fneg float %183
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false151, %cond.true150
  %cond154 = phi float [ %182, %cond.true150 ], [ %fneg152, %cond.false151 ]
  %184 = load ptr, ptr %pivmin.addr, align 8
  %185 = load float, ptr %184, align 4
  %cmp155 = fcmp olt float %cond154, %185
  br i1 %cmp155, label %if.then156, label %if.end158

if.then156:                                       ; preds = %cond.end153
  %186 = load ptr, ptr %pivmin.addr, align 8
  %187 = load float, ptr %186, align 4
  %fneg157 = fneg float %187
  store float %fneg157, ptr %dplus, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %cond.end153
  %188 = load ptr, ptr %ld.addr, align 8
  %189 = load i32, ptr %i__, align 4
  %idxprom159 = sext i32 %189 to i64
  %arrayidx160 = getelementptr inbounds float, ptr %188, i64 %idxprom159
  %190 = load float, ptr %arrayidx160, align 4
  %191 = load float, ptr %dplus, align 4
  %div161 = fdiv float %190, %191
  %192 = load ptr, ptr %work.addr, align 8
  %193 = load i32, ptr %indlpl, align 4
  %194 = load i32, ptr %i__, align 4
  %add162 = add nsw i32 %193, %194
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %192, i64 %idxprom163
  store float %div161, ptr %arrayidx164, align 4
  %195 = load float, ptr %s, align 4
  %196 = load ptr, ptr %work.addr, align 8
  %197 = load i32, ptr %indlpl, align 4
  %198 = load i32, ptr %i__, align 4
  %add165 = add nsw i32 %197, %198
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds float, ptr %196, i64 %idxprom166
  %199 = load float, ptr %arrayidx167, align 4
  %mul168 = fmul float %195, %199
  %200 = load ptr, ptr %l.addr, align 8
  %201 = load i32, ptr %i__, align 4
  %idxprom169 = sext i32 %201 to i64
  %arrayidx170 = getelementptr inbounds float, ptr %200, i64 %idxprom169
  %202 = load float, ptr %arrayidx170, align 4
  %mul171 = fmul float %mul168, %202
  %203 = load ptr, ptr %work.addr, align 8
  %204 = load i32, ptr %inds, align 4
  %205 = load i32, ptr %i__, align 4
  %add172 = add nsw i32 %204, %205
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds float, ptr %203, i64 %idxprom173
  store float %mul171, ptr %arrayidx174, align 4
  %206 = load ptr, ptr %work.addr, align 8
  %207 = load i32, ptr %indlpl, align 4
  %208 = load i32, ptr %i__, align 4
  %add175 = add nsw i32 %207, %208
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds float, ptr %206, i64 %idxprom176
  %209 = load float, ptr %arrayidx177, align 4
  %cmp178 = fcmp oeq float %209, 0.000000e+00
  br i1 %cmp178, label %if.then179, label %if.end185

if.then179:                                       ; preds = %if.end158
  %210 = load ptr, ptr %lld.addr, align 8
  %211 = load i32, ptr %i__, align 4
  %idxprom180 = sext i32 %211 to i64
  %arrayidx181 = getelementptr inbounds float, ptr %210, i64 %idxprom180
  %212 = load float, ptr %arrayidx181, align 4
  %213 = load ptr, ptr %work.addr, align 8
  %214 = load i32, ptr %inds, align 4
  %215 = load i32, ptr %i__, align 4
  %add182 = add nsw i32 %214, %215
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds float, ptr %213, i64 %idxprom183
  store float %212, ptr %arrayidx184, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then179, %if.end158
  %216 = load ptr, ptr %work.addr, align 8
  %217 = load i32, ptr %inds, align 4
  %218 = load i32, ptr %i__, align 4
  %add186 = add nsw i32 %217, %218
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds float, ptr %216, i64 %idxprom187
  %219 = load float, ptr %arrayidx188, align 4
  %220 = load ptr, ptr %lambda.addr, align 8
  %221 = load float, ptr %220, align 4
  %sub189 = fsub float %219, %221
  store float %sub189, ptr %s, align 4
  br label %for.inc190

for.inc190:                                       ; preds = %if.end185
  %222 = load i32, ptr %i__, align 4
  %inc191 = add nsw i32 %222, 1
  store i32 %inc191, ptr %i__, align 4
  br label %for.cond143, !llvm.loop !9

for.end192:                                       ; preds = %for.cond143
  br label %if.end193

if.end193:                                        ; preds = %for.end192, %L60
  store i32 0, ptr %sawnan2, align 4
  store i32 0, ptr %neg2, align 4
  %223 = load ptr, ptr %d__.addr, align 8
  %224 = load ptr, ptr %bn.addr, align 8
  %225 = load i32, ptr %224, align 4
  %idxprom194 = sext i32 %225 to i64
  %arrayidx195 = getelementptr inbounds float, ptr %223, i64 %idxprom194
  %226 = load float, ptr %arrayidx195, align 4
  %227 = load ptr, ptr %lambda.addr, align 8
  %228 = load float, ptr %227, align 4
  %sub196 = fsub float %226, %228
  %229 = load ptr, ptr %work.addr, align 8
  %230 = load i32, ptr %indp, align 4
  %231 = load ptr, ptr %bn.addr, align 8
  %232 = load i32, ptr %231, align 4
  %add197 = add nsw i32 %230, %232
  %sub198 = sub nsw i32 %add197, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds float, ptr %229, i64 %idxprom199
  store float %sub196, ptr %arrayidx200, align 4
  %233 = load i32, ptr %r1, align 4
  store i32 %233, ptr %i__1, align 4
  %234 = load ptr, ptr %bn.addr, align 8
  %235 = load i32, ptr %234, align 4
  %sub201 = sub nsw i32 %235, 1
  store i32 %sub201, ptr %i__, align 4
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc232, %if.end193
  %236 = load i32, ptr %i__, align 4
  %237 = load i32, ptr %i__1, align 4
  %cmp203 = icmp sge i32 %236, %237
  br i1 %cmp203, label %for.body204, label %for.end233

for.body204:                                      ; preds = %for.cond202
  %238 = load ptr, ptr %lld.addr, align 8
  %239 = load i32, ptr %i__, align 4
  %idxprom205 = sext i32 %239 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %238, i64 %idxprom205
  %240 = load float, ptr %arrayidx206, align 4
  %241 = load ptr, ptr %work.addr, align 8
  %242 = load i32, ptr %indp, align 4
  %243 = load i32, ptr %i__, align 4
  %add207 = add nsw i32 %242, %243
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds float, ptr %241, i64 %idxprom208
  %244 = load float, ptr %arrayidx209, align 4
  %add210 = fadd float %240, %244
  store float %add210, ptr %dminus, align 4
  %245 = load ptr, ptr %d__.addr, align 8
  %246 = load i32, ptr %i__, align 4
  %idxprom211 = sext i32 %246 to i64
  %arrayidx212 = getelementptr inbounds float, ptr %245, i64 %idxprom211
  %247 = load float, ptr %arrayidx212, align 4
  %248 = load float, ptr %dminus, align 4
  %div213 = fdiv float %247, %248
  store float %div213, ptr %tmp, align 4
  %249 = load float, ptr %dminus, align 4
  %cmp214 = fcmp olt float %249, 0.000000e+00
  br i1 %cmp214, label %if.then215, label %if.end217

if.then215:                                       ; preds = %for.body204
  %250 = load i32, ptr %neg2, align 4
  %inc216 = add nsw i32 %250, 1
  store i32 %inc216, ptr %neg2, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %for.body204
  %251 = load ptr, ptr %l.addr, align 8
  %252 = load i32, ptr %i__, align 4
  %idxprom218 = sext i32 %252 to i64
  %arrayidx219 = getelementptr inbounds float, ptr %251, i64 %idxprom218
  %253 = load float, ptr %arrayidx219, align 4
  %254 = load float, ptr %tmp, align 4
  %mul220 = fmul float %253, %254
  %255 = load ptr, ptr %work.addr, align 8
  %256 = load i32, ptr %indumn, align 4
  %257 = load i32, ptr %i__, align 4
  %add221 = add nsw i32 %256, %257
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds float, ptr %255, i64 %idxprom222
  store float %mul220, ptr %arrayidx223, align 4
  %258 = load ptr, ptr %work.addr, align 8
  %259 = load i32, ptr %indp, align 4
  %260 = load i32, ptr %i__, align 4
  %add224 = add nsw i32 %259, %260
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds float, ptr %258, i64 %idxprom225
  %261 = load float, ptr %arrayidx226, align 4
  %262 = load float, ptr %tmp, align 4
  %263 = load ptr, ptr %lambda.addr, align 8
  %264 = load float, ptr %263, align 4
  %neg = fneg float %264
  %265 = call float @llvm.fmuladd.f32(float %261, float %262, float %neg)
  %266 = load ptr, ptr %work.addr, align 8
  %267 = load i32, ptr %indp, align 4
  %268 = load i32, ptr %i__, align 4
  %add228 = add nsw i32 %267, %268
  %sub229 = sub nsw i32 %add228, 1
  %idxprom230 = sext i32 %sub229 to i64
  %arrayidx231 = getelementptr inbounds float, ptr %266, i64 %idxprom230
  store float %265, ptr %arrayidx231, align 4
  br label %for.inc232

for.inc232:                                       ; preds = %if.end217
  %269 = load i32, ptr %i__, align 4
  %dec = add nsw i32 %269, -1
  store i32 %dec, ptr %i__, align 4
  br label %for.cond202, !llvm.loop !10

for.end233:                                       ; preds = %for.cond202
  %270 = load ptr, ptr %work.addr, align 8
  %271 = load i32, ptr %indp, align 4
  %272 = load i32, ptr %r1, align 4
  %add234 = add nsw i32 %271, %272
  %sub235 = sub nsw i32 %add234, 1
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds float, ptr %270, i64 %idxprom236
  %273 = load float, ptr %arrayidx237, align 4
  store float %273, ptr %tmp, align 4
  %call238 = call i32 @sisnan_(ptr noundef %tmp)
  store i32 %call238, ptr %sawnan2, align 4
  %274 = load i32, ptr %sawnan2, align 4
  %tobool239 = icmp ne i32 %274, 0
  br i1 %tobool239, label %if.then240, label %if.end296

if.then240:                                       ; preds = %for.end233
  store i32 0, ptr %neg2, align 4
  %275 = load i32, ptr %r1, align 4
  store i32 %275, ptr %i__1, align 4
  %276 = load ptr, ptr %bn.addr, align 8
  %277 = load i32, ptr %276, align 4
  %sub241 = sub nsw i32 %277, 1
  store i32 %sub241, ptr %i__, align 4
  br label %for.cond242

for.cond242:                                      ; preds = %for.inc293, %if.then240
  %278 = load i32, ptr %i__, align 4
  %279 = load i32, ptr %i__1, align 4
  %cmp243 = icmp sge i32 %278, %279
  br i1 %cmp243, label %for.body244, label %for.end295

for.body244:                                      ; preds = %for.cond242
  %280 = load ptr, ptr %lld.addr, align 8
  %281 = load i32, ptr %i__, align 4
  %idxprom245 = sext i32 %281 to i64
  %arrayidx246 = getelementptr inbounds float, ptr %280, i64 %idxprom245
  %282 = load float, ptr %arrayidx246, align 4
  %283 = load ptr, ptr %work.addr, align 8
  %284 = load i32, ptr %indp, align 4
  %285 = load i32, ptr %i__, align 4
  %add247 = add nsw i32 %284, %285
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds float, ptr %283, i64 %idxprom248
  %286 = load float, ptr %arrayidx249, align 4
  %add250 = fadd float %282, %286
  store float %add250, ptr %dminus, align 4
  %287 = load float, ptr %dminus, align 4
  %cmp251 = fcmp oge float %287, 0.000000e+00
  br i1 %cmp251, label %cond.true252, label %cond.false253

cond.true252:                                     ; preds = %for.body244
  %288 = load float, ptr %dminus, align 4
  br label %cond.end255

cond.false253:                                    ; preds = %for.body244
  %289 = load float, ptr %dminus, align 4
  %fneg254 = fneg float %289
  br label %cond.end255

cond.end255:                                      ; preds = %cond.false253, %cond.true252
  %cond256 = phi float [ %288, %cond.true252 ], [ %fneg254, %cond.false253 ]
  %290 = load ptr, ptr %pivmin.addr, align 8
  %291 = load float, ptr %290, align 4
  %cmp257 = fcmp olt float %cond256, %291
  br i1 %cmp257, label %if.then258, label %if.end260

if.then258:                                       ; preds = %cond.end255
  %292 = load ptr, ptr %pivmin.addr, align 8
  %293 = load float, ptr %292, align 4
  %fneg259 = fneg float %293
  store float %fneg259, ptr %dminus, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %cond.end255
  %294 = load ptr, ptr %d__.addr, align 8
  %295 = load i32, ptr %i__, align 4
  %idxprom261 = sext i32 %295 to i64
  %arrayidx262 = getelementptr inbounds float, ptr %294, i64 %idxprom261
  %296 = load float, ptr %arrayidx262, align 4
  %297 = load float, ptr %dminus, align 4
  %div263 = fdiv float %296, %297
  store float %div263, ptr %tmp, align 4
  %298 = load float, ptr %dminus, align 4
  %cmp264 = fcmp olt float %298, 0.000000e+00
  br i1 %cmp264, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.end260
  %299 = load i32, ptr %neg2, align 4
  %inc266 = add nsw i32 %299, 1
  store i32 %inc266, ptr %neg2, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.end260
  %300 = load ptr, ptr %l.addr, align 8
  %301 = load i32, ptr %i__, align 4
  %idxprom268 = sext i32 %301 to i64
  %arrayidx269 = getelementptr inbounds float, ptr %300, i64 %idxprom268
  %302 = load float, ptr %arrayidx269, align 4
  %303 = load float, ptr %tmp, align 4
  %mul270 = fmul float %302, %303
  %304 = load ptr, ptr %work.addr, align 8
  %305 = load i32, ptr %indumn, align 4
  %306 = load i32, ptr %i__, align 4
  %add271 = add nsw i32 %305, %306
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds float, ptr %304, i64 %idxprom272
  store float %mul270, ptr %arrayidx273, align 4
  %307 = load ptr, ptr %work.addr, align 8
  %308 = load i32, ptr %indp, align 4
  %309 = load i32, ptr %i__, align 4
  %add274 = add nsw i32 %308, %309
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds float, ptr %307, i64 %idxprom275
  %310 = load float, ptr %arrayidx276, align 4
  %311 = load float, ptr %tmp, align 4
  %312 = load ptr, ptr %lambda.addr, align 8
  %313 = load float, ptr %312, align 4
  %neg278 = fneg float %313
  %314 = call float @llvm.fmuladd.f32(float %310, float %311, float %neg278)
  %315 = load ptr, ptr %work.addr, align 8
  %316 = load i32, ptr %indp, align 4
  %317 = load i32, ptr %i__, align 4
  %add279 = add nsw i32 %316, %317
  %sub280 = sub nsw i32 %add279, 1
  %idxprom281 = sext i32 %sub280 to i64
  %arrayidx282 = getelementptr inbounds float, ptr %315, i64 %idxprom281
  store float %314, ptr %arrayidx282, align 4
  %318 = load float, ptr %tmp, align 4
  %cmp283 = fcmp oeq float %318, 0.000000e+00
  br i1 %cmp283, label %if.then284, label %if.end292

if.then284:                                       ; preds = %if.end267
  %319 = load ptr, ptr %d__.addr, align 8
  %320 = load i32, ptr %i__, align 4
  %idxprom285 = sext i32 %320 to i64
  %arrayidx286 = getelementptr inbounds float, ptr %319, i64 %idxprom285
  %321 = load float, ptr %arrayidx286, align 4
  %322 = load ptr, ptr %lambda.addr, align 8
  %323 = load float, ptr %322, align 4
  %sub287 = fsub float %321, %323
  %324 = load ptr, ptr %work.addr, align 8
  %325 = load i32, ptr %indp, align 4
  %326 = load i32, ptr %i__, align 4
  %add288 = add nsw i32 %325, %326
  %sub289 = sub nsw i32 %add288, 1
  %idxprom290 = sext i32 %sub289 to i64
  %arrayidx291 = getelementptr inbounds float, ptr %324, i64 %idxprom290
  store float %sub287, ptr %arrayidx291, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.then284, %if.end267
  br label %for.inc293

for.inc293:                                       ; preds = %if.end292
  %327 = load i32, ptr %i__, align 4
  %dec294 = add nsw i32 %327, -1
  store i32 %dec294, ptr %i__, align 4
  br label %for.cond242, !llvm.loop !11

for.end295:                                       ; preds = %for.cond242
  br label %if.end296

if.end296:                                        ; preds = %for.end295, %for.end233
  %328 = load ptr, ptr %work.addr, align 8
  %329 = load i32, ptr %inds, align 4
  %330 = load i32, ptr %r1, align 4
  %add297 = add nsw i32 %329, %330
  %sub298 = sub nsw i32 %add297, 1
  %idxprom299 = sext i32 %sub298 to i64
  %arrayidx300 = getelementptr inbounds float, ptr %328, i64 %idxprom299
  %331 = load float, ptr %arrayidx300, align 4
  %332 = load ptr, ptr %work.addr, align 8
  %333 = load i32, ptr %indp, align 4
  %334 = load i32, ptr %r1, align 4
  %add301 = add nsw i32 %333, %334
  %sub302 = sub nsw i32 %add301, 1
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds float, ptr %332, i64 %idxprom303
  %335 = load float, ptr %arrayidx304, align 4
  %add305 = fadd float %331, %335
  %336 = load ptr, ptr %mingma.addr, align 8
  store float %add305, ptr %336, align 4
  %337 = load ptr, ptr %mingma.addr, align 8
  %338 = load float, ptr %337, align 4
  %cmp306 = fcmp olt float %338, 0.000000e+00
  br i1 %cmp306, label %if.then307, label %if.end309

if.then307:                                       ; preds = %if.end296
  %339 = load i32, ptr %neg1, align 4
  %inc308 = add nsw i32 %339, 1
  store i32 %inc308, ptr %neg1, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then307, %if.end296
  %340 = load ptr, ptr %wantnc.addr, align 8
  %341 = load i32, ptr %340, align 4
  %tobool310 = icmp ne i32 %341, 0
  br i1 %tobool310, label %if.then311, label %if.else313

if.then311:                                       ; preds = %if.end309
  %342 = load i32, ptr %neg1, align 4
  %343 = load i32, ptr %neg2, align 4
  %add312 = add nsw i32 %342, %343
  %344 = load ptr, ptr %negcnt.addr, align 8
  store i32 %add312, ptr %344, align 4
  br label %if.end314

if.else313:                                       ; preds = %if.end309
  %345 = load ptr, ptr %negcnt.addr, align 8
  store i32 -1, ptr %345, align 4
  br label %if.end314

if.end314:                                        ; preds = %if.else313, %if.then311
  %346 = load ptr, ptr %mingma.addr, align 8
  %347 = load float, ptr %346, align 4
  %cmp315 = fcmp oge float %347, 0.000000e+00
  br i1 %cmp315, label %cond.true316, label %cond.false317

cond.true316:                                     ; preds = %if.end314
  %348 = load ptr, ptr %mingma.addr, align 8
  %349 = load float, ptr %348, align 4
  br label %cond.end319

cond.false317:                                    ; preds = %if.end314
  %350 = load ptr, ptr %mingma.addr, align 8
  %351 = load float, ptr %350, align 4
  %fneg318 = fneg float %351
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false317, %cond.true316
  %cond320 = phi float [ %349, %cond.true316 ], [ %fneg318, %cond.false317 ]
  %cmp321 = fcmp oeq float %cond320, 0.000000e+00
  br i1 %cmp321, label %if.then322, label %if.end328

if.then322:                                       ; preds = %cond.end319
  %352 = load float, ptr %eps, align 4
  %353 = load ptr, ptr %work.addr, align 8
  %354 = load i32, ptr %inds, align 4
  %355 = load i32, ptr %r1, align 4
  %add323 = add nsw i32 %354, %355
  %sub324 = sub nsw i32 %add323, 1
  %idxprom325 = sext i32 %sub324 to i64
  %arrayidx326 = getelementptr inbounds float, ptr %353, i64 %idxprom325
  %356 = load float, ptr %arrayidx326, align 4
  %mul327 = fmul float %352, %356
  %357 = load ptr, ptr %mingma.addr, align 8
  store float %mul327, ptr %357, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then322, %cond.end319
  %358 = load i32, ptr %r1, align 4
  %359 = load ptr, ptr %r__.addr, align 8
  store i32 %358, ptr %359, align 4
  %360 = load i32, ptr %r2, align 4
  %sub329 = sub nsw i32 %360, 1
  store i32 %sub329, ptr %i__1, align 4
  %361 = load i32, ptr %r1, align 4
  store i32 %361, ptr %i__, align 4
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc363, %if.end328
  %362 = load i32, ptr %i__, align 4
  %363 = load i32, ptr %i__1, align 4
  %cmp331 = icmp sle i32 %362, %363
  br i1 %cmp331, label %for.body332, label %for.end365

for.body332:                                      ; preds = %for.cond330
  %364 = load ptr, ptr %work.addr, align 8
  %365 = load i32, ptr %inds, align 4
  %366 = load i32, ptr %i__, align 4
  %add333 = add nsw i32 %365, %366
  %idxprom334 = sext i32 %add333 to i64
  %arrayidx335 = getelementptr inbounds float, ptr %364, i64 %idxprom334
  %367 = load float, ptr %arrayidx335, align 4
  %368 = load ptr, ptr %work.addr, align 8
  %369 = load i32, ptr %indp, align 4
  %370 = load i32, ptr %i__, align 4
  %add336 = add nsw i32 %369, %370
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds float, ptr %368, i64 %idxprom337
  %371 = load float, ptr %arrayidx338, align 4
  %add339 = fadd float %367, %371
  store float %add339, ptr %tmp, align 4
  %372 = load float, ptr %tmp, align 4
  %cmp340 = fcmp oeq float %372, 0.000000e+00
  br i1 %cmp340, label %if.then341, label %if.end346

if.then341:                                       ; preds = %for.body332
  %373 = load float, ptr %eps, align 4
  %374 = load ptr, ptr %work.addr, align 8
  %375 = load i32, ptr %inds, align 4
  %376 = load i32, ptr %i__, align 4
  %add342 = add nsw i32 %375, %376
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds float, ptr %374, i64 %idxprom343
  %377 = load float, ptr %arrayidx344, align 4
  %mul345 = fmul float %373, %377
  store float %mul345, ptr %tmp, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.then341, %for.body332
  %378 = load float, ptr %tmp, align 4
  %cmp347 = fcmp oge float %378, 0.000000e+00
  br i1 %cmp347, label %cond.true348, label %cond.false349

cond.true348:                                     ; preds = %if.end346
  %379 = load float, ptr %tmp, align 4
  br label %cond.end351

cond.false349:                                    ; preds = %if.end346
  %380 = load float, ptr %tmp, align 4
  %fneg350 = fneg float %380
  br label %cond.end351

cond.end351:                                      ; preds = %cond.false349, %cond.true348
  %cond352 = phi float [ %379, %cond.true348 ], [ %fneg350, %cond.false349 ]
  %381 = load ptr, ptr %mingma.addr, align 8
  %382 = load float, ptr %381, align 4
  %cmp353 = fcmp oge float %382, 0.000000e+00
  br i1 %cmp353, label %cond.true354, label %cond.false355

cond.true354:                                     ; preds = %cond.end351
  %383 = load ptr, ptr %mingma.addr, align 8
  %384 = load float, ptr %383, align 4
  br label %cond.end357

cond.false355:                                    ; preds = %cond.end351
  %385 = load ptr, ptr %mingma.addr, align 8
  %386 = load float, ptr %385, align 4
  %fneg356 = fneg float %386
  br label %cond.end357

cond.end357:                                      ; preds = %cond.false355, %cond.true354
  %cond358 = phi float [ %384, %cond.true354 ], [ %fneg356, %cond.false355 ]
  %cmp359 = fcmp ole float %cond352, %cond358
  br i1 %cmp359, label %if.then360, label %if.end362

if.then360:                                       ; preds = %cond.end357
  %387 = load float, ptr %tmp, align 4
  %388 = load ptr, ptr %mingma.addr, align 8
  store float %387, ptr %388, align 4
  %389 = load i32, ptr %i__, align 4
  %add361 = add nsw i32 %389, 1
  %390 = load ptr, ptr %r__.addr, align 8
  store i32 %add361, ptr %390, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.then360, %cond.end357
  br label %for.inc363

for.inc363:                                       ; preds = %if.end362
  %391 = load i32, ptr %i__, align 4
  %inc364 = add nsw i32 %391, 1
  store i32 %inc364, ptr %i__, align 4
  br label %for.cond330, !llvm.loop !12

for.end365:                                       ; preds = %for.cond330
  %392 = load ptr, ptr %b1.addr, align 8
  %393 = load i32, ptr %392, align 4
  %394 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx366 = getelementptr inbounds i32, ptr %394, i64 1
  store i32 %393, ptr %arrayidx366, align 4
  %395 = load ptr, ptr %bn.addr, align 8
  %396 = load i32, ptr %395, align 4
  %397 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx367 = getelementptr inbounds i32, ptr %397, i64 2
  store i32 %396, ptr %arrayidx367, align 4
  %398 = load ptr, ptr %z__.addr, align 8
  %399 = load ptr, ptr %r__.addr, align 8
  %400 = load i32, ptr %399, align 4
  %idxprom368 = sext i32 %400 to i64
  %arrayidx369 = getelementptr inbounds float, ptr %398, i64 %idxprom368
  store float 1.000000e+00, ptr %arrayidx369, align 4
  %401 = load ptr, ptr %ztz.addr, align 8
  store float 1.000000e+00, ptr %401, align 4
  %402 = load i32, ptr %sawnan1, align 4
  %tobool370 = icmp ne i32 %402, 0
  br i1 %tobool370, label %if.else429, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end365
  %403 = load i32, ptr %sawnan2, align 4
  %tobool371 = icmp ne i32 %403, 0
  br i1 %tobool371, label %if.else429, label %if.then372

if.then372:                                       ; preds = %land.lhs.true
  %404 = load ptr, ptr %b1.addr, align 8
  %405 = load i32, ptr %404, align 4
  store i32 %405, ptr %i__1, align 4
  %406 = load ptr, ptr %r__.addr, align 8
  %407 = load i32, ptr %406, align 4
  %sub373 = sub nsw i32 %407, 1
  store i32 %sub373, ptr %i__, align 4
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc426, %if.then372
  %408 = load i32, ptr %i__, align 4
  %409 = load i32, ptr %i__1, align 4
  %cmp375 = icmp sge i32 %408, %409
  br i1 %cmp375, label %for.body376, label %for.end428

for.body376:                                      ; preds = %for.cond374
  %410 = load ptr, ptr %work.addr, align 8
  %411 = load i32, ptr %indlpl, align 4
  %412 = load i32, ptr %i__, align 4
  %add377 = add nsw i32 %411, %412
  %idxprom378 = sext i32 %add377 to i64
  %arrayidx379 = getelementptr inbounds float, ptr %410, i64 %idxprom378
  %413 = load float, ptr %arrayidx379, align 4
  %414 = load ptr, ptr %z__.addr, align 8
  %415 = load i32, ptr %i__, align 4
  %add380 = add nsw i32 %415, 1
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds float, ptr %414, i64 %idxprom381
  %416 = load float, ptr %arrayidx382, align 4
  %mul383 = fmul float %413, %416
  %fneg384 = fneg float %mul383
  %417 = load ptr, ptr %z__.addr, align 8
  %418 = load i32, ptr %i__, align 4
  %idxprom385 = sext i32 %418 to i64
  %arrayidx386 = getelementptr inbounds float, ptr %417, i64 %idxprom385
  store float %fneg384, ptr %arrayidx386, align 4
  %419 = load ptr, ptr %z__.addr, align 8
  %420 = load i32, ptr %i__, align 4
  %idxprom387 = sext i32 %420 to i64
  %arrayidx388 = getelementptr inbounds float, ptr %419, i64 %idxprom387
  %421 = load float, ptr %arrayidx388, align 4
  store float %421, ptr %r__1, align 4
  %422 = load float, ptr %r__1, align 4
  %cmp389 = fcmp oge float %422, 0.000000e+00
  br i1 %cmp389, label %cond.true390, label %cond.false391

cond.true390:                                     ; preds = %for.body376
  %423 = load float, ptr %r__1, align 4
  br label %cond.end393

cond.false391:                                    ; preds = %for.body376
  %424 = load float, ptr %r__1, align 4
  %fneg392 = fneg float %424
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false391, %cond.true390
  %cond394 = phi float [ %423, %cond.true390 ], [ %fneg392, %cond.false391 ]
  %425 = load ptr, ptr %z__.addr, align 8
  %426 = load i32, ptr %i__, align 4
  %add395 = add nsw i32 %426, 1
  %idxprom396 = sext i32 %add395 to i64
  %arrayidx397 = getelementptr inbounds float, ptr %425, i64 %idxprom396
  %427 = load float, ptr %arrayidx397, align 4
  store float %427, ptr %r__2, align 4
  %428 = load float, ptr %r__2, align 4
  %cmp398 = fcmp oge float %428, 0.000000e+00
  br i1 %cmp398, label %cond.true399, label %cond.false400

cond.true399:                                     ; preds = %cond.end393
  %429 = load float, ptr %r__2, align 4
  br label %cond.end402

cond.false400:                                    ; preds = %cond.end393
  %430 = load float, ptr %r__2, align 4
  %fneg401 = fneg float %430
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false400, %cond.true399
  %cond403 = phi float [ %429, %cond.true399 ], [ %fneg401, %cond.false400 ]
  %add404 = fadd float %cond394, %cond403
  %431 = load ptr, ptr %ld.addr, align 8
  %432 = load i32, ptr %i__, align 4
  %idxprom405 = sext i32 %432 to i64
  %arrayidx406 = getelementptr inbounds float, ptr %431, i64 %idxprom405
  %433 = load float, ptr %arrayidx406, align 4
  store float %433, ptr %r__3, align 4
  %434 = load float, ptr %r__3, align 4
  %cmp407 = fcmp oge float %434, 0.000000e+00
  br i1 %cmp407, label %cond.true408, label %cond.false409

cond.true408:                                     ; preds = %cond.end402
  %435 = load float, ptr %r__3, align 4
  br label %cond.end411

cond.false409:                                    ; preds = %cond.end402
  %436 = load float, ptr %r__3, align 4
  %fneg410 = fneg float %436
  br label %cond.end411

cond.end411:                                      ; preds = %cond.false409, %cond.true408
  %cond412 = phi float [ %435, %cond.true408 ], [ %fneg410, %cond.false409 ]
  %mul413 = fmul float %add404, %cond412
  %437 = load ptr, ptr %gaptol.addr, align 8
  %438 = load float, ptr %437, align 4
  %cmp414 = fcmp olt float %mul413, %438
  br i1 %cmp414, label %if.then415, label %if.end420

if.then415:                                       ; preds = %cond.end411
  %439 = load ptr, ptr %z__.addr, align 8
  %440 = load i32, ptr %i__, align 4
  %idxprom416 = sext i32 %440 to i64
  %arrayidx417 = getelementptr inbounds float, ptr %439, i64 %idxprom416
  store float 0.000000e+00, ptr %arrayidx417, align 4
  %441 = load i32, ptr %i__, align 4
  %add418 = add nsw i32 %441, 1
  %442 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx419 = getelementptr inbounds i32, ptr %442, i64 1
  store i32 %add418, ptr %arrayidx419, align 4
  br label %L220

if.end420:                                        ; preds = %cond.end411
  %443 = load ptr, ptr %z__.addr, align 8
  %444 = load i32, ptr %i__, align 4
  %idxprom421 = sext i32 %444 to i64
  %arrayidx422 = getelementptr inbounds float, ptr %443, i64 %idxprom421
  %445 = load float, ptr %arrayidx422, align 4
  %446 = load ptr, ptr %z__.addr, align 8
  %447 = load i32, ptr %i__, align 4
  %idxprom423 = sext i32 %447 to i64
  %arrayidx424 = getelementptr inbounds float, ptr %446, i64 %idxprom423
  %448 = load float, ptr %arrayidx424, align 4
  %449 = load ptr, ptr %ztz.addr, align 8
  %450 = load float, ptr %449, align 4
  %451 = call float @llvm.fmuladd.f32(float %445, float %448, float %450)
  store float %451, ptr %449, align 4
  br label %for.inc426

for.inc426:                                       ; preds = %if.end420
  %452 = load i32, ptr %i__, align 4
  %dec427 = add nsw i32 %452, -1
  store i32 %dec427, ptr %i__, align 4
  br label %for.cond374, !llvm.loop !13

for.end428:                                       ; preds = %for.cond374
  br label %L220

L220:                                             ; preds = %for.end428, %if.then415
  br label %if.end506

if.else429:                                       ; preds = %land.lhs.true, %for.end365
  %453 = load ptr, ptr %b1.addr, align 8
  %454 = load i32, ptr %453, align 4
  store i32 %454, ptr %i__1, align 4
  %455 = load ptr, ptr %r__.addr, align 8
  %456 = load i32, ptr %455, align 4
  %sub430 = sub nsw i32 %456, 1
  store i32 %sub430, ptr %i__, align 4
  br label %for.cond431

for.cond431:                                      ; preds = %for.inc503, %if.else429
  %457 = load i32, ptr %i__, align 4
  %458 = load i32, ptr %i__1, align 4
  %cmp432 = icmp sge i32 %457, %458
  br i1 %cmp432, label %for.body433, label %for.end505

for.body433:                                      ; preds = %for.cond431
  %459 = load ptr, ptr %z__.addr, align 8
  %460 = load i32, ptr %i__, align 4
  %add434 = add nsw i32 %460, 1
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds float, ptr %459, i64 %idxprom435
  %461 = load float, ptr %arrayidx436, align 4
  %cmp437 = fcmp oeq float %461, 0.000000e+00
  br i1 %cmp437, label %if.then438, label %if.else452

if.then438:                                       ; preds = %for.body433
  %462 = load ptr, ptr %ld.addr, align 8
  %463 = load i32, ptr %i__, align 4
  %add439 = add nsw i32 %463, 1
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds float, ptr %462, i64 %idxprom440
  %464 = load float, ptr %arrayidx441, align 4
  %465 = load ptr, ptr %ld.addr, align 8
  %466 = load i32, ptr %i__, align 4
  %idxprom442 = sext i32 %466 to i64
  %arrayidx443 = getelementptr inbounds float, ptr %465, i64 %idxprom442
  %467 = load float, ptr %arrayidx443, align 4
  %div444 = fdiv float %464, %467
  %fneg445 = fneg float %div444
  %468 = load ptr, ptr %z__.addr, align 8
  %469 = load i32, ptr %i__, align 4
  %add446 = add nsw i32 %469, 2
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds float, ptr %468, i64 %idxprom447
  %470 = load float, ptr %arrayidx448, align 4
  %mul449 = fmul float %fneg445, %470
  %471 = load ptr, ptr %z__.addr, align 8
  %472 = load i32, ptr %i__, align 4
  %idxprom450 = sext i32 %472 to i64
  %arrayidx451 = getelementptr inbounds float, ptr %471, i64 %idxprom450
  store float %mul449, ptr %arrayidx451, align 4
  br label %if.end463

if.else452:                                       ; preds = %for.body433
  %473 = load ptr, ptr %work.addr, align 8
  %474 = load i32, ptr %indlpl, align 4
  %475 = load i32, ptr %i__, align 4
  %add453 = add nsw i32 %474, %475
  %idxprom454 = sext i32 %add453 to i64
  %arrayidx455 = getelementptr inbounds float, ptr %473, i64 %idxprom454
  %476 = load float, ptr %arrayidx455, align 4
  %477 = load ptr, ptr %z__.addr, align 8
  %478 = load i32, ptr %i__, align 4
  %add456 = add nsw i32 %478, 1
  %idxprom457 = sext i32 %add456 to i64
  %arrayidx458 = getelementptr inbounds float, ptr %477, i64 %idxprom457
  %479 = load float, ptr %arrayidx458, align 4
  %mul459 = fmul float %476, %479
  %fneg460 = fneg float %mul459
  %480 = load ptr, ptr %z__.addr, align 8
  %481 = load i32, ptr %i__, align 4
  %idxprom461 = sext i32 %481 to i64
  %arrayidx462 = getelementptr inbounds float, ptr %480, i64 %idxprom461
  store float %fneg460, ptr %arrayidx462, align 4
  br label %if.end463

if.end463:                                        ; preds = %if.else452, %if.then438
  %482 = load ptr, ptr %z__.addr, align 8
  %483 = load i32, ptr %i__, align 4
  %idxprom464 = sext i32 %483 to i64
  %arrayidx465 = getelementptr inbounds float, ptr %482, i64 %idxprom464
  %484 = load float, ptr %arrayidx465, align 4
  store float %484, ptr %r__1, align 4
  %485 = load float, ptr %r__1, align 4
  %cmp466 = fcmp oge float %485, 0.000000e+00
  br i1 %cmp466, label %cond.true467, label %cond.false468

cond.true467:                                     ; preds = %if.end463
  %486 = load float, ptr %r__1, align 4
  br label %cond.end470

cond.false468:                                    ; preds = %if.end463
  %487 = load float, ptr %r__1, align 4
  %fneg469 = fneg float %487
  br label %cond.end470

cond.end470:                                      ; preds = %cond.false468, %cond.true467
  %cond471 = phi float [ %486, %cond.true467 ], [ %fneg469, %cond.false468 ]
  %488 = load ptr, ptr %z__.addr, align 8
  %489 = load i32, ptr %i__, align 4
  %add472 = add nsw i32 %489, 1
  %idxprom473 = sext i32 %add472 to i64
  %arrayidx474 = getelementptr inbounds float, ptr %488, i64 %idxprom473
  %490 = load float, ptr %arrayidx474, align 4
  store float %490, ptr %r__2, align 4
  %491 = load float, ptr %r__2, align 4
  %cmp475 = fcmp oge float %491, 0.000000e+00
  br i1 %cmp475, label %cond.true476, label %cond.false477

cond.true476:                                     ; preds = %cond.end470
  %492 = load float, ptr %r__2, align 4
  br label %cond.end479

cond.false477:                                    ; preds = %cond.end470
  %493 = load float, ptr %r__2, align 4
  %fneg478 = fneg float %493
  br label %cond.end479

cond.end479:                                      ; preds = %cond.false477, %cond.true476
  %cond480 = phi float [ %492, %cond.true476 ], [ %fneg478, %cond.false477 ]
  %add481 = fadd float %cond471, %cond480
  %494 = load ptr, ptr %ld.addr, align 8
  %495 = load i32, ptr %i__, align 4
  %idxprom482 = sext i32 %495 to i64
  %arrayidx483 = getelementptr inbounds float, ptr %494, i64 %idxprom482
  %496 = load float, ptr %arrayidx483, align 4
  store float %496, ptr %r__3, align 4
  %497 = load float, ptr %r__3, align 4
  %cmp484 = fcmp oge float %497, 0.000000e+00
  br i1 %cmp484, label %cond.true485, label %cond.false486

cond.true485:                                     ; preds = %cond.end479
  %498 = load float, ptr %r__3, align 4
  br label %cond.end488

cond.false486:                                    ; preds = %cond.end479
  %499 = load float, ptr %r__3, align 4
  %fneg487 = fneg float %499
  br label %cond.end488

cond.end488:                                      ; preds = %cond.false486, %cond.true485
  %cond489 = phi float [ %498, %cond.true485 ], [ %fneg487, %cond.false486 ]
  %mul490 = fmul float %add481, %cond489
  %500 = load ptr, ptr %gaptol.addr, align 8
  %501 = load float, ptr %500, align 4
  %cmp491 = fcmp olt float %mul490, %501
  br i1 %cmp491, label %if.then492, label %if.end497

if.then492:                                       ; preds = %cond.end488
  %502 = load ptr, ptr %z__.addr, align 8
  %503 = load i32, ptr %i__, align 4
  %idxprom493 = sext i32 %503 to i64
  %arrayidx494 = getelementptr inbounds float, ptr %502, i64 %idxprom493
  store float 0.000000e+00, ptr %arrayidx494, align 4
  %504 = load i32, ptr %i__, align 4
  %add495 = add nsw i32 %504, 1
  %505 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx496 = getelementptr inbounds i32, ptr %505, i64 1
  store i32 %add495, ptr %arrayidx496, align 4
  br label %L240

if.end497:                                        ; preds = %cond.end488
  %506 = load ptr, ptr %z__.addr, align 8
  %507 = load i32, ptr %i__, align 4
  %idxprom498 = sext i32 %507 to i64
  %arrayidx499 = getelementptr inbounds float, ptr %506, i64 %idxprom498
  %508 = load float, ptr %arrayidx499, align 4
  %509 = load ptr, ptr %z__.addr, align 8
  %510 = load i32, ptr %i__, align 4
  %idxprom500 = sext i32 %510 to i64
  %arrayidx501 = getelementptr inbounds float, ptr %509, i64 %idxprom500
  %511 = load float, ptr %arrayidx501, align 4
  %512 = load ptr, ptr %ztz.addr, align 8
  %513 = load float, ptr %512, align 4
  %514 = call float @llvm.fmuladd.f32(float %508, float %511, float %513)
  store float %514, ptr %512, align 4
  br label %for.inc503

for.inc503:                                       ; preds = %if.end497
  %515 = load i32, ptr %i__, align 4
  %dec504 = add nsw i32 %515, -1
  store i32 %dec504, ptr %i__, align 4
  br label %for.cond431, !llvm.loop !14

for.end505:                                       ; preds = %for.cond431
  br label %L240

L240:                                             ; preds = %for.end505, %if.then492
  br label %if.end506

if.end506:                                        ; preds = %L240, %L220
  %516 = load i32, ptr %sawnan1, align 4
  %tobool507 = icmp ne i32 %516, 0
  br i1 %tobool507, label %if.else569, label %land.lhs.true508

land.lhs.true508:                                 ; preds = %if.end506
  %517 = load i32, ptr %sawnan2, align 4
  %tobool509 = icmp ne i32 %517, 0
  br i1 %tobool509, label %if.else569, label %if.then510

if.then510:                                       ; preds = %land.lhs.true508
  %518 = load ptr, ptr %bn.addr, align 8
  %519 = load i32, ptr %518, align 4
  %sub511 = sub nsw i32 %519, 1
  store i32 %sub511, ptr %i__1, align 4
  %520 = load ptr, ptr %r__.addr, align 8
  %521 = load i32, ptr %520, align 4
  store i32 %521, ptr %i__, align 4
  br label %for.cond512

for.cond512:                                      ; preds = %for.inc566, %if.then510
  %522 = load i32, ptr %i__, align 4
  %523 = load i32, ptr %i__1, align 4
  %cmp513 = icmp sle i32 %522, %523
  br i1 %cmp513, label %for.body514, label %for.end568

for.body514:                                      ; preds = %for.cond512
  %524 = load ptr, ptr %work.addr, align 8
  %525 = load i32, ptr %indumn, align 4
  %526 = load i32, ptr %i__, align 4
  %add515 = add nsw i32 %525, %526
  %idxprom516 = sext i32 %add515 to i64
  %arrayidx517 = getelementptr inbounds float, ptr %524, i64 %idxprom516
  %527 = load float, ptr %arrayidx517, align 4
  %528 = load ptr, ptr %z__.addr, align 8
  %529 = load i32, ptr %i__, align 4
  %idxprom518 = sext i32 %529 to i64
  %arrayidx519 = getelementptr inbounds float, ptr %528, i64 %idxprom518
  %530 = load float, ptr %arrayidx519, align 4
  %mul520 = fmul float %527, %530
  %fneg521 = fneg float %mul520
  %531 = load ptr, ptr %z__.addr, align 8
  %532 = load i32, ptr %i__, align 4
  %add522 = add nsw i32 %532, 1
  %idxprom523 = sext i32 %add522 to i64
  %arrayidx524 = getelementptr inbounds float, ptr %531, i64 %idxprom523
  store float %fneg521, ptr %arrayidx524, align 4
  %533 = load ptr, ptr %z__.addr, align 8
  %534 = load i32, ptr %i__, align 4
  %idxprom525 = sext i32 %534 to i64
  %arrayidx526 = getelementptr inbounds float, ptr %533, i64 %idxprom525
  %535 = load float, ptr %arrayidx526, align 4
  store float %535, ptr %r__1, align 4
  %536 = load float, ptr %r__1, align 4
  %cmp527 = fcmp oge float %536, 0.000000e+00
  br i1 %cmp527, label %cond.true528, label %cond.false529

cond.true528:                                     ; preds = %for.body514
  %537 = load float, ptr %r__1, align 4
  br label %cond.end531

cond.false529:                                    ; preds = %for.body514
  %538 = load float, ptr %r__1, align 4
  %fneg530 = fneg float %538
  br label %cond.end531

cond.end531:                                      ; preds = %cond.false529, %cond.true528
  %cond532 = phi float [ %537, %cond.true528 ], [ %fneg530, %cond.false529 ]
  %539 = load ptr, ptr %z__.addr, align 8
  %540 = load i32, ptr %i__, align 4
  %add533 = add nsw i32 %540, 1
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx535 = getelementptr inbounds float, ptr %539, i64 %idxprom534
  %541 = load float, ptr %arrayidx535, align 4
  store float %541, ptr %r__2, align 4
  %542 = load float, ptr %r__2, align 4
  %cmp536 = fcmp oge float %542, 0.000000e+00
  br i1 %cmp536, label %cond.true537, label %cond.false538

cond.true537:                                     ; preds = %cond.end531
  %543 = load float, ptr %r__2, align 4
  br label %cond.end540

cond.false538:                                    ; preds = %cond.end531
  %544 = load float, ptr %r__2, align 4
  %fneg539 = fneg float %544
  br label %cond.end540

cond.end540:                                      ; preds = %cond.false538, %cond.true537
  %cond541 = phi float [ %543, %cond.true537 ], [ %fneg539, %cond.false538 ]
  %add542 = fadd float %cond532, %cond541
  %545 = load ptr, ptr %ld.addr, align 8
  %546 = load i32, ptr %i__, align 4
  %idxprom543 = sext i32 %546 to i64
  %arrayidx544 = getelementptr inbounds float, ptr %545, i64 %idxprom543
  %547 = load float, ptr %arrayidx544, align 4
  store float %547, ptr %r__3, align 4
  %548 = load float, ptr %r__3, align 4
  %cmp545 = fcmp oge float %548, 0.000000e+00
  br i1 %cmp545, label %cond.true546, label %cond.false547

cond.true546:                                     ; preds = %cond.end540
  %549 = load float, ptr %r__3, align 4
  br label %cond.end549

cond.false547:                                    ; preds = %cond.end540
  %550 = load float, ptr %r__3, align 4
  %fneg548 = fneg float %550
  br label %cond.end549

cond.end549:                                      ; preds = %cond.false547, %cond.true546
  %cond550 = phi float [ %549, %cond.true546 ], [ %fneg548, %cond.false547 ]
  %mul551 = fmul float %add542, %cond550
  %551 = load ptr, ptr %gaptol.addr, align 8
  %552 = load float, ptr %551, align 4
  %cmp552 = fcmp olt float %mul551, %552
  br i1 %cmp552, label %if.then553, label %if.end558

if.then553:                                       ; preds = %cond.end549
  %553 = load ptr, ptr %z__.addr, align 8
  %554 = load i32, ptr %i__, align 4
  %add554 = add nsw i32 %554, 1
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds float, ptr %553, i64 %idxprom555
  store float 0.000000e+00, ptr %arrayidx556, align 4
  %555 = load i32, ptr %i__, align 4
  %556 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx557 = getelementptr inbounds i32, ptr %556, i64 2
  store i32 %555, ptr %arrayidx557, align 4
  br label %L260

if.end558:                                        ; preds = %cond.end549
  %557 = load ptr, ptr %z__.addr, align 8
  %558 = load i32, ptr %i__, align 4
  %add559 = add nsw i32 %558, 1
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds float, ptr %557, i64 %idxprom560
  %559 = load float, ptr %arrayidx561, align 4
  %560 = load ptr, ptr %z__.addr, align 8
  %561 = load i32, ptr %i__, align 4
  %add562 = add nsw i32 %561, 1
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds float, ptr %560, i64 %idxprom563
  %562 = load float, ptr %arrayidx564, align 4
  %563 = load ptr, ptr %ztz.addr, align 8
  %564 = load float, ptr %563, align 4
  %565 = call float @llvm.fmuladd.f32(float %559, float %562, float %564)
  store float %565, ptr %563, align 4
  br label %for.inc566

for.inc566:                                       ; preds = %if.end558
  %566 = load i32, ptr %i__, align 4
  %inc567 = add nsw i32 %566, 1
  store i32 %inc567, ptr %i__, align 4
  br label %for.cond512, !llvm.loop !15

for.end568:                                       ; preds = %for.cond512
  br label %L260

L260:                                             ; preds = %for.end568, %if.then553
  br label %if.end648

if.else569:                                       ; preds = %land.lhs.true508, %if.end506
  %567 = load ptr, ptr %bn.addr, align 8
  %568 = load i32, ptr %567, align 4
  %sub570 = sub nsw i32 %568, 1
  store i32 %sub570, ptr %i__1, align 4
  %569 = load ptr, ptr %r__.addr, align 8
  %570 = load i32, ptr %569, align 4
  store i32 %570, ptr %i__, align 4
  br label %for.cond571

for.cond571:                                      ; preds = %for.inc645, %if.else569
  %571 = load i32, ptr %i__, align 4
  %572 = load i32, ptr %i__1, align 4
  %cmp572 = icmp sle i32 %571, %572
  br i1 %cmp572, label %for.body573, label %for.end647

for.body573:                                      ; preds = %for.cond571
  %573 = load ptr, ptr %z__.addr, align 8
  %574 = load i32, ptr %i__, align 4
  %idxprom574 = sext i32 %574 to i64
  %arrayidx575 = getelementptr inbounds float, ptr %573, i64 %idxprom574
  %575 = load float, ptr %arrayidx575, align 4
  %cmp576 = fcmp oeq float %575, 0.000000e+00
  br i1 %cmp576, label %if.then577, label %if.else592

if.then577:                                       ; preds = %for.body573
  %576 = load ptr, ptr %ld.addr, align 8
  %577 = load i32, ptr %i__, align 4
  %sub578 = sub nsw i32 %577, 1
  %idxprom579 = sext i32 %sub578 to i64
  %arrayidx580 = getelementptr inbounds float, ptr %576, i64 %idxprom579
  %578 = load float, ptr %arrayidx580, align 4
  %579 = load ptr, ptr %ld.addr, align 8
  %580 = load i32, ptr %i__, align 4
  %idxprom581 = sext i32 %580 to i64
  %arrayidx582 = getelementptr inbounds float, ptr %579, i64 %idxprom581
  %581 = load float, ptr %arrayidx582, align 4
  %div583 = fdiv float %578, %581
  %fneg584 = fneg float %div583
  %582 = load ptr, ptr %z__.addr, align 8
  %583 = load i32, ptr %i__, align 4
  %sub585 = sub nsw i32 %583, 1
  %idxprom586 = sext i32 %sub585 to i64
  %arrayidx587 = getelementptr inbounds float, ptr %582, i64 %idxprom586
  %584 = load float, ptr %arrayidx587, align 4
  %mul588 = fmul float %fneg584, %584
  %585 = load ptr, ptr %z__.addr, align 8
  %586 = load i32, ptr %i__, align 4
  %add589 = add nsw i32 %586, 1
  %idxprom590 = sext i32 %add589 to i64
  %arrayidx591 = getelementptr inbounds float, ptr %585, i64 %idxprom590
  store float %mul588, ptr %arrayidx591, align 4
  br label %if.end603

if.else592:                                       ; preds = %for.body573
  %587 = load ptr, ptr %work.addr, align 8
  %588 = load i32, ptr %indumn, align 4
  %589 = load i32, ptr %i__, align 4
  %add593 = add nsw i32 %588, %589
  %idxprom594 = sext i32 %add593 to i64
  %arrayidx595 = getelementptr inbounds float, ptr %587, i64 %idxprom594
  %590 = load float, ptr %arrayidx595, align 4
  %591 = load ptr, ptr %z__.addr, align 8
  %592 = load i32, ptr %i__, align 4
  %idxprom596 = sext i32 %592 to i64
  %arrayidx597 = getelementptr inbounds float, ptr %591, i64 %idxprom596
  %593 = load float, ptr %arrayidx597, align 4
  %mul598 = fmul float %590, %593
  %fneg599 = fneg float %mul598
  %594 = load ptr, ptr %z__.addr, align 8
  %595 = load i32, ptr %i__, align 4
  %add600 = add nsw i32 %595, 1
  %idxprom601 = sext i32 %add600 to i64
  %arrayidx602 = getelementptr inbounds float, ptr %594, i64 %idxprom601
  store float %fneg599, ptr %arrayidx602, align 4
  br label %if.end603

if.end603:                                        ; preds = %if.else592, %if.then577
  %596 = load ptr, ptr %z__.addr, align 8
  %597 = load i32, ptr %i__, align 4
  %idxprom604 = sext i32 %597 to i64
  %arrayidx605 = getelementptr inbounds float, ptr %596, i64 %idxprom604
  %598 = load float, ptr %arrayidx605, align 4
  store float %598, ptr %r__1, align 4
  %599 = load float, ptr %r__1, align 4
  %cmp606 = fcmp oge float %599, 0.000000e+00
  br i1 %cmp606, label %cond.true607, label %cond.false608

cond.true607:                                     ; preds = %if.end603
  %600 = load float, ptr %r__1, align 4
  br label %cond.end610

cond.false608:                                    ; preds = %if.end603
  %601 = load float, ptr %r__1, align 4
  %fneg609 = fneg float %601
  br label %cond.end610

cond.end610:                                      ; preds = %cond.false608, %cond.true607
  %cond611 = phi float [ %600, %cond.true607 ], [ %fneg609, %cond.false608 ]
  %602 = load ptr, ptr %z__.addr, align 8
  %603 = load i32, ptr %i__, align 4
  %add612 = add nsw i32 %603, 1
  %idxprom613 = sext i32 %add612 to i64
  %arrayidx614 = getelementptr inbounds float, ptr %602, i64 %idxprom613
  %604 = load float, ptr %arrayidx614, align 4
  store float %604, ptr %r__2, align 4
  %605 = load float, ptr %r__2, align 4
  %cmp615 = fcmp oge float %605, 0.000000e+00
  br i1 %cmp615, label %cond.true616, label %cond.false617

cond.true616:                                     ; preds = %cond.end610
  %606 = load float, ptr %r__2, align 4
  br label %cond.end619

cond.false617:                                    ; preds = %cond.end610
  %607 = load float, ptr %r__2, align 4
  %fneg618 = fneg float %607
  br label %cond.end619

cond.end619:                                      ; preds = %cond.false617, %cond.true616
  %cond620 = phi float [ %606, %cond.true616 ], [ %fneg618, %cond.false617 ]
  %add621 = fadd float %cond611, %cond620
  %608 = load ptr, ptr %ld.addr, align 8
  %609 = load i32, ptr %i__, align 4
  %idxprom622 = sext i32 %609 to i64
  %arrayidx623 = getelementptr inbounds float, ptr %608, i64 %idxprom622
  %610 = load float, ptr %arrayidx623, align 4
  store float %610, ptr %r__3, align 4
  %611 = load float, ptr %r__3, align 4
  %cmp624 = fcmp oge float %611, 0.000000e+00
  br i1 %cmp624, label %cond.true625, label %cond.false626

cond.true625:                                     ; preds = %cond.end619
  %612 = load float, ptr %r__3, align 4
  br label %cond.end628

cond.false626:                                    ; preds = %cond.end619
  %613 = load float, ptr %r__3, align 4
  %fneg627 = fneg float %613
  br label %cond.end628

cond.end628:                                      ; preds = %cond.false626, %cond.true625
  %cond629 = phi float [ %612, %cond.true625 ], [ %fneg627, %cond.false626 ]
  %mul630 = fmul float %add621, %cond629
  %614 = load ptr, ptr %gaptol.addr, align 8
  %615 = load float, ptr %614, align 4
  %cmp631 = fcmp olt float %mul630, %615
  br i1 %cmp631, label %if.then632, label %if.end637

if.then632:                                       ; preds = %cond.end628
  %616 = load ptr, ptr %z__.addr, align 8
  %617 = load i32, ptr %i__, align 4
  %add633 = add nsw i32 %617, 1
  %idxprom634 = sext i32 %add633 to i64
  %arrayidx635 = getelementptr inbounds float, ptr %616, i64 %idxprom634
  store float 0.000000e+00, ptr %arrayidx635, align 4
  %618 = load i32, ptr %i__, align 4
  %619 = load ptr, ptr %isuppz.addr, align 8
  %arrayidx636 = getelementptr inbounds i32, ptr %619, i64 2
  store i32 %618, ptr %arrayidx636, align 4
  br label %L280

if.end637:                                        ; preds = %cond.end628
  %620 = load ptr, ptr %z__.addr, align 8
  %621 = load i32, ptr %i__, align 4
  %add638 = add nsw i32 %621, 1
  %idxprom639 = sext i32 %add638 to i64
  %arrayidx640 = getelementptr inbounds float, ptr %620, i64 %idxprom639
  %622 = load float, ptr %arrayidx640, align 4
  %623 = load ptr, ptr %z__.addr, align 8
  %624 = load i32, ptr %i__, align 4
  %add641 = add nsw i32 %624, 1
  %idxprom642 = sext i32 %add641 to i64
  %arrayidx643 = getelementptr inbounds float, ptr %623, i64 %idxprom642
  %625 = load float, ptr %arrayidx643, align 4
  %626 = load ptr, ptr %ztz.addr, align 8
  %627 = load float, ptr %626, align 4
  %628 = call float @llvm.fmuladd.f32(float %622, float %625, float %627)
  store float %628, ptr %626, align 4
  br label %for.inc645

for.inc645:                                       ; preds = %if.end637
  %629 = load i32, ptr %i__, align 4
  %inc646 = add nsw i32 %629, 1
  store i32 %inc646, ptr %i__, align 4
  br label %for.cond571, !llvm.loop !16

for.end647:                                       ; preds = %for.cond571
  br label %L280

L280:                                             ; preds = %for.end647, %if.then632
  br label %if.end648

if.end648:                                        ; preds = %L280, %L260
  %630 = load ptr, ptr %ztz.addr, align 8
  %631 = load float, ptr %630, align 4
  %div649 = fdiv float 1.000000e+00, %631
  store float %div649, ptr %tmp, align 4
  %632 = load float, ptr %tmp, align 4
  %conv = fpext float %632 to double
  %call650 = call double @sqrt(double noundef %conv) #4
  %conv651 = fptrunc double %call650 to float
  %633 = load ptr, ptr %nrminv.addr, align 8
  store float %conv651, ptr %633, align 4
  %634 = load ptr, ptr %mingma.addr, align 8
  %635 = load float, ptr %634, align 4
  %cmp652 = fcmp oge float %635, 0.000000e+00
  br i1 %cmp652, label %cond.true654, label %cond.false655

cond.true654:                                     ; preds = %if.end648
  %636 = load ptr, ptr %mingma.addr, align 8
  %637 = load float, ptr %636, align 4
  br label %cond.end657

cond.false655:                                    ; preds = %if.end648
  %638 = load ptr, ptr %mingma.addr, align 8
  %639 = load float, ptr %638, align 4
  %fneg656 = fneg float %639
  br label %cond.end657

cond.end657:                                      ; preds = %cond.false655, %cond.true654
  %cond658 = phi float [ %637, %cond.true654 ], [ %fneg656, %cond.false655 ]
  %640 = load ptr, ptr %nrminv.addr, align 8
  %641 = load float, ptr %640, align 4
  %mul659 = fmul float %cond658, %641
  %642 = load ptr, ptr %resid.addr, align 8
  store float %mul659, ptr %642, align 4
  %643 = load ptr, ptr %mingma.addr, align 8
  %644 = load float, ptr %643, align 4
  %645 = load float, ptr %tmp, align 4
  %mul660 = fmul float %644, %645
  %646 = load ptr, ptr %rqcorr.addr, align 8
  store float %mul660, ptr %646, align 4
  ret i32 0
}

declare float @slamch_(ptr noundef) #1

declare i32 @sisnan_(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!16 = distinct !{!16, !6}
