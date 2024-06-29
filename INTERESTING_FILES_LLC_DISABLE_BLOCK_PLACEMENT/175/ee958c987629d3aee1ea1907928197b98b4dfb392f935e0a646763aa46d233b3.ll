; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @string_alloc(i64 %length) {
entry:
  %cmp = icmp eq i64 %length, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr inttoptr (i64 -16 to ptr), align 8
  %1 = load i64, ptr inttoptr (i64 8 to ptr), align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ undef, %entry ]
  ret ptr %retval.0
}

define ptr @string_ndup(ptr %a_str, i64 %len) {
entry:
  %call2 = call ptr @string_alloc(i64 %len)
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8 0, ptr %a_str, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret ptr %call2
}
