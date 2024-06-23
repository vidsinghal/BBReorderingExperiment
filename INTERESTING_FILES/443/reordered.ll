; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//443/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @rte_mem_virt2phy(i64 %0, i64 %and, i1 %cmp33) local_unnamed_addr #0 {
entry:
  br i1 %cmp33, label %cleanup, label %if.end36

cleanup:                                          ; preds = %if.end36, %entry
  %retval.0 = phi i64 [ %add, %if.end36 ], [ 0, %entry ]
  ret i64 %retval.0

if.end36:                                         ; preds = %entry
  %rem = urem i64 %and, %0
  %add = or i64 %rem, 1
  br label %cleanup
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "target-cpu"="znver2" }
