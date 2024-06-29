; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//240/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @gt_splitter_split(ptr nocapture %s, ptr nocapture readonly %string, i1 %tobool3.not) local_unnamed_addr {
entry:
  br i1 %tobool3.not, label %while.end, label %common.ret

common.ret:                                       ; preds = %while.end, %entry
  ret void

while.end:                                        ; preds = %entry
  %call36 = tail call ptr @gt_dynalloc()
  %0 = load ptr, ptr %s, align 8
  %num_of_tokens403 = getelementptr i8, ptr %s, i64 8
  %1 = load i64, ptr %string, align 8
  store i64 0, ptr %num_of_tokens403, align 8
  %arrayidx42 = getelementptr ptr, ptr %0, i64 %1
  store ptr null, ptr %arrayidx42, align 8
  store ptr null, ptr %s, align 8
  br label %common.ret
}

declare ptr @strchr() local_unnamed_addr

declare ptr @gt_dynalloc() local_unnamed_addr

define void @gt_splitter_split_non_empty(ptr nocapture %s, ptr nocapture %string) local_unnamed_addr {
entry:
  %call21 = tail call ptr @strchr()
  store i8 0, ptr %string, align 1
  %0 = load ptr, ptr %s, align 8
  %num_of_tokens251 = getelementptr i8, ptr %s, i64 8
  %1 = load i64, ptr %string, align 8
  store i64 0, ptr %num_of_tokens251, align 8
  %arrayidx = getelementptr ptr, ptr %0, i64 %1
  store ptr null, ptr %arrayidx, align 8
  ret void
}
