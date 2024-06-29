; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//40/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @FLA_Tridiag_UT_l_step_ops_var2(ptr nocapture readonly %0, i1 %cmp36) local_unnamed_addr {
entry:
  %minus_zeta11111 = alloca [0 x [0 x [0 x float]]], align 4
  %minus_upsilon11 = alloca float, align 4
  br i1 %cmp36, label %cond.true37, label %cond.end48

cond.true37:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true37, %entry
  %cond49 = phi ptr [ %1, %cond.true37 ], [ null, %entry ]
  %call = tail call ptr @FLA_malloc()
  %2 = load float, ptr %cond49, align 4
  store float %2, ptr %minus_upsilon11, align 4
  store float 0.000000e+00, ptr %minus_zeta11111, align 4
  call void @bl1_saxpyv(ptr nonnull %minus_upsilon11)
  call void @bl1_saxpyv(ptr nonnull %minus_zeta11111)
  ret i32 0
}

declare ptr @FLA_malloc() local_unnamed_addr

declare void @bl1_saxpyv(ptr) local_unnamed_addr
