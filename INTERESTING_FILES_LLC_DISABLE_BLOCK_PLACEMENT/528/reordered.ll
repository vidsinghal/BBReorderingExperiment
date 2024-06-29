; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//528/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define noundef i32 @CRYPTO_ocb128_setiv(i64 %len, i1 %cmp3) local_unnamed_addr #1 {
entry:
  %cmp = icmp ne i64 %len, 0
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %common.ret, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull dereferenceable(80) null, i8 0, i64 80, i1 false)
  br label %common.ret

common.ret:                                       ; preds = %lor.lhs.false4, %entry
  ret i32 0
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
