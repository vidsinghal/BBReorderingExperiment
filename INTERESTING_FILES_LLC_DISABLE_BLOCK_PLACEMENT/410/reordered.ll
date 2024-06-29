; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//410/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i32 0, 2) i32 @GetZFPType(i32 %Type) local_unnamed_addr #0 {
entry:
  switch i32 %Type, label %common.ret [
    i32 3, label %return
    i32 7, label %return
    i32 0, label %if.then5
  ]

common.ret:                                       ; preds = %return, %if.then5, %entry
  %common.ret.op = phi i32 [ 0, %entry ], [ 1, %if.then5 ], [ 1, %return ]
  ret i32 %common.ret.op

if.then5:                                         ; preds = %entry
  br label %common.ret

return:                                           ; preds = %entry, %entry
  br label %common.ret
}

define noalias noundef ptr @GetZFPField(i32 %Type) local_unnamed_addr {
entry:
  switch i32 %Type, label %GetZFPType.exit [
    i32 3, label %return.i
    i32 7, label %return.i
    i32 0, label %if.then5.i
  ]

return.i:                                         ; preds = %entry, %entry
  br label %GetZFPType.exit

if.then5.i:                                       ; preds = %entry
  br label %GetZFPType.exit

GetZFPType.exit:                                  ; preds = %entry, %if.then5.i, %return.i
  %common.ret.op.i = phi i32 [ 0, %entry ], [ 1, %if.then5.i ], [ 1, %return.i ]
  %call1 = tail call ptr @zfp_field_1d(i32 %common.ret.op.i)
  ret ptr null
}

declare ptr @zfp_field_1d(i32) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
