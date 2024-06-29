; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//130/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bl1_cinvert2s(ptr nocapture %alpha, ptr nocapture writeonly %beta, float %0) local_unnamed_addr {
entry:
  %cmp = fcmp ugt float %0, 0.000000e+00
  %fneg = fneg float %0
  %cond = select i1 %cmp, float %0, float %fneg
  %cmp14 = fcmp ogt float %cond, 0.000000e+00
  br i1 %cmp14, label %cond.true16, label %cond.true33

cond.true33:                                      ; preds = %entry
  %1 = load float, ptr %alpha, align 4
  %fneg35 = fneg float %1
  br label %cond.end40

cond.true16:                                      ; preds = %entry
  %. = select i1 %cmp, float 0.000000e+00, float 1.000000e+00
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true33, %cond.true16
  %cond41 = phi float [ %fneg35, %cond.true33 ], [ %., %cond.true16 ]
  store float 0.000000e+00, ptr %beta, align 4
  %fneg50 = fdiv float -0.000000e+00, %cond41
  %imag52 = getelementptr i8, ptr %beta, i64 4
  store float %fneg50, ptr %imag52, align 4
  %call = tail call i32 @bl1_is_conj()
  %2 = load float, ptr %alpha, align 4
  %mul = fneg float %2
  store float %mul, ptr %alpha, align 4
  ret void
}

declare i32 @bl1_is_conj() local_unnamed_addr

define void @bl1_zinvert2s(ptr nocapture %alpha, ptr nocapture writeonly %beta, double %0) local_unnamed_addr {
entry:
  %div = fmul double %0, -0.000000e+00
  store double %div, ptr %beta, align 8
  %imag44 = getelementptr i8, ptr %beta, i64 8
  store double 0.000000e+00, ptr %imag44, align 8
  %call = tail call i32 @bl1_is_conj()
  %1 = load double, ptr %alpha, align 8
  %mul = fneg double %1
  store double %mul, ptr %alpha, align 8
  ret void
}
