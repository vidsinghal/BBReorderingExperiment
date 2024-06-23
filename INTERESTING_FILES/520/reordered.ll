; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//520/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @main(i32 %argc, i1 %cmp33) local_unnamed_addr {
entry:
  %call31 = tail call i32 @strcmp()
  %cmp4 = icmp eq i32 %argc, 0
  %or.cond = or i1 %cmp4, %cmp33
  br i1 %or.cond, label %common.ret, label %for.end

for.end:                                          ; preds = %entry
  %call80 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %for.end, %entry
  ret i32 0
}

declare i32 @strcmp() local_unnamed_addr
