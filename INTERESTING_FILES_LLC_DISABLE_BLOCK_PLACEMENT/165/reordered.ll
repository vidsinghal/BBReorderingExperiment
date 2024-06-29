; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//165/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define void @shake128_absorb() local_unnamed_addr #0 {
entry:
  br label %while.cond.us.i

for.body7.us.i:                                   ; preds = %for.body7.us.i, %while.cond.us.i
  %i.02.us.i = phi i64 [ 0, %while.cond.us.i ], [ %inc10.us.i, %for.body7.us.i ]
  %call.us.i = load volatile i64, ptr null, align 4294967296
  %inc10.us.i = add nuw nsw i64 %i.02.us.i, 1
  %exitcond.not.i = icmp eq i64 %inc10.us.i, 168
  br i1 %exitcond.not.i, label %while.cond.us.i, label %for.body7.us.i

while.cond.us.i:                                  ; preds = %for.body7.us.i, %entry
  br label %for.body7.us.i
}

; Function Attrs: nofree norecurse noreturn nounwind
define void @keccak_absorb(i32 %r) local_unnamed_addr #0 {
entry:
  %conv4 = zext i32 %r to i64
  %cmp51.not = icmp eq i32 %r, 0
  br i1 %cmp51.not, label %while.cond, label %while.cond.us

for.body7.us:                                     ; preds = %while.cond.us, %for.body7.us
  %i.02.us = phi i64 [ 0, %while.cond.us ], [ %inc10.us, %for.body7.us ]
  %call.us = load volatile i64, ptr null, align 4294967296
  %inc10.us = add nuw nsw i64 %i.02.us, 1
  %exitcond.not = icmp eq i64 %inc10.us, %conv4
  br i1 %exitcond.not, label %while.cond.us, label %for.body7.us

while.cond.us:                                    ; preds = %for.body7.us, %entry
  br label %for.body7.us

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond
}

attributes #0 = { nofree norecurse noreturn nounwind }
