; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @v3p_netlib_srot_(ptr %sx, i64 %0, i64 %1) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i__.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %ix.0 = phi i64 [ 0, %entry ], [ %add27, %for.body ]
  %cmp17.not = icmp sgt i64 %i__.0, %0
  br i1 %cmp17.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr float, ptr %sx, i64 %ix.0
  store float 0.000000e+00, ptr %arrayidx26, align 4
  %add27 = add i64 %ix.0, %1
  %inc = add nsw i64 %i__.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}
