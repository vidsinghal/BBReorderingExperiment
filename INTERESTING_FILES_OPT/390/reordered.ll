; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//390/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @set_cwd() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
define void @report(ptr nocapture readonly %args, ptr readnone %0, ptr nocapture readnone %1, i1 %tobool82.not, ptr %2) local_unnamed_addr #1 {
entry:
  %.pr1 = load i32, ptr %args, align 4
  %cmp42.not2 = icmp eq i32 %.pr1, 0
  br i1 %cmp42.not2, label %for.end, label %for.condthread-pre-split.split.lr.ph

for.cond:                                         ; preds = %for.condthread-pre-split.split.lr.ph, %for.cond
  br label %for.cond

for.end:                                          ; preds = %for.condthread-pre-split.split, %for.condthread-pre-split.split.us, %entry
  ret void

for.condthread-pre-split.split.lr.ph:             ; preds = %entry
  %tobool49.not = icmp eq ptr %0, null
  %arrayidx92 = getelementptr i8, ptr %2, i64 8
  %ncnt106 = getelementptr i8, ptr %args, i64 192
  br i1 %tobool49.not, label %for.condthread-pre-split.split.lr.ph.split, label %for.cond

for.condthread-pre-split.split.us:                ; preds = %for.condthread-pre-split.split.lr.ph.split, %for.condthread-pre-split.split.us
  %3 = load i32, ptr %ncnt106, align 4
  %call109.us = tail call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr %arrayidx92, double 0.000000e+00, double 0.000000e+00, i32 %3)
  %.pr.us = load i32, ptr %args, align 4
  %cmp42.not.us = icmp eq i32 %.pr.us, 0
  br i1 %cmp42.not.us, label %for.end, label %for.condthread-pre-split.split.us

for.condthread-pre-split.split:                   ; preds = %for.condthread-pre-split.split.lr.ph.split, %for.condthread-pre-split.split
  %4 = load ptr, ptr %args, align 8
  %5 = load i32, ptr %ncnt106, align 4
  %call109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr %4, double 0.000000e+00, double 0.000000e+00, i32 %5)
  %.pr = load i32, ptr %args, align 4
  %cmp42.not = icmp eq i32 %.pr, 0
  br i1 %cmp42.not, label %for.end, label %for.condthread-pre-split.split

for.condthread-pre-split.split.lr.ph.split:       ; preds = %for.condthread-pre-split.split.lr.ph
  br i1 %tobool82.not, label %for.condthread-pre-split.split.us, label %for.condthread-pre-split.split
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { nofree nounwind }
