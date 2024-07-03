; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//278/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define noundef i32 @hypre_AMR_CFCoarsen(ptr nocapture writeonly %fac_A, i1 %cmp136, i1 %cmp153) local_unnamed_addr #0 {
entry:
  br i1 %cmp136, label %for.body138.lr.ph, label %for.cond756

for.body181:                                      ; preds = %for.body181, %for.body181.lr.ph.split
  br label %for.body181

for.cond756:                                      ; preds = %entry, %for.cond756
  br label %for.cond756

for.body138.lr.ph:                                ; preds = %entry
  br i1 %cmp153, label %for.body181.lr.ph.split, label %for.body138

for.body138:                                      ; preds = %for.body138.lr.ph, %for.body138
  br label %for.body138

for.body181.lr.ph.split:                          ; preds = %for.body138.lr.ph
  store i32 0, ptr %fac_A, align 4
  br label %for.body181
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
