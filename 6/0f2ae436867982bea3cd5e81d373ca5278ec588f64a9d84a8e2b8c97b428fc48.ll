; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32(ptr %output, i1 %0) {
entry:
  br label %do.body

do.body:                                          ; preds = %if.then152, %do.body, %entry
  %n.addr.0 = phi i1 [ %0, %entry ], [ true, %if.then152 ], [ true, %do.body ]
  %call113 = call <2 x i64> @_mm_add_epi32(<2 x i64> zeroinitializer)
  br i1 %n.addr.0, label %do.body, label %if.then152

if.then152:                                       ; preds = %do.body
  store i8 0, ptr %output, align 1
  br label %do.body
}

declare <2 x i64> @_mm_add_epi32(<2 x i64>)
