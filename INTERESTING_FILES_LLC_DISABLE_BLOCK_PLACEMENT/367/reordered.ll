; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//367/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2(i64 %n, ptr nocapture %x) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 7
  br i1 %cmp1, label %for.body.lr.ph, label %for.end

for.body.prol:                                    ; preds = %for.body.lr.ph, %for.body.prol
  %0 = phi float [ %1, %for.body.prol ], [ %x.promoted, %for.body.lr.ph ]
  %n.addr.02.prol = phi i64 [ %sub49.prol, %for.body.prol ], [ %n, %for.body.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.lr.ph ]
  %1 = tail call float @llvm.fabs.f32(float %0)
  %sub49.prol = add i64 %n.addr.02.prol, -8
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !0

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  ret void

for.cond.for.end_crit_edge:                       ; preds = %for.body, %for.body.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %for.body.prol.loopexit ], [ %3, %for.body ]
  store float %.lcssa, ptr %x, align 4
  br label %for.end

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %2 = phi float [ %3, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %n.addr.02 = phi i64 [ %sub49.7, %for.body ], [ %n.addr.02.unr, %for.body.prol.loopexit ]
  %3 = tail call float @llvm.fabs.f32(float %2)
  %sub49.7 = add i64 %n.addr.02, -64
  %cmp.7 = icmp ugt i64 %sub49.7, 7
  br i1 %cmp.7, label %for.body, label %for.cond.for.end_crit_edge

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.lr.ph
  %.unr = phi float [ %x.promoted, %for.body.lr.ph ], [ %1, %for.body.prol ]
  %n.addr.02.unr = phi i64 [ %n, %for.body.lr.ph ], [ %sub49.prol, %for.body.prol ]
  %.lcssa.unr = phi float [ undef, %for.body.lr.ph ], [ %1, %for.body.prol ]
  %4 = icmp ult i64 %5, 56
  br i1 %4, label %for.cond.for.end_crit_edge, label %for.body

for.body.lr.ph:                                   ; preds = %entry
  %x.promoted = load float, ptr %x, align 4
  %5 = add i64 %n, -8
  %6 = lshr i64 %5, 3
  %7 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %7, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
