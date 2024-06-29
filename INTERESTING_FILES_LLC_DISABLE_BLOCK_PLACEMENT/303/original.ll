; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//303/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @libxsmm_dnn_create_optimizer(ptr writeonly %status, i1 %cmp1) local_unnamed_addr {
entry:
  br i1 %cmp1, label %if.then4, label %if.end65

if.then4:                                         ; preds = %entry
  %call3 = tail call ptr @malloc()
  %cmp5.not = icmp eq ptr %status, null
  br i1 %cmp5.not, label %if.end65, label %if.then6

if.then6:                                         ; preds = %if.then4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %status, ptr noundef nonnull dereferenceable(40) null, i64 40, i1 false)
  br label %common.ret

common.ret:                                       ; preds = %if.end65, %if.then6
  ret ptr null

if.end65:                                         ; preds = %if.then4, %entry
  %storemerge = phi i32 [ 1, %entry ], [ 0, %if.then4 ]
  store i32 %storemerge, ptr %status, align 4
  br label %common.ret
}

declare ptr @malloc() local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
