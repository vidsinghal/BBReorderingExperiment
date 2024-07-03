; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @spdk_nvme_probe_poll_async(ptr %probe_ctx) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  call void @nvme_ctrlr_poll_internal(ptr null, ptr %probe_ctx)
  br label %for.cond
}

define void @nvme_ctrlr_poll_internal(ptr %ctrlr, ptr %probe_ctx) {
entry:
  %0 = load i32, ptr %probe_ctx, align 4
  %cmp17.not = icmp eq i32 %0, 0
  br i1 %cmp17.not, label %do.body20, label %cleanup

do.body20:                                        ; preds = %entry
  %call50 = call i1 @nvme_ctrlr_shared()
  br i1 %call50, label %do.body52, label %do.body67

do.body52:                                        ; preds = %do.body20
  store ptr null, ptr inttoptr (i64 648 to ptr), align 8
  br label %if.end76

do.body67:                                        ; preds = %do.body20
  %1 = load ptr, ptr null, align 8
  store ptr %ctrlr, ptr inttoptr (i64 656 to ptr), align 8
  br label %if.end76

if.end76:                                         ; preds = %do.body67, %do.body52
  %2 = load ptr, ptr %probe_ctx, align 8
  %tobool79.not = icmp eq ptr %2, null
  br i1 %tobool79.not, label %cleanup, label %if.then80

if.then80:                                        ; preds = %if.end76
  %attach_cb81 = getelementptr i8, ptr %probe_ctx, i64 584
  %3 = load ptr, ptr %attach_cb81, align 8
  call void %3(ptr null, ptr null, ptr null, ptr null)
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end76, %entry
  ret void
}

declare i1 @nvme_ctrlr_shared()
