; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @bisect(i64 %0, i1 %cmp16, i1 %cmp11) {
entry:
  %cmp7 = icmp sgt i64 %0, 0
  br i1 %cmp7, label %common.ret, label %for.cond

common.ret:                                       ; preds = %for.cond, %entry
  ret double 0.000000e+00

for.cond:                                         ; preds = %for.body, %entry
  %xa.addr.04 = phi double [ %spec.select, %for.body ], [ 1.000000e+00, %entry ]
  br i1 %cmp11, label %for.body, label %common.ret

for.body:                                         ; preds = %for.cond
  %spec.select = select i1 %cmp16, double 0.000000e+00, double %xa.addr.04
  br label %for.cond
}
