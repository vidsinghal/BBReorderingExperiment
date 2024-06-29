; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//149/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24(i1 %0) local_unnamed_addr #0 {
entry:
  br i1 %0, label %for.body, label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %entry, %for.body
  br label %for.cond90

for.body:                                         ; preds = %entry
  %call19 = load volatile <8 x float>, ptr null, align 4294967296
  br label %for.cond90.preheader

for.cond90:                                       ; preds = %for.cond90.preheader, %for.cond90
  %call93 = tail call <8 x float> @_mm256_loadu_ps(ptr null)
  br label %for.cond90
}

declare <8 x float> @_mm256_loadu_ps(ptr) local_unnamed_addr

attributes #0 = { noreturn }
