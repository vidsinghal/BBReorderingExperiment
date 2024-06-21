; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @gt_pck_count_nodes_dfs(ptr %index, i1 %cmp69) {
entry:
  br i1 %cmp69, label %if.then71, label %while.cond

if.then71:                                        ; preds = %entry
  store i64 0, ptr %index, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then71, %entry
  call void @visit_count_children(ptr null)
  br label %while.cond
}

declare void @visit_count_children(ptr)
