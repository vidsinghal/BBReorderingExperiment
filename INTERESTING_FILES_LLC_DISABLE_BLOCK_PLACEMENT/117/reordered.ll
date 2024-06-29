; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//117/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @main(ptr nocapture readonly %retval11) local_unnamed_addr #0 {
entry:
  %retval11.val = load i32, ptr %retval11, align 4
  %cmp5.i = icmp slt i32 %retval11.val, 0
  br i1 %cmp5.i, label %if.then6.i, label %check_retval.exit

check_retval.exit:                                ; preds = %entry, %if.then6.i
  ret i32 0

if.then6.i:                                       ; preds = %entry
  %call7.i = load volatile i32, ptr null, align 4294967296
  br label %check_retval.exit
}

define noundef i32 @ressc(ptr nocapture %user_data, ptr nocapture %0) local_unnamed_addr {
entry:
  %call61 = tail call ptr @N_VGetArrayPointer()
  %1 = load double, ptr %0, align 8
  %2 = load double, ptr %user_data, align 8
  store double 0.000000e+00, ptr %0, align 8
  %3 = load double, ptr %user_data, align 8
  %sub26 = fsub double %3, %1
  %add = fadd double %2, %sub26
  %arrayidx27 = getelementptr i8, ptr %call61, i64 8
  store double %add, ptr %arrayidx27, align 8
  store double 0.000000e+00, ptr %call61, align 8
  store double 0.000000e+00, ptr %user_data, align 8
  ret i32 0
}

declare ptr @N_VGetArrayPointer() local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
