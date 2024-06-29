; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ztgsja_(ptr %tola) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc559, %entry
  %kcycle.0 = phi i32 [ 0, %entry ], [ %inc560, %for.inc559 ]
  %tobool487.not = phi i1 [ false, %entry ], [ true, %for.inc559 ]
  %cmp128 = icmp ult i32 %kcycle.0, 41
  br i1 %cmp128, label %for.body, label %for.end561

for.body:                                         ; preds = %for.cond
  br i1 %tobool487.not, label %if.then488, label %for.inc559

if.then488:                                       ; preds = %for.body
  %0 = load double, ptr %tola, align 8
  %cmp555 = fcmp ult double %0, 0.000000e+00
  br i1 %cmp555, label %for.inc559, label %common.ret

common.ret:                                       ; preds = %for.end561, %if.then488
  ret i32 0

for.inc559:                                       ; preds = %if.then488, %for.body
  %inc560 = add i32 %kcycle.0, 1
  br label %for.cond

for.end561:                                       ; preds = %for.cond
  store i32 0, ptr %tola, align 4
  br label %common.ret
}
