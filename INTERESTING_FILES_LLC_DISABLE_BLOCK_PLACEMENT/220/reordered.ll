; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//220/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @__xmlGenericError() local_unnamed_addr

declare ptr @__xmlGenericErrorContext() local_unnamed_addr

define void @xmlMemFree(ptr nocapture readonly %ptr, i64 %magicptr) local_unnamed_addr {
entry:
  switch i64 %magicptr, label %if.end4 [
    i64 0, label %common.ret
    i64 1, label %if.then2
  ]

common.ret:                                       ; preds = %if.end4, %if.then2, %entry
  ret void

if.then2:                                         ; preds = %entry
  %call2 = tail call ptr @__xmlGenericError()
  store volatile ptr null, ptr null, align 4294967296
  %call193 = load volatile ptr, ptr null, align 4294967296
  %0 = load ptr, ptr %ptr, align 8
  %call20 = tail call ptr @__xmlGenericErrorContext()
  tail call void (ptr, ptr, ...) %0(ptr null, ptr null, ptr null)
  br label %common.ret

if.end4:                                          ; preds = %entry
  %call74 = load volatile ptr, ptr null, align 4294967296
  tail call void (ptr, ptr, ...) %call74(ptr null, ptr null, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret
}
