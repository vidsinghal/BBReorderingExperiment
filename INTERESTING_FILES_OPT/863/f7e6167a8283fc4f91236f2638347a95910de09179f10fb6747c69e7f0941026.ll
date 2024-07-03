; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @vtkexodusII_ex_get_concat_side_set_node_count(ptr %side_set_node_cnt_list, i1 %cmp133) {
entry:
  br label %for.cond132

for.cond132:                                      ; preds = %for.cond232, %entry
  br i1 %cmp133, label %for.body135, label %cleanup303

for.body135:                                      ; preds = %for.cond132
  %call151 = call i32 @vtkexodusII_ex_get_set_param()
  %cmp157.not = icmp eq i32 %call151, 0
  br i1 %cmp157.not, label %for.cond232, label %cleanup303

for.cond232:                                      ; preds = %for.body236, %for.body135
  %0 = load i64, ptr %side_set_node_cnt_list, align 8
  %cmp234 = icmp sgt i64 %0, 0
  br i1 %cmp234, label %for.body236, label %for.cond132

for.body236:                                      ; preds = %for.cond232
  %call237 = call i32 @vtkexodusII_ex_int64_status()
  br label %for.cond232

cleanup303:                                       ; preds = %for.body135, %for.cond132
  ret i32 0
}

declare i64 @vtkexodusII_ex_inquire_int()

declare i32 @vtkexodusII_ex_int64_status()

declare i32 @vtkexodusII_ex_get_set_param()
