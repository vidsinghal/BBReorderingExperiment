; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//427/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none)
define noundef i32 @pcfWriteFont(ptr nocapture writeonly %pFont, i32 %and106, i32 %mask.0) local_unnamed_addr #0 {
entry:
  store i32 %and106, ptr %pFont, align 4
  %and1064 = and i32 %mask.0, 1
  %cond.not = icmp ne i32 %and1064, 0
  br i1 %cond.not, label %sw.bb.preheader.peel.newph, label %infloop.preheader

sw.bb.preheader.peel.newph:                       ; preds = %entry
  store i32 0, ptr inttoptr (i64 4 to ptr), align 4
  %and3.peel = and i32 %and106, 1
  %cond.peel = icmp eq i32 %and3.peel, 0
  %brmerge = or i1 %cond.peel, %cond.not
  br label %sw.bb

sw.bb:                                            ; preds = %sw.bb.preheader.peel.newph, %sw.bb
  br i1 %brmerge, label %sw.bb, label %infloop.preheader, !llvm.loop !0

infloop.preheader:                                ; preds = %sw.bb, %entry
  br label %infloop

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
