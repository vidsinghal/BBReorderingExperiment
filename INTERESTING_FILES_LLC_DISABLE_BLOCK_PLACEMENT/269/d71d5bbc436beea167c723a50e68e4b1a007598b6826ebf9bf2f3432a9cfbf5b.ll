; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = internal global ptr null

define void @gt_ma_init() {
entry:
  %0 = load ptr, ptr @ma, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 1)
  unreachable

do.end:                                           ; preds = %entry
  %call1 = call ptr @xcalloc()
  store ptr %call1, ptr @ma, align 8
  ret void
}

declare i32 @fprintf(ptr, ptr, ...)

define internal ptr @xcalloc() {
entry:
  %call = call ptr @calloc(i64 0, i64 0)
  ret ptr %call
}

declare ptr @calloc(i64, i64)
