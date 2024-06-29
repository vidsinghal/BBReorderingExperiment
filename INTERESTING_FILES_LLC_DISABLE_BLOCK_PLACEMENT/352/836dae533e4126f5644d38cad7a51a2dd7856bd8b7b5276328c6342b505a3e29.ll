; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk_ikv_t = type { i32, i64 }

define void @HTable_Resize(ptr %0) {
entry:
  br label %for.cond6

for.cond6:                                        ; preds = %if.then, %for.cond6, %entry
  %i.0 = phi i64 [ 0, %entry ], [ 1, %if.then ], [ 1, %for.cond6 ]
  %arrayidx11 = getelementptr %struct.gk_ikv_t, ptr %0, i64 %i.0
  %1 = load i32, ptr %arrayidx11, align 8
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %for.cond6, label %if.then

if.then:                                          ; preds = %for.cond6
  call void @HTable_Insert(i32 0)
  br label %for.cond6
}

declare void @HTable_Insert(i32)
