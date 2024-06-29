; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32(i8 %0, i1 %cmp) {
entry:
  %conv = sext i8 %0 to i32
  %call = call <2 x i64> @_mm_cvtsi32_si128(i32 %conv)
  br i1 %cmp, label %for.body, label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare <2 x i64> @_mm_cvtsi32_si128(i32)

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
