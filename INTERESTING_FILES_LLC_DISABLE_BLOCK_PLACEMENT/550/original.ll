; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//550/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @vtklibproj_pj_calloc() local_unnamed_addr

define noalias noundef ptr @vtklibproj_pj_projection_specific_setup_ups(ptr nocapture %P, ptr nocapture writeonly %0) local_unnamed_addr {
entry:
  %call = tail call ptr @vtklibproj_pj_calloc()
  store double 0.000000e+00, ptr %0, align 8
  %k0 = getelementptr i8, ptr %P, i64 184
  store double 0.000000e+00, ptr %k0, align 8
  store double 0.000000e+00, ptr %P, align 8
  %opaque.i = getelementptr i8, ptr %P, i64 464
  %1 = load ptr, ptr %opaque.i, align 8
  %2 = load double, ptr inttoptr (i64 160 to ptr), align 32
  %cmp2.i = fcmp uge double %2, 0.000000e+00
  %cond.i = zext i1 %cmp2.i to i32
  store i32 %cond.i, ptr %P, align 8
  %3 = load double, ptr %1, align 8
  store double %3, ptr %opaque.i, align 8
  %4 = load double, ptr %P, align 8
  %tobool.i = fcmp une double %4, 0.000000e+00
  br i1 %tobool.i, label %if.then7.i, label %setup.exit

if.then7.i:                                       ; preds = %entry
  store ptr null, ptr %P, align 8
  br label %setup.exit

setup.exit:                                       ; preds = %entry, %if.then7.i
  ret ptr null
}
