; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i1 @gt_error_is_set()

declare i32 @fprintf(...)

define i32 @gt_rcr_encoder_encode(ptr %rcr_enc, i1 %tobool1) {
entry:
  %tobool = icmp ne ptr %rcr_enc, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (...) @fprintf()
  unreachable

do.end:                                           ; preds = %entry
  %call4 = call i1 @gt_error_is_set()
  unreachable
}
