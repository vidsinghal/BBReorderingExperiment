; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @BLAS_zsymv2_z_c_x(i32 %n, i1 %cmp, i1 %cmp3) {
entry:
  switch i32 %n, label %sw.bb [
    i32 0, label %common.ret
    i32 212, label %common.ret
    i32 213, label %common.ret
  ]

sw.bb:                                            ; preds = %entry
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %sw.bb, %entry, %entry, %entry
  ret void

if.end:                                           ; preds = %sw.bb
  call void @llvm.assume(i1 %cmp3)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
