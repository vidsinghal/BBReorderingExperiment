; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @s_calculate_chunk_line_size(i64 %.pre) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %chunk_line_size.0 = phi i64 [ 0, %entry ], [ %i.0, %for.body ]
  %cmp = icmp ult i64 %i.0, %.pre
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret i64 %chunk_line_size.0

for.body:                                         ; preds = %for.cond
  %inc = add i64 %i.0, 1
  br label %for.cond
}
