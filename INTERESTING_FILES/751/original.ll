; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//751/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define i32 @sgesdd_(i32 returned %call, i1 %cond) local_unnamed_addr #0 {
entry:
  br i1 %cond, label %common.ret, label %sw.epilog

common.ret:                                       ; preds = %sw.epilog, %entry
  ret i32 %call

sw.epilog:                                        ; preds = %entry
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
