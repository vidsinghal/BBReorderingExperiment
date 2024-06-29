; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @GetZFPType(i32 %Type) {
entry:
  switch i32 %Type, label %common.ret [
    i32 3, label %return
    i32 7, label %return
    i32 0, label %if.then5
  ]

if.then5:                                         ; preds = %entry
  br label %common.ret

common.ret:                                       ; preds = %return, %if.then5, %entry
  %common.ret.op = phi i32 [ 0, %entry ], [ 1, %if.then5 ], [ 1, %return ]
  ret i32 %common.ret.op

return:                                           ; preds = %entry, %entry
  br label %common.ret
}

define ptr @GetZFPField(i32 %Type) {
entry:
  %call = call i32 @GetZFPType(i32 %Type)
  %call1 = call ptr @zfp_field_1d(i32 %call)
  ret ptr null
}

declare ptr @zfp_field_1d(i32)
