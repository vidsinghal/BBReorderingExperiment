; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//812/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @__Pyx_ParseOptionalKeywords(ptr nocapture readonly %kwds, i64 %num_pos_args) local_unnamed_addr #0 {
while.cond:
  %call = tail call i32 @PyDict_Next()
  unreachable
}

declare i32 @PyDict_Next() local_unnamed_addr

attributes #0 = { noreturn }
