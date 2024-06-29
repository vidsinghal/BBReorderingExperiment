; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @functionsLibCtxClear() {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call ptr @dictNext()
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store i64 0, ptr inttoptr (i64 8 to ptr), align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare ptr @dictNext()

define void @functionsLibCtxClearCurrent() {
entry:
  call void @functionsLibCtxClear()
  ret void
}

define void @functionsLibCtxFree() {
entry:
  call void @functionsLibCtxClear()
  ret void
}
