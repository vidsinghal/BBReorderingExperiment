; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//194/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite)
define void @gdcmjpeg16_jpeg_idct_4x4(ptr nocapture %incdec.ptr, i32 %0, i32 %conv58) local_unnamed_addr #0 {
entry:
  %cmp1.peel = icmp eq i32 %conv58, 0
  br i1 %cmp1.peel, label %for.inc.peel, label %if.end.peel

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  br i1 %cmp1, label %for.cond, label %if.end, !llvm.loop !0

for.cond.outer:                                   ; preds = %if.end, %for.inc.peel
  %tmp0.0.ph2 = phi i32 [ %tmp0.0.ph, %if.end ], [ %incdec.ptr.promoted, %for.inc.peel ]
  %tmp0.0.ph = phi i32 [ %tmp0.0.ph2, %if.end ], [ %tmp0.1.peel, %for.inc.peel ]
  br label %for.cond

if.end.peel:                                      ; preds = %entry
  %1 = load i32, ptr %incdec.ptr, align 4
  store i32 0, ptr %incdec.ptr, align 4
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end.peel, %entry
  %tmp0.1.peel = phi i32 [ 0, %entry ], [ %1, %if.end.peel ]
  %cmp1 = icmp eq i32 %0, 0
  %incdec.ptr.promoted = load i32, ptr %incdec.ptr, align 4
  br label %for.cond.outer

if.end:                                           ; preds = %for.cond
  br label %for.cond.outer, !llvm.loop !0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
