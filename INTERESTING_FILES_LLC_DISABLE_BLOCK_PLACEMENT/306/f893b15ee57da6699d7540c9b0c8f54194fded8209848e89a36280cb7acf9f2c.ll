; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @umfdi_garbage_collection(ptr %Numeric, i32 %0, i1 %cmp16) {
entry:
  %cmp = icmp slt i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp16, i1 false
  br i1 %brmerge.not, label %for.body17, label %common.ret

common.ret:                                       ; preds = %entry
  ret void

for.body17:                                       ; preds = %for.body17, %entry
  store i32 %0, ptr %Numeric, align 8
  br label %for.body17
}
