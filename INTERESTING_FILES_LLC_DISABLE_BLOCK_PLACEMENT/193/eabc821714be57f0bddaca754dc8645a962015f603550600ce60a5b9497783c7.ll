; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dggsvp_(ptr %m, ptr %p, ptr %ldb, ptr %ldu, ptr %ldv, ptr %ldq, i32 %0, i1 %tobool66) {
entry:
  %cmp68 = icmp sgt i32 %0, 0
  %or.cond = select i1 %tobool66, i1 %cmp68, i1 false
  br i1 %or.cond, label %if.then69, label %common.ret

common.ret:                                       ; preds = %if.then69, %entry
  ret i32 0

if.then69:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret
}
