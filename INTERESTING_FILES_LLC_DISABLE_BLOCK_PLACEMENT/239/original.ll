; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//239/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @sskew_commit_row_hbmv(ptr nocapture writeonly %a, i32 %k, ptr nocapture readonly %a_vec) local_unnamed_addr #0 {
entry:
  %cmp341 = icmp sgt i32 %k, 0
  br i1 %cmp341, label %for.body35.lr.ph, label %for.end45

for.body35.lr.ph:                                 ; preds = %entry
  %sub19 = sub nsw i32 0, %k
  %idxprom39 = sext i32 %sub19 to i64
  %arrayidx40 = getelementptr float, ptr %a, i64 %idxprom39
  %wide.trip.count = zext nneg i32 %k to i64
  %min.iters.check = icmp ult i32 %k, 20
  br i1 %min.iters.check, label %for.body35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body35.lr.ph
  %0 = zext nneg i32 %k to i64
  %1 = shl nuw nsw i64 %0, 2
  %2 = sub nsw i64 4, %1
  %scevgep = getelementptr i8, ptr %a, i64 %2
  %3 = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep7 = getelementptr i8, ptr %a_vec, i64 %3
  %bound0 = icmp ult ptr %arrayidx40, %scevgep7
  %bound1 = icmp ugt ptr %scevgep, %a_vec
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body35.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640
  %invariant.gep = getelementptr i8, ptr %a_vec, i64 28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep = getelementptr float, ptr %invariant.gep, i64 %index
  %4 = load float, ptr %gep, align 4
  store float %4, ptr %arrayidx40, align 4, !alias.scope !0, !noalias !3
  %index.next = add nuw i64 %index, 8
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end45, label %for.body35.preheader

for.body35.preheader:                             ; preds = %vector.memcheck, %for.body35.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body35.lr.ph ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %wide.trip.count, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body35.prol.loopexit, label %for.body35.prol

for.body35.prol:                                  ; preds = %for.body35.preheader, %for.body35.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body35.prol ], [ %indvars.iv.ph, %for.body35.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body35.prol ], [ 0, %for.body35.preheader ]
  %arrayidx.prol = getelementptr float, ptr %a_vec, i64 %indvars.iv.prol
  %6 = load float, ptr %arrayidx.prol, align 4
  store float %6, ptr %arrayidx40, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body35.prol.loopexit, label %for.body35.prol, !llvm.loop !8

for.body35.prol.loopexit:                         ; preds = %for.body35.prol, %for.body35.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body35.preheader ], [ %indvars.iv.next.prol, %for.body35.prol ]
  %7 = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %8 = icmp ugt i64 %7, -4
  br i1 %8, label %for.end45, label %for.body35.preheader.new

for.body35.preheader.new:                         ; preds = %for.body35.prol.loopexit
  %invariant.gep9 = getelementptr i8, ptr %a_vec, i64 4
  %invariant.gep11 = getelementptr i8, ptr %a_vec, i64 8
  %invariant.gep13 = getelementptr i8, ptr %a_vec, i64 12
  br label %for.body35

for.body35:                                       ; preds = %for.body35, %for.body35.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %for.body35.preheader.new ], [ %indvars.iv.next.3, %for.body35 ]
  %arrayidx = getelementptr float, ptr %a_vec, i64 %indvars.iv
  %9 = load float, ptr %arrayidx, align 4
  store float %9, ptr %arrayidx40, align 4
  %gep10 = getelementptr float, ptr %invariant.gep9, i64 %indvars.iv
  %10 = load float, ptr %gep10, align 4
  store float %10, ptr %arrayidx40, align 4
  %gep12 = getelementptr float, ptr %invariant.gep11, i64 %indvars.iv
  %11 = load float, ptr %gep12, align 4
  store float %11, ptr %arrayidx40, align 4
  %gep14 = getelementptr float, ptr %invariant.gep13, i64 %indvars.iv
  %12 = load float, ptr %gep14, align 4
  store float %12, ptr %arrayidx40, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end45, label %for.body35, !llvm.loop !10

for.end45:                                        ; preds = %for.body35.prol.loopexit, %for.body35, %middle.block, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "target-cpu"="x86-64" }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6}
