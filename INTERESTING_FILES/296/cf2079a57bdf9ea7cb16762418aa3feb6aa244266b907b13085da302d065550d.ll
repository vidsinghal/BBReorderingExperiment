; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @qh_fprintf(ptr %qh, i1 %cmp, ...) {
entry:
  %tobool5.not = icmp ne ptr %qh, null
  %or.cond = or i1 %tobool5.not, %cmp
  br i1 %or.cond, label %if.then7, label %if.end14

if.then7:                                         ; preds = %entry
  %call = load volatile i32, ptr null, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %entry
  ret void
}
