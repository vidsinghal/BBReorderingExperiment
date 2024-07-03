; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._xmlRegInputToken = type { ptr, ptr }

define i32 @xmlRegExecPushStringInternal(ptr %exec, ptr %value, ptr %counts, i32 %.pre, i1 %cmp50, ptr %callback303, ptr %0) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %rollback, %if.end52, %entry
  %data.addr.0 = phi ptr [ null, %entry ], [ %2, %rollback ], [ %data.addr.0, %if.end52 ]
  %1 = load ptr, ptr %exec, align 8
  %cmp40 = icmp eq ptr %1, null
  br i1 %cmp40, label %rollback, label %for.cond

for.cond:                                         ; preds = %for.cond, %while.cond
  br i1 %cmp50, label %for.cond, label %if.end52

if.end52:                                         ; preds = %for.cond
  call void %1(ptr null, ptr null, ptr null, ptr %data.addr.0)
  br label %while.cond

rollback:                                         ; preds = %while.cond
  %idxprom469 = sext i32 %.pre to i64
  %data471 = getelementptr %struct._xmlRegInputToken, ptr %0, i64 %idxprom469, i32 1
  %2 = load ptr, ptr %data471, align 8
  br label %while.cond
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
