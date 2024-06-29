; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128(ptr %0, i64 %sub) {
entry:
  br label %do.body

do.body:                                          ; preds = %do.end, %entry
  %c1.0 = phi ptr [ null, %entry ], [ %0, %do.end ]
  br label %do.body4

do.body4:                                         ; preds = %do.body4, %do.body
  %k.0 = phi i64 [ 1, %do.body ], [ %sub, %do.body4 ]
  %cmp46.not = icmp eq i64 %k.0, 0
  br i1 %cmp46.not, label %do.end, label %do.body4

do.end:                                           ; preds = %do.body4
  store i32 0, ptr %c1.0, align 4
  br label %do.body
}
