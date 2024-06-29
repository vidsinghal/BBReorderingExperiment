; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vsub_relu_ukernel__scalar_x4(i64 %n, i64 %sub20) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.addr.01 = phi i64 [ %n, %entry ], [ %sub20, %for.body ]
  %cmp = icmp ugt i64 %n.addr.01, 1
  br i1 %cmp, label %for.body, label %do.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.cond

do.body:                                          ; preds = %do.body, %for.cond
  br label %do.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
