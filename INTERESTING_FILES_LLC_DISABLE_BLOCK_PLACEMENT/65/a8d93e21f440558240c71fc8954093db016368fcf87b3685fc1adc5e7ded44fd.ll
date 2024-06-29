; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2(ptr %x, ptr %params, i1 %cmp, i1 %cmp15) {
entry:
  %0 = load float, ptr %params, align 64
  %1 = load float, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call float @math_max_f32(float %0, float %1)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %mul19 = fmul float %0, 0.000000e+00
  %call20 = call float @math_max_f32(float %mul19, float %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

declare float @math_max_f32(float, float)
