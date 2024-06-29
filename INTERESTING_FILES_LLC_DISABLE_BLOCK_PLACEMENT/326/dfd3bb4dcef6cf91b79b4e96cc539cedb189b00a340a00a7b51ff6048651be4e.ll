; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ossl_sha3_update(ptr %ctx, i64 %len, i1 %cmp, i1 %cmp1.not) {
entry:
  br i1 %cmp, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp1.not, label %if.end16, label %if.then2

if.then2:                                         ; preds = %if.end
  %add = or i64 %len, 1
  store i64 %add, ptr %ctx, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.end16, %if.then2, %entry
  ret i32 0

if.end16:                                         ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr null, ptr %ctx, i64 %len, i1 false)
  store i64 0, ptr %ctx, align 8
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
