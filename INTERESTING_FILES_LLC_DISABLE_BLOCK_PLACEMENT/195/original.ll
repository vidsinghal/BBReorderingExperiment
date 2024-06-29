; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//195/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

define noundef i32 @clahrd_(ptr nocapture %n, ptr nocapture readonly %k, ptr nocapture writeonly %a) local_unnamed_addr {
entry:
  %i__31111 = alloca [0 x [0 x [0 x [0 x i32]]]], align 4
  %i__21 = alloca i32, align 4
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call161 = tail call i32 @clarfg_()
  store float 0.000000e+00, ptr %n, align 4
  %idxprom168 = zext nneg i32 %0 to i64
  %arrayidx169 = getelementptr %struct.complex, ptr %a, i64 %idxprom168
  store float 0.000000e+00, ptr %arrayidx169, align 4
  %i__21.0.i__21.0.i__21.0.i__21.0.i__21.0.i__21.0.i__21.0.call188 = load volatile i32, ptr %i__21, align 4
  %1 = load i32, ptr %n, align 4
  %2 = load i32, ptr %k, align 4
  %sub189 = or i32 %2, %1
  store i32 %sub189, ptr %i__21, align 4
  store i32 0, ptr %i__31111, align 4
  %call206 = call i32 @cgemv_(ptr nonnull %i__31111)
  store i32 0, ptr %n, align 4
  %call220 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

declare i32 @cgemv_(ptr) local_unnamed_addr

declare i32 @clarfg_() local_unnamed_addr
