; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//298/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define range(i32 0, 2) i32 @fs_build_range(ptr readnone %pfont, i32 %dec) local_unnamed_addr #0 {
entry:
  %cmp55 = icmp ne ptr %pfont, null
  %land.ext58 = zext i1 %cmp55 to i32
  %tobool36.not = icmp eq i32 %dec, 0
  %tobool36.not.peel = icmp eq i32 %dec, 0
  br label %while.body.peel

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, ptr %data.addr.0, i64 1
  %0 = load i8, ptr %data.addr.0, align 1
  %cmp38.not = icmp eq i8 %0, 0
  br i1 %cmp38.not, label %while.cond, label %while.cond.outer.loopexit, !llvm.loop !0

while.cond:                                       ; preds = %while.body.peel, %while.body
  %data.addr.0 = phi ptr [ %incdec.ptr, %while.body ], [ %incdec.ptr.peel, %while.body.peel ]
  br i1 %tobool36.not, label %if.end292, label %while.body

while.cond.outer.loopexit:                        ; preds = %while.body, %while.body.peel
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr.peel, %while.body.peel ], [ %incdec.ptr, %while.body ]
  br i1 %tobool36.not.peel, label %if.end292, label %while.body.peel

while.body.peel:                                  ; preds = %entry, %while.cond.outer.loopexit
  %access_done.0.ph13 = phi i32 [ 0, %entry ], [ %land.ext58, %while.cond.outer.loopexit ]
  %data.addr.0.ph12 = phi ptr [ null, %entry ], [ %incdec.ptr.lcssa, %while.cond.outer.loopexit ]
  %incdec.ptr.peel = getelementptr i8, ptr %data.addr.0.ph12, i64 1
  %1 = load i8, ptr %data.addr.0.ph12, align 1
  %cmp38.not.peel = icmp eq i8 %1, 0
  br i1 %cmp38.not.peel, label %while.cond, label %while.cond.outer.loopexit

if.end292:                                        ; preds = %while.cond.outer.loopexit, %while.cond
  %access_done.0.ph11 = phi i32 [ %access_done.0.ph13, %while.cond ], [ %land.ext58, %while.cond.outer.loopexit ]
  ret i32 %access_done.0.ph11
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
