; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @try_reduce_to_chain(i1 %cmp, i32 %mul12, ptr %chainBatches) {
entry:
  %.pre = load ptr, ptr %chainBatches, align 8
  %cmp3 = icmp eq ptr %.pre, null
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %spec.select = select i1 %cmp3, i32 0, i32 %mul12
  %call18 = load volatile ptr, ptr null, align 8
  store i32 %spec.select, ptr %chainBatches, align 8
  call void @sort_segments()
  br label %common.ret
}

declare void @sort_segments()
