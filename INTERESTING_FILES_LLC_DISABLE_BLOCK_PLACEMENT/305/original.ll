; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//305/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @cblas_csyrk(i32 %Order, ptr nocapture writeonly %RowMajorStrg) local_unnamed_addr {
entry:
  switch i32 %Order, label %common.ret [
    i32 1, label %if.then
    i32 0, label %common.ret.sink.split
  ]

common.ret.sink.split:                            ; preds = %entry, %if.then
  %.sink = phi i32 [ 0, %if.then ], [ 1, %entry ]
  store i32 %.sink, ptr %RowMajorStrg, align 4
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %entry
  ret void

if.then:                                          ; preds = %entry
  tail call void (...) @cblas_xerbla()
  br label %common.ret.sink.split
}

declare void @cblas_xerbla(...) local_unnamed_addr
