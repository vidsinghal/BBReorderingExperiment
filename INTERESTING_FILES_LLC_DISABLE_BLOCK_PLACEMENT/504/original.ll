; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//504/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @shuffle_generic_inline(i32 %type_size, ptr nocapture readonly %_src, ptr nocapture writeonly %_dest) local_unnamed_addr #0 {
entry:
  %cmp31 = icmp slt i32 %type_size, 0
  br i1 %cmp31, label %iter.check, label %for.end

iter.check:                                       ; preds = %entry
  %0 = sext i32 %type_size to i64
  %.pre = load i8, ptr %_src, align 1
  %narrow = sub i32 0, %type_size
  %1 = zext i32 %narrow to i64
  %min.iters.check = icmp ult i32 %narrow, 8
  br i1 %min.iters.check, label %for.body4.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i32 %narrow, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %1, 4294967264
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %_dest, i64 %0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %2 = getelementptr i8, ptr %gep, i64 16
  store <16 x i8> %broadcast.splat, ptr %gep, align 1
  store <16 x i8> %broadcast.splat, ptr %2, align 1
  %index.next = add nuw i64 %index, 32
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !0

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %1
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end7 = add nsw i64 %n.vec, %0
  %n.vec.remaining = and i64 %1, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body4.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %1, 4294967288
  %ind.end = add nsw i64 %n.vec6, %0
  %broadcast.splatinsert11 = insertelement <8 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat12 = shufflevector <8 x i8> %broadcast.splatinsert11, <8 x i8> poison, <8 x i32> zeroinitializer
  %invariant.gep14 = getelementptr i8, ptr %_dest, i64 %0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ]
  %gep15 = getelementptr i8, ptr %invariant.gep14, i64 %index9
  store <8 x i8> %broadcast.splat12, ptr %gep15, align 1
  %index.next13 = add nuw i64 %index9, 8
  %4 = icmp eq i64 %index.next13, %n.vec6
  br i1 %4, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n8 = icmp eq i64 %n.vec6, %1
  br i1 %cmp.n8, label %for.end, label %for.body4.preheader

for.body4.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %0, %iter.check ], [ %ind.end7, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %arrayidx8 = getelementptr i8, ptr %_dest, i64 %indvars.iv
  store i8 %.pre, ptr %arrayidx8, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %5 = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %5, 0
  br i1 %exitcond.not, label %for.end, label %for.body4, !llvm.loop !4

for.end:                                          ; preds = %for.body4, %middle.block, %vec.epilog.middle.block, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "target-cpu"="x86-64" }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !1, !2}
!4 = distinct !{!4, !2, !1}
