; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main_vcfgtcheck(i32 %argc, ptr %argv) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %sw.bb141, %sw.bb56, %sw.bb9, %sw.bb, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %entry
  %call43 = load volatile i32, ptr null, align 4
  switch i32 %argc, label %sw.bb [
    i32 103, label %while.cond
    i32 0, label %sw.bb9
    i32 1, label %sw.bb56
    i32 3, label %while.cond
    i32 84, label %sw.bb141
    i32 116, label %while.cond
    i32 112, label %while.cond
    i32 114, label %while.cond
  ]

sw.bb:                                            ; preds = %while.cond
  %call5 = load volatile i64, ptr null, align 8
  br label %while.cond

sw.bb9:                                           ; preds = %while.cond
  store i32 0, ptr %argv, align 4
  br label %while.cond

sw.bb56:                                          ; preds = %while.cond
  %call57 = load volatile i64, ptr null, align 8
  br label %while.cond

sw.bb141:                                         ; preds = %while.cond
  store i32 0, ptr %argv, align 8
  br label %while.cond
}
