; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Eig_gest_il_opt_var1(i32 %call, i1 %cond) {
entry:
  %call1 = load volatile i32, ptr null, align 4
  br i1 %cond, label %sw.bb, label %common.ret

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret

common.ret:                                       ; preds = %sw.bb, %entry
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }