; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @proj_mdist_ini(i1 %cmp10, ptr %malloc) {
entry:
  br i1 %cmp10, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  %common.ret.op = phi ptr [ @malloc, %if.then ], [ null, %entry ]
  ret ptr %common.ret.op

if.then:                                          ; preds = %entry
  %call = call ptr @malloc()
  store i32 0, ptr %malloc, align 8
  br label %common.ret
}

declare ptr @malloc()
