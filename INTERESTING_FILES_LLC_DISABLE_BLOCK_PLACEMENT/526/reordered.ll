; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//526/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define range(i32 0, 2) i32 @FLA_Lyap_h_opt_var2(i32 %call1) local_unnamed_addr #0 {
entry:
  switch i32 %call1, label %sw.epilog [
    i32 100, label %sw.bb
    i32 1, label %common.ret
  ]

common.ret:                                       ; preds = %sw.epilog, %entry
  %common.ret.op = phi i32 [ 1, %sw.epilog ], [ 0, %entry ]
  ret i32 %common.ret.op

sw.bb:                                            ; preds = %entry
  %call94 = load volatile i32, ptr null, align 4294967296
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn "tune-cpu"="znver2" }
