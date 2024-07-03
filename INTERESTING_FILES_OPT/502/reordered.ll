; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//502/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @try_reduce_to_chain(ptr nocapture writeonly %seq1, ptr nocapture writeonly %st, i32 %0, i1 %cmp296) local_unnamed_addr #0 {
entry:
  %cmp296.fr = freeze i1 %cmp296
  %.fr = freeze i32 %0
  %cmp2861.not = icmp eq i32 %.fr, 0
  %seg299 = getelementptr i8, ptr %st, i64 32
  br i1 %cmp2861.not, label %entry.split, label %entry.split.us

entry.split.us:                                   ; preds = %entry
  br i1 %cmp296.fr, label %for.cond264.us.us, label %for.cond264.us

entry.split:                                      ; preds = %entry
  br i1 %cmp296.fr, label %for.cond264.us2, label %for.cond264

for.cond264.us.us:                                ; preds = %entry.split.us
  %call277.us.us = tail call i32 @reduce_to_chain()
  store i32 0, ptr %seq1, align 8
  br label %for.body298.lr.ph.split

for.cond264.us:                                   ; preds = %entry.split.us, %for.cond264.us
  %call277.us = tail call i32 @reduce_to_chain()
  store i32 0, ptr %seq1, align 8
  br label %for.cond264.us

for.cond264:                                      ; preds = %entry.split, %for.cond264
  %call277 = tail call i32 @reduce_to_chain()
  br label %for.cond264

for.body298:                                      ; preds = %for.body298, %for.body298.lr.ph.split
  br label %for.body298

for.body298.lr.ph.split:                          ; preds = %for.cond264.us.us, %for.cond264.us2
  store i32 0, ptr %seg299, align 8
  br label %for.body298

for.cond264.us2:                                  ; preds = %entry.split
  %call277.us3 = tail call i32 @reduce_to_chain()
  br label %for.body298.lr.ph.split
}

declare i32 @reduce_to_chain() local_unnamed_addr

attributes #0 = { noreturn }
