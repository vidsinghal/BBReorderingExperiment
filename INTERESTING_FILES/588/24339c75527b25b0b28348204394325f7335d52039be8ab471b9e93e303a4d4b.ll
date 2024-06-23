; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @cs_dl_post(i1 %0, i64 %1) #0 {
entry:
  br i1 %0, label %if.end15, label %for.end22

if.end15:                                         ; preds = %entry
  %arrayidx20 = getelementptr i64, ptr null, i64 %1
  store i64 0, ptr %arrayidx20, align 8
  br label %for.end22

for.end22:                                        ; preds = %if.end15, %entry
  ret ptr null
}

attributes #0 = { "target-cpu"="x86-64" }
