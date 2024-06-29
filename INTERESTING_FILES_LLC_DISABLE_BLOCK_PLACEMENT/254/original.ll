; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//254/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @ctrttp_(ptr nocapture readonly %n, ptr nocapture writeonly %ap, i32 %0) local_unnamed_addr #0 {
entry:
  %cmp18.not1 = icmp slt i32 %0, 0
  br i1 %cmp18.not1, label %for.end, label %for.body19.preheader

for.body19.preheader:                             ; preds = %entry
  %1 = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %1 to i64
  %min.iters.check = icmp ult i32 %0, 7
  br i1 %min.iters.check, label %for.body19.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body19.preheader
  %2 = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %ap, i64 %2
  %scevgep7 = getelementptr i8, ptr %n, i64 4
  %bound0 = icmp ugt ptr %scevgep7, %ap
  %bound1 = icmp ugt ptr %scevgep, %n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body19.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = or disjoint i64 %index, 2
  %4 = load float, ptr %n, align 4, !alias.scope !0
  %broadcast.splatinsert8 = insertelement <2 x float> poison, float %4, i64 0
  %broadcast.splat9 = shufflevector <2 x float> %broadcast.splatinsert8, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = getelementptr %struct.complex, ptr %ap, i64 %index
  %6 = getelementptr %struct.complex, ptr %ap, i64 %3
  %interleaved.vec = shufflevector <2 x float> zeroinitializer, <2 x float> %broadcast.splat9, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %5, align 4
  store <4 x float> %interleaved.vec, ptr %6, align 4
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !3

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body19.preheader11

for.body19.preheader11:                           ; preds = %vector.memcheck, %for.body19.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body19.preheader ], [ %n.vec, %middle.block ]
  br label %for.body19

for.body19:                                       ; preds = %for.body19.preheader11, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ %indvars.iv.ph, %for.body19.preheader11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx22 = getelementptr %struct.complex, ptr %ap, i64 %indvars.iv
  store float 0.000000e+00, ptr %arrayidx22, align 4
  %8 = load float, ptr %n, align 4
  %i28 = getelementptr %struct.complex, ptr %ap, i64 %indvars.iv, i32 1
  store float %8, ptr %i28, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body19, !llvm.loop !6

for.end:                                          ; preds = %for.body19, %middle.block, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = distinct !{!3, !4, !5}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !4}
