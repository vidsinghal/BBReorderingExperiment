; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//324/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @H5F__efc_create(ptr nocapture readonly %H5F_init_g) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %H5F_init_g, align 1, !range !0, !noundef !1
  %tobool73 = trunc nuw i8 %0 to i1
  br i1 %tobool73, label %if.then77, label %common.ret

common.ret:                                       ; preds = %if.then77, %entry
  ret ptr null

if.then77:                                        ; preds = %entry
  %call83 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

!0 = !{i8 0, i8 2}
!1 = !{}
