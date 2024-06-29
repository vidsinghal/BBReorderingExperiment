; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @N_VNewEmpty_SensWrapper(i1 %cmp, ptr %0, ptr %1) {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  %call = call ptr @N_VNewEmpty()
  store ptr null, ptr %1, align 8
  %2 = load ptr, ptr %0, align 8
  %nvcloneempty = getelementptr i8, ptr %2, i64 16
  store ptr null, ptr %nvcloneempty, align 8
  %3 = load ptr, ptr %0, align 8
  %nvdestroy = getelementptr i8, ptr %3, i64 24
  store ptr null, ptr %nvdestroy, align 8
  %4 = load ptr, ptr %0, align 8
  %nvlinearsum = getelementptr i8, ptr %4, i64 80
  store ptr null, ptr %nvlinearsum, align 8
  br label %common.ret
}

declare ptr @N_VNewEmpty()
