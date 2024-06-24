; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//757/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2(ptr %input, i1 %cmp40) local_unnamed_addr #0 {
entry:
  br i1 %cmp40, label %for.body.us.preheader, label %for.end

for.body.us.preheader:                            ; preds = %entry
  %call55.us.peel = load volatile <16 x float>, ptr null, align 4294967296
  %call57.us.peel = load volatile <16 x float>, ptr %input, align 64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %call55.us = load volatile <16 x float>, ptr null, align 4294967296
  %call57.us = load volatile <16 x float>, ptr null, align 4294967296
  br label %for.body.us, !llvm.loop !0

for.end:                                          ; preds = %entry
  ret void
}

attributes #0 = { nofree norecurse nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
