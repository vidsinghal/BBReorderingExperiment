; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @umfpack_zi_get_numeric(ptr %P, i32 %0, ptr %1) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cmp34 = icmp slt i32 %k.0, %0
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %k.0 to i64
  %arrayidx = getelementptr i32, ptr %1, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %P, align 4
  %inc = add i32 %k.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}
