; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @umfdi_local_search(ptr %Work, i32 %0, i1 %cmp26, double %1) {
entry:
  %cmp = icmp eq i32 %0, 0
  %or.cond = select i1 %cmp, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  store i32 0, ptr %Work, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then, %entry
  br i1 %cmp26, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  store double %1, ptr %Work, align 8
  ret i32 0
}
