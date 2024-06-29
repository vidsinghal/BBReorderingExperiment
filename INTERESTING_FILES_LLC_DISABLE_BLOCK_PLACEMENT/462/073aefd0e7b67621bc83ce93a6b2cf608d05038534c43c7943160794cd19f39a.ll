; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64(i64 %call, i64 %sub, i1 %cmp33.not, i1 %cmp49) {
entry:
  br label %do.body2

do.body2:                                         ; preds = %if.then51, %if.then35, %while.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %do.body2
  %k.03 = phi i64 [ %call, %do.body2 ], [ %sub, %while.cond ]
  %cmp5 = icmp ugt i64 %k.03, 1
  br i1 %cmp5, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  br i1 %cmp33.not, label %do.body2, label %if.then35

if.then35:                                        ; preds = %while.end
  %call39 = load volatile <2 x i64>, ptr null, align 16
  br i1 %cmp49, label %if.then51, label %do.body2

if.then51:                                        ; preds = %if.then35
  %call53 = load volatile <2 x i64>, ptr null, align 16
  br label %do.body2
}
