; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @vtkParse_NameLength(ptr %text) {
entry:
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %i.0 = phi i64 [ 0, %entry ], [ 1, %land.rhs ]
  %arrayidx = getelementptr i8, ptr %text, i64 %i.0
  %0 = load i8, ptr %arrayidx, align 1
  %cmp = icmp eq i8 %0, 58
  %spec.select = zext i1 %cmp to i64
  %arrayidx9 = getelementptr i8, ptr %text, i64 %spec.select
  %1 = load i8, ptr %arrayidx9, align 1
  %cmp11 = icmp eq i8 %1, 0
  br i1 %cmp11, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %do.body
  %2 = load i8, ptr %text, align 1
  %cmp16 = icmp eq i8 %2, 58
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %land.rhs, %do.body
  ret i64 0
}
