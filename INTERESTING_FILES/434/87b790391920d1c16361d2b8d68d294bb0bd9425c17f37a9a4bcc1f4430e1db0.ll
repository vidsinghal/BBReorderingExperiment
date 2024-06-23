; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Axpy_internal() {
entry:
  %call = load volatile i32, ptr null, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = load volatile i32, ptr null, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = load volatile ptr, ptr null, align 8
  %call13 = call i32 @FLA_Axpy_internal()
  ret i32 0
}
