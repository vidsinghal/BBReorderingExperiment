; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @nvme_wait_for_completion_robust_lock_timeout_poll(ptr %status) {
entry:
  %0 = load i8, ptr %status, align 8, !range !0, !noundef !1
  %tobool65 = trunc i8 %0 to i1
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %entry
  store i8 1, ptr %status, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %entry
  ret i32 0
}

!0 = !{i8 0, i8 2}
!1 = !{}
