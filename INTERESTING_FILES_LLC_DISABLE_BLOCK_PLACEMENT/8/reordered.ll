; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//8/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_strmv_unf_var2(i1 %cmp) local_unnamed_addr {
entry:
  %call5 = tail call i1 @bli_is_upper()
  %or.cond = and i1 %call5, %cmp
  br i1 %or.cond, label %for.body, label %common.ret

for.body:                                         ; preds = %entry
  %call7 = load volatile i64, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret void
}

declare zeroext i1 @bli_is_upper() local_unnamed_addr
