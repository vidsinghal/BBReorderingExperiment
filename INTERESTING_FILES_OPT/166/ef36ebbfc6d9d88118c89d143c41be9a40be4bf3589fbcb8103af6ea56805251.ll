; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define void @libmetis__ProjectKWayPartition(ptr %ctrl, i32 %0, i1 %cmp36) {
entry:
  br label %for.cond25

for.cond25:                                       ; preds = %for.end101, %entry
  %tid.0 = phi i32 [ 0, %entry ], [ %tid.1, %for.end101 ]
  %j.0 = phi i32 [ 0, %entry ], [ 0, %for.end101 ]
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond25
  ret void

if.else:                                          ; preds = %for.cond25
  %call49 = call i32 @libmetis__cnbrpoolGetNext()
  br label %for.cond56

for.cond56:                                       ; preds = %for.body59, %if.else
  %tid.1 = phi i32 [ 0, %if.else ], [ %add69, %for.body59 ]
  %j.1 = phi i32 [ 0, %if.else ], [ %inc100, %for.body59 ]
  %cmp57 = icmp slt i32 %j.1, %0
  br i1 %cmp57, label %for.body59, label %for.end101

for.body59:                                       ; preds = %for.cond56
  %add69 = add i32 %tid.0, 1
  %inc100 = add i32 %j.1, 1
  br label %for.cond56

for.end101:                                       ; preds = %for.cond56
  %nbrpoolcpos = getelementptr i8, ptr %ctrl, i64 248
  store i64 0, ptr %nbrpoolcpos, align 8
  br label %for.cond25
}

declare i32 @libmetis__cnbrpoolGetNext()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
