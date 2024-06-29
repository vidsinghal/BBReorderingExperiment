; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//121/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define i32 @FLA_Eig_gest_il_opt_var1(i32 returned %call, i1 %cond) local_unnamed_addr #0 {
entry:
  %call1 = load volatile i32, ptr null, align 4294967296
  br i1 %cond, label %sw.bb, label %common.ret

sw.bb:                                            ; preds = %entry
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret

common.ret:                                       ; preds = %sw.bb, %entry
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
