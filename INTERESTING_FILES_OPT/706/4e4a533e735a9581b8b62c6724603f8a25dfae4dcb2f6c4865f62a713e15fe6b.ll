; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__pyx_vtabstruct_6pandas_5_libs_9hashtable_Int16HashTable = type { ptr, ptr }

@__pyx_ptype_6pandas_5_libs_9hashtable_UInt16HashTable = external global ptr
@__pyx_vtable_6pandas_5_libs_9hashtable_Int16HashTable = external global %struct.__pyx_vtabstruct_6pandas_5_libs_9hashtable_Int16HashTable

define i32 @__Pyx_ParseOptionalKeywords(ptr %name.1, i1 %tobool2.not, i64 %sub.ptr.sub) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call = call i32 @PyDict_Next()
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.cond
  %name.12 = phi ptr [ null, %while.cond ], [ %incdec.ptr, %while.body3 ]
  br i1 %tobool2.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond1
  %0 = load ptr, ptr %name.12, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %while.end, label %while.body3

while.body3:                                      ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %name.1, i64 8
  br label %while.cond1

while.end:                                        ; preds = %land.rhs, %while.cond1
  %arrayidx = getelementptr i8, ptr null, i64 %sub.ptr.sub
  store ptr null, ptr %arrayidx, align 8
  br label %while.cond
}

declare i32 @PyDict_Next()
