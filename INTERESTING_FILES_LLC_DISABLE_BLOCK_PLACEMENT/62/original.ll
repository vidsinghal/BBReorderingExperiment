; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//62/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_dwconv_minmax_ukernel_up8x9__avx(ptr %input, i1 %cmp101) local_unnamed_addr {
entry:
  br i1 %cmp101, label %for.body.us.preheader, label %for.end

for.body.us.preheader:                            ; preds = %entry
  %call103.us.peel = tail call <8 x float> @_mm256_load_ps()
  %call104.us.peel = load volatile <8 x float>, ptr %input, align 32
  %call106.us.peel = load volatile <8 x float>, ptr null, align 4294967296
  %call112.us.peel = load volatile <8 x float>, ptr null, align 4294967296
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %call103.us = tail call <8 x float> @_mm256_load_ps()
  %call104.us = load volatile <8 x float>, ptr null, align 4294967296
  %call106.us = load volatile <8 x float>, ptr null, align 4294967296
  %call112.us = load volatile <8 x float>, ptr null, align 4294967296
  br label %for.body.us, !llvm.loop !0

for.end:                                          ; preds = %entry
  ret void
}

declare <8 x float> @_mm256_load_ps() local_unnamed_addr

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
