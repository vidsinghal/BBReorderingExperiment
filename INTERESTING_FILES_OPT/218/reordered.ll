; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//218/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @hwloc_snprintf(...) local_unnamed_addr

; Function Attrs: noreturn
define noundef i32 @hwloc_bitmap_list_snprintf(ptr nocapture readonly %buf, ptr noalias nocapture writeonly %set, i32 %0) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq i32 %0, 0
  %mul.le.i = shl i32 %0, 1
  br i1 %cmp.i, label %entry.split.us, label %while.cond

for.cond.i:                                       ; preds = %for.cond.peel.next.i, %for.cond.i
  br label %for.cond.i

while.cond:                                       ; preds = %entry, %cleanup21.loopexit.i
  %.pre.i = load ptr, ptr %buf, align 8
  %arrayidx.peel.i = getelementptr i8, ptr %.pre.i, i64 8
  %1 = load i64, ptr %arrayidx.peel.i, align 8
  %tobool10.not.peel.i = icmp eq i64 %1, 0
  br i1 %tobool10.not.peel.i, label %for.cond.peel.next.i, label %cleanup21.loopexit.i

for.cond.peel.next.i:                             ; preds = %while.cond
  %.pre2.i = load i64, ptr %.pre.i, align 8
  %tobool10.not.i = icmp eq i64 %.pre2.i, 0
  br i1 %tobool10.not.i, label %for.cond.i, label %cleanup21.loopexit.i, !llvm.loop !0

entry.split.us:                                   ; preds = %entry
  store i32 0, ptr %set, align 4
  br label %while.cond.us

cleanup21.loopexit.i:                             ; preds = %for.cond.peel.next.i, %while.cond
  store i32 %mul.le.i, ptr %set, align 4
  %call8 = tail call i32 (...) @hwloc_snprintf()
  br label %while.cond

while.cond.us:                                    ; preds = %while.cond.us, %entry.split.us
  %call8.us = tail call i32 (...) @hwloc_snprintf()
  br label %while.cond.us
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define range(i32 0, -1) i32 @hwloc_bitmap_next(ptr nocapture readonly %set, i32 %prev_cpu) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %prev_cpu, 0
  br i1 %cmp, label %cleanup21, label %entry.for.cond_crit_edge

for.cond:                                         ; preds = %for.cond, %for.cond.peel.next
  br i1 %tobool10.not, label %for.cond, label %cleanup21.loopexit, !llvm.loop !0

for.cond.peel.next:                               ; preds = %entry.for.cond_crit_edge
  %.pre2 = load i64, ptr %.pre, align 8
  %tobool10.not = icmp eq i64 %.pre2, 0
  br label %for.cond

entry.for.cond_crit_edge:                         ; preds = %entry
  %.pre = load ptr, ptr %set, align 8
  %arrayidx.peel = getelementptr i8, ptr %.pre, i64 8
  %0 = load i64, ptr %arrayidx.peel, align 8
  %tobool10.not.peel = icmp eq i64 %0, 0
  br i1 %tobool10.not.peel, label %for.cond.peel.next, label %cleanup21.loopexit

cleanup21:                                        ; preds = %cleanup21.loopexit, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %mul.le, %cleanup21.loopexit ]
  ret i32 %retval.2

cleanup21.loopexit:                               ; preds = %for.cond, %entry.for.cond_crit_edge
  %mul.le = shl i32 %prev_cpu, 1
  br label %cleanup21
}

attributes #0 = { noreturn }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
