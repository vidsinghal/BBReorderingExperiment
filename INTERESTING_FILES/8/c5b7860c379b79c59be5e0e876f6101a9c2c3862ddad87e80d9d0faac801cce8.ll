; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_strmv_unf_var2(i1 %call5, i1 %cmp) {
entry:
  %or.cond = and i1 %call5, %cmp
  br i1 %or.cond, label %for.body, label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry
  %call7 = load volatile i64, ptr null, align 8
  br label %common.ret
}
