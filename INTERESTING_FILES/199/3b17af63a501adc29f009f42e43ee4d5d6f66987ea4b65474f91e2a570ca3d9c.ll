; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @slahqr_(i32 %0, i64 %idxprom23) {
entry:
  %1 = icmp slt i32 %0, 0
  br i1 %1, label %for.body, label %for.end

for.body:                                         ; preds = %entry
  %arrayidx24 = getelementptr float, ptr null, i64 %idxprom23
  store float 0.000000e+00, ptr %arrayidx24, align 4
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 0
}