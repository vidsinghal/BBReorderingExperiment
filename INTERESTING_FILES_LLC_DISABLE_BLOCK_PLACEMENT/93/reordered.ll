; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//93/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define ptr @escapifychar(ptr writeonly %s0, i1 %cmp15.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp15.not, label %common.ret, label %if.then17

if.then17:                                        ; preds = %entry
  %incdec.ptr19 = getelementptr i8, ptr %s0, i64 1
  store i8 0, ptr %incdec.ptr19, align 1
  br label %common.ret

common.ret:                                       ; preds = %entry, %if.then17
  %.sink = phi i8 [ 0, %if.then17 ], [ 1, %entry ]
  %common.ret.op = phi ptr [ %s0, %if.then17 ], [ null, %entry ]
  store i8 %.sink, ptr %s0, align 1
  ret ptr %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
