; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//177/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @umfzi_kernel(ptr nocapture readonly %Ax, ptr nocapture writeonly %Az, ptr nocapture writeonly %Work, i1 %tobool121.not) local_unnamed_addr {
entry:
  %fnrows_new = getelementptr i8, ptr %Work, i64 1424
  %tobool121.not.fr = freeze i1 %tobool121.not
  br i1 %tobool121.not.fr, label %for.cond.us, label %for.cond

for.cond.us:                                      ; preds = %entry
  %0 = load i32, ptr %Ax, align 4
  %cmp161.us = icmp slt i32 %0, 0
  br i1 %cmp161.us, label %for.body18.us, label %for.end117.us

for.end117.us:                                    ; preds = %for.body18.us, %for.cond.us
  %call1202.us = tail call i32 @umfzi_store_lu_drop()
  ret i32 0

for.body18.us:                                    ; preds = %for.cond.us, %for.body18.us
  store i32 0, ptr %Az, align 4
  %1 = load i32, ptr %Ax, align 4
  %cmp16.us = icmp slt i32 %1, 0
  br i1 %cmp16.us, label %for.body18.us, label %for.end117.us

for.cond:                                         ; preds = %entry, %for.end117
  %2 = load i32, ptr %Ax, align 4
  %cmp161 = icmp slt i32 %2, 0
  br i1 %cmp161, label %for.body18, label %for.end117

for.body18:                                       ; preds = %for.cond, %for.body18
  store i32 0, ptr %Az, align 4
  %3 = load i32, ptr %Ax, align 4
  %cmp16 = icmp slt i32 %3, 0
  br i1 %cmp16, label %for.body18, label %for.end117

for.end117:                                       ; preds = %for.body18, %for.cond
  %call1202 = tail call i32 @umfzi_store_lu_drop()
  store i32 0, ptr %fnrows_new, align 8
  br label %for.cond
}

declare i32 @umfzi_store_lu_drop() local_unnamed_addr
