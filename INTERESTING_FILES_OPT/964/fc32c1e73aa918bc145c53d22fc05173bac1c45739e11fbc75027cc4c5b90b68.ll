; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

define double @zla_porcond_x_(ptr %uplo, ptr %n, ptr %a, ptr %lda, i32 %0, i1 %cmp356, ptr %1, i64 %idxprom363) {
entry:
  store ptr null, ptr %uplo, align 8
  br label %L10

L10:                                              ; preds = %for.cond355, %entry
  br label %for.cond315

for.cond315:                                      ; preds = %for.body317, %L10
  store i32 0, ptr %uplo, align 4
  %2 = load i32, ptr %n, align 4
  %cmp316.not = icmp slt i32 %2, 0
  br i1 %cmp316.not, label %for.end342, label %for.body317

for.body317:                                      ; preds = %for.cond315
  store double 0.000000e+00, ptr %uplo, align 8
  br label %for.cond315

for.end342:                                       ; preds = %for.cond315
  %call348 = call i32 @zpotrs_()
  br label %for.cond355

for.cond355:                                      ; preds = %for.body357, %for.end342
  br i1 %cmp356, label %for.body357, label %L10

for.body357:                                      ; preds = %for.cond355
  %arrayidx364 = getelementptr %struct.doublecomplex, ptr %1, i64 %idxprom363
  store double 0.000000e+00, ptr %arrayidx364, align 8
  br label %for.cond355
}

declare i32 @xerbla_()

declare i32 @zpotrs_()

declare void @zladiv_f2c_(ptr)
