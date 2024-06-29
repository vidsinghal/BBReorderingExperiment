; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i16 @rd_kafka_broker_ApiVersion_supported(ptr %rkb, ptr %0) {
entry:
  %call81 = call ptr @bsearch(ptr %0, ptr %rkb)
  %tobool9.not = icmp eq ptr %call81, null
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr null, ptr %rkb, i64 6, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %entry
  ret i16 0
}

define ptr @bsearch(ptr %__base, ptr %__compar) {
entry:
  %call = call i32 %__compar(ptr null, ptr null)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, ptr null, ptr %__base
  ret ptr %spec.select
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
