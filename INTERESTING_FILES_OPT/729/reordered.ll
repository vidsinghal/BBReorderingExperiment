; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//729/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @libmetis__FM_2WayCutRefine(ptr nocapture %ctrl, ptr nocapture readnone %graph, ptr nocapture readnone %ntpwgts, i64 %niter, ptr nocapture readnone %ctrl.addr, ptr nocapture readnone %0, i64 %1, i1 %cmp102, ptr nocapture readnone %arrayidx127, ptr nocapture writeonly %2, i64 %3) local_unnamed_addr #0 {
entry:
  %cmp102.fr = freeze i1 %cmp102
  %cmp861 = icmp sgt i64 %niter, 0
  %arrayidx130 = getelementptr i64, ptr %2, i64 %3
  br i1 %cmp861, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp102.fr, label %for.cond.us.us, label %for.cond.us

entry.split:                                      ; preds = %entry
  store i64 1, ptr %ctrl, align 8
  br i1 %cmp102.fr, label %for.body104.lr.ph.split, label %for.cond

for.cond:                                         ; preds = %entry.split, %for.cond
  br label %for.cond

for.cond.us:                                      ; preds = %for.body88.us, %entry.split.us
  store i64 1, ptr %ctrl, align 8
  br label %for.body88.us

for.body104.lr.ph.split:                          ; preds = %for.body88.us.us, %entry.split
  store i64 0, ptr %arrayidx130, align 8
  br label %for.body104

for.body104:                                      ; preds = %for.body104, %for.body104.lr.ph.split
  br label %for.body104

for.body88.us.us:                                 ; preds = %for.body88.us.us, %for.cond.us.us
  %call100.us.us = tail call i32 @libmetis__rpqInsert()
  %.pre.us.us = load i64, ptr %ctrl, align 8
  %cmp86.us.us = icmp sgt i64 %.pre.us.us, 0
  br i1 %cmp86.us.us, label %for.body88.us.us, label %for.body104.lr.ph.split

for.body88.us:                                    ; preds = %for.cond.us, %for.body88.us
  %call100.us = tail call i32 @libmetis__rpqInsert()
  %.pre.us = load i64, ptr %ctrl, align 8
  %cmp86.us = icmp sgt i64 %.pre.us, 0
  br i1 %cmp86.us, label %for.body88.us, label %for.cond.us

for.cond.us.us:                                   ; preds = %entry.split.us
  store i64 1, ptr %ctrl, align 8
  br label %for.body88.us.us
}

declare i32 @libmetis__rpqInsert() local_unnamed_addr

attributes #0 = { noreturn }
