; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//925/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @ngx_http_index_handler(ptr %r, i1 %cmp118.not) local_unnamed_addr {
entry:
  %pool = getelementptr i8, ptr %r, i64 88
  %cmp118.not.fr = freeze i1 %cmp118.not
  br i1 %cmp118.not.fr, label %for.cond.us, label %for.cond

for.cond.us:                                      ; preds = %entry, %while.end.us
  %0 = load i64, ptr %r, align 8
  %tobool36.not1.us = icmp eq i64 %0, 0
  br i1 %tobool36.not1.us, label %while.end.us, label %while.body.us

while.body.us:                                    ; preds = %for.cond.us, %while.body.us
  %call38.us = tail call i64 inttoptr (i64 1 to ptr)(ptr null)
  %1 = load i64, ptr %r, align 8
  %tobool36.not.us = icmp eq i64 %1, 0
  br i1 %tobool36.not.us, label %while.end.us, label %while.body.us, !llvm.loop !0

cleanup:                                          ; preds = %while.body, %for.cond
  ret i64 0

for.cond:                                         ; preds = %entry
  %2 = load i64, ptr %r, align 8
  %tobool36.not1 = icmp eq i64 %2, 0
  br i1 %tobool36.not1, label %cleanup, label %while.body

while.body:                                       ; preds = %for.cond, %while.body
  %call38 = tail call i64 inttoptr (i64 1 to ptr)(ptr null)
  %3 = load i64, ptr %r, align 8
  %tobool36.not = icmp eq i64 %3, 0
  br i1 %tobool36.not, label %cleanup, label %while.body, !llvm.loop !0

while.end.us:                                     ; preds = %while.body.us, %for.cond.us
  %call122.us = tail call i64 @ngx_open_cached_file(ptr %pool)
  br label %for.cond.us
}

declare i64 @ngx_open_cached_file(ptr) local_unnamed_addr

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.mustprogress"}
!2 = !{!"llvm.loop.unroll.disable"}
