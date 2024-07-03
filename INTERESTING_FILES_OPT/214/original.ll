; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//214/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @refine(ptr nocapture writeonly %ptn, i1 %cmp45, i1 %cmp55, i1 %cmp72) local_unnamed_addr {
entry:
  %cmp72.fr = freeze i1 %cmp72
  %cmp55.fr5 = freeze i1 %cmp55
  br i1 %cmp45, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp55.fr5, label %while.cond.us.us, label %entry.split.us.split

while.cond.us.us:                                 ; preds = %entry.split.us
  store i32 0, ptr %ptn, align 4
  br i1 %cmp72.fr, label %for.inc.preheader, label %for.body89

entry.split.us.split:                             ; preds = %entry.split.us
  br i1 %cmp72.fr, label %while.cond.us.us6, label %while.cond.us

while.cond.us.us6:                                ; preds = %entry.split.us.split
  store i32 0, ptr %ptn, align 4
  %call57.us.us7 = tail call i32 @nextelement()
  br label %for.inc.lr.ph.split.sink.split

while.cond.us:                                    ; preds = %entry.split.us.split, %while.cond.us
  store i32 0, ptr %ptn, align 4
  %call57.us = tail call i32 @nextelement()
  br label %while.cond.us

entry.split:                                      ; preds = %entry
  br i1 %cmp72.fr, label %for.inc.lr.ph.split.sink.split, label %entry.split.split

entry.split.split:                                ; preds = %entry.split
  br i1 %cmp55.fr5, label %for.body89, label %while.cond

while.cond:                                       ; preds = %entry.split.split, %while.cond
  br label %while.cond

for.inc.lr.ph.split.sink.split:                   ; preds = %entry.split, %while.cond.us.us6
  store i32 0, ptr %ptn, align 4
  br label %for.inc.preheader

for.inc.preheader:                                ; preds = %for.inc.lr.ph.split.sink.split, %while.cond.us.us
  br label %for.inc

for.inc:                                          ; preds = %for.inc.preheader, %for.inc
  br label %for.inc

for.body89:                                       ; preds = %entry.split.split, %while.cond.us.us
  ret void
}

declare i32 @nextelement() local_unnamed_addr
