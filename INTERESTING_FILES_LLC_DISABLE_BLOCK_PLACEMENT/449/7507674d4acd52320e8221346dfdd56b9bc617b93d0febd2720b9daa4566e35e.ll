; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @SLIP_matrix_nnz(ptr %A, i1 %cond, i64 %0) {
entry:
  %cmp = icmp ne ptr %A, null
  %brmerge.not = select i1 %cmp, i1 %cond, i1 false
  %.mux = select i1 %cmp, i64 %0, i64 0
  br i1 %brmerge.not, label %sw.bb7, label %return

sw.bb7:                                           ; preds = %entry
  %1 = load i64, ptr %A, align 8
  br label %return

return:                                           ; preds = %sw.bb7, %entry
  %retval.0 = phi i64 [ %1, %sw.bb7 ], [ %.mux, %entry ]
  ret i64 %retval.0
}
