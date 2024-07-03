; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.146 = external constant [119 x i8]

define void @Py_DECREF(ptr %op) {
entry:
  %0 = load i64, ptr %op, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define ptr @__pyx_f_6Cython_4Plex_3DFA_nfa_to_dfa(ptr %call220, i1 %tobool221, i1 %lnot222, ptr %__pyx_callargs261) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end260, %entry
  br i1 %tobool221, label %if.then231, label %if.end232

if.then231:                                       ; preds = %for.cond
  ret ptr null

if.end232:                                        ; preds = %for.cond
  %call23310 = call i32 @Py_IS_TYPE()
  br i1 %lnot222, label %if.then242, label %if.end260

if.then242:                                       ; preds = %if.end232
  call void @Py_DECREF(ptr %call220)
  store i32 0, ptr %call220, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then242, %if.end232
  %add.ptr265 = getelementptr ptr, ptr %__pyx_callargs261, i64 1
  %call271 = call ptr @__Pyx_PyObject_FastCallDict(ptr %add.ptr265)
  br label %for.cond
}

declare i32 @Py_IS_TYPE()

declare ptr @__Pyx_PyObject_FastCallDict(ptr)
