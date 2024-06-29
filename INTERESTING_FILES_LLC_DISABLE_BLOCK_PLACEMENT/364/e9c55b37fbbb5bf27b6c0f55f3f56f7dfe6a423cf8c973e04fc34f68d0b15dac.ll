; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @SHA256_Update(ptr %c, i64 %len, i1 %cmp13.not) {
entry:
  br i1 %cmp13.not, label %if.end32, label %if.then15

if.then15:                                        ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr %c, ptr null, i64 %len, i1 false)
  br label %cleanup

if.end32:                                         ; preds = %entry
  %conv44 = trunc i64 %len to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then15
  %storemerge = phi i32 [ 0, %if.then15 ], [ %conv44, %if.end32 ]
  store i32 %storemerge, ptr %c, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
