; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//496/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define noundef i32 @FLA_LQ_UT_blk_var2(i1 %cmp.not) local_unnamed_addr {
entry:
  br i1 %cmp.not, label %common.ret, label %while.body

common.ret:                                       ; preds = %while.body, %entry
  ret i32 0

while.body:                                       ; preds = %entry
  %call4 = tail call i32 @FLA_Repart_2x2_to_3x3(ptr null, ptr null, ptr null)
  %call5 = tail call i32 @FLA_Repart_2x2_to_3x3(ptr null, ptr null, ptr null)
  br label %common.ret
}

declare i32 @FLA_Repart_2x2_to_3x3(ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view)) local_unnamed_addr
