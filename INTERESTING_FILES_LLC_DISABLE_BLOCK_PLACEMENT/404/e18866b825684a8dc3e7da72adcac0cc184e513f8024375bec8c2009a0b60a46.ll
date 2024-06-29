; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic(i64 %kc) #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.end, %entry
  %a0.0 = phi ptr [ undef, %entry ], [ %a0.1, %do.end ]
  br label %do.body54

do.body54:                                        ; preds = %do.body54, %do.body
  %k.0 = phi i64 [ %kc, %do.body ], [ %sub95, %do.body54 ]
  %a0.1 = phi ptr [ %a0.0, %do.body ], [ %incdec.ptr, %do.body54 ]
  %incdec.ptr = getelementptr i8, ptr %a0.1, i64 1
  %0 = load i8, ptr %a0.1, align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %sub95 = add i64 %k.0, -1
  %cmp96.not = icmp eq i64 %sub95, 0
  br i1 %cmp96.not, label %do.end, label %do.body54

do.end:                                           ; preds = %do.body54
  %conv103 = uitofp i8 %0 to float
  %call = call i32 @fp32_to_bits(float %conv103)
  br label %do.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fp32_to_bits(float)

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
