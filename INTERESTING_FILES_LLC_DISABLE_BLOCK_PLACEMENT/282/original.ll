; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//282/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define double @zlanhe_(ptr nocapture writeonly %n, ptr nocapture readonly %a, i32 %0) local_unnamed_addr #0 {
entry:
  %cmp5.not1 = icmp slt i32 %0, 0
  br i1 %cmp5.not1, label %if.end280, label %for.end.preheader

for.end.preheader:                                ; preds = %entry
  %1 = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %1 to i64
  %min.iters.check = icmp ult i32 %0, 16
  br i1 %min.iters.check, label %for.end.preheader5, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.end.preheader
  %scevgep = getelementptr i8, ptr %n, i64 8
  %2 = shl nuw nsw i64 %wide.trip.count, 4
  %3 = getelementptr i8, ptr %a, i64 %2
  %scevgep4 = getelementptr i8, ptr %3, i64 -8
  %bound0 = icmp ugt ptr %scevgep4, %n
  %bound1 = icmp ugt ptr %scevgep, %a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.end.preheader5, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count, 15
  %4 = icmp eq i64 %n.mod.vf, 0
  %5 = select i1 %4, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %5
  store double 0.000000e+00, ptr %n, align 8, !alias.scope !0, !noalias !3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %index.next = add nuw i64 %index, 16
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %for.end.preheader5, label %vector.body, !llvm.loop !5

for.end.preheader5:                               ; preds = %vector.body, %vector.memcheck, %for.end.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.end.preheader ], [ %n.vec, %vector.body ]
  br label %for.end

for.end:                                          ; preds = %for.end.preheader5, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ %indvars.iv.ph, %for.end.preheader5 ]
  %arrayidx18 = getelementptr %struct.doublecomplex, ptr %a, i64 %indvars.iv
  %7 = load double, ptr %arrayidx18, align 8
  store double 0.000000e+00, ptr %n, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end280, label %for.end, !llvm.loop !8

if.end280:                                        ; preds = %for.end, %entry
  %value.02.lcssa = phi double [ 0.000000e+00, %entry ], [ %7, %for.end ]
  ret double %value.02.lcssa
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!0 = !{!1}
!1 = distinct !{!1, !2}
!2 = distinct !{!2, !"LVerDomain"}
!3 = !{!4}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !6}
