; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic(i64 %kc, ptr %0, ptr %1) #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.end, %entry
  %.pre = load i8, ptr %0, align 1
  br label %do.body31

do.body31:                                        ; preds = %do.body31, %do.body
  %k.0 = phi i64 [ %kc, %do.body ], [ %sub, %do.body31 ]
  %sub = add i64 %k.0, 1
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %cmp59.not = icmp eq i64 %k.0, 0
  br i1 %cmp59.not, label %do.end, label %do.body31

do.end:                                           ; preds = %do.body31
  store i8 %.pre, ptr %1, align 1
  br label %do.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
