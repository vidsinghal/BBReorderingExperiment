; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @umf_l_is_permutation(i64 %n, i1 %cmp5, i64 %.pre2) {
entry:
  %cmp6.not.old = icmp slt i64 %n, 1
  %or.cond.old = and i1 %cmp6.not.old, %cmp5
  br i1 %or.cond.old, label %if.end8, label %common.ret

common.ret:                                       ; preds = %if.end8, %entry
  ret i64 0

if.end8:                                          ; preds = %if.end8, %entry
  %tobool10.not = icmp eq i64 %n, 0
  %cmp6.not = icmp slt i64 %.pre2, 0
  %or.cond1 = select i1 %tobool10.not, i1 %cmp6.not, i1 false
  br i1 %or.cond1, label %if.end8, label %common.ret
}
