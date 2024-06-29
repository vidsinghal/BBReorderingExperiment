; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//563/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i32 0, 2) i32 @s2n_stuffer_read_base64(i1 %call7, ptr nocapture readonly %b64_inverse, ptr nocapture readonly %0) local_unnamed_addr {
entry:
  br i1 %call7, label %common.ret, label %lor.lhs.false.preheader

lor.lhs.false.preheader:                          ; preds = %entry
  %1 = load i8, ptr %b64_inverse, align 1
  %2 = load i8, ptr %0, align 1
  %cmp1151 = icmp ne i8 %2, 0
  %cmp1232 = icmp eq i8 %1, 0
  %or.cond3 = select i1 %cmp1151, i1 %cmp1232, i1 false
  br i1 %or.cond3, label %common.ret, label %do.cond141

common.ret:                                       ; preds = %do.cond141, %lor.lhs.false.preheader, %entry
  %common.ret.op = phi i32 [ 1, %entry ], [ 0, %lor.lhs.false.preheader ], [ 0, %do.cond141 ]
  ret i32 %common.ret.op

do.cond141:                                       ; preds = %lor.lhs.false.preheader, %do.cond141
  %call161 = tail call i32 @s2n_calculate_stacktrace()
  %3 = load i8, ptr %b64_inverse, align 1
  %4 = load i8, ptr %0, align 1
  %cmp115 = icmp ne i8 %4, 0
  %cmp123 = icmp eq i8 %3, 0
  %or.cond = select i1 %cmp115, i1 %cmp123, i1 false
  br i1 %or.cond, label %common.ret, label %do.cond141
}

declare i32 @s2n_calculate_stacktrace() local_unnamed_addr
