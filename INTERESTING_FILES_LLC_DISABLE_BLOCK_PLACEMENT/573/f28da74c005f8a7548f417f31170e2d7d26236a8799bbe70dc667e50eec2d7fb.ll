; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cholmod_l_realloc_multiple(i64 %nnew, i32 %nint, i32 %xtype, ptr %Iblock, ptr %Jblock, ptr %Xblock, ptr %Zblock, i1 %cmp11) {
entry:
  br i1 %cmp11, label %common.ret, label %sw.epilog

common.ret:                                       ; preds = %sw.bb73, %sw.bb70, %sw.bb69, %sw.epilog, %entry
  ret i32 0

sw.epilog:                                        ; preds = %entry
  switch i32 %nint, label %common.ret [
    i32 1, label %sw.bb69
    i32 2, label %sw.bb70
    i32 0, label %sw.bb73
  ]

sw.bb69:                                          ; preds = %sw.epilog
  store double 0.000000e+00, ptr %Zblock, align 8
  br label %common.ret

sw.bb70:                                          ; preds = %sw.epilog
  store double 0.000000e+00, ptr %Iblock, align 8
  br label %common.ret

sw.bb73:                                          ; preds = %sw.epilog
  store double 0.000000e+00, ptr %Iblock, align 8
  br label %common.ret
}
