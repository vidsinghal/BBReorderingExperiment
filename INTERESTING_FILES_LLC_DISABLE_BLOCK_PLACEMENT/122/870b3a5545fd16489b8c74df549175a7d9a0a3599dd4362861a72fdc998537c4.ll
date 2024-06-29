; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @WebPMultARGBRow_C(ptr %ptr, i32 %width, i32 %x.0, i64 %idxprom, ptr %arrayidx, i32 %0, i1 %cmp1) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.then, %for.body, %entry
  %x.01 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ %width, %for.body ]
  %cmp = icmp slt i32 %x.01, %width
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  store i32 0, ptr %ptr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}
