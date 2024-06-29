; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @hypre_sstructpcgsetprecond_(ptr %precond_id, ptr %ierr, i64 %0) {
entry:
  switch i64 %0, label %if.else8 [
    i64 1, label %if.then
    i64 0, label %if.then6
  ]

common.ret:                                       ; preds = %if.else8, %if.then6, %if.then
  ret void

if.then:                                          ; preds = %entry
  %call = call i64 @HYPRE_SStructPCGSetPrecond(ptr nonnull %precond_id)
  store i64 %call, ptr %ierr, align 8
  br label %common.ret

if.then6:                                         ; preds = %entry
  %call7 = call i64 @HYPRE_SStructPCGSetPrecond(ptr null)
  store i64 %call7, ptr %ierr, align 8
  br label %common.ret

if.else8:                                         ; preds = %entry
  store i64 0, ptr %ierr, align 8
  br label %common.ret
}

declare i64 @HYPRE_SStructPCGSetPrecond(ptr)
