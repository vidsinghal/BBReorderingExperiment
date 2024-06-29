; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @scgi_handler(ptr %r, ptr %server, i1 %cmp91) {
entry:
  %0 = load ptr, ptr %server, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp16 = icmp eq ptr %1, null
  br i1 %cmp16, label %common.ret, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %entry
  %2 = load i8, ptr %r, align 1
  %cmp41 = icmp slt i8 %2, 0
  br i1 %cmp41, label %common.ret, label %cond.false62

common.ret:                                       ; preds = %cond.false62, %lor.lhs.false17, %entry
  ret i32 0

cond.false62:                                     ; preds = %lor.lhs.false17
  call void @llvm.assume(i1 %cmp91)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
