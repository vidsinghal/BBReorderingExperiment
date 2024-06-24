; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @scamac_matrix_Anderson_check(ptr %par, ptr %desc) #0 {
entry:
  %tobool.not = icmp eq ptr %par, null
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %common.ret, label %if.then2

common.ret:                                       ; preds = %if.then2, %entry
  ret i32 0

if.then2:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}

attributes #0 = { "target-cpu"="znver2" }
