; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//433/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: nofree noreturn nounwind
define noalias noundef nonnull ptr @gt_option_parser_new(ptr readnone %synopsis, i1 %tobool1) local_unnamed_addr #1 {
entry:
  %tobool = icmp ne ptr %synopsis, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 1)
  unreachable

do.end:                                           ; preds = %entry
  %call12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 0)
  unreachable
}

attributes #0 = { nofree nounwind }
attributes #1 = { nofree noreturn nounwind }
