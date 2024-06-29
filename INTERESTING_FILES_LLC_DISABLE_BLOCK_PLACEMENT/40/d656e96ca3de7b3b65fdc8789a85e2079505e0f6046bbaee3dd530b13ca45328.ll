; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Tridiag_UT_l_step_ops_var2(ptr %0, i1 %cmp36) {
entry:
  %minus_zeta1111 = alloca [0 x [0 x float]], i32 0, align 4
  %minus_upsilon11 = alloca float, align 4
  br i1 %cmp36, label %cond.true37, label %cond.end48

cond.true37:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true37, %entry
  %cond49 = phi ptr [ %1, %cond.true37 ], [ null, %entry ]
  %call = call ptr @FLA_malloc()
  %2 = load float, ptr %cond49, align 4
  store float %2, ptr %minus_upsilon11, align 4
  store float 0.000000e+00, ptr %minus_zeta1111, align 4
  call void @bl1_saxpyv(ptr %minus_upsilon11)
  call void @bl1_saxpyv(ptr %minus_zeta1111)
  ret i32 0
}

declare ptr @FLA_malloc()

declare void @bl1_saxpyv(ptr)
