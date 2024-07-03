; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @thread_main(ptr %0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call = call i32 @wait_for_new_command()
  %flags2 = getelementptr i8, ptr %0, i64 200
  %call3 = call i32 @pthreadpool_load_relaxed_uint32_t(ptr %flags2)
  br label %for.cond
}

declare i32 @pthreadpool_load_relaxed_uint32_t(ptr)

define i32 @wait_for_new_command() {
entry:
  %call = load volatile i32, ptr null, align 4
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %cleanup16

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %dec, %for.inc ], [ 1, %entry ]
  %cmp4.not = icmp eq i32 %i.0, 0
  br i1 %cmp4.not, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond
  %call6 = load volatile i32, ptr null, align 4
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %for.inc, label %cleanup16

for.inc:                                          ; preds = %for.body
  %dec = add i32 %i.0, 1
  br label %for.cond

do.body:                                          ; preds = %do.body, %for.cond
  br label %do.body

cleanup16:                                        ; preds = %for.body, %entry
  ret i32 0
}
