; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ossl_blake2s_update(i1 %cmp9) {
entry:
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }