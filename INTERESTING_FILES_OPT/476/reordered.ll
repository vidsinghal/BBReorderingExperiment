; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//476/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i64 @vtklibharu_HPDF_Page_TextRect(ptr nocapture writeonly %page, ptr nocapture readnone %text, i32 %align, i1 %tobool110) local_unnamed_addr #0 {
entry:
  %align.fr = freeze i32 %align
  %tobool110.fr = freeze i1 %tobool110
  br i1 %tobool110.fr, label %entry.split.us, label %entry.split

for.cond.us1:                                     ; preds = %entry.split
  %call50.us2 = tail call i32 @vtklibharu_HPDF_Page_MeasureText()
  unreachable

for.cond.us.us:                                   ; preds = %entry.split.us, %for.cond.us.us
  %call50.us.us = tail call i32 @vtklibharu_HPDF_Page_MeasureText()
  store float 0.000000e+00, ptr %page, align 4
  %call114.us.us = load volatile i64, ptr null, align 4294967296
  br label %for.cond.us.us

for.cond.us.us13:                                 ; preds = %entry.split.us, %for.cond.us.us13
  %call50.us.us14 = tail call i32 @vtklibharu_HPDF_Page_MeasureText()
  br label %for.cond.us.us13

entry.split:                                      ; preds = %entry
  switch i32 %align.fr, label %for.cond [
    i32 1, label %for.cond.us1
    i32 0, label %for.cond.us8
  ]

for.cond.us8:                                     ; preds = %entry.split, %for.cond.us8
  %call50.us9 = tail call i32 @vtklibharu_HPDF_Page_MeasureText()
  br label %for.cond.us8

for.cond.us:                                      ; preds = %entry.split.us, %for.cond.us
  %call50.us = tail call i32 @vtklibharu_HPDF_Page_MeasureText()
  br label %for.cond.us

for.cond:                                         ; preds = %entry.split
  %call50 = tail call i32 @vtklibharu_HPDF_Page_MeasureText()
  unreachable

entry.split.us:                                   ; preds = %entry
  switch i32 %align.fr, label %for.cond.us [
    i32 1, label %for.cond.us.us
    i32 0, label %for.cond.us.us13
  ]
}

declare i32 @vtklibharu_HPDF_Page_MeasureText() local_unnamed_addr

attributes #0 = { noreturn }
