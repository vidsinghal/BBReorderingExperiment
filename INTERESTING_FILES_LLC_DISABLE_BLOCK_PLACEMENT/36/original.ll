; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//36/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define noundef i32 @ncgparse(ptr nocapture %incdec.ptr1055, i64 %conv1080, ptr nocapture readonly %yyvsp.0) local_unnamed_addr #0 {
sw.epilog.peel:
  br label %yysetstate

yysetstate:                                       ; preds = %sw.epilog, %sw.epilog.peel
  switch i64 %conv1080, label %sw.epilog [
    i64 253, label %sw.bb1033
    i64 0, label %sw.bb1033
  ]

sw.bb1033:                                        ; preds = %yysetstate, %yysetstate
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1033, %yysetstate
  %yyval.sroa.0.0.in = phi ptr [ %incdec.ptr1055, %sw.bb1033 ], [ %yyvsp.0, %yysetstate ]
  %yyval.sroa.0.0 = load ptr, ptr %yyval.sroa.0.0.in, align 8
  store ptr %yyval.sroa.0.0, ptr %incdec.ptr1055, align 8
  br label %yysetstate, !llvm.loop !0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "target-cpu"="x86-64" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
