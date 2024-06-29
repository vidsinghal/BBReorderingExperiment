; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//365/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noreturn nounwind
define noundef i32 @f77_constant(ptr nocapture writeonly %ci, ptr nocapture readnone %tmp, i8 %.pre, i8 %0, ...) local_unnamed_addr #0 {
entry:
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr nonnull dereferenceable(1) %ci, ptr nonnull dereferenceable(1) null, double 0.000000e+00)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %1 = phi i8 [ %.pre, %entry ], [ %.be, %while.cond.backedge ]
  switch i8 %1, label %while.cond.backedge [
    i8 101, label %if.then36
    i8 0, label %if.then36
  ]

if.then36:                                        ; preds = %while.cond, %while.cond
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then36, %while.cond
  %.be = phi i8 [ 0, %if.then36 ], [ %.pre, %while.cond ]
  br label %while.cond
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { nofree noreturn nounwind }
attributes #1 = { nofree nounwind }
