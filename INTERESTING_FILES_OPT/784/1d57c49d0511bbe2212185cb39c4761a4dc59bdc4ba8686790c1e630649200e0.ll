; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pmatchoptions = type { i64, i64, i64, i8, i8, i8, ptr }

define i32 @gt_patternmatch() {
entry:
  %pmopt = alloca %struct.Pmatchoptions, align 8
  %call12 = call i32 @callpatternmatcher(ptr %pmopt)
  ret i32 0
}

define i32 @callpatternmatcher(ptr %pmopt) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.then92, %if.end90, %entry
  %0 = load i8, ptr inttoptr (i64 25 to ptr), align 1
  %tobool30 = trunc i8 %0 to i1
  br i1 %tobool30, label %while.cond, label %if.end90

while.cond:                                       ; preds = %while.cond, %for.cond
  %call39 = call i1 @gt_nextbucketenumerator()
  br i1 %call39, label %while.cond, label %if.end90

if.end90:                                         ; preds = %while.cond, %for.cond
  %1 = load i8, ptr %pmopt, align 2
  %tobool91 = trunc i8 %1 to i1
  br i1 %tobool91, label %if.then92, label %for.cond

if.then92:                                        ; preds = %if.end90
  store i1 false, ptr %pmopt, align 1
  br label %for.cond
}

declare i1 @gt_nextbucketenumerator()
