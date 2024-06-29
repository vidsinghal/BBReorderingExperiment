; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @escapifychar(ptr %s0, i1 %cmp15.not) {
entry:
  br i1 %cmp15.not, label %sw.default, label %if.then17

common.ret:                                       ; preds = %sw.default, %if.then17
  %common.ret.op = phi ptr [ %s0, %if.then17 ], [ null, %sw.default ]
  ret ptr %common.ret.op

if.then17:                                        ; preds = %entry
  %incdec.ptr19 = getelementptr i8, ptr %s0, i64 1
  store i8 0, ptr %s0, align 1
  store i8 0, ptr %incdec.ptr19, align 1
  br label %common.ret

sw.default:                                       ; preds = %entry
  store i8 1, ptr %s0, align 1
  br label %common.ret
}
