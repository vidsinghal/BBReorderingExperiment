; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @zla_lin_berr_(ptr %n) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond7, %entry
  %0 = load i32, ptr %n, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.body10, %for.cond
  %i__.0 = phi i32 [ 0, %for.cond ], [ 1, %for.body10 ]
  %cmp8.not = icmp sgt i32 %i__.0, %0
  br i1 %cmp8.not, label %for.cond, label %for.body10

for.body10:                                       ; preds = %for.cond7
  %call27 = call double @d_imag()
  br label %for.cond7
}

declare double @d_imag()
