; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_AMESetup(i32 %0) #0 {
entry:
  br label %for.cond22

for.cond22:                                       ; preds = %for.body27, %entry
  %j.0 = phi i32 [ %0, %entry ], [ %inc38, %for.body27 ]
  %l1_norm.0 = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body27 ]
  %cmp25 = icmp slt i32 %j.0, 0
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond22
  %add35 = fadd double %l1_norm.0, 1.000000e+00
  %inc38 = add i32 %j.0, 1
  br label %for.cond22

for.end39:                                        ; preds = %for.cond22
  %cmp58 = fcmp olt double %l1_norm.0, 0.000000e+00
  call void @llvm.assume(i1 %cmp58)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
