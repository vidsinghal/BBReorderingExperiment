; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//160/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @init(i1 %cmp2.not, i1 %cmp6.not, i1 %cmp10.not) local_unnamed_addr {
entry:
  %not.brmerge = select i1 %cmp10.not, i1 %cmp6.not, i1 false
  %brmerge1 = select i1 %not.brmerge, i1 %cmp2.not, i1 false
  br i1 %brmerge1, label %common.ret, label %if.end12

if.end12:                                         ; preds = %entry
  %call13 = tail call i32 @QUO_create()
  unreachable

common.ret:                                       ; preds = %entry
  ret i32 0
}

declare i32 @QUO_create() local_unnamed_addr
