; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//535/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @hypre_sstructpcgsetprecond_(ptr %precond_id, ptr nocapture writeonly %ierr, i64 %0) local_unnamed_addr {
entry:
  switch i64 %0, label %common.ret [
    i64 1, label %if.then
    i64 0, label %if.then6
  ]

common.ret:                                       ; preds = %entry, %if.then6, %if.then
  %.sink = phi i64 [ %call7, %if.then6 ], [ %call, %if.then ], [ 0, %entry ]
  store i64 %.sink, ptr %ierr, align 8
  ret void

if.then:                                          ; preds = %entry
  %call = tail call i64 @HYPRE_SStructPCGSetPrecond(ptr nonnull %precond_id)
  br label %common.ret

if.then6:                                         ; preds = %entry
  %call7 = tail call i64 @HYPRE_SStructPCGSetPrecond(ptr null)
  br label %common.ret
}

declare i64 @HYPRE_SStructPCGSetPrecond(ptr) local_unnamed_addr
