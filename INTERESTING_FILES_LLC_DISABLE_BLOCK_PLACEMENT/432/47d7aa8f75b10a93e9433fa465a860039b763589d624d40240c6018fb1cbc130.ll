; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @grib_nearest_new(i1 %tobool2.not, i1 %tobool.not) {
entry:
  %call = call ptr @grib_find_accessor()
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call11 = load volatile ptr, ptr null, align 8
  %spec.select = select i1 %tobool2.not, ptr null, ptr @grib_nearest_factory
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

declare ptr @grib_find_accessor()

declare ptr @grib_nearest_factory()
