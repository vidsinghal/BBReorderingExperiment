; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @lj_obj_equal(i64 %0, i1 %cmp24) {
entry:
  %1 = and i64 %0, 8589934590
  %cmp = icmp ne i64 %1, 2
  %or.cond = and i1 %cmp, %cmp24
  br i1 %or.cond, label %if.end28, label %common.ret

common.ret:                                       ; preds = %if.end28, %entry
  ret i32 0

if.end28:                                         ; preds = %entry
  %call3 = load volatile double, ptr null, align 8
  br label %common.ret
}
