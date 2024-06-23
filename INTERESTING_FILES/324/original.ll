; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//324/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noalias noundef ptr @H5F__efc_create(ptr nocapture readonly %H5F_init_g) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %H5F_init_g, align 1, !range !0, !noundef !1
  %tobool73 = trunc nuw i8 %0 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %entry
  ret ptr null

if.then77:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  unreachable
}

attributes #0 = { nofree norecurse nounwind }

!0 = !{i8 0, i8 2}
!1 = !{}
