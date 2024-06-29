; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//545/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcomplex = type { double, double }

define noundef i32 @FLA_LQ_UT_opz_var2(i32 %n_A, ptr nocapture readonly %buff_A, i32 %rs_A, ptr nocapture readonly %0, i1 %cmp, i64 %1, i64 %mul) local_unnamed_addr #0 {
entry:
  %2 = load ptr, ptr %buff_A, align 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %buffer = getelementptr i8, ptr %2, i64 88
  br label %cond.end

cond.false:                                       ; preds = %entry
  %add.ptr2 = getelementptr %struct.dcomplex, ptr %2, i64 %mul
  %3 = load i64, ptr %0, align 8
  %add.ptr4 = getelementptr %struct.dcomplex, ptr %add.ptr2, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %buffer, %cond.true ], [ %add.ptr4, %cond.false ]
  tail call void @bl1_zgemv(ptr %cond)
  ret i32 0
}

declare void @bl1_zgemv(ptr) local_unnamed_addr

attributes #0 = { "tune-cpu"="znver2" }
