; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @ZSTDMT_toFlushNow(i1 %cmp, i1 %tobool2.not) {
entry:
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call12 = load volatile i32, ptr null, align 4
  %spec.select = zext i1 %tobool2.not to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ %spec.select, %if.end ], [ 1, %entry ]
  ret i64 %retval.0
}
