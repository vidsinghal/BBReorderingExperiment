; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//425/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define range(i64 0, 2) i64 @ZSTDMT_toFlushNow(i1 %cmp, i1 %tobool2.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ %spec.select, %if.end ], [ 1, %entry ]
  ret i64 %retval.0

if.end:                                           ; preds = %entry
  %call12 = load volatile i32, ptr null, align 4294967296
  %spec.select = zext i1 %tobool2.not to i64
  br label %cleanup
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
