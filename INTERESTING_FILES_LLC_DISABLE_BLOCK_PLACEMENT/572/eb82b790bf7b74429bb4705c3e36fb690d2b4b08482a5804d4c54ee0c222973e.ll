; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i32, i32, i32 }

define i32 @rte_vfio_clear_group() {
entry:
  %call17 = call ptr @get_vfio_cfg_by_group_fd(i32 0, i32 0, i32 0, i1 false, ptr null, i64 0, ptr null, ptr null)
  ret i32 0
}

declare ptr @get_vfio_cfg_by_group_fd(i32, i32, i32, i1, ptr, i64, ptr, ptr)

define i32 @get_vfio_group_idx(ptr %0, i32 %j.0) {
entry:
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %entry
  %j.01 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp2 = icmp ult i32 %j.01, 64
  br i1 %cmp2, label %for.body3, label %common.ret

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = zext i32 %j.01 to i64
  %fd = getelementptr [64 x %struct.vfio_group], ptr %0, i64 0, i64 %idxprom4, i32 1
  %1 = load i32, ptr %fd, align 4
  %cmp6 = icmp eq i32 %1, 0
  br i1 %cmp6, label %common.ret, label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = or i32 %j.0, 1
  br label %for.cond1

common.ret:                                       ; preds = %for.body3, %for.cond1
  ret i32 0
}
