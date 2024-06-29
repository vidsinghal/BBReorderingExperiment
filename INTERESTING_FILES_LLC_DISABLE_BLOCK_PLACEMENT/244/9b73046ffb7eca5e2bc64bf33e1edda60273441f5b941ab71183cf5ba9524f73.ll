; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @libxsmm_dnn_create_fusedbatchnorm(i1 %cmp1, ptr %call) {
entry:
  br i1 %cmp1, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret ptr null

if.else:                                          ; preds = %entry
  %call1 = call ptr @malloc()
  call void @llvm.memset.p0.i64(ptr null, i8 0, i64 224, i1 false)
  store i8 0, ptr %call, align 1
  br label %common.ret
}

declare ptr @malloc()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
