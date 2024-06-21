; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//40/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @FLA_Tridiag_UT_l_step_ops_var2(i32 %m_A) local_unnamed_addr #0 {
entry:
  tail call void @bl1_saxpyv(i32 0)
  %cmp150.peel = icmp eq i32 %m_A, 0
  br i1 %cmp150.peel, label %land.lhs.true.peel, label %for.cond.backedge.peel

land.lhs.true.peel:                               ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond.backedge.peel

for.cond.backedge.peel:                           ; preds = %land.lhs.true.peel, %entry
  %cmp150 = icmp eq i32 %m_A, 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.backedge.peel
  tail call void @bl1_saxpyv(i32 0)
  br i1 %cmp150, label %land.lhs.true, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.cond, %land.lhs.true
  br label %for.cond, !llvm.loop !0

land.lhs.true:                                    ; preds = %for.cond
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond.backedge
}

declare void @bl1_saxpyv(i32) local_unnamed_addr

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
