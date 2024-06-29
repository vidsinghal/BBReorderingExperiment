; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @Object_npyEndArray(ptr %obj, ptr %0, ptr %1, ptr %2, i64 %3, ptr %4, i1 %tobool5.not) {
entry:
  %cmp = icmp ne i64 %3, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret ptr null

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %obj, align 8
  %call22 = call ptr %5(ptr null, i64 0)
  br label %common.ret
}
