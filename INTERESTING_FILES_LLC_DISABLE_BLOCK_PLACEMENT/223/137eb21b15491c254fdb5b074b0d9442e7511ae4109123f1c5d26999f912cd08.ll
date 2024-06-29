; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @isl_schedule_plain_is_equal(ptr %schedule1, i1 %tobool1) {
entry:
  %tobool = icmp ne ptr %schedule1, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end3, label %return

if.end3:                                          ; preds = %entry
  %call = call i32 @isl_schedule_tree_plain_is_equal()
  br label %return

return:                                           ; preds = %if.end3, %entry
  ret i32 0
}

declare i32 @isl_schedule_tree_plain_is_equal()
