; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//110/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = local_unnamed_addr constant [3 x i8] c"..\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write)
define noalias noundef ptr @vtklibproj_pj_open_lib(ptr nocapture readonly %name, i1 %tobool37) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %name, align 1
  %.not = icmp eq i8 %0, 46
  br i1 %.not, label %entry.tail, label %common.ret

entry.tail:                                       ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %name, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 46
  br i1 %3, label %land.lhs.true33, label %common.ret

common.ret:                                       ; preds = %entry, %land.lhs.true33, %entry.tail
  ret ptr null

land.lhs.true33:                                  ; preds = %entry.tail
  tail call void @llvm.assume(i1 %tobool37)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
