; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @erts_move_multi_frags(ptr %hpp) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  call void @move_one_frag(ptr null, ptr %hpp)
  br label %for.cond
}

define void @move_one_frag(ptr %hpp, ptr %off_heap) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %sw.bb8, %while.body, %entry
  %ptr.0 = phi ptr [ null, %entry ], [ @move_boxed, %sw.bb8 ], [ null, %while.body ]
  %cmp.not = icmp eq ptr %ptr.0, %off_heap
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i64, ptr %off_heap, align 8
  %call = call ptr @move_boxed()
  switch i64 %0, label %while.cond [
    i64 0, label %sw.bb8
    i64 1, label %sw.bb8
    i64 8, label %sw.bb8
    i64 9, label %sw.bb8
    i64 10, label %sw.bb8
  ]

sw.bb8:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %overhead22 = getelementptr i8, ptr %off_heap, i64 8
  store i64 0, ptr %overhead22, align 8
  ret void
}

declare ptr @move_boxed()
