; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @cblas_csyrk(i32 %Order, ptr %RowMajorStrg) {
entry:
  switch i32 %Order, label %common.ret [
    i32 1, label %if.then
    i32 0, label %if.then21
  ]

common.ret:                                       ; preds = %if.then21, %if.then, %entry
  ret void

if.then:                                          ; preds = %entry
  call void (...) @cblas_xerbla()
  store i32 0, ptr %RowMajorStrg, align 4
  br label %common.ret

if.then21:                                        ; preds = %entry
  store i32 1, ptr %RowMajorStrg, align 4
  br label %common.ret
}

declare void @cblas_xerbla(...)
