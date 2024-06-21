; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//211/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define void @BLAS_stbsv_testgen(ptr nocapture writeonly %T, i1 %cmp18) local_unnamed_addr #0 {
entry:
  br i1 %cmp18, label %if.then20, label %for.cond.preheader

if.then20:                                        ; preds = %entry
  %call21 = load volatile double, ptr null, align 4294967296
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then20
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr float, ptr %T, i64 %indvars.iv
  store float 0.000000e+00, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond
}

attributes #0 = { nofree norecurse noreturn nounwind }
