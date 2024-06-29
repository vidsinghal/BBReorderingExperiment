; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//432/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @grib_nearest_new(i1 %tobool2.not, i1 %tobool.not) local_unnamed_addr {
entry:
  %call = tail call ptr @grib_find_accessor()
  br i1 %tobool.not, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %spec.select, %if.end ]
  ret ptr %retval.0

if.end:                                           ; preds = %entry
  %call11 = load volatile ptr, ptr null, align 4294967296
  %spec.select = select i1 %tobool2.not, ptr null, ptr @grib_nearest_factory
  br label %cleanup
}

declare ptr @grib_find_accessor() local_unnamed_addr

declare ptr @grib_nearest_factory()
