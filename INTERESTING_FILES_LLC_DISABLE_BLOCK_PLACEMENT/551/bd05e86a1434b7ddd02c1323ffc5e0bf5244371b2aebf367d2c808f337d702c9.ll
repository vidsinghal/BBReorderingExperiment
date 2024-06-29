; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @exr_print_context_info(ptr %ctxt, i1 %tobool4.not, i1 %tobool30.not) {
entry:
  br i1 %tobool4.not, label %if.end23, label %if.then5

if.then5:                                         ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null)
  br label %if.end23

if.end23:                                         ; preds = %if.then5, %entry
  %0 = load ptr, ptr %ctxt, align 8
  %brmerge = or i1 %tobool30.not, %tobool4.not
  br i1 %brmerge, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end23
  %call39 = call i32 (ptr, ...) @printf(ptr null, i32 0, ptr null)
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end23
  %1 = load i32, ptr %0, align 8
  %call78 = call i32 (ptr, ...) @printf(ptr null, i32 %1, i32 0)
  br label %for.cond80

for.cond80:                                       ; preds = %for.cond80, %if.end40
  br label %for.cond80
}

declare i32 @printf(ptr, ...)
