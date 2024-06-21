; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//122/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite)
define void @WebPMultARGBRow_C(ptr nocapture writeonly %ptr, ptr nocapture readonly %arrayidx) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %arrayidx, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %for.cond.outer, label %for.cond.us

for.cond.us:                                      ; preds = %entry, %for.cond.us
  br label %for.cond.us

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  br i1 %cmp2, label %if.then3, label %for.cond, !llvm.loop !0

if.then3:                                         ; preds = %for.cond
  store i32 0, ptr %ptr, align 4
  %.pre.pre = load i32, ptr %arrayidx, align 4
  br label %for.cond.outer, !llvm.loop !0

for.cond.outer:                                   ; preds = %entry, %if.then3
  %.pre1.ph = phi i32 [ %.pre.pre, %if.then3 ], [ 0, %entry ]
  %cmp2 = icmp eq i32 %.pre1.ph, 0
  br label %for.cond
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
