; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//448/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @ssbtrd_(ptr nocapture writeonly %vect, i32 %call, i32 %call7) local_unnamed_addr #0 {
entry:
  store i32 0, ptr %vect, align 4
  %cmp44 = icmp ne i32 %call, 0
  %cmp62 = icmp sgt i32 %call7, 0
  %or.cond = select i1 %cmp44, i1 %cmp62, i1 false
  br i1 %or.cond, label %common.ret, label %for.cond538.preheader

for.cond538.preheader:                            ; preds = %entry
  store float 0.000000e+00, ptr %vect, align 4
  br label %for.cond538

common.ret:                                       ; preds = %entry
  ret i32 0

for.cond538:                                      ; preds = %for.cond538.preheader, %for.cond538
  br label %for.cond538
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
