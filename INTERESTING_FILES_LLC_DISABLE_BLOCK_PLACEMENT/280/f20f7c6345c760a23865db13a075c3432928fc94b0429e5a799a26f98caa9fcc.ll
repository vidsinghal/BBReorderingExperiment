; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2(i64 %call7) {
entry:
  %call71 = call i64 @min()
  %0 = inttoptr i64 %call7 to ptr
  switch i64 %call7, label %sw.bb [
    i64 1, label %sw.bb58
    i64 0, label %sw.bb60
  ]

common.ret:                                       ; preds = %sw.bb60, %sw.bb
  ret void

sw.bb:                                            ; preds = %entry
  store <2 x i64> zeroinitializer, ptr %0, align 16
  br label %common.ret

sw.bb58:                                          ; preds = %entry
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb58, %entry
  %oN.0 = phi ptr [ %0, %entry ], [ inttoptr (i64 1 to ptr), %sw.bb58 ]
  store <2 x i64> <i64 1, i64 1>, ptr %oN.0, align 16
  br label %common.ret
}

declare i64 @min()
