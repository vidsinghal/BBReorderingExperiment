; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @aws_logger_get()

define void @aws_event_loop_thread(ptr %args, i1 %cmp59) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %for.cond.cleanup, %entry
  %call42 = call i32 @aws_event_loop_listen_for_io_events()
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.cond
  br i1 %cmp59, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @s_process_task_pre_queue()
  %clock = getelementptr i8, ptr %args, i64 16
  %0 = load ptr, ptr %clock, align 8
  %call119 = call i32 %0(ptr null)
  br label %while.cond

for.body:                                         ; preds = %for.cond
  %call102 = load volatile ptr, ptr null, align 8
  br label %for.cond
}

declare i32 @aws_event_loop_listen_for_io_events()

define void @s_process_task_pre_queue() {
entry:
  %0 = load i8, ptr inttoptr (i64 420 to ptr), align 4
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret void

if.end:                                           ; preds = %entry
  %call = load volatile ptr, ptr null, align 8
  br label %common.ret
}
