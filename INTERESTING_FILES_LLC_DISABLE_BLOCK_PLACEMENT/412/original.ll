; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//412/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @xnn_f32_vdiv_ukernel__scalar_x1(i64 %n, ptr nocapture readonly %a, ptr nocapture writeonly %b, float %0) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 3
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %1 = add i64 %n, -4
  %2 = lshr i64 %1, 2
  %3 = add nuw nsw i64 %2, 1
  %min.iters.check = icmp ult i64 %1, 28
  br i1 %min.iters.check, label %for.body.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %b, i64 4
  %scevgep3 = getelementptr i8, ptr %a, i64 4
  %bound0 = icmp ugt ptr %scevgep3, %b
  %bound1 = icmp ugt ptr %scevgep, %a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775800
  %4 = shl i64 %n.vec, 2
  %ind.end = sub i64 %n, %4
  %5 = load float, ptr %a, align 4, !alias.scope !0
  %6 = fmul float %5, %0
  store float %6, ptr %b, align 4, !alias.scope !3, !noalias !0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i64 %index, 8
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader8

for.body.preheader8:                              ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %n.addr.02.ph = phi i64 [ %n, %vector.memcheck ], [ %n, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader8, %for.body
  %n.addr.02 = phi i64 [ %sub, %for.body ], [ %n.addr.02.ph, %for.body.preheader8 ]
  %8 = load float, ptr %a, align 4
  %div = fmul float %8, %0
  store float %div, ptr %b, align 4
  %sub = add i64 %n.addr.02, -4
  %cmp = icmp ugt i64 %sub, 3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !8

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !6}
