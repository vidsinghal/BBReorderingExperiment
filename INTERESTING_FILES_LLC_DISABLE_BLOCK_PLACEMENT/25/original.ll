; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//25/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @test_simde_vaddw_s8(i64 %inc) local_unnamed_addr #0 {
for.body.peel:
  %call12.peel = load volatile i32, ptr null, align 4294967296
  %tobool.not.peel = icmp eq i32 %call12.peel, 0
  br i1 %tobool.not.peel, label %for.cond.peel.next, label %cleanup15

for.cond.peel.next:                               ; preds = %for.body.peel
  %cmp = icmp ne i64 %inc, 0
  br i1 %cmp, label %cleanup15, label %for.body

for.body:                                         ; preds = %for.cond.peel.next, %for.body
  %call12 = load volatile i32, ptr null, align 4294967296
  %tobool.not = icmp ne i32 %call12, 0
  %brmerge = or i1 %tobool.not, %cmp
  br i1 %brmerge, label %cleanup15, label %for.body, !llvm.loop !0

cleanup15:                                        ; preds = %for.body, %for.cond.peel.next, %for.body.peel
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
