; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dlaed5_(i1 %cmp11, i32 %0) {
entry:
  %cmp = icmp ne i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp11, i1 false
  br i1 %brmerge.not, label %if.then12, label %common.ret

common.ret:                                       ; preds = %if.then12, %entry
  ret i32 0

if.then12:                                        ; preds = %entry
  %call = load volatile double, ptr null, align 8
  br label %common.ret
}
