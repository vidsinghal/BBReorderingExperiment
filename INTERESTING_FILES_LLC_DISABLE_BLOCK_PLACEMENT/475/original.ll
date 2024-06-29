; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//475/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_gemm_md(ptr %a, ptr %b, ptr %beta, ptr %c, ptr %cntx_local, i1 %call.not) local_unnamed_addr {
entry:
  %call = tail call i1 @bli_obj_is_real(ptr null)
  %call3 = load volatile i1, ptr %b, align 1
  %call7 = tail call zeroext i1 @bli_obj_is_real(ptr null)
  %not.call7 = xor i1 %call7, true
  %brmerge = select i1 %not.call7, i1 %call.not, i1 false
  br i1 %brmerge, label %common.ret, label %land.lhs.true12

common.ret:                                       ; preds = %land.lhs.true12, %entry
  ret void

land.lhs.true12:                                  ; preds = %entry
  %call14 = tail call i64 @bli_gemm_md_rrr(ptr %a, ptr null, ptr %beta, ptr %c, ptr %cntx_local)
  br label %common.ret
}

declare i1 @bli_obj_is_real(ptr) local_unnamed_addr

declare i64 @bli_gemm_md_rrr(ptr, ptr, ptr, ptr, ptr) local_unnamed_addr
