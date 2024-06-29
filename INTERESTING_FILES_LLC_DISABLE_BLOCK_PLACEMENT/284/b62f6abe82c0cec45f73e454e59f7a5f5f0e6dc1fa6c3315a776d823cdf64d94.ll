; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @fxdiv_init_size_t(ptr %agg.result, i64 %d) {
entry:
  call void @fxdiv_init_uint64_t(i64 %d)
  store i64 0, ptr %agg.result, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

define void @fxdiv_init_uint64_t(i64 %d) {
entry:
  %cmp = icmp eq i64 %d, 0
  br i1 %cmp, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret void

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %common.ret
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
