; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_BoomerAMGCoarsenCGCb(ptr %S, ptr %0, i32 %1) {
entry:
  br label %for.cond48

for.cond48:                                       ; preds = %for.body51, %entry
  %i4.0 = phi i32 [ 0, %entry ], [ %inc59, %for.body51 ]
  %cmp49 = icmp slt i32 %i4.0, %1
  br i1 %cmp49, label %for.body51, label %for.end60

for.body51:                                       ; preds = %for.cond48
  %2 = load i32, ptr %0, align 4
  %add57 = or i32 %2, 1
  store i32 %add57, ptr %S, align 4
  %inc59 = add i32 %i4.0, 1
  br label %for.cond48

for.end60:                                        ; preds = %for.cond48
  ret i32 0
}
