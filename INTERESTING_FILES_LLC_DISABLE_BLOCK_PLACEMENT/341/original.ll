; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//341/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define ptr @LispCharCompare(ptr readonly %0, i64 %1) local_unnamed_addr #0 {
entry:
  %and157 = and i64 %1, 1
  %cmp158 = icmp eq i64 %and157, 0
  br i1 %cmp158, label %land.rhs160, label %for.end221

land.rhs160:                                      ; preds = %entry
  %bf.load161 = load i16, ptr %0, align 8
  %cmp164 = icmp eq i16 %bf.load161, 0
  br i1 %cmp164, label %cleanup, label %for.end221

for.end221:                                       ; preds = %land.rhs160, %entry
  br label %cleanup

cleanup:                                          ; preds = %for.end221, %land.rhs160
  %retval.0 = phi ptr [ %0, %for.end221 ], [ null, %land.rhs160 ]
  ret ptr %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }
