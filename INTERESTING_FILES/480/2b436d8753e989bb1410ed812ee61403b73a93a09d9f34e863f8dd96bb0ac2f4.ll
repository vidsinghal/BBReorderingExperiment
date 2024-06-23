; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FASTCOVER_checkParameters(i32 %f, i32 %0) {
entry:
  switch i32 %0, label %return [
    i32 6, label %if.end25
    i32 0, label %if.end25
  ]

if.end25:                                         ; preds = %entry, %entry
  br label %return

return:                                           ; preds = %if.end25, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %f, %if.end25 ]
  ret i32 %retval.0
}
