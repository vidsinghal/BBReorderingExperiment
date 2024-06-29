; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//70/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @xnn_f32_vlrelu_ukernel__scalar_x4(i64 %n, ptr nocapture writeonly %x, ptr nocapture writeonly %y) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 15
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = add i64 %n, -16
  %1 = lshr i64 %0, 4
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %n.addr.02.prol = phi i64 [ %sub.prol, %for.body.prol ], [ %n, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  %sub.prol = add i64 %n.addr.02.prol, -16
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !0

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %n.addr.02.unr = phi i64 [ %n, %for.body.preheader ], [ %sub.prol, %for.body.prol ]
  %3 = icmp ult i64 %0, 112
  br i1 %3, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %n.addr.02 = phi i64 [ %sub.7, %for.body ], [ %n.addr.02.unr, %for.body.prol.loopexit ]
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  %sub.7 = add i64 %n.addr.02, -128
  %cmp.7 = icmp ugt i64 %sub.7, 15
  br i1 %cmp.7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) "target-cpu"="x86-64" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
