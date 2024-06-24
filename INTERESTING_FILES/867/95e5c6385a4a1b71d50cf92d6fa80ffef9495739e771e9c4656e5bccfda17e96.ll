; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @ngx_http_upstream_init_zone(ptr %shm_zone) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end, %for.cond, %entry
  %0 = load ptr, ptr %shm_zone, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp6.not = icmp eq ptr %1, null
  br i1 %cmp6.not, label %if.end, label %for.cond

if.end:                                           ; preds = %for.cond
  store ptr null, ptr %0, align 8
  br label %for.cond
}
