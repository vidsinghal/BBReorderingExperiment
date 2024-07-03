; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//166/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @libmetis__ProjectKWayPartition(ptr nocapture writeonly %ctrl, i32 %0, i1 %cmp36) local_unnamed_addr {
entry:
  br i1 %cmp36, label %if.then, label %if.else.lr.ph

if.else.lr.ph:                                    ; preds = %entry
  %.fr = freeze i32 %0
  %cmp571 = icmp sgt i32 %.fr, 0
  %nbrpoolcpos = getelementptr i8, ptr %ctrl, i64 248
  br i1 %cmp571, label %if.else.us, label %if.else

if.else.us:                                       ; preds = %if.else.lr.ph, %if.else.us
  %call49.us = tail call i32 @libmetis__cnbrpoolGetNext()
  store i64 0, ptr %nbrpoolcpos, align 8
  br label %if.else.us

if.then:                                          ; preds = %entry
  ret void

if.else:                                          ; preds = %if.else.lr.ph, %if.else
  %call49 = tail call i32 @libmetis__cnbrpoolGetNext()
  store i64 0, ptr %nbrpoolcpos, align 8
  br label %if.else
}

declare i32 @libmetis__cnbrpoolGetNext() local_unnamed_addr
