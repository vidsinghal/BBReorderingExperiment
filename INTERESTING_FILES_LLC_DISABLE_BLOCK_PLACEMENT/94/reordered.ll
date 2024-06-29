; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//94/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast(ptr nocapture readonly %a, ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture readonly %2, ptr nocapture readonly %3, i1 %cmp217) local_unnamed_addr {
entry:
  %call = tail call <16 x float> @_mm512_load_ps()
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %a, align 8
  %9 = load float, ptr %4, align 4
  %call170 = tail call <16 x float> @_mm512_set1_ps(float %9)
  %10 = load float, ptr %5, align 4
  %call172 = tail call <16 x float> @_mm512_set1_ps(float %10)
  %11 = load float, ptr %a, align 4
  %call174 = tail call <16 x float> @_mm512_set1_ps(float %11)
  %12 = load float, ptr %6, align 4
  %call176 = tail call <16 x float> @_mm512_set1_ps(float %12)
  %13 = load float, ptr %7, align 4
  %call178 = tail call <16 x float> @_mm512_set1_ps(float %13)
  %14 = load float, ptr %8, align 4
  %call180 = tail call <16 x float> @_mm512_set1_ps(float %14)
  br i1 %cmp217, label %common.ret, label %if.then225

if.then225:                                       ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then225, %entry
  ret void
}

declare <16 x float> @_mm512_load_ps() local_unnamed_addr

declare <16 x float> @_mm512_set1_ps(float) local_unnamed_addr
