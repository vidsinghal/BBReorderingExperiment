; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gt_bitPackStringInt64_unit_test(i32 %call1) {
entry:
  %and2 = and i32 %call1, 1
  %rem4 = zext i32 %and2 to i64
  br label %for.cond24

for.cond24:                                       ; preds = %for.body27, %entry
  %i.0 = phi i64 [ 0, %entry ], [ 1, %for.body27 ]
  %cmp25 = icmp ult i64 %i.0, %rem4
  br i1 %cmp25, label %for.body27, label %cleanup160

for.body27:                                       ; preds = %for.cond24
  call void (...) @gt_log_log()
  br label %for.cond24

cleanup160:                                       ; preds = %for.cond24
  ret i32 0
}

declare void @gt_log_log(...)
