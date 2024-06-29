; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cs_di_ltsolve(ptr %L, ptr %x, i1 %tobool.not, ptr %0) {
entry:
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %L, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, ptr %x, align 8
  %sub = add nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr i32, ptr %0, i64 %idxprom
  br label %for.cond6

if.then:                                          ; preds = %land.lhs.true, %entry
  ret i32 0

for.cond6:                                        ; preds = %for.cond6, %lor.lhs.false
  %3 = load double, ptr %arrayidx, align 8
  %arrayidx19 = getelementptr double, ptr %x, i64 %idxprom
  %neg = fneg double %3
  store double %neg, ptr %arrayidx19, align 8
  br label %for.cond6
}
