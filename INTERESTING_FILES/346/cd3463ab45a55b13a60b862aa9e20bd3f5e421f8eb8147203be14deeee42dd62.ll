; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ztfsm_(ptr %m, i32 %0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond64, %entry
  br label %for.cond64

for.cond64:                                       ; preds = %for.body66, %for.cond
  %i__.0 = phi i32 [ 0, %for.cond ], [ 1, %for.body66 ]
  %cmp65.not.not = icmp slt i32 %i__.0, %0
  br i1 %cmp65.not.not, label %for.body66, label %for.cond

for.body66:                                       ; preds = %for.cond64
  store double 0.000000e+00, ptr %m, align 8
  br label %for.cond64
}
