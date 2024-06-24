; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//867/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i64 @ngx_http_upstream_init_zone(ptr nocapture readonly %shm_zone) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %shm_zone, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %for.cond.outer, label %for.cond.us

for.cond.outer:                                   ; preds = %entry, %if.end
  %.pre14.ph = phi ptr [ %.pre1.pre, %if.end ], [ null, %entry ]
  %.pre2.ph = phi ptr [ %.pre.pre, %if.end ], [ %0, %entry ]
  %cmp6.not = icmp eq ptr %.pre14.ph, null
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  br i1 %cmp6.not, label %if.end, label %for.cond, !llvm.loop !0

if.end:                                           ; preds = %for.cond
  store ptr null, ptr %.pre2.ph, align 8
  %.pre.pre = load ptr, ptr %shm_zone, align 8
  %.pre1.pre = load ptr, ptr %.pre.pre, align 8
  br label %for.cond.outer, !llvm.loop !0

for.cond.us:                                      ; preds = %entry, %for.cond.us
  br label %for.cond.us
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unswitch.partial.disable"}
