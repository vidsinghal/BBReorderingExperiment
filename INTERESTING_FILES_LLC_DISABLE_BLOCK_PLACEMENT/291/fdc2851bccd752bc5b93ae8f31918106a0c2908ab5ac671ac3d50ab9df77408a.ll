; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cunbdb1_(ptr %m, i32 %0, i1 %cmp14) {
entry:
  %cmp12 = icmp sgt i32 %0, 1
  %or.cond = or i1 %cmp12, %cmp14
  br i1 %or.cond, label %if.then16, label %common.ret

common.ret:                                       ; preds = %if.then16, %entry
  ret i32 0

if.then16:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret
}
