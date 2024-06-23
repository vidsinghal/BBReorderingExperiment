; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//330/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @bam_parse_region(ptr nocapture writeonly %beg, i64 %0) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i64 %0, 2147483647
  br i1 %cmp, label %common.ret, label %lor.lhs.false

common.ret:                                       ; preds = %lor.lhs.false, %entry
  ret i32 0

lor.lhs.false:                                    ; preds = %entry
  store i32 0, ptr %beg, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
