; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//287/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @main(i1 %tobool.not, ptr nocapture readonly %call8) local_unnamed_addr {
entry:
  br i1 %tobool.not, label %if.end, label %common.ret

if.end:                                           ; preds = %entry
  %call83 = tail call ptr @N_VNew_Serial()
  %0 = load ptr, ptr %call8, align 8
  %1 = load ptr, ptr %0, align 8
  store double 0.000000e+00, ptr %1, align 8
  %2 = load ptr, ptr %call8, align 8
  %3 = load ptr, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %call8, align 8
  %5 = load ptr, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %call8, align 8
  store double 0.000000e+00, ptr %6, align 8
  %7 = load ptr, ptr %call8, align 8
  %8 = load ptr, ptr %7, align 8
  store double 0.000000e+00, ptr %8, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0
}

declare ptr @N_VNew_Serial() local_unnamed_addr
