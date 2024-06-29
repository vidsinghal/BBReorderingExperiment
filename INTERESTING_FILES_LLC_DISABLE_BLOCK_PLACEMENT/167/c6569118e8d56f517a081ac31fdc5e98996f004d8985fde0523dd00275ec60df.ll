; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_x32_zip_x2_ukernel__sse2(i64 %n, ptr %input) #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %y.0 = phi ptr [ null, %entry ], [ %add.ptr2, %while.body ]
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %while.body ]
  %cmp = icmp ugt i64 %n.addr.0, 15
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %add.ptr2 = getelementptr i8, ptr %y.0, i64 16
  %sub = add i64 %n.addr.0, -16
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %0 = load i32, ptr %y.0, align 4
  store i32 %0, ptr %input, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
