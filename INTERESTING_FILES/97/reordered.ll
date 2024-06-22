; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//97/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @zheswapr_(i1 %tobool) local_unnamed_addr #0 {
entry:
  br i1 %tobool, label %if.then, label %if.else

if.else:                                          ; preds = %entry
  %call145 = tail call i32 @zswap_(ptr undef)
  unreachable

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @zswap_(ptr null)
  unreachable
}

declare i32 @zswap_(ptr) local_unnamed_addr

attributes #0 = { noreturn }
