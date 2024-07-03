; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//357/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @ctrsyl3_(ptr nocapture writeonly %trana, ptr nocapture writeonly %tranb, ptr nocapture readnone %isgn, ptr nocapture readnone %q__1, float %0, float %div820, float %mul821, i1 %cmp822, i32 %1, i1 %cmp827) local_unnamed_addr #0 {
entry:
  %fneg = fneg float %0
  br i1 %cmp822, label %entry.split.us, label %for.cond690

for.cond690:                                      ; preds = %entry, %for.cond690
  store float %fneg, ptr %trana, align 4
  %call894 = tail call i32 @cgemm_()
  br label %for.cond690

for.body829:                                      ; preds = %for.body829, %entry.split.us.split.us
  br label %for.body829

for.cond690.us:                                   ; preds = %entry.split.us, %for.cond690.us
  store float %fneg, ptr %trana, align 4
  %call894.us = tail call i32 @cgemm_()
  br label %for.cond690.us

entry.split.us:                                   ; preds = %entry
  br i1 %cmp827, label %entry.split.us.split.us, label %for.cond690.us

entry.split.us.split.us:                          ; preds = %entry.split.us
  store i32 0, ptr %trana, align 4
  store i32 0, ptr %tranb, align 4
  br label %for.body829
}

declare i32 @cgemm_() local_unnamed_addr

attributes #0 = { noreturn }
