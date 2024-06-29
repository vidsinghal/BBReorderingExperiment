; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//137/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @OCSP_request_add0_id(ptr writeonly %req, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then6

cleanup:                                          ; preds = %if.then6, %entry
  ret ptr null

if.then6:                                         ; preds = %entry
  store ptr null, ptr %req, align 8
  br label %cleanup
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
