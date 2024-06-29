; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @mi_prim_get_default_heap()

define ptr @mi_heap_get_default() {
entry:
  store volatile i32 0, ptr null, align 4
  ret ptr @mi_prim_get_default_heap
}

define ptr @mi_heap_set_default(ptr %heap, i1 %call) {
entry:
  %cmp = icmp ne ptr %heap, null
  %brmerge.not = select i1 %cmp, i1 %call, i1 false
  br i1 %brmerge.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %return

return:                                           ; preds = %if.end, %entry
  ret ptr null
}
