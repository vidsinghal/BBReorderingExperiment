; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_dwconv_ukernel_up2x25__scalar_acc2(i1 %cmp291) {
entry:
  br i1 %cmp291, label %for.body, label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry
  %call = call float @math_muladd_f32(float 0.000000e+00)
  %call299 = call float @math_muladd_f32(float 0.000000e+00)
  %call310 = call float @math_muladd_f32(float 0.000000e+00)
  %call312 = call float @math_muladd_f32(float 0.000000e+00)
  %call317 = call float @math_muladd_f32(float 0.000000e+00)
  %call319 = call float @math_muladd_f32(float 0.000000e+00)
  %call324 = call float @math_muladd_f32(float 0.000000e+00)
  %call326 = call float @math_muladd_f32(float 0.000000e+00)
  %call331 = call float @math_muladd_f32(float 0.000000e+00)
  %call333 = call float @math_muladd_f32(float 0.000000e+00)
  %call354 = call float @math_muladd_f32(float 0.000000e+00)
  %call359 = call float @math_muladd_f32(float 0.000000e+00)
  %call394 = call float @math_muladd_f32(float 0.000000e+00)
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare float @math_muladd_f32(float)

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
