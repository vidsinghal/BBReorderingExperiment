; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Bidiag_UT_u_step_ofs_var3(i32 %m_A, i32 %n_A, ptr %buff_A, i32 %rs_A, i32 %cs_A, ptr %buff_T, ptr %0) {
entry:
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %1, align 8
  %conv = sext i32 %m_A to i64
  %mul35 = shl i64 %conv, 1
  %call = call ptr @FLA_malloc(i64 1)
  %conv36 = sext i32 %n_A to i64
  %mul37 = shl i64 %conv36, 1
  %call38 = call ptr @FLA_malloc(i64 1)
  %call41 = call ptr @FLA_malloc(i64 1)
  %call44 = call ptr @FLA_malloc(i64 1)
  %call47 = call ptr @FLA_malloc(i64 %mul37)
  %call50 = call ptr @FLA_malloc(i64 1)
  %call53 = call ptr @FLA_malloc(i64 %mul35)
  %idx.ext78 = sext i32 %rs_A to i64
  %add.ptr79 = getelementptr float, ptr %buff_A, i64 %idx.ext78
  %call205 = call i32 @FLA_Househ2_UT_l_ops(ptr null, ptr %add.ptr79)
  call void @bl1_scopyv()
  %cmp206 = icmp sgt i32 %m_A, 1
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %entry
  call void @bl1_scopyv()
  call void @bl1_saxpyv(i32 0, ptr null, ptr null, i32 %cs_A)
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %entry
  %idx.ext89 = sext i32 %cs_A to i64
  %add.ptr90 = getelementptr float, ptr %buff_A, i64 %idx.ext89
  %add.ptr = getelementptr i8, ptr %2, i64 8
  %call219 = call i32 @FLA_Fused_Ahx_Axpy_Ax_ops_var1(i32 0, ptr null, i32 0, i32 0)
  call void @bl1_saxpyv(i32 0, ptr %add.ptr, ptr %add.ptr90, i32 %cs_A)
  ret i32 0
}

declare ptr @FLA_malloc(i64)

declare void @bl1_saxpyv(i32, ptr, ptr, i32)

declare i32 @FLA_Househ2_UT_l_ops(ptr, ptr)

declare void @bl1_scopyv()

declare i32 @FLA_Fused_Ahx_Axpy_Ax_ops_var1(i32, ptr, i32, i32)
