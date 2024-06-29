; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @tokenise_search_path(ptr %searchpath, i32 %j.1, i32 %j.0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ 1, %if.then19 ], [ 1, %for.cond ]
  %j.01 = phi i32 [ 0, %entry ], [ %j.1, %if.then19 ], [ %j.1, %for.cond ]
  %add13 = add i32 0, 1
  %idxprom14 = zext i32 %i.0 to i64
  %arrayidx15 = getelementptr i8, ptr %searchpath, i64 %idxprom14
  %0 = load i8, ptr %arrayidx15, align 1
  %cmp17 = icmp eq i8 %0, 0
  br i1 %cmp17, label %if.then19, label %for.cond

if.then19:                                        ; preds = %for.cond
  %inc = add i32 0, 1
  %idxprom20 = zext i32 %j.1 to i64
  %arrayidx21 = getelementptr i8, ptr null, i64 %idxprom20
  store i8 0, ptr %arrayidx21, align 1
  br label %for.cond
}
