; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//9/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define noundef i32 @_pcre_valid_utf(ptr nocapture writeonly %string, i1 %cmp9) local_unnamed_addr #0 {
entry:
  br i1 %cmp9, label %for.cond4.us, label %entry.split

for.cond4.us:                                     ; preds = %entry, %for.cond4.us
  br label %for.cond4.us

entry.split:                                      ; preds = %entry
  store i32 0, ptr %string, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4, %entry.split
  br label %for.cond4
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
