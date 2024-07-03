; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//258/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @topology_sysfs_get_node_props(ptr nocapture writeonly %props, i1 %cmp93, i32 %call64, i1 %cmp65, i32 %call71, i1 %cmp79, i1 %cmp86) local_unnamed_addr #0 {
entry:
  %NumIOLinks = getelementptr i8, ptr %props, i64 16
  br i1 %cmp65, label %while.cond.us, label %entry.split

while.cond:                                       ; preds = %entry.split.split.split.split, %while.cond
  %call713 = load volatile i32, ptr null, align 4294967296
  %call78 = tail call i32 @strcmp()
  %call85 = load volatile i32, ptr null, align 4294967296
  %call92 = load volatile i32, ptr null, align 4294967296
  br label %while.cond

while.cond.us:                                    ; preds = %entry, %while.cond.us
  br label %while.cond.us

while.cond.us3:                                   ; preds = %entry.split.split, %while.cond.us3
  %call713.us4 = load volatile i32, ptr null, align 4294967296
  %call78.us = tail call i32 @strcmp()
  br label %while.cond.us3

entry.split.split.split:                          ; preds = %entry.split.split
  %cmp86.fr = freeze i1 %cmp86
  br i1 %cmp86.fr, label %while.cond.us6, label %entry.split.split.split.split

entry.split:                                      ; preds = %entry
  %cmp72 = icmp eq i32 %call64, 0
  br i1 %cmp72, label %while.cond.us1, label %entry.split.split

while.cond.us6:                                   ; preds = %entry.split.split.split, %while.cond.us6
  %call713.us7 = load volatile i32, ptr null, align 4294967296
  %call78.us8 = tail call i32 @strcmp()
  %call85.us = load volatile i32, ptr null, align 4294967296
  br label %while.cond.us6

while.cond.us10:                                  ; preds = %entry.split.split.split.split, %while.cond.us10
  %call713.us11 = load volatile i32, ptr null, align 4294967296
  %call78.us12 = tail call i32 @strcmp()
  %call85.us13 = load volatile i32, ptr null, align 4294967296
  %call92.us = load volatile i32, ptr null, align 4294967296
  store i32 0, ptr %NumIOLinks, align 4
  br label %while.cond.us10

while.cond.us1:                                   ; preds = %entry.split, %while.cond.us1
  %call713.us = load volatile i32, ptr null, align 4294967296
  br label %while.cond.us1

entry.split.split.split.split:                    ; preds = %entry.split.split.split
  %cmp93.fr = freeze i1 %cmp93
  br i1 %cmp93.fr, label %while.cond.us10, label %while.cond

entry.split.split:                                ; preds = %entry.split
  %cmp79.fr = freeze i1 %cmp79
  br i1 %cmp79.fr, label %while.cond.us3, label %entry.split.split.split
}

declare i32 @strcmp() local_unnamed_addr

attributes #0 = { noreturn }
