; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = constant [3 x i8] c"\0D\0A\00"

define i32 @consumeNewline(ptr %buf) {
entry:
  %__buf11 = alloca [0 x [0 x [1024 x i8]]], i32 0, align 16
  %call = call i32 @strncmp(ptr %buf, ptr @.str, i64 2)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %__buf11, i64 0, ptr null, i32 0, i32 0)
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr null, i64 0, ptr null, i64 0, ptr %__buf11)
  br label %return

return:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @strncmp(ptr, ptr, i64)

declare i32 @snprintf(ptr, i64, ptr, ...)

define i32 @readLong() {
entry:
  %call1 = load volatile ptr, ptr null, align 8
  ret i32 0
}
