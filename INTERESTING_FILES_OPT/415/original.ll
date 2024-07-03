; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//415/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define void @_cmsHandleExtraChannels(i32 %PixelsPerLine, i1 %cmp81, i1 %cmp84.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp81, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp84.not, label %for.cond83.preheader.us, label %for.body85

entry.split:                                      ; preds = %entry
  %cmp109.not = icmp eq i32 %PixelsPerLine, 0
  br i1 %cmp109.not, label %for.cond52, label %for.cond108

for.cond52:                                       ; preds = %entry.split, %for.cond52
  br label %for.cond52

for.cond83.preheader.us:                          ; preds = %entry.split.us, %for.cond83.preheader.us
  br label %for.cond83.preheader.us

for.body85:                                       ; preds = %entry.split.us, %for.body85
  store volatile ptr null, ptr null, align 4294967296
  br label %for.body85

for.cond108:                                      ; preds = %entry.split, %for.cond108
  br label %for.cond108
}

attributes #0 = { nofree norecurse noreturn nounwind }
