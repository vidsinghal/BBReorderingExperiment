; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @hypre_ParCSRMaxEigEstimateCGHost(ptr %A, i64 %scale, i64 %inc105, i1 %cmp51) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end64, %entry
  br i1 %cmp51, label %if.then52, label %for.cond55

if.then52:                                        ; preds = %while.cond
  %call53 = call i64 @hypre_ParVectorCopy()
  br label %if.end64

for.cond55:                                       ; preds = %for.cond55, %while.cond
  %j.0 = phi i64 [ 0, %while.cond ], [ 1, %for.cond55 ]
  %cmp56 = icmp slt i64 %j.0, %inc105
  br i1 %cmp56, label %for.cond55, label %if.end64

if.end64:                                         ; preds = %for.cond55, %if.then52
  %tobool65.not = icmp eq i64 %scale, 0
  br i1 %tobool65.not, label %while.cond, label %if.then66

if.then66:                                        ; preds = %if.end64
  ret i64 0
}

declare i64 @hypre_ParVectorCopy()
