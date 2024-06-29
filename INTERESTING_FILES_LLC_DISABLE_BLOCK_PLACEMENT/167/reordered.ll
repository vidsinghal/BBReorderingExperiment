; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//167/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write)
define void @xnn_x32_zip_x2_ukernel__sse2(i64 %n, ptr nocapture writeonly %input) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 15
  tail call void @llvm.assume(i1 %cmp1)
  %0 = add i64 %n, -16
  %1 = lshr i64 %0, 4
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.end:                                        ; preds = %while.body, %while.body.prol.loopexit
  %add.ptr2.lcssa = phi ptr [ %add.ptr2.lcssa.unr, %while.body.prol.loopexit ], [ %add.ptr2.7, %while.body ]
  %3 = load i32, ptr %add.ptr2.lcssa, align 4
  store i32 %3, ptr %input, align 4
  ret void

while.body.prol.loopexit:                         ; preds = %while.body.prol, %entry
  %n.addr.03.unr = phi i64 [ %n, %entry ], [ %sub.prol, %while.body.prol ]
  %y.02.unr = phi ptr [ null, %entry ], [ %add.ptr2.prol, %while.body.prol ]
  %add.ptr2.lcssa.unr = phi ptr [ undef, %entry ], [ %add.ptr2.prol, %while.body.prol ]
  %4 = icmp ult i64 %0, 112
  br i1 %4, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %n.addr.03 = phi i64 [ %sub.7, %while.body ], [ %n.addr.03.unr, %while.body.prol.loopexit ]
  %y.02 = phi ptr [ %add.ptr2.7, %while.body ], [ %y.02.unr, %while.body.prol.loopexit ]
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %add.ptr2.7 = getelementptr i8, ptr %y.02, i64 128
  %sub.7 = add i64 %n.addr.03, -128
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %cmp.7 = icmp ugt i64 %sub.7, 15
  br i1 %cmp.7, label %while.body, label %while.end

while.body.prol:                                  ; preds = %entry, %while.body.prol
  %n.addr.03.prol = phi i64 [ %sub.prol, %while.body.prol ], [ %n, %entry ]
  %y.02.prol = phi ptr [ %add.ptr2.prol, %while.body.prol ], [ null, %entry ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body.prol ], [ 0, %entry ]
  %add.ptr2.prol = getelementptr i8, ptr %y.02.prol, i64 16
  %sub.prol = add i64 %n.addr.03.prol, -16
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.prol.loopexit, label %while.body.prol, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
