; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//352/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @HTable_Resize(ptr nocapture readonly %0) local_unnamed_addr #0 {
entry:
  %1 = load i32, ptr %0, align 8
  %cmp13.not.peel = icmp eq i32 %1, 0
  br i1 %cmp13.not.peel, label %for.cond6.backedge.peel, label %if.then.peel

for.cond6.backedge:                               ; preds = %for.cond6, %if.then
  br label %for.cond6, !llvm.loop !0

for.cond6:                                        ; preds = %for.cond6.backedge, %for.cond6.backedge.peel
  %2 = load i32, ptr %arrayidx11, align 8
  %cmp13.not = icmp eq i32 %2, 0
  br i1 %cmp13.not, label %for.cond6.backedge, label %if.then

if.then.peel:                                     ; preds = %entry
  tail call void @HTable_Insert(i32 0)
  br label %for.cond6.backedge.peel

for.cond6.backedge.peel:                          ; preds = %if.then.peel, %entry
  %arrayidx11 = getelementptr i8, ptr %0, i64 16
  br label %for.cond6

if.then:                                          ; preds = %for.cond6
  tail call void @HTable_Insert(i32 0)
  br label %for.cond6.backedge
}

declare void @HTable_Insert(i32) local_unnamed_addr

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
