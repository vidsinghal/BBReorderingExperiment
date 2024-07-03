; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//975/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @pool_match_dep(i32 %d1, i1 %cmp71.not, ptr nocapture readnone %0) local_unnamed_addr {
entry:
  %cmp1.not16 = icmp sgt i32 %d1, -1
  br i1 %cmp1.not16, label %if.then72.us.us, label %common.ret

if.then72.us.us:                                  ; preds = %entry, %if.then72.us.us
  %call100.us.us = tail call i32 @is_interval_dep()
  br label %if.then72.us.us

common.ret:                                       ; preds = %entry
  ret i32 0
}

declare i32 @is_interval_dep() local_unnamed_addr
