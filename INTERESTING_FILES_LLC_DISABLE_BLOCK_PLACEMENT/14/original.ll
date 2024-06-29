; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//14/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define i32 @semaphore_init(i32 %call6, i1 %cmp7.not, i1 %cmp) local_unnamed_addr #0 {
entry:
  %call = load volatile i32, ptr null, align 4294967296
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call61 = load volatile i32, ptr null, align 4294967296
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = load volatile ptr, ptr null, align 4294967296
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %entry ], [ %call6, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
