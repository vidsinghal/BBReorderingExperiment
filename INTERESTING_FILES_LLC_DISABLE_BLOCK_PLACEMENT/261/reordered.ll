; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//261/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef double @cs_di_cumsum(ptr writeonly %p, i1 %tobool1) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne ptr %p, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %common.ret

if.end:                                           ; preds = %entry
  store i32 0, ptr %p, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret double 0.000000e+00
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
