; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @_zip_string_equal(ptr %a, i1 %cmp1) {
entry:
  %cmp = icmp eq ptr %a, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = load volatile i32, ptr null, align 4
  br label %return

return:                                           ; preds = %if.end, %entry
  ret i32 0
}
