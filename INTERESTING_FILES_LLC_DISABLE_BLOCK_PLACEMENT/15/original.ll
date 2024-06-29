; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//15/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @test_simde_mm512_packus_epi16(i1 %cmp, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %for.body.preheader, label %cleanup17

for.body.preheader:                               ; preds = %entry
  br i1 %tobool.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.preheader
  %call143.us = load volatile i32, ptr null, align 4294967296
  br label %cleanup17

for.body:                                         ; preds = %for.body.preheader, %for.body
  %call143 = load volatile i32, ptr null, align 4294967296
  br label %for.body

cleanup17:                                        ; preds = %for.body.us, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind }
