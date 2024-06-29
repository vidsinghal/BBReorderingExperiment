; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @umfdl_scale_column(i64 %0, i64 %mul20, ptr %1) #0 {
entry:
  %add.ptr = getelementptr double, ptr %1, i64 %0
  %add.ptr21 = getelementptr double, ptr %1, i64 %mul20
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %cmp22 = icmp slt i64 %i.0, %0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx23 = getelementptr double, ptr %add.ptr21, i64 %i.0
  %2 = load double, ptr %arrayidx23, align 8
  %arrayidx24 = getelementptr double, ptr %add.ptr, i64 %i.0
  store double %2, ptr %arrayidx24, align 8
  %inc = add i64 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { "target-cpu"="x86-64" }
