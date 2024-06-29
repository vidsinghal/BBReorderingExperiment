; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @repair_cmp(ptr %a, ptr %b, i1 %cmp4) {
entry:
  br i1 %cmp4, label %cleanup, label %if.else6

if.else6:                                         ; preds = %entry
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %b, align 4
  %cmp8 = icmp slt i32 %0, %1
  br i1 %cmp8, label %cleanup, label %if.else10

if.else10:                                        ; preds = %if.else6
  %cmp13 = icmp slt i32 %1, %0
  %. = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.else6, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.else6 ], [ %., %if.else10 ]
  ret i32 %retval.0
}
