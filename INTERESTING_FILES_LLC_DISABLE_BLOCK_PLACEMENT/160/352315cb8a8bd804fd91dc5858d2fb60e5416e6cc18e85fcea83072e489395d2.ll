; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @qcreate(ptr %call, i1 %cmp) {
entry:
  %tobool.not = icmp ne ptr %call, null
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %for.body, label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret i32 0

for.body:                                         ; preds = %entry
  %call3 = load volatile i32, ptr null, align 4
  br label %common.ret
}
