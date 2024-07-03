; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//784/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @gt_patternmatch() local_unnamed_addr #0 {
entry:
  %pmopt.sroa.0 = alloca i8, align 8
  %0 = load i8, ptr inttoptr (i64 25 to ptr), align 1
  %1 = trunc i8 %0 to i1
  tail call void @llvm.assume(i1 %1)
  br label %for.cond.i

for.cond.i:                                       ; preds = %entry, %for.cond.backedge.i
  %2 = phi i8 [ %.pre, %for.cond.backedge.i ], [ %0, %entry ]
  %tobool30.i = trunc i8 %2 to i1
  br i1 %tobool30.i, label %while.cond.i, label %if.end90.i

while.cond.i:                                     ; preds = %for.cond.i, %while.cond.i
  %call39.i = tail call i1 @gt_nextbucketenumerator()
  br i1 %call39.i, label %while.cond.i, label %if.end90.i

if.end90.i:                                       ; preds = %while.cond.i, %for.cond.i
  %pmopt.sroa.0.0.pmopt.sroa.0.0.pmopt.sroa.0.0.pmopt.sroa.0.0. = load i8, ptr %pmopt.sroa.0, align 8
  %tobool91.i = trunc i8 %pmopt.sroa.0.0.pmopt.sroa.0.0.pmopt.sroa.0.0.pmopt.sroa.0.0. to i1
  br i1 %tobool91.i, label %if.then92.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.then92.i, %if.end90.i
  %.pre = load i8, ptr inttoptr (i64 25 to ptr), align 1
  br label %for.cond.i, !llvm.loop !0

if.then92.i:                                      ; preds = %if.end90.i
  store i1 false, ptr %pmopt.sroa.0, align 8
  br label %for.cond.backedge.i
}

; Function Attrs: noreturn
define noundef i32 @callpatternmatcher(ptr nocapture %pmopt) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %0 = load i8, ptr inttoptr (i64 25 to ptr), align 1
  %tobool30 = trunc i8 %0 to i1
  br i1 %tobool30, label %while.cond, label %if.end90

while.cond:                                       ; preds = %for.cond, %while.cond
  %call39 = tail call i1 @gt_nextbucketenumerator()
  br i1 %call39, label %while.cond, label %if.end90

if.end90:                                         ; preds = %while.cond, %for.cond
  %1 = load i8, ptr %pmopt, align 2
  %tobool91 = trunc i8 %1 to i1
  br i1 %tobool91, label %if.then92, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end90, %if.then92
  br label %for.cond

if.then92:                                        ; preds = %if.end90
  store i1 false, ptr %pmopt, align 1
  br label %for.cond.backedge
}

declare i1 @gt_nextbucketenumerator() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
