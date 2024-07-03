; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.8 = constant [2 x i8] c".\00"

declare ptr @realloc(ptr, i64)

define i32 @hwloc_linux_foreach_proc_tid() {
entry:
  %nr11 = alloca [0 x [0 x i32]], align 4
  %call122 = call i32 @hwloc_linux_get_proc_tids(ptr %nr11)
  br label %retry

retry:                                            ; preds = %retry, %entry
  %call231 = call i32 @hwloc_linux_get_proc_tids(ptr null)
  store i32 0, ptr %nr11, align 4
  br label %retry
}

define i32 @hwloc_linux_get_proc_tids(ptr %nr_tidsp) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %tids.0 = phi ptr [ null, %entry ], [ %nr_tidsp, %while.cond ]
  %call74 = call ptr @readdir()
  %call157 = call ptr @realloc(ptr %tids.0, i64 0)
  %call21 = call i32 @strcmp(ptr inttoptr (i64 19 to ptr), ptr @.str.8)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %while.cond, label %common.ret

common.ret:                                       ; preds = %while.cond
  ret i32 0
}

declare ptr @readdir()

declare i32 @strcmp(ptr, ptr)
