; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//404/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic(i64 %kc) local_unnamed_addr #0 {
entry:
  %0 = add i64 %kc, -1
  %min.iters.check = icmp ult i64 %kc, 8
  %min.iters.check1 = icmp ult i64 %kc, 32
  %n.vec = and i64 %kc, -32
  %cmp.n = icmp eq i64 %n.vec, %kc
  %ind.end6 = and i64 %kc, 31
  %n.vec.remaining = and i64 %kc, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  %n.vec5 = and i64 %kc, -8
  %ind.end = and i64 %kc, 7
  %cmp.n10 = icmp eq i64 %n.vec5, %kc
  br label %iter.check

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ]
  %next.gep12 = getelementptr i8, ptr %a0.0, i64 %index11
  %wide.load13 = load <8 x i8>, ptr %next.gep12, align 1
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %index.next14 = add nuw i64 %index11, 8
  %1 = icmp eq i64 %index.next14, %n.vec5
  br i1 %1, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !0

do.body54:                                        ; preds = %do.body54.preheader, %do.body54
  %k.0 = phi i64 [ %sub95, %do.body54 ], [ %k.0.ph, %do.body54.preheader ]
  %a0.1 = phi ptr [ %incdec.ptr, %do.body54 ], [ %a0.1.ph, %do.body54.preheader ]
  %incdec.ptr = getelementptr i8, ptr %a0.1, i64 1
  %2 = load i8, ptr %a0.1, align 1
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %sub95 = add i64 %k.0, -1
  %cmp96.not = icmp eq i64 %sub95, 0
  br i1 %cmp96.not, label %do.end, label %do.body54, !llvm.loop !3

do.end:                                           ; preds = %do.body54, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %4, %middle.block ], [ %5, %vec.epilog.middle.block ], [ %2, %do.body54 ]
  %scevgep = getelementptr i8, ptr %a0.0, i64 %0
  %conv103 = uitofp i8 %.lcssa to float
  %call = tail call i32 @fp32_to_bits(float %conv103)
  br label %iter.check

do.body54.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %k.0.ph = phi i64 [ %kc, %iter.check ], [ %ind.end6, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  %a0.1.ph = phi ptr [ %a0.0, %iter.check ], [ %ind.end8, %vec.epilog.iter.check ], [ %ind.end7, %vec.epilog.middle.block ]
  br label %do.body54

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load3 = load <16 x i8>, ptr %gep, align 1
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %index.next = add nuw i64 %index, 32
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !4

middle.block:                                     ; preds = %vector.body
  %4 = extractelement <16 x i8> %wide.load3, i64 15
  br i1 %cmp.n, label %do.end, label %vec.epilog.iter.check

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr i8, ptr %a0.0, i64 16
  br label %vector.body

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %5 = extractelement <8 x i8> %wide.load13, i64 7
  br i1 %cmp.n10, label %do.end, label %do.body54.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %ind.end7 = getelementptr i8, ptr %a0.0, i64 %n.vec5
  br label %vec.epilog.vector.body

iter.check:                                       ; preds = %do.end, %entry
  %a0.0 = phi ptr [ undef, %entry ], [ %scevgep, %do.end ]
  br i1 %min.iters.check, label %do.body54.preheader, label %vector.main.loop.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end8 = getelementptr i8, ptr %a0.0, i64 %n.vec
  br i1 %min.epilog.iters.check, label %do.body54.preheader, label %vec.epilog.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fp32_to_bits(float) local_unnamed_addr

attributes #0 = { noreturn "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !2, !1}
!4 = distinct !{!4, !1, !2}
