; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @lu_build_factors(ptr %this, ptr %0, i32 %1) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc71, %for.body ]
  %cmp57 = icmp slt i32 %i.0, %1
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %0, align 4
  store i32 %i.0, ptr %this, align 4
  %inc71 = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}
