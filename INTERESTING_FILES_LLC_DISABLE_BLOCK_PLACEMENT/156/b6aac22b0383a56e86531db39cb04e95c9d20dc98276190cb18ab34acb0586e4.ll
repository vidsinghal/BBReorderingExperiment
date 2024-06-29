; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @hypre_LDUSolve(double %xx.1) {
entry:
  br label %for.cond28

for.cond28:                                       ; preds = %for.end65, %entry
  %.pre = phi i32 [ 0, %entry ], [ %2, %for.end65 ]
  br label %for.cond50

for.cond50:                                       ; preds = %for.body56, %for.cond28
  %j.1 = phi i32 [ 0, %for.cond28 ], [ %inc64, %for.body56 ]
  %xx.12 = phi double [ %xx.1, %for.cond28 ], [ %0, %for.body56 ]
  %cmp54 = icmp slt i32 %j.1, %.pre
  br i1 %cmp54, label %for.body56, label %for.end65

for.body56:                                       ; preds = %for.cond50
  %0 = fadd double %xx.12, 0.000000e+00
  %inc64 = add i32 %j.1, 1
  br label %for.cond50

for.end65:                                        ; preds = %for.cond50
  %1 = bitcast double %xx.12 to i64
  %2 = trunc i64 %1 to i32
  br label %for.cond28
}
