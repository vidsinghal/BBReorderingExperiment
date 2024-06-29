; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//253/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define noundef i32 @FLA_Sylv_nn_blk_var6(ptr nocapture readonly %isgn, i1 %cmp.not) local_unnamed_addr {
entry:
  br i1 %cmp.not, label %common.ret, label %while.body

common.ret:                                       ; preds = %while.body, %entry
  ret i32 0

while.body:                                       ; preds = %entry
  %call9 = tail call i32 @FLA_Sylv_internal(ptr null, ptr null, ptr null)
  %call11 = tail call i32 @FLA_Sylv_internal(ptr null, ptr null, ptr null)
  %0 = load ptr, ptr %isgn, align 8
  %call14 = load volatile i32, ptr %0, align 4
  %call15 = tail call i32 @FLA_Sylv_internal(ptr null, ptr null, ptr null)
  br label %common.ret
}

declare i32 @FLA_Sylv_internal(ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view)) local_unnamed_addr
