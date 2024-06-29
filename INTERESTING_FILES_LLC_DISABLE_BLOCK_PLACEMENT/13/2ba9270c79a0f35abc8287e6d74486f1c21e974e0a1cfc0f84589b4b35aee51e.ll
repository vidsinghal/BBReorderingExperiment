; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }

define i32 @main(i1 %cmp, ptr %test_suite_tests) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.01 = phi i64 [ 0, %entry ], [ 1, %for.body ]
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 0

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [40 x %struct.anon], ptr %test_suite_tests, i64 0, i64 %i.01
  %0 = load ptr, ptr %arrayidx, align 16
  %call2 = call i32 %0()
  %call5 = load volatile i32, ptr null, align 4
  br label %for.cond
}
