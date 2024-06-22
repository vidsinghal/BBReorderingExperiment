; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cspcon_(ptr %n, float %0, i1 %1) {
entry:
  %cmp7 = fcmp uge float %0, 0.000000e+00
  %cmp11.not = select i1 %cmp7, i1 %1, i1 false
  br i1 %cmp11.not, label %if.end14, label %common.ret

common.ret:                                       ; preds = %if.end14, %entry
  ret i32 0

if.end14:                                         ; preds = %entry
  store float 0.000000e+00, ptr %n, align 4
  br label %common.ret
}
