; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//419/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i32 0, 2) i32 @bt_struct_rw(i1 %cmp, i1 %tobool.not) local_unnamed_addr {
entry:
  br i1 %cmp, label %for.body.preheader, label %cleanup3

cleanup3:                                         ; preds = %for.body.us, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 1, %for.body.us ]
  ret i32 %retval.2

for.body.us:                                      ; preds = %for.body.preheader
  %call4.us = tail call i32 @generic_rw()
  br label %cleanup3

for.body:                                         ; preds = %for.body.preheader, %for.body
  %call4 = tail call i32 @generic_rw()
  br label %for.body

for.body.preheader:                               ; preds = %entry
  %tobool.not.fr = freeze i1 %tobool.not
  br i1 %tobool.not.fr, label %for.body.us, label %for.body
}

declare i32 @generic_rw() local_unnamed_addr
