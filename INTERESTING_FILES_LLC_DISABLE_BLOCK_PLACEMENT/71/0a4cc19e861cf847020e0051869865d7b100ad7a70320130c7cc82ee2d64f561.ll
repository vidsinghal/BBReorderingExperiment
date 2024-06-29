; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8(i64 %n, ptr %output) {
entry:
  %and52 = and i64 %n, 1
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %entry
  store <2 x i64> zeroinitializer, ptr %output, align 16
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %entry
  ret void
}
