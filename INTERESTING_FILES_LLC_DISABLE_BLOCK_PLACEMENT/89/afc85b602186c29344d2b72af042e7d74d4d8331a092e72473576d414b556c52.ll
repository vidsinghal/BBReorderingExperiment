; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @csytf2_(ptr %n, ptr %ipiv, i1 %cmp18, i64 %idxprom660) {
entry:
  %call = call i32 @lsame_()
  br label %L10

L10:                                              ; preds = %if.end97, %entry
  br i1 %cmp18, label %common.ret, label %if.end21

if.end21:                                         ; preds = %L10
  %0 = load i32, ptr %n, align 4
  %cmp94 = icmp eq i32 %0, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end21
  store i32 1, ptr %n, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end21
  %arrayidx661 = getelementptr i32, ptr %ipiv, i64 %idxprom660
  store i32 0, ptr %arrayidx661, align 4
  br label %L10

common.ret:                                       ; preds = %L10
  ret i32 0
}

declare i32 @lsame_()
