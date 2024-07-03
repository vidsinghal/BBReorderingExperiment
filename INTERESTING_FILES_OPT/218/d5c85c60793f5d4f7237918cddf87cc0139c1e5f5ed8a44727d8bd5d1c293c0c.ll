; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @hwloc_snprintf(...)

define i32 @hwloc_bitmap_list_snprintf(ptr %buf, ptr noalias %set, i32 %0) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call1 = call i32 @hwloc_bitmap_next(ptr %buf, i32 %0)
  store i32 %call1, ptr %set, align 4
  %call8 = call i32 (...) @hwloc_snprintf()
  br label %while.cond
}

define i32 @hwloc_bitmap_next(ptr %set, i32 %prev_cpu) {
entry:
  %cmp = icmp eq i32 %prev_cpu, 0
  br i1 %cmp, label %cleanup21, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  %.pre = load ptr, ptr %set, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry.for.cond_crit_edge
  %i.0 = phi i64 [ 1, %entry.for.cond_crit_edge ], [ 0, %for.cond ]
  %arrayidx = getelementptr i64, ptr %.pre, i64 %i.0
  %0 = load i64, ptr %arrayidx, align 8
  %tobool10.not = icmp eq i64 %0, 0
  %mul = shl i32 %prev_cpu, 1
  br i1 %tobool10.not, label %for.cond, label %cleanup21

cleanup21:                                        ; preds = %for.cond, %entry
  %retval.2 = phi i32 [ %mul, %for.cond ], [ 0, %entry ]
  ret i32 %retval.2
}
