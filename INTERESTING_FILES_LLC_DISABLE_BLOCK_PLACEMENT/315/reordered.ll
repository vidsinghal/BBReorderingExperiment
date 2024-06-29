; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//315/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @_zip_string_equal(ptr readnone %a, i1 %cmp1) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %a, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

return:                                           ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call = load volatile i32, ptr null, align 4294967296
  br label %return
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
