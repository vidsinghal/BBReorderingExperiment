; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @Matchpool_free_memory(ptr %this, i1 %cmp.not, i1 %cmp4.not) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call13 = call ptr @List_next()
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp4.not, label %for.end9, label %common.ret

common.ret:                                       ; preds = %for.end9, %for.end
  ret void

for.end9:                                         ; preds = %for.end
  store i32 0, ptr %this, align 8
  br label %common.ret
}

declare ptr @List_next()
