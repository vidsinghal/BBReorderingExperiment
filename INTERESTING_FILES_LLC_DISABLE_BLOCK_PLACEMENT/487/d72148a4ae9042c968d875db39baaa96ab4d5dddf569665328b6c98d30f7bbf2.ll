; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @vtkexodusII_ex_add_attr(i32 %exoid) {
entry:
  call void @vtkexodusII_ex_get_err()
  switch i32 %exoid, label %if.end31 [
    i32 0, label %sw.bb
    i32 -1006, label %if.then23
  ]

if.then23:                                        ; preds = %entry
  %call24 = call ptr @vtkexodusII_ex_name_of_object(i32 0)
  unreachable

if.end31:                                         ; preds = %entry
  %call33 = call ptr @vtkexodusII_ex_name_of_object(i32 0)
  ret i32 0

sw.bb:                                            ; preds = %entry
  %call43 = call ptr @vtkexodusII_ex__catstr()
  unreachable
}

declare void @vtkexodusII_ex_get_err()

declare ptr @vtkexodusII_ex_name_of_object(i32)

declare ptr @vtkexodusII_ex__catstr()
