; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(i1 %tobool.not, ptr %0, ptr %call8) {
entry:
  br i1 %tobool.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call83 = call ptr @N_VNew_Serial()
  store double 0.000000e+00, ptr %0, align 8
  %1 = load ptr, ptr %call8, align 8
  store double 0.000000e+00, ptr %1, align 8
  br label %common.ret
}

declare ptr @N_VNew_Serial()
