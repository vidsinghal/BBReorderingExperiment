; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//335/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn
define void @axl_dbg(i1 %cmp2, ...) local_unnamed_addr #0 {
entry:
  br i1 %cmp2, label %if.then4, label %if.end12

if.end12:                                         ; preds = %if.then4, %entry
  ret void

if.then4:                                         ; preds = %entry
  tail call void @llvm.va_start.p0(ptr null)
  br label %if.end12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
