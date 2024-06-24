; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @scatter_partial_double_3(ptr %q, i64 %nx, i1 %cmp5.not) {
entry:
  %cmp2.not = icmp eq i64 %nx, 0
  %or.cond = or i1 %cmp2.not, %cmp5.not
  br i1 %or.cond, label %common.ret, label %for.body6

common.ret:                                       ; preds = %for.body6, %entry
  ret void

for.body6:                                        ; preds = %entry
  store double 1.000000e+00, ptr %q, align 8
  br label %common.ret
}
