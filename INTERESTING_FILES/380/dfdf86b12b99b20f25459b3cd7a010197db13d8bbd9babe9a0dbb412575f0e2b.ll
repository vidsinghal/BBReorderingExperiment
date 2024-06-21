; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @Dynprog_end5_gap(ptr %traceback_score, ptr %nmatches, i32 %rlength, i1 %cmp27) #0 {
entry:
  %cmp12 = icmp sgt i32 %rlength, 0
  %or.cond = and i1 %cmp12, %cmp27
  br i1 %or.cond, label %if.then29, label %common.ret

common.ret:                                       ; preds = %if.then29, %entry
  ret ptr null

if.then29:                                        ; preds = %entry
  store i32 0, ptr %traceback_score, align 4
  store i32 0, ptr %nmatches, align 4
  br label %common.ret
}

attributes #0 = { "target-cpu"="x86-64" }
