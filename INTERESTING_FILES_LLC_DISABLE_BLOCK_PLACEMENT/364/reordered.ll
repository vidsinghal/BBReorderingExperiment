; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//364/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i32 @SHA256_Update(ptr nocapture writeonly %c, i64 %len, i1 %cmp13.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp13.not, label %if.end32, label %if.then15

if.end32:                                         ; preds = %entry
  %conv44 = trunc i64 %len to i32
  br label %cleanup

if.then15:                                        ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %c, ptr null, i64 %len, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then15
  %storemerge = phi i32 [ 0, %if.then15 ], [ %conv44, %if.end32 ]
  store i32 %storemerge, ptr %c, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
