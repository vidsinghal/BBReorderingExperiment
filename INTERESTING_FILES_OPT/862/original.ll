; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//862/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @umfpack_zi_report_symbolic(ptr nocapture readonly %SymbolicHandle, ptr readnone %Control.addr, i64 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i1 %4, i64 %idxprom280, i32 %5) local_unnamed_addr #0 {
entry:
  br i1 %4, label %entry.split.us, label %for.cond

entry.split.us:                                   ; preds = %entry
  %cmp285.not = icmp eq ptr %Control.addr, null
  br i1 %cmp285.not, label %for.cond.us.us, label %for.cond.us

for.cond.us.us:                                   ; preds = %entry.split.us, %for.cond.us.us
  %6 = load ptr, ptr %SymbolicHandle, align 8
  %call318.us.us = tail call i32 (ptr, ...) %6(ptr null, i32 0, i32 0, i32 0, i32 0)
  br label %for.cond.us.us

for.cond.us:                                      ; preds = %entry.split.us, %for.cond.us
  %7 = load ptr, ptr %SymbolicHandle, align 8
  %call288.us = tail call i32 (ptr, ...) %7(ptr null, i32 0, i32 0, i32 0)
  %8 = load ptr, ptr %SymbolicHandle, align 8
  %call318.us = tail call i32 (ptr, ...) %8(ptr null, i32 0, i32 0, i32 0, i32 0)
  br label %for.cond.us

for.cond:                                         ; preds = %entry
  %9 = load ptr, ptr %SymbolicHandle, align 8
  %call318.c = tail call i32 (ptr, ...) %9(ptr null, i32 0, i32 0, i32 0, i32 0)
  unreachable
}

attributes #0 = { noreturn }
