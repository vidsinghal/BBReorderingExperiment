; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @unur_test_quartiles() {
entry:
  %h1 = alloca [5 x double], align 16
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc, %entry
  %.pre1 = phi double [ 1.000000e+00, %entry ], [ %.pre, %for.inc ]
  %j.0 = phi i32 [ 0, %entry ], [ %inc.pre-phi, %for.inc ]
  %cmp56 = fcmp ogt double %.pre1, 0.000000e+00
  br i1 %cmp56, label %if.then58, label %for.cond48.for.inc_crit_edge

for.cond48.for.inc_crit_edge:                     ; preds = %for.cond48
  %.pre3 = add i32 %j.0, 1
  br label %for.inc

if.then58:                                        ; preds = %for.cond48
  %idxprom67 = sext i32 %j.0 to i64
  %arrayidx68 = getelementptr [5 x double], ptr %h1, i64 0, i64 %idxprom67
  store double 0.000000e+00, ptr %arrayidx68, align 8
  %.pre.pre = load double, ptr %h1, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then58, %for.cond48.for.inc_crit_edge
  %.pre = phi double [ %.pre1, %for.cond48.for.inc_crit_edge ], [ %.pre.pre, %if.then58 ]
  %inc.pre-phi = phi i32 [ %.pre3, %for.cond48.for.inc_crit_edge ], [ 0, %if.then58 ]
  br label %for.cond48
}
