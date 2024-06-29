; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtStackNodecount = type { i64, i64, i64, i64, i64, [256 x %struct.Nodecount_tag], ptr, ptr }
%struct.Nodecount_tag = type { i64, i64, i64, i64, i32, i8, i8 }

define void @gt_pck_count_nodes_dfs(ptr %space, ptr %nextfree12, ptr %arrayidx66, i1 %cmp69) {
entry:
  %stack11 = alloca [0 x %struct.GtStackNodecount], i32 0, align 8
  %space2 = getelementptr i8, ptr %stack11, i64 10280
  store ptr %stack11, ptr %space, align 8
  %call8 = call ptr @gt_malloc_mem()
  %0 = load i64, ptr %space, align 8
  %1 = load ptr, ptr %space2, align 8
  store i64 0, ptr %stack11, align 8
  %arrayidx664 = getelementptr %struct.Nodecount_tag, ptr %1, i64 %0
  store i64 0, ptr %arrayidx664, align 8
  store i64 0, ptr %arrayidx66, align 8
  store i64 0, ptr %nextfree12, align 8
  store i64 0, ptr %space, align 8
  store i32 0, ptr %nextfree12, align 8
  store i32 0, ptr %space, align 4
  br i1 %cmp69, label %if.then71, label %while.cond

if.then71:                                        ; preds = %entry
  store i64 0, ptr %space, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then71, %entry
  call void (...) @gt_log_log()
  ret void
}

declare ptr @gt_malloc_mem()

declare void @gt_log_log(...)
