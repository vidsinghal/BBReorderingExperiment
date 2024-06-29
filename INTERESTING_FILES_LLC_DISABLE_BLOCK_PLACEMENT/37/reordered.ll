; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//37/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @quo_internal_hwloc_get_cpubind(ptr nocapture readonly %topology, i32 %flags) local_unnamed_addr {
entry:
  %and1 = and i32 %flags, 1
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %common.ret, label %if.then3

if.then3:                                         ; preds = %entry
  %0 = load ptr, ptr %topology, align 8
  %call8 = tail call i32 %0(ptr null, ptr null, i32 0)
  br label %common.ret

common.ret:                                       ; preds = %if.then3, %entry
  ret i32 0
}
