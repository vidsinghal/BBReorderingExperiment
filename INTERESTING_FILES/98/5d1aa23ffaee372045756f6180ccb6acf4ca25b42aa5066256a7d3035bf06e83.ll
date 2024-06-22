; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @grib_oarray_new(ptr %call1, i1 %tobool2.not) {
entry:
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %entry
  call void (...) @grib_context_log()
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call1, %entry ]
  ret ptr %retval.0
}

declare void @grib_context_log(...)
