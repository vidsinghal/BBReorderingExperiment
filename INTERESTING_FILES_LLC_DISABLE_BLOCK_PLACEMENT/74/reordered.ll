; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//74/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @lj_cf_bit_tohex(i1 %cmp.not.not, i32 %call, ptr nocapture writeonly %buf, i32 %spec.select, i32 %spec.select1, i32 %b.04, i32 %and, ptr nocapture readonly %.str.2, i64 %idxprom, ptr nocapture readnone %arrayidx) local_unnamed_addr #0 {
entry:
  %cmp61 = icmp sgt i32 %call, 0
  br i1 %cmp61, label %iter.check, label %for.end

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ]
  %offset.idx11 = sub i64 %5, %index10
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 0, i64 %offset.idx11
  store <4 x i8> %broadcast.splat13, ptr %gep, align 1
  %index.next15 = add nuw i64 %index10, 4
  %0 = icmp eq i64 %index.next15, %n.vec7
  br i1 %0, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !0

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx8 = getelementptr [8 x i8], ptr %buf, i64 0, i64 %indvars.iv
  store i8 %.pre, ptr %arrayidx8, align 1
  %cmp6 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !3

for.end:                                          ; preds = %for.body, %middle.block, %vec.epilog.middle.block, %entry
  ret i32 0

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %5, %iter.check ], [ %ind.end8, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i32 %call, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %5, %index
  %1 = getelementptr [8 x i8], ptr %buf, i64 0, i64 %offset.idx
  %2 = getelementptr i8, ptr %1, i64 -15
  %3 = getelementptr i8, ptr %1, i64 -31
  store <16 x i8> %broadcast.splat, ptr %2, align 1
  store <16 x i8> %broadcast.splat, ptr %3, align 1
  %index.next = add nuw i64 %index, 32
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !4

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %5, 2147483616
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %n.vec7, %5
  br i1 %cmp.n9, label %for.end, label %for.body.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %5, 2147483644
  %ind.end = and i64 %5, 3
  %broadcast.splatinsert12 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat13 = shufflevector <4 x i8> %broadcast.splatinsert12, <4 x i8> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %buf, i64 -3
  br label %vec.epilog.vector.body

iter.check:                                       ; preds = %entry
  %5 = zext nneg i32 %call to i64
  %.pre = load i8, ptr %.str.2, align 1
  %min.iters.check = icmp ult i32 %call, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.main.loop.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end8 = and i64 %5, 31
  %n.vec.remaining = and i64 %5, 28
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.isvectorized", i32 1}
!2 = !{!"llvm.loop.unroll.runtime.disable"}
!3 = distinct !{!3, !2, !1}
!4 = distinct !{!4, !1, !2}
