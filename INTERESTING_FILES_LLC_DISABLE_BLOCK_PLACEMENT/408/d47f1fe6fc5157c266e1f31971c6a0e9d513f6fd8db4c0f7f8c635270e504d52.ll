; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @nn_dns_check_hostname(ptr %name, ptr %0, i1 %cmp43) {
entry:
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  %name.addr.0 = phi ptr [ %name, %entry ], [ %0, %while.body ]
  %1 = load i8, ptr %name.addr.0, align 1
  %cmp11 = icmp ne i8 %1, 1
  %cmp20 = icmp sgt i8 %1, 0
  %or.cond = or i1 %cmp20, %cmp43
  %or.cond1 = select i1 %cmp11, i1 %or.cond, i1 false
  br i1 %or.cond1, label %while.body, label %common.ret

common.ret:                                       ; preds = %while.body
  ret i32 0
}
