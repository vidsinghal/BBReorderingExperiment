; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define i32 @FLA_Axpy_internal(ptr byval(%struct.FLA_Obj_view) %A, i1 %cmp) {
entry:
  %call1 = call i32 @FLA_Check_error_level()
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call13 = load volatile i32, ptr %A, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call114 = load volatile ptr, ptr null, align 8
  %call1356 = call i32 @FLA_Axpy_internal(ptr null, i1 false)
  ret i32 0
}

declare i32 @FLA_Check_error_level()
