; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//193/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @dggsvp_(ptr nocapture writeonly %m, ptr nocapture readnone %p, ptr nocapture readnone %ldb, ptr nocapture readnone %ldu, ptr nocapture readnone %ldv, ptr nocapture readnone %ldq, i32 %0, i1 %tobool66) local_unnamed_addr #0 {
entry:
  %cmp68 = icmp sgt i32 %0, 0
  %or.cond = select i1 %tobool66, i1 %cmp68, i1 false
  br i1 %or.cond, label %if.then69, label %common.ret

common.ret:                                       ; preds = %if.then69, %entry
  ret i32 0

if.then69:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
