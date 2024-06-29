; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dptcon_(ptr %n, ptr %work) {
entry:
  %0 = load i32, ptr %n, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.body23, %entry
  %i__.0 = phi i32 [ 0, %entry ], [ %inc34, %for.body23 ]
  %cmp22.not = icmp sgt i32 %i__.0, %0
  br i1 %cmp22.not, label %for.end35, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %1 = zext i32 %i__.0 to i64
  %2 = getelementptr double, ptr %work, i64 %1
  %3 = load double, ptr %2, align 8
  store double %3, ptr %work, align 8
  %inc34 = add nsw i32 %i__.0, 1
  br label %for.cond21

for.end35:                                        ; preds = %for.cond21
  %idxprom38 = sext i32 %0 to i64
  %arrayidx39 = getelementptr double, ptr null, i64 %idxprom38
  store double 0.000000e+00, ptr %arrayidx39, align 8
  br label %for.cond41

for.cond41:                                       ; preds = %for.cond41, %for.end35
  br label %for.cond41
}
