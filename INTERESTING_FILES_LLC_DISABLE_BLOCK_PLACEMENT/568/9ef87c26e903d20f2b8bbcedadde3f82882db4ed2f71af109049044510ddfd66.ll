; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dpstf2_(ptr %n, ptr %piv) #0 {
entry:
  %0 = load i32, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i__.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %cmp18.not = icmp sgt i32 %i__.0, %0
  br i1 %cmp18.not, label %for.cond22, label %for.body

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %i__.0 to i64
  %arrayidx = getelementptr i32, ptr %piv, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  %inc = add nsw i32 %i__.0, 1
  br label %for.cond

for.cond22:                                       ; preds = %for.inc36, %for.cond
  %i__.1 = phi i32 [ %inc37, %for.inc36 ], [ %i__.0, %for.cond ]
  %cmp23.not = icmp sgt i32 %i__.1, %0
  br i1 %cmp23.not, label %if.then42, label %for.inc36

for.inc36:                                        ; preds = %for.cond22
  %inc37 = add i32 %i__.1, 1
  br label %for.cond22

if.then42:                                        ; preds = %for.cond22
  ret i32 0
}

attributes #0 = { "target-cpu"="x86-64" }
