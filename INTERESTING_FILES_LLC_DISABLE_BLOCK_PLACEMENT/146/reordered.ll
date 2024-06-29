; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//146/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @zla_lin_berr_(ptr nocapture readonly %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %n, align 4
  %1 = icmp slt i32 %0, 0
  br i1 %1, label %for.cond.us, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond.backedge
  %.pre2 = phi i32 [ %.pre2.be, %for.cond.backedge ], [ %0, %entry ]
  %.fr = freeze i32 %.pre2
  %cmp8.not1 = icmp slt i32 %.fr, 0
  br i1 %cmp8.not1, label %for.cond.backedge, label %for.body10.lr.ph

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %call27 = tail call double @d_imag()
  br label %for.body10

for.cond.backedge:                                ; preds = %for.body10.lr.ph.split.us, %for.cond
  %.pre2.be = phi i32 [ %.pre.pre, %for.body10.lr.ph.split.us ], [ %.fr, %for.cond ]
  br label %for.cond, !llvm.loop !0

for.body10.lr.ph.split.us:                        ; preds = %for.body10.lr.ph
  %call27.us = tail call double @d_imag()
  %.pre.pre = load i32, ptr %n, align 4
  br label %for.cond.backedge

for.body10.lr.ph:                                 ; preds = %for.cond
  %cmp8.not = icmp eq i32 %.fr, 0
  br i1 %cmp8.not, label %for.body10.lr.ph.split.us, label %for.body10

for.cond.us:                                      ; preds = %entry, %for.cond.us
  br label %for.cond.us
}

declare double @d_imag() local_unnamed_addr

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
