; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @validate_metadata(ptr %parser_output_path, i32 %call, i1 %cmp4) {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr %parser_output_path, ptr null, i64 26, i1 false)
  %cmp = icmp ne i32 %call, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then5, label %common.ret

common.ret:                                       ; preds = %if.then5, %entry
  ret void

if.then5:                                         ; preds = %entry
  %call6 = load volatile i32, ptr null, align 4
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
