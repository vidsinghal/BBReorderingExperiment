; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vmax_ukernel__sse_x4(i64 %n, ptr %y, i1 %tobool18.not) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.addr.01 = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  %cmp = icmp ugt i64 %n.addr.01, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %sub = add i64 %n.addr.01, -16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool13.not = icmp eq i64 %n.addr.01, 0
  br i1 %tobool13.not, label %if.end, label %if.then14

if.then14:                                        ; preds = %for.end
  store volatile i32 0, ptr null, align 4
  %add.ptr16 = getelementptr i8, ptr %y, i64 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.end
  %y.addr.0 = phi ptr [ %add.ptr16, %if.then14 ], [ %y, %for.end ]
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @_mm_store_ss(ptr %y.addr.0)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @_mm_store_ss(ptr)

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
