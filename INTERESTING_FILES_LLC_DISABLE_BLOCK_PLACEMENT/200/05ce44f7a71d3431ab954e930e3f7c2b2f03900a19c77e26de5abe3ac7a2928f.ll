; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @umfzl_assemble_fixq(ptr %Numeric, i1 %tobool70.not) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond64, %entry
  %tp.0 = phi ptr [ null, %entry ], [ %tp.1, %for.cond64 ]
  br label %for.cond64

for.cond64:                                       ; preds = %for.body67, %for.cond
  %tp.1 = phi ptr [ %tp.0, %for.cond ], [ %incdec.ptr100, %for.body67 ]
  %cmp65 = icmp ult ptr %tp.1, %Numeric
  br i1 %cmp65, label %for.body67, label %for.cond

for.body67:                                       ; preds = %for.cond64
  call void @llvm.assume(i1 %tobool70.not)
  %incdec.ptr100 = getelementptr inbounds i8, ptr %tp.1, i64 16
  br label %for.cond64
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
