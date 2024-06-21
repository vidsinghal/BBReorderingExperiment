; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Tridiag_UT_l_step_ops_var2(i32 %m_A) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true, %for.cond, %entry
  %i.0 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 1, %for.cond ]
  call void @bl1_saxpyv(i32 0)
  %cmp150 = icmp eq i32 %i.0, %m_A
  br i1 %cmp150, label %land.lhs.true, label %for.cond

land.lhs.true:                                    ; preds = %for.cond
  store volatile i32 0, ptr null, align 4
  br label %for.cond
}

declare void @bl1_saxpyv(i32)
