; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//116/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @vtkexodusII_ex_get_side_set_node_count(ptr nocapture writeonly %ex_errval, ptr nocapture writeonly %0, i32 %1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_once()
  %call1 = load volatile i32, ptr null, align 4294967296
  %call2 = load volatile ptr, ptr null, align 4294967296
  store i32 0, ptr %0, align 4
  store i32 0, ptr %ex_errval, align 4
  store volatile i32 0, ptr null, align 4294967296
  %call3 = load volatile i64, ptr null, align 4294967296
  tail call void @vtkexodusII_ex_get_err(ptr null)
  switch i32 %1, label %if.end40 [
    i32 0, label %if.end48
    i32 -1006, label %if.then32
  ]

if.end40:                                         ; preds = %entry
  %call42 = tail call i32 (...) @snprintf()
  unreachable

if.then32:                                        ; preds = %entry
  %call34 = tail call i32 (...) @snprintf()
  unreachable

if.end48:                                         ; preds = %entry
  %call49 = tail call i64 @vtkexodusII_ex_inquire_int()
  unreachable
}

declare i32 @pthread_once() local_unnamed_addr

declare i64 @vtkexodusII_ex_inquire_int() local_unnamed_addr

declare i32 @snprintf(...) local_unnamed_addr

declare void @vtkexodusII_ex_get_err(ptr) local_unnamed_addr

attributes #0 = { noreturn }
