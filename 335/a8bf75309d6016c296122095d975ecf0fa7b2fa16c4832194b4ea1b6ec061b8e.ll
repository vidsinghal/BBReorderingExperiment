; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @axl_dbg(i32 %level, i32 %0, ...) {
entry:
  %cmp2 = icmp slt i32 %level, 1
  %cmp3.not = icmp slt i32 %0, 0
  %or.cond = or i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end12, label %if.then4

if.then4:                                         ; preds = %entry
  %call6 = call i32 (...) @fprintf()
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %entry
  ret void
}

declare i32 @fprintf(...)
