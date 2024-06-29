; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Copyt_internal(ptr %cntl) {
entry:
  %call = call i32 @FLA_Check_error_level()
  %0 = load i32, ptr %cntl, align 8
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %land.lhs.true, label %common.ret

land.lhs.true:                                    ; preds = %entry
  %call3 = load volatile i32, ptr null, align 4
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %common.ret

common.ret:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  ret i32 0

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call10 = call i32 @FLA_Copyt_internal(ptr %cntl)
  br label %common.ret
}

declare i32 @FLA_Check_error_level()
