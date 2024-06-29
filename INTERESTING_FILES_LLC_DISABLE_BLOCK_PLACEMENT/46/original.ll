; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//46/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @xnn_define_unpooling_2d(i32 %pooling_height, i32 %pooling_width) local_unnamed_addr {
entry:
  switch i32 %pooling_width, label %if.end8 [
    i32 0, label %if.then2
    i32 1, label %if.then6
  ]

if.then2:                                         ; preds = %entry
  tail call void (ptr, ...) @xnn_log_error(ptr null, ptr null, i32 0, i32 %pooling_height)
  unreachable

if.then6:                                         ; preds = %entry
  %call7 = tail call ptr @xnn_node_type_to_string()
  unreachable

if.end8:                                          ; preds = %entry
  ret i32 0
}

declare void @xnn_log_error(ptr, ...) local_unnamed_addr

declare ptr @xnn_node_type_to_string() local_unnamed_addr
