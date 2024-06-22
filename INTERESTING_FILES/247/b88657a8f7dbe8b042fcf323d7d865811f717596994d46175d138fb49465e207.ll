; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @ht_visit(ptr %visitor, ptr %0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true, %for.cond, %entry
  %i.0 = phi i64 [ 0, %entry ], [ 1, %land.lhs.true ], [ 1, %for.cond ]
  %arrayidx = getelementptr ptr, ptr %0, i64 %i.0
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  call void %visitor(ptr null, ptr null)
  br label %for.cond
}
