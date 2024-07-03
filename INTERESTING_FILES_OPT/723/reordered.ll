; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//723/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @v3p_netlib_ztrmm_(ptr nocapture writeonly %side, ptr nocapture writeonly %uplo, ptr nocapture readnone %diag, ptr nocapture readnone %m, i1 %tobool568, ptr nocapture readnone %i__, i1 %cmp600, ptr nocapture readnone %0, ptr nocapture writeonly %arrayidx735) local_unnamed_addr #0 {
entry:
  %i736 = getelementptr i8, ptr %arrayidx735, i64 8
  br i1 %tobool568, label %entry.split.us, label %for.cond557

entry.split.us:                                   ; preds = %entry
  br i1 %cmp600, label %entry.split.us.split.us, label %for.cond557.us

for.cond557:                                      ; preds = %entry, %for.cond557
  store volatile i32 0, ptr null, align 4294967296
  store double 0.000000e+00, ptr %i736, align 8
  br label %for.cond557

for.body601:                                      ; preds = %for.body601, %entry.split.us.split.us
  br label %for.body601

entry.split.us.split.us:                          ; preds = %entry.split.us
  store i64 0, ptr %uplo, align 8
  store i64 0, ptr %side, align 8
  br label %for.body601

for.cond557.us:                                   ; preds = %entry.split.us, %for.cond557.us
  store i64 0, ptr %uplo, align 8
  store double 0.000000e+00, ptr %i736, align 8
  br label %for.cond557.us
}

attributes #0 = { nofree norecurse noreturn nounwind }
