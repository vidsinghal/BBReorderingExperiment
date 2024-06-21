; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @chbgvx_(ptr %n, ptr %ldq, ptr %ldz, ptr %info, i32 %0, i32 %call, i1 %cmp102) #0 {
entry:
  %tobool104.not = icmp eq i32 %0, 0
  %or.cond = select i1 %cmp102, i1 %tobool104.not, i1 false
  br i1 %or.cond, label %if.end108, label %if.then107

if.then107:                                       ; preds = %entry
  store i32 0, ptr %n, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %entry
  ret i32 0
}

attributes #0 = { "tune-cpu"="znver2" }
