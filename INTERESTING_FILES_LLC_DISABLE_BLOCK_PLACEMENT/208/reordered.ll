; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//208/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn null_pointer_is_valid
define noundef i32 @main(i1 %cmp, i1 %cmp1.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %if.then, label %if.end

if.end3:                                          ; preds = %if.end
  tail call void null()
  %call25 = tail call i32 (ptr, ptr, ...) null(ptr null, ptr null, ptr null, i32 0)
  tail call void @usage()
  unreachable

if.end:                                           ; preds = %entry
  %call = load volatile i32, ptr null, align 4294967296
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store volatile i32 0, ptr null, align 4294967296
  unreachable

if.then:                                          ; preds = %entry
  tail call void @usage()
  unreachable
}

; Function Attrs: noreturn null_pointer_is_valid
define void @usage() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ptr, ...) null(ptr null, ptr null)
  %call1 = tail call i32 (ptr, ptr, ...) null(ptr null, ptr null, ptr null)
  unreachable
}

attributes #0 = { noreturn null_pointer_is_valid }
