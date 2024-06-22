; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//226/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_caxpyf_zen_int_4(i1 %call1) local_unnamed_addr {
entry:
  br i1 %call1, label %common.ret, label %lor.lhs.false

common.ret:                                       ; preds = %lor.lhs.false, %entry
  ret void

lor.lhs.false:                                    ; preds = %entry
  %call11 = load volatile ptr, ptr null, align 4294967296
  tail call void %call11(i32 0, i64 0, ptr null, ptr null, i64 0, ptr null, i64 0, ptr null)
  br label %common.ret
}
