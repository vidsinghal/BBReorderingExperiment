; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//213/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define noundef i32 @hypre_dorg2r(ptr nocapture writeonly %k, ptr nocapture writeonly %a, ptr nocapture readnone %lda, ptr nocapture readnone %tau, ptr nocapture readnone %info, i1 %cmp12, ptr nocapture writeonly %hypre_dorg2r.i__) local_unnamed_addr #0 {
entry:
  br i1 %cmp12, label %if.then13, label %for.cond83.preheader

for.cond83.preheader:                             ; preds = %entry, %if.then13
  br label %for.cond83

if.then13:                                        ; preds = %entry
  store i32 0, ptr %a, align 4
  br label %for.cond83.preheader

for.cond83:                                       ; preds = %for.cond83.preheader, %for.cond83
  store double 0.000000e+00, ptr %k, align 8
  store i32 0, ptr %hypre_dorg2r.i__, align 4
  br label %for.cond83
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
