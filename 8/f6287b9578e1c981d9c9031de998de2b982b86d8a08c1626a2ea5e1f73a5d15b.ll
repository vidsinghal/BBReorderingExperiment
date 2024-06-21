; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_strmv_unf_var2() {
entry:
  %call3 = load volatile ptr, ptr null, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond18, %entry
  %iter.0 = phi i64 [ 0, %entry ], [ 1, %for.cond18 ]
  %call7 = load volatile i64, ptr null, align 8
  call void %call3(i32 0, i32 0, i64 %iter.0, i64 0, ptr null, ptr null, i64 0, i64 0, ptr null, i64 0, ptr null, i64 0, ptr null)
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18, %for.cond
  %cmp19 = icmp sgt i64 %call7, 1
  br i1 %cmp19, label %for.cond18, label %for.cond
}
