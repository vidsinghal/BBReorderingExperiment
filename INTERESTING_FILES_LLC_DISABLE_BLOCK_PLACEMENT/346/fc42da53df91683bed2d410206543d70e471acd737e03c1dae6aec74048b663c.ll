; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ztfsm_(ptr %m, i32 %0, i1 %cmp65) {
entry:
  %call26 = call i32 @lsame_()
  %call29 = call i32 @lsame_()
  %cmp53 = icmp eq i32 %0, 0
  br i1 %cmp53, label %common.ret, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %m, align 4
  %cmp62 = icmp sgt i32 %1, 0
  br i1 %cmp62, label %for.cond64, label %common.ret

common.ret:                                       ; preds = %for.cond64, %lor.lhs.false, %entry
  ret i32 0

for.cond64:                                       ; preds = %lor.lhs.false
  call void @llvm.assume(i1 %cmp65)
  br label %common.ret
}

declare i32 @lsame_()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
