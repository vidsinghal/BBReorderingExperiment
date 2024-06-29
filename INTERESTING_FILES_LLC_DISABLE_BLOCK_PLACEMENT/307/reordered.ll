; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//307/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @umfdl_scale_column(i64 %0, i64 %mul20, ptr nocapture %1) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr double, ptr %1, i64 %0
  %add.ptr21 = getelementptr double, ptr %1, i64 %mul20
  %cmp221 = icmp sgt i64 %0, 0
  br i1 %cmp221, label %for.body.preheader, label %for.end

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr double, ptr %add.ptr21, i64 %index
  %3 = getelementptr i8, ptr %2, i64 16
  %wide.load = load <2 x double>, ptr %2, align 8
  %wide.load3 = load <2 x double>, ptr %3, align 8
  %4 = getelementptr double, ptr %add.ptr, i64 %index
  %5 = getelementptr i8, ptr %4, i64 16
  store <2 x double> %wide.load, ptr %4, align 8
  store <2 x double> %wide.load3, ptr %5, align 8
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !0

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader4
  %i.02.unr = phi i64 [ %i.02.ph, %for.body.preheader4 ], [ %inc.prol, %for.body.prol ]
  %7 = sub nsw i64 %i.02.ph, %0
  %8 = icmp ugt i64 %7, -4
  br i1 %8, label %for.end, label %for.body

vector.memcheck:                                  ; preds = %for.body.preheader
  %9 = sub i64 %0, %mul20
  %10 = and i64 %9, 2305843009213693948
  %diff.check = icmp eq i64 %10, 0
  br i1 %diff.check, label %for.body.preheader4, label %vector.ph

for.body.preheader4:                              ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %i.02.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %xtraiter = and i64 %0, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader4, %for.body.prol
  %i.02.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %i.02.ph, %for.body.preheader4 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader4 ]
  %arrayidx23.prol = getelementptr double, ptr %add.ptr21, i64 %i.02.prol
  %11 = load double, ptr %arrayidx23.prol, align 8
  %arrayidx24.prol = getelementptr double, ptr %add.ptr, i64 %i.02.prol
  store double %11, ptr %arrayidx24.prol, align 8
  %inc.prol = add nuw nsw i64 %i.02.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !3

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i64 %0, 10
  br i1 %min.iters.check, label %for.body.preheader4, label %vector.memcheck

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %0, 9223372036854775804
  br label %vector.body

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %0
  br i1 %cmp.n, label %for.end, label %for.body.preheader4

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %i.02 = phi i64 [ %inc.3, %for.body ], [ %i.02.unr, %for.body.prol.loopexit ]
  %arrayidx23 = getelementptr double, ptr %add.ptr21, i64 %i.02
  %12 = load double, ptr %arrayidx23, align 8
  %arrayidx24 = getelementptr double, ptr %add.ptr, i64 %i.02
  store double %12, ptr %arrayidx24, align 8
  %inc = add nuw nsw i64 %i.02, 1
  %arrayidx23.1 = getelementptr double, ptr %add.ptr21, i64 %inc
  %13 = load double, ptr %arrayidx23.1, align 8
  %arrayidx24.1 = getelementptr double, ptr %add.ptr, i64 %inc
  store double %13, ptr %arrayidx24.1, align 8
  %inc.1 = add nuw nsw i64 %i.02, 2
  %arrayidx23.2 = getelementptr double, ptr %add.ptr21, i64 %inc.1
  %14 = load double, ptr %arrayidx23.2, align 8
  %arrayidx24.2 = getelementptr double, ptr %add.ptr, i64 %inc.1
  store double %14, ptr %arrayidx24.2, align 8
  %inc.2 = add nuw nsw i64 %i.02, 3
  %arrayidx23.3 = getelementptr double, ptr %add.ptr21, i64 %inc.2
  %15 = load double, ptr %arrayidx23.3, align 8
  %arrayidx24.3 = getelementptr double, ptr %add.ptr, i64 %inc.2
  store double %15, ptr %arrayidx24.3, align 8
  %inc.3 = add nuw nsw i64 %i.02, 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %0
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "target-cpu"="x86-64" }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = distinct !{!5, !1}
