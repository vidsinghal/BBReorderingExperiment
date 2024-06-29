; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_dscalv_zen2_ref(i64 %n, ptr %x, i1 %call) {
entry:
  %cmp14 = icmp sgt i64 %n, 0
  %or.cond = and i1 %cmp14, %call
  br i1 %or.cond, label %omp.inner.for.body, label %common.ret

common.ret:                                       ; preds = %omp.inner.for.body, %entry
  ret void

omp.inner.for.body:                               ; preds = %entry
  store double 0.000000e+00, ptr %x, align 8
  br label %common.ret
}
