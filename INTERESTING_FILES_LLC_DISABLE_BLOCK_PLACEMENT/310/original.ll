; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//310/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H5G_rootof.func_check = external local_unnamed_addr global i8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define ptr @H5G_rootof(ptr nocapture readonly %f) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr @H5G_rootof.func_check, align 1, !range !0, !noundef !1
  %tobool = trunc nuw i8 %0 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_rootof.func_check, align 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then, %entry
  %1 = load ptr, ptr %f, align 8
  ret ptr %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) }

!0 = !{i8 0, i8 2}
!1 = !{}
