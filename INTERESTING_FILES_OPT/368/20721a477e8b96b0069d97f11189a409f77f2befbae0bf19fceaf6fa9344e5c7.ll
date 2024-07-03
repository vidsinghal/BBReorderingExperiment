; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @PyDict_Next()

define i32 @__Pyx_ParseOptionalKeywords(ptr %argnames, i1 %tobool15.not, i64 %sub.ptr.sub, ptr %name.1) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call9 = call i32 @PyDict_Next()
  br label %while.cond14

while.cond14:                                     ; preds = %while.body19, %while.cond
  %name.11 = phi ptr [ null, %while.cond ], [ %incdec.ptr, %while.body19 ]
  br i1 %tobool15.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond14
  %0 = load ptr, ptr %name.11, align 8
  %cmp16.not = icmp eq ptr %0, null
  br i1 %cmp16.not, label %while.end, label %while.body19

while.body19:                                     ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %name.1, i64 8
  br label %while.cond14

while.end:                                        ; preds = %land.rhs, %while.cond14
  %arrayidx22 = getelementptr i8, ptr null, i64 %sub.ptr.sub
  store ptr null, ptr %arrayidx22, align 8
  br label %while.cond
}
