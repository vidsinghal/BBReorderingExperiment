; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//329/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @main(ptr nocapture readonly %0, ptr nocapture writeonly %1) local_unnamed_addr {
entry:
  %call121 = tail call ptr @N_VNew_Serial()
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  %call252 = load volatile ptr, ptr null, align 4294967296
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 8
  store double 0.000000e+00, ptr %7, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  store double 0.000000e+00, ptr %9, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @ProcessArgs(ptr nocapture writeonly %sensi, i1 %cmp2) local_unnamed_addr #0 {
entry:
  br i1 %cmp2, label %if.then3, label %if.end43

if.end43:                                         ; preds = %if.then3, %entry
  ret void

if.then3:                                         ; preds = %entry
  store i32 0, ptr %sensi, align 4
  br label %if.end43
}

declare ptr @N_VNew_Serial() local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
