; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//475/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_gemm_md(i1 %call) local_unnamed_addr {
entry:
  %call1 = tail call i1 @bli_obj_is_real()
  %call7 = tail call i1 @bli_obj_is_real()
  %brmerge = select i1 %call7, i1 %call, i1 false
  br i1 %brmerge, label %common.ret, label %land.lhs.true12

common.ret:                                       ; preds = %land.lhs.true12, %entry
  ret void

land.lhs.true12:                                  ; preds = %entry
  %call14 = load volatile i64, ptr null, align 4294967296
  br label %common.ret
}

declare zeroext i1 @bli_obj_is_real() local_unnamed_addr
