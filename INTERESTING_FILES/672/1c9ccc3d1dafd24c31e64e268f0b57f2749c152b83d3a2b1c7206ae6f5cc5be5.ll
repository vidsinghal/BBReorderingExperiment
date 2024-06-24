; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @qnnp_indirection_init_dwconv2d(i1 %cmp.not, i1 %cmp26.not, i64 %mul54) {
entry:
  %or.cond = select i1 %cmp.not, i1 %cmp26.not, i1 false
  br i1 %or.cond, label %common.ret, label %for.body29

common.ret:                                       ; preds = %for.body29, %entry
  ret void

for.body29:                                       ; preds = %entry
  %arrayidx = getelementptr ptr, ptr null, i64 %mul54
  store ptr null, ptr %arrayidx, align 8
  br label %common.ret
}
