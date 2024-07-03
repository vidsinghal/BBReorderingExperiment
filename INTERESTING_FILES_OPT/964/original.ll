; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//964/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

; Function Attrs: noreturn
define noundef double @zla_porcond_x_(ptr nocapture writeonly %uplo, ptr nocapture readonly %n, ptr nocapture readnone %a, ptr nocapture readnone %lda, i32 %0, i1 %cmp356, ptr nocapture writeonly %1, i64 %idxprom363) local_unnamed_addr #0 {
entry:
  store ptr null, ptr %uplo, align 8
  %arrayidx364 = getelementptr %struct.doublecomplex, ptr %1, i64 %idxprom363
  %cmp356.fr = freeze i1 %cmp356
  br i1 %cmp356.fr, label %L10.us, label %L10

L10.us:                                           ; preds = %entry
  store i32 0, ptr %uplo, align 4
  %2 = load i32, ptr %n, align 4
  %cmp316.not1.us = icmp slt i32 %2, 0
  br i1 %cmp316.not1.us, label %for.end342.us, label %for.body317.us

for.body317.us:                                   ; preds = %L10.us, %for.body317.us
  store double 0.000000e+00, ptr %uplo, align 8
  store i32 0, ptr %uplo, align 4
  %3 = load i32, ptr %n, align 4
  %cmp316.not.us = icmp slt i32 %3, 0
  br i1 %cmp316.not.us, label %for.end342.us, label %for.body317.us

for.end342.us:                                    ; preds = %for.body317.us, %L10.us
  %call348.us = tail call i32 @zpotrs_()
  store double 0.000000e+00, ptr %arrayidx364, align 8
  br label %for.body357

L10:                                              ; preds = %entry, %for.end342
  store i32 0, ptr %uplo, align 4
  %4 = load i32, ptr %n, align 4
  %cmp316.not1 = icmp slt i32 %4, 0
  br i1 %cmp316.not1, label %for.end342, label %for.body317

for.body317:                                      ; preds = %L10, %for.body317
  store double 0.000000e+00, ptr %uplo, align 8
  store i32 0, ptr %uplo, align 4
  %5 = load i32, ptr %n, align 4
  %cmp316.not = icmp slt i32 %5, 0
  br i1 %cmp316.not, label %for.end342, label %for.body317

for.end342:                                       ; preds = %for.body317, %L10
  %call348 = tail call i32 @zpotrs_()
  br label %L10

for.body357:                                      ; preds = %for.body357, %for.end342.us
  br label %for.body357
}

declare i32 @zpotrs_() local_unnamed_addr

attributes #0 = { noreturn }
