; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @cs_cl_reach(ptr %G, i1 %tobool6.not) {
entry:
  %tobool.not = icmp eq ptr %G, null
  %or.cond = or i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i64 0

if.end:                                           ; preds = %entry
  store i64 0, ptr %G, align 8
  br label %common.ret
}
