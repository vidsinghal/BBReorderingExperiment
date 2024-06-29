; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i1 @progress_meter(ptr %global) {
entry:
  %0 = load i8, ptr %global, align 1, !range !0, !noundef !1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i1 false

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %common.ret
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = !{i8 0, i8 2}
!1 = !{}
