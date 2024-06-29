; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @f77_constant(ptr %ci, ptr %tmp, i8 %.pre, i8 %0, ...) {
entry:
  %tmp1 = alloca [64 x i8], i32 0, align 16
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr %ci, ptr null, double 0.000000e+00)
  %.pre2 = load i8, ptr %ci, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then36, %entry
  %1 = phi i8 [ %.pre, %entry ], [ 0, %if.then36 ], [ %.pre, %while.cond ]
  switch i8 %1, label %while.cond [
    i8 101, label %if.then36
    i8 0, label %if.then36
  ]

if.then36:                                        ; preds = %while.cond, %while.cond
  store i8 0, ptr %tmp1, align 1
  br label %while.cond
}

declare i32 @sprintf(ptr, ptr, ...)
