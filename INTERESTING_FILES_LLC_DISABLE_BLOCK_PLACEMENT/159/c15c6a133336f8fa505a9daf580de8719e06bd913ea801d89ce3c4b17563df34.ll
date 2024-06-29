; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = external constant [31 x i8]

define ptr @nn_err_strerror(i32 %errnum) {
entry:
  switch i32 %errnum, label %sw.default [
    i32 1, label %return
    i32 0, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  %call = load volatile ptr, ptr null, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry
  %retval.0 = phi ptr [ null, %sw.default ], [ null, %sw.bb1 ], [ @.str, %entry ]
  ret ptr %retval.0
}
