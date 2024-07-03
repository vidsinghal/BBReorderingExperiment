; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre__global_error = external global i64

define i64 @hypre_BoomerAMG_GMExpandInterp(i64 %num_smooth_vecs, ptr %diag) {
entry:
  br label %for.cond178

for.cond178:                                      ; preds = %for.cond245, %entry
  store volatile i32 0, ptr null, align 4
  br label %for.cond215

for.cond215:                                      ; preds = %for.cond215, %for.cond178
  %j.0 = phi i64 [ 0, %for.cond178 ], [ 1, %for.cond215 ]
  %cmp216 = icmp slt i64 %j.0, %num_smooth_vecs
  br i1 %cmp216, label %for.cond215, label %for.cond225

for.cond225:                                      ; preds = %for.cond225, %for.cond215
  %j.1 = phi i64 [ 0, %for.cond215 ], [ 1, %for.cond225 ]
  %cmp226 = icmp slt i64 %j.1, %num_smooth_vecs
  br i1 %cmp226, label %for.cond225, label %for.cond245

for.cond245:                                      ; preds = %for.cond225
  store i64 0, ptr %diag, align 8
  br label %for.cond178
}
