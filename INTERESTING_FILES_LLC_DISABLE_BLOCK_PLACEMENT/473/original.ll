; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//473/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i64 @umfpack_zl_get_lunz(ptr writeonly %unz, ptr nocapture writeonly %n_row, i1 %tobool4) local_unnamed_addr #0 {
entry:
  %tobool2 = icmp ne ptr %unz, null
  %or.cond = and i1 %tobool2, %tobool4
  br i1 %or.cond, label %lor.lhs.false5, label %common.ret

common.ret:                                       ; preds = %lor.lhs.false5, %entry
  ret i64 0

lor.lhs.false5:                                   ; preds = %entry
  store i64 0, ptr %n_row, align 8
  store i64 0, ptr %unz, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
