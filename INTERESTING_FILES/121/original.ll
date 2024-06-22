; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//121/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i32 @FLA_Eig_gest_il_opt_var1(i1 %cond) local_unnamed_addr #0 {
entry:
  br i1 %cond, label %common.ret1, label %sw.bb

common.ret1:                                      ; preds = %sw.bb, %entry
  ret i32 0

sw.bb:                                            ; preds = %entry
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
