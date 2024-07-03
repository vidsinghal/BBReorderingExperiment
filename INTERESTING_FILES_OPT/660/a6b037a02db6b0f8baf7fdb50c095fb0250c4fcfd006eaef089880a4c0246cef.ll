; ModuleID = 'reduced.bc'
source_filename = "../scipy/_lib/highs/src/ipm/basiclu/src/lu_pivot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @lu_pivot() {
entry:
  ret i32 0
}

define i32 @lu_pivot_small(ptr %Uput, i32 %0, i32 %1, i1 %cmp145, i64 %idxprom262) {
entry:
  br label %for.cond134

for.cond134:                                      ; preds = %for.end224, %entry
  br i1 %cmp145, label %for.body147, label %for.end183

for.body147:                                      ; preds = %for.cond134
  ret i32 0

for.end183:                                       ; preds = %for.cond134
  store volatile i32 0, ptr null, align 4
  br label %for.cond213

for.cond213:                                      ; preds = %for.body216, %for.end183
  %2 = phi i32 [ %inc223, %for.body216 ], [ %0, %for.end183 ]
  %cmp214.not = icmp sgt i32 %2, 0
  br i1 %cmp214.not, label %for.end224, label %for.body216

for.body216:                                      ; preds = %for.cond213
  store double 0.000000e+00, ptr %Uput, align 8
  %inc223 = add i32 %2, 1
  br label %for.cond213

for.end224:                                       ; preds = %for.cond213
  %arrayidx263 = getelementptr i32, ptr null, i64 %idxprom262
  store i32 0, ptr %Uput, align 4
  br label %for.cond134
}
