; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//219/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @singleseqtyrsearch(ptr readonly %tyrcountinfo, ptr nocapture readonly %tyrsearchinfo, i64 %0) local_unnamed_addr #0 {
entry:
  %add.ptr1.i = getelementptr i8, ptr %tyrcountinfo, i64 %0
  %cmp2.peel.i = icmp ugt ptr %add.ptr1.i, %tyrcountinfo
  %cmp2.i.not = icmp ugt ptr %add.ptr1.i, inttoptr (i64 1 to ptr)
  %searchstrand = getelementptr i8, ptr %tyrsearchinfo, i64 44
  br i1 %cmp2.peel.i, label %entry.split.us, label %while.cond

for.body.i:                                       ; preds = %entry.split.us.split.us.split, %for.body.i
  br label %for.body.i

if.then18:                                        ; preds = %while.cond, %while.cond.us, %while.cond.us.us.us, %while.cond.us.us
  ret void

entry.split.us.split.us:                          ; preds = %entry.split.us
  br i1 %cmp2.i.not, label %entry.split.us.split.us.split, label %while.cond.us.us.us

while.cond.us.us:                                 ; preds = %entry.split.us.split.us.split, %while.cond.us.us
  store volatile i32 0, ptr null, align 4294967296
  %1 = load i32, ptr %searchstrand, align 4
  %tobool17.not.us.us = icmp eq i32 %1, 0
  br i1 %tobool17.not.us.us, label %while.cond.us.us, label %if.then18

while.cond:                                       ; preds = %entry, %while.cond
  store volatile i32 0, ptr null, align 4294967296
  %2 = load i32, ptr %searchstrand, align 4
  %tobool17.not = icmp eq i32 %2, 0
  br i1 %tobool17.not, label %while.cond, label %if.then18

entry.split.us.split.us.split:                    ; preds = %entry.split.us.split.us
  %3 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cmp3.not.i.us.us.not = icmp eq i8 %3, 0
  br i1 %cmp3.not.i.us.us.not, label %for.body.i, label %while.cond.us.us, !llvm.loop !0

entry.split.us:                                   ; preds = %entry
  %4 = load i8, ptr %tyrcountinfo, align 1
  %cmp3.not.peel.i.us = icmp eq i8 %4, 0
  br i1 %cmp3.not.peel.i.us, label %entry.split.us.split.us, label %while.cond.us

while.cond.us.us.us:                              ; preds = %entry.split.us.split.us, %while.cond.us.us.us
  store volatile i32 0, ptr null, align 4294967296
  %5 = load i32, ptr %searchstrand, align 4
  %tobool17.not.us.us.us = icmp eq i32 %5, 0
  br i1 %tobool17.not.us.us.us, label %while.cond.us.us.us, label %if.then18

while.cond.us:                                    ; preds = %entry.split.us, %while.cond.us
  store volatile i32 0, ptr null, align 4294967296
  %6 = load i32, ptr %searchstrand, align 4
  %tobool17.not.us = icmp eq i32 %6, 0
  br i1 %tobool17.not.us, label %while.cond.us, label %if.then18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define noundef i64 @gt_containsspecialbytestring(ptr readonly %seq, i64 %len) local_unnamed_addr #1 {
entry:
  %add.ptr1 = getelementptr i8, ptr %seq, i64 %len
  %cmp2.peel = icmp ugt ptr %add.ptr1, %seq
  br i1 %cmp2.peel, label %for.body.peel, label %cleanup

for.body:                                         ; preds = %for.body.preheader, %for.body
  br i1 %brmerge, label %cleanup, label %for.body, !llvm.loop !0

cleanup:                                          ; preds = %for.body, %for.cond.peel.next, %for.body.peel, %entry
  ret i64 0

for.body.preheader:                               ; preds = %for.cond.peel.next
  %0 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cmp3.not = icmp ne i8 %0, 0
  %brmerge = or i1 %cmp3.not, %cmp2
  br label %for.body

for.body.peel:                                    ; preds = %entry
  %1 = load i8, ptr %seq, align 1
  %cmp3.not.peel = icmp eq i8 %1, 0
  br i1 %cmp3.not.peel, label %for.cond.peel.next, label %cleanup

for.cond.peel.next:                               ; preds = %for.body.peel
  %cmp2 = icmp ule ptr %add.ptr1, inttoptr (i64 1 to ptr)
  br i1 %cmp2, label %cleanup, label %for.body.preheader
}

attributes #0 = { nofree norecurse nounwind }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
