; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//389/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @generate_fragment(ptr nocapture writeonly %shredder, i64 %call2, i1 %cmp.not, i1 %cmp47) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %common.ret, label %if.then3

if.then3:                                         ; preds = %entry
  %pos50 = getelementptr i8, ptr %shredder, i64 40
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then3
  store i64 0, ptr %shredder, align 8
  br label %common.ret.sink.split

if.else:                                          ; preds = %if.then3
  %sub54 = sub i64 0, %call2
  br label %common.ret.sink.split

common.ret.sink.split:                            ; preds = %if.then48, %if.else
  %sub54.sink = phi i64 [ %sub54, %if.else ], [ 0, %if.then48 ]
  store i64 %sub54.sink, ptr %pos50, align 8
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %entry
  ret ptr null
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
