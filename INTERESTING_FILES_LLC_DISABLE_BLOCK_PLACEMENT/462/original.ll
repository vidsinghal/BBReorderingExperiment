; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//462/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define void @xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64(i64 %call, i64 %sub, i1 %cmp33.not, i1 %cmp49) local_unnamed_addr #0 {
entry:
  %cmp5.us.peel = icmp ugt i64 %call, 1
  %cmp5.us = icmp ugt i64 %sub, 1
  br i1 %cmp33.not, label %do.body2.us, label %entry.split

do.body2.us:                                      ; preds = %entry, %do.body2.us
  br i1 %cmp5.us.peel, label %while.cond.us.preheader, label %do.body2.us

while.cond.us.preheader:                          ; preds = %do.body2.us
  %brmerge = select i1 %cmp5.us, i1 true, i1 %cmp5.us.peel
  br label %while.cond.us

while.cond.us:                                    ; preds = %while.cond.us.preheader, %while.cond.us
  br i1 %brmerge, label %while.cond.us, label %infloop, !llvm.loop !0

entry.split:                                      ; preds = %entry
  br i1 %cmp49, label %do.body2.us1, label %do.body2

do.body2.us1:                                     ; preds = %entry.split, %while.end.us5
  br i1 %cmp5.us.peel, label %while.cond.us2, label %while.end.us5

while.cond.us2:                                   ; preds = %do.body2.us1, %while.cond.us2
  br i1 %cmp5.us, label %while.cond.us2, label %while.end.us5, !llvm.loop !2

while.end.us5:                                    ; preds = %while.cond.us2, %do.body2.us1
  %call39.us = load volatile <2 x i64>, ptr null, align 4294967296
  %call53.us = load volatile <2 x i64>, ptr null, align 4294967296
  br label %do.body2.us1

do.body2:                                         ; preds = %entry.split, %while.end
  br i1 %cmp5.us.peel, label %while.cond, label %while.end

while.cond:                                       ; preds = %do.body2, %while.cond
  br i1 %cmp5.us, label %while.cond, label %while.end, !llvm.loop !3

while.end:                                        ; preds = %while.cond, %do.body2
  %call39 = load volatile <2 x i64>, ptr null, align 4294967296
  br label %do.body2

infloop:                                          ; preds = %while.cond.us, %infloop
  br label %infloop
}

attributes #0 = { nofree norecurse noreturn nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
!2 = distinct !{!2, !1}
!3 = distinct !{!3, !1}
