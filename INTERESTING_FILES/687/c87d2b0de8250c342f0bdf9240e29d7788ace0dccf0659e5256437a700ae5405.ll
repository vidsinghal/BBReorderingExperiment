; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @cram_index_query(i1 %cmp10.not, i1 %cmp15) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %k.0.in3 = phi i32 [ 0, %entry ], [ %sub38, %for.cond ]
  %i.0.k.0 = select i1 %cmp10.not, i32 0, i32 %k.0.in3
  %k.0.j.0 = select i1 %cmp15, i32 %k.0.in3, i32 1
  %sub38 = or i32 %k.0.j.0, %i.0.k.0
  br label %for.cond
}
