; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dggqrf_(ptr %work, i32 %0, i1 %cmp33) {
entry:
  store double 0.000000e+00, ptr %work, align 8
  %cmp98 = icmp sgt i32 %0, 0
  %or.cond = or i1 %cmp98, %cmp33
  br i1 %or.cond, label %if.end, label %if.then100

if.then100:                                       ; preds = %entry
  store i32 0, ptr %work, align 4
  br label %if.end

if.end:                                           ; preds = %if.then100, %entry
  ret i32 0
}
