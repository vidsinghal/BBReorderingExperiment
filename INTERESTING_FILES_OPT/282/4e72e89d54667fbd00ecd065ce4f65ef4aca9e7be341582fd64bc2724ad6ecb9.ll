; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @zlanhe_(i32 %0, i1 %cmp5) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %1 = phi i32 [ %add16, %for.end ], [ 0, %entry ]
  br i1 %cmp5, label %for.cond6, label %if.end280

for.cond6:                                        ; preds = %for.body8, %for.cond
  %2 = phi i32 [ %inc, %for.body8 ], [ 0, %for.cond ]
  %cmp7.not = icmp sgt i32 %2, %1
  br i1 %cmp7.not, label %for.end, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %call10 = call double @z_abs()
  %inc = add i32 %2, 1
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  %add16 = or i32 %0, 1
  br label %for.cond

if.end280:                                        ; preds = %for.cond
  ret double 0.000000e+00
}

declare i32 @lsame_()

declare double @z_abs()

attributes #0 = { "no-trapping-math"="true" }
