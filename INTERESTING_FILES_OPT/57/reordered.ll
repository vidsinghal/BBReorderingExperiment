; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//57/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @vtkexodusII_ex_put_loadbal_param_cc(ptr nocapture writeonly %num_bor_nodes, i1 %cmp238, i1 %cmp384) local_unnamed_addr #0 {
entry:
  %cmp238.fr = freeze i1 %cmp238
  br i1 %cmp238.fr, label %entry.split.us, label %entry.split

if.end695:                                        ; preds = %if.end695, %entry.split
  br label %if.end695

for.cond651.us.us:                                ; preds = %entry.split.us
  %call65548.us.us = tail call i32 @vtkexodusII_ex_int64_status()
  br label %if.end695.us

entry.split.us:                                   ; preds = %entry
  %cmp384.fr = freeze i1 %cmp384
  br i1 %cmp384.fr, label %for.cond651.us.us, label %for.cond651.us

entry.split:                                      ; preds = %entry
  %call655481 = tail call i32 @vtkexodusII_ex_int64_status()
  store i32 0, ptr %num_bor_nodes, align 4
  br label %if.end695

if.end695.us:                                     ; preds = %if.end695.us, %for.cond651.us.us
  br label %if.end695.us

for.cond651.us:                                   ; preds = %entry.split.us, %for.cond651.us
  %call65548.us = tail call i32 @vtkexodusII_ex_int64_status()
  br label %for.cond651.us
}

declare i32 @vtkexodusII_ex_int64_status() local_unnamed_addr

attributes #0 = { noreturn }
