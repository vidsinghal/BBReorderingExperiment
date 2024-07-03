; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @FASTCOVER_checkParameters(ptr, i32)

define i64 @FASTCOVER_ctx_init(double %splitPoint) {
entry:
  %call = load volatile i64, ptr null, align 8
  %cmp15 = fcmp olt double %splitPoint, 0.000000e+00
  br i1 %cmp15, label %cond.true17, label %cond.end28

cond.true17:                                      ; preds = %entry
  %call18 = call i64 @COVER_sum()
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true17, %entry
  %cmp30 = icmp eq i64 %call, 0
  br i1 %cmp30, label %common.ret, label %lor.lhs.false

common.ret:                                       ; preds = %lor.lhs.false, %cond.end28
  ret i64 0

lor.lhs.false:                                    ; preds = %cond.end28
  %call47 = load volatile i32, ptr null, align 4
  br label %common.ret
}

define i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr %parameters, double %0, i1 %cmp148, ptr %ctx) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond147, %entry
  %call133 = call i64 @FASTCOVER_ctx_init(double %0)
  br label %for.cond147

for.cond147:                                      ; preds = %for.body150, %for.cond
  br i1 %cmp148, label %for.body150, label %for.cond

for.body150:                                      ; preds = %for.cond147
  %f186 = getelementptr i8, ptr %ctx, i64 68
  %1 = load i32, ptr %f186, align 4
  %call187 = call i32 @FASTCOVER_checkParameters(ptr null, i32 %1)
  br label %for.cond147
}

declare i64 @COVER_sum()
