; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//241/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define noundef i64 @vtkParse_NameLength(ptr nocapture readonly %text) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %text, align 1
  %cmp.peel = icmp eq i8 %0, 58
  %spec.select.peel = zext i1 %cmp.peel to i64
  %arrayidx9.peel = getelementptr i8, ptr %text, i64 %spec.select.peel
  %1 = load i8, ptr %arrayidx9.peel, align 1
  %cmp11.peel = icmp eq i8 %1, 0
  %brmerge.not = and i1 %cmp11.peel, %cmp.peel
  br i1 %brmerge.not, label %do.body.peel.next, label %do.end

do.body:                                          ; preds = %do.body, %do.body.peel.next
  br i1 %cmp11, label %do.body, label %do.end

do.body.peel.next:                                ; preds = %entry
  %arrayidx.phi.trans.insert = getelementptr i8, ptr %text, i64 1
  %.pre = load i8, ptr %arrayidx.phi.trans.insert, align 1
  %cmp = icmp eq i8 %.pre, 58
  %spec.select = zext i1 %cmp to i64
  %arrayidx9 = getelementptr i8, ptr %text, i64 %spec.select
  %2 = load i8, ptr %arrayidx9, align 1
  %cmp11 = icmp eq i8 %2, 0
  br label %do.body

do.end:                                           ; preds = %do.body, %entry
  ret i64 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) }
