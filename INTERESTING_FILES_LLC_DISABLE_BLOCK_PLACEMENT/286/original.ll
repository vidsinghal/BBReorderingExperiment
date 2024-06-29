; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//286/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define noundef i32 @dns_sdlz_putrr(ptr %lookup, i32 %ttl, i1 %tobool26.not, i1 %cmp.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %lor.rhs, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = load i32, ptr null, align 4294967296
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs, %entry
  tail call void null(ptr null, i32 0, i32 0, ptr null)
  unreachable

lor.end:                                          ; preds = %land.rhs
  br i1 %tobool26.not, label %lor.rhs27, label %lor.end28

lor.rhs27:                                        ; preds = %lor.end
  tail call void null(ptr null, i32 0, i32 0, ptr null)
  unreachable

lor.end28:                                        ; preds = %lor.end
  %call44 = tail call i32 null()
  store ptr %lookup, ptr null, align 4294967296
  store i32 %ttl, ptr null, align 4294967296
  ret i32 0
}

attributes #0 = { null_pointer_is_valid }
