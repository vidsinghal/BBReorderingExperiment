; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//698/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @TXT_DB_read(i32 %num, i1 %cmp43.not, i1 %cmp74, ptr nocapture readnone %call98, i1 %cmp99) local_unnamed_addr {
entry:
  %cmp99.fr = freeze i1 %cmp99
  %cmp43.not.fr = freeze i1 %cmp43.not
  br i1 %cmp43.not.fr, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp74, label %for.cond42.us.us, label %for.cond42.outer.split.us.split.us3.lr.ph

for.cond42.outer.split.us.split.us3.lr.ph:        ; preds = %entry.split.us
  br i1 %cmp99.fr, label %if.then101, label %for.cond42.outer.split.us.split.us3

for.cond42.outer.split.us.split.us3:              ; preds = %for.cond42.outer.split.us.split.us3.lr.ph, %for.cond42.outer.split.us.split.us3
  %call987.us = tail call ptr @CRYPTO_malloc()
  br label %for.cond42.outer.split.us.split.us3

entry.split:                                      ; preds = %entry
  br i1 %cmp74, label %for.cond42, label %if.end77.split.lr.ph

if.end77.split.lr.ph:                             ; preds = %entry.split
  br i1 %cmp99.fr, label %if.then101, label %if.end77.split

for.cond42.us.us:                                 ; preds = %entry.split.us, %for.cond42.us.us
  br label %for.cond42.us.us

for.cond42:                                       ; preds = %entry.split, %for.cond42
  br label %for.cond42

if.end77.split:                                   ; preds = %if.end77.split.lr.ph, %if.end77.split
  %call987 = tail call ptr @CRYPTO_malloc()
  br label %if.end77.split

if.then101:                                       ; preds = %if.end77.split.lr.ph, %for.cond42.outer.split.us.split.us3.lr.ph
  %call987.us.us = tail call ptr @CRYPTO_malloc()
  ret ptr null
}

declare ptr @CRYPTO_malloc() local_unnamed_addr
