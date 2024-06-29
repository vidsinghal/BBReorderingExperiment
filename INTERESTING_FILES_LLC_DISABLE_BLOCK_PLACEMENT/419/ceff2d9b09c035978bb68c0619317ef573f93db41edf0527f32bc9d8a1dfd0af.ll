; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @bt_struct_rw(ptr %definition, i32 %call) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %definition, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %cleanup3, label %for.body

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @generic_rw()
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %cleanup3

cleanup3:                                         ; preds = %for.body, %for.cond
  %retval.2 = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.2
}

declare i32 @generic_rw()
