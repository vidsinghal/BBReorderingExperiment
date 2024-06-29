; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//184/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define noalias noundef ptr @OCSP_response_status_str(i64 %s) local_unnamed_addr #0 {
entry:
  %s.fr.i = freeze i64 %s
  %cmp1.i = icmp eq i64 %s.fr.i, 0
  br i1 %cmp1.i, label %do_table2string.exit, label %for.cond.i

do_table2string.exit:                             ; preds = %entry
  ret ptr null

for.cond.i:                                       ; preds = %entry, %for.cond.i
  br label %for.cond.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define ptr @do_table2string(i64 %s, ptr nocapture readonly %ts, i64 %len) local_unnamed_addr #1 {
entry:
  %s.fr = freeze i64 %s
  %cmp1 = icmp eq i64 %s.fr, 0
  %cmp.us.not = icmp eq i64 %len, 0
  br i1 %cmp1, label %for.cond.us, label %for.cond.preheader

for.cond.peel.next:                               ; preds = %for.cond.preheader
  %cmp.not = icmp eq i64 %len, 1
  br label %for.cond

cleanup:                                          ; preds = %for.cond, %for.cond.preheader, %for.cond.us, %if.then
  %retval.0 = phi ptr [ %0, %if.then ], [ null, %for.cond.us ], [ null, %for.cond.preheader ], [ null, %for.cond ]
  ret ptr %retval.0

if.then:                                          ; preds = %for.cond.us
  %0 = load ptr, ptr %ts, align 8
  br label %cleanup

for.cond:                                         ; preds = %for.cond.peel.next, %for.cond
  br i1 %cmp.not, label %cleanup, label %for.cond, !llvm.loop !0

for.cond.us:                                      ; preds = %entry
  br i1 %cmp.us.not, label %cleanup, label %if.then

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp.us.not, label %cleanup, label %for.cond.peel.next
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
