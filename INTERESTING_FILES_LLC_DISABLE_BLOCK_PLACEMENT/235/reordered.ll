; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//235/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @inflateBackInit_(ptr readonly %strm, i32 %stream_size) local_unnamed_addr {
entry:
  %cmp = icmp ne ptr %strm, null
  %cmp5.not = icmp eq i32 %stream_size, 0
  %or.cond = and i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end, label %common.ret

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm, align 8
  %call = tail call ptr %0(ptr null, i32 0, i32 0)
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0
}
