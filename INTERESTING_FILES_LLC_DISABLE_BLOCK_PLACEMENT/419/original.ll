; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//419/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i32 0, 2) i32 @bt_struct_rw(ptr nocapture readonly %definition, i32 %call) local_unnamed_addr {
entry:
  %call.fr = freeze i32 %call
  %tobool.not = icmp eq i32 %call.fr, 0
  %0 = load i32, ptr %definition, align 8
  %cmp.not.us1 = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.split.us, label %for.cond

entry.split.us:                                   ; preds = %entry
  br i1 %cmp.not.us1, label %cleanup3, label %for.body.us

for.body.us:                                      ; preds = %entry.split.us, %for.body.us
  %call3.us = tail call i32 @generic_rw()
  %1 = load i32, ptr %definition, align 8
  %cmp.not.us = icmp eq i32 %1, 0
  br i1 %cmp.not.us, label %cleanup3, label %for.body.us

for.cond:                                         ; preds = %entry
  br i1 %cmp.not.us1, label %cleanup3, label %for.body

for.body:                                         ; preds = %for.cond
  %call3 = tail call i32 @generic_rw()
  br label %cleanup3

cleanup3:                                         ; preds = %for.body.us, %for.cond, %for.body, %entry.split.us
  %.us-phi = phi i32 [ 0, %entry.split.us ], [ 1, %for.body ], [ 0, %for.cond ], [ 0, %for.body.us ]
  ret i32 %.us-phi
}

declare i32 @generic_rw() local_unnamed_addr
