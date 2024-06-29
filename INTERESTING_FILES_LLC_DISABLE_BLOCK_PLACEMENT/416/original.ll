; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//416/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64() local_unnamed_addr #0 {
entry:
  br label %do.body25

do.body25:                                        ; preds = %while.end, %entry
  %k.0 = phi i64 [ undef, %entry ], [ %k.1.lcssa, %while.end ]
  %cmp751 = icmp ugt i64 %k.0, 1
  br i1 %cmp751, label %while.body, label %while.end

while.body:                                       ; preds = %do.body25, %while.body
  %k.12 = phi i64 [ %sub, %while.body ], [ %k.0, %do.body25 ]
  %call149 = load volatile <2 x i64>, ptr null, align 4294967296
  %sub = add i64 %k.12, -8
  %cmp75 = icmp ugt i64 %sub, 1
  br i1 %cmp75, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %do.body25
  %k.1.lcssa = phi i64 [ %k.0, %do.body25 ], [ %sub, %while.body ]
  %call176 = tail call <2 x i64> @_mm_loadl_epi64(ptr null)
  br label %do.body25
}

declare <2 x i64> @_mm_loadl_epi64(ptr) local_unnamed_addr

attributes #0 = { noreturn }
