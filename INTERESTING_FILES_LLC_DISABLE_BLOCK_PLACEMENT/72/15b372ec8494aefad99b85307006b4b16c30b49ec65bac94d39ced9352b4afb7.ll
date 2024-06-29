; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @Tcl_InitHashTable(ptr %tablePtr, i32 %keyType) {
entry:
  switch i32 %keyType, label %common.ret [
    i32 0, label %if.then
    i32 1, label %if.then10
  ]

common.ret:                                       ; preds = %if.then10, %if.then, %entry
  ret void

if.then:                                          ; preds = %entry
  store ptr null, ptr %tablePtr, align 8
  br label %common.ret

if.then10:                                        ; preds = %entry
  %findProc11 = getelementptr i8, ptr %tablePtr, i64 64
  store ptr null, ptr %findProc11, align 8
  br label %common.ret
}
