; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128(i64 %cn_stride) {
entry:
  %call1 = call i64 @round_up_po2()
  br label %do.body

do.body:                                          ; preds = %while.end, %entry
  %k.0 = phi i64 [ 0, %entry ], [ %k.1, %while.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %k.1 = phi i64 [ 0, %do.body ], [ 1, %while.body ]
  %cmp10 = icmp ult i64 %k.0, %cn_stride
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call45 = call <2 x i64> @_mm_hadd_epi32()
  br label %do.body
}

declare i64 @round_up_po2()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

declare <2 x i64> @_mm_hadd_epi32()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
