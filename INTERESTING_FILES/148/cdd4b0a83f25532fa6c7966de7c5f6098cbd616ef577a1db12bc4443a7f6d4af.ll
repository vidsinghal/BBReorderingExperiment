; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @BLAS_cgemm_c_s(i32 %m, ptr %c, i1 %cmp57) {
entry:
  %cmp56 = icmp eq i32 %m, 0
  %or.cond = or i1 %cmp56, %cmp57
  br i1 %or.cond, label %common.ret, label %lor.lhs.false58

common.ret:                                       ; preds = %lor.lhs.false58, %entry
  ret void

lor.lhs.false58:                                  ; preds = %entry
  store float 0.000000e+00, ptr %c, align 4
  br label %common.ret
}
