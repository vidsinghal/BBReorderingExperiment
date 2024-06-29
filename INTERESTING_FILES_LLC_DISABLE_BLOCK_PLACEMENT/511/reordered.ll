; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//511/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define void @nauty(ptr nocapture %options, i32 %m_arg, i1 %tobool6) local_unnamed_addr #0 {
entry:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull dereferenceable(88) null, ptr noundef nonnull align 1 dereferenceable(88) %options, i64 88, i1 false)
  %cmp7 = icmp eq i32 %m_arg, 0
  %or.cond = and i1 %cmp7, %tobool6
  br i1 %or.cond, label %if.then8, label %if.end9

if.end9:                                          ; preds = %if.then8, %entry
  ret void

if.then8:                                         ; preds = %entry
  store ptr null, ptr %options, align 8
  br label %if.end9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
