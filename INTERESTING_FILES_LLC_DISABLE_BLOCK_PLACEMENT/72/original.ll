; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//72/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define void @Tcl_InitHashTable(ptr nocapture writeonly %tablePtr, i32 %keyType) local_unnamed_addr #0 {
entry:
  switch i32 %keyType, label %common.ret [
    i32 0, label %common.ret.sink.split
    i32 1, label %if.then10
  ]

common.ret.sink.split:                            ; preds = %entry, %if.then10
  %findProc11.sink = phi ptr [ %findProc11, %if.then10 ], [ %tablePtr, %entry ]
  store ptr null, ptr %findProc11.sink, align 8
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %entry
  ret void

if.then10:                                        ; preds = %entry
  %findProc11 = getelementptr i8, ptr %tablePtr, i64 64
  br label %common.ret.sink.split
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
