; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hwloc_linux_set_tid_cpubind(i32 %call, i64 %0, i64 %div194) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %cond.true, %entry
  %cpu.0 = phi i32 [ 0, %entry ], [ %call, %cond.true ], [ %call, %for.cond ]
  %conv154 = zext i32 %cpu.0 to i64
  %cmp17 = icmp ult i64 %conv154, %0
  br i1 %cmp17, label %cond.true, label %for.cond

cond.true:                                        ; preds = %for.cond
  %arrayidx = getelementptr i64, ptr null, i64 %div194
  store i64 0, ptr %arrayidx, align 8
  br label %for.cond
}
