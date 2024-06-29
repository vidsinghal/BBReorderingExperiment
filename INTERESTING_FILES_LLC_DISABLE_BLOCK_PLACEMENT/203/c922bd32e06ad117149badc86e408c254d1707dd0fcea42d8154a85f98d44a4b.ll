; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @__pyx_pymod_create(i1 %tobool8.not, i1 %tobool34.not) {
entry:
  br i1 %tobool8.not, label %if.end10, label %bad

if.end10:                                         ; preds = %entry
  %call11 = load volatile ptr, ptr null, align 8
  %spec.select = select i1 %tobool34.not, ptr null, ptr @PyModule_NewObject
  br label %bad

bad:                                              ; preds = %if.end10, %entry
  %module.0 = phi ptr [ null, %entry ], [ %spec.select, %if.end10 ]
  store volatile i32 0, ptr %module.0, align 4
  ret ptr null
}

declare ptr @PyModule_NewObject()
