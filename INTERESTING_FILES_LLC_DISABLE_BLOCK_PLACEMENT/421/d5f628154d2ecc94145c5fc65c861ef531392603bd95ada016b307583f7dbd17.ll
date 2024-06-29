; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_sgemmtrsmbb_l_zen2_ref() {
entry:
  %call2 = load volatile i64, ptr null, align 8
  %call13 = load volatile i64, ptr null, align 8
  ret void
}

define void @bli_sbcastbbs_mxn(i64 %m, ptr %y, i1 %cmp2) {
entry:
  %cmp = icmp sgt i64 %m, 0
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %for.body4, label %common.ret

common.ret:                                       ; preds = %for.body4, %entry
  ret void

for.body4:                                        ; preds = %entry
  store float 0.000000e+00, ptr %y, align 4
  br label %common.ret
}
