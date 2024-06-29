; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hwloc_distances_remove_by_depth(ptr %topology, ptr %0) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.then12, %while.body, %entry
  %next.01 = phi ptr [ %topology, %entry ], [ %0, %if.then12 ], [ %0, %while.body ]
  %cmp9.not = icmp eq ptr %next.01, null
  br i1 %cmp9.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %topology, align 8
  %2 = ptrtoint ptr %1 to i64
  %3 = and i64 %2, 1
  %cmp11 = icmp eq i64 %3, 0
  br i1 %cmp11, label %if.then12, label %while.cond

if.then12:                                        ; preds = %while.body
  store ptr %topology, ptr %topology, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}
