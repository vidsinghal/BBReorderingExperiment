; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//45/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define void @xnn_f32_f16_vcvt_ukernel__sse2_x8(i64 %n) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 31
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = add i64 %n, -32
  %1 = lshr i64 %0, 5
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %n.addr.02.prol = phi i64 [ %sub.prol, %for.body.prol ], [ %n, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %sub.prol = add i64 %n.addr.02.prol, -32
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !0

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %n.addr.02.unr = phi i64 [ %n, %for.body.preheader ], [ %sub.prol, %for.body.prol ]
  %3 = icmp ult i64 %0, 224
  br i1 %3, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %n.addr.02 = phi i64 [ %sub.7, %for.body ], [ %n.addr.02.unr, %for.body.prol.loopexit ]
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %sub.7 = add i64 %n.addr.02, -256
  %cmp.7 = icmp ugt i64 %sub.7, 31
  br i1 %cmp.7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
