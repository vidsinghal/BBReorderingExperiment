; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic(i64 %channels) {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body291, %entry
  %i0.0 = phi i64 [ 0, %entry ], [ 1, %do.body291 ]
  %0 = inttoptr i64 %i0.0 to ptr
  %1 = inttoptr i64 %channels to ptr
  br label %do.body291

do.body291:                                       ; preds = %do.body291, %do.body
  %c.1 = phi i64 [ 0, %do.body ], [ %dec, %do.body291 ]
  %2 = load i8, ptr %0, align 1
  %3 = load i8, ptr %1, align 1
  %4 = or i8 %2, %3
  %conv491 = uitofp i8 %4 to float
  %call = call i32 @fp32_to_bits(float %conv491)
  %dec = add i64 %c.1, 1
  %cmp499.not = icmp eq i64 %dec, 0
  br i1 %cmp499.not, label %do.body, label %do.body291
}

declare i32 @fp32_to_bits(float)
