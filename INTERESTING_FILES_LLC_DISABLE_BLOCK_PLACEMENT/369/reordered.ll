; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//369/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @xnn_f32_vmulc_minmax_ukernel__scalar_x2(i64 %n, ptr nocapture readonly %a, ptr nocapture writeonly %b) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 7
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret void

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader6

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i64 %index, 8
  %0 = icmp eq i64 %index.next, %n.vec
  br i1 %0, label %middle.block, label %vector.body, !llvm.loop !0

for.body.preheader:                               ; preds = %entry
  %1 = add i64 %n, -8
  %2 = lshr i64 %1, 3
  %3 = add nuw nsw i64 %2, 1
  %min.iters.check = icmp ult i64 %1, 56
  br i1 %min.iters.check, label %for.body.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %b, i64 4
  %scevgep3 = getelementptr i8, ptr %a, i64 4
  %bound0 = icmp ugt ptr %scevgep3, %b
  %bound1 = icmp ugt ptr %scevgep, %a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader6, label %vector.ph

for.body.preheader6:                              ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %n.addr.02.ph = phi i64 [ %n, %vector.memcheck ], [ %n, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader6, %for.body
  %n.addr.02 = phi i64 [ %sub, %for.body ], [ %n.addr.02.ph, %for.body.preheader6 ]
  %4 = load float, ptr %a, align 4
  %mul = fmul float %4, 0.000000e+00
  store float %mul, ptr %b, align 4
  %sub = add i64 %n.addr.02, -8
  %cmp = icmp ugt i64 %sub, 7
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !3

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 4611686018427387896
  %5 = shl i64 %n.vec, 3
  %ind.end = sub i64 %n, %5
  %6 = load float, ptr %a, align 4, !alias.scope !4
  %7 = fmul float %6, 0.000000e+00
  store float %7, ptr %b, align 4, !alias.scope !7, !noalias !4
  br label %vector.body
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !1}
!4 = !{!5}
!5 = distinct !{!5, !6}
!6 = distinct !{!6, !"LVerDomain"}
!7 = !{!8}
!8 = distinct !{!8, !6}
