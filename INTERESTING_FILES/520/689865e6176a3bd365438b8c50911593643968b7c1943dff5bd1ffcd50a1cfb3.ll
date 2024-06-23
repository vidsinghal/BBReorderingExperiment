; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(i32 %argc, i1 %cmp33) {
entry:
  %call31 = call i32 @strcmp()
  %cmp4 = icmp eq i32 %argc, 0
  %or.cond = or i1 %cmp4, %cmp33
  br i1 %or.cond, label %common.ret, label %for.end

common.ret:                                       ; preds = %for.end, %entry
  ret i32 0

for.end:                                          ; preds = %entry
  %call80 = load volatile i32, ptr null, align 4
  br label %common.ret
}

declare i32 @strcmp()
