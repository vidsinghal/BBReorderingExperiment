; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//322/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vmax_ukernel__sse_x4(i64 %n, ptr %y, i1 %tobool18.not) local_unnamed_addr #0 {
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
  %n.addr.012.prol = phi i64 [ %sub.prol, %for.body.prol ], [ %n, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %sub.prol = add i64 %n.addr.012.prol, -16
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !0

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %n.addr.012.unr = phi i64 [ %n, %for.body.preheader ], [ %sub.prol, %for.body.prol ]
  %sub.lcssa.unr = phi i64 [ undef, %for.body.preheader ], [ %sub.prol, %for.body.prol ]
  %3 = icmp ult i64 %0, 112
  br i1 %3, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %n.addr.012 = phi i64 [ %sub.7, %for.body ], [ %n.addr.012.unr, %for.body.prol.loopexit ]
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %sub.7 = add i64 %n.addr.012, -128
  %cmp.7 = icmp ugt i64 %sub.7, 15
  br i1 %cmp.7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %entry
  %n.addr.01.lcssa = phi i64 [ %n, %entry ], [ %sub.lcssa.unr, %for.body.prol.loopexit ], [ %sub.7, %for.body ]
  %tobool13.not = icmp eq i64 %n.addr.01.lcssa, 0
  br i1 %tobool13.not, label %if.end, label %if.then14

if.then14:                                        ; preds = %for.end
  store volatile i32 0, ptr null, align 4294967296
  %add.ptr16 = getelementptr i8, ptr %y, i64 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.end
  %y.addr.0 = phi ptr [ %add.ptr16, %if.then14 ], [ %y, %for.end ]
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end
  tail call void @_mm_store_ss(ptr %y.addr.0)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @_mm_store_ss(ptr) local_unnamed_addr

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
