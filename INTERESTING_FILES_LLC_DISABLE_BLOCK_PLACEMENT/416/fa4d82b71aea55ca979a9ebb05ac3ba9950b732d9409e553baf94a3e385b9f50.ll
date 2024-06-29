; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64() {
entry:
  br label %do.body25

do.body25:                                        ; preds = %while.end, %entry
  %k.0 = phi i64 [ undef, %entry ], [ %k.1, %while.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body25
  %k.1 = phi i64 [ %k.0, %do.body25 ], [ %sub, %while.body ]
  %cmp75 = icmp ugt i64 %k.1, 1
  br i1 %cmp75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call149 = load volatile <2 x i64>, ptr null, align 16
  %sub = add i64 %k.1, -8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call176 = call <2 x i64> @_mm_loadl_epi64(ptr null)
  br label %do.body25
}

declare <2 x i64> @_mm_loadl_epi64(ptr)
