; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @dictNext()

define i64 @sdslen(ptr %s) {
entry:
  %arrayidx = getelementptr i8, ptr %s, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %cond = icmp eq i8 %0, 0
  br i1 %cond, label %sw.bb3, label %cleanup

sw.bb3:                                           ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 -3 to ptr), align 1
  %conv4 = zext i8 %1 to i64
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %entry
  %retval.0 = phi i64 [ %conv4, %sw.bb3 ], [ 0, %entry ]
  ret i64 %retval.0
}

define void @functionListCommand(ptr %c, ptr %0, i32 %.with_code.0, i32 %.pre, i1 %cmp, i32 %call, i1 %tobool1.not, ptr %1, i32 %call42, i1 %tobool43.not) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br i1 %cmp, label %for.cond, label %while.cond

while.cond:                                       ; preds = %cleanup85, %for.cond
  %call34 = call ptr @dictNext()
  %call38 = call i64 @sdslen(ptr null)
  %conv = trunc i64 %call38 to i32
  %call40 = call i64 @sdslen(ptr %c)
  %conv41 = trunc i64 %call40 to i32
  %call427 = call i32 @stringmatchlen(i32 %conv, i32 %conv41)
  br i1 %tobool1.not, label %cleanup85, label %if.end46

if.end46:                                         ; preds = %while.cond
  %cond = zext i1 %cmp to i64
  store volatile i64 %cond, ptr null, align 8
  br label %cleanup85

cleanup85:                                        ; preds = %if.end46, %while.cond
  br label %while.cond
}

declare i32 @stringmatchlen(i32, i32)
