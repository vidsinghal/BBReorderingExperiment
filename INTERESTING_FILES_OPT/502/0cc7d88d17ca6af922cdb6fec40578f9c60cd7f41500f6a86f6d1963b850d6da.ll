; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @try_reduce_to_chain(ptr %seq1, ptr %st, i32 %0, i1 %cmp296) {
entry:
  br label %for.cond264

for.cond264:                                      ; preds = %for.cond295, %entry
  %call277 = call i32 @reduce_to_chain()
  br label %for.cond284

for.cond284:                                      ; preds = %for.body288, %for.cond264
  %1 = phi i32 [ %inc293, %for.body288 ], [ 0, %for.cond264 ]
  %cmp286 = icmp ult i32 %1, %0
  br i1 %cmp286, label %for.body288, label %for.cond295

for.body288:                                      ; preds = %for.cond284
  store i32 0, ptr %seq1, align 8
  %inc293 = add i32 %1, 1
  br label %for.cond284

for.cond295:                                      ; preds = %for.body298, %for.cond284
  br i1 %cmp296, label %for.body298, label %for.cond264

for.body298:                                      ; preds = %for.cond295
  %seg299 = getelementptr i8, ptr %st, i64 32
  %2 = load ptr, ptr %seq1, align 8
  store i32 0, ptr %seg299, align 8
  br label %for.cond295
}

declare i32 @reduce_to_chain()

declare ptr @malloc_or_die()
