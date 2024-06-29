; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__Pyx_check_single_interpreter.main_interpreter_id = external global i64

define ptr @__pyx_pymod_create() {
entry:
  %call = call i32 @__Pyx_check_single_interpreter()
  ret ptr null
}

define i32 @__Pyx_check_single_interpreter() {
entry:
  %call1 = call i64 @PyInterpreterState_GetID()
  %0 = load i64, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  store i64 %call1, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i64 @PyInterpreterState_GetID()
