; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gt_tyrsearch(i1 %verbose, ptr %call3) {
entry:
  %cmp = icmp eq ptr %call3, null
  %brmerge = or i1 %cmp, %verbose
  br i1 %brmerge, label %common.ret, label %if.then6

common.ret:                                       ; preds = %if.then6, %entry
  ret i32 0

if.then6:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}
