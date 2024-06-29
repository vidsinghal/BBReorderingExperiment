; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @libxsmm_dnn_create_optimizer(ptr %status, i1 %cmp1) {
entry:
  br i1 %cmp1, label %if.then4, label %if.end65

if.then4:                                         ; preds = %entry
  %call3 = call ptr @malloc()
  %cmp5.not = icmp eq ptr %status, null
  br i1 %cmp5.not, label %if.end65, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @llvm.memcpy.p0.p0.i64(ptr %status, ptr null, i64 40, i1 false)
  br label %common.ret

common.ret:                                       ; preds = %if.end65, %if.then6
  ret ptr null

if.end65:                                         ; preds = %if.then4, %entry
  %storemerge = phi i32 [ 1, %entry ], [ 0, %if.then4 ]
  store i32 %storemerge, ptr %status, align 4
  br label %common.ret
}

declare ptr @malloc()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
