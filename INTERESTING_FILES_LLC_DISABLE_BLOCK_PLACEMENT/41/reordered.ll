; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//41/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @PyInit_vectorized() local_unnamed_addr #0 {
entry:
  %call = load volatile ptr, ptr null, align 4294967296
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps(i64 %0) local_unnamed_addr #0 {
entry:
  %call = load volatile i64, ptr null, align 4294967296
  switch i64 %0, label %common.ret1 [
    i64 0, label %sw.bb12
    i64 1, label %sw.bb24
  ]

common.ret1:                                      ; preds = %sw.bb24, %entry
  ret ptr null

sw.bb12:                                          ; preds = %entry
  %call13 = load volatile ptr, ptr null, align 4294967296
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb12, %entry
  %call26 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret1
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
