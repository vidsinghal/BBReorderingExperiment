; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @hypre_MAlloc()

define ptr @mv_MultiVectorCreateFromSampleVector(ptr %ii_, ptr %0) {
entry:
  %call1 = call ptr @hypre_MAlloc()
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %ii_, align 8
  %call12 = call ptr %1(ptr null, i64 0, ptr null)
  store ptr null, ptr %ii_, align 8
  ret ptr null
}

define ptr @mv_MultiVectorCreateCopy(ptr %x, ptr %0) {
entry:
  %call1 = call ptr @hypre_MAlloc()
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %x, align 8
  %call5 = call ptr %1(ptr %2, i64 0)
  store ptr null, ptr %0, align 8
  store ptr null, ptr %x, align 8
  ret ptr null
}

define void @mv_MultiVectorDestroy(i1 %tobool.not) {
entry:
  br i1 %tobool.not, label %common.ret1, label %if.end

common.ret1:                                      ; preds = %if.end, %entry
  ret void

if.end:                                           ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret1
}
