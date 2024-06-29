; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//245/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define noundef i32 @FLA_LU_nopiv_blk_var2(ptr nocapture readonly %A, i64 %call1) local_unnamed_addr {
entry:
  %call = tail call i32 @FLA_Part_2x2()
  %call11 = load volatile i64, ptr null, align 4294967296
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %entry
  %call7 = tail call i32 @FLA_Repart_2x2_to_3x3()
  %0 = load ptr, ptr %A, align 8
  %call9 = tail call i32 @FLA_Gemm_internal(ptr null, ptr null, ptr null, ptr null, ptr %0)
  %1 = load ptr, ptr %A, align 8
  %call112 = tail call i32 @FLA_Gemm_internal(ptr null, ptr null, ptr null, ptr null, ptr %1)
  unreachable

while.end:                                        ; preds = %entry
  ret i32 0
}

declare i32 @FLA_Part_2x2() local_unnamed_addr

declare i32 @FLA_Repart_2x2_to_3x3() local_unnamed_addr

declare i32 @FLA_Gemm_internal(ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr) local_unnamed_addr
