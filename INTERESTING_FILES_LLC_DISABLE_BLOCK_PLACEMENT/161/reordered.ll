; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//161/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define void @start_pass_dpost(i32 %pass_mode, ptr nocapture writeonly %0) local_unnamed_addr #0 {
entry:
  switch i32 %pass_mode, label %sw.bb [
    i32 1, label %common.ret
    i32 0, label %common.ret.sink.split
  ]

common.ret:                                       ; preds = %common.ret.sink.split, %entry
  ret void

common.ret.sink.split:                            ; preds = %entry, %sw.bb
  %.sink = phi ptr [ %post_process_data, %sw.bb ], [ inttoptr (i64 8 to ptr), %entry ]
  store ptr null, ptr %.sink, align 8
  br label %common.ret

sw.bb:                                            ; preds = %entry
  %post_process_data = getelementptr i8, ptr %0, i64 8
  br label %common.ret.sink.split
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
