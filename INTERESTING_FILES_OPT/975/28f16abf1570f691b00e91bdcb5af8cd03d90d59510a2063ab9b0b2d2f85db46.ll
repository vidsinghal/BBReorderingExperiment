; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @pool_match_dep(i32 %d1, i1 %cmp71.not, ptr %0) {
entry:
  %cmp1.not = icmp sgt i32 %d1, -1
  br i1 %cmp1.not, label %if.end69, label %common.ret

common.ret:                                       ; preds = %if.end153, %if.then72, %entry
  ret i32 0

if.end69:                                         ; preds = %entry
  br i1 %cmp71.not, label %if.end153, label %if.then72

if.then72:                                        ; preds = %if.end69
  %call100 = call i32 @is_interval_dep()
  %call10432 = call i32 @pool_match_dep(i32 %d1, i1 false, ptr null)
  br label %common.ret

if.end153:                                        ; preds = %if.end69
  %call17621 = call i32 @pool_match_dep(i32 0, i1 false, ptr null)
  br label %common.ret
}

declare i32 @is_interval_dep()
