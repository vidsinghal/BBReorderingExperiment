; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(i32 %call) {
entry:
  %call1 = load volatile i32, ptr null, align 4
  switch i32 %call, label %common.ret [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 118, label %sw.bb2
  ]

common.ret:                                       ; preds = %while.end, %sw.bb2, %sw.bb, %entry
  ret i32 0

sw.bb:                                            ; preds = %entry
  %call12 = call i32 (ptr, ...) @printf(ptr null, ptr null)
  br label %common.ret

sw.bb2:                                           ; preds = %entry
  %puts1 = load volatile i32, ptr null, align 4
  br label %common.ret

while.end:                                        ; preds = %entry
  %call7 = load volatile i32, ptr null, align 4
  %puts = load volatile i32, ptr null, align 4
  br label %common.ret
}

declare i32 @printf(ptr, ...)
