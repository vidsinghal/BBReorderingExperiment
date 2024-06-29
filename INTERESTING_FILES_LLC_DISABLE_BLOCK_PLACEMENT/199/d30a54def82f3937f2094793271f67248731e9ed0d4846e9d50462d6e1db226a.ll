; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @slahqr_(i32 %0, i32 %1) {
entry:
  %cmp6 = icmp eq i32 %0, 0
  br i1 %cmp6, label %common.ret, label %for.cond

common.ret:                                       ; preds = %for.cond, %entry
  ret i32 0

for.cond:                                         ; preds = %for.cond, %entry
  %j.0 = phi i32 [ 0, %for.cond ], [ %0, %entry ]
  %cmp14.not = icmp sgt i32 %j.0, %1
  br i1 %cmp14.not, label %common.ret, label %for.cond
}
