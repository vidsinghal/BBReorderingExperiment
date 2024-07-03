; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n1 = external global i32
@.str.41 = external constant [2 x i8]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define void @genextend(i32 %n2, i1 %tobool164.not) {
entry:
  br label %for.cond98

for.cond98:                                       ; preds = %for.cond192, %for.cond98, %entry
  br i1 %tobool164.not, label %for.cond192, label %for.cond98

for.cond192:                                      ; preds = %for.cond98
  %call2 = call i32 @accept2(ptr null, ptr null)
  %add251 = or i32 %n2, 1
  %call252 = call i32 @isconnected(i32 %add251)
  br label %for.cond98
}

define i32 @accept2(ptr %g, ptr %arrayidx) {
entry:
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %0 = load i32, ptr @n1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %g, align 4
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @isconnected(i32)

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
