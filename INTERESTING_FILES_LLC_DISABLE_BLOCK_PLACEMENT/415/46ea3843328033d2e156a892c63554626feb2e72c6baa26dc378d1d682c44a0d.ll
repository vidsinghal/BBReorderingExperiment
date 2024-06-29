; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @ComputeIncrementsForPlanar(i32 %Format, ptr %ComponentPointerIncrements) {
entry:
  %and = and i32 %Format, 7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ 1, %for.body ]
  %cmp4 = icmp ult i32 %i.0, %and
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %i.0 to i64
  %arrayidx = getelementptr i32, ptr %ComponentPointerIncrements, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}
