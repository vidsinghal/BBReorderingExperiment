; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_MGRDestroy(ptr %data, i32 %0) {
entry:
  br label %for.cond65

for.cond65:                                       ; preds = %for.body67, %entry
  %i.1 = phi i32 [ 2, %for.body67 ], [ 1, %entry ]
  %cmp66 = icmp slt i32 %i.1, %0
  br i1 %cmp66, label %for.body67, label %for.end76

for.body67:                                       ; preds = %for.cond65
  store ptr null, ptr %data, align 8
  br label %for.cond65

for.end76:                                        ; preds = %for.cond65
  ret i32 0
}
