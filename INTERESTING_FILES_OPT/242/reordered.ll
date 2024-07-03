; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//242/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @spdk_nvme_probe_poll_async(ptr nocapture readonly %probe_ctx) local_unnamed_addr #0 {
entry:
  %attach_cb81.i = getelementptr i8, ptr %probe_ctx, i64 584
  %0 = load i32, ptr %probe_ctx, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %for.cond.outer, label %for.cond.us

for.cond.outer:                                   ; preds = %entry, %for.cond.outer.backedge
  %.pre1.ph = phi i32 [ %.pre1.ph.be, %for.cond.outer.backedge ], [ 0, %entry ]
  %cmp17.not.i = icmp eq i32 %.pre1.ph, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  br i1 %cmp17.not.i, label %do.body20.i, label %for.cond, !llvm.loop !0

if.then80.i:                                      ; preds = %do.body20.i
  %2 = load ptr, ptr %attach_cb81.i, align 8
  tail call void %2(ptr null, ptr null, ptr null, ptr null)
  %.pre.pre = load i32, ptr %probe_ctx, align 4
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %do.body20.i, %if.then80.i
  %.pre1.ph.be = phi i32 [ %.pre.pre, %if.then80.i ], [ %5, %do.body20.i ]
  br label %for.cond.outer, !llvm.loop !0

for.cond.us:                                      ; preds = %entry, %for.cond.us
  br label %for.cond.us

do.body20.i:                                      ; preds = %for.cond
  %call50.i = tail call i1 @nvme_ctrlr_shared()
  %. = select i1 %call50.i, ptr inttoptr (i64 648 to ptr), ptr inttoptr (i64 656 to ptr)
  store ptr null, ptr %., align 8
  %3 = load ptr, ptr %probe_ctx, align 8
  %tobool79.not.i = icmp eq ptr %3, null
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  br i1 %tobool79.not.i, label %for.cond.outer.backedge, label %if.then80.i
}

define void @nvme_ctrlr_poll_internal(ptr %ctrlr, ptr nocapture readonly %probe_ctx) local_unnamed_addr {
entry:
  %0 = load i32, ptr %probe_ctx, align 4
  %cmp17.not = icmp eq i32 %0, 0
  br i1 %cmp17.not, label %do.body20, label %cleanup

if.then80:                                        ; preds = %if.end76
  %attach_cb81 = getelementptr i8, ptr %probe_ctx, i64 584
  %1 = load ptr, ptr %attach_cb81, align 8
  tail call void %1(ptr null, ptr null, ptr null, ptr null)
  br label %cleanup

do.body52:                                        ; preds = %do.body20
  store ptr null, ptr inttoptr (i64 648 to ptr), align 8
  br label %if.end76

cleanup:                                          ; preds = %if.then80, %if.end76, %entry
  ret void

if.end76:                                         ; preds = %do.body67, %do.body52
  %2 = load ptr, ptr %probe_ctx, align 8
  %tobool79.not = icmp eq ptr %2, null
  br i1 %tobool79.not, label %cleanup, label %if.then80

do.body20:                                        ; preds = %entry
  %call50 = tail call i1 @nvme_ctrlr_shared()
  br i1 %call50, label %do.body52, label %do.body67

do.body67:                                        ; preds = %do.body20
  store ptr %ctrlr, ptr inttoptr (i64 656 to ptr), align 16
  br label %if.end76
}

declare i1 @nvme_ctrlr_shared() local_unnamed_addr

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
