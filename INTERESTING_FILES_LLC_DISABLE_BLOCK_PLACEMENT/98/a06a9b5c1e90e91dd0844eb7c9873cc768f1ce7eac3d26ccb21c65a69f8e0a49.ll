; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @grib_oarray_new() {
entry:
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

define ptr @grib_oarray_push(ptr %c) {
entry:
  %tobool.not = icmp eq ptr %c, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call ptr @grib_oarray_new()
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  ret ptr null
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
