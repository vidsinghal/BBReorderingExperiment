; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dlarzb_(ptr %m, ptr %c__, ptr %work, i1 %cmp) {
entry:
  %0 = load i32, ptr %c__, align 4
  %1 = load i32, ptr %m, align 4
  %add.ptr12 = getelementptr i8, ptr %work, i64 -8
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  ret i32 0

for.cond:                                         ; preds = %for.cond, %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr double, ptr null, i64 %idxprom
  %2 = sext i32 %1 to i64
  %3 = getelementptr double, ptr %add.ptr12, i64 %2
  %arrayidx37 = getelementptr i8, ptr %3, i64 8
  %call38 = call i32 @dcopy_(ptr %arrayidx, ptr %arrayidx37)
  br label %for.cond
}

declare i32 @dcopy_(ptr, ptr)
