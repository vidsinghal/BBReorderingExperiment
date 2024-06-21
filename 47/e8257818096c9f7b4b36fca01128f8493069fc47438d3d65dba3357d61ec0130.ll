; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @cholmod_postorder(ptr %Weight, ptr %Common, ptr %0, i32 %1, ptr %2, i1 %cmp32, ptr %3) {
entry:
  %cmp27 = icmp sgt i32 %1, 0
  %brmerge.not = select i1 %cmp27, i1 %cmp32, i1 false
  br i1 %brmerge.not, label %for.cond, label %common.ret

common.ret:                                       ; preds = %entry
  ret i64 0

for.cond:                                         ; preds = %for.cond, %entry
  store i32 0, ptr %3, align 4
  br label %for.cond
}
