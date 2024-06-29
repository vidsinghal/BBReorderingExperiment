; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @cs_di_cumsum(ptr %p, i1 %tobool1) {
entry:
  %tobool = icmp ne ptr %p, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret double 0.000000e+00

if.end:                                           ; preds = %entry
  store i32 0, ptr %p, align 4
  br label %common.ret
}
