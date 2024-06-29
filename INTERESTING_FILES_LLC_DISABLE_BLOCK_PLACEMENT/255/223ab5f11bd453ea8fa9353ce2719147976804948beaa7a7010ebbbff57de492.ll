; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cspcon_(i1 %cmp29, i1 %cmp25) {
entry:
  %brmerge = select i1 %cmp25, i1 %cmp29, i1 false
  br i1 %brmerge, label %common.ret, label %cleanup

common.ret:                                       ; preds = %cleanup, %entry
  ret i32 0

cleanup:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
