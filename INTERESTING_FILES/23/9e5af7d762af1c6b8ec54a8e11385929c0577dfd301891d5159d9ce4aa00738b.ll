; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_dgetri(ptr %n, ptr %work, i1 %cmp5) {
entry:
  %call = call i32 @hypre_ilaenv()
  store double 0.000000e+00, ptr %work, align 8
  store i64 0, ptr %n, align 8
  br i1 %cmp5, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  store i32 0, ptr %n, align 4
  br label %common.ret
}

declare i32 @hypre_ilaenv()
