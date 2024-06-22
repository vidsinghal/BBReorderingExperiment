; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//91/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @umfpack_zi_get_numeric(ptr nocapture writeonly %P, i32 %0) local_unnamed_addr #0 {
entry:
  %cmp341 = icmp sgt i32 %0, 0
  br i1 %cmp341, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp34.not = icmp eq i32 %0, 1
  br i1 %cmp34.not, label %for.cond.for.end_crit_edge, label %for.body.us

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  br label %for.body.us

for.cond.for.end_crit_edge:                       ; preds = %for.body.lr.ph
  store i32 0, ptr %P, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
