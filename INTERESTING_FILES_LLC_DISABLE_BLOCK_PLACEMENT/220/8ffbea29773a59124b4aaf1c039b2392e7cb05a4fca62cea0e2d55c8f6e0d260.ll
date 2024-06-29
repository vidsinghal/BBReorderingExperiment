; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @__xmlGenericError()

declare ptr @__xmlGenericErrorContext()

define void @xmlMemFree(ptr %ptr, i64 %magicptr) {
entry:
  switch i64 %magicptr, label %if.end4 [
    i64 0, label %common.ret
    i64 1, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  %call2 = call ptr @__xmlGenericError()
  store volatile ptr null, ptr null, align 8
  %call193 = load volatile ptr, ptr null, align 8
  %0 = load ptr, ptr %ptr, align 8
  %call20 = call ptr @__xmlGenericErrorContext()
  call void (ptr, ptr, ...) %0(ptr null, ptr null, ptr null)
  br label %common.ret

common.ret:                                       ; preds = %if.end4, %if.then2, %entry
  ret void

if.end4:                                          ; preds = %entry
  %call74 = load volatile ptr, ptr null, align 8
  call void (ptr, ptr, ...) %call74(ptr null, ptr null, ptr null)
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}
