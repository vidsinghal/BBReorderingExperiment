; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(i1 %cmp10) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call328 = call ptr @read_sg()
  %call3363 = call i32 @sgtocub(ptr null)
  br i1 %cmp10, label %if.else352, label %while.cond

if.else352:                                       ; preds = %while.cond
  ret i32 0
}

declare ptr @read_sg()

define i32 @sgtocub(ptr %0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %i.0 = phi i64 [ 1, %entry ], [ 2, %if.end ]
  %arrayidx = getelementptr i32, ptr %0, i64 %i.0
  %1 = load i32, ptr %arrayidx, align 4
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %for.cond
  ret i32 0

if.end:                                           ; preds = %for.cond
  store i32 0, ptr inttoptr (i64 8 to ptr), align 4
  %2 = load i32, ptr inttoptr (i64 24 to ptr), align 4
  %cmp19 = icmp sgt i32 %2, 0
  br i1 %cmp19, label %common.ret, label %for.cond
}
