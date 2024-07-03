; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define void @destroynode(ptr %node, ptr %0, i1 %cmp.not, ptr %1) #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %do.body96, %entry
  br i1 %cmp.not, label %while.end199, label %while.cond5

while.cond5:                                      ; preds = %while.body10, %while.cond
  %2 = load ptr, ptr null, align 8
  %cmp8.not = icmp eq ptr %2, null
  br i1 %cmp8.not, label %do.body96, label %while.body10

while.body10:                                     ; preds = %while.cond5
  store ptr null, ptr %node, align 8
  br label %while.cond5

do.body96:                                        ; preds = %while.cond5
  %tail1792 = getelementptr i8, ptr %node, i64 24
  %3 = xor i1 false, false
  call void @llvm.assume(i1 %cmp.not)
  call void null(ptr null, ptr null, i64 0, ptr null, i32 0)
  br label %while.cond

while.end199:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { null_pointer_is_valid }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
