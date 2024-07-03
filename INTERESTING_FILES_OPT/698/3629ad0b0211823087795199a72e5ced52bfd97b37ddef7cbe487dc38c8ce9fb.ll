; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @TXT_DB_read(i32 %num, i1 %cmp43.not, i1 %cmp74, ptr %call98, i1 %cmp99) {
entry:
  br label %for.cond42

for.cond42:                                       ; preds = %if.end102, %for.cond42, %entry
  %size.0 = phi i32 [ 0, %entry ], [ %spec.select, %for.cond42 ], [ %add46, %if.end102 ]
  %offset.03 = phi i32 [ 0, %entry ], [ 0, %for.cond42 ], [ 0, %if.end102 ]
  %p.0 = phi ptr [ null, %entry ], [ %p.0, %for.cond42 ], [ %add.ptr, %if.end102 ]
  %add46 = add nsw i32 %size.0, 1
  %spec.select = select i1 %cmp43.not, i32 0, i32 %size.0
  br i1 %cmp74, label %for.cond42, label %if.end77

if.end77:                                         ; preds = %for.cond42
  %call987 = call ptr @CRYPTO_malloc()
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end77
  ret ptr null

if.end102:                                        ; preds = %if.end77
  %idx.ext = sext i32 %num to i64
  %add.ptr = getelementptr i8, ptr %p.0, i64 %idx.ext
  br label %for.cond42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare ptr @CRYPTO_malloc()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
