; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//41/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @__Pyx_ParseOptionalKeywords(ptr nocapture %argnames, i1 %tobool2.not, i64 %sub.ptr.sub) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr i8, ptr null, i64 %sub.ptr.sub
  %tobool2.not.fr = freeze i1 %tobool2.not
  br i1 %tobool2.not.fr, label %while.cond.us, label %while.cond

while.cond.us:                                    ; preds = %entry, %while.cond.us
  %call.us = tail call i32 @PyDict_Next()
  store ptr poison, ptr %arrayidx, align 8
  br label %while.cond.us

while.cond:                                       ; preds = %entry, %land.rhs.while.end_crit_edge.split
  %call = tail call i32 @PyDict_Next()
  %argnames.promoted = load ptr, ptr %argnames, align 8
  %cmp.not1 = icmp eq ptr %argnames.promoted, null
  br i1 %cmp.not1, label %land.rhs.while.end_crit_edge.split, label %while.body3.lr.ph

while.body3.lr.ph:                                ; preds = %while.cond
  store ptr null, ptr %argnames, align 8
  br label %land.rhs.while.end_crit_edge.split

land.rhs.while.end_crit_edge.split:               ; preds = %while.body3.lr.ph, %while.cond
  store ptr poison, ptr %arrayidx, align 8
  br label %while.cond
}

declare i32 @PyDict_Next() local_unnamed_addr

attributes #0 = { noreturn }
