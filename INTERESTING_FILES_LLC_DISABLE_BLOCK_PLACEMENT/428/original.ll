; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//428/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noalias noundef ptr @MD5_compute(i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %common.ret, label %for.end

common.ret:                                       ; preds = %for.end, %entry
  ret ptr null

for.end:                                          ; preds = %entry
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @decode(ptr nocapture writeonly %output, i32 %len) local_unnamed_addr #2 {
entry:
  %cmp1.not = icmp eq i32 %len, 0
  br i1 %cmp1.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  store i32 0, ptr %output, align 4
  %cmp.not = icmp eq i32 %len, 1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  br label %for.body

for.end:                                          ; preds = %for.body.lr.ph, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) "target-cpu"="x86-64" }
