; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @BLAS_stbsv_testgen(ptr %T, i1 %cmp18) {
entry:
  br i1 %cmp18, label %if.then20, label %for.cond

if.then20:                                        ; preds = %entry
  %call21 = load volatile double, ptr null, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then20, %entry
  %i.0 = phi i32 [ %inc, %for.cond ], [ 0, %if.then20 ], [ 0, %entry ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr float, ptr %T, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %inc = add nsw i32 %i.0, 1
  br label %for.cond
}
