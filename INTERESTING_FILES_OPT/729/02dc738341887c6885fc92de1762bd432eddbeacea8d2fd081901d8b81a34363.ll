; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @libmetis__FM_2WayCutRefine(ptr %ctrl, ptr %graph, ptr %ntpwgts, i64 %niter, ptr %ctrl.addr, ptr %0, i64 %1, i1 %cmp102, ptr %arrayidx127, ptr %2, i64 %3) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond101, %entry
  store i64 1, ptr %ctrl, align 8
  br label %for.cond85

for.cond85:                                       ; preds = %for.body88, %for.cond
  %4 = phi i64 [ %.pre, %for.body88 ], [ %niter, %for.cond ]
  %cmp86 = icmp sgt i64 %4, 0
  br i1 %cmp86, label %for.body88, label %for.cond101

for.body88:                                       ; preds = %for.cond85
  %call100 = call i32 @libmetis__rpqInsert()
  %.pre = load i64, ptr %ctrl, align 8
  br label %for.cond85

for.cond101:                                      ; preds = %for.body104, %for.cond85
  br i1 %cmp102, label %for.body104, label %for.cond

for.body104:                                      ; preds = %for.cond101
  %arrayidx130 = getelementptr i64, ptr %2, i64 %3
  store i64 0, ptr %arrayidx130, align 8
  br label %for.cond101
}

declare void @libmetis__irandArrayPermute()

declare i32 @libmetis__rpqInsert()
