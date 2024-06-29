; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @s2n_stuffer_read_base64(i1 %call7, ptr %b64_inverse, ptr %0) {
entry:
  br i1 %call7, label %common.ret, label %lor.lhs.false

common.ret:                                       ; preds = %lor.lhs.false, %entry
  %common.ret.op = phi i32 [ 1, %entry ], [ 0, %lor.lhs.false ]
  ret i32 %common.ret.op

lor.lhs.false:                                    ; preds = %do.cond141, %entry
  %1 = load i8, ptr %b64_inverse, align 1
  %2 = load i8, ptr %0, align 1
  %cmp115 = icmp ne i8 %2, 0
  %cmp123 = icmp eq i8 %1, 0
  %or.cond = select i1 %cmp115, i1 %cmp123, i1 false
  br i1 %or.cond, label %common.ret, label %do.cond141

do.cond141:                                       ; preds = %lor.lhs.false
  %call161 = call i32 @s2n_calculate_stacktrace()
  br label %lor.lhs.false
}

declare i32 @s2n_calculate_stacktrace()
