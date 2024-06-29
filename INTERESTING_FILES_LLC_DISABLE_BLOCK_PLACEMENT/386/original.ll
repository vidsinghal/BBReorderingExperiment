; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//386/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite)
define void @xnn_f32_vmul_relu_ukernel__scalar_x8(i64 %n, ptr nocapture writeonly %a, ptr nocapture writeonly %b, ptr nocapture readonly %y) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 31
  br i1 %cmp1, label %for.body.preheader, label %do.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = add i64 %n, -32
  %1 = lshr i64 %0, 5
  %2 = add nuw nsw i64 %1, 1
  %min.iters.check = icmp ult i64 %0, 480
  br i1 %min.iters.check, label %for.body.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %a, i64 4
  %scevgep3 = getelementptr i8, ptr %b, i64 4
  %scevgep4 = getelementptr i8, ptr %y, i64 4
  %bound0 = icmp ugt ptr %scevgep3, %a
  %bound1 = icmp ugt ptr %scevgep, %b
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ugt ptr %scevgep4, %a
  %bound16 = icmp ugt ptr %scevgep, %y
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  %bound08 = icmp ugt ptr %scevgep4, %b
  %bound19 = icmp ugt ptr %scevgep3, %y
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx11 = or i1 %conflict.rdx, %found.conflict10
  br i1 %conflict.rdx11, label %for.body.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 1152921504606846968
  %3 = shl i64 %n.vec, 5
  %ind.end = sub i64 %n, %3
  %4 = load float, ptr %y, align 4, !alias.scope !0
  store float 0.000000e+00, ptr %a, align 4, !alias.scope !3, !noalias !5
  %5 = fmul float %4, 0.000000e+00
  store float %5, ptr %b, align 4, !alias.scope !7, !noalias !0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %do.body.preheader, label %for.body.preheader14

for.body.preheader14:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %n.addr.02.ph = phi i64 [ %n, %vector.memcheck ], [ %n, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader14, %for.body
  %n.addr.02 = phi i64 [ %sub, %for.body ], [ %n.addr.02.ph, %for.body.preheader14 ]
  %7 = load float, ptr %y, align 4
  %mul20 = fmul float %7, 0.000000e+00
  store float 0.000000e+00, ptr %a, align 4
  store float %mul20, ptr %b, align 4
  %sub = add i64 %n.addr.02, -32
  %cmp = icmp ugt i64 %sub, 31
  br i1 %cmp, label %for.body, label %do.body.preheader, !llvm.loop !11

do.body.preheader:                                ; preds = %for.body, %middle.block, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  br label %do.body
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = !{!6, !1}
!6 = distinct !{!6, !2}
!7 = !{!6}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !9}
