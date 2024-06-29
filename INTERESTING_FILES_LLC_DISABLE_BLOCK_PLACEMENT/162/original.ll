; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//162/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noalias noundef ptr @gk_gkmcoreCreate(ptr readnone %call2, i1 %cmp3) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne ptr %call2, null
  %brmerge.not = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %brmerge.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry
  ret ptr null
}

attributes #0 = { nofree norecurse nounwind }
