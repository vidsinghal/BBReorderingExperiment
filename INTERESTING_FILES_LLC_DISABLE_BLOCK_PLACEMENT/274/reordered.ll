; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//274/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i64 @cs_cl_reach(ptr readonly %G, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  %tobool6.not = icmp eq ptr %G, null
  %or.cond = or i1 %tobool6.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %G, align 8
  br label %cleanup
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }
