; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//235/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @inflateBackInit_(ptr writeonly %strm, i1 %cmp5.not) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne ptr %strm, null
  %or.cond = and i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end, label %common.ret

if.end:                                           ; preds = %entry
  store ptr null, ptr %strm, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
