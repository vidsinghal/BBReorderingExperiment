; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//664/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @hypre_ParCSRMaxEigEstimateCGHost(ptr nocapture readnone %A, i64 %scale, i64 %inc105, i1 %cmp51) local_unnamed_addr {
entry:
  %scale.fr = freeze i64 %scale
  %tobool65.not = icmp eq i64 %scale.fr, 0
  br i1 %cmp51, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %tobool65.not, label %while.cond.us.us, label %while.cond.us

while.cond.us.us:                                 ; preds = %entry.split.us, %while.cond.us.us
  %call53.us.us = tail call i64 @hypre_ParVectorCopy()
  br label %while.cond.us.us

while.cond.us:                                    ; preds = %entry.split.us
  %call53.us = tail call i64 @hypre_ParVectorCopy()
  br label %if.then66

entry.split:                                      ; preds = %entry
  %cmp56.us.peel = icmp sgt i64 %inc105, 0
  br i1 %tobool65.not, label %while.cond.us1.preheader, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %entry.split
  br i1 %cmp56.us.peel, label %for.cond55.peel.next, label %if.then66

for.cond55.peel.next:                             ; preds = %for.cond55.preheader
  %cmp56.not = icmp eq i64 %inc105, 1
  br label %for.cond55

while.cond.us1.preheader:                         ; preds = %entry.split
  %cmp56.us.not = icmp eq i64 %inc105, 1
  br label %while.cond.us1

while.cond.us1:                                   ; preds = %while.cond.us1.backedge, %while.cond.us1.preheader
  br i1 %cmp56.us.peel, label %for.cond55.us, label %while.cond.us1.backedge

while.cond.us1.backedge:                          ; preds = %for.cond55.us, %while.cond.us1
  br label %while.cond.us1

for.cond55.us:                                    ; preds = %while.cond.us1, %for.cond55.us
  br i1 %cmp56.us.not, label %while.cond.us1.backedge, label %for.cond55.us, !llvm.loop !0

for.cond55:                                       ; preds = %for.cond55.peel.next, %for.cond55
  br i1 %cmp56.not, label %if.then66, label %for.cond55, !llvm.loop !2

if.then66:                                        ; preds = %for.cond55, %for.cond55.preheader, %while.cond.us
  ret i64 0
}

declare i64 @hypre_ParVectorCopy() local_unnamed_addr

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
!2 = distinct !{!2, !1}
