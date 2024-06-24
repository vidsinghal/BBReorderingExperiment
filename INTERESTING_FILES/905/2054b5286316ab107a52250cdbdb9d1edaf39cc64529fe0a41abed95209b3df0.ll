; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @x64_mulmod(i64 %m, ptr %hi) {
entry:
  %and = and i64 %m, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %cleanup

if.else:                                          ; preds = %entry
  %0 = load i64, ptr %hi, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry
  %retval.0 = phi i64 [ %0, %if.else ], [ 1, %entry ]
  ret i64 %retval.0
}
