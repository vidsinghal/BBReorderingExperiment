; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//355/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn null_pointer_is_valid
define noundef i32 @main(i32 %call29, i32 %0) local_unnamed_addr #0 {
entry:
  %cond = icmp ne i32 %call29, 0
  %cmp46.not = icmp eq i32 %0, 0
  %or.cond = select i1 %cond, i1 true, i1 %cmp46.not
  br i1 %or.cond, label %sw.bb51, label %if.then48

sw.bb51:                                          ; preds = %if.then48, %entry
  store volatile i32 0, ptr null, align 4294967296
  unreachable

if.then48:                                        ; preds = %entry
  %call49 = tail call i32 (ptr, ptr, ...) null(ptr null, ptr null, ptr null, i32 0)
  br label %sw.bb51
}

attributes #0 = { noreturn null_pointer_is_valid }
