; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @cholmod_postorder(i1 %cmp) {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  %common.ret.op = phi i64 [ 0, %if.end ], [ 1, %entry ]
  ret i64 %common.ret.op

if.end:                                           ; preds = %entry
  %call17 = load volatile i32, ptr null, align 4
  br label %common.ret
}
