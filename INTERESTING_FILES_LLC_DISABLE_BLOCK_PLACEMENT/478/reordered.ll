; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//478/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @src_process(ptr nocapture writeonly %data, ptr nocapture writeonly %input_frames, i64 %0, i1 %cmp22, i1 %cmp8) local_unnamed_addr #0 {
entry:
  br i1 %cmp8, label %common.ret, label %if.end10

common.ret:                                       ; preds = %2, %entry
  ret i32 0

1:                                                ; preds = %if.end10
  store i64 0, ptr %data, align 8
  br label %2

2:                                                ; preds = %1, %if.end10
  store i64 0, ptr %input_frames, align 8
  br label %common.ret

if.end10:                                         ; preds = %entry
  %cmp18 = icmp slt i64 %0, 0
  %3 = or i1 %cmp18, %cmp22
  br i1 %3, label %1, label %2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
