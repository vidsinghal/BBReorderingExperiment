; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @WebPMultARGBRow_C(ptr %ptr, ptr %arrayidx) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.then, %for.cond, %entry
  %0 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.cond
  store i32 0, ptr %ptr, align 4
  br label %for.cond
}
