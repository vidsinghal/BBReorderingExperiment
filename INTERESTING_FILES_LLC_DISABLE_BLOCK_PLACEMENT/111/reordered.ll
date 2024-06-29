; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//111/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @vtklibproj_pj_chamb(ptr writeonly %P, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %P, null
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %return, label %if.end3

return:                                           ; preds = %if.end3, %entry
  ret ptr null

if.end3:                                          ; preds = %entry
  store ptr null, ptr %P, align 8
  br label %return
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
