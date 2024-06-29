; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//213/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @hypre_dorg2r(ptr nocapture writeonly %m, ptr nocapture readnone %n, ptr nocapture readnone %k, ptr nocapture readnone %info, i32 %0, i32 %1, i1 %cmp6) local_unnamed_addr #0 {
entry:
  %cmp3 = icmp slt i32 %0, 0
  %brmerge.not = select i1 %cmp3, i1 %cmp6, i1 false
  br i1 %brmerge.not, label %if.then9, label %common.ret

common.ret:                                       ; preds = %if.then9, %entry
  ret i32 0

if.then9:                                         ; preds = %entry
  store i32 1, ptr %m, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
