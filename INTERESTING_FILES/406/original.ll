; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//406/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @hypre_BoomerAMGSmoothInterpVectors(i32 %num_smooth_vecs, i32 %smooth_steps) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %num_smooth_vecs, 0
  %tobool.not = icmp eq i32 %smooth_steps, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %common.ret, label %if.then1

common.ret:                                       ; preds = %if.then1, %entry
  ret i32 0

if.then1:                                         ; preds = %entry
  %call = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
