; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//98/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noalias noundef ptr @grib_oarray_new() local_unnamed_addr #0 {
entry:
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noalias noundef ptr @grib_oarray_push(ptr readnone %c) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %c, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  ret ptr null

if.then:                                          ; preds = %entry
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %if.end3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
