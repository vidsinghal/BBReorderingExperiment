; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//365/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite)
define noundef i32 @f77_constant(ptr nocapture writeonly %0, ptr nocapture readonly %incdec.ptr, ...) local_unnamed_addr #0 {
entry:
  %1 = load i8, ptr %incdec.ptr, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %while.cond.outer, label %while.cond.us

while.cond.outer:                                 ; preds = %entry, %if.then36
  %.pre1.ph = phi i8 [ %.pre.pre, %if.then36 ], [ 0, %entry ]
  %cmp34 = icmp eq i8 %.pre1.ph, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.cond
  br i1 %cmp34, label %if.then36, label %while.cond, !llvm.loop !0

if.then36:                                        ; preds = %while.cond
  store i8 0, ptr %0, align 1
  %.pre.pre = load i8, ptr %incdec.ptr, align 1
  br label %while.cond.outer, !llvm.loop !0

while.cond.us:                                    ; preds = %entry, %while.cond.us
  br label %while.cond.us
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
