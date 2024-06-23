; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @bt_struct_rw(i1 %cmp, i1 %tobool.not) {
entry:
  br i1 %cmp, label %for.body, label %cleanup3

for.body:                                         ; preds = %for.body, %entry
  %call4 = call i32 @generic_rw()
  br i1 %tobool.not, label %cleanup3, label %for.body

cleanup3:                                         ; preds = %for.body, %entry
  %retval.2 = phi i32 [ 1, %for.body ], [ 0, %entry ]
  ret i32 %retval.2
}

declare i32 @generic_rw()
