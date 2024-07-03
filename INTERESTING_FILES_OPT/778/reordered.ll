; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//778/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @ssbgst_(i1 %cmp109, i1 %cmp996, i1 %cmp1016, i1 %cmp1022) local_unnamed_addr #0 {
entry:
  %cmp1016.fr = freeze i1 %cmp1016
  br i1 %cmp109, label %for.cond, label %for.end.lr.ph

for.body1018:                                     ; preds = %for.end.lr.ph.split.us.split, %for.body1018
  br label %for.body1018

for.cond1015.preheader:                           ; preds = %for.end.lr.ph.split.us.split, %for.cond1015.preheader
  br label %for.cond1015.preheader

for.end.lr.ph.split.us.split:                     ; preds = %for.end.lr.ph
  %call301.us.us712 = tail call i32 @sscal_()
  br i1 %cmp1016.fr, label %for.body1018, label %for.cond1015.preheader

for.cond:                                         ; preds = %entry, %for.cond
  br label %for.cond

for.end.lr.ph:                                    ; preds = %entry
  %cmp996.fr = freeze i1 %cmp996
  br i1 %cmp996.fr, label %for.end.lr.ph.split.us.split, label %for.end

for.end:                                          ; preds = %for.end.lr.ph, %for.end
  %call301 = tail call i32 @sscal_()
  br label %for.end
}

declare i32 @sscal_() local_unnamed_addr

attributes #0 = { noreturn }
