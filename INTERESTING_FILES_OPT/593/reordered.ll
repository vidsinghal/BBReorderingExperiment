; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//593/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._xmlRegInputToken = type { ptr, ptr }

; Function Attrs: noreturn
define noundef i32 @xmlRegExecPushStringInternal(ptr nocapture readonly %exec, ptr nocapture readnone %value, ptr nocapture readnone %counts, i32 %.pre, i1 %cmp50, ptr nocapture readnone %callback303, ptr nocapture readonly %0) local_unnamed_addr #0 {
entry:
  %idxprom469 = sext i32 %.pre to i64
  %data471 = getelementptr %struct._xmlRegInputToken, ptr %0, i64 %idxprom469, i32 1
  %1 = load ptr, ptr %exec, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %while.cond.outer.us, label %while.cond.outer

for.cond.preheader.lr.ph:                         ; preds = %while.cond.outer
  br i1 %cmp50, label %for.cond, label %for.cond.preheader

while.cond.outer.us:                              ; preds = %entry, %while.cond.outer.us
  br label %while.cond.outer.us

while.cond.outer:                                 ; preds = %entry, %rollback
  %3 = phi ptr [ null, %rollback ], [ %1, %entry ]
  %data.addr.0.ph = phi ptr [ %4, %rollback ], [ null, %entry ]
  %cmp401 = icmp eq ptr %3, null
  br i1 %cmp401, label %rollback, label %for.cond.preheader.lr.ph

for.cond:                                         ; preds = %for.cond.preheader.lr.ph, %for.cond
  br label %for.cond

rollback:                                         ; preds = %for.cond.preheader, %while.cond.outer
  %4 = load ptr, ptr %data471, align 8
  br label %while.cond.outer, !llvm.loop !0

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.cond.preheader
  %5 = phi ptr [ %6, %for.cond.preheader ], [ %3, %for.cond.preheader.lr.ph ]
  tail call void %5(ptr null, ptr null, ptr null, ptr %data.addr.0.ph)
  %6 = load ptr, ptr %exec, align 8
  %cmp40 = icmp eq ptr %6, null
  br i1 %cmp40, label %rollback, label %for.cond.preheader
}

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
