; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @__Pyx_copy_spec_to_module(i32 %allow_none, ptr %call) {
entry:
  %tobool3.not = icmp eq i32 %allow_none, 0
  %cmp = icmp ne ptr %call, null
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end

if.then5:                                         ; preds = %entry
  %call6 = call i32 @PyDict_SetItemString()
  br label %if.end

if.end:                                           ; preds = %if.then5, %entry
  ret i32 0
}

declare i32 @PyDict_SetItemString()
