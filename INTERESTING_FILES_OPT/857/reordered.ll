; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//857/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @gdcmjpeg16_jpeg_resync_to_restart(ptr nocapture writeonly %cinfo, i32 %desired, ptr nocapture readonly %0, i1 %cond) local_unnamed_addr #0 {
entry:
  %unread_marker46 = getelementptr i8, ptr %0, i64 540
  %cond.fr = freeze i1 %cond
  br i1 %cond.fr, label %lor.lhs.false12.outer.us, label %lor.lhs.false12.outer.split

do.body28.i:                                      ; preds = %sw.bb43.us, %do.body28.i
  br label %do.body28.i

lor.lhs.false12.outer.us:                         ; preds = %entry, %next_marker.exit.us
  %.ph.us = phi i32 [ %2, %next_marker.exit.us ], [ 1, %entry ]
  %cmp16.us = icmp eq i32 %.ph.us, 0
  br i1 %cmp16.us, label %sw.bb43.us, label %lor.lhs.false12.outer.split.us2

sw.bb43.us:                                       ; preds = %lor.lhs.false12.outer.us, %lor.lhs.false12.outer.split.us2
  %1 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %call.i.us = tail call i32 %1(ptr null)
  %tobool.not.i.us = icmp eq i32 %call.i.us, 0
  br i1 %tobool.not.i.us, label %next_marker.exit.us, label %do.body28.i

next_marker.exit.us:                              ; preds = %sw.bb43.us
  %2 = load i32, ptr %unread_marker46, align 4
  br label %lor.lhs.false12.outer.us

lor.lhs.false12.outer.split.us2:                  ; preds = %lor.lhs.false12.outer.us
  store i32 0, ptr %cinfo, align 4
  br label %sw.bb43.us

lor.lhs.false12.outer.split:                      ; preds = %entry
  store i32 0, ptr %cinfo, align 4
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false12, %lor.lhs.false12.outer.split
  br label %lor.lhs.false12
}

define noundef i32 @next_marker() local_unnamed_addr {
entry:
  %0 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %call = tail call i32 %0(ptr null)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %do.body28

cleanup:                                          ; preds = %entry
  ret i32 0

do.body28:                                        ; preds = %entry, %do.body28
  br label %do.body28
}

attributes #0 = { noreturn }
