; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//487/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @vtkexodusII_ex_add_attr(i32 %exoid) local_unnamed_addr {
entry:
  tail call void @vtkexodusII_ex_get_err()
  switch i32 %exoid, label %if.end31 [
    i32 0, label %sw.bb
    i32 -1006, label %if.then23
  ]

if.end31:                                         ; preds = %entry
  %call33 = tail call ptr @vtkexodusII_ex_name_of_object(i32 0)
  ret i32 0

if.then23:                                        ; preds = %entry
  %call24 = tail call ptr @vtkexodusII_ex_name_of_object(i32 0)
  unreachable

sw.bb:                                            ; preds = %entry
  %call43 = tail call ptr @vtkexodusII_ex__catstr()
  unreachable
}

declare void @vtkexodusII_ex_get_err() local_unnamed_addr

declare ptr @vtkexodusII_ex_name_of_object(i32) local_unnamed_addr

declare ptr @vtkexodusII_ex__catstr() local_unnamed_addr
