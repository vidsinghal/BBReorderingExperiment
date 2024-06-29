; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//491/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define noundef i32 @FLA_Repart_2x1_to_3x1_check(i32 %side) local_unnamed_addr #0 {
entry:
  %call2 = tail call i32 @FLA_Check_valid_object_datatype(ptr byval(%struct.FLA_Obj_view) null)
  switch i32 %side, label %common.ret [
    i32 0, label %common.ret.sink.split
    i32 1, label %if.then15
  ]

common.ret.sink.split:                            ; preds = %entry, %if.then15
  %call17 = tail call i32 @FLA_Check_error_code_helper()
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %entry
  ret i32 0

if.then15:                                        ; preds = %entry
  %call16 = load volatile i32, ptr null, align 4294967296
  br label %common.ret.sink.split
}

declare i32 @FLA_Check_valid_object_datatype(ptr) local_unnamed_addr

declare i32 @FLA_Check_error_code_helper() local_unnamed_addr

attributes #0 = { "target-cpu"="x86-64" }
