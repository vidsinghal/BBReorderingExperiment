; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gdcmjpeg16_jpeg_resync_to_restart(ptr %cinfo, i32 %desired, ptr %0, i1 %cond) {
entry:
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %sw.bb43, %if.end31, %entry
  %1 = phi i32 [ %2, %sw.bb43 ], [ %1, %if.end31 ], [ 1, %entry ]
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %if.end31, label %if.else18

if.else18:                                        ; preds = %lor.lhs.false12
  store i32 0, ptr %cinfo, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else18, %lor.lhs.false12
  br i1 %cond, label %sw.bb43, label %lor.lhs.false12

sw.bb43:                                          ; preds = %if.end31
  %call = call i32 @next_marker()
  %unread_marker46 = getelementptr i8, ptr %0, i64 540
  %2 = load i32, ptr %unread_marker46, align 4
  br label %lor.lhs.false12
}

define i32 @next_marker() {
entry:
  %0 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %call = call i32 %0(ptr null)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %do.body28

do.body28:                                        ; preds = %do.body28, %entry
  br label %do.body28

cleanup:                                          ; preds = %entry
  ret i32 0
}
