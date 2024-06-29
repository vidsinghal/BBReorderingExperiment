; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//349/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write)
define noundef i64 @vtklibharu_HPDF_Info_SetInfoDateAttr(ptr nocapture readonly %value, i1 %cmp71, i1 %cmp32) local_unnamed_addr #0 {
entry:
  %not.cmp32 = xor i1 %cmp32, true
  %or.cond = select i1 %not.cmp32, i1 %cmp71, i1 false
  br i1 %or.cond, label %common.ret, label %sw.bb57

common.ret:                                       ; preds = %lor.lhs.false68, %sw.bb57, %entry
  ret i64 0

sw.bb57:                                          ; preds = %entry
  %0 = load i32, ptr %value, align 8
  %cmp66.not = icmp eq i32 %0, 0
  br i1 %cmp66.not, label %lor.lhs.false68, label %common.ret

lor.lhs.false68:                                  ; preds = %sw.bb57
  tail call void @llvm.assume(i1 %cmp71)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
