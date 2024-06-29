; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s2n_debug_str = external thread_local global ptr

define i32 @s2n_server_cookie_recv(i1 %cmp.not, i1 %call8) {
entry:
  br i1 %cmp.not, label %do.body2, label %do.body7

do.body2:                                         ; preds = %entry
  %0 = call ptr @llvm.threadlocal.address.p0(ptr @s2n_debug_str)
  store ptr null, ptr %0, align 8
  br label %common.ret

do.body7:                                         ; preds = %entry
  %call82 = load volatile i1, ptr null, align 1
  br i1 %call8, label %common.ret, label %do.body11

common.ret:                                       ; preds = %do.body11, %do.body7, %do.body2
  %common.ret.op = phi i32 [ 0, %do.body11 ], [ 1, %do.body2 ], [ 0, %do.body7 ]
  ret i32 %common.ret.op

do.body11:                                        ; preds = %do.body7
  %1 = call ptr @llvm.threadlocal.address.p0(ptr @s2n_debug_str)
  store ptr null, ptr %1, align 8
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
