; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24(i1 %0) {
entry:
  br i1 %0, label %for.body, label %for.cond90

for.body:                                         ; preds = %entry
  %call19 = load volatile <8 x float>, ptr null, align 32
  br label %for.cond90

for.cond90:                                       ; preds = %for.cond90, %for.body, %entry
  %call93 = call <8 x float> @_mm256_loadu_ps(ptr null)
  br label %for.cond90
}

declare <8 x float> @_mm256_loadu_ps(ptr)
