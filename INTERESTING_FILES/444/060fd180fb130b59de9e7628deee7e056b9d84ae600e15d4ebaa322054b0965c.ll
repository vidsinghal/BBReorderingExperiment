; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cunmqr_check(ptr %m, ptr %n, ptr %k, ptr %info, i32 %call, i32 %0, i1 %cmp26) {
entry:
  %call1 = load volatile i32, ptr null, align 4
  %cmp28 = icmp slt i32 %call, 0
  %or.cond = select i1 %cmp26, i1 %cmp28, i1 false
  br i1 %or.cond, label %if.then30, label %common.ret

common.ret:                                       ; preds = %if.then30, %entry
  ret i32 0

if.then30:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret
}
