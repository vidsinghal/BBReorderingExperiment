; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @fprintf(ptr, ptr, ...)

define void @native_svg_text(ptr %loutput, i32 %0, i1 %tobool22) {
entry:
  %tobool21 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool21, i1 %tobool22, i1 false
  br i1 %or.cond, label %land.lhs.true23, label %if.end26

land.lhs.true23:                                  ; preds = %entry
  %1 = load i32, ptr %loutput, align 4
  %tobool24.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool24.not, ptr %loutput, ptr null
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true23, %entry
  %fontweight.0 = phi ptr [ null, %entry ], [ %spec.select, %land.lhs.true23 ]
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr %fontweight.0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null)
  ret void
}
