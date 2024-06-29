; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @vtkexodusII_ex_get_side_set_node_count(ptr %ex_errval, ptr %0, i32 %1) {
entry:
  %call = call i32 @pthread_once()
  %call1 = load volatile i32, ptr null, align 4
  %call2 = load volatile ptr, ptr null, align 8
  store i32 0, ptr %0, align 4
  store i32 0, ptr %ex_errval, align 4
  store volatile i32 0, ptr null, align 4
  %call3 = load volatile i64, ptr null, align 8
  call void @vtkexodusII_ex_get_err(ptr null)
  switch i32 %1, label %if.end40 [
    i32 0, label %if.end48
    i32 -1006, label %if.then32
  ]

if.then32:                                        ; preds = %entry
  %call34 = call i32 (...) @snprintf()
  unreachable

if.end40:                                         ; preds = %entry
  %call42 = call i32 (...) @snprintf()
  unreachable

if.end48:                                         ; preds = %entry
  %call49 = call i64 @vtkexodusII_ex_inquire_int()
  unreachable
}

declare i32 @pthread_once()

declare i64 @vtkexodusII_ex_inquire_int()

declare i32 @snprintf(...)

declare void @vtkexodusII_ex_get_err(ptr)
