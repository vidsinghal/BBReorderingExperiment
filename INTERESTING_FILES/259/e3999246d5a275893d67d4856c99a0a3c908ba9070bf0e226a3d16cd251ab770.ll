; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @lu_build_factors(ptr %this, i1 %cmp) {
entry:
  br i1 %cmp, label %if.then50, label %if.then39

if.then39:                                        ; preds = %entry
  store i32 0, ptr %this, align 4
  br label %for.cond

if.then50:                                        ; preds = %entry
  store i32 0, ptr %this, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then50, %if.then39
  br label %for.cond
}
