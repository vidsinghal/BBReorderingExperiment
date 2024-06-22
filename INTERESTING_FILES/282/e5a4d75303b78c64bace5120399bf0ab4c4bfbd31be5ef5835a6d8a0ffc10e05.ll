; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @zlanhe_(i32 %0, i1 %cmp, double %cond) {
entry:
  br i1 %cmp, label %if.end280, label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %j.02 = phi i32 [ 0, %entry ], [ 1, %for.cond ]
  %cmp5.not = icmp sgt i32 %j.02, %0
  br i1 %cmp5.not, label %if.end280, label %for.cond

if.end280:                                        ; preds = %for.cond, %entry
  %value.1 = phi double [ %cond, %for.cond ], [ 0.000000e+00, %entry ]
  ret double %value.1
}
