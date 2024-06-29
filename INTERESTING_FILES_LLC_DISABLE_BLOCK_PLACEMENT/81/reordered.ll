; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//81/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128(i64 %cn_stride) local_unnamed_addr #0 {
entry:
  %call1 = tail call i64 @round_up_po2()
  %cmp10.not = icmp eq i64 %cn_stride, 0
  br i1 %cmp10.not, label %while.end, label %while.body.us.preheader

while.body.us:                                    ; preds = %while.body.us.preheader, %while.body.us
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %while.body.us

while.body.us.preheader:                          ; preds = %while.end, %entry
  br label %while.body.us

while.end:                                        ; preds = %entry, %while.end
  %call45 = tail call <2 x i64> @_mm_hadd_epi32()
  br i1 %cmp10.not, label %while.end, label %while.body.us.preheader
}

declare i64 @round_up_po2() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare <2 x i64> @_mm_hadd_epi32() local_unnamed_addr

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
