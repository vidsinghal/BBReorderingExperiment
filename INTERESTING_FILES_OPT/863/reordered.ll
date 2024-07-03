; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//863/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @vtkexodusII_ex_get_concat_side_set_node_count(ptr nocapture readonly %side_set_node_cnt_list, i1 %cmp133) local_unnamed_addr {
entry:
  br i1 %cmp133, label %for.body135.lr.ph.split.us, label %cleanup303

for.cond132.loopexit.us:                          ; preds = %for.body236.us, %for.cond232.preheader.us
  %call151.us = tail call i32 @vtkexodusII_ex_get_set_param()
  %cmp157.not.us = icmp eq i32 %call151.us, 0
  br i1 %cmp157.not.us, label %for.cond232.preheader.us, label %cleanup303

cleanup303:                                       ; preds = %for.cond132.loopexit.us, %for.body135.lr.ph.split.us, %entry
  ret i32 0

for.cond232.preheader.us:                         ; preds = %for.body135.lr.ph.split.us, %for.cond132.loopexit.us
  %0 = load i64, ptr %side_set_node_cnt_list, align 8
  %cmp2341.us = icmp sgt i64 %0, 0
  br i1 %cmp2341.us, label %for.body236.us, label %for.cond132.loopexit.us

for.body236.us:                                   ; preds = %for.cond232.preheader.us, %for.body236.us
  %call237.us = tail call i32 @vtkexodusII_ex_int64_status()
  %1 = load i64, ptr %side_set_node_cnt_list, align 8
  %cmp234.us = icmp sgt i64 %1, 0
  br i1 %cmp234.us, label %for.body236.us, label %for.cond132.loopexit.us

for.body135.lr.ph.split.us:                       ; preds = %entry
  %call151.us2 = tail call i32 @vtkexodusII_ex_get_set_param()
  %cmp157.not.us3 = icmp eq i32 %call151.us2, 0
  br i1 %cmp157.not.us3, label %for.cond232.preheader.us, label %cleanup303
}

declare i32 @vtkexodusII_ex_int64_status() local_unnamed_addr

declare i32 @vtkexodusII_ex_get_set_param() local_unnamed_addr
