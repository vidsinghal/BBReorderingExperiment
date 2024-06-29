; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

define i32 @ctrttp_(ptr %n, ptr %ap, i32 %0) {
entry:
  br label %for.cond17

for.cond17:                                       ; preds = %for.body19, %entry
  %i__.0 = phi i32 [ 0, %entry ], [ %inc29, %for.body19 ]
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.body19 ]
  %cmp18.not = icmp sgt i32 %i__.0, %0
  br i1 %cmp18.not, label %for.end, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %inc = add i32 %k.0, 1
  %idxprom21 = sext i32 %k.0 to i64
  %arrayidx22 = getelementptr %struct.complex, ptr %ap, i64 %idxprom21
  store float 0.000000e+00, ptr %arrayidx22, align 4
  %1 = load float, ptr %n, align 4
  %i28 = getelementptr %struct.complex, ptr %ap, i64 %idxprom21, i32 1
  store float %1, ptr %i28, align 4
  %inc29 = add nsw i32 %i__.0, 1
  br label %for.cond17

for.end:                                          ; preds = %for.cond17
  ret i32 0
}
