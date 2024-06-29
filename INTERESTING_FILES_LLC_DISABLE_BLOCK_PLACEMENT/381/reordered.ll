; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//381/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @gt_matstat_arguments_check(ptr nocapture %tool_arguments, ptr nocapture writeonly %0) local_unnamed_addr #0 {
entry:
  store i32 0, ptr %0, align 8
  store i8 0, ptr %tool_arguments, align 8
  store i8 0, ptr %0, align 8
  %1 = load i8, ptr %tool_arguments, align 8, !range !0, !noundef !1
  %tobool37 = trunc nuw i8 %1 to i1
  br i1 %tobool37, label %common.ret, label %if.end48

if.end48:                                         ; preds = %entry
  %call49 = load volatile i1, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end48, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

!0 = !{i8 0, i8 2}
!1 = !{}
