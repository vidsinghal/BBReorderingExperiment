; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_LU_piv_opd_var4(i32 %m_A, i32 %n_A, ptr %buff_A, i32 %rs_A, i32 %cs_A, ptr %0, ptr %1) #0 {
entry:
  %2 = load ptr, ptr %1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %cmp25 = icmp slt i32 %i.0, %m_A
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add i32 %i.0, 1
  %sub74 = sub i32 %n_A, %i.0
  %sub75 = or i32 %sub74, 1
  call void @bl1_ddots(i32 0)
  store i32 %i.0, ptr %2, align 4
  store volatile i32 0, ptr null, align 4
  store i32 %sub75, ptr %buff_A, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare void @bl1_ddots(i32)

attributes #0 = { "target-cpu"="x86-64" }
