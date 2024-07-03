; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//747/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i64 @hypre_BoomerAMG_GMExpandInterp(i64 %num_smooth_vecs, ptr nocapture writeonly %diag) local_unnamed_addr #0 {
entry:
  %cmp216.peel = icmp sgt i64 %num_smooth_vecs, 0
  %cond = icmp eq i64 %num_smooth_vecs, 1
  br label %for.cond178

for.cond215:                                      ; preds = %for.cond178, %for.cond215
  br i1 %cond, label %for.cond245, label %for.cond215

for.cond245:                                      ; preds = %for.cond215, %for.cond178
  store i64 0, ptr %diag, align 8
  br label %for.cond178

for.cond178:                                      ; preds = %for.cond245, %entry
  store volatile i32 0, ptr null, align 4294967296
  br i1 %cmp216.peel, label %for.cond215, label %for.cond245
}

attributes #0 = { nofree norecurse noreturn nounwind }
