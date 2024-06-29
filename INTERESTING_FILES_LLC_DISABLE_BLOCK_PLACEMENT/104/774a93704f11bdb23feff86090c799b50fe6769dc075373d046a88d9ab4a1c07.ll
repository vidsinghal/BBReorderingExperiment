; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @__pyx_pymod_create(i1 %tobool.not, ptr %call4) {
entry:
  br i1 %tobool.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  %call43 = call ptr @PyObject_GetAttrString()
  store i32 0, ptr %call4, align 4
  %call48 = call i32 @__Pyx_copy_spec_to_module()
  %call60 = call i32 @__Pyx_copy_spec_to_module()
  %call72 = call i32 @__Pyx_copy_spec_to_module()
  br label %common.ret
}

declare ptr @PyObject_GetAttrString()

define void @Py_DECREF(ptr %op) {
entry:
  %0 = load i64, ptr %op, align 8
  %dec = or i64 %0, 1
  store i64 %dec, ptr %op, align 8
  ret void
}

define i32 @__Pyx_copy_spec_to_module() {
entry:
  %call = call ptr @PyObject_GetAttrString()
  call void @Py_DECREF(ptr @PyObject_GetAttrString)
  ret i32 0
}
