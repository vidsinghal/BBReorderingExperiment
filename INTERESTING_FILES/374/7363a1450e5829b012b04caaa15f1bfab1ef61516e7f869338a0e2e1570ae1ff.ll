; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @writeny(i32 %n1, i32 %n2) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond2, %entry
  %j.01 = phi i32 [ 0, %entry ], [ %n2, %for.cond2 ]
  %cmp = icmp slt i32 %j.01, %n1
  br i1 %cmp, label %for.cond2, label %for.end22

for.cond2:                                        ; preds = %for.cond2, %for.cond
  %cmp3 = icmp sgt i32 %j.01, 0
  br i1 %cmp3, label %for.cond2, label %for.cond

for.end22:                                        ; preds = %for.cond
  ret void
}
