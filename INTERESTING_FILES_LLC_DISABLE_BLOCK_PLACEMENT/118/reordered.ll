; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//118/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @je_mallocx(i32) local_unnamed_addr

define noalias noundef ptr @sicm_arena_alloc_aligned(i64 %align, i1 %cmp.not, i1 %cmp1) local_unnamed_addr {
entry:
  br i1 %cmp.not, label %if.end, label %if.then

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %cttz, %cond.false ]
  %or5 = or i32 %cond, 1
  br label %if.end

cond.false:                                       ; preds = %if.then
  %shr = lshr i64 %align, 1
  %conv2 = trunc i64 %shr to i32
  %cttz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %conv2, i1 false)
  br label %cond.end

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %.not4 = icmp eq i64 %align, 0
  %sub = sext i1 %.not4 to i32
  br label %cond.end

if.end:                                           ; preds = %cond.end, %entry
  %flags.0 = phi i32 [ %or5, %cond.end ], [ 0, %entry ]
  %call6 = tail call ptr @je_mallocx(i32 %flags.0)
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
