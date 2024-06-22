; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_dorg2r(ptr %k, ptr %a, ptr %lda, ptr %tau, ptr %info, i1 %cmp12, ptr %hypre_dorg2r.i__) {
entry:
  br i1 %cmp12, label %if.then13, label %for.cond83

if.then13:                                        ; preds = %entry
  store i32 0, ptr %a, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.cond83, %if.then13, %entry
  store double 0.000000e+00, ptr %k, align 8
  store i32 0, ptr %hypre_dorg2r.i__, align 4
  br label %for.cond83
}
