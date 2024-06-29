; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//242/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define noundef i32 @nvme_wait_for_completion_robust_lock_timeout_poll(ptr nocapture %status) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %status, align 8, !range !0, !noundef !1
  %tobool65 = trunc nuw i8 %0 to i1
  br i1 %tobool65, label %if.end67, label %if.then66

if.end67:                                         ; preds = %if.then66, %entry
  ret i32 0

if.then66:                                        ; preds = %entry
  store i8 1, ptr %status, align 1
  br label %if.end67
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }

!0 = !{i8 0, i8 2}
!1 = !{}
