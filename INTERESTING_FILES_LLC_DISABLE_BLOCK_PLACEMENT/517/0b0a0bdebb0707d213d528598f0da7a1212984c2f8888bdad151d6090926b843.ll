; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gt_chain2dim_arguments_check(ptr %tool_arguments, i1 %call, i64 %0) {
entry:
  %cmp = icmp eq i64 %0, 0
  %or.cond = select i1 %call, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret1

if.end2:                                          ; preds = %entry
  %1 = load double, ptr %tool_arguments, align 8
  %cmp5 = fcmp ugt double %1, 0.000000e+00
  br i1 %cmp5, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.end2
  store volatile i32 0, ptr null, align 4
  br label %common.ret1

common.ret1:                                      ; preds = %do.body, %if.then6, %if.then1
  ret i32 0

do.body:                                          ; preds = %if.end2
  call void @llvm.assume(i1 %call)
  br label %common.ret1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
