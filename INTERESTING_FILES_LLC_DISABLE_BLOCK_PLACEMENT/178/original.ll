; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//178/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none)
define void @xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128(ptr nocapture writeonly %0, i64 %sub) local_unnamed_addr #0 {
entry:
  %cmp46.not = icmp eq i64 %sub, 0
  br label %do.body4.peel.next

do.body4.peel.next:                               ; preds = %entry, %do.end
  %c1.0 = phi ptr [ null, %entry ], [ %0, %do.end ]
  br label %do.body4

do.body4:                                         ; preds = %do.body4, %do.body4.peel.next
  br i1 %cmp46.not, label %do.end, label %do.body4, !llvm.loop !0

do.end:                                           ; preds = %do.body4
  store i32 0, ptr %c1.0, align 4
  br label %do.body4.peel.next
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
