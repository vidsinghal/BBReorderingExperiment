; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//102/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define noundef i32 @dns_ecdb_register(ptr %mctx, i1 %cmp, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  tail call void null(ptr null, i32 0, i32 0, ptr null)
  unreachable

lor.end:                                          ; preds = %entry
  br i1 %tobool.not, label %lor.rhs13, label %land.rhs

land.rhs:                                         ; preds = %lor.end
  %0 = load ptr, ptr null, align 4294967296
  %cmp4.not = icmp eq ptr %0, null
  br i1 %cmp4.not, label %lor.end14, label %lor.rhs13

lor.rhs13:                                        ; preds = %land.rhs, %lor.end
  tail call void null(ptr null, i32 0, i32 0, ptr null)
  unreachable

lor.end14:                                        ; preds = %land.rhs
  %call = tail call i32 null(ptr null, ptr null, ptr null, ptr %mctx, ptr null)
  ret i32 0
}

attributes #0 = { null_pointer_is_valid }
