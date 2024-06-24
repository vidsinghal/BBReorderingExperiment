; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//821/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @s2n_tls13_keys_init(i32 %call8, i1 %cmp18) local_unnamed_addr {
entry:
  %cmp9 = icmp slt i32 %call8, 0
  %brmerge.not = select i1 %cmp9, i1 %cmp18, i1 false
  br i1 %brmerge.not, label %do.body24, label %common.ret

common.ret:                                       ; preds = %do.body24, %entry
  ret i32 0

do.body24:                                        ; preds = %entry
  %call264 = tail call i32 @s2n_blob_init(i32 1)
  %call38 = tail call i32 @s2n_blob_init(i32 0)
  br label %common.ret
}

declare i32 @s2n_blob_init(i32) local_unnamed_addr
