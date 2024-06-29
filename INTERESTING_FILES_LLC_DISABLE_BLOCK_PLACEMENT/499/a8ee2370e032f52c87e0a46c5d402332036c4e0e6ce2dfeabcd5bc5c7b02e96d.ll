; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @cs_dl_qr(ptr %A, ptr %S, i64 %i.0) {
entry:
  %call1 = load volatile ptr, ptr null, align 8
  %0 = load i64, ptr null, align 8
  %arrayidx57 = getelementptr i64, ptr %call1, i64 %0
  store i64 0, ptr %arrayidx57, align 8
  %.pre = load i64, ptr %call1, align 8
  br label %for.cond71

for.cond71:                                       ; preds = %for.body75, %entry
  %1 = phi i64 [ %.pre, %entry ], [ %i.0, %for.body75 ]
  %i.02 = phi i64 [ 0, %entry ], [ %2, %for.body75 ]
  %cmp73 = icmp ne i64 %1, 0
  br i1 %cmp73, label %for.body75, label %for.end81

for.body75:                                       ; preds = %for.cond71
  store i64 %i.02, ptr %S, align 8
  %2 = load i64, ptr %A, align 8
  br label %for.cond71

for.end81:                                        ; preds = %for.cond71
  ret ptr null
}
