; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @v3p_netlib_lmder_(ptr %fcn, ptr %m, i1 %cmp406, i1 %cmp215, double %0) {
entry:
  br label %L200

L200:                                             ; preds = %if.then407, %for.end230, %entry
  %call213 = call i32 @v3p_netlib_lmpar_()
  br label %for.cond214

for.cond214:                                      ; preds = %for.body216, %L200
  br i1 %cmp215, label %for.body216, label %for.end230

for.body216:                                      ; preds = %for.cond214
  store double 0.000000e+00, ptr %fcn, align 8
  br label %for.cond214

for.end230:                                       ; preds = %for.cond214
  %call280 = call double @sqrt(double %0)
  br i1 %cmp406, label %if.then407, label %L200

if.then407:                                       ; preds = %for.end230
  store i64 0, ptr null, align 8
  br label %L200
}

declare i32 @v3p_netlib_lmpar_()

declare double @sqrt(double)
