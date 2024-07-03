; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//18/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @yasm_object_optimize(i1 %cmp380, ptr nocapture writeonly %optd, ptr nocapture readonly %offset_setters5, ptr nocapture readnone %0) local_unnamed_addr #0 {
entry:
  %len_diff = getelementptr i8, ptr %optd, i64 72
  %cmp380.fr = freeze i1 %cmp380
  br i1 %cmp380.fr, label %while.cond307.us, label %while.cond307

while.cond307.us:                                 ; preds = %entry, %while.cond307.us
  %call3771.us = tail call i32 @yasm_bc_expand()
  br label %while.cond307.us

while.cond307:                                    ; preds = %entry, %for.end399
  %call3771 = tail call i32 @yasm_bc_expand()
  %1 = load i32, ptr %offset_setters5, align 8
  %cmp387.not1 = icmp eq i32 %1, 0
  br i1 %cmp387.not1, label %for.end399, label %for.body388

for.body388:                                      ; preds = %while.cond307, %for.body388
  store i64 0, ptr %optd, align 8
  %2 = load i32, ptr %offset_setters5, align 8
  %cmp387.not = icmp eq i32 %2, 0
  br i1 %cmp387.not, label %for.end399, label %for.body388

for.end399:                                       ; preds = %for.body388, %while.cond307
  store i64 0, ptr %len_diff, align 8
  br label %while.cond307
}

declare i32 @yasm_bc_expand() local_unnamed_addr

attributes #0 = { noreturn }
