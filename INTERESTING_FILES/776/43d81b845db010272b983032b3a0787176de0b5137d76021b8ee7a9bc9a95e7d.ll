; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @vtklibproj_pj_qsfn(double %sinphi, i1 %cmp) {
entry:
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call = call double @log(double %sinphi)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry
  %retval.0 = phi double [ 0.000000e+00, %if.then ], [ 1.000000e+00, %entry ]
  ret double %retval.0
}

declare double @log(double)
