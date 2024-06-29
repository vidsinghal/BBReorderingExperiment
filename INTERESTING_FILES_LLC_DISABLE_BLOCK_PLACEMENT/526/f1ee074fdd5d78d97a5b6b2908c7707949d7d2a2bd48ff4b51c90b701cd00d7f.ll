; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Lyap_h_opt_var2(i32 %call1) #0 {
entry:
  switch i32 %call1, label %sw.epilog [
    i32 100, label %sw.bb
    i32 1, label %common.ret
  ]

sw.bb:                                            ; preds = %entry
  %call94 = load volatile i32, ptr null, align 4
  br label %sw.epilog

common.ret:                                       ; preds = %sw.epilog, %entry
  %common.ret.op = phi i32 [ 1, %sw.epilog ], [ 0, %entry ]
  ret i32 %common.ret.op

sw.epilog:                                        ; preds = %sw.bb, %entry
  br label %common.ret
}

attributes #0 = { "tune-cpu"="znver2" }
