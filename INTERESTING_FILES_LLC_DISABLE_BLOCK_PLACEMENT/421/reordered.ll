; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//421/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define void @bli_sgemmtrsmbb_l_zen2_ref() local_unnamed_addr #0 {
entry:
  %call2 = load volatile i64, ptr null, align 4294967296
  %call13 = load volatile i64, ptr null, align 4294967296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @bli_sbcastbbs_mxn(i64 %m, ptr nocapture writeonly %y, i1 %cmp2) local_unnamed_addr #1 {
entry:
  %cmp = icmp sgt i64 %m, 0
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %for.body4, label %common.ret

for.body4:                                        ; preds = %entry
  store float 0.000000e+00, ptr %y, align 4
  br label %common.ret

common.ret:                                       ; preds = %for.body4, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
