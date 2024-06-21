; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @WebPMultARGBRow_C(ptr %ptr, ptr %arrayidx) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end21, %entry
  %0 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %if.then3, label %if.end21

if.then3:                                         ; preds = %for.cond
  store i32 0, ptr %ptr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then3, %for.cond
  br label %for.cond
}
