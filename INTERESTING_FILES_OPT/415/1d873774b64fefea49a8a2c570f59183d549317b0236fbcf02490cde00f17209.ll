; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_cmsHandleExtraChannels(i32 %PixelsPerLine, i1 %cmp81, i1 %cmp84.not) {
entry:
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond108, %entry
  br label %for.cond80

for.cond80:                                       ; preds = %for.cond83, %for.cond52
  br i1 %cmp81, label %for.cond83, label %for.cond108

for.cond83:                                       ; preds = %for.body85, %for.cond80
  br i1 %cmp84.not, label %for.cond80, label %for.body85

for.body85:                                       ; preds = %for.cond83
  store volatile ptr null, ptr null, align 8
  br label %for.cond83

for.cond108:                                      ; preds = %for.cond108, %for.cond80
  %cmp109.not = icmp eq i32 %PixelsPerLine, 0
  br i1 %cmp109.not, label %for.cond52, label %for.cond108
}
