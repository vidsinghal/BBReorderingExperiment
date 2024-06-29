; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//229/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define noundef double @bisect(i64 %0, i1 %cmp16, i1 %cmp11) local_unnamed_addr #0 {
entry:
  %cmp7 = icmp slt i64 %0, 1
  %brmerge.not = select i1 %cmp7, i1 %cmp11, i1 false
  br i1 %brmerge.not, label %for.body.lr.ph.split, label %common.ret

for.body:                                         ; preds = %for.body.lr.ph.split, %for.body
  br label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph.split, %for.body.us
  br label %for.body.us

common.ret:                                       ; preds = %entry
  ret double 0.000000e+00

for.body.lr.ph.split:                             ; preds = %entry
  %cmp16.fr = freeze i1 %cmp16
  br i1 %cmp16.fr, label %for.body.us, label %for.body
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
