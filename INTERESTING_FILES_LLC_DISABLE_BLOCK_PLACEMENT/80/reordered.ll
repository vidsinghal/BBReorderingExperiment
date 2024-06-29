; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//80/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ilog2_64() local_unnamed_addr {
entry:
  %0 = tail call i64 asm "bsrq $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0) #0
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

define i32 @alignlog2_64(i1 %tobool) local_unnamed_addr {
entry:
  br i1 %tobool, label %if.end, label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %conv.i, %if.end ], [ 0, %entry ]
  ret i32 %retval.0

if.end:                                           ; preds = %entry
  %0 = tail call i64 asm "bsrq $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0) #0
  %conv.i = trunc i64 %0 to i32
  br label %return
}

attributes #0 = { nounwind }
