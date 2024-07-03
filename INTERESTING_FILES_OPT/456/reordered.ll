; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//456/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @main(i1 %cmp10) local_unnamed_addr {
entry:
  %cmp10.fr = freeze i1 %cmp10
  br i1 %cmp10.fr, label %while.cond.us, label %while.cond

while.cond.backedge:                              ; preds = %if.end.i, %while.cond, %if.end.peel.i
  br label %while.cond

if.end.peel.i:                                    ; preds = %while.cond
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  %0 = load i32, ptr inttoptr (i64 24 to ptr), align 8
  %cmp19.peel.i = icmp sgt i32 %0, 0
  br i1 %cmp19.peel.i, label %while.cond.backedge, label %if.end.i

if.end.i.us:                                      ; preds = %if.end.peel.i.us, %if.end.i.us
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  %1 = load i32, ptr inttoptr (i64 24 to ptr), align 8
  %cmp19.i.us = icmp sgt i32 %1, 0
  br i1 %cmp19.i.us, label %if.else352, label %if.end.i.us, !llvm.loop !0

if.end.i:                                         ; preds = %if.end.peel.i, %if.end.i
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  %2 = load i32, ptr inttoptr (i64 24 to ptr), align 8
  %cmp19.i = icmp sgt i32 %2, 0
  br i1 %cmp19.i, label %while.cond.backedge, label %if.end.i, !llvm.loop !0

while.cond.us:                                    ; preds = %entry
  %call328.us = tail call ptr @read_sg()
  %3 = load i32, ptr inttoptr (i64 4 to ptr), align 4
  %cmp4.peel.i.us = icmp sgt i32 %3, 0
  br i1 %cmp4.peel.i.us, label %if.else352, label %if.end.peel.i.us

if.else352:                                       ; preds = %if.end.i.us, %if.end.peel.i.us, %while.cond.us
  ret i32 0

if.end.peel.i.us:                                 ; preds = %while.cond.us
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  %4 = load i32, ptr inttoptr (i64 24 to ptr), align 8
  %cmp19.peel.i.us = icmp sgt i32 %4, 0
  br i1 %cmp19.peel.i.us, label %if.else352, label %if.end.i.us

while.cond:                                       ; preds = %entry, %while.cond.backedge
  %call328 = tail call ptr @read_sg()
  %5 = load i32, ptr inttoptr (i64 4 to ptr), align 4
  %cmp4.peel.i = icmp sgt i32 %5, 0
  br i1 %cmp4.peel.i, label %while.cond.backedge, label %if.end.peel.i
}

declare ptr @read_sg() local_unnamed_addr

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i32 @sgtocub(ptr nocapture readonly %0) local_unnamed_addr #0 {
entry:
  %arrayidx.peel = getelementptr i8, ptr %0, i64 4
  %1 = load i32, ptr %arrayidx.peel, align 4
  %cmp4.peel = icmp sgt i32 %1, 0
  br i1 %cmp4.peel, label %common.ret, label %if.end.peel

if.end.peel:                                      ; preds = %entry
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  %2 = load i32, ptr inttoptr (i64 24 to ptr), align 8
  %cmp19.peel = icmp sgt i32 %2, 0
  br i1 %cmp19.peel, label %common.ret, label %for.cond.peel.next

common.ret:                                       ; preds = %if.end, %for.cond, %if.end.peel, %entry
  ret i32 0

for.cond:                                         ; preds = %if.end, %for.cond.peel.next
  %3 = load i32, ptr %arrayidx, align 4
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %common.ret, label %if.end

for.cond.peel.next:                               ; preds = %if.end.peel
  %arrayidx = getelementptr i8, ptr %0, i64 8
  br label %for.cond

if.end:                                           ; preds = %for.cond
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  %4 = load i32, ptr inttoptr (i64 24 to ptr), align 8
  %cmp19 = icmp sgt i32 %4, 0
  br i1 %cmp19, label %common.ret, label %for.cond, !llvm.loop !0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
