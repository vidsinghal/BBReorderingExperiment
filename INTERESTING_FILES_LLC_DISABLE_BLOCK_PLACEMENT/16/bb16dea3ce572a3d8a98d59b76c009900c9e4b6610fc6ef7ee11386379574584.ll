; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dptsvx_(ptr %n, i32 %0, i1 %cmp15) {
entry:
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then13, label %if.else14

common.ret:                                       ; preds = %if.else17, %if.else14, %if.then13
  ret i32 0

if.then13:                                        ; preds = %entry
  store i32 0, ptr %n, align 4
  br label %common.ret

if.else14:                                        ; preds = %entry
  br i1 %cmp15, label %common.ret, label %if.else17

if.else17:                                        ; preds = %if.else14
  store i32 0, ptr %n, align 4
  br label %common.ret
}
