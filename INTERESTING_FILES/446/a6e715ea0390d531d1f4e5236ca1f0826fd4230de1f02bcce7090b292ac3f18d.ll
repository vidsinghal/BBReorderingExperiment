; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dlar1v_(ptr %n, ptr %b1, ptr %r__, ptr %work, i32 %0, i1 %cmp24, i64 %idxprom31) {
entry:
  br i1 %cmp24, label %for.body, label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret i32 0

for.body:                                         ; preds = %entry
  %arrayidx32 = getelementptr double, ptr null, i64 %idxprom31
  store double 0.000000e+00, ptr %arrayidx32, align 8
  br label %common.ret
}
