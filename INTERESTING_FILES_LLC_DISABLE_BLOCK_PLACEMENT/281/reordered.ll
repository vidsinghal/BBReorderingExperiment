; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//281/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic(i64 %channels) local_unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %channels to ptr
  br label %do.body

do.body291:                                       ; preds = %do.body291, %do.body
  %c.1 = phi i64 [ 0, %do.body ], [ %dec, %do.body291 ]
  %1 = load i8, ptr %4, align 1
  %2 = load i8, ptr %0, align 1
  %3 = or i8 %2, %1
  %conv491 = uitofp i8 %3 to float
  %call = tail call i32 @fp32_to_bits(float %conv491)
  %dec = add i64 %c.1, 1
  %cmp499.not = icmp eq i64 %dec, 0
  br i1 %cmp499.not, label %do.body, label %do.body291

do.body:                                          ; preds = %do.body291, %entry
  %i0.0 = phi i64 [ 0, %entry ], [ 1, %do.body291 ]
  %4 = inttoptr i64 %i0.0 to ptr
  br label %do.body291
}

declare i32 @fp32_to_bits(float) local_unnamed_addr

attributes #0 = { noreturn }
