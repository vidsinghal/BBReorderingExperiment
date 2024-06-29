; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @format_message(ptr %cinfo) {
entry:
  %0 = load i32, ptr %cinfo, align 8
  %cmp = icmp sgt i32 %0, 0
  %spec.select = select i1 %cmp, ptr %cinfo, ptr null
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %msgptr.01 = phi ptr [ %cinfo, %while.cond ], [ %spec.select, %entry ]
  %1 = load i8, ptr %msgptr.01, align 1
  switch i8 %1, label %while.cond [
    i8 37, label %common.ret
    i8 0, label %common.ret
  ]

common.ret:                                       ; preds = %while.cond, %while.cond
  ret void
}
