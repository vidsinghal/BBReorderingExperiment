; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//347/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @gt_pck_count_nodes_dfs(ptr nocapture writeonly %index, i1 %cmp69) local_unnamed_addr #0 {
entry:
  br i1 %cmp69, label %if.then71, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry, %if.then71
  br label %while.cond

if.then71:                                        ; preds = %entry
  store i64 0, ptr %index, align 8
  br label %while.cond.preheader

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  tail call void @visit_count_children(ptr null)
  br label %while.cond
}

declare void @visit_count_children(ptr) local_unnamed_addr

attributes #0 = { noreturn }
