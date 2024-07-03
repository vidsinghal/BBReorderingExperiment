; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @novel_spliceends_trim5_anti(ptr %max_prob, i64 %middle_genomicpos, i1 %cmp334.not.old) {
entry:
  br label %while.cond330

while.cond330:                                    ; preds = %if.then369, %while.body337, %entry
  %cmp334.not.old1 = icmp eq i64 0, 0
  br i1 %cmp334.not.old, label %common.ret, label %while.body337

while.body337:                                    ; preds = %if.else396, %while.cond330
  %call338 = call double @Maxent_hr_acceptor_prob()
  %cmp339 = fcmp ult double %call338, 0.000000e+00
  br i1 %cmp339, label %while.cond330, label %if.else365

if.else365:                                       ; preds = %while.body337
  %call3662 = load volatile i32, ptr null, align 4
  %cmp367 = icmp eq i32 %call3662, 0
  br i1 %cmp367, label %if.then369, label %if.else396

if.then369:                                       ; preds = %if.else365
  store i32 0, ptr %max_prob, align 4
  br label %while.cond330

if.else396:                                       ; preds = %if.else365
  %cmp334.not = icmp eq i64 0, 0
  br label %while.body337

common.ret:                                       ; preds = %while.cond330
  ret i32 0
}

declare double @Maxent_hr_acceptor_prob()
