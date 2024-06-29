; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @umfzi_kernel(i32 %0, i1 %tobool30.not, ptr %1) {
entry:
  %spec.select6 = select i1 %tobool30.not, i32 128, i32 1
  br label %for.cond33

for.cond33:                                       ; preds = %for.body36, %entry
  %j.07 = phi i32 [ 0, %entry ], [ %inc40, %for.body36 ]
  %cmp34 = icmp ult i32 %j.07, %spec.select6
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %idxprom38 = zext i32 %j.07 to i64
  %arrayidx39 = getelementptr [128 x i32], ptr %1, i64 0, i64 %idxprom38
  store i32 0, ptr %arrayidx39, align 4
  %inc40 = or i32 %0, 1
  br label %for.cond33

for.end:                                          ; preds = %for.cond33
  ret i32 0
}
