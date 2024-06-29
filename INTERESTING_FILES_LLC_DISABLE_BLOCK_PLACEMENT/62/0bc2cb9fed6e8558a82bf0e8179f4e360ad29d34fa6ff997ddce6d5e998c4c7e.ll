; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_dwconv_minmax_ukernel_up8x9__avx(ptr %input, i1 %cmp101) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i0.0 = phi ptr [ %input, %entry ], [ null, %for.body ]
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call103 = call <8 x float> @_mm256_load_ps()
  %call104 = load volatile <8 x float>, ptr %i0.0, align 32
  %call106 = load volatile <8 x float>, ptr null, align 32
  %call112 = load volatile <8 x float>, ptr null, align 32
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare <8 x float> @_mm256_load_ps()
