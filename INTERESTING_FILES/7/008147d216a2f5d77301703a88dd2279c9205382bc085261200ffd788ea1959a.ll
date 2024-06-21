; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @proj_inv_mdist() {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %phi.0 = phi double [ 0.000000e+00, %entry ], [ %sub10, %while.cond ]
  %call = call double @sin(double %phi.0)
  %sub10 = fadd double %phi.0, 1.000000e+00
  br label %while.cond
}

declare double @sin(double)
