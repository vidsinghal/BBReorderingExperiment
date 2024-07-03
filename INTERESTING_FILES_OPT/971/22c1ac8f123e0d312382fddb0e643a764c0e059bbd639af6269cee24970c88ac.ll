; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pyx_n_s_m = external global ptr

define i32 @__Pyx_ParseOptionalKeywords(ptr %argnames, ptr %values, ptr %0, i64 %sub.ptr.rhs.cast, i64 %sub.ptr.sub) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call = call i32 @PyDict_Next()
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.cond
  %name.1 = phi ptr [ %incdec.ptr, %while.body3 ], [ null, %while.cond ]
  %1 = load ptr, ptr %name.1, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond1
  %2 = load ptr, ptr %argnames, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %while.end, label %while.body3

while.body3:                                      ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %name.1, i64 8
  br label %while.cond1

while.end:                                        ; preds = %land.rhs, %while.cond1
  %arrayidx = getelementptr i8, ptr null, i64 %sub.ptr.sub
  store ptr null, ptr %arrayidx, align 8
  br label %while.cond
}

declare ptr @PyErr_Format(...)

declare i32 @PyDict_Next()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
