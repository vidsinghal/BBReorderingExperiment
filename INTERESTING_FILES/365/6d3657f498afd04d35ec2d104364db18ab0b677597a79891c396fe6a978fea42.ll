; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @f77_constant(ptr %0, ptr %incdec.ptr, ...) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %entry
  %1 = load i8, ptr %incdec.ptr, align 1
  %cmp34 = icmp eq i8 %1, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.cond
  store i8 0, ptr %0, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.cond
  br label %while.cond
}
