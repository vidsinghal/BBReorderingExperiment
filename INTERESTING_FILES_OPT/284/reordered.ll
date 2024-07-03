; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//284/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noalias noundef nonnull ptr @thread_main(ptr %0) local_unnamed_addr #0 {
entry:
  %flags2 = getelementptr i8, ptr %0, i64 200
  br label %for.cond

for.body.i:                                       ; preds = %for.cond, %for.cond.i
  %i.01.i = phi i32 [ %dec.i, %for.cond.i ], [ 1, %for.cond ]
  %call6.i = load volatile i32, ptr null, align 4294967296
  %cmp7.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.not.i, label %for.cond.i, label %wait_for_new_command.exit

do.body.i:                                        ; preds = %for.cond.i, %do.body.i
  br label %do.body.i

wait_for_new_command.exit:                        ; preds = %for.body.i, %for.cond
  %call3 = tail call i32 @pthreadpool_load_relaxed_uint32_t(ptr %flags2)
  br label %for.cond

for.cond:                                         ; preds = %wait_for_new_command.exit, %entry
  %call.i = load volatile i32, ptr null, align 4294967296
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %for.body.i, label %wait_for_new_command.exit

for.cond.i:                                       ; preds = %for.body.i
  %dec.i = add i32 %i.01.i, 1
  %cmp4.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.not.i, label %do.body.i, label %for.body.i
}

declare i32 @pthreadpool_load_relaxed_uint32_t(ptr) local_unnamed_addr

; Function Attrs: nofree norecurse nounwind
define noundef i32 @wait_for_new_command() local_unnamed_addr #1 {
entry:
  %call = load volatile i32, ptr null, align 4294967296
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body, label %cleanup16

do.body:                                          ; preds = %for.cond, %do.body
  br label %do.body

cleanup16:                                        ; preds = %for.body, %entry
  ret i32 0

for.cond:                                         ; preds = %for.body
  %dec = add i32 %i.01, 1
  %cmp4.not = icmp eq i32 %dec, 0
  br i1 %cmp4.not, label %do.body, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %i.01 = phi i32 [ %dec, %for.cond ], [ 1, %entry ]
  %call6 = load volatile i32, ptr null, align 4294967296
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %for.cond, label %cleanup16
}

attributes #0 = { noreturn }
attributes #1 = { nofree norecurse nounwind }
