; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ilog2_64() {
entry:
  %0 = call i64 asm "bsrq $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0)
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

define i32 @alignlog2_64(i1 %tobool) {
entry:
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call i32 @ilog2_64()
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}
