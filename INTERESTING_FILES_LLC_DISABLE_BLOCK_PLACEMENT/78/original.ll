; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//78/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noalias noundef ptr @lookup_translation(ptr nocapture writeonly %tmpl, i1 %cmp.not.old, i1 %cmp8.not, i1 %cond) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not.old, label %cleanup109, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br i1 %cond, label %for.body.preheader.split.us, label %for.body.preheader.split

for.body.preheader.split.us:                      ; preds = %for.body.preheader
  br i1 %cmp8.not, label %cleanup109, label %for.body.us

for.body.us:                                      ; preds = %for.body.preheader.split.us, %for.body.us
  br label %for.body.us

for.body.preheader.split:                         ; preds = %for.body.preheader
  br i1 %cmp8.not, label %cleanup107.thread, label %for.body

for.body:                                         ; preds = %for.body.preheader.split, %for.body
  br label %for.body

cleanup107.thread:                                ; preds = %for.body.preheader.split
  store i32 0, ptr %tmpl, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %for.body.preheader.split.us, %cleanup107.thread, %entry
  ret ptr null
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
