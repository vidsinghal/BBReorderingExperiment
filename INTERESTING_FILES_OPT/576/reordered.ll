; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//576/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @aws_event_loop_thread(ptr nocapture readonly %args, i1 %cmp59) local_unnamed_addr #0 {
entry:
  %clock = getelementptr i8, ptr %args, i64 16
  %cmp59.fr = freeze i1 %cmp59
  br i1 %cmp59.fr, label %entry.split.us, label %while.cond

while.cond:                                       ; preds = %entry, %s_process_task_pre_queue.exit
  %call42 = tail call i32 @aws_event_loop_listen_for_io_events()
  %0 = load i8, ptr inttoptr (i64 420 to ptr), align 4
  %tobool.i = trunc i8 %0 to i1
  br i1 %tobool.i, label %if.end.i, label %s_process_task_pre_queue.exit

if.end.i:                                         ; preds = %while.cond
  %call.i = load volatile ptr, ptr null, align 4294967296
  br label %s_process_task_pre_queue.exit

s_process_task_pre_queue.exit:                    ; preds = %while.cond, %if.end.i
  %1 = load ptr, ptr %clock, align 8
  %call119 = tail call i32 %1(ptr null)
  br label %while.cond

for.body.us:                                      ; preds = %for.body.us, %entry.split.us
  %call102.us = load volatile ptr, ptr null, align 4294967296
  br label %for.body.us

entry.split.us:                                   ; preds = %entry
  %call42.us3 = tail call i32 @aws_event_loop_listen_for_io_events()
  br label %for.body.us
}

declare i32 @aws_event_loop_listen_for_io_events() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define void @s_process_task_pre_queue() local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr inttoptr (i64 420 to ptr), align 4
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %common.ret

if.end:                                           ; preds = %entry
  %call = load volatile ptr, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret void
}

attributes #0 = { noreturn }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn }
