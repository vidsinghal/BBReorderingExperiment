; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @gk_gkmcoreCreate(ptr %call2, i1 %cmp3) {
entry:
  %cmp = icmp ne ptr %call2, null
  %brmerge.not = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %brmerge.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry
  ret ptr null
}
