; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @cephes_gammasgn(double %x, ptr %retval, i1 %tobool.not) {
entry:
  %cmp2 = fcmp une double %x, 0.000000e+00
  %or.cond = select i1 %cmp2, i1 %tobool.not, i1 false
  br i1 %or.cond, label %common.ret, label %if.then5

common.ret:                                       ; preds = %if.then5, %entry
  ret double 0.000000e+00

if.then5:                                         ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  br label %common.ret
}
