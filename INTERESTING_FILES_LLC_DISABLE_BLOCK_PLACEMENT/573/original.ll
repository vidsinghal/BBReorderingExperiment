; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//573/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define noundef i32 @cholmod_l_realloc_multiple(i64 %nnew, i32 %nint, i32 %xtype, ptr nocapture writeonly %Iblock, ptr nocapture readnone %Jblock, ptr nocapture readnone %Xblock, ptr nocapture writeonly %Zblock, i1 %cmp11) local_unnamed_addr #0 {
entry:
  br i1 %cmp11, label %common.ret, label %sw.epilog

common.ret.sink.split:                            ; preds = %sw.epilog, %sw.bb70, %sw.bb73
  %Iblock.sink = phi ptr [ %Iblock, %sw.bb73 ], [ %Iblock, %sw.bb70 ], [ %Zblock, %sw.epilog ]
  store double 0.000000e+00, ptr %Iblock.sink, align 8
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %sw.epilog, %entry
  ret i32 0

sw.epilog:                                        ; preds = %entry
  switch i32 %nint, label %common.ret [
    i32 1, label %common.ret.sink.split
    i32 2, label %sw.bb70
    i32 0, label %sw.bb73
  ]

sw.bb70:                                          ; preds = %sw.epilog
  br label %common.ret.sink.split

sw.bb73:                                          ; preds = %sw.epilog
  br label %common.ret.sink.split
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
