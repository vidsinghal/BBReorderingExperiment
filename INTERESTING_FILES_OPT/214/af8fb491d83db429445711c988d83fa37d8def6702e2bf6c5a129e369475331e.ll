; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @refine(ptr %ptn, i1 %cmp45, i1 %cmp55, i1 %cmp72) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  br i1 %cmp45, label %lor.lhs.false, label %for.cond

lor.lhs.false:                                    ; preds = %while.cond
  store i32 0, ptr %ptn, align 4
  br i1 %cmp55, label %for.cond, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call57 = call i32 @nextelement()
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.rhs, %lor.lhs.false, %while.cond
  br i1 %cmp72, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  store i32 0, ptr %ptn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp55, label %for.body89, label %while.cond

for.body89:                                       ; preds = %for.end
  ret void
}

declare i32 @nextelement()
