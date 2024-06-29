; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define i32 @FLA_Trmm_lut_unb_var2(i64 %call3, i1 %cmp8.not) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.then, %while.body, %entry
  %call31 = load volatile i64, ptr null, align 8
  %cmp = icmp eq i64 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i32 @FLA_Repart_2x2_to_3x3(ptr null, ptr null, ptr null)
  br i1 %cmp8.not, label %while.cond, label %if.then

if.then:                                          ; preds = %while.body
  %call9 = load volatile i32, ptr null, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @FLA_Repart_2x2_to_3x3(ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view))
