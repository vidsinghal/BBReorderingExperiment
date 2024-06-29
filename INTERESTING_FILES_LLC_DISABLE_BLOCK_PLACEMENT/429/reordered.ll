; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//429/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define void @xnn_f32_vrndd_ukernel__avx_x16(i64 %n, ptr %x, ptr nocapture writeonly %y) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 63
  br i1 %cmp1, label %for.body.preheader, label %for.cond.for.cond5_crit_edge

for.body.preheader6:                              ; preds = %for.body.preheader
  %0 = add i64 %n, -128
  %1 = lshr i64 %0, 6
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.cond.for.cond5_crit_edge:                     ; preds = %for.body.prol.loopexit, %for.body, %for.body.preheader, %entry
  %x.addr.0.lcssa = phi ptr [ %x, %entry ], [ inttoptr (i64 64 to ptr), %for.body.preheader ], [ inttoptr (i64 64 to ptr), %for.body ], [ inttoptr (i64 64 to ptr), %for.body.prol.loopexit ]
  %call8.pre = load <8 x float>, ptr %x.addr.0.lcssa, align 32
  store <8 x float> %call8.pre, ptr %y, align 32
  br label %for.cond5

for.body.prol:                                    ; preds = %for.body.preheader6, %for.body.prol
  %n.addr.03.prol = phi i64 [ %sub.prol, %for.body.prol ], [ %sub.peel, %for.body.preheader6 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader6 ]
  %call.prol = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %sub.prol = add i64 %n.addr.03.prol, -64
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !0

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader6
  %n.addr.03.unr = phi i64 [ %sub.peel, %for.body.preheader6 ], [ %sub.prol, %for.body.prol ]
  %3 = icmp ult i64 %0, 448
  br i1 %3, label %for.cond.for.cond5_crit_edge, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %n.addr.03 = phi i64 [ %sub.7, %for.body ], [ %n.addr.03.unr, %for.body.prol.loopexit ]
  %call = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.1 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.2 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.3 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.4 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.5 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.6 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %call.7 = load volatile <8 x float>, ptr inttoptr (i64 64 to ptr), align 64
  %sub.7 = add i64 %n.addr.03, -512
  %cmp.7 = icmp ugt i64 %sub.7, 63
  br i1 %cmp.7, label %for.body, label %for.cond.for.cond5_crit_edge, !llvm.loop !2

for.cond5:                                        ; preds = %for.cond5, %for.cond.for.cond5_crit_edge
  br label %for.cond5

for.body.preheader:                               ; preds = %entry
  %call.peel = load volatile <8 x float>, ptr %x, align 32
  %sub.peel = add i64 %n, -64
  %cmp.peel = icmp ugt i64 %sub.peel, 63
  br i1 %cmp.peel, label %for.body.preheader6, label %for.cond.for.cond5_crit_edge
}

attributes #0 = { nofree norecurse noreturn nounwind "target-cpu"="x86-64" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.peeled.count", i32 1}
