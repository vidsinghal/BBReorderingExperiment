; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//97/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @zheswapr_(i1 %tobool) local_unnamed_addr #0 {
entry:
  %call1 = tail call i32 @lsame_()
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @zswap_(ptr null, ptr null)
  unreachable

if.else:                                          ; preds = %entry
  %call145 = tail call i32 @zswap_(ptr null, ptr undef)
  unreachable
}

declare i32 @lsame_() local_unnamed_addr

declare i32 @zswap_(ptr, ptr) local_unnamed_addr

attributes #0 = { noreturn "tune-cpu"="znver2" }
