; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @hypre_ParVectorCreate(ptr %partitioning, i1 %cmp, ptr %0, ptr %1) {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  %call = call ptr @hypre_CAlloc()
  store ptr null, ptr %partitioning, align 8
  store i32 0, ptr %0, align 8
  %2 = load i32, ptr %partitioning, align 4
  store i32 %2, ptr %1, align 4
  %3 = load i32, ptr %0, align 4
  %sub = or i32 %3, 1
  %last_index = getelementptr i8, ptr %call, i64 16
  store i32 %sub, ptr %last_index, align 8
  store ptr null, ptr %call, align 8
  br label %common.ret
}

declare ptr @hypre_CAlloc()
