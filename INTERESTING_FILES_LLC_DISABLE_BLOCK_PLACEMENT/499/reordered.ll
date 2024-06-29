; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//499/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noalias noundef ptr @cs_dl_qr(ptr nocapture readonly %A, ptr nocapture writeonly %S, i64 %i.0) local_unnamed_addr #0 {
entry:
  %call1 = load volatile ptr, ptr null, align 4294967296
  %arrayidx57 = getelementptr i64, ptr %call1, i64 undef
  store i64 0, ptr %arrayidx57, align 8
  %.pre = load i64, ptr %call1, align 8
  %cmp73.not1 = icmp eq i64 %.pre, 0
  br i1 %cmp73.not1, label %for.end81, label %for.body75.lr.ph

for.end81:                                        ; preds = %for.body75.us, %entry
  ret ptr null

for.body75.us:                                    ; preds = %for.body75.lr.ph
  store i64 0, ptr %S, align 8
  br label %for.end81

for.body75:                                       ; preds = %for.body75.lr.ph, %for.body75
  %i.022 = phi i64 [ %0, %for.body75 ], [ 0, %for.body75.lr.ph ]
  store i64 %i.022, ptr %S, align 8
  %0 = load i64, ptr %A, align 8
  br label %for.body75

for.body75.lr.ph:                                 ; preds = %entry
  %cmp73.not = icmp eq i64 %i.0, 0
  br i1 %cmp73.not, label %for.body75.us, label %for.body75
}

attributes #0 = { nofree norecurse nounwind }
