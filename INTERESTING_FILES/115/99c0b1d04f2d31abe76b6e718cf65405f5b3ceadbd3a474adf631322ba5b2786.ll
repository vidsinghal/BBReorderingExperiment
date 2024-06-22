; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define i32 @FLA_Trmm_lut_unb_var2(i1 %cmp.not) {
entry:
  br i1 %cmp.not, label %common.ret, label %while.body

common.ret:                                       ; preds = %while.body, %entry
  ret i32 0

while.body:                                       ; preds = %entry
  %call7 = call i32 @FLA_Ger_external(ptr null, ptr null, ptr null)
  br label %common.ret
}

declare i32 @FLA_Ger_external(ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view))
