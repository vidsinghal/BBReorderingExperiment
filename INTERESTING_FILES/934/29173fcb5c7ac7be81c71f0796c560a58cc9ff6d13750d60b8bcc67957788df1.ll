; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @basiclu_initialize(ptr %istore, i1 %tobool1) {
entry:
  %tobool = icmp ne ptr %istore, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @lu_initialize()
  br label %return

return:                                           ; preds = %if.end, %entry
  ret i32 1
}

declare void @lu_initialize()
