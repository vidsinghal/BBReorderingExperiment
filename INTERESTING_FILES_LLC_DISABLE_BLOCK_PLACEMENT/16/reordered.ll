; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//16/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @dptsvx_(ptr nocapture writeonly %n, i32 %0, i1 %cmp15) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %0, -1
  %brmerge.not = select i1 %cmp, i1 %cmp15, i1 false
  br i1 %brmerge.not, label %common.ret, label %common.ret.sink.split

common.ret:                                       ; preds = %entry, %common.ret.sink.split
  ret i32 0

common.ret.sink.split:                            ; preds = %entry
  store i32 0, ptr %n, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
