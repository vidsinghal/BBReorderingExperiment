; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//16/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @dptsvx_(ptr nocapture writeonly %fact, i32 %0, i1 %cmp15) local_unnamed_addr {
entry:
  %cmp = icmp sgt i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp15, i1 false
  br i1 %brmerge.not, label %if.then16, label %if.end35

if.then16:                                        ; preds = %entry
  store i32 0, ptr %fact, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then16, %entry
  %call60 = tail call double @dlanst_()
  ret i32 0
}

declare double @dlanst_() local_unnamed_addr
