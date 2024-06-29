; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @fs_build_range(ptr %pfont, i32 %dec) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true40, %while.body, %entry
  %data.addr.0 = phi ptr [ %incdec.ptr, %land.lhs.true40 ], [ %incdec.ptr, %while.body ], [ null, %entry ]
  %access_done.0 = phi i32 [ %land.ext58, %land.lhs.true40 ], [ %access_done.0, %while.body ], [ 0, %entry ]
  %count.addr.01 = phi i32 [ %dec, %land.lhs.true40 ], [ %dec, %while.body ], [ 1, %entry ]
  %tobool36.not = icmp eq i32 %count.addr.01, 0
  br i1 %tobool36.not, label %if.end292, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, ptr %data.addr.0, i64 1
  %0 = load i8, ptr %data.addr.0, align 1
  %cmp38.not = icmp eq i8 %0, 0
  br i1 %cmp38.not, label %while.cond, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %while.body
  %cmp55 = icmp ne ptr %pfont, null
  %land.ext58 = zext i1 %cmp55 to i32
  br label %while.cond

if.end292:                                        ; preds = %while.cond
  ret i32 %access_done.0
}
