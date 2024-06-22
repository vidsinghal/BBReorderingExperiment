; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dlarzb_(ptr %m, i1 %cmp, i1 %cmp13) {
entry:
  %brmerge = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %brmerge, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @lsame_()
  store i32 0, ptr %m, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret i32 0
}

declare i32 @lsame_()
