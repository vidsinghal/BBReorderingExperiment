; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//814/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @Py_DECREF(ptr nocapture readonly %op) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %op, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define noalias noundef ptr @__pyx_f_6Cython_4Plex_3DFA_nfa_to_dfa(ptr nocapture %call220, i1 %tobool221, i1 %lnot222, ptr %__pyx_callargs261) local_unnamed_addr {
entry:
  br i1 %tobool221, label %if.then231, label %if.end232.lr.ph

if.end232.lr.ph:                                  ; preds = %entry
  %add.ptr265 = getelementptr i8, ptr %__pyx_callargs261, i64 8
  %lnot222.fr = freeze i1 %lnot222
  br i1 %lnot222.fr, label %if.end232.us, label %if.end232

if.end232.us:                                     ; preds = %if.end232.lr.ph, %Py_DECREF.exit.us
  %call23310.us = tail call i32 @Py_IS_TYPE()
  %0 = load i64, ptr %call220, align 8
  %cmp.i.us = icmp eq i64 %0, 0
  br i1 %cmp.i.us, label %if.then.i.us, label %Py_DECREF.exit.us

if.then.i.us:                                     ; preds = %if.end232.us
  store volatile i32 0, ptr null, align 4294967296
  br label %Py_DECREF.exit.us

Py_DECREF.exit.us:                                ; preds = %if.then.i.us, %if.end232.us
  store i32 0, ptr %call220, align 4
  %call271.us = tail call ptr @__Pyx_PyObject_FastCallDict(ptr %add.ptr265)
  br label %if.end232.us

if.then231:                                       ; preds = %entry
  ret ptr null

if.end232:                                        ; preds = %if.end232.lr.ph, %if.end232
  %call23310 = tail call i32 @Py_IS_TYPE()
  %call271 = tail call ptr @__Pyx_PyObject_FastCallDict(ptr %add.ptr265)
  br label %if.end232
}

declare i32 @Py_IS_TYPE() local_unnamed_addr

declare ptr @__Pyx_PyObject_FastCallDict(ptr) local_unnamed_addr

attributes #0 = { nofree norecurse nounwind }
