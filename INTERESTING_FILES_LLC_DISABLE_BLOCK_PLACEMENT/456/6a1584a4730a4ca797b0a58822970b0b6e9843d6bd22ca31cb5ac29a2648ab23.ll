; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = constant [3 x i8] c"/?\00"

define i32 @main(ptr %argv, ptr %0, ptr %1) {
entry:
  %call3 = call i32 @strcmp(ptr %1, ptr @.str.1)
  %cmp4 = icmp ne i32 %call3, 0
  call void @llvm.assume(i1 %cmp4)
  %.pre = load i8, ptr %0, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.else, %for.cond, %entry
  %cmp23 = icmp eq i8 %.pre, 1
  br i1 %cmp23, label %for.cond, label %if.else

if.else:                                          ; preds = %for.cond
  %2 = load i8, ptr %argv, align 1
  %cmp30 = icmp eq i8 %2, 1
  br i1 %cmp30, label %for.cond, label %if.else33

if.else33:                                        ; preds = %if.else
  ret i32 0
}

declare i32 @strcmp(ptr, ptr)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
