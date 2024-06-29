; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//42/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i1 @gt_error_is_set() local_unnamed_addr

declare i32 @fprintf(...) local_unnamed_addr

; Function Attrs: noreturn
define noundef i32 @gt_rcr_encoder_encode(ptr readnone %rcr_enc, i1 %tobool1) local_unnamed_addr #0 {
entry:
  %tobool = icmp ne ptr %rcr_enc, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (...) @fprintf()
  unreachable

do.end:                                           ; preds = %entry
  %call4 = tail call i1 @gt_error_is_set()
  unreachable
}

attributes #0 = { noreturn }
