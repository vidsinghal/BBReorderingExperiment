; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define { ptr, i32 } @recvfd(ptr %0, i1 %cmp13) {
entry:
  %call9 = load volatile i64, ptr null, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool15.not1 = icmp ne ptr %1, null
  %tobool15.not.not = select i1 %cmp13, i1 %tobool15.not1, i1 false
  br i1 %tobool15.not.not, label %if.end24, label %common.ret

common.ret:                                       ; preds = %if.end24, %entry
  ret { ptr, i32 } zeroinitializer

if.end24:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i64
  %3 = trunc i64 %2 to i32
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, i32 %3, ptr null)
  br label %common.ret
}

declare i32 @fprintf(ptr, ptr, ...)
