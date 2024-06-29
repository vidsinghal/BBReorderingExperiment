; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//100/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write)
define noundef i32 @scgi_handler(ptr nocapture readonly %r, ptr nocapture readonly %server, i1 %cmp91) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %server, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp16 = icmp eq ptr %1, null
  br i1 %cmp16, label %common.ret, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %entry
  %2 = load i8, ptr %r, align 1
  %cmp41 = icmp slt i8 %2, 0
  br i1 %cmp41, label %common.ret, label %cond.false62

common.ret:                                       ; preds = %cond.false62, %lor.lhs.false17, %entry
  ret i32 0

cond.false62:                                     ; preds = %lor.lhs.false17
  tail call void @llvm.assume(i1 %cmp91)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
