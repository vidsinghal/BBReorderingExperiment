; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre__global_error = external global i32

define i32 @hypre_BoomerAMGSmoothInterpVectors(i32 %num_smooth_vecs, i32 %smooth_steps) {
entry:
  %cmp = icmp eq i32 %num_smooth_vecs, 0
  %tobool.not = icmp eq i32 %smooth_steps, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then1

if.then1:                                         ; preds = %entry
  %call = call ptr @hypre_ParVectorInRangeOf()
  unreachable

cleanup:                                          ; preds = %entry
  %retval.0 = load i32, ptr @hypre__global_error, align 4
  ret i32 %retval.0
}

declare ptr @hypre_ParVectorInRangeOf()
