; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @v3p_netlib_setgpfa_(i64 %inc3, i64 %nn.1) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %L10, %entry
  br label %L10

L10:                                              ; preds = %L10, %for.cond
  %nn.14 = phi i64 [ %nn.1, %for.cond ], [ 1, %L10 ]
  %rem = srem i64 %nn.14, %inc3
  %cmp2.not = icmp eq i64 %rem, 0
  br i1 %cmp2.not, label %L10, label %for.cond
}

attributes #0 = { "target-cpu"="corei7" }
