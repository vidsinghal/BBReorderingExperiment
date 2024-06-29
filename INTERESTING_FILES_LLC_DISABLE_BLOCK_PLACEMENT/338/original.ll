; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//338/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none)
define noalias noundef nonnull ptr @tokenise_search_path(ptr nocapture readonly %searchpath, i32 %j.1, i32 %j.0) local_unnamed_addr #0 {
entry:
  %idxprom20 = zext i32 %j.1 to i64
  %arrayidx21 = getelementptr i8, ptr null, i64 %idxprom20
  %arrayidx15.phi.trans.insert = getelementptr i8, ptr %searchpath, i64 1
  %.pre = load i8, ptr %arrayidx15.phi.trans.insert, align 1
  %cmp17 = icmp eq i8 %.pre, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  br i1 %cmp17, label %if.then19, label %for.cond.backedge

if.then19:                                        ; preds = %for.cond
  store i8 poison, ptr %arrayidx21, align 1
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then19, %for.cond
  br label %for.cond, !llvm.loop !0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
