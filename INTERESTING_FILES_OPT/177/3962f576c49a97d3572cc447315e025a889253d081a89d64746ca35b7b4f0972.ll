; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @umfzi_kernel(ptr %Ax, ptr %Az, ptr %Work, i1 %tobool121.not) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end129, %entry
  br label %for.cond14

for.cond14:                                       ; preds = %for.body18, %for.cond
  %0 = load i32, ptr %Ax, align 4
  %cmp16 = icmp slt i32 %0, 0
  br i1 %cmp16, label %for.body18, label %for.end117

for.body18:                                       ; preds = %for.cond14
  store i32 0, ptr %Az, align 4
  br label %for.cond14

for.end117:                                       ; preds = %for.cond14
  %call1202 = call i32 @umfzi_store_lu_drop()
  br i1 %tobool121.not, label %if.then122, label %if.end129

if.then122:                                       ; preds = %for.end117
  ret i32 0

if.end129:                                        ; preds = %for.end117
  %fnrows_new = getelementptr i8, ptr %Work, i64 1424
  store i32 0, ptr %fnrows_new, align 8
  br label %for.cond
}

declare i32 @umfzi_store_lu_drop()
