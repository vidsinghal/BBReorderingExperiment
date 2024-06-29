; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//244/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @libxsmm_dnn_create_fusedbatchnorm(i1 %cmp1, ptr nocapture writeonly %call) local_unnamed_addr {
entry:
  br i1 %cmp1, label %common.ret, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @malloc()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull dereferenceable(224) null, i8 0, i64 224, i1 false)
  store i8 0, ptr %call, align 1
  br label %common.ret

common.ret:                                       ; preds = %if.else, %entry
  ret ptr null
}

declare ptr @malloc() local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
