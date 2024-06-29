; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//104/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @__pyx_pymod_create(i1 %tobool.not, ptr nocapture writeonly %call4) local_unnamed_addr {
entry:
  br i1 %tobool.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  %call43 = tail call ptr @PyObject_GetAttrString()
  store i32 0, ptr %call4, align 4
  %call.i = tail call ptr @PyObject_GetAttrString()
  %0 = load i64, ptr @PyObject_GetAttrString, align 8
  %dec.i.i = or i64 %0, 1
  store i64 %dec.i.i, ptr @PyObject_GetAttrString, align 8
  %call.i1 = tail call ptr @PyObject_GetAttrString()
  %1 = load i64, ptr @PyObject_GetAttrString, align 8
  %dec.i.i2 = or i64 %1, 1
  store i64 %dec.i.i2, ptr @PyObject_GetAttrString, align 8
  %call.i3 = tail call ptr @PyObject_GetAttrString()
  %2 = load i64, ptr @PyObject_GetAttrString, align 8
  %dec.i.i4 = or i64 %2, 1
  store i64 %dec.i.i4, ptr @PyObject_GetAttrString, align 8
  br label %common.ret
}

declare ptr @PyObject_GetAttrString() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @Py_DECREF(ptr nocapture %op) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %op, align 8
  %dec = or i64 %0, 1
  store i64 %dec, ptr %op, align 8
  ret void
}

define noundef i32 @__Pyx_copy_spec_to_module() local_unnamed_addr {
entry:
  %call = tail call ptr @PyObject_GetAttrString()
  %0 = load i64, ptr @PyObject_GetAttrString, align 8
  %dec.i = or i64 %0, 1
  store i64 %dec.i, ptr @PyObject_GetAttrString, align 8
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }
