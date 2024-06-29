; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//13/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @main(i1 %cmp, ptr nocapture readonly %test_suite_tests) local_unnamed_addr {
entry:
  br i1 %cmp, label %for.body.us.preheader, label %for.cond.cleanup

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %0 = load ptr, ptr %arrayidx.us, align 16
  %call2.us = tail call i32 %0()
  %call5.us = load volatile i32, ptr null, align 4294967296
  br label %for.body.us, !llvm.loop !0

for.body.us.preheader:                            ; preds = %entry
  %1 = load ptr, ptr %test_suite_tests, align 16
  %call2.us.peel = tail call i32 %1()
  %call5.us.peel = load volatile i32, ptr null, align 4294967296
  %arrayidx.us = getelementptr i8, ptr %test_suite_tests, i64 16
  br label %for.body.us

for.cond.cleanup:                                 ; preds = %entry
  ret i32 0
}

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
