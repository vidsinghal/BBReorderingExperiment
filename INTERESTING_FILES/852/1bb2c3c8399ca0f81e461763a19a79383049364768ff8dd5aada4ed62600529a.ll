; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__sse2_ld128(i64 %a_offset) {
entry:
  br label %do.body25

do.body25:                                        ; preds = %do.body74, %entry
  %a.addr.0 = phi ptr [ null, %entry ], [ %add.ptr73, %do.body74 ]
  %add.ptr73 = getelementptr i8, ptr %a.addr.0, i64 32
  br label %do.body74

do.body74:                                        ; preds = %do.body74, %do.body25
  %k.0 = phi i64 [ %a_offset, %do.body25 ], [ 0, %do.body74 ]
  %call75 = load volatile <2 x i64>, ptr %a.addr.0, align 16
  %cmp146.not = icmp eq i64 %k.0, 0
  br i1 %cmp146.not, label %do.body25, label %do.body74
}
