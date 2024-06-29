; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define i32 @FLA_Repart_2x1_to_3x1_check(i32 %side) #0 {
entry:
  %call2 = call i32 @FLA_Check_valid_object_datatype(ptr byval(%struct.FLA_Obj_view) null)
  switch i32 %side, label %common.ret [
    i32 0, label %if.then
    i32 1, label %if.then15
  ]

common.ret:                                       ; preds = %if.then15, %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  %call13 = call i32 @FLA_Check_error_code_helper()
  br label %common.ret

if.then15:                                        ; preds = %entry
  %call16 = load volatile i32, ptr null, align 4
  %call17 = call i32 @FLA_Check_error_code_helper()
  br label %common.ret
}

declare i32 @FLA_Check_valid_object_datatype(ptr)

declare i32 @FLA_Check_error_code_helper()

attributes #0 = { "target-cpu"="x86-64" }
