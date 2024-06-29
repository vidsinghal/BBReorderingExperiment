; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//308/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @functionsLibCtxClear() local_unnamed_addr {
entry:
  %call21 = tail call ptr @dictNext()
  %tobool.not2 = icmp eq ptr %call21, null
  br i1 %tobool.not2, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void

while.body:                                       ; preds = %entry, %while.body
  store i64 0, ptr inttoptr (i64 8 to ptr), align 8
  %call2 = tail call ptr @dictNext()
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.end, label %while.body
}

declare ptr @dictNext() local_unnamed_addr

define void @functionsLibCtxClearCurrent() local_unnamed_addr {
entry:
  %call21.i = tail call ptr @dictNext()
  %tobool.not2.i = icmp eq ptr %call21.i, null
  br i1 %tobool.not2.i, label %functionsLibCtxClear.exit, label %while.body.i

functionsLibCtxClear.exit:                        ; preds = %while.body.i, %entry
  ret void

while.body.i:                                     ; preds = %entry, %while.body.i
  store i64 0, ptr inttoptr (i64 8 to ptr), align 8
  %call2.i = tail call ptr @dictNext()
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %functionsLibCtxClear.exit, label %while.body.i
}

define void @functionsLibCtxFree() local_unnamed_addr {
entry:
  %call21.i = tail call ptr @dictNext()
  %tobool.not2.i = icmp eq ptr %call21.i, null
  br i1 %tobool.not2.i, label %functionsLibCtxClear.exit, label %while.body.i

functionsLibCtxClear.exit:                        ; preds = %while.body.i, %entry
  ret void

while.body.i:                                     ; preds = %entry, %while.body.i
  store i64 0, ptr inttoptr (i64 8 to ptr), align 8
  %call2.i = tail call ptr @dictNext()
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %functionsLibCtxClear.exit, label %while.body.i
}
