; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @Transcript_velocity_single(ptr %path) {
entry:
  %0 = load ptr, ptr %path, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %p.0 = phi ptr [ %0, %entry ], [ %call2, %for.body ]
  %cmp.not = icmp eq ptr %p.0, null
  br i1 %cmp.not, label %for.cond3, label %for.body

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %p.0, align 8
  %call2 = call ptr @List_next()
  br label %for.cond

for.cond3:                                        ; preds = %for.cond3, %for.cond
  %p.1 = phi ptr [ %call10, %for.cond3 ], [ %path, %for.cond ]
  store i32 0, ptr %p.1, align 8
  %call10 = call ptr @List_next()
  br label %for.cond3
}

declare ptr @List_next()
