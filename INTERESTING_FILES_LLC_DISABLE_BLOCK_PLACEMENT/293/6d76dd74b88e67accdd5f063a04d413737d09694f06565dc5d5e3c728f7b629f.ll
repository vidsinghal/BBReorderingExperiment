; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @dump_long(i64 %0, i1 %cmp6) {
entry:
  %cmp = icmp ne i64 %0, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret void

if.else:                                          ; preds = %entry
  %call14 = load volatile i32, ptr null, align 4
  br label %common.ret
}
