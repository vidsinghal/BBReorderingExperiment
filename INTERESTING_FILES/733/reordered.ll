; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//733/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @OCSP_sendreq_new(ptr readnone %req, i1 %cmp) local_unnamed_addr #0 {
entry:
  %call1 = load volatile ptr, ptr null, align 4294967296
  %cmp8.not = icmp eq ptr %req, null
  %or.cond = or i1 %cmp8.not, %cmp
  br i1 %or.cond, label %cleanup, label %land.lhs.true

cleanup:                                          ; preds = %land.lhs.true, %entry
  ret ptr null

land.lhs.true:                                    ; preds = %entry
  %call9 = load volatile ptr, ptr null, align 4294967296
  br label %cleanup
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
