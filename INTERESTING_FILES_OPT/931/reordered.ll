; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//931/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @OPENSSL_sk_value() local_unnamed_addr

; Function Attrs: noreturn
define noundef i32 @CMS_set1_signers_certs(i32 %flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %flags, 0
  %0 = load ptr, ptr inttoptr (i64 56 to ptr), align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %for.cond.outer, label %for.cond.us

for.end.for.inc42_crit_edge:                      ; preds = %for.end
  %.pre.pre = load ptr, ptr inttoptr (i64 56 to ptr), align 8
  br label %for.cond.outer, !llvm.loop !0

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  br i1 %cmp7.not, label %for.cond10.preheader, label %for.cond, !llvm.loop !0

for.cond26:                                       ; preds = %for.end, %for.cond26
  br label %for.cond26

for.cond10.preheader:                             ; preds = %for.cond
  %call121 = load volatile i32, ptr null, align 4294967296
  %cmp132 = icmp sgt i32 %call121, 0
  br i1 %cmp132, label %for.body14, label %for.end

for.cond.outer:                                   ; preds = %entry, %for.end.for.inc42_crit_edge
  %.pre3.ph = phi ptr [ %.pre.pre, %for.end.for.inc42_crit_edge ], [ null, %entry ]
  %cmp7.not = icmp eq ptr %.pre3.ph, null
  br label %for.cond

for.body14:                                       ; preds = %for.cond10.preheader, %for.body14
  %call16 = tail call ptr @OPENSSL_sk_value()
  %call12 = load volatile i32, ptr null, align 4294967296
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %for.body14, label %for.end

for.end:                                          ; preds = %for.body14, %for.cond10.preheader
  br i1 %tobool.not, label %for.cond26, label %for.end.for.inc42_crit_edge

for.cond.us:                                      ; preds = %entry, %for.cond.us
  br label %for.cond.us
}

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
