; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.13 = external constant [13 x i8]

define i32 @umfpack_zi_report_symbolic(ptr %SymbolicHandle, ptr %Control.addr, i64 %0, ptr %1, ptr %2, ptr %3, i1 %4, i64 %idxprom280, i32 %5) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end432, %entry
  br i1 %4, label %if.then284, label %if.end290

if.then284:                                       ; preds = %for.cond
  %6 = load ptr, ptr %SymbolicHandle, align 8
  %cmp285 = icmp ne ptr %Control.addr, null
  br i1 %cmp285, label %if.then287, label %if.end290

if.then287:                                       ; preds = %if.then284
  %call288 = call i32 (ptr, ...) %6(ptr null, i32 0, i32 0, i32 0)
  br label %if.end290

if.end290:                                        ; preds = %if.then287, %if.then284, %for.cond
  %7 = load ptr, ptr %SymbolicHandle, align 8
  %call318 = call i32 (ptr, ...) %7(ptr null, i32 0, i32 0, i32 0, i32 0)
  br i1 %4, label %if.then426, label %if.end432

if.then426:                                       ; preds = %if.end290
  br label %if.end432

if.end432:                                        ; preds = %if.then426, %if.end290
  call void @llvm.assume(i1 %4)
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
