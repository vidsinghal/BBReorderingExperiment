; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @axl_dbg(i1 %cmp2, ...) {
entry:
  br i1 %cmp2, label %if.then4, label %if.end12

if.then4:                                         ; preds = %entry
  call void @llvm.va_start.p0(ptr null)
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn }
