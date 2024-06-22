; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//126/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 0, 2) i32 @xmlDetectCharEncoding__internal_alias(ptr readonly %in, i1 %cmp1) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne ptr %in, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then2, label %common.ret

if.then2:                                         ; preds = %entry
  %0 = load i8, ptr %in, align 1
  %cmp3 = icmp eq i8 %0, 0
  %spec.select = zext i1 %cmp3 to i32
  br label %common.ret

common.ret:                                       ; preds = %if.then2, %entry
  %common.ret.op = phi i32 [ 0, %entry ], [ %spec.select, %if.then2 ]
  ret i32 %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }
