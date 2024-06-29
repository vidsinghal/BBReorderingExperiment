; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//189/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i1 @progress_meter(ptr nocapture readonly %global) local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr %global, align 1, !range !0, !noundef !1
  %tobool = trunc nuw i8 %0 to i1
  br i1 %tobool, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i1 false
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }

!0 = !{i8 0, i8 2}
!1 = !{}
