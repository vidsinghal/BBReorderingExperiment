; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @is_same_seed(ptr %seed1, i32 %0, i1 %cmp29.not) {
entry:
  %cmp24.not = icmp ne i32 %0, 0
  %brmerge.not = select i1 %cmp24.not, i1 %cmp29.not, i1 false
  br i1 %brmerge.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %entry
  %1 = load i32, ptr %seed1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %1, %if.end32 ]
  ret i32 %retval.0
}
