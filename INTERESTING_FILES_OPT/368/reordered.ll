; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//368/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @PyDict_Next() local_unnamed_addr

; Function Attrs: noreturn
define noundef i32 @__Pyx_ParseOptionalKeywords(ptr nocapture readnone %argnames, i1 %tobool15.not, i64 %sub.ptr.sub, ptr nocapture readonly %name.1) local_unnamed_addr #0 {
entry:
  %arrayidx22 = getelementptr i8, ptr null, i64 %sub.ptr.sub
  %tobool15.not.fr = freeze i1 %tobool15.not
  br i1 %tobool15.not.fr, label %while.cond.us, label %while.cond

while.cond.us:                                    ; preds = %entry, %while.cond.us
  %call9.us = tail call i32 @PyDict_Next()
  store ptr poison, ptr %arrayidx22, align 8
  br label %while.cond.us

while.cond:                                       ; preds = %entry
  %call9 = tail call i32 @PyDict_Next()
  unreachable
}

attributes #0 = { noreturn }
