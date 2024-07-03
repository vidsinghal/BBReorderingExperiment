; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//546/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @malloc_conf_init_helper(i1 %initial_call, ptr nocapture writeonly %opts_cache, ptr nocapture readonly %0) local_unnamed_addr {
entry:
  %initial_call.fr = freeze i1 %initial_call
  br i1 %initial_call.fr, label %entry.split.us, label %while.cond

entry.split.us:                                   ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %while.cond.us, label %entry.split.us.split.us

entry.split.us.split.us:                          ; preds = %entry.split.us
  %3 = load i64, ptr %0, align 8
  %cmp16.us.us = icmp eq i64 %3, 0
  br i1 %cmp16.us.us, label %land.lhs.true18, label %while.cond.us.us

while.cond.us.us:                                 ; preds = %entry.split.us.split.us, %while.cond.us.us
  br label %while.cond.us.us

while.cond.us:                                    ; preds = %entry.split.us, %malloc_conf_next.exit.us
  %4 = phi i8 [ %6, %malloc_conf_next.exit.us ], [ 0, %entry.split.us ]
  %cond1.i.us = icmp eq i8 %4, 0
  br i1 %cond1.i.us, label %sw.bb1.i.us, label %malloc_conf_next.exit.us

sw.bb1.i.us:                                      ; preds = %while.cond.us, %sw.bb1.i.us
  store i64 0, ptr %opts_cache, align 8
  %5 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cond.i.us = icmp eq i8 %5, 0
  br i1 %cond.i.us, label %sw.bb1.i.us, label %malloc_conf_next.exit.us

malloc_conf_next.exit.us:                         ; preds = %sw.bb1.i.us, %while.cond.us
  %6 = phi i8 [ %4, %while.cond.us ], [ %5, %sw.bb1.i.us ]
  %7 = load i64, ptr %0, align 8
  %cmp16.us = icmp eq i64 %7, 0
  br i1 %cmp16.us, label %land.lhs.true18, label %while.cond.us, !llvm.loop !0

while.cond:                                       ; preds = %entry, %if.end54
  %8 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cond1.i = icmp eq i8 %8, 0
  br i1 %cond1.i, label %sw.bb1.i, label %malloc_conf_next.exit

sw.bb1.i:                                         ; preds = %while.cond, %sw.bb1.i
  store i64 0, ptr %opts_cache, align 8
  %9 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cond.i = icmp eq i8 %9, 0
  br i1 %cond.i, label %sw.bb1.i, label %malloc_conf_next.exit

malloc_conf_next.exit:                            ; preds = %sw.bb1.i, %while.cond
  %10 = load i64, ptr %0, align 8
  %cmp16 = icmp eq i64 %10, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end54

land.lhs.true18:                                  ; preds = %malloc_conf_next.exit, %malloc_conf_next.exit.us, %entry.split.us.split.us
  ret void

if.end54:                                         ; preds = %malloc_conf_next.exit
  %call267 = tail call i1 @extent_dss_prec_set()
  br label %while.cond
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define noundef i1 @malloc_conf_next(ptr nocapture writeonly %k_p) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cond1 = icmp eq i8 %0, 0
  br i1 %cond1, label %sw.bb1, label %sw.bb4

sw.bb1:                                           ; preds = %entry, %sw.bb1
  store i64 0, ptr %k_p, align 8
  %1 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %sw.bb1, label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb1, %entry
  ret i1 false
}

declare i1 @extent_dss_prec_set() local_unnamed_addr

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
