; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//501/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @endElement(i1 %tobool.not, i1 %tobool153.not, i1 %cmp161, i1 %cmp173, i1 %tobool209.not) local_unnamed_addr {
entry:
  br i1 %tobool.not, label %if.then, label %common.ret

if.then:                                          ; preds = %entry
  br i1 %tobool153.not, label %if.else157, label %if.then154

if.then154:                                       ; preds = %if.then
  %call156 = tail call ptr @gt_str_get()
  unreachable

if.else157:                                       ; preds = %if.then
  br i1 %cmp161, label %land.lhs.true163, label %if.else170

land.lhs.true163:                                 ; preds = %if.else157
  %call169 = tail call ptr @gt_str_get()
  unreachable

if.else170:                                       ; preds = %if.else157
  br i1 %cmp173, label %land.lhs.true175, label %if.else200

land.lhs.true175:                                 ; preds = %if.else170
  %call183 = tail call ptr @gt_str_get()
  unreachable

if.else200:                                       ; preds = %if.else170
  br i1 %tobool209.not, label %if.else232, label %common.ret

common.ret:                                       ; preds = %if.else200, %entry
  ret void

if.else232:                                       ; preds = %if.else200
  %call234 = load volatile ptr, ptr null, align 4294967296
  %call248 = tail call ptr @gt_str_get()
  unreachable
}

declare ptr @gt_str_get() local_unnamed_addr
