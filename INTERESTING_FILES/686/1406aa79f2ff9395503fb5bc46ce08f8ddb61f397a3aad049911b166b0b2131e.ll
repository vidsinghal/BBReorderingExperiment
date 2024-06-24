; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @klu_z_scale(i32 %scale, ptr %Common, i1 %cmp11.not, i1 %cmp1, i1 %not.cmp1) {
entry:
  %cmp4 = icmp sgt i32 %scale, 0
  %or.cond = and i1 %cmp4, %cmp11.not
  %not.cmp11 = xor i1 %cmp11.not, false
  %or.cond1 = select i1 %cmp1, i1 %or.cond, i1 false
  br i1 %or.cond1, label %common.ret, label %if.then13

common.ret:                                       ; preds = %if.then13, %entry
  ret i32 0

if.then13:                                        ; preds = %entry
  store i32 0, ptr %Common, align 4
  br label %common.ret
}
