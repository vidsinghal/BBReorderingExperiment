; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//574/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @v3p_netlib_srot_(ptr nocapture writeonly %sx, i64 %0, i64 %1) local_unnamed_addr #0 {
entry:
  %cmp17.not1 = icmp slt i64 %0, 0
  br i1 %cmp17.not1, label %for.end, label %for.body.preheader

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %5, -8
  %ind.end = mul nuw i64 %n.vec, %1
  br label %vector.body

for.body.preheader5:                              ; preds = %for.body.preheader, %middle.block
  %ix.03.ph = phi i64 [ 0, %for.body.preheader ], [ %ind.end, %middle.block ]
  %i__.02.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr float, ptr %sx, i64 %index
  %3 = getelementptr i8, ptr %2, i64 16
  store <4 x float> zeroinitializer, ptr %2, align 4
  store <4 x float> zeroinitializer, ptr %3, align 4
  %index.next = add nuw i64 %index, 8
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader5

for.body:                                         ; preds = %for.body.preheader5, %for.body
  %ix.03 = phi i64 [ %add27, %for.body ], [ %ix.03.ph, %for.body.preheader5 ]
  %i__.02 = phi i64 [ %inc, %for.body ], [ %i__.02.ph, %for.body.preheader5 ]
  %arrayidx26 = getelementptr float, ptr %sx, i64 %ix.03
  store float 0.000000e+00, ptr %arrayidx26, align 4
  %add27 = add i64 %ix.03, %1
  %inc = add nuw i64 %i__.02, 1
  %exitcond.not = icmp eq i64 %i__.02, %0
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !3

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret i32 0

for.body.preheader:                               ; preds = %entry
  %5 = add nuw i64 %0, 1
  %min.iters.check = icmp ugt i64 %0, 6
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %for.body.preheader5
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !1}
