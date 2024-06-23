; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ssbtrd_(ptr %vect, ptr %n, ptr %kd, ptr %ab, i32 %0, i32 %1, i1 %cmp23) {
entry:
  %cmp = icmp sgt i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp23, i1 false
  br i1 %brmerge.not, label %if.then24, label %if.end38

if.then24:                                        ; preds = %entry
  store i32 0, ptr %vect, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then24, %entry
  ret i32 0
}
