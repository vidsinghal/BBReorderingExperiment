; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//18/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef ptr @yasm_object_create(ptr nocapture %arch, i1 %tobool.not) local_unnamed_addr {
entry:
  %0 = load ptr, ptr %arch, align 8
  %call = tail call ptr %0(i64 0)
  store ptr null, ptr %arch, align 8
  %call13 = load volatile ptr, ptr null, align 4294967296
  br i1 %tobool.not, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret ptr null

if.then:                                          ; preds = %entry
  %call17 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}
