; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//459/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @Transcript_velocity_single(ptr nocapture %path) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %path, align 8
  %cmp.not1 = icmp eq ptr %0, null
  br i1 %cmp.not1, label %for.cond3.preheader, label %for.body

for.cond3.preheader:                              ; preds = %for.body, %entry
  br label %for.cond3

for.body:                                         ; preds = %entry, %for.body
  %p.02 = phi ptr [ %call2, %for.body ], [ %0, %entry ]
  store i32 0, ptr %p.02, align 8
  %call2 = tail call ptr @List_next()
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.cond3.preheader, label %for.body

for.cond3:                                        ; preds = %for.cond3.preheader, %for.cond3
  %p.1 = phi ptr [ %call10, %for.cond3 ], [ %path, %for.cond3.preheader ]
  store i32 0, ptr %p.1, align 8
  %call10 = tail call ptr @List_next()
  br label %for.cond3
}

declare ptr @List_next() local_unnamed_addr

attributes #0 = { noreturn }
