; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//216/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define void @xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4(i64 %channels, i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %for.body.us.preheader, label %for.cond.cleanup

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %i5.02.us = phi ptr [ %add.ptr77.us, %for.body.us ], [ %1, %for.body.us.preheader ]
  %b.01.us = phi ptr [ %add.ptr99.us, %for.body.us ], [ null, %for.body.us.preheader ]
  %0 = load i8, ptr %i5.02.us, align 1
  %conv76.us = zext i8 %0 to i32
  %add.ptr77.us = getelementptr i8, ptr %i5.02.us, i64 4
  store i32 %conv76.us, ptr %b.01.us, align 4
  %add.ptr99.us = getelementptr i8, ptr %b.01.us, i64 16
  br label %for.body.us

for.body.us.preheader:                            ; preds = %entry
  %1 = inttoptr i64 %channels to ptr
  br label %for.body.us

for.cond.cleanup:                                 ; preds = %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
