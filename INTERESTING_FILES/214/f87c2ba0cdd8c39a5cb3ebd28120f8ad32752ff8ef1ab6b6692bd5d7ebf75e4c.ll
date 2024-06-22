; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cheapautom(i32 %level, i1 %cmp, i1 %cmp1) {
entry:
  %tobool.not = icmp eq i32 %level, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %for.body, label %cleanup

for.body:                                         ; preds = %for.body, %entry
  br i1 %cmp1, label %while.cond, label %for.body

while.cond:                                       ; preds = %while.cond, %for.body
  br label %while.cond

cleanup:                                          ; preds = %entry
  ret i32 0
}
