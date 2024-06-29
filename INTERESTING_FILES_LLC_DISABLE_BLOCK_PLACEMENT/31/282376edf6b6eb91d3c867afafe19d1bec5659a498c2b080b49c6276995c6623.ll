; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @vq_nbest_sign(i32 %entries, ptr %E, ptr %best_dist, i64 %idxprom34) {
entry:
  %0 = zext i32 %entries to i64
  %vla = alloca float, i64 %0, align 16
  br label %for.cond21

for.cond21:                                       ; preds = %lor.lhs.false, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc79, %lor.lhs.false ]
  store float 0.000000e+00, ptr %vla, align 4
  %arrayidx353 = getelementptr float, ptr %vla, i64 %idxprom34
  %1 = load float, ptr %arrayidx353, align 4
  store float %1, ptr %E, align 4
  %cmp36 = icmp slt i32 %i.01, %entries
  br i1 %cmp36, label %for.cond44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond21
  %inc79 = add i32 %i.01, 1
  br label %for.cond21

for.cond44:                                       ; preds = %for.cond44, %for.cond21
  %k.0 = phi i64 [ 0, %for.cond44 ], [ %idxprom34, %for.cond21 ]
  %2 = getelementptr float, ptr %best_dist, i64 %k.0
  %arrayidx56 = getelementptr i8, ptr %2, i64 -4
  %3 = load float, ptr %arrayidx56, align 4
  store float %3, ptr %2, align 4
  br label %for.cond44
}
