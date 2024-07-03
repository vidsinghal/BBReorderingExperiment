; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3p_netlib_doublecomplex = type { double, double }

define i32 @v3p_netlib_ztrmm_(ptr %side, ptr %uplo, ptr %diag, ptr %m, i1 %tobool568, ptr %i__, i1 %cmp600, ptr %0, ptr %arrayidx735) {
entry:
  br label %for.cond557

for.cond557:                                      ; preds = %if.end713, %entry
  br i1 %tobool568, label %if.then569, label %if.else644

if.then569:                                       ; preds = %for.cond557
  store i64 0, ptr %uplo, align 8
  br label %for.cond599

for.cond599:                                      ; preds = %for.body601, %if.then569
  %1 = load i64, ptr null, align 8
  br i1 %cmp600, label %for.body601, label %if.end713

for.body601:                                      ; preds = %for.cond599
  store i64 0, ptr %side, align 8
  br label %for.cond599

if.else644:                                       ; preds = %for.cond557
  store volatile i32 0, ptr null, align 4
  br label %if.end713

if.end713:                                        ; preds = %if.else644, %for.cond599
  %i736 = getelementptr %struct.v3p_netlib_doublecomplex, ptr %arrayidx735, i32 0, i32 1
  store double 0.000000e+00, ptr %i736, align 8
  br label %for.cond557
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare i64 @v3p_netlib_lsame_()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
