; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cgemlq_(ptr %info, i32 %0, i1 %cmp51) {
entry:
  %cmp43 = icmp slt i32 %0, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %entry
  store i32 1, ptr %info, align 4
  br label %if.end102

if.else46:                                        ; preds = %entry
  br i1 %cmp51, label %if.end102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else46
  store i32 0, ptr %info, align 4
  br label %if.end102

if.end102:                                        ; preds = %lor.lhs.false, %if.else46, %if.then45
  ret i32 0
}
